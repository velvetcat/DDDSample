object PersonForm: TPersonForm
  Left = 436
  Top = 318
  Width = 349
  Height = 191
  Caption = 'Person Properties'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    333
    153)
  PixelsPerInch = 96
  TextHeight = 13
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 116
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    DesignSize = (
      333
      116)
    object lbFirstName: TLabel
      Left = 15
      Top = 21
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'First Name:'
    end
    object lbLastName: TLabel
      Left = 15
      Top = 47
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Last Name:'
    end
    object lbBirthdate: TLabel
      Left = 15
      Top = 74
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Birthdate:'
    end
    object edFirstName: TEdit
      Left = 86
      Top = 17
      Width = 212
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object edLastName: TEdit
      Left = 86
      Top = 44
      Width = 212
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object edBirthdate: TDateTimePicker
      Left = 86
      Top = 71
      Width = 212
      Height = 21
      Anchors = [akTop, akRight]
      Date = 41380.595542534720000000
      Time = 41380.595542534720000000
      TabOrder = 2
    end
  end
  object btnOk: TButton
    Left = 169
    Top = 123
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 250
    Top = 123
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
