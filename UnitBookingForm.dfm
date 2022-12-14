object FormBookingForm: TFormBookingForm
  Left = 231
  Top = 147
  ActiveControl = eReadyDate
  Caption = 'BOOKING'
  ClientHeight = 826
  ClientWidth = 1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1083
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label27: TLabel
      Left = 24
      Top = 18
      Width = 51
      Height = 13
      Caption = 'Bokningnr:'
    end
    object Label28: TLabel
      Left = 504
      Top = 12
      Width = 47
      Height = 13
      Caption = 'Redodag:'
    end
    object Label29: TLabel
      Left = 24
      Top = 88
      Width = 31
      Height = 13
      Caption = 'LO Nr:'
    end
    object Label30: TLabel
      Left = 264
      Top = 86
      Width = 51
      Height = 13
      Caption = 'Lev.villkor:'
    end
    object Label31: TLabel
      Left = 504
      Top = 102
      Width = 43
      Height = 13
      Caption = 'Notering:'
    end
    object Label32: TLabel
      Left = 504
      Top = 34
      Width = 42
      Height = 13
      Caption = 'Spedit'#246'r:'
    end
    object Label33: TLabel
      Left = 504
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Frakt:'
    end
    object Label34: TLabel
      Left = 504
      Top = 79
      Width = 48
      Height = 13
      Caption = 'Transport:'
    end
    object Label42: TLabel
      Left = 24
      Top = 42
      Width = 43
      Height = 13
      Caption = 'Kontrakt:'
    end
    object Label43: TLabel
      Left = 24
      Top = 66
      Width = 43
      Height = 13
      Caption = 'Kund ref:'
    end
    object Label44: TLabel
      Left = 264
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Kund:'
    end
    object Label45: TLabel
      Left = 264
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Agent:'
    end
    object Label46: TLabel
      Left = 264
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Lev.period:'
    end
    object eBookingNo: TcxDBTextEdit
      Left = 80
      Top = 10
      DataBinding.DataField = 'BookingNo'
      DataBinding.DataSource = dm_Booking.dsBooking
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 11
      Width = 169
    end
    object eShippingPlanNo: TcxDBTextEdit
      Left = 80
      Top = 80
      DataBinding.DataField = 'ShippingPlanNo'
      DataBinding.DataSource = dm_Booking.dsBooking
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 12
      Width = 169
    end
    object eReadyDate: TcxDBTextEdit
      Left = 560
      Top = 4
      DataBinding.DataField = 'PreliminaryRequestedPeriod'
      DataBinding.DataSource = dm_Booking.dsBooking
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Width = 169
    end
    object leDelTerms: TcxDBLookupComboBox
      Left = 320
      Top = 78
      DataBinding.DataField = 'DeliveryTermsNo'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.DropDownWidth = 350
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'DeliveryTerm_No'
      Properties.ListColumns = <
        item
          Caption = 'Leveransvillkor'
          FieldName = 'DeliveryTerm'
        end
        item
          Caption = 'Beskrivning'
          FieldName = 'Description'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsContact.dsDelTerms
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 14
      Width = 169
    end
    object ePanicNote: TcxDBTextEdit
      Left = 560
      Top = 94
      DataBinding.DataField = 'Panic_Note'
      DataBinding.DataSource = dm_Booking.dsBooking
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 6
      Width = 329
    end
    object lcShipper: TcxDBLookupComboBox
      Left = 560
      Top = 26
      DataBinding.DataField = 'ShippingCompanyNo'
      DataBinding.DataSource = dm_Booking.dsBooking
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dm_Booking.dsShippers
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Width = 329
    end
    object eFreightCost: TcxDBTextEdit
      Left = 688
      Top = 48
      DataBinding.DataField = 'FreightCost'
      DataBinding.DataSource = dm_Booking.dsBooking
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 3
      Width = 73
    end
    object lcCurrency: TcxDBLookupComboBox
      Left = 560
      Top = 48
      DataBinding.DataField = 'FreightCostCurrency'
      DataBinding.DataSource = dm_Booking.dsBooking
      Properties.KeyFieldNames = 'CurrencyNo'
      Properties.ListColumns = <
        item
          Caption = 'Valuta'
          FieldName = 'CurrencyName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsSystem.ds_Currency
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 2
      Width = 121
    end
    object lcFreightVolUnit: TcxDBLookupComboBox
      Left = 768
      Top = 48
      DataBinding.DataField = 'FreightCostVolUnit'
      DataBinding.DataSource = dm_Booking.dsBooking
      Properties.KeyFieldNames = 'TemplateUnitNo'
      Properties.ListColumns = <
        item
          Caption = 'Volymenhet'
          FieldName = 'TemplateUnitName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsContact.dsPriceUnit
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      Width = 121
    end
    object lcTypeofbooking: TcxDBLookupComboBox
      Left = 560
      Top = 71
      DataBinding.DataField = 'BookingTypeNo'
      DataBinding.DataSource = dm_Booking.dsBooking
      Properties.KeyFieldNames = 'BookingTypeNo'
      Properties.ListColumns = <
        item
          Caption = 'Typ av frakt'
          FieldName = 'BookingType'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmsSystem.dsBookingType
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 5
      Width = 241
    end
    object teOrderNoText: TcxDBTextEdit
      Left = 80
      Top = 34
      DataBinding.DataField = 'OrderNoText'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 13
      Width = 169
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 80
      Top = 58
      DataBinding.DataField = 'Reference'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 15
      Width = 169
    end
    object trCustomer: TcxDBTextEdit
      Left = 320
      Top = 8
      DataBinding.DataField = 'Customer'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 16
      Width = 169
    end
    object teAgent: TcxDBTextEdit
      Left = 320
      Top = 32
      DataBinding.DataField = 'Agent'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 8
      Width = 169
    end
    object teETDYearWeek: TcxDBTextEdit
      Left = 320
      Top = 56
      DataBinding.DataField = 'ETDYearWeek'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 9
      Width = 65
    end
    object teETDWeekEnd: TcxDBTextEdit
      Left = 392
      Top = 56
      DataBinding.DataField = 'ETDWeekEnd'
      DataBinding.DataSource = dm_Booking.dsAvropInfo
      Enabled = False
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 10
      Width = 65
    end
    object cxButton2: TcxButton
      Left = 928
      Top = 8
      Width = 153
      Height = 41
      Action = acPrint
      TabOrder = 7
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 343
    Width = 1083
    Height = 483
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PanelConfirm: TPanel
      Left = 0
      Top = 376
      Width = 1083
      Height = 107
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        1083
        107)
      object Label36: TLabel
        Left = 16
        Top = 20
        Width = 70
        Height = 13
        Caption = 'Spedit'#246'rens id:'
      end
      object Label37: TLabel
        Left = 280
        Top = 20
        Width = 33
        Height = 13
        Caption = 'Trp ID:'
      end
      object Label38: TLabel
        Left = 496
        Top = 20
        Width = 32
        Height = 13
        Caption = 'Fartyg:'
      end
      object Label39: TLabel
        Left = 496
        Top = 44
        Width = 52
        Height = 13
        Caption = 'ETD (F10):'
      end
      object Label40: TLabel
        Left = 720
        Top = 44
        Width = 24
        Height = 13
        Caption = 'ETA:'
      end
      object Label41: TLabel
        Left = 16
        Top = 44
        Width = 88
        Height = 13
        Caption = 'Spedit'#246'rensdatum:'
      end
      object bbNewCarrier: TBitBtn
        Left = 1051
        Top = 12
        Width = 30
        Height = 24
        Action = acNewVesselName
        Anchors = [akTop, akRight]
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FF00FF00FF00
          FF0000446900FF00FF0000446900FF00FF00FF00FF00004E7700FF00FF000044
          690000446900004E7700004E7700FF00FF000044690000446900FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000044690000446900FF00FF00FF8C2000FF8C
          2000FF00FF00FF00FF0000446900FF00FF00004E7700FF00FF0000446900FF00
          FF00004E7700FF00FF000044690000446900FF00FF00004E7700FF00FF000044
          6900FF00FF000044690000446900004E7700004E7700FF00FF00FF9E4600FF8C
          2000FF8C2000FF8C2000004E7700004E77000044690000446900004E7700004E
          7700FF00FF0000446900FF00FF00004E7700004E7700FF00FF00004469000044
          690000446900004E7700004E7700FF00FF000044690000446900FF9E4600FF9E
          4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000004E7700FF00FF000044
          690000446900004E7700004E7700FF00FF00FF00FF0000446900004469000044
          6900004E7700FF00FF00FF00FF0000446900004E7700FF00FF00FF8C2000FF8C
          2000FF8C20002600BF002600BF002600BF002600BF002600BF002600BF002600
          BF00004E7700FF00FF00FF00FF000044690000446900004E7700004E7700004E
          7700FF00FF00FF00FF0000446900004E7700FF00FF0000446900FF8C2000FF8C
          20002600BF002600BF002600BF002600BF002600BF002600BF002600BF002600
          BF002600BF002600BF0000446900004E7700004E7700FF00FF00FF00FF00FF00
          FF000044690000446900004E7700FF00FF0000446900004E7700FF8C20002600
          BF002600BF002400B3002400B3002400B3002400B3002400B3002400B3002600
          BF002600BF002600BF002600BF002600BF002600BF00FF00FF00004469000044
          690000446900004E7700FF00FF0000446900004E770000446900FF8C20002600
          BF002400B3008A8A8A008A8A8A008A8A8A000000000000CEE90000B0CA002400
          B3002400B3002400B3002600BF002600BF002600BF002600BF002600BF00004E
          7700004E7700FF00FF0000446900004E77000044690000446900FF8C20002400
          B3008A8A8A008A8A8A00000000000000000000B5CE0000C4DF0000CEE90000B0
          CA0000A4BB0000B5CE002400B3002400B3002400B3002600BF002600BF002600
          BF002600BF002600BF00004E77000044690000446900004E7700FF8C20008080
          80008A8A8A00000000000000000000B0CA0000B0CA0000B5CE0000C4DF0000B0
          CA00009CB30000CEE90000B5CE0000B0CA00009CB3002400B3002400B3002400
          B3002600BF002600BF002600BF002600BF002600BF0000446900FF8C20008080
          80008A8A8A008A8A8A008A8A8A0000000000000000000000000000CEE90000CE
          E90000B0CA0000B5CE0000CEE90000A4BB0000B0CA0000C4DF00000000008A8A
          8A002400B3002400B3002400B3002600BF002600BF002600BF00FF8C2000FF8C
          2000808080008A8A8A008A8A8A008A8A8A008A8A8A008A8A8A00000000000000
          000000A4BB0000B0CA0000B5CE00009CB30000A4BB0000000000000000007474
          74007474740074747400747474002400B3002400B3002400B300FF8C2000FF8C
          2000FF8C20008080800080808000808080008A8A8A008A8A8A008A8A8A008A8A
          8A0000000000000000000000000000B5CE000000000074747400747474007474
          7400FFFFFF00FFFFFF007474740074747400747474002400B300FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C20008080800080808000808080008A8A
          8A008A8A8A008A8A8A008A8A8A00000000007474740074747400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00747474002400B300FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C20008080
          800080808000808080008A8A8A007474740074747400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002400B300FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000808080008080800080808000FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C200000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E4600FF8C
          2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E
          4600FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF9E4600FF9E4600FF8C2000FF8C
          2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF9E4600FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
          2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E
          4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000}
        TabOrder = 6
      end
      object eShippingCompanyBookingID: TcxDBTextEdit
        Left = 112
        Top = 12
        DataBinding.DataField = 'ShippingCompanyBookingID'
        DataBinding.DataSource = dm_Booking.dsBooking
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Width = 145
      end
      object eTrpID: TcxDBTextEdit
        Left = 320
        Top = 12
        DataBinding.DataField = 'SupplierReference'
        DataBinding.DataSource = dm_Booking.dsBooking
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 2
        Width = 153
      end
      object eETD: TcxDBDateEdit
        Left = 568
        Top = 36
        DataBinding.DataField = 'ETD'
        DataBinding.DataSource = dm_Booking.dsVoyage
        Properties.ClearKey = 46
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 4
        Width = 145
      end
      object eETA: TcxDBDateEdit
        Left = 752
        Top = 36
        DataBinding.DataField = 'ETA'
        DataBinding.DataSource = dm_Booking.dsVoyage
        Properties.ClearKey = 46
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 5
        Width = 145
      end
      object deShipperShipDate: TcxDBDateEdit
        Left = 112
        Top = 36
        DataBinding.DataField = 'ShippersShipDate'
        DataBinding.DataSource = dm_Booking.dsBooking
        Style.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 1
        Width = 145
      end
      object cbvessel: TcxDBComboBox
        Left = 568
        Top = 11
        DataBinding.DataField = 'Carrier'
        DataBinding.DataSource = dm_Booking.dsVoyage
        Properties.ClearKey = 46
        Properties.Items.Strings = (
          'AAAAAAAAAAAAAAAA'
          'BBBBBBBBBBBBBBBB'
          'CCCCCCCCCCCCCCCC'
          'DDDDDDDDDDDDDD')
        TabOrder = 3
        OnExit = cbvesselExit
        Width = 329
      end
      object PanelOK: TPanel
        Left = 1
        Top = 61
        Width = 1081
        Height = 45
        Align = alBottom
        TabOrder = 7
        object bbOK: TBitBtn
          Left = 320
          Top = 7
          Width = 97
          Height = 33
          Action = acSave
          Caption = 'Spara F3'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
        end
        object bbCancel: TBitBtn
          Left = 680
          Top = 7
          Width = 97
          Height = 33
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 440
          Top = 7
          Width = 225
          Height = 33
          Action = acSetETDandSaveAndExit
          Caption = 'S'#228'tt ETD=dagens datum, st'#228'ng F11'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object PanelFixedNotes: TPanel
      Left = 0
      Top = 0
      Width = 1083
      Height = 225
      Align = alTop
      TabOrder = 1
      DesignSize = (
        1083
        225)
      object Label19: TLabel
        Left = 15
        Top = 184
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Lasttext:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Label18: TLabel
        Left = 15
        Top = 109
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fakturatext:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 15
        Top = 34
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'LO Text:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object mNoteForLoadSheet: TcxDBMemo
        Left = 80
        Top = 152
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'NoteForLoadSheet'
        DataBinding.DataSource = dm_Booking.dsBooking
        Properties.ReadOnly = True
        TabOrder = 2
        Height = 65
        Width = 970
      end
      object mInvoiceText: TcxDBMemo
        Left = 80
        Top = 80
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'InvoiceText'
        DataBinding.DataSource = dm_Booking.dsBooking
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 65
        Width = 970
      end
      object mLOText: TcxDBMemo
        Left = 80
        Top = 8
        Anchors = [akLeft, akTop, akRight]
        DataBinding.DataField = 'LOText'
        DataBinding.DataSource = dm_Booking.dsBooking
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 65
        Width = 970
      end
    end
    object PanelTEXT: TPanel
      Left = 0
      Top = 233
      Width = 1083
      Height = 143
      Align = alClient
      Caption = 'PanelTEXT'
      TabOrder = 2
      object grdOrderDocument: TcxGrid
        Left = 1
        Top = 1
        Width = 1081
        Height = 141
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object grdOrderDocumentDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dm_Booking.ds_DocText
          DataController.KeyFieldNames = 'DocTextNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 77
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdOrderDocumentDBTableView1DocText: TcxGridDBColumn
            DataBinding.FieldName = 'DocText'
            PropertiesClassName = 'TcxRichEditProperties'
            Properties.ReadOnly = True
            Width = 799
          end
        end
        object grdOrderDocumentLevel1: TcxGridLevel
          GridView = grdOrderDocumentDBTableView1
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 0
      Top = 225
      Width = 1083
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = PanelFixedNotes
      Color = clMaroon
      ParentColor = False
      ExplicitWidth = 8
    end
  end
  object grdLoRows: TcxGrid
    Left = 0
    Top = 129
    Width = 1083
    Height = 206
    Align = alTop
    TabOrder = 1
    object grdLoRowsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dm_Booking.dsBookingProducts
      DataController.KeyFieldNames = 'CSDNO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object grdLoRowsDBTableView1REFERENCE: TcxGridDBColumn
        DataBinding.FieldName = 'REFERENCE'
        Width = 153
      end
      object grdLoRowsDBTableView1DEL_ADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'DEL_ADDRESS'
        Width = 187
      end
      object grdLoRowsDBTableView1SUPPLIER: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIER'
        Width = 164
      end
      object grdLoRowsDBTableView1LOADING_LOCATION: TcxGridDBColumn
        DataBinding.FieldName = 'LOADING_LOCATION'
        Width = 195
      end
      object grdLoRowsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_DESCRIPTION'
        Width = 241
      end
      object grdLoRowsDBTableView1LENGTH_DESCRIPTION: TcxGridDBColumn
        DataBinding.FieldName = 'LENGTH_DESCRIPTION'
        Width = 204
      end
      object grdLoRowsDBTableView1NOOFUNITS: TcxGridDBColumn
        DataBinding.FieldName = 'NOOFUNITS'
        Width = 71
      end
      object grdLoRowsDBTableView1VOLUNIT: TcxGridDBColumn
        DataBinding.FieldName = 'VOLUNIT'
        Width = 71
      end
      object grdLoRowsDBTableView1ACTM3: TcxGridDBColumn
        DataBinding.FieldName = 'ACTM3'
      end
      object grdLoRowsDBTableView1ADDRESS_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NO'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoRowsDBTableView1CITY_NO: TcxGridDBColumn
        DataBinding.FieldName = 'CITY_NO'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoRowsDBTableView1CITY_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'CITY_NAME'
        Width = 138
      end
      object grdLoRowsDBTableView1POSTALCODE: TcxGridDBColumn
        DataBinding.FieldName = 'POSTALCODE'
        Width = 108
      end
      object grdLoRowsDBTableView1KR_Ref: TcxGridDBColumn
        DataBinding.FieldName = 'KR_Ref'
        Width = 150
      end
    end
    object grdLoRowsLevel1: TcxGridLevel
      GridView = grdLoRowsDBTableView1
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 335
    Width = 1083
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = grdLoRows
    Color = clMaroon
    ParentColor = False
    ExplicitWidth = 8
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 680
    Top = 168
    Bitmap = {
      494C010104000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004469000000
      0000004469000000000000000000004E7700000000000044690000446900004E
      7700004E77000000000000446900004469000000000000000000000000000000
      00000000000000446900004469000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000000000000000
      00000044690000000000004E7700000000000044690000000000004E77000000
      0000004469000044690000000000004E77000000000000446900000000000044
      690000446900004E7700004E77000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E4600FF8C2000FF8C2000FF8C
      2000004E7700004E77000044690000446900004E7700004E7700000000000044
      690000000000004E7700004E770000000000004469000044690000446900004E
      7700004E770000000000004469000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000FF9E4600FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000004E7700000000000044690000446900004E
      7700004E77000000000000000000004469000044690000446900004E77000000
      00000000000000446900004E77000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C20002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF00004E77000000
      0000000000000044690000446900004E7700004E7700004E7700000000000000
      000000446900004E7700000000000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000FF8C2000FF8C20002600BF002600
      BF002600BF002600BF002600BF002600BF002600BF002600BF002600BF002600
      BF0000446900004E7700004E7700000000000000000000000000004469000044
      6900004E77000000000000446900004E770000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000FF8C20002600BF002600BF002400
      B3002400B3002400B3002400B3002400B3002400B3002600BF002600BF002600
      BF002600BF002600BF002600BF0000000000004469000044690000446900004E
      77000000000000446900004E77000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000FF8C20002600BF002400B3008A8A
      8A008A8A8A008A8A8A000000000000CEE90000B0CA002400B3002400B3002400
      B3002600BF002600BF002600BF002600BF002600BF00004E7700004E77000000
      000000446900004E7700004469000044690000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A0000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000FF8C20002400B3008A8A8A008A8A
      8A00000000000000000000B5CE0000C4DF0000CEE90000B0CA0000A4BB0000B5
      CE002400B3002400B3002400B3002600BF002600BF002600BF002600BF002600
      BF00004E77000044690000446900004E770000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000FF8C2000808080008A8A8A000000
      00000000000000B0CA0000B0CA0000B5CE0000C4DF0000B0CA00009CB30000CE
      E90000B5CE0000B0CA00009CB3002400B3002400B3002400B3002600BF002600
      BF002600BF002600BF002600BF000044690000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000FF8C2000808080008A8A8A008A8A
      8A008A8A8A0000000000000000000000000000CEE90000CEE90000B0CA0000B5
      CE0000CEE90000A4BB0000B0CA0000C4DF00000000008A8A8A002400B3002400
      B3002400B3002600BF002600BF002600BF0000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000808080008A8A
      8A008A8A8A008A8A8A008A8A8A008A8A8A00000000000000000000A4BB0000B0
      CA0000B5CE00009CB30000A4BB00000000000000000074747400747474007474
      7400747474002400B3002400B3002400B30000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C20008080
      800080808000808080008A8A8A008A8A8A008A8A8A008A8A8A00000000000000
      00000000000000B5CE0000000000747474007474740074747400FFFFFF00FFFF
      FF007474740074747400747474002400B30000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C20008080800080808000808080008A8A8A008A8A8A008A8A
      8A008A8A8A00000000007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00747474002400B30000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C200080808000808080008080
      80008A8A8A007474740074747400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002400B300FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000808080008080800080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C200000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C2000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF9E
      4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000FF8C2000FF9E4600FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF9E4600FF9E4600FF8C2000FF8C2000FF9E4600FF9E
      4600FF8C2000FF8C2000FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF8C200000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF9E
      4600FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF9E4600FF9E4600FF9E460000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF9E4600FF9E4600FF8C2000FF9E4600FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF9E46000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000FF8C2000FF9E4600FF9E4600FF8C
      2000FF8C2000FF8C2000FF8C2000FF8C2000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C00001FFFFFFFFFFFFD684F9800000FF
      0C1FFFFFFF3552A1800000FC0007FF1FFF002904800000F00001F8000F008619
      800000E00003E0000F001832800000800003C0000F0001C4800000800003C000
      0F000108800000800003C0000F000010800000800003C0000F00000080000080
      0003C0000F000000800000800003C0000F000000800000C00003C0000F000000
      800000E00007C0000F000000800000F8000FC0000F000000800000F8001FC000
      0F000000800000FC007FC0000F000000800000FC00FFC0000F000000800000FC
      01FFC0000F000000800000FC01FFE0000F000000800000FC01FFF8000F000000
      800000FC01FFFE1FFF000000800000F803FFFFFFFF000000800000F803FFFFFF
      FF000000C00001F007FFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 616
    Top = 168
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acPrint: TAction
      Caption = 'Skriv ut trp.order F8'
      ImageIndex = 1
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 2
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acChangeLayout: TAction
      Caption = 'F'#228'ltv'#228'ljare'
      OnExecute = acChangeLayoutExecute
    end
    object acNewVesselName: TAction
      Hint = 'Nytt fartygsnamn F2'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = acNewVesselNameExecute
    end
    object acSetETDandSaveAndExit: TAction
      Caption = 'S'#228'tt ETD=dagens datum, st'#228'ng F11'
      ImageIndex = 0
      ShortCut = 122
      OnExecute = acSetETDandSaveAndExitExecute
    end
    object acSetETD: TAction
      Caption = 'acSetETD'
      ShortCut = 121
      OnExecute = acSetETDExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 168
    object ndralayout1: TMenuItem
      Action = acChangeLayout
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    SkinName = 'Silver'
    Left = 520
    Top = 168
  end
  object PopupMenu2: TPopupMenu
    AutoPopup = False
    Left = 584
    Top = 168
    object Fltvljare1: TMenuItem
      Action = acClose
    end
    object StngF121: TMenuItem
      Action = acNewVesselName
    end
    object SkrivutF81: TMenuItem
      Action = acPrint
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object SttETDdagensdatumstngF111: TMenuItem
      Action = acSetETDandSaveAndExit
    end
  end
  object siLangLinked_FormBookingForm: TsiLangLinked
    Version = '7.8.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 4
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'ListField')
    Left = 536
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D0042006F006F006B0069006E006700
      46006F0072006D00010042004F004F004B0049004E004700010042004F004B00
      4E0049004E004700010042004F004F004B0049004E004700010042004F004B00
      4E0049004E00470001000D000A004C006100620065006C003200370001004200
      6F006B006E0069006E0067006E0072003A00010042006F006B006E0069006E00
      670073006E007200010042006F006F006B0069006E006700010042006F006B00
      6E0069006E00670073006E00720001000D000A004C006100620065006C003200
      380001005200650064006F006400610067003A0001005200650064006F006400
      6100670001005200650061006400790020006400610074006500010052006500
      64006F0064006100670001000D000A004C006100620065006C00320039000100
      4C004F0020004E0072003A0001004C004F0001004C004F0001004C004F000100
      0D000A004C006100620065006C003300300001004C00650076002E0076006900
      6C006C006B006F0072003A0001004C00650076002000760069006C006C006B00
      6F0072000100440065006C0020007400650072006D00730001004C0065007600
      2000760069006C006C006B006F00720001000D000A004C006100620065006C00
      3300310001004E006F0074006500720069006E0067003A0001004E006F007400
      65007200610001004E006F007400650001004E006F0074006500720061000100
      0D000A004C006100620065006C00330032000100530070006500640069007400
      F60072003A000100420065006600720061006B00740061007200650001004300
      6100720072006900650072000100420065006600720061006B00740061007200
      650001000D000A004C006100620065006C003300330001004600720061006B00
      74003A0001004600720061006B00740001004600720065006900670068007400
      01004600720061006B00740001000D000A004C006100620065006C0033003400
      01005400720061006E00730070006F00720074003A0001005400720061006E00
      730070006F007200740001005400720061006E00730070006F00720074000100
      5400720061006E00730070006F007200740001000D000A004C00610062006500
      6C003400320001004B006F006E007400720061006B0074003A0001004F007200
      64006500720001004F00720064006500720001004F0072006400650072000100
      0D000A004C006100620065006C003400330001004B0075006E00640020007200
      650066003A0001004B0075006E00640020007200650066000100430075007300
      74006F006D0065007200200072006500660001004B0075006E00640020007200
      6500660001000D000A004C006100620065006C003400340001004B0075006E00
      64003A0001004B0075006E006400010043007500730074006F006D0065007200
      01004B0075006E00640001000D000A004C006100620065006C00340035000100
      4100670065006E0074003A0001004100670065006E0074000100410067006500
      6E00740001004100670065006E00740001000D000A004C006100620065006C00
      3400360001004C00650076002E0070006500720069006F0064003A0001004C00
      65007600200070006500720069006F0064000100440065006C00200070006500
      720069006F00640001004C0065007600200070006500720069006F0064000100
      0D000A004C006100620065006C00330036000100530070006500640069007400
      F600720065006E0073002000690064003A000100420065006600720061006B00
      74006100720065006E0073002000720065006600010043006100720072006900
      65007200730020007200650066000100420065006600720061006B0074006100
      720065006E007300200072006500660001000D000A004C006100620065006C00
      3300370001005400720070002000490044003A00010054007200700049004400
      01005400720070004900440001005400720070004900440001000D000A004C00
      6100620065006C003300380001004600610072007400790067003A0001004600
      610072007400790067000100560065007300730065006C000100460061007200
      74007900670001000D000A004C006100620065006C0033003900010045005400
      44002000280046003100300029003A0001004500540044002000280046003100
      3000290001004500540044002000280046003100300029000100450054004400
      20002800460031003000290001000D000A004C006100620065006C0034003000
      01004500540041003A0001004500540041000100450054004100010045005400
      410001000D000A004C006100620065006C003400310001005300700065006400
      69007400F600720065006E00730064006100740075006D003A00010042006500
      6600720061006B0074006100720065006E007300200064006100740075006D00
      0100430061007200720069006500720073002000640061007400650001004200
      65006600720061006B0074006100720065006E00730020006400610074007500
      6D0001000D000A0062006200430061006E00630065006C000100430061006E00
      630065006C000100410076006200720079007400010001004100760062007200
      7900740001000D000A004C006100620065006C003100390001004C0061007300
      740074006500780074003A0001004C0061007300740074006500780074000100
      4C006F0061006400740065007800740001004C00610073007400740065007800
      740001000D000A004C006100620065006C00310038000100460061006B007400
      75007200610074006500780074003A000100460061006B007400750072006100
      7400650078007400010049006E0076006F006900630065002000740065007800
      74000100460061006B007400750072006100740065007800740001000D000A00
      4C006100620065006C003100370001004C004F00200054006500780074003A00
      01004C004F002000540065007800740001004C004F0020005400650078007400
      01004C004F002000540065007800740001000D000A00500061006E0065006C00
      54004500580054000100500061006E0065006C00540045005800540001000100
      010001000D000A006700720064004F00720064006500720044006F0063007500
      6D0065006E007400440042005400610062006C00650056006900650077003100
      44006F0063005400650078007400010054006500780074000100010054006500
      78007400010001000D000A006700720064004C006F0052006F00770073004400
      42005400610062006C0065005600690065007700310052004500460045005200
      45004E004300450001005200650066006500720065006E007300010001005200
      650066006500720065006E0063006500010001000D000A006700720064004C00
      6F0052006F0077007300440042005400610062006C0065005600690065007700
      3100440045004C005F00410044004400520045005300530001004C0065007600
      6500720061006E00730061006400720065007300730001000100440065006C00
      6900760065007200790020006100640064007200650073007300010001000D00
      0A006700720064004C006F0052006F0077007300440042005400610062006C00
      65005600690065007700310053005500500050004C0049004500520001004C00
      650076006500720061006E007400F60072000100010053007500700070006C00
      690065007200010001000D000A006700720064004C006F0052006F0077007300
      440042005400610062006C006500560069006500770031004C004F0041004400
      49004E0047005F004C004F0043004100540049004F004E0001004C0061007300
      740073007400E4006C006C006500010001004C006F006100640069006E006700
      200070006C00610063006500010001000D000A006700720064004C006F005200
      6F0077007300440042005400610062006C006500560069006500770031005000
      52004F0044005500430054005F00440045005300430052004900500054004900
      4F004E000100500072006F00640075006B00740001000100500072006F006400
      750063007400010001000D000A006700720064004C006F0052006F0077007300
      440042005400610062006C006500560069006500770031004C0045004E004700
      540048005F004400450053004300520049005000540049004F004E0001004C00
      E4006E0067006400010001004C0065006E00670074006800010001000D000A00
      6700720064004C006F0052006F0077007300440042005400610062006C006500
      560069006500770031004E004F004F00460055004E0049005400530001004B00
      760061006E0074006900740065007400010001005100750061006E0074006900
      74007900010001000D000A006700720064004C006F0052006F00770073004400
      42005400610062006C0065005600690065007700310056004F004C0055004E00
      49005400010045006E006800650074000100010055006E006900740001000100
      0D000A006700720064004C006F0052006F007700730044004200540061006200
      6C006500560069006500770031004100430054004D003300010041004D003300
      01000100010001000D000A006700720064004C006F0052006F00770073004400
      42005400610062006C0065005600690065007700310041004400440052004500
      530053005F004E004F00010041004400440052004500530053005F004E004F00
      01000100010001000D000A006700720064004C006F0052006F00770073004400
      42005400610062006C0065005600690065007700310043004900540059005F00
      4E004F00010043004900540059005F004E004F0001000100010001000D000A00
      6700720064004C006F0052006F0077007300440042005400610062006C006500
      5600690065007700310043004900540059005F004E0041004D00450001004F00
      72007400010001004300690074007900010001000D000A006700720064004C00
      6F0052006F0077007300440042005400610062006C0065005600690065007700
      310050004F005300540041004C0043004F0044004500010050006F0073007400
      6E0072000100010050006F007300740061006C00200063006F00640065000100
      01000D000A006700720064004C006F0052006F00770073004400420054006100
      62006C006500560069006500770031004B0052005F0052006500660001004B00
      52002D005200650066006500720065006E00730001004F005200200072006500
      66006500720065006E00730001004F004C002000720065006600650072006500
      6E006300650001004F00520020007200650066006500720065006E0073000100
      0D000A0061006300530061007600650001005300700061007200610020004600
      3300010001005300610076006500200046003300010001000D000A0061006300
      5000720069006E007400010053006B0072006900760020007500740020007400
      720070002E006F00720064006500720020004600380001000100500072006900
      6E007400200054004F00200046003800010001000D000A006100630043006C00
      6F0073006500010053007400E4006E0067002000460031003200010001004300
      6C006F00730065002000460031003200010001000D000A006100630043006800
      61006E00670065004C00610079006F007500740001004600E4006C0074007600
      E4006C006A00610072006500010001004600690065006C006400630068006F00
      6F00730065007200010001000D000A0061006300530065007400450054004400
      61006E006400530061007600650041006E006400450078006900740001005300
      E4007400740020004500540044003D0064006100670065006E00730020006400
      6100740075006D002C00200073007400E4006E00670020004600310031000100
      010053006500740020004500540044003D0074006F0064006100790073002000
      64006100740065002C00200063006C006F007300650020004600310031000100
      01000D000A006100630053006500740045005400440001006100630053006500
      740045005400440001000100010001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A00610063004E0065007700
      560065007300730065006C004E0061006D00650001004E007900740074002000
      66006100720074007900670073006E0061006D006E0020004600320001000100
      4E00650077002000760065007300730065006C006E0061006D00650020004600
      3200010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      46006F0072006D0042006F006F006B0069006E00670046006F0072006D000100
      4D0053002000530061006E007300200053006500720069006600010001000100
      01000D000A004C006100620065006C003100390001004D005300200053006100
      6E00730020005300650072006900660001000100010001000D000A004C006100
      620065006C003100380001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A004C006100620065006C0031003700
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00630062007600650073007300
      65006C002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073000100410041004100410041004100410041004100410041004100
      41004100410041002C0042004200420042004200420042004200420042004200
      420042004200420042002C004300430043004300430043004300430043004300
      4300430043004300430043002C00440044004400440044004400440044004400
      4400440044004400440001000100010001000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0049004400
      53005F00310001004400610074006100200065006A0020007300700061007200
      610064002C002000760069006C006C0020006400750020006100760073006C00
      7500740061003F00010001004400610074006100200068006100730020006E00
      6F00740020006200650065006E002000730061007600650064002C0020006400
      6F00200079006F0075002000770061006E007400200074006F00200063006C00
      6F00730065003F002000010001000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A006C006500440065006C00540065007200
      6D0073002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004C00650076006500720061006E007300760069006C00
      6C006B006F00720001004C00650076006500720061006E007300760069006C00
      6C006B006F0072000100440065006C0069007600650072007900200074006500
      72006D00730001004C00650076006500720061006E007300760069006C006C00
      6B006F00720001000D000A006C006500440065006C005400650072006D007300
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      43006F006C0075006D006E0073005B0031005D002E0043006100700074006900
      6F006E0001004200650073006B007200690076006E0069006E00670001000100
      4400650073006300720069007000740069006F006E00010001000D000A006C00
      630053006800690070007000650072002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D00650001000100010001000D000A006C006300430075007200
      720065006E00630079002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E000100560061006C0075007400610001000100
      430075007200720065006E0063007900010001000D000A006C00630046007200
      6500690067006800740056006F006C0055006E00690074002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001005600
      6F006C0079006D0065006E0068006500740001000100260056006F006C007500
      6D006500200075006E0069007400010001000D000A006C006300540079007000
      65006F00660062006F006F006B0069006E0067002E00500072006F0070006500
      720074006900650073002E004C0069007300740043006F006C0075006D006E00
      73005B0030005D002E00430061007000740069006F006E000100540079007000
      20006100760020006600720061006B0074000100010054007900700065002000
      6F00660020006600720065006900670068007400010001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540046006F0072006D0042006F006F006B0069006E00670046006F00
      72006D000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A004C006100620065006C00310039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A004C006100620065006C00310038000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A004C006100620065006C00310037000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A00}
  end
end
