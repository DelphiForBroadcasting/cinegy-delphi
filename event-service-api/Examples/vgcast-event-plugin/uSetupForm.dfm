object SetupForm: TSetupForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SetupForm'
  ClientHeight = 187
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 425
    Height = 105
    Caption = 'Options'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 64
      Height = 13
      Caption = 'VGCast Host:'
    end
    object Label3: TLabel
      Left = 16
      Top = 66
      Width = 103
      Height = 13
      Caption = 'Repository Template:'
    end
    object Edit1: TEdit
      Left = 136
      Top = 25
      Width = 231
      Height = 21
      TabOrder = 0
      TextHint = '127.0.0.1'
    end
    object Edit2: TEdit
      Left = 373
      Top = 25
      Width = 41
      Height = 21
      TabOrder = 1
      TextHint = '5001'
    end
    object Edit3: TEdit
      Left = 136
      Top = 63
      Width = 197
      Height = 21
      TabOrder = 2
      TextHint = 'unc path'
    end
    object Button1: TButton
      Left = 339
      Top = 61
      Width = 75
      Height = 25
      Caption = 'Browse'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 168
    Width = 444
    Height = 19
    Panels = <
      item
        Width = 500
      end>
    ExplicitLeft = -8
    ExplicitTop = 162
  end
  object Button2: TButton
    Left = 361
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 2
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 120
    object N1: TMenuItem
      Caption = '?'
      OnClick = N1Click
    end
  end
end
