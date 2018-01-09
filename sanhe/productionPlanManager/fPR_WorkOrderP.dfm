inherited fPR_WorkOrder: TfPR_WorkOrder
  Caption = #29983#20135#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    inherited tb_Append: TToolButton
      OnClick = tb_AppendClick
    end
  end
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = duPub.ds_pu_workDetailList
      object cxGrid1DBTableView1RecID: TcxGridDBColumn
        DataBinding.FieldName = 'RecID'
        Visible = False
      end
      object cxGrid1DBTableView1workNum: TcxGridDBColumn
        DataBinding.FieldName = 'workNum'
        Width = 131
      end
      object cxGrid1DBTableView1partnerNum: TcxGridDBColumn
        DataBinding.FieldName = 'partnerNum'
        Width = 162
      end
      object cxGrid1DBTableView1recordDate: TcxGridDBColumn
        DataBinding.FieldName = 'recordDate'
        Width = 100
      end
      object cxGrid1DBTableView1deliveryDate: TcxGridDBColumn
        DataBinding.FieldName = 'deliveryDate'
        Width = 102
      end
      object cxGrid1DBTableView1recordUser: TcxGridDBColumn
        DataBinding.FieldName = 'recordUser'
      end
      object cxGrid1DBTableView1auditUser: TcxGridDBColumn
        DataBinding.FieldName = 'auditUser'
      end
      object cxGrid1DBTableView1memo: TcxGridDBColumn
        DataBinding.FieldName = 'memo'
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
      object cxGrid1DBTableView1bodyDescribe: TcxGridDBColumn
        DataBinding.FieldName = 'bodyDescribe'
      end
      object cxGrid1DBTableView1bodyPic: TcxGridDBColumn
        DataBinding.FieldName = 'bodyPic'
      end
      object cxGrid1DBTableView1bodyMemo: TcxGridDBColumn
        DataBinding.FieldName = 'bodyMemo'
      end
    end
  end
end
