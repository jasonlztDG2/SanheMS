object fPU_OrderBackDetail: TfPU_OrderBackDetail
  Left = 0
  Top = 0
  Caption = #36864#36135#35814#24773
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
      DataController.DataSource = duPub.ds_st_outstorageDt
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1outCode: TcxGridDBColumn
        DataBinding.FieldName = 'outCode'
      end
      object cxGrid1DBTableView1oddDtId: TcxGridDBColumn
        DataBinding.FieldName = 'oddDtId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'inCode'
          end>
        Properties.ListSource = duPub.ds_st_instorageDt
      end
      object cxGrid1DBTableView1productId: TcxGridDBColumn
        DataBinding.FieldName = 'productId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'productId'
        Properties.ListColumns = <
          item
            FieldName = 'productName'
          end>
        Properties.ListSource = duPub.ds_st_product
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
      object cxGrid1DBTableView1price: TcxGridDBColumn
        DataBinding.FieldName = 'price'
      end
      object cxGrid1DBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object cxGrid1DBTableView1hadInQty: TcxGridDBColumn
        DataBinding.FieldName = 'hadInQty'
      end
      object cxGrid1DBTableView1partnersId: TcxGridDBColumn
        DataBinding.FieldName = 'partnersId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = duPub.ds_p_partners
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
    end
    object Button1: TButton
      Left = 29
      Top = 16
      Width = 75
      Height = 25
      Caption = #30830#23450
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
      Caption = #35746#21333#32534#21495
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
      Caption = #36864#36135#26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 61
      Width = 60
      Height = 16
      Caption = #36864#36135#21592#24037
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
      DataBinding.DataField = 'outCode'
      DataBinding.DataSource = fPU_OrderBack.dSource1
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
      DataBinding.DataField = 'outDate'
      DataBinding.DataSource = fPU_OrderBack.dSource1
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
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 107
      Top = 58
      DataBinding.DataField = 'outUser'
      DataBinding.DataSource = fPU_OrderBack.dSource1
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 158
    end
    object Edit2: TEdit
      Left = 107
      Top = 58
      Width = 158
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
end
