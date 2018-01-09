unit fPR_WorkOrderP;

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
  TfPR_WorkOrder = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1workNum: TcxGridDBColumn;
    cxGrid1DBTableView1partnerNum: TcxGridDBColumn;
    cxGrid1DBTableView1recordDate: TcxGridDBColumn;
    cxGrid1DBTableView1deliveryDate: TcxGridDBColumn;
    cxGrid1DBTableView1recordUser: TcxGridDBColumn;
    cxGrid1DBTableView1auditUser: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    cxGrid1DBTableView1titleName: TcxGridDBColumn;
    cxGrid1DBTableView1titleCount: TcxGridDBColumn;
    cxGrid1DBTableView1titleMemo: TcxGridDBColumn;
    cxGrid1DBTableView1bodyDescribe: TcxGridDBColumn;
    cxGrid1DBTableView1bodyPic: TcxGridDBColumn;
    cxGrid1DBTableView1bodyMemo: TcxGridDBColumn;
    procedure tb_AppendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPR_WorkOrder: TfPR_WorkOrder;

implementation

{$R *.dfm}
uses
 fPR_WorkOrderAddP,
duPubP;

procedure TfPR_WorkOrder.tb_AppendClick(Sender: TObject);
begin
  inherited;
      fPR_WorkOrderAdd := TfPR_WorkOrderAdd.Create(self);
      fPR_WorkOrderAdd.ShowModal;
end;

end.
