unit fBA_LocationP;

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
  Vcl.ComCtrls, Vcl.ToolWin, cxDropDownEdit, cxColorComboBox, cxMemo;

type
  TfBA_Location = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1locationNum: TcxGridDBColumn;
    cxGrid1DBTableView1locationName: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
    procedure tb_DeleteClick(Sender: TObject);
    procedure tb_SaveClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBA_Location: TfBA_Location;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfBA_Location.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_location.Close;
    duPub.tbl_st_location.Open;
end;

procedure TfBA_Location.tbCancelClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_location.Close;
    duPub.tbl_st_location.Open;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

procedure TfBA_Location.tb_AppendClick(Sender: TObject);
begin
  inherited;
    cxGrid1DBTableView1.OptionsData.Editing:=true;
    duPub.tbl_st_location.Append;
end;

procedure TfBA_Location.tb_DeleteClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('确定删除该仓位?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         duPub.tbl_st_location.Delete;
         duPub.tbl_st_location.ApplyUpdates(false,true);
end;

procedure TfBA_Location.Tb_EditClick(Sender: TObject);
begin
  inherited;
    self.cxGrid1DBTableView1.OptionsData.Editing:=true;
end;

procedure TfBA_Location.tb_SaveClick(Sender: TObject);
begin
  inherited;
     duPub.tbl_st_location.DisableControls;
      cxGrid1DBTableView1.DataController.UpdateData;
      duPub.tbl_st_location.ApplyUpdates(false,true);
      duPub.tbl_st_location.EnableControls;
      cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

end.
