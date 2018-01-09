unit fPR_ProductStructureDetailP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBNavigator,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, uDAWhere,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, uRODynamicRequest, uDAFields, uDADelta,
  uROComponent, uDAScriptingProvider, uDADataTable, uDAMemDataTable;

type
  TfPR_ProductStructureDetail = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
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
    cxGrid1DBTableView1tempNum: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    ds_st_structureProduct: TDADataSource;
    tbl_st_structureProduct: TDAMemDataTable;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1structureNum: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tbl_st_structureProductAfterOpen(DataTable: TDADataTable);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
    procedure initList(id : String);
    procedure updateList(id : String);
  end;

var
  fPR_ProductStructureDetail: TfPR_ProductStructureDetail;
  openType : integer;
  resultDataList : TStringList;
  firstOpen : Integer;
implementation

{$R *.dfm}
uses
duPubP,fPR_ProductStructureListP;

procedure TfPR_ProductStructureDetail.initList(id : String);
begin
    resultDataList.Sorted := True;  //需要先指定排序
    resultDataList.Duplicates := dupIgnore;  //如有重复值则放弃
    resultDataList.Add(id+'='+id);
end;

procedure TfPR_ProductStructureDetail.updateList(id : String);
var
i : Integer;
key : String;
begin
    for I := 0 to resultDataList.Count - 1 do
  begin
       key := resultDataList.Names[i];
       if id = resultDataList.Values[key] then
       begin
            resultDataList.Delete(i);
            exit;
       end;
  end;

end;

procedure TfPR_ProductStructureDetail.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'structureNum',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(self.tbl_st_structureProduct,dataList,'st_structureProduct',dboAnd);

end;

procedure TfPR_ProductStructureDetail.tbl_st_structureProductAfterOpen(
  DataTable: TDADataTable);

begin
    if firstOpen = 1 then
    begin
         if DataTable.Active then
          begin
               DataTable.First;
               while  not  DataTable.EOF do
              begin
                initList(DataTable.FieldByName('productId').AsString);
                DataTable.next;
              end;
              firstOpen := 0;
          end;

    end;

end;

procedure TfPR_ProductStructureDetail.cxDBNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
     case  AButtonindex of
         NBDI_APPEND:
         begin

              fPR_ProductStructureList:=TfPR_ProductStructureList.Create(self);
              fPR_ProductStructureList.ShowModal;

         end;
         NBDI_DELETE:
         begin
               aDone:=true;
               if MessageDlg('确定删除该商品采购?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   updateList(dupub.DAMemDataTable1.FieldByName('productId').AsString);

                   duPub.getDobInData(self.tbl_st_structureProduct,resultDataList,'st_structureProduct','productId');
               end;

         end;
     end;
end;

procedure TfPR_ProductStructureDetail.FormCreate(Sender: TObject);
begin
     Edit2.Text := cxDBTextEdit2.Text;
     Edit3.Text := cxDBTextEdit3.Text;
     initData();
     resultDataList := TStringList.Create;
      firstOpen := 0;
      duPub.tbl_p_user.Close;
     duPub.tbl_p_user.Open;
     if openType = 0 then
     begin
          Edit2.Enabled := false;
          Edit3.Enabled := false;
          cxDBNavigator1.Visible := false;
     end else
     begin
         firstOpen := 1;
     end;
end;

end.
