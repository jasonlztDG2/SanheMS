unit fLogOnForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TLoginForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edUsername: TEdit;
    edPassword: TEdit;
    bOk: TButton;
    bCancel: TButton;
    cbStorePassword: TCheckBox;
    procedure edPasswordChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ValidateInput;
    { Private declarations }
  public
    { Public declarations }
  end;

function Login(var aUserName, aPassword: string; var aStorePassword: Boolean): Boolean;

implementation

{$R *.dfm}

procedure TLoginForm.edPasswordChange(Sender: TObject);
begin
  ValidateInput;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  ValidateInput;
end;

procedure TLoginForm.ValidateInput;
begin
  bOk.Enabled := (edUsername.Text <> '') and (edPassword.Text <> '');
end;

function Login(var aUserName, aPassword: string; var aStorePassword: Boolean): Boolean;
var
  llogin: TLoginForm;
begin
  llogin:= TLoginForm.Create(Application);
  With llogin do try
    edUsername.Text:= aUserName;
    edPassword.Text := aPassword;
    cbStorePassword.Checked := aStorePassword;

    Result := ShowModal = mrOk;
    if Result then begin
      aUserName := edUsername.Text;
      aPassword := edPassword.Text;
      aStorePassword := cbStorePassword.Checked;
    end;
  finally
    Free;
  end;
end;

end.
