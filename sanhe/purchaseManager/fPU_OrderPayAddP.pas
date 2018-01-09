unit fPU_OrderPayAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDBNavigator, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, uDADataTable,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox;

type
  TfPU_OrderPayAdd = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    cxDateEdit1: TcxDateEdit;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1inCode: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    cxGrid1DBTableView1state: TcxGridDBColumn;
    cxGrid1DBTableView1oddDtId: TcxGridDBColumn;
    cxGrid1DBTableView1idCardNum: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updatePayCount();
    procedure updateList(id : String);
  end;

var
  fPU_OrderPayAdd: TfPU_OrderPayAdd;
  orderPayList : TStringList;
  partnersId : Integer;
  selectIndex : Integer;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderPayListP,fPU_OrderInP
;

procedure TfPU_OrderPayAdd.updateList(id : String);
var
i : Integer;
key : String;
begin
    for I := 0 to orderPayList.Count - 1 do
  begin
       key := orderPayList.Names[i];
       if id = orderPayList.Values[key] then
       begin
            orderPayList.Delete(i);
            exit;
       end;
  end;

end;

procedure TfPU_OrderPayAdd.updatePayCount();
var
qty : double;
price : double;
sum : double;
i : Integer;
begin
    sum := 0;
    for I := 0 to orderPayList.Count - 1 do
    begin
       qty := strToFloat(cxGrid1DBTableView1.DataController.Values[i,3]);
       price := strToFloat(cxGrid1DBTableView1.DataController.Values[i,4]);
       sum := sum + qty * price;
    end;
    Edit2.Text := floattostr(sum);
end;


procedure TfPU_OrderPayAdd.Button1Click(Sender: TObject);
var
payCode : String;
partnerIndex : Integer;
partnerId : String;
payUserIndex : Integer;
payUserId : String;
payAmount : String;
payNum : String;
PayDate : DateTime;
payType : String;
operatorId : Integer;
oddNumStr : String;
qtyStr : String;
priceStr : String;
totalAmountStr : String;
stateStr : String;
status : String;
memo : String;
oddDtStr : String;
idCardNumStr : String;


i : Integer;
qty : double;
price : double;
totalAmount : double;

result : String;
begin
     payCode := trim(Edit1.Text);
     partnerIndex := ComboBox1.ItemIndex;
     partnerId := intToStr(Integer(ComboBox1.Items.Objects[partnerIndex]));
     payUserIndex := ComboBox2.ItemIndex;
     payUserId := intToStr(Integer(ComboBox2.Items.Objects[payUserIndex]));
     payAmount := Edit2.Text;
     payNum := ComboBox3.Text;
     PayDate := cxDateEdit1.Date;
     payType := '采购付款';
     operatorId := 1;
     status := '已付款';
     memo := '';

     for I := 0 to orderPayList.Count - 1 do
     begin
//         inDtStr := oddDtStr + orderPayList.Names[i] + '|';
         oddNumStr := oddNumStr + trim(cxGrid1DBTableView1.DataController.Values[i,1]) + '|';
         qty := strToFloat(cxGrid1DBTableView1.DataController.Values[i,3]);
         price := strToFloat(cxGrid1DBTableView1.DataController.Values[i,4]);
         priceStr := priceStr + floatToStr(price) + '|';
         totalAmount :=  qty * price;
         totalAmountStr := totalAmountStr + floatToStr(totalAmount) + '|';
         stateStr := stateStr + '已付款|';
         oddDtStr := oddDtStr + trim(cxGrid1DBTableView1.DataController.Values[i,8]) + '|';
         qtyStr := qtyStr + floatToStr(qty) + '|';
         idCardNumStr := idCardNumStr + trim(cxGrid1DBTableView1.DataController.Values[i,9]) + '|';
     end;
//      showmessage( payCode + #13#10 + partnerId + #13#10 + payUserId + #13#10 + payAmount + #13#10 +
//            payNum + #13#10 + datetimeToStr(payDate) + #13#10 + payType + #13#10 + intToStr(operatorId) + #13#10 +
//            oddNumStr + #13#10 + qtyStr + #13#10 + priceStr + #13#10 +  totalAmountStr + #13#10 +
//            stateStr + #13#10 + status + #13#10 + memo + #13#10 + inDtStr + #13#10);



    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec addOrderPay :@payCode,:@partnerId,:@payUser,:@payAmount,'
           + ':@payNum,:@payDate,:@payType,:@operator,:@oddNumStr,:@qtyStr,:@priceStr,'
           + ':@totalAmountStr,:@stateStr,:@status,:@memo,:@oddDtStr,:@idCardNumStr,:@successResult output');//这就是调用存储过程

          parameters.Items[0].Value := payCode;
          parameters.Items[1].Value := partnerId;
          parameters.Items[2].Value := payUserId;
          parameters.Items[3].Value := payAmount;
          parameters.Items[4].Value := payNum;
          parameters.Items[5].Value := payDate;
          parameters.Items[6].Value := payType;
          parameters.Items[7].Value := operatorId;
          parameters.Items[8].Value := oddNumStr;
          parameters.Items[9].Value := qtyStr;
          parameters.Items[10].Value := priceStr;
          parameters.Items[11].Value := totalAmountStr;
          parameters.Items[12].Value := stateStr;
          parameters.Items[13].Value := status;
          parameters.Items[14].Value := memo;
          parameters.Items[15].Value := oddDtStr;
          parameters.Items[16].Value := idCardNumStr;

          execsql;
          result := parameters.Items[17].Value;
     end;

     if result = 'success' then
      begin
          duPub.tbl_pu_orderpay.ApplyUpdates(true,true);
          self.Close;
      end;

end;

procedure TfPU_OrderPayAdd.Button2Click(Sender: TObject);
begin
    self.close;
end;

procedure TfPU_OrderPayAdd.ComboBox1Change(Sender: TObject);
var
index : Integer;
begin
      Index := ComboBox1.ItemIndex;
      if selectIndex = index then
      begin
          duPub.getDobInData(dupub.tbl_st_instoragedt,orderPayList,'st_instoragedt','id');
      end
      else
      begin
          dupub.tbl_st_instoragedt.Close;
      end;


end;

procedure TfPU_OrderPayAdd.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

begin
    case  AButtonindex of
         NBDI_APPEND:
         begin
              selectIndex := ComboBox1.ItemIndex;
              if selectIndex = -1 then
              begin
                showmessage('请先选择供应商');
              end
              else
              begin
                  partnersId := Integer(ComboBox1.Items.Objects[selectIndex]);
                  fPU_OrderPayList:=TfPU_OrderPayList.Create(self);
                  fPU_OrderPayList.ShowModal;
              end;

         end;
         NBDI_DELETE:
         begin
               aDone:=true;
               if MessageDlg('确定移除该商品?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   updateList(dupub.tbl_st_instoragedt.FieldByName('id').AsString);
                   duPub.getDobInData(dupub.tbl_st_instoragedt,orderPayList,'st_instoragedt','id');
                   updatePayCount();
               end;

         end;
     end;
end;

procedure TfPU_OrderPayAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    duPub.delNum(Edit1.Text);
    duPub.tbl_st_instoragedt.Close;
end;

procedure TfPU_OrderPayAdd.FormCreate(Sender: TObject);
begin
    duPub.tbl_p_partners.Close;
    duPub.tbl_p_partners.Open;
    duPub.tbl_st_company.Close;
    duPub.tbl_st_company.Open;
    duPub.tbl_st_location.Close;
    duPub.tbl_st_location.Open;
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.Open;
    orderPayList := TStringList.Create;
    duPub.getPartner(ComboBox1,'供应商');
    duPub.getUser(ComboBox2);
    duPub.showInsertNum('puOrderPayGetNum','SHFK',Edit1);
end;

end.
