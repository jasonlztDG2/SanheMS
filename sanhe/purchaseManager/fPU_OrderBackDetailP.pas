unit fPU_OrderBackDetailP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxGridLevel,uDAWhere,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TfPU_OrderBackDetail = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1outCode: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1hadInQty: TcxGridDBColumn;
    cxGrid1DBTableView1partnersId: TcxGridDBColumn;
    cxGrid1DBTableView1oddDtId: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
  end;

var
  fPU_OrderBackDetail: TfPU_OrderBackDetail;

implementation

{$R *.dfm}
uses
fPU_OrderBackP,duPubP;

procedure TfPU_OrderBackDetail.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'outCode',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(duPub.tbl_st_outstoragedt,dataList,'st_outstoragedt',dboAnd);

end;

procedure TfPU_OrderBackDetail.Button1Click(Sender: TObject);
begin
       self.Close;
end;

procedure TfPU_OrderBackDetail.FormCreate(Sender: TObject);
begin
     Edit2.Text := duPub.showUser(cxDBTextEdit4.Text);
     initData();
     duPub.tbl_st_product.Close;
     duPub.tbl_st_product.Open;
     duPub.tbl_st_location.Close;
     duPub.tbl_st_location.Open;
     duPub.tbl_st_company.Close;
     duPub.tbl_st_company.Open;
     duPub.tbl_p_partners.Close;
     duPub.tbl_p_partners.Open;
end;

end.
