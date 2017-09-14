unit fClientForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  uROPoweredByRemObjectsButton, uDAPoweredByDataAbstractButton;

type
  TClientForm = class(TForm)
    DAPoweredByDataAbstractButton1: TDAPoweredByDataAbstractButton;
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses
  duPubP;

{$R *.dfm}

end.
