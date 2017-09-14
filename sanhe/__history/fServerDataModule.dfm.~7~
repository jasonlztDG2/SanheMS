object ServerDataModule: TServerDataModule
  OldCreateOrder = False
  OnCreate = ModuleCreate
  Height = 300
  Width = 420
  object Server: TROIndyHTTPServer
    Dispatchers = <
      item
        Name = 'Message'
        Message = Message
        Enabled = True
        PathInfo = 'Bin'
      end>
    SendClientAccessPolicyXml = captAllowAll
    IndyServer.Bindings = <>
    IndyServer.DefaultPort = 8099
    Port = 8099
    Left = 48
    Top = 8
  end
  object Message: TROBinMessage
    Envelopes = <>
    Left = 144
    Top = 8
  end
  object SessionManager: TROInMemorySessionManager
    Left = 240
    Top = 8
  end
  object DriverManager: TDADriverManager
    DriverDirectory = '%SYSTEM%\'
    TraceActive = False
    TraceFlags = []
    Left = 48
    Top = 56
  end
  object ConnectionManager: TDAConnectionManager
    Connections = <
      item
        Name = 'Connection to sanhe'
        ConnectionString = 
          'FireDAC?AuxDriver=MSSQL;Server=go2cap.com,4433;Database=sanhe;Us' +
          'erID=sa;Password=Dont9394;Port=3306;useUnicode=true&characterEnc' +
          'oding=utf-8;charset=gbk;'
        ConnectionType = 'MSSQL'
        Default = True
      end>
    DriverManager = DriverManager
    PoolingEnabled = True
    Left = 144
    Top = 56
  end
  object DataDictionary: TDADataDictionary
    Fields = <>
    Left = 240
    Top = 56
  end
end
