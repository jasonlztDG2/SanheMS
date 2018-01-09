unit fST_StorageStatementDetailP;

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
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, uDAWhere,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,DateUtils,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDBLookupComboBox, Data.Win.ADODB;

type
  TfST_StorageStatementDetail = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel4: TPanel;
    Label7: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    cxGrid1DBTableView1recordDate: TcxGridDBColumn;
    cxGrid1DBTableView1recordUser: TcxGridDBColumn;
    cxGrid1DBTableView1recordType: TcxGridDBColumn;
    cxGrid1DBTableView1idCardNum: TcxGridDBColumn;
    cxGrid1DBTableView1incode: TcxGridDBColumn;
    Button2: TButton;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showDetail(startDate : String; endDate : String);
//    function getMonthLastDay():String;
  end;

var
  fST_StorageStatementDetail: TfST_StorageStatementDetail;

implementation

{$R *.dfm}
uses
duPubP;

procedure TfST_StorageStatementDetail.showDetail(startDate : String; endDate : String);
var
dataList : TStringList;
begin
//     with self.adoquery1 do
//    begin
//          close;
//          sql.Clear;
//          sql.Add('select * from st_repertoryDetail as r where'+
//          '  p.productId= ''' + cxDBTextEdit1.Text +
//          ''' and  r.recordDate between ''' + startDate + ''' and ''' + endDate + '''');
//          open;
//     end;
     dataList := TStringList.Create;
     dupub.setSelectData(dataList,'productId',cxDBTextEdit1.Text,dboEqual);
      dupub.setSelectData(dataList,'recordDate',startDate,dboGreaterOrEqual);
     dupub.setSelectData(dataList,'recordDate',endDate,dboLessOrEqual);
     duPub.getSelectData(duPub.tbl_st_repertoryDetail,dataList,'st_repertoryDetail',dboAnd);
end;

procedure TfST_StorageStatementDetail.Button1Click(Sender: TObject);
var
startDate : String;
endDate : String;
begin
    startDate := FormatDateTime('yyyy/mm/dd',StartOfTheMonth(DateTimePicker1.Date));
    endDate := FormatDateTime('yyyy/mm/dd',EndOfTheMonth(DateTimePicker1.Date));
//    showmessage(startDate  + '  ' + endDate);
    showDetail(startDate,endDate);
end;

procedure TfST_StorageStatementDetail.FormCreate(Sender: TObject);
begin
        Edit1.Text := duPub.showProduct(cxDBTextEdit1.Text);
        duPub.tbl_st_location.Close;
        duPub.tbl_st_location.Open;
        duPub.tbl_st_company.Close;
        duPub.tbl_st_company.Open;
        duPub.tbl_p_user.Close;
        duPub.tbl_p_user.Open;
end;

end.
