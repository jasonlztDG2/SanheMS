object fPR_WorkOrderDetail: TfPR_WorkOrderDetail
  Left = 0
  Top = 0
  Caption = #29983#20135#35746#21333
  ClientHeight = 512
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 784
    Height = 53
    Align = alBottom
    Color = clBtnHighlight
    Padding.Left = 1
    Padding.Top = 1
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 47
      Align = alClient
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 29
      Top = 16
      Width = 75
      Height = 25
      Caption = #30830#23450
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 76
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 29
      Top = 16
      Width = 30
      Height = 16
      Caption = 'PO#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 173
      Top = 16
      Width = 75
      Height = 16
      Caption = #23458#20154#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 317
      Top = 16
      Width = 75
      Height = 16
      Caption = #20986#36135#26085#26399#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 462
      Top = 16
      Width = 60
      Height = 16
      Caption = #29256#21333#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 29
      Top = 38
      Width = 116
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 173
      Top = 38
      Width = 116
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cxDateEdit2: TcxDateEdit
      Left = 317
      Top = 38
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 116
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 29
      Top = 38
      DataBinding.DataField = 'workNum'
      DataBinding.DataSource = duPub.ds_pu_workDetailList
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 116
    end
    object ComboBox1: TComboBox
      Left = 462
      Top = 38
      Width = 116
      Height = 21
      AutoDropDown = True
      Enabled = False
      TabOrder = 4
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 173
      Top = 38
      DataBinding.DataField = 'partnerNum'
      DataBinding.DataSource = duPub.ds_pu_workDetailList
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 116
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 317
      Top = 38
      DataBinding.DataField = 'deliveryDate'
      DataBinding.DataSource = duPub.ds_pu_workDetailList
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 116
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 462
      Top = 38
      DataBinding.DataField = 'versionOrderNum'
      DataBinding.DataSource = duPub.ds_pu_workDetailList
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 116
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 76
    Width = 784
    Height = 383
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 782
      Height = 381
      ActivePage = TabSheet5
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #35814#24773
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 774
          Height = 353
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel16: TPanel
            Left = 451
            Top = 1
            Width = 320
            Height = 351
            Align = alLeft
            Color = clGradientInactiveCaption
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            ParentBackground = False
            TabOrder = 0
            object Label3: TLabel
              Left = 6
              Top = 13
              Width = 45
              Height = 16
              Caption = #21517#31216#65306
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 6
              Top = 43
              Width = 45
              Height = 16
              Caption = #22791#27880#65306
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 166
              Top = 13
              Width = 45
              Height = 16
              Caption = #25968#37327#65306
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 263
              Top = 13
              Width = 15
              Height = 16
              Caption = #39030
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Edit4: TEdit
              Left = 48
              Top = 10
              Width = 97
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit17: TEdit
              Left = 208
              Top = 10
              Width = 49
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Memo1: TMemo
              Left = 48
              Top = 40
              Width = 257
              Height = 273
              TabOrder = 2
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 49
              Top = 10
              DataBinding.DataField = 'titleName'
              DataBinding.DataSource = duPub.ds_pu_workDetailList
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 96
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 209
              Top = 10
              DataBinding.DataField = 'titleCount'
              DataBinding.DataSource = duPub.ds_pu_workDetailList
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 48
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 46
              Top = 40
              DataBinding.DataField = 'titleMemo'
              DataBinding.DataSource = duPub.ds_pu_workDetailList
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Visible = False
              Width = 259
            end
          end
          object Panel17: TPanel
            Left = 1
            Top = 1
            Width = 450
            Height = 351
            Align = alLeft
            Color = clGradientInactiveCaption
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            ParentBackground = False
            TabOrder = 1
            object cxGrid1: TcxGrid
              Left = 3
              Top = 43
              Width = 444
              Height = 305
              Align = alBottom
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = duPub.ds_pu_workDetailTitle
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CellAutoHeight = True
                OptionsView.CellTextMaxLineCount = 5
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object cxGrid1DBTableView1RecID: TcxGridDBColumn
                  DataBinding.FieldName = 'RecID'
                  Visible = False
                end
                object cxGrid1DBTableView1partOne: TcxGridDBColumn
                  DataBinding.FieldName = 'partOne'
                  PropertiesClassName = 'TcxMemoProperties'
                end
                object cxGrid1DBTableView1partTwo: TcxGridDBColumn
                  DataBinding.FieldName = 'partTwo'
                  PropertiesClassName = 'TcxMemoProperties'
                end
                object cxGrid1DBTableView1partThree: TcxGridDBColumn
                  DataBinding.FieldName = 'partThree'
                  PropertiesClassName = 'TcxMemoProperties'
                end
                object cxGrid1DBTableView1partFour: TcxGridDBColumn
                  DataBinding.FieldName = 'partFour'
                  PropertiesClassName = 'TcxMemoProperties'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #22270#29255
        ImageIndex = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 354
          Height = 353
          Align = alLeft
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 181
            Width = 352
            Height = 180
            Align = alTop
            Color = clGradientInactiveCaption
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            ParentBackground = False
            TabOrder = 0
            object Image3: TImage
              Left = 3
              Top = 65
              Width = 161
              Height = 105
              Hint = #21452#20987#36873#25321#22270#29255
              Proportional = True
              Stretch = True
            end
            object Image1: TImage
              Left = 186
              Top = 65
              Width = 161
              Height = 105
              Hint = #21452#20987#36873#25321#22270#29255
              Proportional = True
              Stretch = True
            end
            object Edit9: TEdit
              Left = 3
              Top = 5
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit10: TEdit
              Left = 3
              Top = 35
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit11: TEdit
              Left = 186
              Top = 5
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object Edit12: TEdit
              Left = 186
              Top = 35
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 352
            Height = 180
            Align = alTop
            Color = clGradientInactiveCaption
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            ParentBackground = False
            TabOrder = 1
            object Image4: TImage
              Left = 186
              Top = 65
              Width = 161
              Height = 105
              Hint = #21452#20987#36873#25321#22270#29255
              Proportional = True
              Stretch = True
            end
            object Image2: TImage
              Left = 3
              Top = 64
              Width = 161
              Height = 105
              Hint = #21452#20987#36873#25321#22270#29255
              ParentShowHint = False
              Proportional = True
              ShowHint = True
              Stretch = True
            end
            object Edit5: TEdit
              Left = 3
              Top = 5
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit6: TEdit
              Left = 3
              Top = 35
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit7: TEdit
              Left = 186
              Top = 5
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object Edit8: TEdit
              Left = 186
              Top = 35
              Width = 161
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
        end
        object Panel7: TPanel
          Left = 354
          Top = 0
          Width = 420
          Height = 353
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Panel13: TPanel
            Left = 1
            Top = 300
            Width = 418
            Height = 52
            Align = alBottom
            Color = clGradientInactiveCaption
            Padding.Left = 2
            Padding.Top = 2
            Padding.Right = 2
            Padding.Bottom = 2
            ParentBackground = False
            TabOrder = 0
            object Memo3: TMemo
              Left = 3
              Top = 3
              Width = 412
              Height = 46
              Align = alClient
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 1
            Top = 1
            Width = 418
            Height = 299
            Align = alClient
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 1
            object Image5: TImage
              Left = 1
              Top = 80
              Width = 416
              Height = 218
              Hint = #21452#20987#36873#25321#22270#29255
              Align = alClient
              Proportional = True
              Stretch = True
              ExplicitLeft = 90
              ExplicitTop = 121
              ExplicitWidth = 161
              ExplicitHeight = 105
            end
            object Memo4: TMemo
              Left = 1
              Top = 1
              Width = 416
              Height = 79
              Hint = #22791#27880#25991#26412
              Align = alTop
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #29992#26009
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 774
          Height = 353
          Align = alClient
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 376
            Height = 351
            Align = alLeft
            Color = clGradientInactiveCaption
            Padding.Left = 1
            Padding.Top = 1
            Padding.Right = 3
            Padding.Bottom = 3
            ParentBackground = False
            TabOrder = 0
            object cxGrid2: TcxGrid
              Left = 2
              Top = 43
              Width = 370
              Height = 304
              Align = alBottom
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = duPub.ds_pu_workDetailMaterial
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                object cxGridDBTableView1RecID: TcxGridDBColumn
                  DataBinding.FieldName = 'RecID'
                  Visible = False
                end
                object cxGridDBTableView1name: TcxGridDBColumn
                  DataBinding.FieldName = 'name'
                  PropertiesClassName = 'TcxMemoProperties'
                  Width = 80
                end
                object cxGridDBTableView1material: TcxGridDBColumn
                  DataBinding.FieldName = 'material'
                  PropertiesClassName = 'TcxMemoProperties'
                  Width = 208
                end
                object cxGridDBTableView1isOwn: TcxGridDBColumn
                  DataBinding.FieldName = 'isOwn'
                  Width = 80
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
          end
          object Panel9: TPanel
            Left = 377
            Top = 1
            Width = 396
            Height = 351
            Align = alClient
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 1
            object Label9: TLabel
              Left = 6
              Top = 21
              Width = 30
              Height = 16
              Caption = #21253#35013
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object RichEdit1: TRichEdit
              Left = 6
              Top = 44
              Width = 379
              Height = 275
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Zoom = 100
            end
            object Button3: TButton
              Left = 61
              Top = 13
              Width = 75
              Height = 25
              Caption = #25554#20837#22270#29255
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Button4: TButton
              Left = 142
              Top = 13
              Width = 75
              Height = 25
              Caption = #28165#31354
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 94
              Top = 152
              DataBinding.DataField = 'packaging'
              DataBinding.DataSource = duPub.ds_pu_workDetailList
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Visible = False
              Width = 259
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #22791#27880
        ImageIndex = 3
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 774
          Height = 353
          Align = alClient
          Color = clGradientInactiveCaption
          Padding.Left = 2
          Padding.Top = 2
          Padding.Right = 2
          Padding.Bottom = 2
          ParentBackground = False
          TabOrder = 0
          object Memo2: TMemo
            Left = 3
            Top = 3
            Width = 768
            Height = 347
            Align = alClient
            TabOrder = 0
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 86
            Top = 144
            DataBinding.DataField = 'memo'
            DataBinding.DataSource = duPub.ds_pu_workDetailList
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Visible = False
            Width = 259
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = #29983#20135#29992#26009
        ImageIndex = 4
        object Panel18: TPanel
          Left = 0
          Top = 0
          Width = 774
          Height = 48
          Align = alClient
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Label10: TLabel
            Left = 8
            Top = 18
            Width = 75
            Height = 16
            Caption = #26448#26009#25104#26412#65306
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 48
          Width = 774
          Height = 305
          Align = alBottom
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds_pu_workMaterial
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1RecID: TcxGridDBColumn
              DataBinding.FieldName = 'RecID'
              Visible = False
            end
            object cxGrid3DBTableView1productName: TcxGridDBColumn
              DataBinding.FieldName = 'productName'
            end
            object cxGrid3DBTableView1color: TcxGridDBColumn
              DataBinding.FieldName = 'color'
            end
            object cxGrid3DBTableView1price: TcxGridDBColumn
              DataBinding.FieldName = 'price'
            end
            object cxGrid3DBTableView1needQty: TcxGridDBColumn
              DataBinding.FieldName = 'needQty'
            end
            object cxGrid3DBTableView1receiveQty: TcxGridDBColumn
              DataBinding.FieldName = 'receiveQty'
            end
            object cxGrid3DBTableView1isOwn: TcxGridDBColumn
              DataBinding.FieldName = 'isOwn'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 272
    Top = 128
  end
  object tbl_pu_workMaterial: TDAMemDataTable
    Fields = <
      item
        Name = 'workNum'
        DataType = datWideString
        Size = 50
        Required = True
      end
      item
        Name = 'productId'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'needQty'
        DataType = datDecimal
        DecimalPrecision = 18
        DecimalScale = 4
        Required = True
      end
      item
        Name = 'receiveQty'
        DataType = datDecimal
        DecimalPrecision = 18
        DecimalScale = 4
      end
      item
        Name = 'isOwn'
        DataType = datWideString
        Size = 10
      end
      item
        Name = 'productId_1'
        DataType = datAutoInc
      end
      item
        Name = 'productCode'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'productName'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'price'
        DataType = datDecimal
        DecimalPrecision = 19
        DecimalScale = 4
      end
      item
        Name = 'kind'
        DataType = datInteger
      end
      item
        Name = 'style'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'spec'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'color'
        DataType = datWideString
        Size = 10
      end
      item
        Name = 'unit'
        DataType = datWideString
        Size = 10
      end
      item
        Name = 'productType'
        DataType = datWideString
        Size = 20
      end
      item
        Name = 'tempNum'
        DataType = datWideString
        Size = 50
      end>
    LogicalName = 'pu_workMaterial'
    Params = <>
    RemoteDataAdapter = duPub.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming, soDisableFiltering]
    IndexDefs = <>
    Left = 168
    Top = 484
  end
  object ds_pu_workMaterial: TDADataSource
    DataSet = tbl_pu_workMaterial.Dataset
    DataTable = tbl_pu_workMaterial
    Left = 176
    Top = 484
  end
end
