unit fPU_OrderInDetailP;

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
  cxContainer, Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,uDAWhere,
  cxGridCustomView, cxGrid;

type
  TfPU_OrderInDetail = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1inCode: TcxGridDBColumn;
    cxGrid1DBTableView1partnersId: TcxGridDBColumn;
    cxGrid1DBTableView1productId: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1locationId: TcxGridDBColumn;
    cxGrid1DBTableView1companyId: TcxGridDBColumn;
    Edit3: TEdit;
    cxGrid1DBTableView1state: TcxGridDBColumn;
    cxGrid1DBTableView1oddDtId: TcxGridDBColumn;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
  end;

var
  fPU_OrderInDetail: TfPU_OrderInDetail;

implementation

{$R *.dfm}
uses
duPubP,fPU_OrderInP
;

procedure TfPU_OrderInDetail.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'inCode',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(duPub.tbl_st_instorageDt,dataList,'st_instorageDt',dboAnd);
end;

procedure TfPU_OrderInDetail.Button1Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPU_OrderInDetail.Button2Click(Sender: TObject);
var
result : String;
begin
      with duPub.ADOQuery1 do
           begin
                close;
                sql.Clear;
                parameters.Clear;
                sql.Add('exec upInstorage :@inCode,:@upType,:@result output');
                 parameters.Items[0].Value := cxDBTextEdit1.Text;
                parameters.Items[1].Value := 1;
                execsql;
                result := parameters.Items[2].Value;
           end;

           if result = 'success' then
           begin
//               fPU_OrderIn.tbl_st_instorage.ApplyUpdates(true,true);
//                duPub.getSelectData(fPU_OrderIn.tbl_st_instorage,TStringList.Create,'st_instorage',dboAnd);
               self.Close;
           end;
end;

procedure TfPU_OrderInDetail.Button3Click(Sender: TObject);
begin
      duPub.tbl_st_instorageDt.DisableControls;
      cxGrid1DBTableView1.DataController.UpdateData;
      duPub.tbl_st_instorageDt.ApplyUpdates(false,true);
      duPub.tbl_st_instorageDt.EnableControls;
end;

procedure TfPU_OrderInDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    duPub.tbl_st_instoragedt.Close;
end;

procedure TfPU_OrderInDetail.FormCreate(Sender: TObject);
begin

    Edit1.Text := duPub.showLocation(cxDBTextEdit3.Text);
    Edit2.Text := duPub.showCompany(cxDBTextEdit4.Text);
    Edit3.Text := duPub.showUser(cxDBTextEdit5.Text);
    duPub.tbl_p_partners.Close;
    duPub.tbl_p_partners.Open;
    duPub.tbl_st_product.Close;
    duPub.tbl_st_product.Open;
    duPub.tbl_pu_orderDt.Close;
    duPub.tbl_pu_orderDt.Open;
     initData();

     if inType = 0 then
      begin
         Button2.Visible := false;
         Button3.Visible := false;
      end
      else  if inType = 1 then
      begin
          Button2.Visible := true;
          Button3.Visible := true;
      end;
end;

end.
