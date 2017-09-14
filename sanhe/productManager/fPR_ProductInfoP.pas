unit fPR_ProductInfoP;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,uDAWhere,
  Vcl.ComCtrls, Vcl.ToolWin, cxDBLookupComboBox, uRODynamicRequest, uDADelta,
  uROComponent, uDAScriptingProvider, uDAMemDataTable;

type
  TfPR_ProductInfo = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1productCode: TcxGridDBColumn;
    cxGrid1DBTableView1productName: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1kind: TcxGridDBColumn;
    cxGrid1DBTableView1style: TcxGridDBColumn;
    cxGrid1DBTableView1spec: TcxGridDBColumn;
    cxGrid1DBTableView1color: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1productType: TcxGridDBColumn;
    Label4: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    procedure tb_AppendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fPR_ProductInfo: TfPR_ProductInfo;

implementation

{$R *.dfm}
uses
duPubP,fPR_ProductAddP,fPR_ProductDetailP ,fPR_ProductEditP
;



procedure TfPR_ProductInfo.Button1Click(Sender: TObject);
var
productCode : String;
productColor : String;
productName : String;
index:Integer;
prKind:Integer;
prType:String;
selectList : TStringList;
begin
  inherited;
    productCode := Edit1.Text;
    productName := Edit2.Text;
    productColor := Edit3.Text;
    index := ComboBox1.ItemIndex;
    prType := ComboBox2.Text;
    selectList := TStringList.Create;

    if productCode <> '' then
      dupub.setSelectData(selectList,'productCode','%'+productCode+'%',dboLike);
    if productName <> '' then
      dupub.setSelectData(selectList,'productName','%'+productName+'%',dboLike);
    if productColor <> '' then
      dupub.setSelectData(selectList,'color','%'+productColor+'%',dboLike);
    if index <> -1 then
    begin
       prKind := Integer(ComboBox1.Items.Objects[index]);
       dupub.setSelectData(selectList,'kind',intToStr(prKind),dboEqual);
    end;
    if prType <> '' then
      dupub.setSelectData(selectList,'productType',prType,dboEqual);

    duPub.getSelectData(duPub.tbl_st_product,selectList,'st_product',dboAnd);
end;

procedure TfPR_ProductInfo.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.getKind(ComboBox1);
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.Open;

end;

procedure TfPR_ProductInfo.tb_AppendClick(Sender: TObject);
begin
  inherited;
     fPR_ProductAdd:=TfPR_ProductAdd.Create(self);
    fPR_ProductAdd.ShowModal;
end;

procedure TfPR_ProductInfo.tb_BrowseClick(Sender: TObject);
begin
  inherited;
     fPR_ProductDetail:=TfPR_ProductDetail.Create(self);
    fPR_ProductDetail.ShowModal;
end;

procedure TfPR_ProductInfo.Tb_EditClick(Sender: TObject);
begin
  inherited;
     fPR_ProductEdit:=TfPR_ProductEdit.Create(self);
    fPR_ProductEdit.ShowModal;
end;

procedure TfPR_ProductInfo.tb_UnfilterClick(Sender: TObject);
begin
  inherited;
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    ComboBox1.Text := '';
    ComboBox2.Text := '';
    duPub.getSelectData(duPub.tbl_st_product,TStringList.Create,'st_product',dboAnd);
end;

end.
