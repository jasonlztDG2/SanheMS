inherited fPR_Plan: TfPR_Plan
  Caption = #29983#20135#35746#21333
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
  end
  inherited Panel1: TPanel
    Height = 131
    ExplicitHeight = 131
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
      Left = 334
      Top = 17
      Width = 30
      Height = 16
      Caption = #23458#25143
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
      Caption = #35746#21333#29366#24577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 97
      Width = 60
      Height = 16
      Caption = #19979#21333#26102#38388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 185
      Top = 97
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
      Top = 97
      Width = 60
      Height = 16
      Caption = #20132#36135#26102#38388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 464
      Top = 97
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
    object Label5: TLabel
      Left = 304
      Top = 57
      Width = 60
      Height = 16
      Caption = #21830#21697#26448#26009
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
        #26410#29983#20135
        #24453#20986#24211
        #24050#20986#24211)
    end
    object cxDateEdit1: TcxDateEdit
      Left = 99
      Top = 97
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 80
    end
    object cxDateEdit2: TcxDateEdit
      Left = 203
      Top = 97
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 80
    end
    object cxDateEdit3: TcxDateEdit
      Left = 378
      Top = 97
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 80
    end
    object cxDateEdit4: TcxDateEdit
      Left = 482
      Top = 97
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 80
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
      TabOrder = 7
      OnClick = Button1Click
    end
    object ComboBox3: TComboBox
      Left = 378
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 8
      Items.Strings = (
        #26448#26009
        #25104#21697)
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 185
    Height = 266
    ExplicitTop = 185
    ExplicitHeight = 266
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_pu_seOrder
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1seOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'seOrderNum'
      end
      object cxGrid1DBTableView1partnersId: TcxGridDBColumn
        DataBinding.FieldName = 'partnersId'
      end
      object cxGrid1DBTableView1structureNum: TcxGridDBColumn
        DataBinding.FieldName = 'structureNum'
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGrid1DBTableView1productId: TcxGridDBColumn
        DataBinding.FieldName = 'productId'
      end
      object cxGrid1DBTableView1seOrderDate: TcxGridDBColumn
        DataBinding.FieldName = 'seOrderDate'
      end
      object cxGrid1DBTableView1seDeliveryDate: TcxGridDBColumn
        DataBinding.FieldName = 'seDeliveryDate'
      end
      object cxGrid1DBTableView1seStatus: TcxGridDBColumn
        DataBinding.FieldName = 'seStatus'
      end
      object cxGrid1DBTableView1seCreator: TcxGridDBColumn
        DataBinding.FieldName = 'seCreator'
      end
      object cxGrid1DBTableView1seAddress: TcxGridDBColumn
        DataBinding.FieldName = 'seAddress'
      end
      object cxGrid1DBTableView1sePayment: TcxGridDBColumn
        DataBinding.FieldName = 'sePayment'
      end
      object cxGrid1DBTableView1seSalesman: TcxGridDBColumn
        DataBinding.FieldName = 'seSalesman'
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
      end
    end
  end
end
