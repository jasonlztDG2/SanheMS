unit DataService_Impl;

{$I DataAbstract.inc}
interface

uses
  {vcl:} Classes, SysUtils, 
  {RemObjects:} uROComponent, uROClient, uROClientIntf, uROTypes, uROServer, uROServerIntf, uROSessions, 
  uRORemoteDataModule,
  {Data Abstract:} uDADataTable, uDAInterfaces, uDABusinessProcessor, uDAStreamableComponent, uDASchema, uDADelta, uDAServerInterfaces,
  uDAScriptingProvider, uDAEcmaScriptEngine, uDASpiderMonkeyScriptProvider, uDADataStreamer, uDABin2DataStreamer,
  {Ancestor Implementation:} DataAbstractService_Impl,
  {Used RODLs:} DataAbstract4_Intf, 
  {Generated:} sanhe_Intf, uDAFields, uDAScriptingInterfaces, uDAClientSchema;

type
  { TDataService }
  TDataService = class(TDataAbstractService, IDataService)
    DataStreamer: TDABin2DataStreamer;
    EcmaScriptProvider: TDASpiderMonkeyScriptProvider;
    Schema: TDASchema;
  private
  protected
    { IDataService methods }
  end;

implementation

{$IFDEF DELPHIXE2UP}
{%CLASSGROUP 'System.Classes.TPersistent'}
{$ENDIF}

{$R *.dfm}
uses
  {Generated:} sanhe_Invk, fServerDataModule;

procedure Create_DataService(out anInstance: IUnknown);
begin
  anInstance := TDataService.Create(nil);
end;

var
  fClassFactory: IROClassFactory;
initialization
  fClassFactory := TROClassFactory.Create('DataService', Create_DataService, TDataService_Invoker);
  // RegisterForZeroConf(fClassFactory,'_DataService_rosdk._tcp.');
finalization
  UnRegisterClassFactory(fClassFactory);
  fClassFactory := nil;
end.