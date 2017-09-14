inherited fPU_OrderPay: TfPU_OrderPay
  Caption = #37319#36141#20184#27454
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      OnClick = tb_BrowseClick
      ExplicitWidth = 46
    end
    inherited Tb_Edit: TToolButton
      Visible = False
      ExplicitWidth = 39
    end
    inherited tb_Append: TToolButton
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
      Visible = False
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
      Visible = False
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
    object Label2: TLabel
      Left = 304
      Top = 17
      Width = 53
      Height = 16
      Caption = #20379' '#24212' '#21830
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 25
      Top = 57
      Width = 60
      Height = 16
      Caption = #20184#27454#21592#24037
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 298
      Top = 56
      Width = 60
      Height = 16
      Caption = #20184#27454#26102#38388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 497
      Top = 56
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
    object Edit1: TEdit
      Left = 99
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 378
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object ComboBox2: TComboBox
      Left = 99
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 2
      Items.Strings = (
        #24453#23457#26680
        #24453#25910#36135
        #24050#36864#36135
        #24050#20837#24211)
    end
    object cxDateEdit1: TcxDateEdit
      Left = 378
      Top = 56
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
    object cxDateEdit2: TcxDateEdit
      Left = 515
      Top = 56
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 110
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
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 153
    Height = 298
    ExplicitTop = 153
    ExplicitHeight = 298
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_pu_orderpay
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1payCode: TcxGridDBColumn
        DataBinding.FieldName = 'payCode'
      end
      object cxGrid1DBTableView1partnerId: TcxGridDBColumn
        DataBinding.FieldName = 'partnerId'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = duPub.ds_p_partners
      end
      object cxGrid1DBTableView1payUser: TcxGridDBColumn
        DataBinding.FieldName = 'payUser'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1payAmount: TcxGridDBColumn
        DataBinding.FieldName = 'payAmount'
      end
      object cxGrid1DBTableView1payNum: TcxGridDBColumn
        DataBinding.FieldName = 'payNum'
      end
      object cxGrid1DBTableView1payDate: TcxGridDBColumn
        DataBinding.FieldName = 'payDate'
      end
      object cxGrid1DBTableView1payType: TcxGridDBColumn
        DataBinding.FieldName = 'payType'
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
      object cxGrid1DBTableView1operatorDate: TcxGridDBColumn
        DataBinding.FieldName = 'operatorDate'
      end
    end
  end
end
