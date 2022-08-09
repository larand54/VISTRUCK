object fSetupForm: TfSetupForm
  Left = 0
  Top = 0
  Caption = 'Setup'
  ClientHeight = 373
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object rgTabCaption: TcxDBRadioGroup
    Left = 24
    Top = 8
    Caption = 'Fliknamn'
    DataBinding.DataField = 'RegPointNo'
    DataBinding.DataSource = dmcOrder.ds_Props
    Properties.Items = <
      item
        Caption = 'B'#229'da'
        Value = 0
      end
      item
        Caption = 'Lastnr'
        Value = 1
      end
      item
        Caption = 'Last ID'
        Value = 2
      end>
    TabOrder = 0
    Height = 96
    Width = 105
  end
  object cxButton1: TcxButton
    Left = 168
    Top = 312
    Width = 129
    Height = 49
    Caption = 'Close'
    ModalResult = 8
    TabOrder = 1
  end
end
