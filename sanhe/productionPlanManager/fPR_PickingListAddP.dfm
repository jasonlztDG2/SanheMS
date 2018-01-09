object fPR_PickingListAdd: TfPR_PickingListAdd
  Left = 0
  Top = 0
  Caption = #26032#22686#39046#26009#21333
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 85
    Width = 584
    Height = 371
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 2
    ExplicitTop = 109
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_pu_seOrderPr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1seOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'seOrderNum'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1productName: TcxGridDBColumn
        DataBinding.FieldName = 'productName'
        Options.Editing = False
        Options.Filtering = False
      end
      object cxGrid1DBTableView1color: TcxGridDBColumn
        DataBinding.FieldName = 'color'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1kind: TcxGridDBColumn
        DataBinding.FieldName = 'kind'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1style: TcxGridDBColumn
        DataBinding.FieldName = 'style'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1spec: TcxGridDBColumn
        DataBinding.FieldName = 'spec'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1unit: TcxGridDBColumn
        DataBinding.FieldName = 'unit'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1productType: TcxGridDBColumn
        DataBinding.FieldName = 'productType'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1tempNum: TcxGridDBColumn
        DataBinding.FieldName = 'tempNum'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 190
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
      OnClick = Button1Click
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
    Height = 51
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
    object Label2: TLabel
      Left = 315
      Top = 16
      Width = 60
      Height = 16
      Caption = #39046#26009#26102#38388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
      TabOrder = 0
    end
    object cxDateEdit2: TcxDateEdit
      Left = 395
      Top = 13
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 51
    Width = 584
    Height = 34
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 281
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
  object tbl_pu_seOrderPr: TDAMemDataTable
    Fields = <
      item
        Name = 'id'
        DataType = datAutoInc
      end
      item
        Name = 'seOrderNum'
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
        DataType = datWideString
        Size = 20
        DecimalPrecision = 18
        DecimalScale = 4
      end
      item
        Name = 'status'
        DataType = datWideString
        Size = 20
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
        DataType = datCurrency
        DecimalPrecision = 20
        DecimalScale = 4
        Required = True
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
    LogicalName = 'pu_seOrderPr'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    AutoCompactRecords = True
    Left = 264
    Top = 428
  end
  object ds_pu_seOrderPr: TDADataSource
    DataSet = tbl_pu_seOrderPr.Dataset
    DataTable = tbl_pu_seOrderPr
    Left = 336
    Top = 460
  end
end
