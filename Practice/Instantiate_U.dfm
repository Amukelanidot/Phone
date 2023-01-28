object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 404
  ClientWidth = 554
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
  object edtname: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Please enter your name'
  end
  object sedscore: TSpinEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 22
    MaxValue = 100
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btndisplay: TButton
    Left = 16
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Display'
    TabOrder = 2
    OnClick = btndisplayClick
  end
  object btnshape: TButton
    Left = 16
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Shape'
    TabOrder = 3
    OnClick = btnshapeClick
  end
  object redshow: TRichEdit
    Left = 208
    Top = 16
    Width = 185
    Height = 62
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redshow')
    ParentFont = False
    TabOrder = 4
    Zoom = 100
  end
  object rgpcolor: TRadioGroup
    Left = 208
    Top = 96
    Width = 185
    Height = 97
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Blue'
      'Purple'
      'Green'
      'Yellow')
    TabOrder = 5
    OnClick = rgpcolorClick
  end
  object ComboBox1: TComboBox
    Left = 208
    Top = 216
    Width = 185
    Height = 21
    TabOrder = 6
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Small'
      'Medium'
      'Large')
  end
end
