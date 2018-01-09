inherited fST_StorageStatement: TfST_StorageStatement
  Caption = #26376#32467#25253#34920
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      Visible = False
      OnClick = tb_BrowseClick
    end
    inherited Tb_Edit: TToolButton
      Visible = False
    end
    inherited tb_Append: TToolButton
      Visible = False
    end
    inherited tb_revise: TToolButton
      Visible = False
    end
    inherited tb_Copy: TToolButton
      Visible = False
    end
    inherited tb_Delete: TToolButton
      Visible = False
    end
    inherited tb_Seperator1: TToolButton
      Visible = False
    end
    inherited tb_Filter: TToolButton
      Visible = False
    end
    inherited tb_Unfilter: TToolButton
      Visible = False
    end
    inherited tb_Seperator2: TToolButton
      Visible = False
    end
    inherited tb_Save: TToolButton
      Visible = False
    end
    inherited tbCancel: TToolButton
      Visible = False
    end
    inherited tbRefresh: TToolButton
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Visible = True
    object Label1: TLabel
      Left = 25
      Top = 17
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
      Left = 25
      Top = 56
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
    object Label4: TLabel
      Left = 293
      Top = 17
      Width = 60
      Height = 16
      Caption = #26597#35810#25968#37327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 99
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
      Items.Strings = (
        #24453#23457#26680
        #24453#25910#36135
        #24050#20837#24211)
    end
    object Button1: TButton
      Left = 580
      Top = 14
      Width = 87
      Height = 25
      Caption = #26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 580
      Top = 53
      Width = 87
      Height = 25
      Caption = #29983#25104#25253#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 99
      Top = 50
      Width = 145
      Height = 24
      Date = 43041.455464502320000000
      Format = 'yyyy-MM'
      Time = 43041.455464502320000000
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 371
      Top = 14
      Width = 158
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_st_repertoryMonth
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
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
        Width = 96
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
      object cxGrid1DBTableView1recordDate: TcxGridDBColumn
        DataBinding.FieldName = 'recordDate'
      end
    end
  end
end
