unit fPU_OrderInP;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, cxContainer, dxCore, cxDateUtils, cxTextEdit, uDAWhere,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBLookupComboBox, uRODynamicRequest,
  uDADelta, uROComponent, uDAScriptingProvider, uDAMemDataTable;

type
  TfPU_OrderIn = class(Tfbase1)
    Button1: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label6: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label7: TLabel;
    ComboBox4: TComboBox;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1inCode: TcxGridDBColumn;
    cxGrid1DBTableView1inType: TcxGridDBColumn;
    cxGrid1DBTableView1inDate: TcxGridDBColumn;
    cxGrid1DBTableView1consignee: TcxGridDBColumn;
    cxGrid1DBTableView1operatorDate: TcxGridDBColumn;
    cxGrid1DBTableView1operator: TcxGridDBColumn;
    cxGrid1DBTableView1inState: TcxGridDBColumn;
    cxGrid1DBTableView1department: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    tbl_st_instorage: TDAMemDataTable;
    procedure FormCreate(Sender: TObject);
    procedure tb_AppendClick(Sender: TObject);
    procedure tb_BrowseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tb_UnfilterClick(Sender: TObject);
    procedure tbRefreshClick(Sender: TObject);
    procedure tb_DeleteClick(Sender: TObject);
    procedure Tb_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure reData();
  end;

var
  fPU_OrderIn: TfPU_OrderIn;
  inType : Integer;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderInAddP,fPU_OrderInDetailP
;

procedure TfPU_OrderIn.reData();
var
selectList : TStringList;
begin
     selectList := TStringList.Create;
    dupub.setSelectData(selectList,'inType','采购入库',dboEqual);
    duPub.getSelectData(self.tbl_st_instorage,selectList,'st_instorage',dboAnd);
end;

procedure TfPU_OrderIn.Button1Click(Sender: TObject);
var
orderNum : String;
locationIndex : Integer;
companyIndex : Integer;
locationId : Integer;
companyId : Integer;


userIndex : Integer;
userId : Integer;
beginDate : String;
endDate : String;
selectList : TStringList;
begin
  inherited;
     orderNum := Edit1.Text;
     
     userIndex := ComboBox4.ItemIndex;
     beginDate := datetimetostr(cxDateEdit1.Date);
     endDate := datetimetostr(cxDateEdit2.Date);
     selectList := TStringList.Create;

     if orderNum <> '' then
        dupub.setSelectData(selectList,'inCode','%'+orderNum+'%',dboLike);

     
     if userIndex <> -1 then
     begin
         userId := Integer(ComboBox4.Items.Objects[userIndex]);
         dupub.setSelectData(selectList,'consignee',intToStr(userId),dboEqual);
     end;

     if beginDate = '0000/0/0' then
        beginDate := '2000/01/01';
     if endDate = '0000/0/0' then
        endDate := DateToStr(now);



     dupub.setSelectData(selectList,'inDate',beginDate,dboGreaterOrEqual);
     dupub.setSelectData(selectList,'inDate',endDate,dboLessOrEqual);
     dupub.setSelectData(selectList,'inType','采购入库',dboEqual);
     duPub.getSelectData(self.tbl_st_instorage,selectList,'st_instorage',dboAnd);
end;

procedure TfPU_OrderIn.FormCreate(Sender: TObject);

begin
  inherited;

    duPub.getUser(ComboBox4);
    reData();
end;

procedure TfPU_OrderIn.tbRefreshClick(Sender: TObject);

begin
  inherited;
    reData();
end;

procedure TfPU_OrderIn.tb_AppendClick(Sender: TObject);
begin
  inherited;
//    fPU_OrderInAdd := TfPU_OrderInAdd.Create(self);
//    fPU_OrderInAdd.ShowModal;
end;

procedure TfPU_OrderIn.tb_BrowseClick(Sender: TObject);
begin
  inherited;
  inType := 0;
    fPU_OrderInDetail := TfPU_OrderInDetail.Create(self);
    fPU_OrderInDetail.ShowModal;
end;

procedure TfPU_OrderIn.tb_DeleteClick(Sender: TObject);
var
Num : String;
result : String;
row : Integer;
begin
  inherited;
     row := cxGrid1DBTableView1.Controller.FocusedRowIndex;
      Num := cxGrid1DBTableView1.DataController.Values[row,1];
      if MessageDlg('确认删除该入库单?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
           with duPub.ADOQuery1 do
           begin
                close;
                sql.Clear;
                parameters.Clear;
                sql.Add('exec upInstorage :@inCode,:@upType,:@result output');
                 parameters.Items[0].Value := Num;
                parameters.Items[1].Value := 0;
                execsql;
                result := parameters.Items[2].Value;
           end;

           if result = 'success' then
           begin
               self.tbl_st_instorage.ApplyUpdates(true,true);
           end;
      end;

end;

procedure TfPU_OrderIn.Tb_EditClick(Sender: TObject);
begin
  inherited;
  inType := 1;
     fPU_OrderInDetail := TfPU_OrderInDetail.Create(self);
    fPU_OrderInDetail.ShowModal;
end;

procedure TfPU_OrderIn.tb_UnfilterClick(Sender: TObject);

begin
  inherited;
    Edit1.Text := '';

    ComboBox4.Text := '';
    ComboBox4.ItemIndex := -1;
    cxDateEdit1.Text := '';
    cxDateEdit2.Text := '';
    reData();
end;

end.
