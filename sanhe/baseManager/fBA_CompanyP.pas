unit fBA_CompanyP;

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
  TfBA_Company = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyName: TcxGridDBColumn;
    procedure tb_AppendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
    procedure tb_DeleteClick(Sender: TObject);
    procedure tb_SaveClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBA_Company: TfBA_Company;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfBA_Company.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_company.Close;
    duPub.tbl_st_company.Open;
end;

procedure TfBA_Company.tbCancelClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_company.Close;
    duPub.tbl_st_company.Open;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

procedure TfBA_Company.tb_AppendClick(Sender: TObject);
begin
  inherited;
    cxGrid1DBTableView1.OptionsData.Editing:=true;
    duPub.tbl_st_company.Append;
end;

procedure TfBA_Company.tb_DeleteClick(Sender: TObject);
begin
  inherited;
     if MessageDlg('确定删除该归属公司?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         duPub.tbl_st_company.Delete;
         duPub.tbl_st_company.ApplyUpdates(false,true);
end;

procedure TfBA_Company.Tb_EditClick(Sender: TObject);
begin
  inherited;
    self.cxGrid1DBTableView1.OptionsData.Editing:=true;
end;

procedure TfBA_Company.tb_SaveClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_company.DisableControls;
      cxGrid1DBTableView1.DataController.UpdateData;
      duPub.tbl_st_company.ApplyUpdates(false,true);
      duPub.tbl_st_company.EnableControls;
      cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

end.
