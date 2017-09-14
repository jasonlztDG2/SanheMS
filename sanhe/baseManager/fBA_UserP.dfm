inherited fBA_User: TfBA_User
  Caption = #29992#25143#20449#24687
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      Visible = False
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
      OnClick = tb_DeleteClick
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
      OnClick = tb_SaveClick
    end
    inherited tbCancel: TToolButton
      OnClick = tbCancelClick
    end
    inherited tbRefresh: TToolButton
      Visible = False
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_p_user
      OptionsSelection.CellSelect = True
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1loginName: TcxGridDBColumn
        DataBinding.FieldName = 'loginName'
      end
      object cxGrid1DBTableView1fullName: TcxGridDBColumn
        DataBinding.FieldName = 'fullName'
      end
      object cxGrid1DBTableView1password: TcxGridDBColumn
        DataBinding.FieldName = 'password'
      end
    end
  end
end
