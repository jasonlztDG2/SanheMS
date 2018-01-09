unit fST_StoageCheckP;

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
  Vcl.ComCtrls, Vcl.ToolWin, cxDBLookupComboBox;

type
  TfST_StoageCheck = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1checkNum: TcxGridDBColumn;
    cxGrid1DBTableView1checkDate: TcxGridDBColumn;
    cxGrid1DBTableView1checkUser: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fST_StoageCheck: TfST_StoageCheck;

implementation

{$R *.dfm}
uses
duPubP,fST_StoageCheckDetailP;

procedure TfST_StoageCheck.FormCreate(Sender: TObject);
begin
  inherited;
     duPub.tbl_st_check.Close;
     duPub.tbl_st_check.Open;
     duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
end;

procedure TfST_StoageCheck.tb_BrowseClick(Sender: TObject);
begin
  inherited;
     fST_StoageCheckDetail:=TfST_StoageCheckDetail.Create(self);
     fST_StoageCheckDetail.ShowModal;
end;

end.
