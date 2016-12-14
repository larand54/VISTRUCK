object frmPkgLabelSetup: TfrmPkgLabelSetup
  Left = 0
  Top = 0
  Caption = 'Inst'#228'llningar PaketLappsutskrift'
  ClientHeight = 234
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 37
    Top = 164
    Width = 68
    Height = 16
    Caption = 'Antal kopior'
  end
  object Label2: TLabel
    Left = 37
    Top = 134
    Width = 61
    Height = 16
    Caption = 'Rapportval'
  end
  object rgbDimension: TRadioGroup
    Left = 24
    Top = 16
    Width = 81
    Height = 81
    Caption = 'Dimension'
    ItemIndex = 0
    Items.Strings = (
      'mm'
      'tum')
    TabOrder = 0
  end
  object rgbLength: TRadioGroup
    Left = 128
    Top = 16
    Width = 81
    Height = 105
    Caption = 'L'#228'ngd'
    ItemIndex = 0
    Items.Strings = (
      'mm'
      'tum'
      'fot')
    TabOrder = 1
  end
  object rgbLanguage: TRadioGroup
    Left = 232
    Top = 16
    Width = 81
    Height = 81
    Caption = 'Spr'#229'k'
    ItemIndex = 1
    Items.Strings = (
      'Svenska'
      'Engelska')
    TabOrder = 2
  end
  object ButtonedEdit1: TButtonedEdit
    Left = 344
    Top = 664
    Width = 121
    Height = 24
    TabOrder = 3
    Text = 'ButtonedEdit1'
  end
  object UpDown1: TUpDown
    Left = 161
    Top = 161
    Width = 20
    Height = 24
    Associate = edNoOfCopies
    Min = 1
    Max = 5
    Position = 1
    TabOrder = 4
  end
  object edNoOfCopies: TEdit
    Left = 128
    Top = 161
    Width = 33
    Height = 24
    TabOrder = 5
    Text = '1'
  end
  object BitBtn1: TBitBtn
    Left = 238
    Top = 161
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 6
  end
  object BitBtn2: TBitBtn
    Left = 238
    Top = 201
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 7
  end
  object cboReportName: TComboBox
    Left = 128
    Top = 131
    Width = 185
    Height = 24
    TabOrder = 8
    Text = 'cboReportName'
  end
end
