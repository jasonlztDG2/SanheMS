unit fBA_UserP;

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
  TfBA_User = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1loginName: TcxGridDBColumn;
    cxGrid1DBTableView1fullName: TcxGridDBColumn;
    cxGrid1DBTableView1password: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
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
  fBA_User: TfBA_User;

implementation

{$R *.dfm}
uses
duPubP,fBA_UserAddP
;

procedure TfBA_User.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
end;

procedure TfBA_User.tbCancelClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
    cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

procedure TfBA_User.tb_AppendClick(Sender: TObject);
begin
  inherited;
    fBA_UserAdd:=TfBA_UserAdd.Create(self);
    fBA_UserAdd.ShowModal;
end;

procedure TfBA_User.tb_DeleteClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('确定删除该用户?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         duPub.tbl_p_user.Delete;
         duPub.tbl_p_user.ApplyUpdates(false,true);
end;

procedure TfBA_User.Tb_EditClick(Sender: TObject);
begin
  inherited;
     self.cxGrid1DBTableView1.OptionsData.Editing:=true;
end;

procedure TfBA_User.tb_SaveClick(Sender: TObject);
begin
  inherited;
    duPub.tbl_p_user.DisableControls;
      cxGrid1DBTableView1.DataController.UpdateData;
      duPub.tbl_p_user.ApplyUpdates(true,true);
      duPub.tbl_p_user.EnableControls;
      cxGrid1DBTableView1.OptionsData.Editing:=false;
end;

end.
