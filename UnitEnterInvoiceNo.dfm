object FormEnterInvoiceNo: TFormEnterInvoiceNo
  Left = 592
  Top = 542
  Width = 353
  Height = 165
  ActiveControl = eFakturanr
  Caption = 'Enter Invoice Number'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 88
    Top = 96
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 96
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
  object eFakturanr: TcxMaskEdit
    Left = 104
    Top = 8
    Properties.MaxLength = 10
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 14
    Caption = 'Fakturanr:'
  end
  object ePrefix: TcxMaskEdit
    Left = 104
    Top = 40
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object LPrefix: TcxLabel
    Left = 40
    Top = 46
    Caption = 'Prefix:'
    Visible = False
  end
end
