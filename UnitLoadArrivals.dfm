object frmLoadArrivals: TfrmLoadArrivals
  Left = 251
  Top = 113
  ActiveControl = Edit1
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmLoadArrivals'
  ClientHeight = 753
  ClientWidth = 1207
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 496
    Width = 1207
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel5
    Color = clMaroon
    ParentColor = False
    ExplicitTop = 500
  end
  object grdLoads: TcxGrid
    Left = 0
    Top = 127
    Width = 1207
    Height = 369
    Align = alClient
    PopupMenu = pmLoads
    TabOrder = 1
    ExplicitHeight = 373
    object grdLoadsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dmArrivingLoads.dsrcArrivingLoads
      DataController.KeyFieldNames = 'LO;LOADNO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.00'
          Kind = skSum
          FieldName = 'intNM3'
          Column = grdLoadsDBTableView1intNM3
        end
        item
          Format = '#,###.00'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdLoadsDBTableView1AM3
        end
        item
          Format = '#####'
          Kind = skSum
          FieldName = 'NoOfPackages'
          Column = grdLoadsDBTableView1NoOfPackages
        end
        item
          Format = '#######'
          Kind = skSum
          FieldName = 'Pcs'
          Column = grdLoadsDBTableView1Pcs
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.FocusRect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Content = cxStyle_Focus
      Styles.ContentEven = cxStyle10
      Styles.ContentOdd = cxStyle10
      Styles.OnGetContentStyle = grdLoadsDBTableView1StylesGetContentStyle
      Styles.Selection = cxStyle42
      object grdLoadsDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 54
      end
      object grdLoadsDBTableView1LOADNO: TcxGridDBColumn
        DataBinding.FieldName = 'LOADNO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 43
      end
      object grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'LOADEDDATE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 55
      end
      object grdLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'LOAD_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = il_LastStatus
        Properties.Items = <
          item
            Description = 'Prelimin'#228'r'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Problem'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Avslutad'
            ImageIndex = 2
            Value = 2
          end>
        Width = 29
      end
      object grdLoadsDBTableView1FS: TcxGridDBColumn
        DataBinding.FieldName = 'FS'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 37
      end
      object grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOAD_ID'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 45
      end
      object grdLoadsDBTableView1AVROP_CUSTOMER: TcxGridDBColumn
        DataBinding.FieldName = 'AVROP_CUSTOMER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 68
      end
      object grdLoadsDBTableView1SUPPLIER: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 62
      end
      object grdLoadsDBTableView1DESTINATION: TcxGridDBColumn
        DataBinding.FieldName = 'DESTINATION'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 61
      end
      object grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn
        DataBinding.FieldName = 'INVPOINTNAME'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 62
      end
      object grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPCODE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 51
      end
      object grdLoadsDBTableView1CUSTOMER: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 53
      end
      object grdLoadsDBTableView1INITIALS: TcxGridDBColumn
        DataBinding.FieldName = 'INITIALS'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 58
      end
      object grdLoadsDBTableView1CountryCode: TcxGridDBColumn
        DataBinding.FieldName = 'CountryCode'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 39
      end
      object grdLoadsDBTableView1LOINI: TcxGridDBColumn
        DataBinding.FieldName = 'LOINI'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 45
      end
      object grdLoadsDBTableView1LASTSTLLE: TcxGridDBColumn
        DataBinding.FieldName = 'LASTST'#196'LLE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 57
      end
      object grdLoadsDBTableView1ORDER_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_NO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 81
      end
      object grdLoadsDBTableView1OBJECTTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'OBJECTTYPE'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 107
      end
      object grdLoadsDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn
        DataBinding.FieldName = 'AVROP_CUSTOMERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 91
      end
      object grdLoadsDBTableView1OrderType: TcxGridDBColumn
        DataBinding.FieldName = 'OrderType'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 29
      end
      object grdLoadsDBTableView1SUPPLIERNO: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 89
      end
      object grdLoadsDBTableView1LipNo: TcxGridDBColumn
        DataBinding.FieldName = 'LipNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoadsDBTableView1INVPOINTNO: TcxGridDBColumn
        DataBinding.FieldName = 'INVPOINTNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
      end
      object grdLoadsDBTableView1TYP: TcxGridDBColumn
        DataBinding.FieldName = 'TYP'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 20
      end
      object grdLoadsDBTableView1LOTYP: TcxGridDBColumn
        Caption = 'LO'
        DataBinding.FieldName = 'LOTYP'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 20
      end
      object grdLoadsDBTableView1Trading: TcxGridDBColumn
        DataBinding.FieldName = 'Trading'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 20
      end
      object grdLoadsDBTableView1LoadAR: TcxGridDBColumn
        DataBinding.FieldName = 'LoadAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 20
      end
      object grdLoadsDBTableView1ARtillLager: TcxGridDBColumn
        DataBinding.FieldName = 'ARtillLager'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 20
      end
      object grdLoadsDBTableView1ImpVerk: TcxGridDBColumn
        DataBinding.FieldName = 'ImpVerk'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 29
      end
      object grdLoadsDBTableView1EGEN: TcxGridDBColumn
        DataBinding.FieldName = 'EGEN'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 45
      end
      object grdLoadsDBTableView1NoOfPackages: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfPackages'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 45
      end
      object grdLoadsDBTableView1PackagesConfirmed: TcxGridDBColumn
        DataBinding.FieldName = 'PackagesConfirmed'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 45
      end
      object grdLoadsDBTableView1OriginalLO: TcxGridDBColumn
        DataBinding.FieldName = 'OriginalLO'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1OriginalLoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'OriginalLoadNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1OriginalInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'OriginalInvoiceNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1OBJECTTYPE_1: TcxGridDBColumn
        DataBinding.FieldName = 'OBJECTTYPE_1'
      end
      object grdLoadsDBTableView1LoadingLocationNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadingLocationNo'
      end
      object grdLoadsDBTableView1OrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'OrderNo'
      end
      object grdLoadsDBTableView1intNM3: TcxGridDBColumn
        DataBinding.FieldName = 'intNM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,######.00'
      end
      object grdLoadsDBTableView1AM3: TcxGridDBColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '#,######.00'
      end
      object grdLoadsDBTableView1Pcs: TcxGridDBColumn
        DataBinding.FieldName = 'Pcs'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1Pkgs: TcxGridDBColumn
        DataBinding.FieldName = 'Pkgs'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1ClientName: TcxGridDBColumn
        Caption = 'Kund'
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1BookingType: TcxGridDBColumn
        DataBinding.FieldName = 'BookingType'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdLoadsDBTableView1Lagerkod: TcxGridDBColumn
        DataBinding.FieldName = 'Lagerkod'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdLoadsLevel1: TcxGridLevel
      GridView = grdLoadsDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1207
    Height = 127
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Panel2: TPanel
      Left = 443
      Top = 0
      Width = 701
      Height = 127
      Align = alClient
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 699
        Height = 45
        Align = dalTop
        BarManager = dxBarManager1
      end
      object Panel7: TPanel
        Left = 1
        Top = 46
        Width = 699
        Height = 80
        Align = alClient
        TabOrder = 1
        object cxLabel1: TcxLabel
          Left = 3
          Top = 6
          Caption = 'Mottagare:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lcVerk: TcxDBLookupComboBox
          Left = 91
          Top = 7
          TabStop = False
          DataBinding.DataField = 'Verk'
          DataBinding.DataSource = ds_Props
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.OnCloseUp = lcVerkPropertiesCloseUp
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Width = 108
        end
        object cxLabel8: TcxLabel
          Left = 3
          Top = 39
          Caption = 'Leverera till:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lcDestination: TcxDBLookupComboBox
          Left = 91
          Top = 37
          TabStop = False
          DataBinding.DataField = 'Destination'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'Ort'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.TextStyle = [fsBold]
          TabOrder = 3
          Width = 108
        end
        object cxLabel6: TcxLabel
          Left = 202
          Top = 7
          Caption = 'Leverant'#246'r:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lcInternKund: TcxDBLookupComboBox
          Left = 298
          Top = 6
          TabStop = False
          DataBinding.DataField = 'Kund'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Style.TextStyle = [fsBold]
          TabOrder = 5
          Width = 124
        end
        object cxLabel7: TcxLabel
          Left = 202
          Top = 37
          Caption = 'Lastst'#228'lle:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lcLaststlle: TcxDBLookupComboBox
          Left = 298
          Top = 35
          TabStop = False
          DataBinding.DataField = 'Lastst'#228'lle'
          DataBinding.DataSource = ds_Props
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'Ort'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.TextStyle = [fsBold]
          TabOrder = 7
          Width = 124
        end
        object lcSlutKund: TcxDBLookupComboBox
          Left = 523
          Top = 7
          TabStop = False
          DataBinding.DataField = 'Slutkund'
          DataBinding.DataSource = ds_Props
          ParentFont = False
          Properties.ClearKey = 46
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 119
        end
        object cxLabel9: TcxLabel
          Left = 431
          Top = 7
          Caption = 'Kund extern:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cbShowOnlyVWLoads: TcxDBCheckBox
          Left = 431
          Top = 36
          TabStop = False
          Caption = 'Visa endast VW leveranser'
          DataBinding.DataField = 'NewItemRow'
          DataBinding.DataSource = ds_Props
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 10
        end
        object cbShowPreliminaryLoads: TcxCheckBox
          Left = 433
          Top = 61
          Caption = 'Show only complete loads'
          State = cbsChecked
          Style.TransparentBorder = False
          TabOrder = 11
        end
      end
    end
    object Panel3: TPanel
      Left = 1144
      Top = 0
      Width = 63
      Height = 127
      Align = alRight
      TabOrder = 1
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 61
        Height = 45
        Align = dalTop
        BarManager = dxBarManager1
      end
      object btChangeStyle: TcxButton
        Left = 5
        Top = 53
        Width = 53
        Height = 43
        Caption = 'Styles'
        TabOrder = 1
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btChangeStyleClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 443
      Height = 127
      Align = alLeft
      TabOrder = 2
      object cxLabel2: TcxLabel
        Left = 11
        Top = 71
        Caption = 'Visa:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 11
        Top = 16
        Caption = 'LO:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object Edit1: TEdit
        Left = 78
        Top = 11
        Width = 59
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
      object Edit2: TEdit
        Left = 78
        Top = 35
        Width = 59
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = Edit2KeyDown
      end
      object cxLabel4: TcxLabel
        Left = 11
        Top = 40
        Caption = 'Lastnr:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 232
        Top = 69
        Caption = 'Period:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object deStartPeriod: TcxDBDateEdit
        Left = 288
        Top = 67
        TabStop = False
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Enabled = False
        ParentFont = False
        Properties.ImmediatePost = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 152
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 288
        Top = 90
        TabStop = False
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Enabled = False
        ParentFont = False
        Properties.ImmediatePost = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 152
      end
      object cbAllaVerk: TcxDBCheckBox
        Left = 161
        Top = 12
        TabStop = False
        Caption = 'Alla verk'
        DataBinding.DataField = 'GradeStampNo'
        DataBinding.DataSource = ds_Props
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        Transparent = True
        Visible = False
      end
      object btPrepareScan: TcxButton
        Left = 288
        Top = 1
        Width = 152
        Height = 60
        Action = acPrepareScan
        TabOrder = 9
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bcConfirmedv2: TcxComboBox
        Left = 79
        Top = 65
        TabStop = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'New arrivals'
          'Arrived'
          'My registered arrivals')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 19
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 10
        Text = 'New arrivals'
        Width = 147
      end
      object cbNewArrivalQuery: TcxCheckBox
        Left = 80
        Top = 93
        Caption = 'Use new arrival query'
        Style.TransparentBorder = False
        TabOrder = 11
        Transparent = True
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 504
    Width = 1207
    Height = 249
    Align = alBottom
    TabOrder = 3
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1205
      Height = 60
      Align = alTop
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 11
        Top = 6
        Width = 103
        Height = 40
        Action = acSetInfo2Text
        TabOrder = 0
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object mePackageNo: TcxMaskEdit
        Left = 483
        Top = 6
        TabStop = False
        ParentFont = False
        Properties.ReadOnly = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -32
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.StyleController = cxEditStyleController1
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = mePackageNoKeyDown
        Width = 463
      end
      object cxLabel10: TcxLabel
        Left = 248
        Top = 12
        Caption = 'Ange paketnr:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -32
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabelEntryMetod: TcxLabel
        Left = 952
        Top = 16
      end
      object cxButton2: TcxButton
        Left = 118
        Top = 6
        Width = 117
        Height = 40
        Action = acSetPktStorlek
        TabOrder = 4
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object cxButton3: TcxButton
        Left = 1093
        Top = 1
        Width = 111
        Height = 58
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Action = acNumPad
        TabOrder = 5
      end
    end
    object grdPkgs: TcxGrid
      Left = 1
      Top = 61
      Width = 1205
      Height = 187
      Align = alClient
      PopupMenu = pmPkgs
      TabOrder = 1
      object grdPkgsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmArrivingLoads.dsrcArrivingPackages
        DataController.KeyFieldNames = 'LOAD_DETAILNO;ProductLengthNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.000'
            Kind = skSum
            FieldName = 'M3_NET'
            Column = grdPkgsDBTableView1M3_NET
          end
          item
            Format = '#,###,###,###.000'
            Kind = skSum
            FieldName = 'M3_NOM'
            Column = grdPkgsDBTableView1M3_NOM
          end
          item
            Format = '#,###,###,###.000'
            Kind = skSum
            FieldName = 'MFBM'
            Column = grdPkgsDBTableView1MFBM
          end
          item
            Format = '#,###,###,###'
            Kind = skSum
            FieldName = 'PCS'
            Column = grdPkgsDBTableView1PCS
          end
          item
            Format = '#######'
            Kind = skCount
            FieldName = 'PACKAGE_NO'
            Column = grdPkgsDBTableView1PACKAGE_NO
          end
          item
            Format = '#,###,###,###.00'
            Kind = skSum
            FieldName = 'SubSum'
            Column = grdPkgsDBTableView1SubSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Content = cxStyle_Focus
        Styles.ContentEven = cxStyle_Focus
        Styles.ContentOdd = cxStyle_Focus
        Styles.OnGetContentStyle = grdPkgsDBTableView1StylesGetContentStyle
        object grdPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGE_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 49
        end
        object grdPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SUPPLIERCODE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 43
        end
        object grdPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUCT_DESCRIPTION'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 113
        end
        object grdPkgsDBTableView1GS: TcxGridDBColumn
          DataBinding.FieldName = 'GS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 47
        end
        object grdPkgsDBTableView1BC: TcxGridDBColumn
          DataBinding.FieldName = 'BC'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 41
        end
        object grdPkgsDBTableView1M3_NET: TcxGridDBColumn
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Options.Filtering = False
          Width = 20
        end
        object grdPkgsDBTableView1PCS: TcxGridDBColumn
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Options.Filtering = False
          Width = 20
        end
        object grdPkgsDBTableView1M3_NOM: TcxGridDBColumn
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 20
        end
        object grdPkgsDBTableView1MFBM: TcxGridDBColumn
          DataBinding.FieldName = 'MFBM'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Options.Filtering = False
          Width = 34
        end
        object grdPkgsDBTableView1LoadNo: TcxGridDBColumn
          DataBinding.FieldName = 'LoadNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 85
        end
        object grdPkgsDBTableView1LO: TcxGridDBColumn
          DataBinding.FieldName = 'LO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 23
        end
        object grdPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn
          DataBinding.FieldName = 'LOAD_DETAILNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 54
        end
        object grdPkgsDBTableView1PACKAGEOK: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGEOK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 53
        end
        object grdPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGE_LOG'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 32
        end
        object grdPkgsDBTableView1SubSum: TcxGridDBColumn
          DataBinding.FieldName = 'SubSum'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 32
        end
        object grdPkgsDBTableView1PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 25
        end
        object grdPkgsDBTableView1NLMM: TcxGridDBColumn
          DataBinding.FieldName = 'NLMM'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 27
        end
        object grdPkgsDBTableView1ALMM: TcxGridDBColumn
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 26
        end
        object grdPkgsDBTableView1Used: TcxGridDBColumn
          DataBinding.FieldName = 'Used'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 54
        end
        object grdPkgsDBTableView1Info2: TcxGridDBColumn
          Caption = 'Info2 (position)'
          DataBinding.FieldName = 'Info2'
          PropertiesClassName = 'TcxComboBoxProperties'
          Width = 93
        end
        object grdPkgsDBTableView1PackageNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageNo'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 175
        end
        object grdPkgsDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 160
        end
        object grdPkgsDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 109
        end
        object grdPkgsDBTableView1Position: TcxGridDBColumn
          DataBinding.FieldName = 'Position'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 68
        end
        object grdPkgsDBTableView1Package_Size: TcxGridDBColumn
          DataBinding.FieldName = 'Package_Size'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 83
        end
        object grdPkgsDBTableView1PackageSizeName: TcxGridDBColumn
          DataBinding.FieldName = 'PackageSizeName'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 76
        end
        object grdPkgsDBTableView1Scanned: TcxGridDBColumn
          DataBinding.FieldName = 'Scanned'
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPkgsDBTableView1
      end
    end
  end
  object lbLO_To_Invoice: TListBox
    Left = 957
    Top = 165
    Width = 169
    Height = 193
    ItemHeight = 13
    Sorted = True
    TabOrder = 5
    Visible = False
  end
  object tkNumPad: TTouchKeyboard
    Left = 936
    Top = 228
    Width = 258
    Height = 186
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'NumPad'
    Visible = False
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Pkgs'
      'LoadHead'
      'PrintPopUp')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <
      item
      end>
    StoreInIniFile = True
    UseSystemFont = False
    Left = 312
    Top = 296
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 259
      FloatTop = 195
      FloatClientWidth = 193
      FloatClientHeight = 226
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbRefresh'
        end
        item
          Visible = True
          ItemName = 'lbUndoConfirm'
        end
        item
          Visible = True
          ItemName = 'lbConfirmLoad'
        end
        item
          Visible = True
          ItemName = 'lbPrintLoad'
        end
        item
          Visible = True
          ItemName = 'lbExportToExcel'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      MultiLine = True
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object lbConfirmLoad: TdxBarLargeButton
      Action = acConfirmedLoad
      Category = 0
    end
    object lbPrintLoad: TdxBarLargeButton
      Action = acPrint
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = pmPrint
    end
    object lbUndoConfirm: TdxBarLargeButton
      Action = acUndoAR
      Category = 0
    end
    object lbExportToExcel: TdxBarLargeButton
      Action = acExportLoadsToExcel
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acGetIntPrices
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acScannedErrors
      Category = 0
    end
    object lbPkgInfo: TdxBarLargeButton
      Action = acPkgInfo
      Category = 1
    end
    object dxBarButton3: TdxBarButton
      Action = acChangePkgLayout
      Category = 1
    end
    object bbCustomizeLayout: TdxBarButton
      Action = acChangeLoadLayout
      Category = 2
    end
    object dxBarButton4: TdxBarButton
      Action = acShowGroupBox
      Category = 2
    end
    object dxBarButton5: TdxBarButton
      Action = acExpandAll
      Category = 2
    end
    object dxBarButton6: TdxBarButton
      Action = acCollapseAll
      Category = 2
    end
    object dxBarButton7: TdxBarButton
      Action = acConfirmOneLoad
      Category = 2
    end
    object SetFontSize: TdxBarSpinEdit
      Caption = 'Fontstorlek'
      Category = 2
      Hint = 'Fontstorlek'
      Visible = ivAlways
      OnChange = SetFontSizeChange
      Value = 10.000000000000000000
    end
    object bbSamlingsspecifikation: TdxBarButton
      Action = acPrintSamLast
      Category = 3
    end
    object bbTally_Ver: TdxBarButton
      Action = acFS
      Category = 3
    end
    object dxBarButton1: TdxBarButton
      Action = acPrintSamLastMedPktNr
      Category = 3
    end
    object dxBarButton2: TdxBarButton
      Action = acFS_DK
      Category = 3
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'F'#246'ljesedel'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTally_Ver'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton8: TdxBarButton
      Action = acPrintDirectFS
      Category = 3
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'F'#246'ljesedel USA'
      Category = 3
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarButton9: TdxBarButton
      Action = acPrintTallyUSNote
      Category = 3
    end
    object dxBarButton10: TdxBarButton
      Action = acPrintDirectFS_USA
      Category = 3
    end
    object dxBarButton11: TdxBarButton
      Action = acSamlingsFS_USA
      Category = 3
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 400
    Top = 408
    Bitmap = {
      494C010110001500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008000000080000000800000008000000080000000800000008000000080
      000000800000000000000000000000000000000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      FD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      00000000000000000000000000008484840042212100FFFFFF000000EF000000
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000808000008000000080
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000008080000080800000808000008080000080
      000000800000000000000000000000000000000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00DECED6008C94
      E700DEC6CE00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      00004221210042212100424242000000EF00FFFFFF00FFFFFF000000EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      0000000000000000000000000000000000000000000000808000008000000080
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000008080000080800000808000008080000080
      000000800000000000000000000000000000000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00F7DEC600ADADD600526BEF00294A
      FF00949CDE00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000008463
      6300FFFFFF00FFFFFF000000EF000000EF00FFFFFF0042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A00000000000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000008080000080
      000000800000000000000000000000000000000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600CEC6DE006B84FF002952FF00294AFF002952
      FF00395AFF00DEC6CE00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B5848400000000000000000000000000000000000000EF000000
      EF00FFFFFF00FFFFFF000000EF0084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000008080000080
      000000800000000000000000000000000000000000000000000000000000B57B
      8400F7EFE700F7EFE700C6BDCE00425AF7002942FF00395AFF009CA5DE006B7B
      EF002952FF007384E700F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B58484000000000000000000FFFFFF00FFFFFF000000EF000000
      EF0084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      6300426363004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000008080000080
      000000800000000000000000000000000000000000000000000000000000B584
      8400F7EFE700FFF7EF00CECEDE004A6BFF00637BF700CEC6DE00F7E7CE00D6CE
      DE00395AFF00315AFF00BDB5DE00F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE
      9C00EFCE9400B58484000000000000000000FFFFFF00FFFFFF0000000000C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      4200000000004263630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A00000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000008080
      80000080000000800000008000000080000000800000C0C0C000008080000080
      000000800000000000000000000000000000000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7
      CE008C94E7002952FF005273F700EFD6BD00F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100424242000021420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000080808000008000000080
      0000000000008080800000800000008000000080000000800000008000000080
      0000808080008080800080808000808080000080000000000000808080000080
      000000800000000000000000000000000000000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7
      CE00F7E7CE004263FF002952FF009CA5DE00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      42004263A5000021420000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000080808000008000000080
      0000000000000000000080808000808080008080800080808000008000008080
      8000808080008080800080808000008000008080800000000000808080000080
      000000800000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7
      D600F7E7CE00ADA5DE002952FF004A6BFF00DEC6CE00F7D6B500F7D6AD00F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000080808000008000000080
      0000000000000000000080808000808080008080800080808000008000008080
      8000808080008080800080808000008000008080800000000000808080000080
      000000800000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EF
      DE00F7E7D600F7E7CE00637BF700294AFF007384E700F7DEBD00F7D6B500F7D6
      FD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF0042638400004284004263A500000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B00000000000080808000008000000080
      0000000000000000000000000000808080000080000000800000808080008080
      8000808080000080000000800000808080008080800000000000808080000080
      000000800000000000000000000000000000000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7EFDE00F7E7D600C6C6DE00425AF7007B8CEF00EFDED600F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      0000000000004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF004263840000428400000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B00000000000080808000008000000080
      000000000000000000000000000000800000C0C0C000C0C0C000808080008080
      8000008080000080000000800000000000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EF
      E700F7EFE700F7EFDE00F7E7D600CEC6D600F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF0042424200000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B00000000000080808000008000000080
      0000000000000000000000808000C0C0C0008080800080808000808080008080
      8000808080000080000000800000008000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00EFD6BD00CEBD
      FD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF00000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000080808000008000000080
      0000000000000000000000808000C0C0C0008080800080808000808080008080
      8000808080000080000000800000008000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF00000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000080808000008000000080
      00000000000080808000C0C0C000808080008080800080808000808080008080
      8000808080008080800080808000008000000080000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000080808000008000000080
      0000000000008080800080808000808080008080800080808000000000000000
      0000808080008080800080808000808080008080800000000000808080000080
      800000808000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000080808000008000000080
      0000000000008080800080808000808080008080800080808000000000000000
      0000808080008080800080808000808080008080800000000000808080000080
      800000808000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      800000808000000000000000000000000000000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C3908000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE6300000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C39080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010528400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE6300000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C390800000000000000000000000000000000005294BD004A6B
      9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B
      9C004A6B9C000042730000000000000000000000000010528400004273000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C39080000000000000000000000000008639C00ADCE
      E700ADCEE700ADCEE700ADCEE700CECEDE00CECEDE00CECEDE00CECEDE008CB5
      C600004273000000000000000000000000000000000000000000004273001052
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C390800000000000000000000000000086BA500DEF7
      FF00DEF7FF00DEF7FF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00C6D6E7001052
      8400000000000000000000000000000000000000000000000000105284001052
      84004A6B9C000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE6300000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C3908000000000000000000007BAD00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00DEF7FF00C6D6E700105284000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00105284000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE6300000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C3908000000000000000000007BAD00B5E7
      FF00B5E7FF00B5E7FF00CEF7FF00CEF7FF00ADCEE70010528400000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00297BAD000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE6300000000000000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C39080000000000000000001884C600B5E7
      FF00B5E7FF00B5E7FF00B5E7FF00B5E7FF00A5DEFF0029637B004A6B9C000000
      000000000000000000000000000000000000000000000000000029637B008CB5
      C600297BAD000000000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE6300000000000000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C390800000000000000000010A5D600A5DE
      FF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF0029637B002963
      7B000000000000000000000000000000000000000000739CAD0010528400B5E7
      FF00298CD6000000000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD00313131000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C390800000000000000000010A5D6008CD6
      FF008CD6FF0084BDE70084BDE7008CD6FF008CD6FF00A5DEFF008CD6FF005294
      BD00004A7B0029637B00739CAD00739CAD00216B9400105A940084BDE7008CD6
      FF00007BAD0000000000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B003131310000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C39080000000000000000000000000010A5D6006BC6
      FF006BC6FF001884C600007BAD0084BDE7008CD6FF008CD6FF008CD6FF008CD6
      FF008CD6FF005294BD005294BD005294BD0084BDE700A5DEFF00A5DEFF0042A5
      DE0084BDE700000000000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A00AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C39080000000000000000000000000010A5D6004ABD
      FF0010A5D60000000000000000001884C60042A5DE006BC6FF006BC6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF0042A5DE0042A5
      DE000000000000000000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C3908000000000000000000000000000000000010A5D60010A5
      D6000000000000000000000000000000000042A5DE001884C60042A5DE004ABD
      FF006BC6FF006BC6FF006BC6FF004ABDFF0042A5DE0010A5D60042A5DE000000
      000000000000000000000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F700AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C390800000000000000000000000000000000000000000010A5D6000000
      000000000000000000000000000000000000000000000000000042A5DE0042A5
      DE0010A5D60010A5D60010A5D60042A5DE0042A5DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E700A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B59C9C00B59C9C00B59C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B59C9C008C736B00AD5252009C5A5A00B59C9C000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B59C9C008C736B00AD5A5A00CE8C8400C6737B00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B59C9C008C736B00B55A5A00D6949400C6737B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B59C
      9C009C635A00BD6B6300D69C9C00C6737B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B59C9C00AD5A
      5A00BD736B00DEADA500C6737B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A58C8C00A55A5A00C67B
      7B00DEADA500C6737B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C736B00A55A5A00CE8C8400DEAD
      A500C6737B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6B6300AD5A5A00D6948C00D69C9400C673
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C4A4200B5636300D69C9400D69C9C00B57B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A55A5A00BD6B6B00D6A59C00BD9C8400B5636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD5A5A00C67B7300DEADA500C69C9400B563630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      7B00C6848400DEADA500CEA5A500B56363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426B840000AD
      CE007BB5AD00BDAD9C00B5636300000000000000000000000000000000000000
      00000000000000000000000000004AD6F70010C6EF0010C6EF0010C6EF0010C6
      EF0010ADD600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000039A5C6006373840052AD
      B500A5E7F70042DEFF0000000000000000000000000000000000000000000000
      0000000000000000000084DEDE004AD6F70021CEF700108CB50042B5D60063D6
      F700ADE7F70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000042CEE70010B5DE0031B5D60042DE
      FF0042DEFF000000000000000000000000000000000000000000000000000000
      00000000000084E7F70039CEF70010C6F70052CEEF004AD6F7004AD6F7004AD6
      F7007BDEF70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      00000000000000000000000000000000000042CEE70018BDE70021CEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADE7F70039D6F70042DEFF0039CEF7004AD6F70010ADD600000000000000
      00000000000052C6EF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000000000000000000000000000000000052E7FF0008BDEF0042DEFF00A5E7
      F700000000000000000000000000000000000000000000000000000000000000
      00005ADEF70021CEF70008CEFF0084DEF70010ADD600000000000000000073CE
      EF0000000000B5E7F7000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000A5F7FF0010C6F70018D6FF0052E7
      FF00000000000000000000000000000000000000000000000000000000008CE7
      F70029D6F70010C6EF0010C6F70010ADD60000000000000000004AD6F700A5E7
      F7000000000073CEEF0010ADD60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042CEE70031D6FF0039DEFF007BEF
      FF0084E7F70000000000000000000000000000000000000000009CE7F70039D6
      F70029C6F70018C6EF0018BDE7000000000000000000000000000000000084D6
      EF005AC6EF0010ADD60000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029D6F70073EFFF00A5F7
      FF005AEFFF0073EFFF00ADF7F70000000000000000005AD6DE0042DEF70021CE
      F70018CEF70000C6F70010ADD600000000000000000000000000000000000000
      000010ADD6000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042CEE70029BDDE0039C6
      E70042CEE70063E7EF0063CEE7005AC6DE0042BDD60042CEE70039C6E70018B5
      DE0021CEF70010ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042CE
      E7004AB5CE0084D6E70042CEE70042CEE7005ABDD6007BCEDE0039A5C60010AD
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005ABDD60052BDDE0052BDDE0042B5D60063C6DE0010ADD6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF8FFFFFFFFF800007E000037E0FFFFFE03F800007
      E00003700FFFF0203F800007E0000360007FF0200F8FFE07E0000340007FF03C
      078FFF07E00003000023FFFC078FFF07E00003200003FFFE0F8FE007E00003E0
      0001FFFC07880047E00003E00001C000008C0047E00003E00001C000008C0047
      E00003F80001C000008E0047E00003F80001C000008E01C7E00003F80001C000
      008C00C7E00003F80001C000008C00C7E00003FC0001C00000880047E00003FE
      0001C00000883047E00003FF8001C00000883047E00007FFE007C000008FFFC7
      E0000FFFF81FC000008FFFC7E0001FFFFE7FFFFFFF800007E0003FFFFFFFFFFF
      FF800007FFFFFFFFFFFFFFFFFF800007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFC7FFFFFFFFC0007C00003FFF83FFFFFFFFC0007C00003FFF81FFFFFFF
      FC0007C00003FFF80FFFFFFFFC0007C00003FFFC07FFFFFFFC0007C000030006
      03FFFFBFFC0007C00003000303C0039FFC0007C00003000381C007CFFC0007C0
      00030003C1C00FC7FC0007C000030007C0C01FC7FC0007C00003007FE0C03FC7
      F00007C00003003FE0C01FC7F00007C00003001FE0C00F87F00007C00003000F
      C0C00007800007C00001040781C00007800007C00000060001C6000F800007C0
      0000070003CF001F800007C00000078007DFC07FF0000FC0000007C00FFFFFFF
      F0001FE000078FF03FFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
      0C1FFFFFF9FFFC1FA01801FC0007FFFFF1FFF83F803803F00001C7FFE3FFF07F
      803803E00003C3FF87FFE0FFC03CFB800003C1FF0FFFC1FFC03CFB800003E0FE
      1FFF83FFC03CFB800003F07C3FFF07FFC03CFB800003FC307FFE0FFFC038F880
      0003FE00FFFC1FFFC038F8800003FF01FFF83FFF0010F8C00003FF83FFF07FFF
      8008E0E00007FF01FFE0FFFF8008E0F8000FFE00FFC1FE07C03CC3F8001FFC18
      7F83FC03C07CD3FC007FF83C3F07F803C07CD3FC00FFF07F1F1FF03BC07CC3FC
      01FFE0FF8F0FF06BC13C11FC01FFC1FFEF0FE0C9C13C11FC01FF83FFFF07C1E3
      81B818FC01FF87FFFF8181F7B9DB9DF803FF8FFFFF8003FFB9DB9DF803FFFFFF
      FFE00FFF7BE7BEF007FFFFFFFFF81FFFFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbSamlingsspecifikation'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end>
    UseOwnFont = False
    Left = 312
    Top = 408
    PixelsPerInch = 96
  end
  object il_LastStatus: TImageList
    Left = 400
    Top = 352
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C0000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE0000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B007373730000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C0000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC600525252000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      00000000000000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED600525252000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C94000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC60000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FFFFCF8FF0000E0039FF9F87F0000
      C0018FF3F07F0000800187E7F03F00008000C3CFE03F00000000F11FE01F0000
      0000F83FE01F00000000FC7FF30F00000000F83FFF0F00000000F19FFF870000
      0000E3CFFF8700000001C7E7FFC3000080018FFBFFC7000080031FFFFFEF0000
      C0073FFFFFFF0000E00FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 400
    Top = 296
    object acFS: TAction
      Caption = 'F'#246'rhandsgranska'
      OnExecute = acFSExecute
      OnUpdate = acFSUpdate
    end
    object acFS_DK: TAction
      Caption = 'F'#246'ljesedel (DK)'
      OnExecute = acFS_DKExecute
      OnUpdate = acFS_DKUpdate
    end
    object acPrintSamLast: TAction
      Caption = 'Samlingsf'#246'ljesedel'
      OnExecute = acPrintSamLastExecute
      OnUpdate = acPrintSamLastUpdate
    end
    object acPrintSamLastMedPktNr: TAction
      Caption = 'Samlingsf'#246'ljesedel med pktnr'
      OnExecute = acPrintSamLastMedPktNrExecute
      OnUpdate = acPrintSamLastMedPktNrUpdate
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
      OnUpdate = acPkgInfoUpdate
    end
    object acChangeLoadLayout: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangeLoadLayoutExecute
    end
    object acChangePkgLayout: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangePkgLayoutExecute
    end
    object acSetLoadToConfirmed: TAction
      Caption = 'Set Load to Confirmed'
      Enabled = False
      OnExecute = acSetLoadToConfirmedExecute
    end
    object acConfirmedLoad: TAction
      Caption = 'Ankom. F10'
      ImageIndex = 13
      ShortCut = 121
      OnExecute = acConfirmedLoadExecute
      OnUpdate = acConfirmedLoadUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acExportLoadsToExcel: TAction
      Caption = 'Exp.xls F11'
      ImageIndex = 15
      OnExecute = acExportLoadsToExcelExecute
      OnUpdate = acExportLoadsToExcelUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdat. F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acUndoAR: TAction
      Caption = #197'ngra F4'
      ImageIndex = 11
      ShortCut = 115
      OnExecute = acUndoARExecute
      OnUpdate = acUndoARUpdate
    end
    object acShowGroupBox: TAction
      Caption = 'Grupperingsrutan'
      OnExecute = acShowGroupBoxExecute
    end
    object acExpandAll: TAction
      Caption = 'Expandera alla grupper'
      OnExecute = acExpandAllExecute
    end
    object acCollapseAll: TAction
      Caption = 'Kollapsa alla grupper'
      OnExecute = acCollapseAllExecute
    end
    object acPrintTallyUSNote: TAction
      Caption = 'F'#246'rhandsgranska'
      OnExecute = acPrintTallyUSNoteExecute
    end
    object acConfirmOneLoad: TAction
      Caption = 'Ankomstregistrera'
      OnExecute = acConfirmOneLoadExecute
      OnUpdate = acConfirmOneLoadUpdate
    end
    object acPrintDirectFS: TAction
      Caption = 'Skriv ut markerade laster'
      OnExecute = acPrintDirectFSExecute
    end
    object acPrintDirectFS_USA: TAction
      Caption = 'Skriv ut markerade laster'
      OnExecute = acPrintDirectFS_USAExecute
    end
    object acSamlingsFS_USA: TAction
      Caption = 'Samlingsf'#246'ljesedel USA'
      OnExecute = acSamlingsFS_USAExecute
    end
    object acGetIntPrices: TAction
      Caption = 'Upd. priser s-F6'
      ImageIndex = 14
      ShortCut = 8309
      OnExecute = acGetIntPricesExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acSendLoadToHampen: TAction
      Caption = 'S'#228'nd inlev till HTF'
      ImageIndex = 7
    end
    object acSetInfo2Text: TAction
      Caption = #196'ndra position p'#229' markerade paket'
      OnExecute = acSetInfo2TextExecute
    end
    object acSetPktStorlek: TAction
      Caption = #196'ndra paketstorlek p'#229' markerade paket'
      OnExecute = acSetPktStorlekExecute
    end
    object acScannedErrors: TAction
      Caption = 'SkannLogg'
      ImageIndex = 6
      OnExecute = acScannedErrorsExecute
    end
    object acNumPad: TAction
      Caption = 'NumPad'
      OnExecute = acNumPadExecute
    end
  end
  object pmPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbPkgInfo'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 608
    Top = 296
    PixelsPerInch = 96
  end
  object pmLoads: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbCustomizeLayout'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'SetFontSize'
      end>
    UseOwnFont = False
    Left = 312
    Top = 352
    PixelsPerInch = 96
  end
  object mtSelectedLoads: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 512
    Top = 288
    object mtSelectedLoadsLoadNo: TIntegerField
      FieldName = 'LoadNo'
    end
    object mtSelectedLoadsLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtSelectedLoadsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtSelectedLoadsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtSelectedLoadsStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtSelectedLoadsOBJECTTYPE: TIntegerField
      FieldName = 'OBJECTTYPE'
    end
    object mtSelectedLoadsOrderType: TIntegerField
      FieldName = 'OrderType'
    end
    object mtSelectedLoadsLoadAR: TIntegerField
      FieldName = 'LoadAR'
    end
    object mtSelectedLoadsImpOrt: TIntegerField
      FieldName = 'ImpOrt'
    end
    object mtSelectedLoadsEGEN: TIntegerField
      FieldName = 'EGEN'
    end
    object mtSelectedLoadsAvropCustomerNo: TIntegerField
      FieldName = 'AvropCustomerNo'
    end
    object mtSelectedLoadsLOTYP: TStringField
      FieldName = 'LOTYP'
      Size = 10
    end
    object mtSelectedLoadsTrading: TIntegerField
      FieldName = 'Trading'
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    Left = 72
    Top = 392
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 512
    Top = 408
    PixelsPerInch = 96
    object cxStyle_1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15138815
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_0: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16772829
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 9830399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_Focus: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleLoadAR: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleAvraknad: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 136
    Top = 192
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 136
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 288
    Top = 184
    object ndralayout1: TMenuItem
      Action = acChangeLoadLayout
    end
    object ndralayout2: TMenuItem
      Action = acChangePkgLayout
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object Kollapsaallagrupper1: TMenuItem
      Action = acCollapseAll
    end
    object AnkomstregistreraF101: TMenuItem
      Action = acConfirmedLoad
    end
    object Ankomstregistrera1: TMenuItem
      Action = acConfirmOneLoad
    end
    object Expanderaallagrupper1: TMenuItem
      Action = acExpandAll
    end
    object ExportxlsF111: TMenuItem
      Action = acExportLoadsToExcel
    end
    object Frhandsgranska1: TMenuItem
      Action = acFS
    end
    object FljesedelDK1: TMenuItem
      Action = acFS_DK
    end
    object UpdintprisersF61: TMenuItem
      Action = acGetIntPrices
    end
    object Paketinformation1: TMenuItem
      Action = acPkgInfo
    end
    object Skrivutmarkeradelaster1: TMenuItem
      Action = acPrintDirectFS
    end
    object Skrivutmarkeradelaster2: TMenuItem
      Action = acPrintDirectFS_USA
    end
    object Samlingsfljesedel1: TMenuItem
      Action = acPrintSamLast
    end
    object Samlingsfljesedelmedpktnr1: TMenuItem
      Action = acPrintSamLastMedPktNr
    end
    object Frhandsgranska2: TMenuItem
      Action = acPrintTallyUSNote
    end
    object SetLoadtoConfirmed1: TMenuItem
      Action = acSetLoadToConfirmed
    end
    object Grupperingsrutan1: TMenuItem
      Action = acShowGroupBox
    end
    object ngraF41: TMenuItem
      Action = acUndoAR
    end
    object UppdateraF61: TMenuItem
      Action = acRefresh
    end
    object SkrivutF81: TMenuItem
      Action = acPrint
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdLoads
    PopupMenus = <>
    Left = 688
    Top = 296
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    AfterPost = cds_PropsAfterPost
    AfterScroll = cds_PropsAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 72
    Top = 192
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsVerkNoChange
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsClientNoChange
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarknad: TStringField
      FieldKind = fkLookup
      FieldName = 'Marknad'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_PropsKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSaljgrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Saljgrupp'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesPersonNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_PropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsLaststlle: TStringField
      FieldKind = fkLookup
      FieldName = 'Lastst'#228'lle'
      LookupDataSet = sq_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'Ort'
      KeyFields = 'LoadingLocationNo'
      Size = 50
      Lookup = True
    end
    object cds_PropsDestination: TStringField
      FieldKind = fkLookup
      FieldName = 'Destination'
      LookupDataSet = sq_Dest
      LookupKeyFields = 'CityNo'
      LookupResultField = 'Ort'
      KeyFields = 'BookingTypeNo'
      Size = 50
      Lookup = True
    end
    object cds_PropsSlutkund: TStringField
      FieldKind = fkLookup
      FieldName = 'Slutkund'
      LookupDataSet = dmsContact.sp_Customers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 72
    Top = 240
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdPkgs
    PopupMenus = <>
    Left = 688
    Top = 352
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 232
  end
  object sq_City: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Distinct C.CityName AS Ort, C.CityNo FROM dbo.City C'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhyInvPointName' +
        'No = C.CityNo'
      'WHERE ((PIP.OwnerNo = :OwnerNo) or ((0 = :OwnerNo)))'
      'Order By C.CityName')
    Left = 72
    Top = 336
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CityOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_CityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_Dest: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select  Distinct C.CityName AS Ort, C.CityNo FROM dbo.City C'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhyInvPointName' +
        'No = C.CityNo'
      '--Inner Join dbo.ClientRole CR on CR.ClientNo = PIP.OwnerNo'
      'WHERE ((PIP.OwnerNo = :OwnerNo) or ((0 = :OwnerNo)))'
      'Order By C.CityName')
    Left = 72
    Top = 288
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_DestOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_DestCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object siLangLinked_frmLoadArrivals: TsiLangLinked
    Version = '7.9.0.1'
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 688
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004C006F00610064004100720072006900
      760061006C0073000100660072006D004C006F00610064004100720072006900
      760061006C00730001000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C006500560069006500770031004C004F00
      01004C004F00010001004C004F00010001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004C00
      4F00410044004E004F0001004C006100730074006E007200010001004C006F00
      610064004E006F00010001000D000A006700720064004C006F00610064007300
      440042005400610062006C006500560069006500770031004C004F0041004400
      4500440044004100540045000100550074006C00610073007400610064000100
      01004C006F006100640065006400010001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004C00
      4F00410044005F00530054004100540055005300010053007400610074007500
      730001000100530074006100740075007300010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      31004600530001004600530001000100540061006C006C007900010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      560069006500770031004C004F00410044005F004900440001004C0061007300
      7400200049004400010001004C006F0061006400200049004400010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      560069006500770031004100560052004F0050005F0043005500530054004F00
      4D004500520001004B0075006E0064002800650078007400650072006E002900
      01004B0075006E0064002000650078007400650072006E000100430075007300
      74006F006D00650072002000650078007400650072006E0001004B0075006E00
      64002000650078007400650072006E0001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031005300
      5500500050004C0049004500520001004C00650076006500720061006E007400
      F60072000100010053007500700070006C00690065007200010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      6900650077003100440045005300540049004E004100540049004F004E000100
      440065007300740069006E006100740069006F006E0001000100010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      5600690065007700310049004E00560050004F0049004E0054004E0041004D00
      450001004C0065007600650072006500720061002000740069006C006C000100
      0100440065006C006900760065007200200074006F00010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      650077003100530055005000500043004F004400450001005000720065006600
      6900780001000100500072006500660069007800010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      7700310043005500530054004F004D004500520001004B0075006E0064002800
      69006E007400650072006E00290001004B0075006E006400200069006E007400
      650072006E00010043007500730074006F006D0065007200200069006E007400
      650072006E0001004B0075006E006400200069006E007400650072006E000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310049004E0049005400490041004C00530001004100
      52002000610076000100010041005200200062007900010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      65007700310043006F0075006E0074007200790043006F006400650001004C00
      61006E0064006B006F0064000100010043006F0075006E007400720079002000
      63006F0064006500010001000D000A006700720064004C006F00610064007300
      440042005400610062006C006500560069006500770031004C004F0049004E00
      490001004C004F0020007200650067002E006100760001004C004F0020007200
      6500670020006100760001004C004F0020007200650067002000620079000100
      4C004F00200072006500670020006100760001000D000A006700720064004C00
      6F00610064007300440042005400610062006C00650056006900650077003100
      4C00410053005400530054004C004C00450001004C0061007300740073007400
      E4006C006C006500010001004C006F006100640069006E006700200070006C00
      610063006500010001000D000A006700720064004C006F006100640073004400
      42005400610062006C006500560069006500770031004F005200440045005200
      5F004E004F0001004F0072006400650072006E00720001004F00720064006500
      72004E00720001004F0072006400650072004E006F0001004F00720064006500
      72004E00720001000D000A006700720064004C006F0061006400730044004200
      5400610062006C006500560069006500770031004F0042004A00450043005400
      540059005000450001004F0042004A0045004300540054005900500045000100
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C0065005600690065007700310043005500530054004F004D004500
      52004E004F00010043005500530054004F004D00450052004E004F0001000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004100560052004F0050005F0043005500
      530054004F004D00450052004E004F0001004100560052004F0050005F004300
      5500530054004F004D00450052004E004F0001000100430061006C006C006F00
      660066005F0063007500730074006F006D00650072004E006F00010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      560069006500770031004F007200640065007200540079007000650001004F00
      7200640065007200740079007000010001004F00720064006500720020007400
      790070006500010001000D000A006700720064004C006F006100640073004400
      42005400610062006C0065005600690065007700310053005500500050004C00
      4900450052004E004F00010053005500500050004C004900450052004E004F00
      01000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C006500560069006500770031004C00690070004E006F000100
      4C00690070004E006F0001000100010001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004900
      4E00560050004F0049004E0054004E004F00010049004E00560050004F004900
      4E0054004E004F0001000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310054005900
      50000100540079007000010001005400790070006500010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      6500770031004C004F0054005900500001004C004F00010001004C004F000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C00650056006900650077003100540072006100640069006E00670001005400
      72006100640069006E00670001000100540072006100640069006E0067000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C006500560069006500770031004C006F006100640041005200010041005200
      0100010041005200010001000D000A006700720064004C006F00610064007300
      440042005400610062006C006500560069006500770031004100520074006900
      6C006C004C0061006700650072000100410052002000740069006C006C002000
      6C0061006700650072000100010041005200200074006F002000730074006F00
      63006B00010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C0065005600690065007700310049006D007000560065007200
      6B00010049006D0070002E006F0072007400010049006D00700020006F007200
      74000100540072006500610074006D0065006E00740020006300690074007900
      010049006D00700020006F007200740001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004500
      470045004E0001004500470045004E00010001004F0057004E00010001000D00
      0A00630078004C006100620065006C003200010056006900730061003A000100
      56006900730061000100530068006F0077000100560069007300610001000D00
      0A00630078004C006100620065006C00330001004C004F003A0001004C004F00
      01004C004F0001004C004F0001000D000A00630078004C006100620065006C00
      340001004C006100730074006E0072003A0001004C006100730074006E007200
      01004C006F00610064004E006F0001004C006100730074006E00720001000D00
      0A00630078004C006100620065006C003500010050006500720069006F006400
      3A00010050006500720069006F006400010050006500720069006F0064000100
      50006500720069006F00640001000D000A006300620041006C006C0061005600
      650072006B00010041006C006C00610020007600650072006B00010001004100
      6C006C0020006D0069006C006C007300010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      410043004B004100470045005F004E004F000100500061006B00650074006E00
      72000100500061006B00650074004E007200010050006B0067004E006F000100
      500061006C006C004E00720001000D000A0067007200640050006B0067007300
      440042005400610062006C006500560069006500770031005300550050005000
      4C0049004500520043004F004400450001005000720065006600690078000100
      0100500072006500660069007800010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310050005200
      4F0044005500430054005F004400450053004300520049005000540049004F00
      4E000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A0067007200640050006B0067007300440042005400
      610062006C006500560069006500770031004700530001004B00760061006C00
      6900740065007400730073007400E4006D00700065006C000100010047007200
      61006400650020007300740061006D007000010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      420043000100530074007200650063006B006B006F0064000100010042006100
      720063006F0064006500010001000D000A0067007200640050006B0067007300
      440042005400610062006C006500560069006500770031004D0033005F004E00
      45005400010041004D00330001000100010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      43005300010053007400790063006B000100010050006300730001005300E400
      63006B0001000D000A0067007200640050006B00670073004400420054006100
      62006C006500560069006500770031004D0033005F004E004F004D0001004E00
      4D003300010001004E004D003300010001000D000A0067007200640050006B00
      67007300440042005400610062006C006500560069006500770031004D004600
      42004D0001004D00460042004D00010001004D00460042004D00010001000D00
      0A0067007200640050006B0067007300440042005400610062006C0065005600
      69006500770031004C006F00610064004E006F0001004C006F00610064004E00
      6F0001000100010001000D000A0067007200640050006B006700730044004200
      5400610062006C006500560069006500770031004C004F0001004C004F000100
      01004C004F00010001000D000A0067007200640050006B006700730044004200
      5400610062006C006500560069006500770031004C004F00410044005F004400
      45005400410049004C004E004F0001005200610064006E007200010001004C00
      69006E0065004E006F00010001000D000A0067007200640050006B0067007300
      440042005400610062006C006500560069006500770031005000410043004B00
      4100470045004F004B0001005300740061007400750073000100010053007400
      6100740075007300010001000D000A0067007200640050006B00670073004400
      42005400610062006C006500560069006500770031005000410043004B004100
      470045005F004C004F00470001004C006F0067006700010001004C006F006700
      010001000D000A0067007200640050006B006700730044004200540061006200
      6C00650056006900650077003100530075006200530075006D0001005600E400
      72006400650001000100560061006C0075006500010001000D000A0067007200
      640050006B0067007300440042005400610062006C0065005600690065007700
      3100500052004900430045000100500072006900730001000100500072006900
      63006500010001000D000A0067007200640050006B0067007300440042005400
      610062006C006500560069006500770031004E004C004D004D0001004E004C00
      4D004D00010001004E004C004D004D00010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031004100
      4C004D004D00010041004C004D004D0001000100010001000D000A0067007200
      640050006B0067007300440042005400610062006C0065005600690065007700
      3100550073006500640001004600F60072006200720075006B00610064000100
      01005500730065006400010001000D000A0067007200640050006B0067007300
      440042005400610062006C0065005600690065007700310049006E0066006F00
      3200010049006E0066006F0032002000280070006F0073006900740069006F00
      6E00290001000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003100010043007500730074006F006D00
      2000320001000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      2000310001000100010001000D000A0064007800420061007200530075006200
      4900740065006D00310001004600F6006C006A00650073006500640065006C00
      01000100540061006C006C007900010001000D000A0064007800420061007200
      5300750062004900740065006D00320001004600F6006C006A00650073006500
      640065006C00200055005300410001000100540061006C006C00790020005500
      5300010001000D000A00610063004600530001004600F6007200680061006E00
      640073006700720061006E0073006B0061000100010050007200650076006900
      65007700010001000D000A0061006300460053005F0044004B0001004600F600
      6C006A00650073006500640065006C002000280044004B002900010001005400
      61006C006C0079002000280044004B002900010001000D000A00610063005000
      720069006E007400530061006D004C006100730074000100530061006D006C00
      69006E00670073006600F6006C006A00650073006500640065006C0001000100
      43006F006C006C0065006300740069006F006E002000740061006C006C007900
      010001000D000A00610063005000720069006E007400530061006D004C006100
      730074004D006500640050006B0074004E0072000100530061006D006C006900
      6E00670073006600F6006C006A00650073006500640065006C0020006D006500
      6400200070006B0074006E0072000100530061006D006C0069006E0067007300
      6600F6006C006A00650073006500640065006C0020006D006500640020005000
      61006B00650074004E007200010043006F006C006C0065006300740069006F00
      6E002000740061006C006C00790020007700690074006800200050006B006700
      4E006F0073000100530061006D006C0069006E00670073006600F6006C006A00
      650073006500640065006C0020006D00650064002000500061006C006C004E00
      720001000D000A006100630050006B00670049006E0066006F00010050006100
      6B006500740069006E0066006F0072006D006100740069006F006E0001000100
      50006B006700200069006E0066006F000100500061006C006C0069006E006600
      6F0001000D000A00610063004300680061006E00670065004C006F0061006400
      4C00610079006F00750074000100C4006E0064007200610020006C0061007900
      6F0075007400010001004300680061006E006700650020006C00610079006F00
      75007400010001000D000A00610063004300680061006E006700650050006B00
      67004C00610079006F00750074000100C4006E0064007200610020006C006100
      79006F0075007400010001004300680061006E006700650020006C0061007900
      6F0075007400010001000D000A00610063005300650074004C006F0061006400
      54006F0043006F006E006600690072006D006500640001005300650074002000
      4C006F0061006400200074006F00200043006F006E006600690072006D006500
      640001005300E4007400740020006C006100730074002000740069006C006C00
      20004100760073006C007500740061006400010053006500740020006C006F00
      61006400200074006F00200063006F006E006600690072006D00650064000100
      5300E4007400740020006C006100730074002000740069006C006C0020004100
      760073006C00750074006100640001000D000A006100630043006F006E006600
      690072006D00650064004C006F0061006400010041006E006B006F006D002E00
      2000460031003000010041005200200046003100300001004100520020004600
      31003000010041005200200046003100300001000D000A006100630043006C00
      6F0073006500010053007400E4006E0067002000460031003200010001004300
      6C006F00730065002000460031003200010001000D000A006100630045007800
      70006F00720074004C006F0061006400730054006F0045007800630065006C00
      01004500780070002E0078006C00730020004600310031000100010001000100
      0D000A0061006300520065006600720065007300680001005500700070006400
      610074002E002000460036000100010055007000640061007400650020004600
      3600010001000D000A006100630055006E0064006F00410052000100C5006E00
      6700720061002000460034000100010055006E0064006F002000460034000100
      01000D000A0061006300530068006F007700470072006F007500700042006F00
      78000100470072007500700070006500720069006E0067007300720075007400
      61006E0001000100470072006F0075007000200062006F007800010001000D00
      0A006100630045007800700061006E00640041006C006C000100450078007000
      61006E006400650072006100200061006C006C00610020006700720075007000
      7000650072000100010045007800700061006E006400200061006C006C002000
      670072006F00750070007300010001000D000A006100630043006F006C006C00
      610070007300650041006C006C0001004B006F006C006C006100700073006100
      200061006C006C00610020006700720075007000700065007200010001004300
      6F006C006C006100700073006500200061006C006C002000670072006F007500
      70007300010001000D000A00610063005000720069006E007400540061006C00
      6C007900550053004E006F007400650001004600F6007200680061006E006400
      73006700720061006E0073006B00610001000100500072006500760069006500
      7700010001000D000A006100630043006F006E006600690072006D004F006E00
      65004C006F0061006400010041006E006B006F006D0073007400720065006700
      6900730074007200650072006100010041006E006B006F006D00730074007200
      6500670069007300740072006500720061000100410072007200690076006100
      6C00200072006500670069007300740065007200010041006E006B006F006D00
      73007400720065006700690073007400720065007200610001000D000A006100
      63005000720069006E0074004400690072006500630074004600530001005300
      6B0072006900760020007500740020006D00610072006B006500720061006400
      650020006C0061007300740065007200010001005000720069006E0074002000
      730065006C006500630074006500640020006C006F0061006400730001000100
      0D000A00610063005000720069006E0074004400690072006500630074004600
      53005F00550053004100010053006B0072006900760020007500740020006D00
      610072006B006500720061006400650020006C00610073007400650072000100
      01005000720069006E0074002000730065006C00650063007400650064002000
      6C006F00610064007300010001000D000A0061006300530061006D006C006900
      6E0067007300460053005F005500530041000100530061006D006C0069006E00
      670073006600F6006C006A00650073006500640065006C002000550053004100
      0100010043006F006C006C0065006300740069006F006E002000740061006C00
      6C007900200055005300010001000D000A006100630047006500740049006E00
      740050007200690063006500730001005500700064002E002000700072006900
      730065007200200073002D0046003600010055007000700064002E0020007000
      720069007300650072002000730068006900660074002B004600360001005500
      700064002E007000720069006300650073002000730068006900660074002B00
      46003600010055007000700064002E0020007000720069007300650072002000
      730068006900660074002B004600360001000D000A0061006300500072006900
      6E007400010053006B0072006900760020007500740020004600380001000100
      5000720069006E007400200046003800010001000D000A006100630053006500
      6E0064004C006F006100640054006F00480061006D00700065006E0001005300
      E4006E006400200069006E006C00650076002000740069006C006C0020004800
      5400460001005300E4006E006400200069006E006C00650076002E0020007400
      69006C006C0020004800540046000100530065006E0064002000720065006300
      65006900760065006400200074006F00200048005400460001005300E4006E00
      6400200069006E006C00650076002E002000740069006C006C00200048005400
      460001000D000A006100630053006500740049006E0066006F00320054006500
      780074000100C4006E00640072006100200070006F0073006900740069006F00
      6E0020007000E50020006D00610072006B006500720061006400650020007000
      61006B0065007400010001004300680061006E0067006500200070006F007300
      6900740069006F006E0020006F006E0020006D00610072006B00650064002000
      70006B0067000100C4006E00640072006100200070006F007300690074006900
      6F006E0020007000E50020006D00610072006B00650072006100640065002000
      700061006C006C006100720001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004E006F004F00
      66005000610063006B006100670065007300010041006E00740061006C002000
      700061006B0065007400010001004E006F0020006F006600200070006B006700
      7300010041006E00740061006C002000700061006C006C006100720001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      560069006500770031005000610063006B00610067006500730043006F006E00
      6600690072006D00650064000100500061006B00650074002000620065006B00
      7200E400660074006100640065000100010050006B0067002E00200043006F00
      6E006600690072006D00650064000100500061006C006C006100720020006200
      65006B007200E4006600740061006400650001000D000A00630078004C006100
      620065006C0031003000010041006E00670065002000700061006B0065007400
      6E0072003A00010041006E00670065002000700061006B00650074006E007200
      010045006E00740065007200200070006B00670020006E006F00010041006E00
      670065002000700061006C006C006E00720001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      610063006B006100670065004E006F0001005000610063006B00610067006500
      4E006F0001000100010001000D000A0067007200640050006B00670073004400
      42005400610062006C0065005600690065007700310043007200650061007400
      6500640055007300650072000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A0067007200640050006B006700
      7300440042005400610062006C00650056006900650077003100440061007400
      6500430072006500610074006500640001004400610074006500430072006500
      610074006500640001000100010001000D000A00630078004C00610062006500
      6C00310001004D006F0074007400610067006100720065003A0001004D006F00
      7400740061006700610072006500010052006500630069007000690065006E00
      740001004D006F00740074006100670061007200650001000D000A0063007800
      4C006100620065006C00380001004C0065007600650072006500720061002000
      740069006C006C003A0001004C00650076006500720065007200610020007400
      69006C006C000100440065006C006900760065007200200074006F0001004C00
      65007600650072006500720061002000740069006C006C0001000D000A006300
      78004C006100620065006C00360001004C00650076006500720061006E007400
      F60072003A0001004C00650076006500720061006E007400F600720001005300
      7500700070006C0069006500720001004C00650076006500720061006E007400
      F600720001000D000A00630078004C006100620065006C00370001004C006100
      7300740073007400E4006C006C0065003A0001004C0061007300740073007400
      E4006C006C00650001004C006F006100640069006E006700200070006C006100
      6300650001004C0061007300740073007400E4006C006C00650001000D000A00
      630078004C006100620065006C00390001004B0075006E006400200065007800
      7400650072006E003A0001004B0075006E006400200065007800740065007200
      6E00010043007500730074006F006D0065007200200065007800740065007200
      6E0001004B0075006E0064002000650078007400650072006E0001000D000A00
      63006200530068006F0077004F006E006C007900560057004C006F0061006400
      730001005600690073006100200065006E006400610073007400200056005700
      20006C00650076006500720061006E0073006500720001000100530068006F00
      770020006F006E006C0079002000560057002000640065006C00690076006500
      7200690065007300010001000D000A00620074004300680061006E0067006500
      5300740079006C00650001005300740079006C00650073000100010001000100
      0D000A0067007200640050006B0067007300440042005400610062006C006500
      5600690065007700310050006F0073006900740069006F006E00010050006F00
      73006900740069006F006E0001000100010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      610063006B006100670065005F00530069007A006500010050006B0074007300
      74006F0072006C0065006B002000690064000100010050006B0067002E005300
      69007A0065002000690064000100500061006C006C00730074006F0072006C00
      65006B0020006900640001000D000A0067007200640050006B00670073004400
      42005400610062006C006500560069006500770031005000610063006B006100
      67006500530069007A0065004E0061006D0065000100500061006B0065007400
      730074006F0072006C0065006B000100500061006B0065007400730074006F00
      72006C0065006B00010050006B0067002000730069007A006500010050006100
      6C006C00730074006F0072006C0065006B0001000D000A006100630053006500
      740050006B007400530074006F0072006C0065006B000100C4006E0064007200
      61002000700061006B0065007400730074006F0072006C0065006B0020007000
      E50020006D00610072006B00650072006100640065002000700061006B006500
      7400010001004300680061006E0067006500200070006B006700200073006900
      7A00650020006F006E0020006D00610072006B0065006400200070006B006700
      0100C4006E006400720061002000700061006C006C00730074006F0072006C00
      65006B0020007000E50020006D00610072006B00650072006100640065002000
      700061006B006500740001000D000A0047007200690064005400610062006C00
      650056006900650077005300740079006C006500530068006500650074004C00
      69006C006100630001004C0069006C006100630001000100010001000D000A00
      47007200690064005400610062006C0065005600690065007700530074007900
      6C00650053006800650065007400520065006400570068006900740065006100
      6E00640042006C007500650056004700410001005200650064002C0020005700
      68006900740065002C00200061006E006400200042006C007500650020002800
      560047004100290001000100010001000D000A00470072006900640054006100
      62006C00650056006900650077005300740079006C0065005300680065006500
      7400500075006D0070006B0069006E006C006100720067006500010050007500
      6D0070006B0069006E00200028006C0061007200670065002900010001000100
      01000D000A006100630050007200650070006100720065005300630061006E00
      0100500072006500700061007200650020005300630061006E00010001000100
      01000D000A00610063005300630061006E006E00650064004500720072006F00
      72007300010053006B0061006E006E004C006F00670067000100010053006300
      61006E006E004C006F006700010001000D000A006700720064004C006F006100
      64007300440042005400610062006C006500560069006500770031004F007200
      6900670069006E0061006C004C004F0001004F0072006900670069006E006100
      6C004C004F0001000100010001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004F0072006900
      670069006E0061006C004C006F00610064004E006F0001004F00720069006700
      69006E0061006C004C006F00610064004E006F0001000100010001000D000A00
      67007200640050006B0067007300440042005400610062006C00650056006900
      6500770031005300630061006E006E006500640001005300630061006E006E00
      6500640001000100010001000D000A0053006500740046006F006E0074005300
      69007A006500010046006F006E007400730074006F0072006C0065006B000100
      010046006F006E007400730069007A006500010001000D000A00610063004E00
      75006D0050006100640001004E0075006D005000610064000100010001000100
      0D000A006300780047007200690064005400610062006C006500560069006500
      77005300740079006C0065005300680065006500740046006F00720050006B00
      6700730001006300780047007200690064005400610062006C00650056006900
      650077005300740079006C0065005300680065006500740046006F0072005000
      6B006700730001000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A0053006500740046006F006E00
      7400530069007A006500010046006F006E007400730074006F0072006C006500
      6B000100010046006F006E007400730069007A006500010001000D000A007300
      740044006900730070006C00610079004C006100620065006C0073005F005500
      6E00690063006F00640065000D000A006D007400530065006C00650063007400
      650064004C006F006100640073004C006F00610064004E006F0001004C006F00
      610064004E006F0001000100010001000D000A006D007400530065006C006500
      63007400650064004C006F006100640073004C004F004E006F0001004C004F00
      4E006F0001000100010001000D000A006D007400530065006C00650063007400
      650064004C006F006100640073004C00490050004E006F0001004C0049005000
      4E006F0001000100010001000D000A006D007400530065006C00650063007400
      650064004C006F0061006400730043007500730074006F006D00650072004E00
      6F00010043007500730074006F006D00650072004E006F000100010001000100
      0D000A006D007400530065006C00650063007400650064004C006F0061006400
      7300530074006100740075007300010053007400610074007500730001000100
      530074006100740075007300010001000D000A006D007400530065006C006500
      63007400650064004C006F006100640073004F0042004A004500430054005400
      59005000450001004F0042004A00450043005400540059005000450001000100
      010001000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073004F007200640065007200540079007000650001004F0072006400
      65007200540079007000650001004F0072006400650072005400790070000100
      01004F00720064006500720054007900700001000D000A006D00740053006500
      6C00650063007400650064004C006F006100640073004C006F00610064004100
      520001004C006F00610064004100520001000100010001000D000A006D007400
      530065006C00650063007400650064004C006F0061006400730049006D007000
      4F0072007400010049006D0070004F0072007400010001005400720065006100
      74006D0065006E00740020004300690074007900010001000D000A006D007400
      530065006C00650063007400650064004C006F00610064007300450047004500
      4E0001004500470045004E00010001004F0057004E00010001000D000A006D00
      7400530065006C00650063007400650064004C006F0061006400730041007600
      72006F00700043007500730074006F006D00650072004E006F00010041007600
      72006F00700043007500730074006F006D00650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005500730065007200
      49004400010055007300650072004900440001000100010001000D000A006300
      640073005F00500072006F007000730046006F0072006D00010046006F007200
      6D00010046006F0072006D0075006C00E40072000100010046006F0072006D00
      75006C00E400720001000D000A006300640073005F00500072006F0070007300
      5600650072006B004E006F0001005600650072006B004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073004F0077006E006500
      72004E006F0001004F0077006E00650072004E006F0001000100010001000D00
      0A006300640073005F00500072006F00700073005000490050004E006F000100
      5000490050004E006F0001000100010001000D000A006300640073005F005000
      72006F00700073004C00490050004E006F0001004C00490050004E006F000100
      0100010001000D000A006300640073005F00500072006F007000730049006E00
      7000750074004F007000740069006F006E00010049006E007000750074004F00
      7000740069006F006E00010049006E006D00610074006E0069006E0067007300
      61006C007400650072006E006100740069007600010049006E00700075007400
      20006F007000740069006F006E007300010049006E006D00610074006E006900
      6E006700730061006C007400650072006E00610074006900760001000D000A00
      6300640073005F00500072006F007000730052006500670050006F0069006E00
      74004E006F00010052006500670050006F0069006E0074004E006F0001000100
      010001000D000A006300640073005F00500072006F0070007300520065006700
      4400610074006500010052006500670044006100740065000100010001000100
      0D000A006300640073005F00500072006F007000730043006F00700079005000
      63007300010043006F007000790050006300730001004B006F00700069006500
      72006100200073007400790063006B00010001004B006F007000690065007200
      610020007300E40063006B0001000D000A006300640073005F00500072006F00
      70007300520075006E004E006F000100520075006E004E006F0001004B00F600
      72004E007200010001004B00F60072004E00720001000D000A00630064007300
      5F00500072006F0070007300500072006F00640075006300650072004E006F00
      0100500072006F00640075006300650072004E006F0001000100010001000D00
      0A006300640073005F00500072006F00700073004100750074006F0043006F00
      6C005700690064007400680001004100750074006F0043006F006C0057006900
      64007400680001004100750074006F002E0020006B006F006C002E0062007200
      65006400640001004100750074006F002E00200063006F006C002E0077006900
      64007400680001004100750074006F002E0020006B006F006C002E0062007200
      65006400640001000D000A006300640073005F00500072006F00700073005300
      7500700070006C0069006500720043006F006400650001005300750070007000
      6C0069006500720043006F006400650001004C00650076006500720061006E00
      7400F600720073006B006F006400010053007500700070006C00690065007200
      63006F006400650001004C00650076006500720061006E007400F60072007300
      6B006F00640001000D000A006300640073005F00500072006F00700073004C00
      65006E006700740068004F007000740069006F006E0001004C0065006E006700
      740068004F007000740069006F006E0001000100010001000D000A0063006400
      73005F00500072006F00700073004C0065006E00670074006800470072006F00
      750070004E006F0001004C0065006E00670074006800470072006F0075007000
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73004E00650077004900740065006D0052006F00770001004E00650077004900
      740065006D0052006F00770001000100010001000D000A006300640073005F00
      500072006F0070007300530061006C006500730052006500670069006F006E00
      4E006F000100530061006C006500730052006500670069006F006E004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004D00
      610072006B006500740052006500670069006F006E004E006F0001004D006100
      72006B006500740052006500670069006F006E004E006F000100010001000100
      0D000A006300640073005F00500072006F00700073004F007200640065007200
      54007900700065004E006F0001004F0072006400650072005400790070006500
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      7300530074006100740075007300010053007400610074007500730001000100
      530074006100740075007300010001000D000A006300640073005F0050007200
      6F0070007300460069006C007400650072004F00720064006500720044006100
      740065000100460069006C007400650072004F00720064006500720044006100
      740065000100460069006C007400650072004F00720064006500720044006100
      740075006D0001000100460069006C007400650072004F007200640065007200
      44006100740075006D0001000D000A006300640073005F00500072006F007000
      73005300740061007200740050006500720069006F0064000100530074006100
      7200740050006500720069006F00640001000100010001000D000A0063006400
      73005F00500072006F007000730045006E00640050006500720069006F006400
      010045006E00640050006500720069006F00640001000100010001000D000A00
      6300640073005F00500072006F007000730043006C00690065006E0074004E00
      6F00010043006C00690065006E0074004E006F0001000100010001000D000A00
      6300640073005F00500072006F0070007300530061006C006500730050006500
      720073006F006E004E006F000100530061006C00650073005000650072007300
      6F006E004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073005600650072006B0053007500700070006C006900650072004E00
      6F0001005600650072006B0053007500700070006C006900650072004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073005600
      650072006B004B0075006E0064004E006F0001005600650072006B004B007500
      6E0064004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004C004F004F0062006A0065006300740054007900700065000100
      4C004F004F0062006A0065006300740054007900700065000100010001000100
      0D000A006300640073005F00500072006F007000730042006100720043006F00
      640065004E006F00010042006100720043006F00640065004E006F0001000100
      010001000D000A006300640073005F00500072006F0070007300470072006100
      640065005300740061006D0070004E006F000100470072006100640065005300
      740061006D0070004E006F0001000100010001000D000A006300640073005F00
      500072006F007000730056006F006C0075006D00650055006E00690074004E00
      6F00010056006F006C0075006D00650055006E00690074004E006F0001000100
      010001000D000A006300640073005F00500072006F00700073004C0065006E00
      67007400680046006F0072006D00610074004E006F0001004C0065006E006700
      7400680046006F0072006D00610074004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068005600
      6F006C0055006E00690074004E006F0001004C0065006E006700740068005600
      6F006C0055006E00690074004E006F0001000100010001000D000A0063006400
      73005F00500072006F0070007300470072006F00750070004200790042006F00
      78000100470072006F00750070004200790042006F0078000100010001000100
      0D000A006300640073005F00500072006F0070007300470072006F0075007000
      530075006D006D006100720079000100470072006F0075007000530075006D00
      6D0061007200790001000100010001000D000A006300640073005F0050007200
      6F00700073004100670065006E0074004E006F0001004100670065006E007400
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73004C006F006100640069006E0067004C006F0063006100740069006F006E00
      4E006F0001004C006F006100640069006E0067004C006F006300610074006900
      6F006E004E006F0001000100010001000D000A006300640073005F0050007200
      6F007000730053006800690070007000650072004E006F000100530068006900
      70007000650072004E006F0001000100010001000D000A006300640073005F00
      500072006F007000730042006F006F006B0069006E0067005400790070006500
      4E006F00010042006F006F006B0069006E00670054007900700065004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004300
      7500730074006F006D00650072004E006F00010043007500730074006F006D00
      650072004E006F0001000100010001000D000A006300640073005F0050007200
      6F0070007300530068006F007700500072006F00640075006300740001005300
      68006F007700500072006F00640075006300740001000100010001000D000A00
      6300640073005F00500072006F00700073004D00610072006B006E0061006400
      01004D00610072006B006E0061006400010001004D00610072006B0065007400
      010001000D000A006300640073005F00500072006F00700073004B0075006E00
      640001004B0075006E0064000100010043007500730074006F006D0065007200
      010001000D000A006300640073005F00500072006F0070007300530052000100
      5300520001000100010001000D000A006300640073005F00500072006F007000
      7300530061006C006A00670072007500700070000100530061006C006A006700
      720075007000700001005300E4006C006A006700720075007000700001005300
      61006C00650073002000670072006F007500700001005300E4006C006A006700
      720075007000700001000D000A006300640073005F00500072006F0070007300
      5600650072006B0001005600650072006B00010001004D0069006C006C000100
      01000D000A006300640073005F00500072006F00700073004C00610073007400
      730074006C006C00650001004C0061007300740073007400E4006C006C006500
      010001004C006F006100640069006E006700200070006C006100630065000100
      01000D000A006300640073005F00500072006F00700073004400650073007400
      69006E006100740069006F006E000100440065007300740069006E0061007400
      69006F006E0001000100010001000D000A006300640073005F00500072006F00
      7000730053006C00750074006B0075006E006400010053006C00750074006B00
      75006E0064000100010045006E006400200063007500730074006F006D006500
      7200010001000D000A00730071005F0043006900740079004F00720074000100
      4F0072007400010001004300690074007900010001000D000A00730071005F00
      430069007400790043006900740079004E006F00010043006900740079004E00
      6F0001000100010001000D000A00730071005F0044006500730074004F007200
      740001004F0072007400010001004300690074007900010001000D000A007300
      71005F00440065007300740043006900740079004E006F000100430069007400
      79004E006F0001000100010001000D000A004600440051005F0050006F007300
      6900740069006F006E0050006F0073006900740069006F006E004E0061006D00
      6500010050006F0073006900740069006F006E004E0061006D00650001000100
      010001000D000A004600440051005F0050006F0073006900740069006F006E00
      50006F0073006900740069006F006E0049004400010050006F00730069007400
      69006F006E004900440001000100010001000D000A004D0065006D005F004D00
      61007400630068006100500072006F006400750063007400560061006C006400
      0100560061006C00640001000100430068006F00730065006E00010001000D00
      0A004D0065006D005F004D0061007400630068006100500072006F0064007500
      63007400460075006C006C0074000100460075006C006C007400010001000100
      01000D000A004D0065006D005F004D0061007400630068006100500072006F00
      640075006300740050006F0073006900740069006F006E004E0061006D006E00
      010050006F0073006900740069006F006E004E0061006D006E00010001000100
      01000D000A004D0065006D005F004D0061007400630068006100500072006F00
      6400750063007400500072006F0064007500630074004E0061006D006E000100
      500072006F0064007500630074004E0061006D006E0001000100010001000D00
      0A004D0065006D005F004D0061007400630068006100500072006F0064007500
      630074004E006F004F00660050006B006700730001004E006F004F0066005000
      6B006700730001000100010001000D000A004D0065006D005F004D0061007400
      630068006100500072006F006400750063007400500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A004D0065006D005F004D0061007400630068006100500072006F00
      640075006300740050006F0073006900740069006F006E004900440001005000
      6F0073006900740069006F006E004900440001000100010001000D000A004600
      440051005F004D00610074006300680050006F0073006900740069006F006E00
      50006F0073006900740069006F006E004E0061006D006500010050006F007300
      6900740069006F006E004E0061006D00650001000100010001000D000A004600
      440051005F004D00610074006300680050006F0073006900740069006F006E00
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065000100500072006F00640075006300740044006900730070006C006100
      79004E0061006D00650001000100010001000D000A004600440051005F004D00
      610074006300680050006F0073006900740069006F006E0050006F0073006900
      740069006F006E0049004400010050006F0073006900740069006F006E004900
      440001000100010001000D000A004600440051005F00500072006F0064007500
      630074004E006F00500072006F00640075006300740044006900730070006C00
      610079004E0061006D0065000100500072006F00640075006300740044006900
      730070006C00610079004E0061006D00650001000100010001000D000A004600
      440051005F00500072006F0064007500630074004E006F00500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A004D0065006D005F005000610063006B00500072006F00
      64004C00690073007400560061006C0064000100560061006C00640001000100
      430068006F00730065006E00010001000D000A004D0065006D005F0050006100
      63006B00500072006F0064004C00690073007400500061006B00650074004E00
      72000100500061006B00650074004E0072000100010050006B0067004E006F00
      0100500061006C006C006E00720001000D000A004D0065006D005F0050006100
      63006B00500072006F0064004C0069007300740050006B007400530075007000
      70006C0069006500720043006F0064006500010050006B007400530075007000
      70006C0069006500720043006F006400650001000100010001000D000A004D00
      65006D005F005000610063006B00500072006F0064004C006900730074005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006300740044006900730070006C0061007900
      4E0061006D00650001000100010001000D000A004D0065006D005F0050006100
      63006B00500072006F0064004C00690073007400500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A004600440051005F0050006800790049006E007600500074004E00
      6F0050006800790073006900630061006C0049006E00760065006E0074006F00
      7200790050006F0069006E0074004E006F000100500068007900730069006300
      61006C0049006E00760065006E0074006F007200790050006F0069006E007400
      4E006F0001000100010001000D000A004600440051005F0049006E0069007400
      690061006C004D00610074006300680050006F00730050006F00730053007400
      6100740075007300010050006F00730053007400610074007500730001000100
      010001000D000A004600440051005F0049006E0069007400690061006C004D00
      610074006300680050006F00730050006F0073006900740069006F006E004E00
      61006D006500010050006F0073006900740069006F006E004E0061006D006500
      01000100010001000D000A004600440051005F0049006E006900740069006100
      6C004D00610074006300680050006F007300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A004600440051005F0049006E0069007400690061006C004D0061007400
      6300680050006F007300500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065000100500072006F0064007500630074004400
      6900730070006C00610079004E0061006D00650001000100010001000D000A00
      4600440051005F0049006E0069007400690061006C004D006100740063006800
      50006F00730050006F0073006900740069006F006E0049004400010050006F00
      73006900740069006F006E004900440001000100010001000D000A0046004400
      51005F0049006E0069007400690061006C004D00610074006300680050006F00
      7300530074006F0072006500640044006100740065000100530074006F007200
      65006400440061007400650001000100010001000D000A004600440051005F00
      49006E0069007400690061006C004D00610074006300680050006F0073004E00
      6F004F00660050006B006700730042007900500072006F006400750063007400
      01004E006F004F00660050006B006700730042007900500072006F0064007500
      6300740001000100010001000D000A004600440051005F0049006E0069007400
      690061006C004D00610074006300680050006F0073004E006F004F0066005000
      6B00670073004200790050006F0073006900740069006F006E0001004E006F00
      4F00660050006B00670073004200790050006F0073006900740069006F006E00
      01000100010001000D000A004D0065006D005F00530074006F00720065005000
      6F0073006900740069006F006E0050006F0073006900740069006F006E004900
      4400010050006F0073006900740069006F006E00490044000100010001000100
      0D000A004D0065006D005F00530074006F007200650050006F00730069007400
      69006F006E005000720065006600690078000100500072006500660069007800
      01000100500072006500660069007800010001000D000A004D0065006D005F00
      530074006F007200650050006F0073006900740069006F006E00500061006B00
      6100670065004E0072000100500061006B006100670065004E00720001000100
      010001000D000A004600440051005F00500072006F0064007500630074005000
      6B0067005000610063006B006100670065004E006F0001005000610063006B00
      6100670065004E006F0001000100010001000D000A004600440051005F005000
      72006F00640075006300740050006B00670053007500700070006C0069006500
      720043006F0064006500010053007500700070006C0069006500720043006F00
      6400650001004C00650076006500720061006E007400F600720073006B006F00
      6400010053007500700070006C0069006500720063006F006400650001004C00
      650076006500720061006E007400F600720073006B006F00640001000D000A00
      6D00740050006B0067004E006F0073005000610063006B006100670065004E00
      6F0001005000610063006B006100670065004E006F0001000100010001000D00
      0A006D00740050006B0067004E006F00730053007500700070005F0043006F00
      64006500010053007500700070005F0043006F00640065000100010001000100
      0D000A006D00740050006B0067004E006F0073004F0077006E00650072004E00
      6F0001004F0077006E00650072004E006F0001000100010001000D000A006D00
      740050006B0067004E006F0073004C00490050004E006F0001004C0049005000
      4E006F0001000100010001000D000A006D00740050006B0067004E006F007300
      5000490050004E006F0001005000490050004E006F0001000100010001000D00
      0A006D00740050006B0067004E006F0073005300740061007400750073000100
      5300740061007400750073000100010053007400610074007500730001000100
      0D000A006D00740050006B0067004E006F0073005000610063006B0061006700
      65005F00530069007A00650001005000610063006B006100670065005F005300
      69007A00650001000100010001000D000A006D00740050006B0067004E006F00
      730043006500720074004E006F00010043006500720074004E006F0001000100
      010001000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073004C004F0054005900500001004C004F0054005900500001000100
      4C004F0020007400790070006500010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      4C006F00610064004100720072006900760061006C00730001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00640078004200610072004D0061006E0061006700
      65007200310001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200310001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0070006D00
      5000720069006E00740001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A0070006D0050006B006700730001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A0070006D004C006F0061006400730001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065005F00310001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C0065005F003000
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065005F0034000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065005F0046006F006300750073000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065004C006F0061006400410052000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650041007600720061006B006E006100640001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065004700
      7200650065006E0001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00620074004300680061006E00670065005300
      740079006C00650001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0045006400
      69007400310001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00450064006900
      7400320001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006200740050007200
      650070006100720065005300630061006E0001004D0053002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A006300780042007500740074006F006E00310001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A006300780042007500740074006F006E0032000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      310001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650032000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C006500330001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      6500340001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003500010054006100
      68006F006D006100010001005400610068006F006D006100010001000D000A00
      630078005300740079006C006500360001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500370001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500380001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500390001005400610068006F006D006100
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003100300001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003100
      310001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650031003200010047006100
      720061006D006F006E006400010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003100330001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003100340001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003100350001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500310036000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003100370001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C00650031003800010047006100720061006D006F006E006400
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003100390001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003200
      300001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650032003100010054006100
      68006F006D006100010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003200320001005400610068006F006D006100
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003200330001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003200
      3400010041007200690061006C00010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500320035000100410072006900
      61006C00010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C00650032003600010041007200690061006C00010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      32003700010041007200690061006C00010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650032003800010041007200
      690061006C00010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003200390001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      33003000010041007200690061006C00010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650033003100010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3300320001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500330033000100410072006900
      61006C00010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003300340001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003300350001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      010001000D000A00630078005300740079006C0065003300360001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003300370001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003300
      380001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003300390001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003400300001004D006900630072006F0073006F00660074002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500340031000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003400320001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003400330001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      010001000D000A00630078005300740079006C0065003400340001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003400350001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003400360001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500340037000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003400380001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003400390001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003500300001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500350031000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003500320001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003500330001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003500340001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500350035000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003500360001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003500370001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003500380001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500350039000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003600300001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003600310001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003600320001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500360033000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003600340001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003600350001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003600360001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500360037000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003600380001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003600390001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003700300001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500370031000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003700320001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003700330001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003700340001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500370035000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003700360001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C00650037003700010047006100720061006D006F006E006400
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003700380001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003700
      390001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C00650038003000010054006100
      68006F006D006100010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003800310001005400610068006F006D006100
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003800320001005400610068006F006D0061000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003800
      3300010047006100720061006D006F006E006400010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500380034000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003800350001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003800360001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003800370001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500380038000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003800390001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650039003000
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500390031000100540069006D00
      6500730020004E0065007700200052006F006D0061006E000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003900
      32000100540069006D006500730020004E0065007700200052006F006D006100
      6E00010001005400610068006F006D006100010001000D000A00630078005300
      740079006C006500390033000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C006500390034000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650039003500
      0100540069006D006500730020004E0065007700200052006F006D0061006E00
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C006500390036000100540069006D006500730020004E00650077002000
      52006F006D0061006E00010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500390037000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500390038000100
      540069006D006500730020004E0065007700200052006F006D0061006E000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003900390001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003100300030000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003100300031000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650031003000320001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      650031003000330001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003100300034000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D006100010001000D000A00
      630078005300740079006C00650031003000350001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C00650031003000360001004D006900630072006F0073006F00660074002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500310030003700
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C00650031003000380001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C00650031003000390001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650042006C00
      7500650001005400610068006F006D00610001000100010001000D000A006300
      78005300740079006C00650050006B006700730043006F006E00740065006E00
      740001005400610068006F006D00610001000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00640078004200610072004D0061006E006100670065007200
      31002E00430061007400650067006F0072006900650073000100440065006600
      610075006C0074002C0050006B00670073002C004C006F006100640048006500
      610064002C005000720069006E00740050006F00700055007000010001000100
      01000D000A006200630043006F006E006600690072006D006500640076003200
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      7300010022004E006500770020006100720072006900760061006C0073002200
      2C0041007200720069007600650064002C0022004D0079002000720065006700
      690073007400650072006500640020006100720072006900760061006C007300
      220001000100010001000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A004900440053005F0030000100
      4B0061006E00200069006E007400650020004100520020006C00610073007400
      65006E002E002000500072006F0062006C0065006D0020006D00650064002000
      4C004F002300200001000100430061006E006E006F0074002000410052002000
      6C006F00610064002E002000500072006F0062006C0065006D00200077006900
      7400680020004C004F0023002000010001000D000A004900440053005F003100
      3000010041006E00670065002000650074007400200054004F004D0020006400
      6100740075006D000100010045006E0074006500720020006100200054004F00
      20006400610074006500010001000D000A004900440053005F00310031000100
      560069006C006C002000640075002000E5006E00670072006100200061006E00
      6B006F006D007300740072006500670069007300740072006500720069006E00
      670065006E0020007000E50020006D00610072006B0065007200610064006500
      20006C00610073007400650072003F000100010044006F00200079006F007500
      2000770061006E007400200074006F00200075006E0064006F00200061007200
      72006900760061006C0020007200650067006900730072006100740069006F00
      6E0020006F006E002000730065006C006500630074006500640020006C006F00
      6100640073003F00010001000D000A004900440053005F003100320001005600
      69006C006C00200064007500200061006E006B006F006D007300740072006500
      6700690073007400720065007200610020006D00610072006B00650072006100
      6400650020006C00610073007400650072003F000100010044006F0020007900
      6F0075002000770061006E007400200074006F00200061007200720069007600
      61006C002000720065006700690073007400650072002000730065006C006500
      630074006500640020006C006F006100640073003F00010001000D000A004900
      440053005F003100330001004C006F006100640020006900730020006E006F00
      74002000760061006C00690064002E0001000100010001000D000A0049004400
      53005F003100340001004C006100730074006E0072002000010001004C006F00
      610064004E006F00010001000D000A004900440053005F003100350001002000
      6B0075006E0064006500200069006E0074006500200061006E006B006F006D00
      7300740072006500670069007300740072006500720061007300200070006700
      6100200061007400740020007300740061007400750073002000E4006E006400
      72006100740073002000740069006C006C0020007000720065006C0069006D00
      69006E00E400720001000100200063006F0075006C00640020006E006F007400
      20006200650020006100720072006900760061006C0020007200650067006900
      7300740065007200650064002000620065006300610075007300650020007300
      74006100740075007300200068006100730020006200650065006E0020006300
      680061006E00670065006400200074006F0020005000720065006C0069006D00
      69006E00610072007900010001000D000A004900440053005F00310036000100
      4C00610073007400730074006100740075007300200069006E00640069006B00
      65007200610072002000700072006F0062006C0065006D0020006D0065006400
      20006C0061007300740065006E002C0020006B0061006E00200069006E007400
      6500200061006E006B006F006D00730074007200650067006900730074007200
      65007200610073002E00010001004C006F006100640073007400610074007500
      73002000690073002000730068006F00770069006E0067002000700072006F00
      62006C0065006D0020006C006F00610064002C002000630061006E006E006F00
      7400200062006500200041005200010001000D000A004900440053005F003100
      370001004C0061007300740065006E002000E400720020007200650064006100
      6E00200061006E006B006F006D00730074007200650067006900730074007200
      650072006100640020006100760020000100010054006800650020006C006F00
      61006400200069007300200061006C0072006500610064007900200041005200
      2000010001000D000A004900440053005F003100380001002000640065006E00
      200001000100200074006800610074002000010001000D000A00490044005300
      5F0031003900010041006E006B006F006D007300740072006500670069007300
      740072006500720069006E00670020006D006900730073006C00790063006B00
      61006400650073002C0020006B006F006C006C00610020006F006D0020006C00
      61007300740065006E0020006800610072002000E4006E006400720061007400
      2000730074006100740075007300010001004100720072006900760061006C00
      200072006500670069007300740072006100740069006F006E00200066006100
      69006C00650064002C00200063006800650063006B0020006900660020006C00
      6F0061006400200068006100730020006300680061006E006700650064002000
      730074006100740075007300010001000D000A004900440053005F0032000100
      5400680069007300200043006F006E006600690072006D006100740069006F00
      6E00200064006F006500730020006F006E006C007900200069006E0073006500
      720074002000610020007200650063006F0072006400200069006E0020007400
      68006500200043006F006E006600690072006D00650064005F004C006F006100
      640020007400610062006C0065002C00200043006F006E00740069006E007500
      65003F0001000100010001000D000A004900440053005F003200310001004400
      750020006D00E50073007400650020007600E4006C006A006100200065007400
      740020006C00610067006500720021000100010059006F00750020006E006500
      65006400200074006F002000730065006C006500630074002000610020007300
      74006F0063006B00200070006C00610063006500010001000D000A0049004400
      53005F00320033000100560069006C006C002000640075002000E4006E006400
      7200610020006B00760061006C0069007400650074002000740069006C006C00
      20006B00760061006C00690074006500740020002B00200069006D0070007200
      650067006E00650072006100740020007000E500200061006C006C0061002000
      700072006F00640075006B007400650072002000690020006C00610073007400
      6E00720020000100010044006F00200079006F0075002000770061006E007400
      200074006F0020006300680061006E0067006500200067007200610064006500
      20002B002000740072006500610074006D0065006E00740020006F006E002000
      61006C006C002000700072006F0064007500630074007300200069006E002000
      6C006F006100640020006E006F002000010001000D000A004900440053005F00
      3200340001003F00200028006900200061006E006E0061007400200066006100
      6C006C0020006700E500720020007600610072006F0072006E00610020007400
      69006C006C0020006C0061006700720065007400200073006F006D0020006400
      65002000E4007200290001000100010001000D000A004900440053005F003300
      010049006E006D00610074006E0069006E006700200061007600200070006F00
      7300740020006D006900730073006C00790063006B0061006400650073002C00
      20006B006F006E00740061006B0074006100200073007500700070006F007200
      740020006D006500640020004C004F0020006F006300680020004C0061007300
      74004E0072002E000100010045006E0074006500720069006E00670020006F00
      6600200070006F007300740020006600610069006C00650064002C0020006300
      6F006E007400610063007400200073007500700070006F007200740020007700
      69007400680020004C004F00200061006E00640020004C006F00610064004E00
      6F00010001000D000A004900440053005F00340001004E006F0020006C007500
      63006B000100460069006E006E007300200069006E0074006500010043006100
      6E006E006F0074002000660069006E0064000100460069006E006E0073002000
      69006E007400650001000D000A004900440053005F0034003100010056006900
      6C006C00200064007500200061006E006B006F006D0073007400720065006700
      690073007400720065007200610020006D00610072006B006500720061006400
      65002000740072006100640069006E00670020006C0061007300740065007200
      3F000100010044006F00200079006F0075002000770061006E00740020007400
      6F0020006100720072006900760061006C002000720065006700690073007400
      650072002000730065006C006500630074006500640020007400720061006400
      69006E00670020006C006F006100640073003F00010001000D000A0049004400
      53005F00340033000100410076006200720079007400650072002E0001000100
      430061006E00630065006C006C0069006E006700010001000D000A0049004400
      53005F0034003400010041007600620072007900740020006B0061006E002000
      65006A00200066006F00720074007300E4007400740061002000740061002000
      62006F00720074002000740072006100640069006E0067006B006F0070007000
      6C0069006E00670020006F006300680020006600F60072007300F6006B002000
      6900670065006E002E0001000100430061006E00630065006C002C0020006300
      61006E006E006F007400200063006F006E00740069006E007500650020007400
      6F002000720065006D006F00760065002000740072006100640069006E006700
      20006C0069006E006B002C002000740072007900200061006700610069006E00
      010001000D000A004900440053005F00360001004D00E5007300740065002000
      7600E4006C006A006100200065006E0020006C00610073007400010001004800
      610076006500200074006F002000730065006C00650063007400200061002000
      6C006F0061006400010001000D000A004900440053005F003700010056006900
      6C006C0020006400750020006500780070006F00720074006500720061002000
      740069006C006C00200065007800630065006C003F000100010044006F002000
      79006F0075002000770061006E007400200074006F0020006500780070006F00
      72007400200074006F00200065007800630065006C003F00010001000D000A00
      4900440053005F003800010054006100620065006C006C002000650078007000
      6F007200740065007200610064002000740069006C006C002000450078006300
      65006C00660069006C002000010054006100620065006C006C00200065007800
      70006F007200740065007200610064002000740069006C006C00200045007800
      630065006C002000660069006C00200001005400610062006C00650020006500
      780070006F007200740065006400200074006F00200045007800630065006C00
      2000660069006C0065002000010054006100620065006C006C00200065007800
      70006F007200740065007200610064002000740069006C006C00200045007800
      630065006C002000660069006C00200001000D000A004900440053005F003900
      010041006E00670065002000650074007400200046004F004D00200064006100
      740075006D00010041006E006700650020006500740074002000460052004F00
      4D00200064006100740075006D00010045006E00740065007200200061002000
      460052004F004D0020006400610074006500010041006E006700650020006500
      740074002000460052004F004D00200064006100740075006D0001000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A006D007400530065006C00650063007400
      650064004C006F006100640073002E00560065007200730069006F006E000100
      37002E00360033002E003000300020005300740061006E006400610072006400
      2000450064006900740069006F006E0001000100010001000D000A0063007800
      500072006F007000650072007400690065007300530074006F00720065003100
      2E00530074006F0072006100670065004E0061006D0065000100630078005000
      72006F007000650072007400690065007300530074006F007200650031000100
      0100010001000D000A006D00740050006B0067004E006F0073002E0056006500
      7200730069006F006E00010037002E00360033002E0030003000200053007400
      61006E0064006100720064002000450064006900740069006F006E0001000100
      010001000D000A006200630043006F006E006600690072006D00650064007600
      32002E00540065007800740001004E0065007700200061007200720069007600
      61006C00730001000100010001000D000A0074006B004E0075006D0050006100
      64002E004C00610079006F007500740001004E0075006D005000610064000100
      0100010001000D000A0053006500740046006F006E007400530069007A006500
      2E00540065007800740001003100300001000100010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A006700720064004C006F00610064007300440042005400
      610062006C006500560069006500770031004C004F00410044005F0053005400
      41005400550053002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0030005D002E004400650073006300720069007000
      740069006F006E0001005000720065006C0069006D0069006E00E40072000100
      01005000720065006C0069006D0069006E00610072007900010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      69006500770031004C004F00410044005F005300540041005400550053002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0031005D002E004400650073006300720069007000740069006F006E000100
      500072006F0062006C0065006D0001000100500072006F0062006C0065006D00
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004C004F00410044005F00530054004100
      5400550053002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0032005D002E0044006500730063007200690070007400
      69006F006E0001004100760073006C0075007400610064000100010043006F00
      6D0070006C006500740065006400010001000D000A006C006300440065007300
      740069006E006100740069006F006E002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E0001004F007200740001000100
      4300690074007900010001000D000A006C0063004C0061007300740073007400
      6C006C0065002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E0001004F00720074000100010043006900740079000100
      01000D000A004D0065006D005F005000610063006B00500072006F0064004C00
      6900730074002E0049006E00640065007800650073005B0030005D002E004600
      690065006C00640073000100500061006B00650074004E0072003B0050006B00
      740053007500700070006C0069006500720043006F0064006500010001000100
      01000D000A0063007800500072006F0070006500720074006900650073005300
      74006F007200650031002E0043006F006D0070006F006E0065006E0074007300
      5B0030005D002E00500072006F00700065007200740069006500730001005300
      740079006C00650073002E005300740079006C00650053006800650065007400
      19001A0001000100010001000D000A0063007800500072006F00700065007200
      7400690065007300530074006F007200650031002E0043006F006D0070006F00
      6E0065006E00740073005B0031005D002E00500072006F007000650072007400
      69006500730001005300740079006C00650073002E005300740079006C006500
      5300680065006500740019001A0001000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660072006D004C006F00610064004100720072006900760061006C00
      73000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00640078004200610072004D0061006E006100670065007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A0070006D0050007200
      69006E0074000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A0070006D0050006B00670073000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      6D004C006F006100640073000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      5F0031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065005F00300001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C0065005F003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C0065005F0046006F00630075007300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C0065004C006F006100640041005200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C00650041007600720061006B006E00610064000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C00650047007200650065006E0001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0062007400
      4300680061006E00670065005300740079006C00650001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0045006400
      6900740031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A004500640069007400320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0062007400
      50007200650070006100720065005300630061006E0001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      42007500740074006F006E0031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078004200750074007400
      6F006E0032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780053007400
      79006C00650033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003500010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C00650036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00630078005300740079006C0065003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C00650039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      310030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500310033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      310034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500310037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      310038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500320031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      320032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003200330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500320035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      320036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003200370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650032003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500320039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      330030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003300310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650033003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500330033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      330034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003300350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650033003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500330037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      330038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003300390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650034003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500340031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      340032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650034003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500340035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      340036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003400370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650034003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500340039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      350030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003500310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650035003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500350033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      350034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003500350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650035003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500350037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      350038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003500390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650036003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500360031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      360032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650036003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500360035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      360036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003600370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650036003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500360039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      370030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650037003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500370033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      370034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650037003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500370037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      370038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650038003000010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500380031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      380032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800330001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650038003400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500380035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      380036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003800370001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650038003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500380039000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      390030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003900310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650039003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500390033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      390034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003900350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650039003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00630078005300
      740079006C006500390037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      390038000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003900390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00630078005300740079006C00650031003000300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C0065003100300031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C0065003100300032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00630078005300740079006C0065003100
      300033000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003100300034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003100300035000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C0065003100300036000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780053007400
      79006C0065003100300037000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      3100300038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500310030003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C00650042006C007500650001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00630078005300740079006C00650050006B00670073004300
      6F006E00740065006E0074000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00}
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer3Timer
    Left = 136
    Top = 304
  end
  object FDQ_Position: TFDQuery
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evUnidirectional]
    SQL.Strings = (
      'SELECT PositionName, PositionID FROM dbo.Position')
    Left = 632
    Top = 568
    object FDQ_PositionPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_PositionPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Mem_MatchaProduct
    ScopeMappings = <>
    Left = 824
    Top = 648
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 76
    Top = 141
  end
  object Mem_MatchaProduct: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 328
    Top = 600
    object Mem_MatchaProductVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_MatchaProductFullt: TIntegerField
      FieldName = 'Fullt'
    end
    object Mem_MatchaProductPositionNamn: TStringField
      FieldName = 'PositionNamn'
      Size = 25
    end
    object Mem_MatchaProductProductNamn: TStringField
      FieldName = 'ProductNamn'
      Size = 150
    end
    object Mem_MatchaProductNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
    end
    object Mem_MatchaProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object Mem_MatchaProductPositionID: TIntegerField
      FieldName = 'PositionID'
    end
  end
  object BindingsList2: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 504
    Top = 784
  end
  object DS_Position: TDataSource
    DataSet = FDQ_Position
    Left = 688
    Top = 592
  end
  object FDQ_MatchPosition: TFDQuery
    Connection = dmsConnector.FDConnection1
    Left = 880
    Top = 592
    object FDQ_MatchPositionPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_MatchPositionProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_MatchPositionPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
  end
  object FDQ_ProductNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct p.ProductDisplayName, p.ProductNo'
      'from dbo.PackageNumber pn'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.PackagetypeDetail ptd on ptd.packagetypeNo = pt.p' +
        'ackagetypeNo'
      
        'inner join dbo.ProductLength t1 on t1.productLengthNo = ptd.prod' +
        'uctLengthNo'
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'WHERE '
      'pn.PackageNo = :PaketNr'
      'and pn.SupplierCode = :SupplierCode')
    Left = 1064
    Top = 640
    ParamData = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProductNoProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_ProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = Mem_PackProdList
    ScopeMappings = <>
    Left = 512
    Top = 680
  end
  object Mem_PackProdList: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Mem_packlistindex01'
        Fields = 'PaketNr;PktSupplierCode'
      end>
    IndexName = 'Mem_packlistindex01'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 480
    object Mem_PackProdListVald: TIntegerField
      FieldName = 'Vald'
    end
    object Mem_PackProdListPaketNr: TIntegerField
      FieldName = 'PaketNr'
    end
    object Mem_PackProdListPktSupplierCode: TStringField
      FieldName = 'PktSupplierCode'
      Size = 3
    end
    object Mem_PackProdListProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Size = 150
    end
    object Mem_PackProdListProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
  end
  object FDQ_PhyInvPtNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select PIP.PhysicalInventoryPointNo  FROM dbo.PhysicalInventoryP' +
        'oint PIP '
      'WHERE PIP.PhyInvPointNameNo = :PhyInvPointNameNo'
      'AND PIP.OwnerNo = :OWNERNo')
    Left = 1056
    Top = 592
    ParamData = <
      item
        Name = 'PHYINVPOINTNAMENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_PhyInvPtNoPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DS_ProductNo: TDataSource
    DataSet = Mem_PackProdList
    Left = 448
    Top = 536
  end
  object ds_MatchPosition: TDataSource
    DataSet = FDQ_MatchPosition
    Left = 816
    Top = 536
  end
  object ds_MatchaProduct: TDataSource
    DataSet = Mem_MatchaProduct
    Left = 336
    Top = 656
  end
  object FDQ_StorePosID: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Update dbo.PackageNumber Set PositionID = :PosID , StoredDate = ' +
        ':CurrentDate , Status = 1'
      'where SupplierCode = :Prefix AND PackageNo = :PkgNr')
    Left = 536
    Top = 592
    ParamData = <
      item
        Name = 'POSID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CURRENTDATE'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PKGNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQ_InitialMatchPos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct Po.PosStatus, po.PositionName, p.ProductNo, p.Pr' +
        'oductDisplayName,  po.PositionID, Max(pn.StoredDate) as StoredDa' +
        'te,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID'
      'and pt2.ProductNo = pt.ProductNo ) as NoOfPkgsByProduct,'
      ''
      '(Select COUNT(pn2.PackageNo) FROM dbo.PackageNumber pn2'
      
        'inner join dbo.Packagetype pt2 on pt2.packagetypeno = pn2.packag' +
        'etypeno'
      'where pn2.LogicalInventoryPointNo = pn.LogicalInventoryPointNo'
      'and pn2.[Status] = 1'
      'and  pn2.PositionID =  po.PositionID) as NoOfPkgsByPosition'
      ''
      'from dbo.PackageNumber pn'
      'inner  join dbo.Position Po on Po.PositionID = pn.PositionID'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      ''
      'WHERE '
      'pt.ProductNo = :ProductNo'
      'and pn.[Status] = 1'
      
        'group by po.PositionName, p.ProductNo, p.ProductDisplayName,  po' +
        '.PositionID, pn.LogicalInventoryPointNo, pt.ProductNo,'
      'Po.PosStatus'
      'order by PosStatus, StoredDate')
    Left = 689
    Top = 656
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_InitialMatchPosPosStatus: TIntegerField
      FieldName = 'PosStatus'
      Origin = 'PosStatus'
    end
    object FDQ_InitialMatchPosPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object FDQ_InitialMatchPosProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object FDQ_InitialMatchPosProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 150
    end
    object FDQ_InitialMatchPosPositionID: TIntegerField
      FieldName = 'PositionID'
      Origin = 'PositionID'
      Required = True
    end
    object FDQ_InitialMatchPosStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
      ReadOnly = True
    end
    object FDQ_InitialMatchPosNoOfPkgsByProduct: TIntegerField
      FieldName = 'NoOfPkgsByProduct'
      Origin = 'NoOfPkgsByProduct'
      ReadOnly = True
    end
    object FDQ_InitialMatchPosNoOfPkgsByPosition: TIntegerField
      FieldName = 'NoOfPkgsByPosition'
      Origin = 'NoOfPkgsByPosition'
      ReadOnly = True
    end
  end
  object Mem_StorePosition: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 688
    Top = 712
    object Mem_StorePositionPositionID: TIntegerField
      FieldName = 'PositionID'
    end
    object Mem_StorePositionPrefix: TStringField
      FieldName = 'Prefix'
    end
    object Mem_StorePositionPakageNr: TIntegerField
      FieldName = 'PakageNr'
    end
  end
  object FDQ_ProductPkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct pn.PackageNo, pn.SupplierCode'
      'from dbo.PackageNumber pn'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'inner join dbo.PackagetypeDetail ptd on ptd.packagetypeNo = pt.p' +
        'ackagetypeNo'
      
        'inner join dbo.ProductLength t1 on t1.productLengthNo = ptd.prod' +
        'uctLengthNo'
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
      
        'inner join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      'WHERE '
      'p.ProductNo = :ProductNo')
    Left = 216
    Top = 560
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProductPkgPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProductPkgSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object DS_StorePosition: TDataSource
    DataSet = Mem_StorePosition
    Left = 648
    Top = 792
  end
  object FDQ_UpdatePosStatus: TFDQuery
    Aggregates = <
      item
      end>
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'UPDATE [dbo].[Position] SET [PosStatus] = :PosStatus'
      '  WHERE [PositionID] = :PositionID')
    Left = 808
    Top = 432
    ParamData = <
      item
        Name = 'POSSTATUS'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'POSITIONID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object cxLookAndFeelController2: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    Left = 912
    Top = 312
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clInfoBk
    Left = 912
    Top = 240
    PixelsPerInch = 96
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 891
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 13160660
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10841658
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 6956042
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6956042
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15521240
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11619930
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9211088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12103888
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 7364768
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5855675
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14671839
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11730944
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4671452
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 206
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clYellow
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8257535
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clYellow
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15658734
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15521240
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Garamond'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14264494
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11619930
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 11619930
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11619930
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325376
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle95: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStylePkgsContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet
      Caption = 'Lilac'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Inactive = cxStyle19
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      Styles.Selection = cxStyle22
      BuiltIn = True
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Footer = cxStyle91
      Styles.Group = cxStyle92
      Styles.GroupByBox = cxStyle93
      Styles.Header = cxStyle94
      Styles.Inactive = cxStyle95
      Styles.Indicator = cxStyle96
      Styles.Preview = cxStyle97
      Styles.Selection = cxStyle98
      BuiltIn = True
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle99
      Styles.ContentEven = cxStyle100
      Styles.ContentOdd = cxStyle101
      Styles.Footer = cxStyle102
      Styles.Group = cxStyle103
      Styles.GroupByBox = cxStyle104
      Styles.Header = cxStyle105
      Styles.Inactive = cxStyle106
      Styles.Indicator = cxStyle107
      Styles.Preview = cxStyle108
      Styles.Selection = cxStyle109
      BuiltIn = True
    end
    object cxGridTableViewStyleSheetForPkgs: TcxGridTableViewStyleSheet
      Styles.Content = cxStyle1
      BuiltIn = True
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = grdLoadsDBTableView1
        Properties.Strings = (
          'Styles.StyleSheet')
      end
      item
        Component = grdPkgsDBTableView1
        Properties.Strings = (
          'Styles.StyleSheet')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stStream
    Left = 744
    Top = 184
  end
  object ActionList2: TActionList
    Left = 200
    Top = 160
    object acPrepareScan: TAction
      Caption = 'Prepare Scan'
      ShortCut = 118
      OnExecute = acPrepareScanExecute
    end
  end
  object mtPkgNos: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 144
    Top = 369
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosSupp_Code: TStringField
      FieldName = 'Supp_Code'
      Size = 3
    end
    object mtPkgNosOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtPkgNosLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPkgNosPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPkgNosStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtPkgNosPackage_Size: TIntegerField
      FieldName = 'Package_Size'
    end
    object mtPkgNosCertNo: TIntegerField
      FieldName = 'CertNo'
    end
  end
  object sp_insPkgInvStatByLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_insPkgInvStatByLoad'
    Left = 424
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
