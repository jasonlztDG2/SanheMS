unit fPU_OrderP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fbase1P, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, uDAFields,
  uDADataTable, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,uDAWhere,
  Vcl.ComCtrls, Vcl.ToolWin, cxDBLookupComboBox, cxContainer, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfPU_Order = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1puOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1partnerId: TcxGridDBColumn;
    cxGrid1DBTableView1puStatus: TcxGridDBColumn;
    cxGrid1DBTableView1puOrderDate: TcxGridDBColumn;
    cxGrid1DBTableView1puOutAddress: TcxGridDBColumn;
    cxGrid1DBTableView1amountPay: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    Label4: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    cxGrid1DBTableView1puOrderUser: TcxGridDBColumn;
    ComboBox3: TComboBox;
    cxDateEdit1: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit2: TcxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPU_Order: TfPU_Order;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderAddP,fPU_OrderDetailP,fPU_OrderEditP
;

procedure TfPU_Order.Button1Click(Sender: TObject);
var
orderNum : String;
partnerIndex : Integer;
partnerId : Integer;
orderState : String;
userIndex : Integer;
userId : Integer;
beginDate : String;
endDate : String;
selectList : TStringList;
begin
  inherited;
     orderNum := Edit1.Text;
     partnerIndex := ComboBox1.ItemIndex;
     orderState := ComboBox2.Text;
     userIndex := ComboBox3.ItemIndex;
     beginDate := datetimetostr(cxDateEdit1.Date);
     endDate := datetimetostr(cxDateEdit2.Date);
     selectList := TStringList.Create;

     if orderNum <> '' then
        dupub.setSelectData(selectList,'puOrderNum','%'+orderNum+'%',dboLike);
     if orderState <> '' then
        dupub.setSelectData(selectList,'puStatus',orderState,dboEqual);
     if partnerIndex <> -1 then
     begin
         partnerId := Integer(ComboBox1.Items.Objects[partnerIndex]);
         dupub.setSelectData(selectList,'partnerId',intToStr(partnerId),dboEqual);
     end;
     if userIndex <> -1 then
     begin
         userId := Integer(ComboBox3.Items.Objects[userIndex]);
         dupub.setSelectData(selectList,'puOrderUser',intToStr(userId),dboEqual);
     end;

     if beginDate = '0000/0/0' then
        beginDate := '2000/01/01';
     if endDate = '0000/0/0' then
        endDate := DateToStr(now);



     dupub.setSelectData(selectList,'puOrderDate',beginDate,dboGreaterOrEqual);
     dupub.setSelectData(selectList,'puOrderDate',endDate,dboLessOrEqual);
     duPub.getSelectData(duPub.tbl_pu_order,selectList,'pu_order',dboAnd);
end;

procedure TfPU_Order.FormCreate(Sender: TObject);
begin
  inherited;
//    duPub.tbl_pu_order.Close;
//    duPub.tbl_pu_order.Open;
    duPub.getSelectData(duPub.tbl_pu_order,TStringList.Create,'pu_order',dboAnd);
    duPub.getPartner(Combobox1);
    duPub.getUser(Combobox3);
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.open;
end;

procedure TfPU_Order.tb_AppendClick(Sender: TObject);
begin
  inherited;
     fPU_OrderAdd:=TfPU_OrderAdd.Create(self);
     fPU_OrderAdd.ShowModal;
end;

procedure TfPU_Order.tb_BrowseClick(Sender: TObject);
begin
  inherited;
    fPU_OrderDetail:=TfPU_OrderDetail.Create(self);
    fPU_OrderDetail.ShowModal;
end;

procedure TfPU_Order.Tb_EditClick(Sender: TObject);
var
state : String;
begin
  inherited;
    state := cxGrid1DBTableView1.DataController.Values[cxGrid1DBTableView1.Controller.FocusedRowIndex,3];
    if state <> '´ýÉóºË' then
    begin
      showmessage('ÇëÑ¡ÔñÐèÒªÉóºËµÄ¼ÇÂ¼');
      exit;
    end;
    fPU_OrderEdit:=TfPU_OrderEdit.Create(self);
    fPU_OrderEdit.ShowModal;
end;

procedure TfPU_Order.tb_UnfilterClick(Sender: TObject);
begin
  inherited;
    Edit1.Text := '';
    ComboBox1.Text := '';
    ComboBox2.Text := '';
    ComboBox3.Text := '';
    cxDateEdit1.Text := '';
    cxDateEdit2.Text := '';
    duPub.getSelectData(duPub.tbl_pu_order,TStringList.Create,'pu_order',dboAnd);
end;

end.
