unit fPR_PickingListAddP;

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
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, uRODynamicRequest, uDAFields, uDADelta,
  uDADataTable, uROComponent, uDAScriptingProvider, uDAMemDataTable;

type
  TfPR_PickingListAdd = class(TForm)
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
    cxGrid1DBTableView1tempNum: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxDateEdit2: TcxDateEdit;
    tbl_pu_seOrderPr: TDAMemDataTable;
    ds_pu_seOrderPr: TDADataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateList(id : String);
  end;

var
  fPR_PickingListAdd: TfPR_PickingListAdd;
  pickingList : TStringList;

implementation

{$R *.dfm}
uses
fPR_PickingListAllP,
duPubP;

procedure TfPR_PickingListAdd.updateList(id : String);
var
i : Integer;
key : String;
begin
    for I := 0 to pickingList.Count - 1 do
  begin
       key := pickingList.Names[i];
       if id = pickingList.Values[key] then
       begin
            pickingList.Delete(i);
            exit;
       end;
  end;

end;


procedure TfPR_PickingListAdd.Button1Click(Sender: TObject);
var
materialNum : String;
materialDate : DateTime;
orderNumStr : String;
productIdStr : String;
needQtyStr : String;
seOrderPrIdStr : String;
result : String;
  I: Integer;
begin
    materialNum := Edit1.Text;
    materialDate := cxDateEdit2.Date;

     if materialNum = '' then
    begin
        showmessage('请重新生成编号');
        exit;
    end;
    if datetimetostr(materialDate) = '0000/0/0' then
     begin
         showmessage('请输入领料日期');
          exit;
     end;

     if self.tbl_pu_seOrderPr.RecordCount > 0 then
     begin
          self.tbl_pu_seOrderPr.First;

          for I := 0 to self.tbl_pu_seOrderPr.RecordCount - 1 do
          begin
              orderNumStr := orderNumStr + self.tbl_pu_seOrderPr.FieldByName('seOrderNum').AsString.Trim + '|';
             productIdStr := productIdStr + self.tbl_pu_seOrderPr.FieldByName('productId').AsString.Trim + '|';
             needQtyStr := needQtyStr + self.tbl_pu_seOrderPr.FieldByName('qty').AsString.Trim + '|';
             seOrderPrIdStr := seOrderPrIdStr + self.tbl_pu_seOrderPr.FieldByName('id').AsString.Trim + '|';
             self.tbl_pu_seOrderPr.Next;
          end;



     end else
     begin
        showmessage('请选择所要领取的材料');
       exit;
     end;


    //使用存储过程添加销售订单
    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec addMaterial :@materialNum,:@materialDate,'
          +':@orderNumStr,:@productIdStr,:@needQtyStr,:@seOrderPrIdStr,'
          +':@successResult output');//这就是调用存储过程
          parameters.Items[0].Value := materialNum;
          parameters.Items[1].Value := materialDate;
          parameters.Items[2].Value := orderNumStr;
          parameters.Items[3].Value := productIdStr;
          parameters.Items[4].Value := needQtyStr;
          parameters.Items[5].Value := seOrderPrIdStr;
          execsql;
          result := parameters.Items[6].Value;
     end;

     if result = 'success' then
      begin
          duPub.tbl_pu_material.ApplyUpdates(true,true);

         self.Close;
      end;
end;

procedure TfPR_PickingListAdd.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case  AButtonindex of
         NBDI_APPEND:
         begin
                  fPR_PickingListAll:=TfPR_PickingListAll.Create(self);
                  fPR_PickingListAll.ShowModal;
         end;
         NBDI_DELETE:
         begin
               aDone:=true;
               if MessageDlg('确定移除该材料?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                   updateList(self.tbl_pu_seOrderPr.FieldByName('id').AsString);
                   duPub.getDobInData(self.tbl_pu_seOrderPr,pickingList,'pu_seOrderPr','id');

               end;

         end;
     end;
end;

procedure TfPR_PickingListAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     duPub.delNum(Edit1.Text);
end;

procedure TfPR_PickingListAdd.FormCreate(Sender: TObject);
begin
    pickingList := TStringList.Create;
    duPub.tbl_p_user.Close;
    duPub.tbl_p_user.Open;
   duPub.showInsertNum('materialGetNum','SHLL',Edit1);
end;

end.
