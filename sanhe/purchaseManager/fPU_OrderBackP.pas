unit fPU_OrderBackP;

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
  Vcl.ComCtrls, Vcl.ToolWin, uRODynamicRequest, uDADelta, uROComponent,
  uDAScriptingProvider, uDAMemDataTable, cxContainer, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfPU_OrderBack = class(Tfbase1)
    tbl_st_outstorage: TDAMemDataTable;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1outCode: TcxGridDBColumn;
    cxGrid1DBTableView1outType: TcxGridDBColumn;
    cxGrid1DBTableView1outUser: TcxGridDBColumn;
    cxGrid1DBTableView1outDate: TcxGridDBColumn;
    cxGrid1DBTableView1operator: TcxGridDBColumn;
    cxGrid1DBTableView1operatorDate: TcxGridDBColumn;
    cxGrid1DBTableView1outState: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    Label4: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox4: TComboBox;
    Button1: TButton;
    Label3: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit2: TcxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure reData();
  end;

var
  fPU_OrderBack: TfPU_OrderBack;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderBackDetailP;

procedure TfPU_OrderBack.reData();
var
selectList : TStringList;
begin
    selectList := TStringList.Create;
      dupub.setSelectData(selectList,'outType','采购退货',dboEqual);
      duPub.getSelectData(self.tbl_st_outstorage,selectList,'st_outstorage',dboAnd);
end;

procedure TfPU_OrderBack.Button1Click(Sender: TObject);
var
orderNum : String;
userIndex : Integer;
userId : Integer;
beginDate : String;
endDate : String;
selectList : TStringList;
begin
  inherited;
      orderNum := Edit1.Text;
      userIndex := ComboBox4.ItemIndex;
     beginDate := datetimetostr(cxDateEdit1.Date);
     endDate := datetimetostr(cxDateEdit2.Date);
     selectList := TStringList.Create;
     if orderNum <> '' then
        dupub.setSelectData(selectList,'outCode','%'+orderNum+'%',dboLike);

    if userIndex <> -1 then
     begin
         userId := Integer(ComboBox4.Items.Objects[userIndex]);
         dupub.setSelectData(selectList,'outUser',intToStr(userId),dboEqual);
     end;

     if beginDate = '0000/0/0' then
        beginDate := '2000/01/01';
     if endDate = '0000/0/0' then
        endDate := DateToStr(now);

     dupub.setSelectData(selectList,'outDate',beginDate,dboGreaterOrEqual);
     dupub.setSelectData(selectList,'outDate',endDate,dboLessOrEqual);
     dupub.setSelectData(selectList,'outType','采购退货',dboEqual);
     duPub.getSelectData(self.tbl_st_outstorage,selectList,'st_outstorage',dboAnd);
end;

procedure TfPU_OrderBack.FormCreate(Sender: TObject);

begin
  inherited;
      duPub.getUser(ComboBox4);
     reData();
end;

procedure TfPU_OrderBack.tbRefreshClick(Sender: TObject);

begin
  inherited;
     reData();
end;

procedure TfPU_OrderBack.tb_BrowseClick(Sender: TObject);
begin
  inherited;
     fPU_OrderBackDetail := TfPU_OrderBackDetail.Create(self);
    fPU_OrderBackDetail.ShowModal;
end;

procedure TfPU_OrderBack.tb_UnfilterClick(Sender: TObject);
begin
  inherited;
Edit1.Text := '';

    ComboBox4.Text := '';
    ComboBox4.ItemIndex := -1;
    cxDateEdit1.Text := '';
    cxDateEdit2.Text := '';
    reData();
end;

end.
