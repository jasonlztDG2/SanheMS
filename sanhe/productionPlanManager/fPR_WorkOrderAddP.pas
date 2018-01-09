unit fPR_WorkOrderAddP;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,ShellAPI,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, FileCtrl,
  cxGridDBTableView, cxGrid, cxDBNavigator, cxMemo, dxGDIPlusClasses,
  Vcl.ExtDlgs;

type
  TfPR_WorkOrderAdd = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    cxDateEdit2: TcxDateEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Panel6: TPanel;
    Image3: TImage;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Image1: TImage;
    Panel12: TPanel;
    Image2: TImage;
    Image4: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel13: TPanel;
    Image5: TImage;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1partOne: TcxGridDBColumn;
    cxGrid1DBTableView1partTwo: TcxGridDBColumn;
    cxGrid1DBTableView1partThree: TcxGridDBColumn;
    cxGrid1DBTableView1partFour: TcxGridDBColumn;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1material: TcxGridDBColumn;
    cxGridDBTableView1isOwn: TcxGridDBColumn;
    cxDBNavigator2: TcxDBNavigator;
    Panel1: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Panel18: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Image8: TImage;
    Label16: TLabel;
    Image9: TImage;
    Label17: TLabel;
    Edit15: TEdit;
    Label10: TLabel;
    Edit16: TEdit;
    Label11: TLabel;
    Label13: TLabel;
    Edit18: TEdit;
    Label18: TLabel;
    Edit19: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Image6: TImage;
    Edit20: TEdit;
    Edit21: TEdit;
    Label33: TLabel;
    Button1: TButton;
    Label34: TLabel;
    Edit17: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPR_WorkOrderAdd: TfPR_WorkOrderAdd;

implementation

{$R *.dfm}
uses
browserfolderu,
duPubP;


procedure TfPR_WorkOrderAdd.Button1Click(Sender: TObject);
var
workNum : String;

begin

end;

procedure TfPR_WorkOrderAdd.Button2Click(Sender: TObject);
begin
    self.OpenPictureDialog1.Execute;
end;

procedure TfPR_WorkOrderAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   duPub.delNum(Edit1.Text);
end;

procedure TfPR_WorkOrderAdd.FormCreate(Sender: TObject);
begin
//     duPub.tbl_pu_workDetailTitle.Close;
//     duPub.tbl_pu_workDetailTitle.open;
//     duPub.tbl_pu_workDetailMaterial.Close;
//     duPub.tbl_pu_workDetailMaterial.open;
//     duPUb.showInsertNum('puWorkGetNum','SHNG',Edit1);
end;

end.
