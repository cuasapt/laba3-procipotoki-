object Form1: TForm1
  Left = 192
  Top = 107
  Width = 414
  Height = 459
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 336
    Width = 57
    Height = 29
  end
  object Memo: TMemo
    Left = 48
    Top = 56
    Width = 289
    Height = 249
    Lines.Strings = (
      'Memo')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 64
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 160
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Pause'
    TabOrder = 3
    OnClick = Button3Click
  end
end
