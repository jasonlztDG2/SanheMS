inherited fST_StoageOut: TfST_StoageOut
  Caption = #20986#24211#31649#29702
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
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
    object Label7: TLabel
      Left = 304
      Top = 17
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
    object Label3: TLabel
      Left = 25
      Top = 61
      Width = 60
      Height = 16
      Caption = #36864#36135#26102#38388
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
    object Edit1: TEdit
      Left = 99
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object ComboBox4: TComboBox
      Left = 378
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 1
      Items.Strings = (
        #26448#26009
        #25104#21697)
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
      TabOrder = 2
      OnClick = Button1Click
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
      TabOrder = 3
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
      TabOrder = 4
      Width = 110
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 153
    Height = 298
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_st_outstorage
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1outCode: TcxGridDBColumn
        DataBinding.FieldName = 'outCode'
      end
      object cxGrid1DBTableView1outType: TcxGridDBColumn
        DataBinding.FieldName = 'outType'
      end
      object cxGrid1DBTableView1outUser: TcxGridDBColumn
        DataBinding.FieldName = 'outUser'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1outDate: TcxGridDBColumn
        DataBinding.FieldName = 'outDate'
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
      object cxGrid1DBTableView1outState: TcxGridDBColumn
        DataBinding.FieldName = 'outState'
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
      end
    end
  end
end
