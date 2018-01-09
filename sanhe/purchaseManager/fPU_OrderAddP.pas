unit fPU_OrderAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  Vcl.ExtCtrls, uRODynamicRequest, uDAFields, uDADelta, uDADataTable,
  uROComponent, uDAScriptingProvider, uDAMemDataTable, cxDBLookupComboBox,
  cxDBNavigator;

type
  TfPU_OrderAdd = class(TForm)
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
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    cxDateEdit1: TcxDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1productCode: TcxGridDBColumn;
    cxGrid1DBTableView1productName: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1kind: TcxGridDBColumn;
    cxGrid1DBTableView1style: TcxGridDBColumn;
    cxGrid1DBTableView1spec: TcxGridDBColumn;
    cxGrid1DBTableView1color: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1productType: TcxGridDBColumn;
    cxGrid1DBTableView1tempNum: TcxGridDBColumn;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    tbl_st_product: TDAMemDataTable;
    ds_st_product: TDADataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateList(id : String);
    procedure initData();

    var
      addList : TStringList;
  end;

var
  fPU_OrderAdd: TfPU_OrderAdd;

implementation

{$R *.dfm}
uses
duPubP,fProductListP
;

procedure TfPU_OrderAdd.updateList(id : String);
var
i : Integer;
key : String;
begin
    for I := 0 to addList.Count - 1 do
  begin
       key := addList.Names[i];
       if id = addList.Values[key] then
       begin
            addList.Delete(i);
            exit;
       end;
  end;

end;

procedure TfPU_OrderAdd.initData();
begin
    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec puOrderGetNum :@orderType,:@userID,:@resultCode output');//这就是调用存储过程
          parameters.Items[0].Value := 'SHCG';
          parameters.Items[1].Value := '123';
          execsql;
          Edit1.Text := parameters.Items[2].Value;
     end;
end;



procedure TfPU_OrderAdd.Button1Click(Sender: TObject);
var
puOrderNum : String;
partnerIndex : Integer;
partnerId : Integer;
userIndex : Integer;
userId : Integer;
puStatus : String;
puOrderDate : DateTime;
address : String;
amountPay : String;
memo : String;
productIDStr : String;
QtyStr : String;
PriceStr : String;
StateStr : String;
memoStr : String;
i : Integer;
qty : String;
begin
     puOrderNum := Edit1.Text;
     puOrderDate := cxDateEdit1.Date;
     partnerIndex := ComboBox1.ItemIndex;
     userIndex := ComboBox2.ItemIndex;
     amountPay := Edit3.Text;
     puStatus := '待审核';
     address := Edit5.Text;
     memo := Edit6.Text;
     StateStr := '';
     memoStr := '';

    if puOrderNum = '' then
    begin
        showmessage('请重新生成编号');
        exit;
    end;
    if datetimetostr(puOrderDate) = '' then
     begin
         showmessage('请输入采购日期');
          exit;
     end;
    if partnerIndex = -1 then
     begin
          showmessage('请选择供应商');
          exit;
     end;
     if userIndex = -1 then
     begin
          showmessage('请选择采购人员');
          exit;
     end;

    partnerId := Integer(ComboBox1.Items.Objects[partnerIndex]);
    userId := Integer(ComboBox2.Items.Objects[userIndex]);

    for I := 0 to addList.Count - 1 do
    begin
         productIDStr :=productIDStr + addList.Names[i] + '|';
         PriceStr :=PriceStr + cxGrid1DBTableView1.DataController.Values[i,4] + '|';
         if(cxGrid1DBTableView1.DataController.Values[i,5] <> '') and
            (cxGrid1DBTableView1.DataController.Values[i,5] <> '0')then
            QtyStr := QtyStr + cxGrid1DBTableView1.DataController.Values[i,5]+ '|'
         else
         begin
           showmessage('入库数量不能为空或为0');
           exit;
         end;

         StateStr := StateStr + '未入库|'
    end;


    //使用存储过程添加采购订单
    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec addPuOrder :@puOrderNum,:@partnerId,:@puStatus,'
          +':@puOrderUser,:@puOrderDate,:@puCreator,:@address,:@amountPay,:@memo,'
          +':@productIDStr,:@QtyStr,:@PriceStr,:@StateStr,:@memoStr');//这就是调用存储过程
          parameters.Items[0].Value := puOrderNum;
          parameters.Items[1].Value := partnerId;
          parameters.Items[2].Value := puStatus;
          parameters.Items[3].Value := userId;
          parameters.Items[4].Value := puOrderDate;
          parameters.Items[5].Value := userId;
          parameters.Items[6].Value := address;
          parameters.Items[7].Value := amountPay;
          parameters.Items[8].Value := memo;
          parameters.Items[9].Value := productIDStr;
          parameters.Items[10].Value := QtyStr;
          parameters.Items[11].Value := PriceStr;
          parameters.Items[12].Value := StateStr;
          parameters.Items[13].Value := memoStr;
          execsql;
     end;
     duPub.tbl_pu_order.ApplyUpdates(true,true);
     self.Close;
end;

procedure TfPU_OrderAdd.Button2Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPU_OrderAdd.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case  AButtonindex of
         NBDI_APPEND:
         begin
              intoType := 0;
              fProductList:=TfProductList.Create(self);
              fProductList.ShowModal;
         end;
         NBDI_DELETE:
         begin
               aDone:=true;
               if MessageDlg('确定删除该商品采购?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   updateList(self.tbl_st_product.FieldByName('productId').AsString);

                   duPub.getDobInData(self.tbl_st_product,addList,'st_product','productId');
               end;

         end;
     end;
end;

procedure TfPU_OrderAdd.cxGrid1DBTableView1EditChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  i : integer;
  unitPrice : double;
  count : double;
  sum : double;
  tempCount : String;
begin
  inherited;
    sum := 0;
     if cxGrid1DBTableView1.Controller.FocusedColumnIndex = 4 then
     begin
         for I := 0 to addlist.Count - 1 do
         begin
              if cxGrid1DBTableView1.Controller.FocusedRowIndex = i then
              begin
                  tempCount := cxGrid1DBTableView1.Controller.EditingController.Edit.EditingValue;
                  if tempCount <> '' then
                    count := strToFloat(tempCount)
                  else
                    count := 0;
              end
              else
              begin

                  if cxGrid1DBTableView1.DataController.Values[i,5] <> '' then
                    count := strToFloat(cxGrid1DBTableView1.DataController.Values[i,5])
                  else
                    count := 0;
              end;
              unitPrice := strToFloat(cxGrid1DBTableView1.DataController.Values[i,4]);
              sum := sum + unitPrice * count;
         end;
     end;
     Edit3.Text := floattostr(sum);

end;

procedure TfPU_OrderAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    duPub.DAMemDataTable1.Close;
    duPub.delNum(Edit1.Text);
end;

procedure TfPU_OrderAdd.FormCreate(Sender: TObject);
begin
    duPUb.tbl_st_kind.Close;
    duPub.tbl_st_kind.Open;
    duPub.getPartner(ComboBox1,'供应商');
    duPub.getUser(ComboBox2);
    addList := TStringList.Create;
    initData();
end;

end.
