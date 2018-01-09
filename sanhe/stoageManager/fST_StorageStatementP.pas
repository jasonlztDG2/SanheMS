unit fST_StorageStatementP;

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
  Vcl.ComCtrls, Vcl.ToolWin, Data.Win.ADODB, cxDBLookupComboBox, cxContainer,DateUtils,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfST_StorageStatement = class(Tfbase1)
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    cxGrid1DBTableView1recordDate: TcxGridDBColumn;
    cxGrid1DBTableView1recordUser: TcxGridDBColumn;
    cxGrid1DBTableView1recordType: TcxGridDBColumn;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Edit1: TEdit;
    procedure tb_BrowseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fST_StorageStatement: TfST_StorageStatement;

implementation

{$R *.dfm}
uses
duPubP,fST_StorageStatementDetailP;

procedure TfST_StorageStatement.Button1Click(Sender: TObject);
var
dataList : TStringList;
startDate : String;
endDate : String;
showDate : String;
productIndex : Integer;
productId : Integer;
count : Double;
begin
  inherited;
      dataList := TStringList.Create;
      showDate := datetimetostr(DateTimePicker1.Date);
      productIndex := ComboBox2.ItemIndex;
      if showDate <> '' then
      begin
          startDate := FormatDateTime('yyyy/mm/dd',StartOfTheMonth(DateTimePicker1.Date));
          endDate := FormatDateTime('yyyy/mm/dd',EndOfTheMonth(DateTimePicker1.Date));
           dupub.setSelectData(dataList,'recordDate',startDate,dboGreaterOrEqual);
          dupub.setSelectData(dataList,'recordDate',endDate,dboLessOrEqual);
      end;
      if productIndex <> -1 then
      begin
        productId := Integer(ComboBox2.Items.Objects[productIndex]);
        dupub.setSelectData(dataList,'productId',intToStr(productId),dboEqual);
      end;
      duPub.getSelectData(duPub.tbl_st_repertoryDetail,dataList,'st_repertoryDetail',dboAnd);
      count := 0;
      if duPub.tbl_st_repertoryDetail.Active then
      begin
          duPub.tbl_st_repertoryDetail.First;
           while not duPub.tbl_st_repertoryDetail.EOF do
           begin
                count := count + duPub.tbl_st_repertoryDetail.FieldByName('qty').AsFloat;
                duPub.tbl_st_repertoryDetail.Next;
           end;
      end;
     Edit1.Text := floatToStr(count);
end;

procedure TfST_StorageStatement.FormCreate(Sender: TObject);
begin
  inherited;
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.Open;
    duPub.tbl_st_location.Close;
    duPub.tbl_st_location.Open;
    duPub.tbl_st_company.Close;
    duPub.tbl_st_company.Open;
    duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
    duPub.getProduct(ComboBox2,'');
end;

procedure TfST_StorageStatement.tb_BrowseClick(Sender: TObject);
begin
  inherited;
     fST_StorageStatementDetail := TfST_StorageStatementDetail.Create(self);
     fST_StorageStatementDetail.ShowModal;
end;

end.
