unit fPU_OrderPayP;

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
  Vcl.ComCtrls, Vcl.ToolWin, cxContainer, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBLookupComboBox;

type
  TfPU_OrderPay = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1payCode: TcxGridDBColumn;
    cxGrid1DBTableView1partnerId: TcxGridDBColumn;
    cxGrid1DBTableView1payUser: TcxGridDBColumn;
    cxGrid1DBTableView1payAmount: TcxGridDBColumn;
    cxGrid1DBTableView1payNum: TcxGridDBColumn;
    cxGrid1DBTableView1payDate: TcxGridDBColumn;
    cxGrid1DBTableView1payType: TcxGridDBColumn;
    cxGrid1DBTableView1operator: TcxGridDBColumn;
    cxGrid1DBTableView1operatorDate: TcxGridDBColumn;
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
    Button1: TButton;
    procedure tb_AppendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPU_OrderPay: TfPU_OrderPay;

implementation

{$R *.dfm}
uses
duPubP ,fPU_OrderPayAddP,fPU_OrderPayDetailP
;

procedure TfPU_OrderPay.Button1Click(Sender: TObject);
var
orderNum : String;
userIndex : Integer;
userId : Integer;
partnerIndex : Integer;
partnerId : Integer;
beginDate : String;
endDate : String;
selectList : TStringList;
begin
  inherited;
    orderNum := Edit1.Text;
    partnerIndex := ComboBox1.ItemIndex;
    userIndex := ComboBox2.ItemIndex;
    beginDate := datetimetostr(cxDateEdit1.Date);
     endDate := datetimetostr(cxDateEdit2.Date);

    selectList := TStringList.Create;

    if orderNum <> '' then
        dupub.setSelectData(selectList,'payCode','%'+orderNum+'%',dboLike);

     if partnerIndex <> -1 then
     begin
         partnerId := Integer(ComboBox1.Items.Objects[partnerIndex]);
         dupub.setSelectData(selectList,'partnerId',intToStr(partnerId),dboEqual);
     end;
     if userIndex <> -1 then
     begin
         userId := Integer(ComboBox2.Items.Objects[userIndex]);
         dupub.setSelectData(selectList,'payUser',intToStr(userId),dboEqual);
     end;

     if beginDate = '0000/0/0' then
        beginDate := '2000/01/01';
     if endDate = '0000/0/0' then
        endDate := DateToStr(now);



     dupub.setSelectData(selectList,'payDate',beginDate,dboGreaterOrEqual);
     dupub.setSelectData(selectList,'payDate',endDate,dboLessOrEqual);
     duPub.getSelectData(duPub.tbl_pu_orderpay,selectList,'pu_orderpay',dboAnd);
end;

procedure TfPU_OrderPay.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_pu_orderpay.Close;
    duPub.tbl_pu_orderpay.Open;
    duPub.getPartner(ComboBox1,'π©”¶…Ã');
    duPub.getUser(ComboBox2);
end;

procedure TfPU_OrderPay.tb_AppendClick(Sender: TObject);
begin
  inherited;
    fPU_OrderPayAdd:=TfPU_OrderPayAdd.Create(self);
    fPU_OrderPayAdd.ShowModal;
end;

procedure TfPU_OrderPay.tb_BrowseClick(Sender: TObject);
begin
  inherited;
    fPU_OrderPayDetail:=TfPU_OrderPayDetail.Create(self);
    fPU_OrderPayDetail.ShowModal;
end;

procedure TfPU_OrderPay.tb_UnfilterClick(Sender: TObject);
begin
  inherited;
    Edit1.Text := '';
    ComboBox1.Text := '';
    ComboBox2.Text := '';
    ComboBox1.ItemIndex := -1;
    ComboBox2.ItemIndex := -1;
    cxDateEdit1.Text := '';
    cxDateEdit2.Text := '';
    duPub.getSelectData(duPub.tbl_pu_orderpay,TStringList.Create,'pu_orderpay',dboAnd);
end;

end.
