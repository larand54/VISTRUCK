object fSelectWoodxClient: TfSelectWoodxClient
  Left = 229
  Top = 107
  Width = 454
  Height = 229
  ActiveControl = lcVisClientName
  Caption = 'V'#228'lj vis klient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object teWoodx_Name1: TcxDBTextEdit
    Left = 104
    Top = 48
    DataBinding.DataField = 'WoodX_ClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 305
  end
  object tePartyIdentifier: TcxDBTextEdit
    Left = 104
    Top = 72
    DataBinding.DataField = 'PartyIdentifier'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 305
  end
  object lcVisClientName: TcxDBLookupComboBox
    Left = 104
    Top = 104
    DataBinding.DataField = 'VisClientName'
    DataBinding.DataSource = dm_ImportWoodx.ds_mtClient
    Properties.ListColumns = <>
    TabOrder = 2
    Width = 305
  end
  object Panel1: TPanel
    Left = 0
    Top = 161
    Width = 446
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object cxLabel3: TcxLabel
    Left = 32
    Top = 76
    Caption = 'Er identifier:'
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 52
    Caption = 'Ert namn:'
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 108
    Caption = 'VIS namn:'
  end
end
