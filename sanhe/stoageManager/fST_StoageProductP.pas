unit fST_StoageProductP;

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
  Vcl.ComCtrls, Vcl.ToolWin, cxDBLookupComboBox;

type
  TfST_StoageProduct = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fST_StoageProduct: TfST_StoageProduct;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfST_StoageProduct.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_repertory.Close;
    duPub.tbl_st_repertory.Open;
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.Open;
    duPub.tbl_st_company.Close;
    duPub.tbl_st_company.Open;
    duPub.tbl_st_location.Close;
    duPub.tbl_st_location.Open;
end;

procedure TfST_StoageProduct.tb_BrowseClick(Sender: TObject);
begin
  inherited;
      //sdfg
end;

end.
