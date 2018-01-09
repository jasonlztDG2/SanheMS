unit fPR_PlanP;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls, uDAWhere,
  Vcl.ComCtrls, Vcl.ToolWin, cxDBLookupComboBox, cxContainer, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfPR_Plan = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1seOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1partnersId: TcxGridDBColumn;
    cxGrid1DBTableView1structureNum: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1seOrderDate: TcxGridDBColumn;
    cxGrid1DBTableView1seDeliveryDate: TcxGridDBColumn;
    cxGrid1DBTableView1seStatus: TcxGridDBColumn;
    cxGrid1DBTableView1seCreator: TcxGridDBColumn;
    cxGrid1DBTableView1seAddress: TcxGridDBColumn;
    cxGrid1DBTableView1sePayment: TcxGridDBColumn;
    cxGrid1DBTableView1seSalesman: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    Label4: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label7: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    Label8: TLabel;
    Button1: TButton;
    Label5: TLabel;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPR_Plan: TfPR_Plan;

implementation

{$R *.dfm}
uses
duPubP,fPR_PlanAddP,fSE_OrderAddEditP,fSE_OrderAddDetailP;

procedure TfPR_Plan.Button1Click(Sender: TObject);
var
orderNum : String;
partnerIndex : Integer;
partnerId : Integer;
orderState : String;
userIndex : Integer;
userId : Integer;
beginDate : String;
endDate : String;
beginDate1 : String;
endDate1 : String;
selectList : TStringList;
begin
  inherited;
    orderNum := Edit1.Text;
     partnerIndex := ComboBox1.ItemIndex;
     orderState := ComboBox2.Text;
     userIndex := ComboBox3.ItemIndex;
     beginDate := datetimetostr(cxDateEdit1.Date);
     endDate := datetimetostr(cxDateEdit2.Date);
     beginDate1 := datetimetostr(cxDateEdit3.Date);
     endDate1 := datetimetostr(cxDateEdit4.Date);
     selectList := TStringList.Create;

     if orderNum <> '' then
        dupub.setSelectData(selectList,'seOrderNum','%'+orderNum+'%',dboLike);
     if orderState <> '' then
        dupub.setSelectData(selectList,'seStatus',orderState,dboEqual);
     if partnerIndex <> -1 then
     begin
         partnerId := Integer(ComboBox1.Items.Objects[partnerIndex]);
         dupub.setSelectData(selectList,'partnerId',intToStr(partnerId),dboEqual);
     end;
     if userIndex <> -1 then
     begin
         userId := Integer(ComboBox3.Items.Objects[userIndex]);
         dupub.setSelectData(selectList,'productId',intToStr(userId),dboEqual);
     end;

     if beginDate = '0000/0/0' then
        beginDate := '2000/01/01';
     if endDate <> '0000/0/0' then
      begin
          dupub.setSelectData(selectList,'seOrderDate',endDate,dboLessOrEqual);
      end;

      if beginDate1 = '0000/0/0' then
        beginDate1 := '2000/01/01';
     if endDate1 <> '0000/0/0' then
     begin
         dupub.setSelectData(selectList,'seDeliveryDate',endDate1,dboLessOrEqual);
     end;


    dupub.setSelectData(selectList,'seOrderDate',beginDate,dboGreaterOrEqual);

     dupub.setSelectData(selectList,'seDeliveryDate',beginDate1,dboGreaterOrEqual);

     duPub.getSelectData(duPub.tbl_pu_seOrder,selectList,'pu_seOrder',dboAnd);
end;

procedure TfPR_Plan.FormCreate(Sender: TObject);
begin
  inherited;
     duPub.tbl_pu_seOrder.Close;
     duPub.tbl_pu_seOrder.open;
     duPub.getPartner(Combobox1,'客户');
    duPub.getProduct(Combobox3,'成品');
end;

procedure TfPR_Plan.tb_AppendClick(Sender: TObject);
begin
  inherited;
      fPR_PlanAdd := TfPR_PlanAdd.Create(self);
      fPR_PlanAdd.ShowModal;
end;

procedure TfPR_Plan.tb_BrowseClick(Sender: TObject);
begin
  inherited;
    fSE_OrderAddDetail := TfSE_OrderAddDetail.Create(self);
     fSE_OrderAddDetail.ShowModal;
end;

procedure TfPR_Plan.Tb_EditClick(Sender: TObject);
var
state : String;
begin
  inherited;
   state := cxGrid1DBTableView1.DataController.Values[cxGrid1DBTableView1.Controller.FocusedRowIndex,8];
    if state <> '待审核' then
    begin
      showmessage('请选择需要审核的记录');
      exit;
    end;
    fSE_OrderAddEdit:=TfSE_OrderAddEdit.Create(self);
    fSE_OrderAddEdit.ShowModal;
end;

procedure TfPR_Plan.tb_UnfilterClick(Sender: TObject);
begin
  inherited;
    Edit1.Text := '';
    ComboBox1.Text := '';
    ComboBox2.Text := '';
    ComboBox3.Text := '';
    cxDateEdit1.Text := '';
    cxDateEdit2.Text := '';
    cxDateEdit3.Text := '';
    cxDateEdit4.Text := '';
    duPub.getSelectData(duPub.tbl_pu_seOrder,TStringList.Create,'pu_seOrder',dboAnd);
end;

end.
