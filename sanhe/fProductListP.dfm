object fProductList: TfProductList
  Left = 0
  Top = 0
  Caption = #36873#25321#21830#21697
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 784
    Height = 297
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = ds_st_product
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 65
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 21
      Top = 24
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
    object Label2: TLabel
      Left = 297
      Top = 24
      Width = 60
      Height = 16
      Caption = #21830#21697#31867#21035
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 91
      Top = 21
      Width = 158
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 371
      Top = 21
      Width = 158
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 568
      Top = 21
      Width = 97
      Height = 25
      Caption = #25628#32034
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 671
      Top = 21
      Width = 97
      Height = 25
      Caption = #30830#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object ds_st_product: TDADataSource
    DataSet = tbl_st_product.Dataset
    DataTable = tbl_st_product
    Left = 48
    Top = 224
  end
  object tbl_st_product: TDAMemDataTable
    Fields = <
      item
        Name = 'productId'
        DataType = datAutoInc
        GeneratorName = 'st_product'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'productCode'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'productName'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'price'
        DataType = datWideString
        Size = 20
        DecimalPrecision = 18
        DecimalScale = 4
        Required = True
      end
      item
        Name = 'kind'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'style'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'spec'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'color'
        DataType = datWideString
        Size = 10
      end
      item
        Name = 'unit'
        DataType = datWideString
        Size = 10
      end
      item
        Name = 'productType'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'tempNum'
        DataType = datWideString
        Size = 50
      end>
    LogicalName = 'st_product'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 48
    Top = 296
  end
end
