unit fSE_OrderAddEditP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxContainer, Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,uDAWhere,
  cxGridCustomView, cxGrid;

type
  TfSE_OrderAddEdit = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1seOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1productName: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1kind: TcxGridDBColumn;
    cxGrid1DBTableView1style: TcxGridDBColumn;
    cxGrid1DBTableView1spec: TcxGridDBColumn;
    cxGrid1DBTableView1color: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1productType: TcxGridDBColumn;
    cxGrid1DBTableView1tempNum: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Edit2: TEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    Edit1: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateOrder(updateStatus : String);
    procedure initData();
  end;

var
  fSE_OrderAddEdit: TfSE_OrderAddEdit;

implementation

{$R *.dfm}
uses
duPubP;

procedure TfSE_OrderAddEdit.Button1Click(Sender: TObject);
begin
     updateOrder('´ýÉú²ú');
    self.Close;
end;

procedure TfSE_OrderAddEdit.Button2Click(Sender: TObject);
begin
     self.Close;
end;

procedure TfSE_OrderAddEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    duPub.tbl_pu_seOrderPr.Close;
end;

procedure TfSE_OrderAddEdit.FormCreate(Sender: TObject);
begin
     Edit1.Text := duPub.showProduct(cxDBTextEdit5.Text);
     Edit2.Text := duPub.showPartner(cxDBTextEdit2.Text);
     initData();
end;

procedure TfSE_OrderAddEdit.updateOrder(updateStatus : String);

begin
      dupub.tbl_pu_seOrder.edit;
      duPub.tbl_pu_seOrder.fieldbyname('seStatus').AsString := updateStatus;
      dupub.tbl_pu_seOrder.post;
      dupub.tbl_pu_seOrder.applyupdates(true,false);
end;

procedure TfSE_OrderAddEdit.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'seOrderNum',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(duPub.tbl_pu_seOrderPr,dataList,'pu_seOrderPr',dboAnd);

end;

end.
