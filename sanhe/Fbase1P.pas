unit Fbase1P;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, uDAFields,
  uDADataTable, Vcl.ComCtrls, Vcl.ToolWin, cxGraphics, cxControls,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls;

type
  Tfbase1 = class(TForm)
    ToolBar1: TToolBar;
    tb_Browse: TToolButton;
    Tb_Edit: TToolButton;
    tb_Append: TToolButton;
    tb_revise: TToolButton;
    tb_Copy: TToolButton;
    tb_Delete: TToolButton;
    tb_Seperator1: TToolButton;
    tb_Filter: TToolButton;
    tb_Unfilter: TToolButton;
    tb_Seperator2: TToolButton;
    tb_Save: TToolButton;
    tbCancel: TToolButton;
    tb_Seperator3: TToolButton;
    tbRefresh: TToolButton;
    tb_Exit: TToolButton;
    dSource1: TDADataSource;
    ToolBar2: TToolBar;
    nav_First: TToolButton;
    nav_Proid: TToolButton;
    rec_Edit: TEdit;
    nav_Next: TToolButton;
    nav_Last: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    procedure tb_ExitClick(Sender: TObject);
    procedure tb_FilterClick(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbase1: Tfbase1;

implementation

{$R *.dfm}

uses
duPubP;

procedure Tfbase1.tb_ExitClick(Sender: TObject);
begin
     inherited;
     self.Close;
end;

procedure Tfbase1.tb_FilterClick(Sender: TObject);
begin
     Panel1.Visible := true;
     tb_Unfilter.Enabled := true;
end;

procedure Tfbase1.tb_UnfilterClick(Sender: TObject);
begin
    Panel1.Visible := false;
     tb_Unfilter.Enabled := false;
end;

end.
