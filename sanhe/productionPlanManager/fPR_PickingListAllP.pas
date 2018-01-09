unit fPR_PickingListAllP;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView, uDAWhere,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox;

type
  TfPR_PickingListAll = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1seOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1productName: TcxGridDBColumn;
    cxGrid1DBTableView1kind: TcxGridDBColumn;
    cxGrid1DBTableView1style: TcxGridDBColumn;
    cxGrid1DBTableView1spec: TcxGridDBColumn;
    cxGrid1DBTableView1color: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1productType: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
    procedure getListId(id : String);
    procedure delListId(id : String);
    procedure getPickingList();
  end;

var
  fPR_PickingListAll: TfPR_PickingListAll;
  ListID: TStringList;
implementation

{$R *.dfm}
uses
      fPR_PickingListAddP,
duPubP;

procedure TfPR_PickingListAll.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if duPub.tbl_pu_seOrderPr.Active then
      duPub.tbl_pu_seOrderPr.Close;
end;

procedure TfPR_PickingListAll.FormCreate(Sender: TObject);
begin
    initData();
    ListID := TStringList.Create;
end;

procedure TfPR_PickingListAll.initData();
var
list : TStringList;
begin
    list := TStringList.Create;
     dupub.setSelectData(list,'status','未领料',dboEqual);
     duPub.getSelectData(duPub.tbl_pu_seOrderPr,list,'pu_seOrderPr',dboAnd);
end;

procedure TfPR_PickingListAll.getListId(id : String);

begin
    ListID.Sorted := True;  //需要先指定排序
    ListID.Duplicates := dupIgnore;  //如有重复值则放弃
    ListID.Add(id+'='+id);
end;

procedure TfPR_PickingListAll.delListId(id : String);
var
i : Integer;
key : String;
begin
    for I := 0 to ListID.Count - 1 do
  begin
       key := ListID.Names[i];
       if id = ListID.Values[key] then
       begin
            ListID.Delete(i);
            exit;
       end;
  end;
end;

procedure TfPR_PickingListAll.getPickingList();
var
i : Integer;
begin
  if ListID.Count > 0 then
   begin
       for I := 0 to ListID.Count - 1 do
        begin
            pickingList.Sorted := True;  //需要先指定排序
            pickingList.Duplicates := dupIgnore;  //如有重复值则放弃
            pickingList.add(ListID[i]);
         end;
  end;

end;

procedure TfPR_PickingListAll.Button1Click(Sender: TObject);
begin

    getPickingList();
    duPub.getDobInData(fPR_PickingListAdd.tbl_pu_seOrderPr,pickingList,'pu_seOrderPr','id');

        self.Close;
end;

procedure TfPR_PickingListAll.Button2Click(Sender: TObject);
begin
     self.Close;
end;

procedure TfPR_PickingListAll.Button3Click(Sender: TObject);
var
  prName:String;
  puDataList : TStringList;
begin
     prName := Edit1.Text;
     puDataList := TStringList.Create;
     if prName <> '' then
  begin
     dupub.setSelectData(puDataList,'productName','%'+prName+'%',dboLike);
  end;

   dupub.setSelectData(puDataList,'status','未领料',dboEqual);
     duPub.getSelectData(duPub.tbl_pu_seOrderPr,puDataList,'pu_seOrderPr',dboAnd);
end;

procedure TfPR_PickingListAll.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  Row : Integer;
begin
     Row := cxGrid1DBTableView1.DataController.FocusedRecordIndex;
    if cxGrid1DBTableView1.ViewData.Records[Row].Values[1] = true then
    begin
       cxGrid1DBTableView1.ViewData.Records[Row].Values[1] := false ;
       delListId(duPub.tbl_pu_seOrderPr.FieldByName('id').AsString);
    end
    else
    begin
       cxGrid1DBTableView1.ViewData.Records[Row].Values[1] := true;
       getListId(duPub.tbl_pu_seOrderPr.FieldByName('id').AsString);
    end;

end;



end.
