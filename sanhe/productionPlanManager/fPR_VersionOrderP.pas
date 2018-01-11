unit fPR_VersionOrderP;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TfPR_VersionOrder = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1versionOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1partnerNum: TcxGridDBColumn;
    cxGrid1DBTableView1recordDate: TcxGridDBColumn;
    cxGrid1DBTableView1deliveryDate: TcxGridDBColumn;
    cxGrid1DBTableView1recordUser: TcxGridDBColumn;
    cxGrid1DBTableView1auditUser: TcxGridDBColumn;
    cxGrid1DBTableView1titleName: TcxGridDBColumn;
    cxGrid1DBTableView1titleCount: TcxGridDBColumn;
    cxGrid1DBTableView1titleMemo: TcxGridDBColumn;
    procedure tb_AppendClick(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPR_VersionOrder: TfPR_VersionOrder;

implementation

{$R *.dfm}

uses
fPR_VersionOrderAddP,
duPubP
;

procedure TfPR_VersionOrder.FormCreate(Sender: TObject);
begin
  inherited;
   duPub.tbl_pu_versionOrder.close;
   duPub.tbl_pu_versionOrder.open;
end;

procedure TfPR_VersionOrder.tb_AppendClick(Sender: TObject);
begin
  inherited;
    intoType := 1;
    fPR_VersionOrderAdd := TfPR_VersionOrderAdd.Create(self);
    fPR_VersionOrderAdd.ShowModal;
end;

procedure TfPR_VersionOrder.tb_BrowseClick(Sender: TObject);
begin
  inherited;
    intoType := 2;
    fPR_VersionOrderAdd := TfPR_VersionOrderAdd.Create(self);
    fPR_VersionOrderAdd.ShowModal;
end;

end.
