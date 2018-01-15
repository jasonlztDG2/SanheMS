inherited fBA_PartsList: TfBA_PartsList
  Caption = #24125#23376#37096#20301
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited Tb_Edit: TToolButton
      OnClick = Tb_EditClick
    end
    inherited tb_Append: TToolButton
      OnClick = tb_AppendClick
    end
    inherited tb_Delete: TToolButton
      OnClick = tb_DeleteClick
    end
    inherited tbCancel: TToolButton
      OnClick = tbCancelClick
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
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
