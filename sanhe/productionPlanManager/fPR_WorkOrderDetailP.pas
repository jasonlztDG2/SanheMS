unit fPR_WorkOrderDetailP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxMemo, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBNavigator, uDAWhere,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ExtDlgs,
  uRODynamicRequest, uDAFields, uDADelta, uDADataTable, uROComponent,
  uDAScriptingProvider, uDAMemDataTable;

type
  TfPR_WorkOrderDetail = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxDateEdit2: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    Panel16: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label34: TLabel;
    Edit4: TEdit;
    Edit17: TEdit;
    Memo1: TMemo;
    Panel17: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1partOne: TcxGridDBColumn;
    cxGrid1DBTableView1partTwo: TcxGridDBColumn;
    cxGrid1DBTableView1partThree: TcxGridDBColumn;
    cxGrid1DBTableView1partFour: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet2: TTabSheet;
    Panel10: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image1: TImage;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Panel12: TPanel;
    Image4: TImage;
    Image2: TImage;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel7: TPanel;
    Panel13: TPanel;
    Memo3: TMemo;
    Panel15: TPanel;
    Image5: TImage;
    Memo4: TMemo;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Panel14: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1name: TcxGridDBColumn;
    cxGridDBTableView1material: TcxGridDBColumn;
    cxGridDBTableView1isOwn: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel9: TPanel;
    Label9: TLabel;
    RichEdit1: TRichEdit;
    Button3: TButton;
    Button4: TButton;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Memo2: TMemo;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    TabSheet5: TTabSheet;
    tbl_pu_workMaterial: TDAMemDataTable;
    ds_pu_workMaterial: TDADataSource;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1RecID: TcxGridDBColumn;
    cxGrid3DBTableView1productName: TcxGridDBColumn;
    cxGrid3DBTableView1color: TcxGridDBColumn;
    cxGrid3DBTableView1price: TcxGridDBColumn;
    cxGrid3DBTableView1needQty: TcxGridDBColumn;
    cxGrid3DBTableView1isOwn: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Panel18: TPanel;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxGrid3DBTableView1receiveQty: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure loadData();
    procedure loadPic(part : String;title: String;body: String;pic : String);
  public
    { Public declarations }
  end;

var
  fPR_WorkOrderDetail: TfPR_WorkOrderDetail;

implementation

{$R *.dfm}
uses
duPubP;

procedure TfPR_WorkOrderDetail.loadData();
var
dataList : TStringList;
price : String;
qty : String;
count : float;
isOwn : String;
begin
     dataList := TStringList.Create;
   dupub.setSelectData(dataList,'workNum',cxDBTextEdit1.Text,dboEqual);
//   duPub.getSelectData(duPub.tbl_pu_workDetailList,dataList,'pu_workDetailList',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_workDetailTitle,dataList,'pu_workDetailTitle',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_workDetailMaterial,dataList,'pu_workDetailMaterial',dboAnd);
   duPub.getSelectData(duPub.tbl_pu_workDetailPic,dataList,'pu_workDetailPic',dboAnd);
   duPub.getSelectData(self.tbl_pu_workMaterial,dataList,'pu_workMaterial',dboAnd);

//   Edit1.Text := cxDBTextEdit1.Text;
//   Edit2.Text := duPub.tbl_pu_workDetailList.FieldByName('partnerNum').AsString;
//   cxDateEdit2.Text := duPub.tbl_pu_workDetailList.FieldByName('deliveryDate').AsString;
//   Edit4.Text := duPub.tbl_pu_workDetailList.FieldByName('titleName').AsString;
//   Edit17.Text := duPub.tbl_pu_workDetailList.FieldByName('titleCount').AsString;
   Memo1.Text := cxDBTextEdit7.Text;
   Memo2.Text := cxDBTextEdit8.Text;
   RichEdit1.Text := cxDBTextEdit9.Text;
//   ComboBox1.Text := duPub.tbl_pu_workDetailList.FieldByName('versionOrderNum').AsString;

   if duPub.tbl_pu_workDetailPic.RecordCount > 0 then
   begin
      while not duPub.tbl_pu_workDetailPic.Eof do
      begin

           loadPic(duPub.tbl_pu_workDetailPic.FieldByName('part').AsString,
           duPub.tbl_pu_workDetailPic.FieldByName('title').AsString,
           duPub.tbl_pu_workDetailPic.FieldByName('body').AsString,
           duPub.tbl_pu_workDetailPic.FieldByName('pic').AsString
           );
           duPub.tbl_pu_workDetailPic.Next;
      end;

   end;
   count := 0;
   if self.tbl_pu_workMaterial.RecordCount > 0 then
   begin
       while not self.tbl_pu_workMaterial.Eof do
       begin
             price := self.tbl_pu_workMaterial.FieldByName('price').AsString;
             qty := self.tbl_pu_workMaterial.FieldByName('needQty').AsString;
             isOwn := self.tbl_pu_workMaterial.FieldByName('isOwn').AsString;
             if isOwn = 'Y' then
             begin
                  count := count + strToFloat(price) * strToFloat(qty);
             end;
             self.tbl_pu_workMaterial.Next;
       end;

   end;
   Label10.Caption := '²ÄÁÏ³É±¾£º' + floatToStr(count);

end;

procedure TfPR_WorkOrderDetail.loadPic(part : String;title: String;body: String;pic : String);
begin
    if part = '1' then
    begin
        Edit5.Text := title;
        Edit6.Text := body;
        if pic <> '' then
          Image2.Picture.LoadFromFile(pic);
    end else if part = '2' then
    begin
         Edit7.Text := title;
        Edit8.Text := body;
        if pic <> '' then
        Image4.Picture.LoadFromFile(pic);
    end else if part = '3' then
    begin
        Edit9.Text := title;
        Edit10.Text := body;
        if pic <> '' then
        Image3.Picture.LoadFromFile(pic);
    end else if part = '4' then
    begin
         Edit11.Text := title;
        Edit12.Text := body;
        if pic <> '' then
        Image1.Picture.LoadFromFile(pic);
    end else if part = '5' then
    begin
        Memo3.Text := title;
        Memo4.Text := body;
        if pic <> '' then
        Image5.Picture.LoadFromFile(pic);
    end;

end;


procedure TfPR_WorkOrderDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//    duPub.tbl_pu_workDetailList.Close;
//    duPub.tbl_pu_workDetailList.Open;
end;

procedure TfPR_WorkOrderDetail.FormCreate(Sender: TObject);
begin
    loadData();
end;

end.
