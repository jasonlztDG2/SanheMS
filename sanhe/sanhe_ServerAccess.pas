unit sanhe_ServerAccess;

{$I RemObjects.inc}

interface

uses
  {$IFDEF DELPHIXE2UP}System.SysUtils{$ELSE}SysUtils{$ENDIF},
  {$IFDEF DELPHIXE2UP}System.Classes{$ELSE}Classes{$ENDIF},
  uROComponent,
  uROMessage,
  uROBaseConnection,
  uROTransportChannel,
  uROBinMessage,
  uROBaseHTTPClient,
  uROIndyHTTPChannel,
  sanhe_Intf,
  DataAbstract4_Intf;

type
  { Forward declarations }
  TServerAccess_sanhe = class;

  TServerAccess_sanhe = class(TDataModule)
  private
    fServerUrl: String;
    function get__ServerUrl: String;
    function get__LoginService: ILoginService;
    function get__LoginService_Async: ILoginService_Async;
    function get__LoginService_AsyncEx: ILoginService_AsyncEx;
    function get__DataService: IDataService;
    function get__DataService_Async: IDataService_Async;
    function get__DataService_AsyncEx: IDataService_AsyncEx;
  public
    property ServerUrl: String read get__ServerUrl;
    property LoginService: ILoginService read get__LoginService;
    property LoginService_Async: ILoginService_Async read get__LoginService_Async;
    property LoginService_AsyncEx: ILoginService_AsyncEx read get__LoginService_AsyncEx;
    property DataService: IDataService read get__DataService;
    property DataService_Async: IDataService_Async read get__DataService_Async;
    property DataService_AsyncEx: IDataService_AsyncEx read get__DataService_AsyncEx;
  published
    Message: TROBinMessage;
    Channel: TROIndyHTTPChannel;
    procedure DataModuleCreate(Sender: TObject);
    procedure ChannelLoginNeeded(Sender: TROTransportChannel; anException: Exception; var aRetry: Boolean);
  end;

function ServerAccess: TServerAccess_sanhe;
implementation

{$IFDEF DELPHIXE2}
  {%CLASSGROUP 'System.Classes.TPersistent'}
{$ENDIF}
{$R *.dfm}

const SERVER_URL = 'http://localhost:8099/bin';
var fServerAccess: TServerAccess_sanhe;

function ServerAccess: TServerAccess_sanhe;
begin
  if not assigned(fServerAccess) then begin
    fServerAccess := TServerAccess_sanhe.Create(nil);
  end;
  result := fServerAccess;
  exit;
end;

procedure TServerAccess_sanhe.DataModuleCreate(Sender: TObject);
begin
  Self.fServerUrl := SERVER_URL;
  Self.Channel.TargetUrl := Self.fServerUrl;
end;

function TServerAccess_sanhe.get__ServerUrl: String;
begin
  result := Self.fServerUrl;
  exit;
end;

function TServerAccess_sanhe.get__LoginService: ILoginService;
begin
  result := CoLoginService.Create(Self.Message, Self.Channel);
  exit;
end;

function TServerAccess_sanhe.get__LoginService_Async: ILoginService_Async;
begin
  result := CoLoginService_Async.Create(Self.Message, Self.Channel);
  exit;
end;

function TServerAccess_sanhe.get__LoginService_AsyncEx: ILoginService_AsyncEx;
begin
  result := CoLoginService_AsyncEx.Create(Self.Message, Self.Channel);
  exit;
end;

function TServerAccess_sanhe.get__DataService: IDataService;
begin
  result := CoDataService.Create(Self.Message, Self.Channel);
  exit;
end;

function TServerAccess_sanhe.get__DataService_Async: IDataService_Async;
begin
  result := CoDataService_Async.Create(Self.Message, Self.Channel);
  exit;
end;

function TServerAccess_sanhe.get__DataService_AsyncEx: IDataService_AsyncEx;
begin
  result := CoDataService_AsyncEx.Create(Self.Message, Self.Channel);
  exit;
end;

procedure TServerAccess_sanhe.ChannelLoginNeeded(Sender: TROTransportChannel; anException: Exception; var aRetry: Boolean);
begin
  // Implement authentication here by calling LoginService.needsLoginMethod
  aRetry := false;
end;

initialization
finalization
  fServerAccess.Free();
end.
