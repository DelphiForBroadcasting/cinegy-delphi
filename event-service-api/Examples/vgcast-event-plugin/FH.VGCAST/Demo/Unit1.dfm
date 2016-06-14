object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 712
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 56
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '127.0.0.1'
  end
  object Button1: TButton
    Left = 200
    Top = 22
    Width = 66
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 56
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '5001'
  end
  object Button2: TButton
    Left = 272
    Top = 22
    Width = 65
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 56
    Top = 105
    Width = 281
    Height = 21
    TabOrder = 4
    Text = 'c:\Users\esadmin\Desktop\matrix.tpl'
  end
  object Button3: TButton
    Left = 520
    Top = 165
    Width = 137
    Height = 25
    Caption = 'VgTpl.load'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 520
    Top = 196
    Width = 137
    Height = 25
    Caption = 'VgTpl.show'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 520
    Top = 227
    Width = 137
    Height = 25
    Caption = 'VgTpl.hide'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 520
    Top = 258
    Width = 137
    Height = 25
    Caption = 'VgTpl.del'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 680
    Top = 103
    Width = 137
    Height = 25
    Caption = 'vgcast.notify+'
    TabOrder = 9
    OnClick = Button7Click
  end
  object Edit4: TEdit
    Left = 56
    Top = 132
    Width = 281
    Height = 21
    TabOrder = 10
    Text = 'NewTemplate'
  end
  object Button8: TButton
    Left = 680
    Top = 134
    Width = 137
    Height = 25
    Caption = 'vgcast.sts'
    TabOrder = 11
    OnClick = Button8Click
  end
  object Memo1: TMemo
    Left = 56
    Top = 190
    Width = 281
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 12
  end
  object Button9: TButton
    Left = 360
    Top = 103
    Width = 137
    Height = 25
    Caption = 'Create Tpl'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 360
    Top = 134
    Width = 137
    Height = 25
    Caption = 'Destroy Tpl'
    TabOrder = 14
    OnClick = Button10Click
  end
  object ListBox1: TListBox
    Left = 56
    Top = 296
    Width = 281
    Height = 321
    ItemHeight = 13
    TabOrder = 15
    OnClick = ListBox1Click
  end
  object Button11: TButton
    Left = 680
    Top = 165
    Width = 137
    Height = 25
    Caption = 'vgcast.del *'
    TabOrder = 16
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 680
    Top = 196
    Width = 137
    Height = 25
    Caption = 'vgcast.sts template'
    TabOrder = 17
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 520
    Top = 134
    Width = 137
    Height = 25
    Caption = 'VgTpl.read'
    TabOrder = 18
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 520
    Top = 103
    Width = 137
    Height = 25
    Caption = 'VgTpl.play'
    TabOrder = 19
    OnClick = Button14Click
  end
end
