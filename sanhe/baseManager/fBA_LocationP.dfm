inherited fBA_Location: TfBA_Location
  Caption = #20179#24211#31649#29702
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      Visible = False
    end
    inherited Tb_Edit: TToolButton
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
      OnClick = tb_DeleteClick
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
      DataController.DataSource = duPub.ds_st_location
      OptionsData.Editing = False
      OptionsSelection.CellSelect = True
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1locationNum: TcxGridDBColumn
        Caption = #20179#20301#32534#21495
        DataBinding.FieldName = 'locationNum'
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1locationName: TcxGridDBColumn
        Caption = #20179#20301#21517#31216
        DataBinding.FieldName = 'locationName'
        Options.Filtering = False
        Options.Sorting = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.ValueType = 'WideString'
      end
    end
  end
end
