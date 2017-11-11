unit fPU_OrderEditP;

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
  cxDBNavigator, Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,uDAWhere,
  cxGridCustomView, cxGrid, cxDBLookupComboBox;

type
  TfPU_OrderEdit = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecID: TcxGridDBColumn;
    cxGrid1DBTableView1puOrderNum: TcxGridDBColumn;
    cxGrid1DBTableView1productID: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1memo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel4: TPanel;
    Label7: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateOrder(upType : integer);
    procedure initData();
  end;

var
  fPU_OrderEdit: TfPU_OrderEdit;

implementation

{$R *.dfm}
uses
 duPubP
;

procedure TfPU_OrderEdit.initData();
var
dataList : TStringList;
begin
    dataList := TStringList.Create;
   dupub.setSelectData(dataList,'puOrderNum',cxDBTextEdit1.Text,dboEqual);
   duPub.getSelectData(duPub.tbl_pu_orderDt,dataList,'pu_orderDt',dboAnd);

end;

procedure TfPU_OrderEdit.updateOrder(upType : integer);
var
result : String;
begin
      with duPub.adoquery1 do
          begin
                close;
                sql.Clear;
                parameters.Clear;
                sql.Add('exec upPuOrder :@puOrderNum,:@upType,:@result output');
                 parameters.Items[0].Value := cxDBTextEdit1.Text;
                parameters.Items[1].Value := upType;
                execsql;
                result := parameters.Items[2].Value;
           end;

           if result = 'success' then
           begin
               duPub.tbl_pu_order.ApplyUpdates(true,true);
           end;
           self.Close;
end;


//��˸��¶���״̬
procedure TfPU_OrderEdit.Button1Click(Sender: TObject);
begin
    if cxDBTextEdit6.Text = '�����' then
    begin
        updateOrder(2);
    end;


end;

procedure TfPU_OrderEdit.Button2Click(Sender: TObject);

begin
    if cxDBTextEdit6.Text = 'δ���' then
    begin
        updateOrder(1);
    end;

end;

procedure TfPU_OrderEdit.Button3Click(Sender: TObject);

begin
     //self.Close;

end;

procedure TfPU_OrderEdit.Button4Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPU_OrderEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dupub.tbl_pu_orderdt.Close;
end;

procedure TfPU_OrderEdit.FormCreate(Sender: TObject);
begin
    Edit1.Text := duPub.showPartner(cxDBTextEdit3.Text);
     Edit2.Text := duPub.showUser(cxDBTextEdit4.Text);
     initData();
end;



end.
