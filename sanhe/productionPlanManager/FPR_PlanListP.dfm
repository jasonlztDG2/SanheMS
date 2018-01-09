object FPR_PlanList: TFPR_PlanList
  Left = 0
  Top = 0
  Caption = #38144#21806#35746#21333#21015#34920
  ClientHeight = 362
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 784
    Height = 50
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Button2: TButton
      Left = 31
      Top = 13
      Width = 90
      Height = 25
      Caption = #30830#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 784
    Height = 312
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = duPub.ds_pu_seOrder
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
      object selectBox: TcxGridDBColumn
        DataBinding.ValueType = 'Boolean'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.MultiLine = True
        Properties.NullStyle = nssUnchecked
        Options.Focusing = False
        Width = 78
      end
      object cxGrid1DBTableView1productCode: TcxGridDBColumn
        DataBinding.FieldName = 'productCode'
        Width = 105
      end
      object cxGrid1DBTableView1productName: TcxGridDBColumn
        DataBinding.FieldName = 'productName'
        Width = 104
      end
      object cxGrid1DBTableView1kind: TcxGridDBColumn
        DataBinding.FieldName = 'kind'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'KindName'
          end>
        Properties.ListSource = duPub.ds_st_kind
        Width = 117
      end
      object cxGrid1DBTableView1Style: TcxGridDBColumn
        DataBinding.FieldName = 'Style'
        Width = 69
      end
      object cxGrid1DBTableView1Spec: TcxGridDBColumn
        DataBinding.FieldName = 'Spec'
        Width = 86
      end
      object cxGrid1DBTableView1color: TcxGridDBColumn
        DataBinding.FieldName = 'color'
        Width = 61
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        DataBinding.FieldName = 'unit'
        Width = 70
      end
      object cxGrid1DBTableView1price: TcxGridDBColumn
        DataBinding.FieldName = 'price'
        Width = 92
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
