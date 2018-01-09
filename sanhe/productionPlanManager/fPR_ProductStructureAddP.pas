unit fPR_ProductStructureAddP;

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
  cxDBNavigator, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfPR_ProductStructureAdd = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    Edit2: TEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateList(id : String);

  end;

var
  fPR_ProductStructureAdd: TfPR_ProductStructureAdd;
  resultDataList : TStringList;

implementation

{$R *.dfm}
uses
duPubP,fPR_ProductStructureListP;

procedure TfPR_ProductStructureAdd.updateList(id : String);
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

procedure TfPR_ProductStructureAdd.Button1Click(Sender: TObject);
var
structureNum : String;
structureName : String;
structureDes : String;
productIdStr : String;
qtyStr : String;
successResult : String;
I : Integer;
begin
      structureNum := Edit1.Text;
      structureName := Edit2.Text;
      structureDes := Edit3.Text;

      for I := 0 to resultDataList.Count - 1 do
      begin
          productIdStr := productIdStr + resultDataList.Names[i] + '|';
          qtyStr := qtyStr + cxGrid1DBTableView1.DataController.Values[i,4] + '|';
      end;

      with duPub.adoquery1 do
      begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec addStructure :@structureNum,:@structureName,:@structureDes,'
            + ':@productIdStr,:@qtyStr,:@successResult output'
          );
          parameters.Items[0].Value := structureNum;
          parameters.Items[1].Value := structureName;
          parameters.Items[2].Value := structureDes;
          parameters.Items[3].Value := productIdStr;
          parameters.Items[4].Value := qtyStr;
          execsql;
          successResult := parameters.Items[5].Value;
      end;

      if successResult = 'success' then
      begin
          self.Close;
          duPub.tbl_st_structure.ApplyUpdates(true,true);
      end
      else
      begin
           showmessage('操作失败');
      end;

end;

procedure TfPR_ProductStructureAdd.Button2Click(Sender: TObject);
begin
     self.Close;
end;

procedure TfPR_ProductStructureAdd.cxDBNavigator1ButtonsButtonClick(
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

                   duPub.getDobInData(dupub.DAMemDataTable1,resultDataList,'st_product','productId');
               end;

         end;
     end;
end;

procedure TfPR_ProductStructureAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    duPub.DAMemDataTable1.Close;
    duPub.delNum(Edit1.Text);
end;

procedure TfPR_ProductStructureAdd.FormCreate(Sender: TObject);
begin
    resultDataList := TStringList.Create;
    duPub.tbl_p_user.Close;
     duPub.tbl_p_user.Open;
     duPub.showInsertNum('structureGetNum','SHQD',Edit1);
end;

end.
