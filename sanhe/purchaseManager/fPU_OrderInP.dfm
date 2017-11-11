inherited fPU_OrderIn: TfPU_OrderIn
  Caption = #37319#36141#20837#24211
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      OnClick = tb_BrowseClick
      ExplicitWidth = 46
    end
    inherited Tb_Edit: TToolButton
      OnClick = Tb_EditClick
      ExplicitWidth = 39
    end
    inherited tb_Append: TToolButton
      Visible = False
      OnClick = tb_AppendClick
      ExplicitWidth = 48
    end
    inherited tb_revise: TToolButton
      Visible = False
      ExplicitWidth = 43
    end
    inherited tb_Copy: TToolButton
      Visible = False
      ExplicitWidth = 39
    end
    inherited tb_Delete: TToolButton
      OnClick = tb_DeleteClick
      ExplicitWidth = 42
    end
    inherited tb_Filter: TToolButton
      ExplicitWidth = 39
    end
    inherited tb_Unfilter: TToolButton
      ExplicitWidth = 46
    end
    inherited tb_Save: TToolButton
      Visible = False
    end
    inherited tbCancel: TToolButton
      Visible = False
    end
    inherited tb_Seperator3: TToolButton
      Visible = False
    end
    inherited tbRefresh: TToolButton
      OnClick = tbRefreshClick
    end
  end
  inherited Panel1: TPanel
    Height = 99
    ExplicitHeight = 99
    object Label4: TLabel
      Left = 25
      Top = 17
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
    object Label3: TLabel
      Left = 25
      Top = 61
      Width = 60
      Height = 16
      Caption = #20837#24211#26102#38388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 215
      Top = 61
      Width = 12
      Height = 16
      Caption = #8212
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 304
      Top = 17
      Width = 60
      Height = 16
      Caption = #20837#24211#21592#24037
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 584
      Top = 14
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
    object Edit1: TEdit
      Left = 99
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object cxDateEdit1: TcxDateEdit
      Left = 99
      Top = 61
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 110
    end
    object cxDateEdit2: TcxDateEdit
      Left = 233
      Top = 61
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 110
    end
    object ComboBox4: TComboBox
      Left = 378
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 4
      Items.Strings = (
        #26448#26009
        #25104#21697)
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 153
    Height = 298
    ExplicitTop = 153
    ExplicitHeight = 298
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dSource1
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1inCode: TcxGridDBColumn
        DataBinding.FieldName = 'inCode'
      end
      object cxGrid1DBTableView1inType: TcxGridDBColumn
        DataBinding.FieldName = 'inType'
      end
      object cxGrid1DBTableView1inDate: TcxGridDBColumn
        DataBinding.FieldName = 'inDate'
      end
      object cxGrid1DBTableView1consignee: TcxGridDBColumn
        DataBinding.FieldName = 'consignee'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1operatorDate: TcxGridDBColumn
        DataBinding.FieldName = 'operatorDate'
      end
      object cxGrid1DBTableView1operator: TcxGridDBColumn
        DataBinding.FieldName = 'operator'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1inState: TcxGridDBColumn
        DataBinding.FieldName = 'inState'
      end
      object cxGrid1DBTableView1department: TcxGridDBColumn
        DataBinding.FieldName = 'department'
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
      end
    end
  end
  inherited dSource1: TDADataSource
    DataSet = tbl_st_instorage.Dataset
    DataTable = tbl_st_instorage
  end
  object tbl_st_instorage: TDAMemDataTable
    Fields = <
      item
        Name = 'id'
        DataType = datAutoInc
        GeneratorName = 'st_instorage'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'inCode'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'inType'
        DataType = datWideString
        Size = 10
        Required = True
      end
      item
        Name = 'locationId'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'companyId'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'inDate'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'consignee'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'operatorDate'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'operator'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'inState'
        DataType = datWideString
        Size = 10
        Required = True
      end
      item
        Name = 'department'
        DataType = datFixedWideChar
        Size = 10
      end
      item
        Name = 'memo'
        DataType = datWideString
        Size = 50
      end>
    LogicalName = 'st_instorage'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 488
    Top = 117
  end
end
