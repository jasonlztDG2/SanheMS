inherited fPR_VersionOrder: TfPR_VersionOrder
  Caption = #29983#20135#29256#21333
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
      DataController.DataSource = duPub.ds_pu_versionOrder
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1versionOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'versionOrderNum'
        Width = 197
      end
      object cxGrid1DBTableView1partnerNum: TcxGridDBColumn
        DataBinding.FieldName = 'partnerNum'
        Width = 174
      end
      object cxGrid1DBTableView1recordDate: TcxGridDBColumn
        DataBinding.FieldName = 'recordDate'
      end
      object cxGrid1DBTableView1deliveryDate: TcxGridDBColumn
        DataBinding.FieldName = 'deliveryDate'
      end
      object cxGrid1DBTableView1recordUser: TcxGridDBColumn
        DataBinding.FieldName = 'recordUser'
      end
      object cxGrid1DBTableView1auditUser: TcxGridDBColumn
        DataBinding.FieldName = 'auditUser'
      end
      object cxGrid1DBTableView1titleName: TcxGridDBColumn
        DataBinding.FieldName = 'titleName'
      end
      object cxGrid1DBTableView1titleCount: TcxGridDBColumn
        DataBinding.FieldName = 'titleCount'
      end
      object cxGrid1DBTableView1titleMemo: TcxGridDBColumn
        DataBinding.FieldName = 'titleMemo'
      end
    end
  end
end
