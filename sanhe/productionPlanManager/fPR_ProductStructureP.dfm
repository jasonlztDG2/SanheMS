inherited fPR_ProductStructure: TfPR_ProductStructure
  Caption = #26448#26009#28165#21333
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      OnClick = tb_BrowseClick
    end
    inherited Tb_Edit: TToolButton
      Visible = False
      OnClick = Tb_EditClick
    end
    inherited tb_Append: TToolButton
      OnClick = tb_AppendClick
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
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_st_structure
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1structureNum: TcxGridDBColumn
        DataBinding.FieldName = 'structureNum'
      end
      object cxGrid1DBTableView1structureName: TcxGridDBColumn
        DataBinding.FieldName = 'structureName'
      end
      object cxGrid1DBTableView1structureDes: TcxGridDBColumn
        DataBinding.FieldName = 'structureDes'
      end
    end
  end
end
