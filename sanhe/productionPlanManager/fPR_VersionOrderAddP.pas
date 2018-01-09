unit fPR_VersionOrderAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxMemo,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,jpeg,
  cxDBNavigator, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtDlgs;

type
  TfPR_VersionOrderAdd = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    Panel16: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label34: TLabel;
    Edit4: TEdit;
    Edit17: TEdit;
    Memo1: TMemo;
    Panel17: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1partOne: TcxGridDBColumn;
    cxGrid1DBTableView1partTwo: TcxGridDBColumn;
    cxGrid1DBTableView1partThree: TcxGridDBColumn;
    cxGrid1DBTableView1partFour: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel10: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image1: TImage;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel12: TPanel;
    Image2: TImage;
    Image4: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel7: TPanel;
    Image5: TImage;
    Label6: TLabel;
    Panel13: TPanel;
    Label7: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    Label8: TLabel;
    procedure Image2DblClick(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Image3DblClick(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure openPic(Image: TImage);
  public
    { Public declarations }

  end;

var
  fPR_VersionOrderAdd: TfPR_VersionOrderAdd;

implementation

{$R *.dfm}




procedure TfPR_VersionOrderAdd.openPic(Image: TImage);
begin
     if OpenPictureDialog1.Execute then
     begin
       Image.Picture.LoadFromFile(OpenPictureDialog1.FileName);
     end;
end;


procedure TfPR_VersionOrderAdd.Image1DblClick(Sender: TObject);
begin
     openPic(Image1);
end;

procedure TfPR_VersionOrderAdd.Image2DblClick(Sender: TObject);

begin
//     self.OpenPictureDialog1.Execute;
     openPic(Image2);

end;

procedure TfPR_VersionOrderAdd.Image3DblClick(Sender: TObject);
begin
    openPic(Image3);
end;

procedure TfPR_VersionOrderAdd.Image4DblClick(Sender: TObject);
begin
    openPic(Image4);
end;

end.
