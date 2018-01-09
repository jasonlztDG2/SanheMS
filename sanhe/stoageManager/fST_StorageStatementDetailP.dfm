object fST_StorageStatementDetail: TfST_StorageStatementDetail
  Left = 0
  Top = 0
  Caption = #26376#32467#28165#21333
  ClientHeight = 512
  ClientWidth = 584
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 131
    Width = 584
    Height = 325
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = duPub.ds_st_repertoryDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1productId: TcxGridDBColumn
        DataBinding.FieldName = 'productId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'productId'
        Properties.ListColumns = <
          item
            FieldName = 'productName'
          end>
        Properties.ListSource = duPub.ds_st_product
        Width = 84
      end
      object cxGrid1DBTableView1locationId: TcxGridDBColumn
        DataBinding.FieldName = 'locationId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'locationName'
          end>
        Properties.ListSource = duPub.ds_st_location
      end
      object cxGrid1DBTableView1companyId: TcxGridDBColumn
        DataBinding.FieldName = 'companyId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'CompanyName'
          end>
        Properties.ListSource = duPub.ds_st_company
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGrid1DBTableView1recordDate: TcxGridDBColumn
        DataBinding.FieldName = 'recordDate'
      end
      object cxGrid1DBTableView1recordUser: TcxGridDBColumn
        DataBinding.FieldName = 'recordUser'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1recordType: TcxGridDBColumn
        DataBinding.FieldName = 'recordType'
      end
      object cxGrid1DBTableView1idCardNum: TcxGridDBColumn
        DataBinding.FieldName = 'idCardNum'
      end
      object cxGrid1DBTableView1incode: TcxGridDBColumn
        DataBinding.FieldName = 'incode'
      end
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 584
    Height = 56
    Align = alBottom
    Color = clBtnHighlight
    Padding.Left = 1
    Padding.Top = 1
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 578
      Height = 50
      Align = alClient
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      object Button2: TButton
        Left = 125
        Top = 16
        Width = 75
        Height = 25
        Caption = #29983#25104#25253#34920
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Button1: TButton
      Left = 29
      Top = 16
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 97
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 29
      Top = 16
      Width = 60
      Height = 16
      Caption = #21830#21697#21517#31216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 309
      Top = 16
      Width = 60
      Height = 16
      Caption = #24211#23384#25968#37327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 29
      Top = 64
      Width = 60
      Height = 16
      Caption = #36873#21462#24180#26376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 107
      Top = 13
      DataBinding.DataField = 'productId'
      DataBinding.DataSource = duPub.ds_st_repertoryMonth
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 158
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 387
      Top = 13
      DataBinding.DataField = 'qty'
      DataBinding.DataSource = duPub.ds_st_repertoryMonth
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 158
    end
    object Edit1: TEdit
      Left = 107
      Top = 13
      Width = 158
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 107
      Top = 58
      Width = 158
      Height = 24
      Date = 43041.455464502320000000
      Format = 'yyyy-MM'
      Time = 43041.455464502320000000
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 97
    Width = 584
    Height = 34
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Label7: TLabel
      Left = 28
      Top = 8
      Width = 48
      Height = 13
      Caption = #26126#32454#21015#34920
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Dont9394;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=sanhe;Data Source=go2cap.com,4433'
    CursorType = ctStatic
    Parameters = <>
    Left = 336
    Top = 222
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 420
    Top = 206
  end
end
