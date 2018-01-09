inherited fBA_PartsList: TfBA_PartsList
  Caption = #24125#23376#37096#20301
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
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
      ExplicitWidth = 43
    end
    inherited tb_Copy: TToolButton
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
      OnClick = tb_SaveClick
    end
    inherited tbCancel: TToolButton
      OnClick = tbCancelClick
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_pr_partsList
      OptionsData.Editing = False
      OptionsSelection.CellSelect = True
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1partName: TcxGridDBColumn
        DataBinding.FieldName = 'partName'
      end
    end
  end
end
