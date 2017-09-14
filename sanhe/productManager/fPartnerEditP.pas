unit fPartnerEditP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfPartnerEdit = class(TForm)
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
    Label7: TLabel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPartnerEdit: TfPartnerEdit;
  checkType : String;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfPartnerEdit.Button1Click(Sender: TObject);
var
company : String;
userName : String;
address : String;
phone : String;
emailAdd : String;
memo : String;
begin
    company := cxDBTextEdit2.Text;
    userName := cxDBTextEdit3.Text;
    phone := cxDBTextEdit4.Text;
    address := cxDBTextEdit6.Text;
    emailAdd := cxDBTextEdit7.Text;
    memo := cxDBTextEdit8.Text;

    if company='' then
    begin
        showmessage('公司名称不能为空');
        exit;
    end;
    if userName='' then
    begin
        showmessage('联系人不能为空');
        exit;
    end;
    if phone='' then
    begin
        showmessage('联系电话不能为空');
        exit;
    end;

    if duPub.tbl_p_partners.Active then
    begin
         duPub.tbl_p_partners.Edit;
         duPub.tbl_p_partners.fieldbyname('company').AsString:=company;
          duPub.tbl_p_partners.fieldbyname('name').AsString:=userName;
          duPub.tbl_p_partners.fieldbyname('address').AsString:=address;
          duPub.tbl_p_partners.fieldbyname('phone').AsInteger:=strToInt(phone);
          duPub.tbl_p_partners.fieldbyname('emailAdd').AsString:=emailAdd;
          duPub.tbl_p_partners.fieldbyname('partnerType').AsString:=checkType;
          duPub.tbl_p_partners.fieldbyname('memo').AsString:=memo;
         duPub.tbl_p_partners.Post;
         duPub.tbl_p_partners.ApplyUpdates(true);
    end;
    self.Close;
end;

procedure TfPartnerEdit.Button2Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPartnerEdit.FormCreate(Sender: TObject);
begin
    checkType := cxDBTextEdit5.Text;
    if checkType = '供应商' then
    begin
      RadioButton1.Checked := true;
      RadioButton2.Checked := false;
    end
    else if checkType = '客户' then
    begin
      RadioButton2.Checked := true;
      RadioButton1.Checked := false;
    end;

end;

procedure TfPartnerEdit.RadioButton1Click(Sender: TObject);
begin
    RadioButton1.Checked := true;
     RadioButton2.Checked := false;
     checkType := '供应商';
end;

procedure TfPartnerEdit.RadioButton2Click(Sender: TObject);
begin
     RadioButton1.Checked := false;
     RadioButton2.Checked := true;
     checkType := '客户';
end;

end.
