object OKHelpBottomDlg: TOKHelpBottomDlg
  Left = 335
  Top = 193
  Width = 445
  Height = 244
  ActiveControl = EFD_Name
  Caption = 'Byt anv'#228'ndare'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 49
    Height = 13
    Caption = 'FD Namn:'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 43
    Height = 13
    Caption = 'Databas:'
  end
  object EFD_Name: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 29
    Width = 153
    Height = 25
    Caption = 'H'#228'mta standard FD namn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object eDatabas: TEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 216
    Top = 69
    Width = 153
    Height = 25
    Caption = 'H'#228'mta standard databas'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 184
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkCancel
  end
end
