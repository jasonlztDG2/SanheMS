inherited fST_StoageCheck: TfST_StoageCheck
  Caption = #24211#23384#30424#28857
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
      Visible = False
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
      Visible = False
      ExplicitWidth = 39
    end
    inherited tb_Unfilter: TToolButton
      Visible = False
      ExplicitWidth = 46
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
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_st_check
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1checkNum: TcxGridDBColumn
        DataBinding.FieldName = 'checkNum'
      end
      object cxGrid1DBTableView1checkDate: TcxGridDBColumn
        DataBinding.FieldName = 'checkDate'
      end
      object cxGrid1DBTableView1checkUser: TcxGridDBColumn
        DataBinding.FieldName = 'checkUser'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'fullName'
          end>
        Properties.ListSource = duPub.ds_p_user
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
      end
    end
  end
end
