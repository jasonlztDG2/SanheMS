object fPR_ProductList: TfPR_ProductList
  Left = 0
  Top = 0
  Caption = #26448#26009#21015#34920
  ClientHeight = 362
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 137
    Align = alTop
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = duPub.ds_st_structure
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
      end
      object cxGrid1DBTableView1structureNum: TcxGridDBColumn
        DataBinding.FieldName = 'structureNum'
      end
      object cxGrid1DBTableView1structureName: TcxGridDBColumn
        DataBinding.FieldName = 'structureName'
      end
      object cxGrid1DBTableView1structureDes: TcxGridDBColumn
        DataBinding.FieldName = 'structureDes'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 171
    Width = 784
    Height = 137
    Align = alTop
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = duPub.ds_st_structureDt
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGridDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Width = 103
      end
      object cxGridDBTableView1structureNum: TcxGridDBColumn
        DataBinding.FieldName = 'structureNum'
        Width = 200
      end
      object cxGridDBTableView1productId: TcxGridDBColumn
        DataBinding.FieldName = 'productId'
        Width = 170
      end
      object cxGridDBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
        Width = 309
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 784
    Height = 50
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Button2: TButton
      Left = 31
      Top = 13
      Width = 82
      Height = 25
      Caption = #30830#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 137
    Width = 784
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
