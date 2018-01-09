unit FSY_UserManager_UserP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, uRODynamicRequest, uDAFields, uDADelta, uDADataTable,
  uROComponent, uDAScriptingProvider, uDAMemDataTable, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFSY_UserManager_User = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dSP_User: TDADataSource;
    tbl_p_user: TDAMemDataTable;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ParentForm:Tform;
  end;

var
  FSY_UserManager_User: TFSY_UserManager_User;

implementation

{$R *.dfm}
uses
duPubP,fSY_UserManagerP;

procedure TFSY_UserManager_User.cxButton1Click(Sender: TObject);
begin
with ParentForm as TfSY_UserManager do
  begin
    tbl_P_User.RefreshFromServer;
    tbl_P_User.Filtered:=false;
      if tbl_P_User.Locate('ID',self.tbl_p_user.FieldByName('ID').AsInteger,[]) then


      with tbl_p_user do begin
          edit;
          fieldbyname('UserGroup_ID').AsInteger:=tbl_P_UserGroup.FieldByName('ID').AsInteger;
          post;
          applyupdates(true);
      end;
    Tbl_P_User.Filtered:=true;
  end;
  self.Close;
end;

procedure TFSY_UserManager_User.FormCreate(Sender: TObject);
begin
self.tbl_p_user.RemoteDataAdapter:=dupub.RemoteDataAdapter;
  self.tbl_p_user.Close;
  self.tbl_p_user.Open;
end;

end.
