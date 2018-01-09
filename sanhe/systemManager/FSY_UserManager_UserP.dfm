object FSY_UserManager_User: TFSY_UserManager_User
  Left = 0
  Top = 0
  Caption = #29992#25143#36873#25321
  ClientHeight = 297
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 544
    Height = 227
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    DataSource = dSP_User
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RecID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'loginName'
        Title.Caption = #30331#24405#21517#31216
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fullName'
        Title.Caption = #20840#21517
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 247
    Width = 564
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -120
    ExplicitTop = 152
    ExplicitWidth = 567
    object cxButton1: TcxButton
      Left = 31
      Top = 11
      Width = 97
      Height = 30
      Caption = #30830#35748
      Default = True
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 145
      Top = 11
      Width = 97
      Height = 30
      Cancel = True
      Caption = #21462#28040
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dSP_User: TDADataSource
    DataSet = tbl_p_user.Dataset
    DataTable = tbl_p_user
    Left = 311
    Top = 125
  end
  object tbl_p_user: TDAMemDataTable
    Fields = <
      item
        Name = 'ID'
        DataType = datAutoInc
        GeneratorName = 'p_user'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'loginName'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'fullName'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'password'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'userGroup_ID'
        DataType = datWideString
        Size = 10
      end>
    LogicalName = 'p_user'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 384
    Top = 125
  end
end
