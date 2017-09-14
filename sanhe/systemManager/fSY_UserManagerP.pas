unit fSY_UserManagerP;

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
  Vcl.ComCtrls, Vcl.ToolWin, cxTL, cxTextEdit, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxContainer, cxDBNavigator, cxLabel, cxInplaceContainer;

type
  TfSY_UserManager = class(Tfbase1)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    tree1: TcxTreeList;
    aColumn: TcxTreeListColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    tree1Column1: TcxTreeListColumn;
    tree1Column2: TcxTreeListColumn;
    tree1Column3: TcxTreeListColumn;
    tree1Column4: TcxTreeListColumn;
    tree1Column5: TcxTreeListColumn;
    tree1Column6: TcxTreeListColumn;
    tree1Column7: TcxTreeListColumn;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1GroupName: TcxGridDBColumn;
    cxGrid2DBTableView1isAdmin: TcxGridDBColumn;
    cxGrid2DBTableView1auText: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1UserID: TcxGridDBColumn;
    cxGrid1DBTableView1FullName: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    cxDBNavigator2: TcxDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSY_UserManager: TfSY_UserManager;

implementation

{$R *.dfm}

end.
