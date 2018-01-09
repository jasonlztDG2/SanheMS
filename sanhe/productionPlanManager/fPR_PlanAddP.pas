unit fPR_PlanAddP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxDBNavigator, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls,uDADataTable,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,uDAWhere,
  cxClasses, cxGridCustomView, cxGrid, cxDBEdit, cxCheckBox;

type
  TfPR_PlanAdd = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1seOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1productCode: TcxGridDBColumn;
    cxGrid1DBTableView1productName: TcxGridDBColumn;
    cxGrid1DBTableView1kind: TcxGridDBColumn;
    cxGrid1DBTableView1style: TcxGridDBColumn;
    cxGrid1DBTableView1spec: TcxGridDBColumn;
    cxGrid1DBTableView1color: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1productType: TcxGridDBColumn;
    cxGrid1DBTableView1tempNum: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Edit7: TEdit;
    Button3: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    Edit8: TEdit;
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure deleteData();
  end;

var
  fPR_PlanAdd: TfPR_PlanAdd;
  isFirst : Integer;
implementation

{$R *.dfm}
uses
duPubP,FPR_PlanListP,fPR_ProductListP,fSE_OrderAddListP;



procedure TfPR_PlanAdd.deleteData();
begin
      with dupub.adoquery1 do
      begin
            close;
            sql.Clear;
            parameters.Clear;
            sql.Add('exec DelSeOrderPr :@code');
            parameters.Items[0].Value := Edit1.Text;
            execsql;
       end;


end;

procedure TfPR_PlanAdd.Button1Click(Sender: TObject);
 var
puOrderNum : String;
partnerIndex : Integer;
partnerId : Integer;
qty : String;
productIndex : Integer;
productId : Integer;
seOrderDate : DateTime;
seDeliveryDate : DateTime;
seStatus : String;
seCreator : String;
seAddress : String;
sePayment : double;
memo : String;
qtyStr : String;
productIdStr : String;
result : String;
i : Integer;
begin
     puOrderNum := Edit1.Text;
     partnerIndex := ComboBox1.ItemIndex;
     qty := Edit5.Text;
     seOrderDate := cxDateEdit1.Date;
     seDeliveryDate := cxDateEdit2.Date;
     productIndex := ComboBox3.ItemIndex;

//     sePayment := Edit3.Text;
     seStatus := '待审核';
     seCreator := '1';
     seAddress := Edit7.Text;
     memo := Edit6.Text;

     if puOrderNum = '' then
    begin
        showmessage('请重新生成编号');
        exit;
    end;
    if datetimetostr(seOrderDate) = '' then
     begin
         showmessage('请输入下订单日期');
          exit;
     end;
     if datetimetostr(seDeliveryDate) = '' then
     begin
         showmessage('请输入交货日期');
          exit;
     end;
    if partnerIndex = -1 then
     begin
          showmessage('请选择客户');
          exit;
     end;
     if productIndex = -1 then
     begin
          showmessage('请选择商品');
          exit;
     end;



     partnerId := Integer(ComboBox1.Items.Objects[partnerIndex]);
     productId := Integer(ComboBox3.Items.Objects[productIndex]);
     sePayment := strToFloat(duPub.getProductPrice(intToStr(productId))) * strToFloat(qty);


     duPub.tbl_pu_seOrderPr.First;
     for I := 0 to duPub.tbl_pu_seOrderPr.RecordCount - 1 do
     begin

           qtyStr := qtyStr + cxGrid1DBTableView1.DataController.Values[i,3] + '|';
           productIdStr := productIdStr + intToStr(cxGrid1DBTableView1.DataController.Values[i,2]) + '|';

           duPub.tbl_pu_seOrderPr.Next;
     end;



    //使用存储过程添加销售订单
    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec addPuSeOrder :@puOrderNum,:@partnerId,:@structureNum,:@qty,'
          +':@productId,:@seOrderDate,:@seDeliveryDate,:@seStatus,:@seCreator,'
          +':@seAddress,:@sePayment,:@memo,:@qtyStr,:@productIdStr,:@successResult output');//这就是调用存储过程
          parameters.Items[0].Value := puOrderNum;
          parameters.Items[1].Value := partnerId;
          parameters.Items[2].Value := structureNum;
          parameters.Items[3].Value := qty;
          parameters.Items[4].Value := intToStr(productId);
          parameters.Items[5].Value := seOrderDate;
          parameters.Items[6].Value := seDeliveryDate;
          parameters.Items[7].Value := seStatus;
          parameters.Items[8].Value := seCreator;
          parameters.Items[9].Value := seAddress;
          parameters.Items[10].Value := floatToStr(sePayment);
          parameters.Items[11].Value := memo;
          parameters.Items[12].Value := qtyStr;
          parameters.Items[13].Value := productIdStr;
          execsql;
          result := parameters.Items[14].Value;
     end;

     if result = 'success' then
      begin
          duPub.tbl_pu_seorder.ApplyUpdates(true,true);
         isFirst := 1;
         self.Close;
      end;
end;

procedure TfPR_PlanAdd.Button2Click(Sender: TObject);
begin
     isFirst := 0;
    self.Close;
end;

procedure TfPR_PlanAdd.Button3Click(Sender: TObject);
begin
    deleteData();
    fPR_ProductList:=TfPR_ProductList.Create(self);
    fPR_ProductList.ShowModal;
end;

procedure TfPR_PlanAdd.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
     case  AButtonindex of
         NBDI_APPEND:
         begin

              fSE_OrderAddList:=TfSE_OrderAddList.Create(self);
              fSE_OrderAddList.ShowModal;

         end;
         NBDI_DELETE:
         begin
               aDone:=true;
               if MessageDlg('确定删除该商品采购?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   duPub.tbl_pu_seOrderPrBe.Close;
                   duPub.tbl_pu_seOrderPrBe.Open;
                   if duPub.tbl_pu_seOrderPrBe.Active then
                   begin
                       duPub.tbl_pu_seOrderPrBe.filter:='productId='''+duPub.tbl_pu_seOrderPr.FieldByName('productId').AsString.Trim +'''';
                       duPub.tbl_pu_seOrderPrBe.Filtered := true;
                       duPub.tbl_pu_seOrderPrBe.Delete;
                        duPub.tbl_pu_seOrderPrBe.ApplyUpdates(true,true);
                        duPub.tbl_pu_seOrderPr.ApplyUpdates(true,true);
                   end;
               end;

         end;
     end;
end;

procedure TfPR_PlanAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    duPub.tbl_pu_seOrderPr.Close;
    duPub.delNum(Edit1.Text);
    if isFirst = 0 then
    begin
        deleteData();
    end;
end;

procedure TfPR_PlanAdd.FormCreate(Sender: TObject);

begin
    duPub.getPartner(ComboBox1,'客户');
      duPub.getProduct(ComboBox3,'成品');
     duPub.tbl_p_user.Close;
     duPub.tbl_p_user.Open;
     duPub.showInsertNum('materialGetNum','SHYL',Edit8);
     duPub.showInsertNum('prOrderGetNum','SHSC',Edit1);
     isFirst := 0;
end;

end.
