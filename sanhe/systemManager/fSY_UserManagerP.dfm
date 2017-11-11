inherited fSY_UserManager: TfSY_UserManager
  Caption = #29992#25143#26435#38480#31649#29702
  ClientHeight = 564
  ClientWidth = 984
  OnCreate = FormCreate
  ExplicitWidth = 1000
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 984
    ExplicitWidth = 984
    inherited tb_Browse: TToolButton
      ExplicitWidth = 46
    end
    inherited Tb_Edit: TToolButton
      ExplicitWidth = 39
    end
    inherited tb_Append: TToolButton
      ExplicitWidth = 48
    end
    inherited tb_revise: TToolButton
      ExplicitWidth = 43
    end
    inherited tb_Copy: TToolButton
      ExplicitWidth = 39
    end
    inherited tb_Delete: TToolButton
      ExplicitWidth = 42
    end
    inherited tb_Filter: TToolButton
      ExplicitWidth = 39
    end
    inherited tb_Unfilter: TToolButton
      ExplicitWidth = 46
    end
  end
  inherited ToolBar2: TToolBar
    Top = 542
    Width = 984
    ExplicitTop = 493
    ExplicitWidth = 984
    inherited rec_Edit: TEdit
      Align = alClient
    end
  end
  inherited Panel1: TPanel
    Width = 649
    Align = alNone
    Visible = True
    ExplicitWidth = 649
  end
  inherited cxGrid1: TcxGrid
    Width = 649
    Height = 35
    Align = alNone
    Visible = False
    ExplicitWidth = 649
    ExplicitHeight = 35
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 54
    Width = 984
    Height = 488
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 4
    ExplicitHeight = 439
    object Panel3: TPanel
      Left = 377
      Top = 1
      Width = 606
      Height = 486
      Align = alClient
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 437
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 598
        Height = 38
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = #32452#21035#26435#38480':'
        TabOrder = 0
        object Button1: TButton
          Left = 212
          Top = 7
          Width = 74
          Height = 24
          Caption = #20445#23384
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 87
          Top = 8
          Width = 75
          Height = 25
          Caption = #32534#36753#26435#38480
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 292
          Top = 7
          Width = 75
          Height = 25
          Caption = #21462#28040
          TabOrder = 2
          OnClick = Button3Click
        end
      end
      object tree1: TcxTreeList
        Left = 1
        Top = 45
        Width = 604
        Height = 440
        Align = alClient
        Bands = <
          item
          end>
        Navigator.Buttons.CustomButtons = <>
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.InvertSelect = False
        TabOrder = 1
        OnCustomDrawDataCell = tree1CustomDrawDataCell
        OnFocusedNodeChanged = tree1FocusedNodeChanged
        ExplicitHeight = 391
        object aColumn: TcxTreeListColumn
          Caption.Text = #27169#22359
          DataBinding.ValueType = 'String'
          Options.Editing = False
          Width = 139
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeList1Column2: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #25171#24320
          DataBinding.ValueType = 'String'
          Width = 37
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column1: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #32534#36753
          DataBinding.ValueType = 'String'
          Width = 41
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column2: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #28155#21152
          DataBinding.ValueType = 'String'
          Width = 43
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column3: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #21024#38500
          DataBinding.ValueType = 'String'
          Width = 43
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column4: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #25171#21360
          DataBinding.ValueType = 'String'
          Width = 43
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column5: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #33258#23450
          DataBinding.ValueType = 'String'
          Width = 39
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column6: TcxTreeListColumn
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Caption.Text = #39640#32423
          DataBinding.ValueType = 'String'
          Width = 38
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tree1Column7: TcxTreeListColumn
          Caption.Text = 'ActionName'
          DataBinding.ValueType = 'String'
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object Memo1: TMemo
        Left = 6
        Top = 192
        Width = 392
        Height = 253
        TabOrder = 2
        Visible = False
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 376
      Height = 486
      Align = alLeft
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      ExplicitHeight = 437
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 374
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 0
        object cxLabel2: TcxLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alLeft
          Caption = #32452#21035':'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 21
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 46
          Top = 10
          Width = 210
          Height = 25
          Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
          Buttons.CustomButtons = <>
          Buttons.First.Visible = False
          Buttons.PriorPage.Enabled = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Enabled = False
          Buttons.Prior.Visible = False
          Buttons.Next.Enabled = False
          Buttons.Next.Visible = False
          Buttons.NextPage.Enabled = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Enabled = False
          Buttons.Last.Visible = False
          Buttons.Insert.Enabled = False
          Buttons.Insert.Visible = False
          Buttons.Append.Hint = #28155#21152
          Buttons.Append.Visible = True
          Buttons.Delete.Hint = #21024#38500
          Buttons.Edit.Hint = #20462#25913
          Buttons.Post.Hint = #20445#23384
          Buttons.Cancel.Hint = #21462#28040
          Buttons.Refresh.Hint = #21047#26032
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Enabled = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Enabled = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Enabled = False
          Buttons.Filter.Visible = False
          DataSource = DADataSource1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 42
        Width = 374
        Height = 215
        Align = alTop
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          FilterBox.CustomizeDialog = False
          FilterBox.Visible = fvNever
          OnCanFocusRecord = cxGrid2DBTableView1CanFocusRecord
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DADataSource1
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.DataRowSizing = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid2DBTableView1GroupName: TcxGridDBColumn
            Caption = #32452#21035#21517#31216
            DataBinding.FieldName = 'GroupName'
            Width = 288
          end
          object cxGrid2DBTableView1isAdmin: TcxGridDBColumn
            Caption = #31649#29702#21592
            DataBinding.FieldName = 'isAdmin'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueGrayed = False
            Properties.ValueUnchecked = True
            Width = 87
          end
          object cxGrid2DBTableView1auText: TcxGridDBColumn
            DataBinding.FieldName = 'auText'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          Caption = 'cxGrid2Level1'
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 1
        Top = 298
        Width = 374
        Height = 197
        Align = alTop
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        ExplicitTop = 253
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dSP_User
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBTableView1loginName: TcxGridDBColumn
            Caption = #30331#24405#21517
            DataBinding.FieldName = 'loginName'
          end
          object cxGrid1DBTableView1FullName: TcxGridDBColumn
            Caption = #20840#21517
            DataBinding.FieldName = 'FullName'
          end
          object cxGridDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 257
        Width = 374
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitLeft = 2
        ExplicitTop = 289
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alLeft
          Caption = #21253#21547#29992#25143':'
          Properties.Alignment.Vert = taVCenter
          AnchorY = 21
        end
        object cxDBNavigator2: TcxDBNavigator
          Left = 72
          Top = 10
          Width = 126
          Height = 25
          Buttons.OnButtonClick = cxDBNavigator2ButtonsButtonClick
          Buttons.CustomButtons = <>
          Buttons.First.Visible = False
          Buttons.PriorPage.Enabled = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Enabled = False
          Buttons.Prior.Visible = False
          Buttons.Next.Enabled = False
          Buttons.Next.Visible = False
          Buttons.NextPage.Enabled = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Enabled = False
          Buttons.Last.Visible = False
          Buttons.Insert.Enabled = False
          Buttons.Insert.Visible = False
          Buttons.Append.Hint = #28155#21152
          Buttons.Append.Visible = True
          Buttons.Delete.Hint = #21024#38500
          Buttons.Edit.Hint = #20462#25913
          Buttons.Edit.Visible = False
          Buttons.Post.Hint = #20445#23384
          Buttons.Post.Visible = False
          Buttons.Cancel.Hint = #21462#28040
          Buttons.Cancel.Visible = False
          Buttons.Refresh.Hint = #21047#26032
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Enabled = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Enabled = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Enabled = False
          Buttons.Filter.Visible = False
          DataSource = dSP_User
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
    end
  end
  object DADataSource1: TDADataSource
    DataSet = tbl_p_usergroup.Dataset
    DataTable = tbl_p_usergroup
    Left = 456
    Top = 213
  end
  object tbl_p_usergroup: TDAMemDataTable
    Fields = <
      item
        Name = 'ID'
        DataType = datAutoInc
        GeneratorName = 'p_usergroup'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'groupName'
        DataType = datWideString
        Size = 50
        Required = True
      end
      item
        Name = 'isAdmin'
        DataType = datBoolean
      end
      item
        Name = 'auText'
        DataType = datWideMemo
      end>
    LogicalName = 'p_usergroup'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    OnAfterScroll = tbl_p_usergroupAfterScroll
    AfterScroll = tbl_p_usergroupAfterScroll
    IndexDefs = <>
    Left = 561
    Top = 212
  end
  object dsP_Module: TDADataSource
    DataSet = tbl_p_module.Dataset
    DataTable = tbl_p_module
    Left = 455
    Top = 290
  end
  object tbl_p_module: TDAMemDataTable
    Fields = <
      item
        Name = 'ID'
        DataType = datAutoInc
        GeneratorName = 'p_module'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'actName'
        DataType = datWideString
        Size = 50
        Required = True
      end
      item
        Name = 'moduleName'
        DataType = datWideString
        Size = 50
        Required = True
      end
      item
        Name = 'parentAction'
        DataType = datWideString
        Size = 50
      end>
    LogicalName = 'p_module'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 585
    Top = 286
  end
  object dSP_User: TDADataSource
    DataSet = tbl_p_user.Dataset
    DataTable = tbl_p_user
    Left = 459
    Top = 352
  end
  object tbl_p_user: TDAMemDataTable
    Fields = <
      item
        Name = 'ID'
        DataType = datAutoInc
        GeneratorName = 'p_user'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'loginName'
        DataType = datWideString
        Size = 20
        Required = True
      end
      item
        Name = 'fullName'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'password'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'userGroup_ID'
        DataType = datWideString
        Size = 10
      end>
    LogicalName = 'p_user'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 553
    Top = 356
  end
end
