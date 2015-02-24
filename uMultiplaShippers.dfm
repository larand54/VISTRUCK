object fMultiplaShippers: TfMultiplaShippers
  Left = 192
  Top = 107
  Width = 755
  Height = 547
  Caption = 'AVR'#196'KNA FRAKTKOSTNADER'
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
  object Panel1: TPanel
    Left = 0
    Top = 467
    Width = 747
    Height = 53
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 240
      Top = 13
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = bbOKClick
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 352
      Top = 13
      Width = 75
      Height = 25
      Caption = #197'ngra'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 89
    Align = alTop
    TabOrder = 1
    object bTaBortRad: TButton
      Left = 24
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Ta bort'
      TabOrder = 0
      OnClick = bTaBortRadClick
    end
    object Memo1: TMemo
      Left = 264
      Top = 8
      Width = 457
      Height = 73
      Lines.Strings = (
        'Mata in spedit'#246'rens fakturanr.'
        
          'Om du '#229'ngrar en avr'#228'kning f'#246'r en spedit'#246'r, markera och klicka p'#229 +
          ' ta bort knappen.'
        ''
        'Klicka p'#229' OK f'#246'r att skapa avr'#228'kningar.'
        'Klicka p'#229' '#229'ngra f'#246'r att avbryta.')
      TabOrder = 1
    end
  end
  object grdSpedsInvoice: TcxGrid
    Left = 0
    Top = 89
    Width = 747
    Height = 378
    Align = alClient
    TabOrder = 2
    object grdSpedsInvoiceDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmModule1.dsShippers
      DataController.KeyFieldNames = 'AvrakningsNr'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSpedsInvoiceDBTableView1Shipper: TcxGridDBColumn
        DataBinding.FieldName = 'Shipper'
      end
      object grdSpedsInvoiceDBTableView1ShippersInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'ShippersInvoiceNo'
      end
      object grdSpedsInvoiceDBTableView1ShipperNo: TcxGridDBColumn
        DataBinding.FieldName = 'ShipperNo'
      end
      object grdSpedsInvoiceDBTableView1AvrakningsNr: TcxGridDBColumn
        DataBinding.FieldName = 'AvrakningsNr'
      end
    end
    object grdSpedsInvoiceLevel1: TcxGridLevel
      GridView = grdSpedsInvoiceDBTableView1
    end
  end
end
