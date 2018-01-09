object fPR_ProductStructureDetail: TfPR_ProductStructureDetail
  Left = 0
  Top = 0
  Caption = #26448#26009#28165#21333
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
    Top = 133
    Width = 584
    Height = 323
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_st_structureProduct
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1productCode: TcxGridDBColumn
        DataBinding.FieldName = 'productCode'
      end
      object cxGrid1DBTableView1productName: TcxGridDBColumn
        DataBinding.FieldName = 'productName'
      end
      object cxGrid1DBTableView1price: TcxGridDBColumn
        DataBinding.FieldName = 'price'
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGrid1DBTableView1kind: TcxGridDBColumn
        DataBinding.FieldName = 'kind'
      end
      object cxGrid1DBTableView1style: TcxGridDBColumn
        DataBinding.FieldName = 'style'
      end
      object cxGrid1DBTableView1spec: TcxGridDBColumn
        DataBinding.FieldName = 'spec'
      end
      object cxGrid1DBTableView1color: TcxGridDBColumn
        DataBinding.FieldName = 'color'
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        DataBinding.FieldName = 'unit'
      end
      object cxGrid1DBTableView1productType: TcxGridDBColumn
        DataBinding.FieldName = 'productType'
      end
      object cxGrid1DBTableView1tempNum: TcxGridDBColumn
        DataBinding.FieldName = 'tempNum'
      end
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1structureNum: TcxGridDBColumn
        DataBinding.FieldName = 'structureNum'
      end
      object cxGrid1DBTableView1productId: TcxGridDBColumn
        DataBinding.FieldName = 'productId'
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
      TabOrder = 2
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
    end
    object Button2: TButton
      Left = 133
      Top = 16
      Width = 75
      Height = 25
      Caption = #21462#28040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 99
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 29
      Top = 16
      Width = 60
      Height = 16
      Caption = #28165#21333#32534#21495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 61
      Width = 60
      Height = 16
      Caption = #28165#21333#25551#36848
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
      Caption = #28165#21333#21517#31216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 107
      Top = 58
      Width = 438
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 387
      Top = 13
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
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 107
      Top = 13
      DataBinding.DataField = 'structureNum'
      DataBinding.DataSource = duPub.ds_st_structure
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
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 211
      Top = 38
      DataBinding.DataField = 'structureName'
      DataBinding.DataSource = duPub.ds_st_structure
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      Width = 158
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 347
      Top = 38
      DataBinding.DataField = 'structureDes'
      DataBinding.DataSource = duPub.ds_st_structure
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Visible = False
      Width = 158
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 99
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
    object cxDBNavigator1: TcxDBNavigator
      Left = 90
      Top = 3
      Width = 174
      Height = 25
      Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
      Buttons.CustomButtons = <>
      Buttons.First.Visible = False
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Enabled = False
      Buttons.Prior.Visible = False
      Buttons.Next.Enabled = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Enabled = False
      Buttons.Last.Visible = False
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Append.Hint = #28155#21152
      Buttons.Append.Visible = True
      Buttons.Delete.Hint = #21024#38500
      Buttons.Edit.Hint = #20462#25913
      Buttons.Edit.Visible = False
      Buttons.Post.Hint = #20445#23384
      Buttons.Post.Visible = False
      Buttons.Cancel.Hint = #21462#28040
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Hint = #21047#26032
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Enabled = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Enabled = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Enabled = False
      Buttons.Filter.Visible = False
      DataSource = duPub.ds_p_user
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object ds_st_structureProduct: TDADataSource
    DataSet = tbl_st_structureProduct.Dataset
    DataTable = tbl_st_structureProduct
    Left = 464
    Top = 236
  end
  object tbl_st_structureProduct: TDAMemDataTable
    Fields = <
      item
        Name = 'id'
        DataType = datAutoInc
        GeneratorName = 'st_structureDt'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'structureNum'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'productId'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'qty'
        DataType = datDecimal
        DecimalPrecision = 18
        DecimalScale = 4
      end
      item
        Name = 'productId_1'
        DataType = datAutoInc
      end
      item
        Name = 'productCode'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'productName'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'price'
        DataType = datDecimal
        DecimalPrecision = 18
        DecimalScale = 4
      end
      item
        Name = 'kind'
        DataType = datInteger
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
      end
      item
        Name = 'tempNum'
        DataType = datWideString
        Size = 50
      end>
    LogicalName = 'st_structureProduct'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    OnAfterOpen = tbl_st_structureProductAfterOpen
    AfterOpen = tbl_st_structureProductAfterOpen
    IndexDefs = <>
    Left = 376
    Top = 260
  end
end
