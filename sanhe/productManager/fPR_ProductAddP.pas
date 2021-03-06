unit fPR_ProductAddP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfPR_ProductAdd = class(TForm)
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
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label9: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure initData();
  end;

var
  fPR_ProductAdd: TfPR_ProductAdd;

implementation

{$R *.dfm}
uses
duPubP
;

procedure TfPR_ProductAdd.initData();
begin
    with duPub.adoquery1 do
    begin
          close;
          sql.Clear;
          parameters.Clear;
          sql.Add('exec productGetNum :@orderType,:@userID,:@resultCode output');//这就是调用存储过程
          parameters.Items[0].Value := 'SHSP';
          parameters.Items[1].Value := '123';
          execsql;
          Edit1.Text := parameters.Items[2].Value;
     end;
end;

procedure TfPR_ProductAdd.Button1Click(Sender: TObject);
var
  prCode:String;
  prName:String;
  index:Integer;
  prKind:Integer;
  prType:String;
  prUnitPrice:String;
  prStyle:String;
  prSpec:String;
  prUnit:String;
  prColor:String;
begin

  prCode := Edit1.Text;
  prName := Edit2.Text;
  index := ComboBox1.ItemIndex;
  prType := ComboBox2.Text;
  prUnitPrice := Edit3.Text;
  prStyle := Edit4.Text;
  prSpec := Edit5.Text;
  prUnit := Edit6.Text;
  prColor := Edit7.Text;

  if prCode = '' then
  begin
    showmessage('商品编号不能为空');
    exit;
  end;
  if prName = '' then
  begin
    showmessage('商品名称不能为空');
    exit;
  end;
  if index = -1 then
  begin
     showmessage('商品类型不能为空');
    exit;
  end;
  if prType = '' then
  begin
     showmessage('商品分类不能为空');
    exit;
  end;
  if prUnitPrice = '' then
  begin
     showmessage('商品价格不能为空');
    exit;
  end;
  prKind := Integer(ComboBox1.Items.Objects[index]);

  duPub.tbl_st_product.Close;
  duPub.tbl_st_product.Open;
  duPub.tbl_st_product.Append;
  duPub.tbl_st_product.fieldbyname('productCode').AsString:=prCode;
  duPub.tbl_st_product.fieldbyname('productName').AsString:=prName;
  duPub.tbl_st_product.fieldbyname('price').AsString:=prUnitPrice;
  duPub.tbl_st_product.fieldbyname('kind').AsInteger:=prKind;
  duPub.tbl_st_product.fieldbyname('Style').AsString:=prStyle;
  duPub.tbl_st_product.fieldbyname('spec').AsString:=prSpec;
  duPub.tbl_st_product.fieldbyname('color').AsString:=prColor;
  duPub.tbl_st_product.fieldbyname('unit').AsString:=prUnit;
  duPub.tbl_st_product.fieldbyname('productType').AsString:=prType;
  duPub.tbl_st_product.fieldbyname('tempNum').AsString:='0';
  duPub.tbl_st_product.applyupdates(true,true);
  self.Close;

end;

procedure TfPR_ProductAdd.Button2Click(Sender: TObject);
begin
    self.Close;
end;

procedure TfPR_ProductAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    duPub.delNum(Edit1.text);
end;

procedure TfPR_ProductAdd.FormCreate(Sender: TObject);
begin
    initData();
    duPub.getKind(ComboBox1);
end;

end.
