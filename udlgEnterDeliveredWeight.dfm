object dlgEnterDeliveredWeight: TdlgEnterDeliveredWeight
  Left = 0
  Top = 0
  Caption = 'Ange levererad vikt'
  ClientHeight = 166
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblWeight: TLabel
    Left = 25
    Top = 99
    Width = 113
    Height = 13
    Caption = 'Levererad vikt (kg):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLoad: TLabel
    Left = 98
    Top = 33
    Width = 51
    Height = 19
    Caption = 'lblLoad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblReference: TLabel
    Left = 182
    Top = 56
    Width = 86
    Height = 19
    Caption = 'lblReference'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLoadText: TLabel
    Left = 25
    Top = 31
    Width = 40
    Height = 19
    Caption = 'Last:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblReferenceText: TLabel
    Left = 25
    Top = 56
    Width = 144
    Height = 19
    Caption = 'Address/Kundref:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProductText: TLabel
    Left = 25
    Top = 8
    Width = 71
    Height = 19
    Caption = 'Produkt:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblProduct: TLabel
    Left = 98
    Top = 8
    Width = 71
    Height = 19
    Caption = 'lblProduct'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object medtWeight: TMaskEdit
    Left = 160
    Top = 96
    Width = 39
    Height = 21
    EditMask = '99999;0;_'
    MaxLength = 5
    TabOrder = 0
    Text = ''
  end
  object bbtnOK: TBitBtn
    Left = 25
    Top = 128
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbtnCancel: TBitBtn
    Left = 322
    Top = 128
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
end
