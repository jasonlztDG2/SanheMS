inherited fPR_PickingList: TfPR_PickingList
  Caption = #39046#26009#21333
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Browse: TToolButton
      OnClick = tb_BrowseClick
    end
    inherited tb_Append: TToolButton
      OnClick = tb_AppendClick
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_pu_material
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1materialNum: TcxGridDBColumn
        DataBinding.FieldName = 'materialNum'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 135
      end
      object cxGrid1DBTableView1materialDate: TcxGridDBColumn
        DataBinding.FieldName = 'materialDate'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 204
      end
    end
  end
end
