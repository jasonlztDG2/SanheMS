unit fBA_SetKindP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBNavigator,
  Vcl.StdCtrls, uDAFields, uDADataTable, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TfBA_SetKind = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1KindName: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
    procedure tb_SaveClick(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
    procedure tb_DeleteClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBA_SetKind: TfBA_SetKind;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfBA_SetKind.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_kind.Close;
    duPub.tbl_st_kind.Open;
end;

procedure TfBA_SetKind.tbCancelClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_kind.Close;
    duPub.tbl_st_kind.Open;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

procedure TfBA_SetKind.tb_AppendClick(Sender: TObject);
begin
  inherited;
    cxGrid1DBTableView1.OptionsData.Editing:=true;
    duPub.tbl_st_kind.Append;
end;

procedure TfBA_SetKind.tb_DeleteClick(Sender: TObject);
begin
  inherited;
   if MessageDlg('确定删除该类别?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         duPub.tbl_st_kind.Delete;
         duPub.tbl_st_kind.ApplyUpdates(false,true);
end;

procedure TfBA_SetKind.Tb_EditClick(Sender: TObject);
begin
  inherited;
   self.cxGrid1DBTableView1.OptionsData.Editing:=true;
end;

procedure TfBA_SetKind.tb_SaveClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_kind.DisableControls;
      cxGrid1DBTableView1.DataController.UpdateData;
      duPub.tbl_st_kind.ApplyUpdates(false,true);
      duPub.tbl_st_kind.EnableControls;
      cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

end.
