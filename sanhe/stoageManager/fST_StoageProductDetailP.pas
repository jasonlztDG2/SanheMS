unit fST_StoageProductDetailP;

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
  Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxGridLevel, uDAWhere,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TfST_StoageProductDetail = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1recordDate: TcxGridDBColumn;
    cxGrid1DBTableView1recordUser: TcxGridDBColumn;
    cxGrid1DBTableView1recordType: TcxGridDBColumn;
    cxGrid1DBTableView1idCardNum: TcxGridDBColumn;
    cxGrid1DBTableView1incode: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure initData();
  public
    { Public declarations }
  end;

var
  fST_StoageProductDetail: TfST_StoageProductDetail;

implementation

{$R *.dfm}
uses
duPubP;

procedure TfST_StoageProductDetail.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'productId',cxDBTextEdit1.Text,dboEqual);
   dupub.setSelectData(dataList,'locationId',cxDBTextEdit3.Text,dboEqual);
   dupub.setSelectData(dataList,'companyId',cxDBTextEdit4.Text,dboEqual);
   dupub.setSelectData(dataList,'idCardNum','',dboNotEqual);
   duPub.getSelectData(duPub.tbl_st_repertoryDetail,dataList,'st_repertoryDetail',dboAnd);

end;

procedure TfST_StoageProductDetail.Button1Click(Sender: TObject);
begin
self.Close;
end;

procedure TfST_StoageProductDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    duPub.tbl_st_repertoryDetail.Close;
end;

procedure TfST_StoageProductDetail.FormCreate(Sender: TObject);
begin
    Edit1.Text := duPub.showProduct(cxDBTextEdit1.Text);
     Edit2.Text := duPub.showLocation(cxDBTextEdit3.Text);
     Edit3.Text := duPub.showCompany(cxDBTextEdit4.Text);
    duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
    initData();
end;

end.
