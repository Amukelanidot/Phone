object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 400
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtName: TEdit
    Left = 17
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'Enter your name'
  end
  object rgpColor: TRadioGroup
    Left = 17
    Top = 49
    Width = 185
    Height = 105
    Caption = 'Color'
    Items.Strings = (
      'Blue'
      'Green'
      'Purple')
    TabOrder = 1
  end
  object rgpTestmark: TRadioGroup
    Left = 17
    Top = 176
    Width = 185
    Height = 153
    Caption = 'Test mark'
    Items.Strings = (
      '80+'
      '70-79'
      '60-69'
      '50-59'
      '40-49'
      'Less than 40')
    TabOrder = 2
  end
  object btnShow: TButton
    Left = 17
    Top = 352
    Width = 128
    Height = 25
    Caption = 'Show'
    TabOrder = 3
    OnClick = btnShowClick
  end
  object btnReset: TButton
    Left = 240
    Top = 304
    Width = 121
    Height = 25
    Caption = 'Reset'
    TabOrder = 4
    OnClick = btnResetClick
  end
  object btnClose: TButton
    Left = 240
    Top = 352
    Width = 121
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object r1: TRichEdit
    Left = 240
    Top = 65
    Width = 265
    Height = 216
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'r1')
    ParentFont = False
    TabOrder = 6
    Zoom = 100
  end
  object cmbTime: TComboBox
    Left = 240
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 7
    Text = 'Select a time'
    Items.Strings = (
      '1'
      '3'
      '7')
  end
end
