object ServerAccess_sanhe: TServerAccess_sanhe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object Message: TROBinMessage
    Envelopes = <>
    DefaultNamespaces = 'sanhe;DataAbstract4'
    Left = 40
    Top = 24
  end
  object Channel: TROIndyHTTPChannel
    DispatchOptions = []
    OnLoginNeeded = ChannelLoginNeeded
    ServerLocators = <>
    TargetUrl = 'http://localhost:8099/bin'
    Left = 40
    Top = 80
  end
end
