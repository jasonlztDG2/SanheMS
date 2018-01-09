unit fPR_PickingListP;

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
  TfPR_PickingList = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1materialNum: TcxGridDBColumn;
    cxGrid1DBTableView1materialDate: TcxGridDBColumn;
    procedure tb_AppendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPR_PickingList: TfPR_PickingList;

implementation

{$R *.dfm}
uses
fPR_PickingListAddP,fPR_PickingListDetailP,
duPubP;

procedure TfPR_PickingList.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_pu_material.Close;
     duPub.tbl_pu_material.Open;
end;

procedure TfPR_PickingList.tb_AppendClick(Sender: TObject);
begin
  inherited;
     fPR_PickingListAdd := TfPR_PickingListAdd.Create(self);
     fPR_PickingListAdd.ShowModal;

end;

procedure TfPR_PickingList.tb_BrowseClick(Sender: TObject);
begin
  inherited;
     fPR_PickingListDetail := TfPR_PickingListDetail.Create(self);
     fPR_PickingListDetail.ShowModal;
end;

end.
