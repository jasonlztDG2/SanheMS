program sanheServer;

{#ROGEN:sanheServer.RODL} // RemObjects SDK: Careful, do not remove!

uses
  uROComInit,
  uROComboService,
  Forms,
  fServerForm in 'fServerForm.pas' {ServerForm},
  LoginService_Impl in 'LoginService_Impl.pas' {LoginService: TSimpleLoginService},
  DataService_Impl in 'DataService_Impl.pas' {DataService: TDARemoteService},
  fServerDataModule in 'fServerDataModule.pas' {ServerDataModule: TDataModule},
  sanhe_Intf in 'sanhe_Intf.pas',
  sanhe_Invk in 'sanhe_Invk.pas',
  AndroidService_Impl in 'AndroidService_Impl.pas' {AndroidService: TRORemoteDataModule};

{$R *.res}
{$R RODLFile.res}

begin
  if ROStartService('sanheServer', 'sanheServer') then begin
    ROService.CreateForm(TServerDataModule, ServerDataModule);
    ROService.Run;
    Exit;
  end;

  Application.Initialize;
  Application.CreateForm(TServerDataModule, ServerDataModule);
  Application.CreateForm(TServerForm, ServerForm);
  application.Run;
end.
