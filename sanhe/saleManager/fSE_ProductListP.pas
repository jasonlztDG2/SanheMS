unit fSE_ProductListP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxDBLookupComboBox, uRODynamicRequest, uDAFields, uDADelta, uROComponent,
  uDAScriptingProvider, uDADataTable, uDAMemDataTable, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,uDAWhere,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfSE_ProductList = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Button2: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1structureNum: TcxGridDBColumn;
    cxGrid1DBTableView1structureName: TcxGridDBColumn;
    cxGrid1DBTableView1structureDes: TcxGridDBColumn;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1structureNum: TcxGridDBColumn;
    cxGridDBTableView1productId: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure initData();
  end;

var
  fSE_ProductList: TfSE_ProductList;
  structureNum : String;

implementation

{$R *.dfm}
uses
duPubP ,fSE_OrderAddP
;

 procedure TfSE_ProductList.initData();
 var
  listData : TStringList;
 begin
      listData := TStringList.Create;
      dupub.setSelectData(listData,'structureNum',structureNum,dboEqual);
      duPub.getSelectData(duPub.tbl_st_structureDt,listData,'st_structureDt',dboAnd);
 end;

procedure TfSE_ProductList.Button2Click(Sender: TObject);
var
  listData : TStringList;
begin


    duPub.tbl_pu_seOrderPrBe.Close;
    duPub.tbl_pu_seOrderPrBe.Open;
    if duPub.tbl_st_structureDt.RecordCount > 0 then
    begin

        while  not  duPub.tbl_st_structureDt.EOF do
        begin
          duPub.tbl_pu_seOrderPrBe.Append;
          duPub.tbl_pu_seOrderPrBe.fieldbyname('seOrderNum').AsString:=fSE_OrderAdd.Edit1.Text;
          duPub.tbl_pu_seOrderPrBe.fieldbyname('productId').AsString := duPub.tbl_st_structureDt.FieldByName('productId').AsString;
          duPub.tbl_pu_seOrderPrBe.fieldbyname('qty').AsString := duPub.tbl_st_structureDt.FieldByName('qty').AsString;
          duPub.tbl_st_structureDt.next;
        end;
        duPub.tbl_pu_seOrderPrBe.ApplyUpdates(true,true);
    end;
    fSE_OrderAdd.Edit2.Text := structureNum;
    listData := TStringList.Create;
    dupub.setSelectData(listData,'seOrderNum',fSE_OrderAdd.Edit1.Text,dboEqual);
    duPub.getSelectData(duPub.tbl_pu_seOrderPr,listData,'pu_seOrderPr',dboAnd);
    self.Close;
end;

procedure TfSE_ProductList.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  Row : Integer;
  i : Integer;
begin
  inherited;
    Row := cxGrid1DBTableView1.DataController.FocusedRecordIndex;

    for I := 0 to duPub.tbl_st_structure.RecordCount - 1 do
    begin
        if i = row then
        begin
              cxGrid1DBTableView1.ViewData.Records[Row].Values[1] := true ;
              structureNum := cxGrid1DBTableView1.DataController.Values[i,2];
              initData();
        end else
        begin
             cxGrid1DBTableView1.ViewData.Records[i].Values[1] := false ;
        end;
    end;
end;



procedure TfSE_ProductList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if duPub.tbl_st_structureDt.Active then
      begin
          duPub.tbl_st_structureDt.Close;
      end;


end;

procedure TfSE_ProductList.FormCreate(Sender: TObject);

begin
     duPub.tbl_st_structure.Close;
     duPub.tbl_st_structure.Open;
end;

end.
