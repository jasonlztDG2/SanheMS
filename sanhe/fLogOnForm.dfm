object LoginForm: TLoginForm
  Left = 408
  Top = 136
  ActiveControl = edUsername
  BorderStyle = bsDialog
  Caption = 'Data Abstract Server Login'
  ClientHeight = 121
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    347
    121)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 15
    Width = 56
    Height = 13
    Caption = '&User Name:'
    FocusControl = edUsername
  end
  object Label2: TLabel
    Left = 8
    Top = 42
    Width = 50
    Height = 13
    Caption = '&Password:'
    FocusControl = edPassword
  end
  object edUsername: TEdit
    Left = 91
    Top = 12
    Width = 248
    Height = 21
    TabOrder = 0
    OnChange = edPasswordChange
  end
  object edPassword: TEdit
    Left = 91
    Top = 39
    Width = 248
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnChange = edPasswordChange
  end
  object bOk: TButton
    Left = 183
    Top = 88
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object bCancel: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
  object cbStorePassword: TCheckBox
    Left = 8
    Top = 66
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Store password'
    TabOrder = 2
  end
end
