unit fPU_OrderDetailP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDBNavigator, cxMaskEdit, cxDropDownEdit, cxCalendar, uDAWhere,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfPU_OrderDetail = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1puOrderNum: TcxGridDBColumn;
    cxGridDBTableView1productID: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1puOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1productID: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1inQty: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
    procedure openData();
  end;

var
  fPU_OrderDetail: TfPU_OrderDetail;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderDtListP
;
procedure TfPU_OrderDetail.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'puOrderNum',cxDBTextEdit1.Text,dboEqual);

   if cxDBTextEdit6.Text = '�����' then
   begin
       cxGrid2.Enabled := false;
       cxGrid2.Visible := false;
       duPub.getSelectData(duPub.tbl_pu_orderDetail,dataList,'pu_orderDetail',dboAnd);
   end
   else
   begin
       cxGrid1.Enabled := false;
       cxGrid2.Visible := true;
       duPub.getSelectData(duPub.tbl_pu_orderdt,dataList,'pu_orderdt',dboAnd);
   end;


end;

procedure TfPU_OrderDetail.openData();
begin
//    orderDtId := cxGrid1DBTableView1.DataController.Values[row,column];

    fPU_OrderDtList := TfPU_OrderDtList.Create(self);
    fPU_OrderDtList.ShowModal;
end;

procedure TfPU_OrderDetail.Button1Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPU_OrderDetail.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  row : Integer;
begin
     Row := cxGrid1DBTableView1.DataController.FocusedRecordIndex;
     orderDtId := cxGrid1DBTableView1.DataController.Values[row,1];
     openData();
end;

procedure TfPU_OrderDetail.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
 var
  row : Integer;
begin
     Row := cxGridDBTableView1.DataController.FocusedRecordIndex;
     orderDtId := cxGridDBTableView1.DataController.Values[row,1];
     openData();
end;

procedure TfPU_OrderDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dupub.tbl_pu_orderdt.Close;
end;

procedure TfPU_OrderDetail.FormCreate(Sender: TObject);
begin
     Edit1.Text := duPub.showPartner(cxDBTextEdit3.Text);
     Edit2.Text := duPub.showUser(cxDBTextEdit4.Text);
     initData();
end;

end.
