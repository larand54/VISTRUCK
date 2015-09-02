object frmLoadArrivals: TfrmLoadArrivals
  Left = 251
  Top = 113
  ActiveControl = Edit1
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmLoadArrivals'
  ClientHeight = 927
  ClientWidth = 1386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 612
    Width = 1386
    Height = 8
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel5
    Color = clMaroon
    ParentColor = False
  end
  object grdLoads: TcxGrid
    Left = 0
    Top = 145
    Width = 1386
    Height = 467
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    PopupMenu = pmLoads
    TabOrder = 1
    ExplicitTop = 161
    ExplicitHeight = 451
    object grdLoadsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmArrivingLoads.dsrcArrivingLoads
      DataController.KeyFieldNames = 'LO;LOADNO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.PullFocusing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.FocusRect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Selection = cxStyle_Focus
      Styles.OnGetContentStyle = grdLoadsDBTableView1StylesGetContentStyle
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
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 20
      end
      object grdLoadsDBTableView1LoadAR: TcxGridDBColumn
        DataBinding.FieldName = 'LoadAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
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
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 29
      end
      object grdLoadsDBTableView1EGEN: TcxGridDBColumn
        DataBinding.FieldName = 'EGEN'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 45
      end
      object grdLoadsDBTableView1NoOfPackages: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfPackages'
        Width = 45
      end
      object grdLoadsDBTableView1PackagesConfirmed: TcxGridDBColumn
        DataBinding.FieldName = 'PackagesConfirmed'
        Width = 45
      end
    end
    object grdLoadsLevel1: TcxGridLevel
      GridView = grdLoadsDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1386
    Height = 145
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Panel2: TPanel
      Left = 572
      Top = 0
      Width = 736
      Height = 145
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 161
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 734
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
      object Panel7: TPanel
        Left = 1
        Top = 49
        Width = 734
        Height = 95
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 111
        object cxLabel1: TcxLabel
          Left = 4
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Mottagare:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object lcVerk: TcxDBLookupComboBox
          Left = 124
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabStop = False
          DataBinding.DataField = 'Verk'
          DataBinding.DataSource = ds_Props
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.ListColumns = <>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Style.TextStyle = [fsBold]
          TabOrder = 1
          Width = 133
        end
        object cxLabel8: TcxLabel
          Left = 4
          Top = 48
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Leverera till:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object lcDestination: TcxDBLookupComboBox
          Left = 123
          Top = 45
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Width = 133
        end
        object cxLabel6: TcxLabel
          Left = 265
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Leverant'#246'r:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object lcInternKund: TcxDBLookupComboBox
          Left = 367
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Width = 152
        end
        object cxLabel7: TcxLabel
          Left = 268
          Top = 46
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lastst'#228'lle:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object lcLaststlle: TcxDBLookupComboBox
          Left = 369
          Top = 43
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Width = 153
        end
        object lcSlutKund: TcxDBLookupComboBox
          Left = 634
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 146
        end
        object cxLabel9: TcxLabel
          Left = 527
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Kund extern:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
        end
        object cbShowOnlyVWLoads: TcxDBCheckBox
          Left = 539
          Top = 43
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Style.Font.Height = 23
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 273
        end
      end
    end
    object Panel3: TPanel
      Left = 1308
      Top = 0
      Width = 78
      Height = 145
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      TabOrder = 1
      ExplicitHeight = 161
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 76
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
      object btChangeStyle: TcxButton
        Left = 6
        Top = 65
        Width = 65
        Height = 53
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Styles'
        TabOrder = 1
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
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
      Width = 572
      Height = 145
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 2
      ExplicitHeight = 161
      object bcConfirmed: TcxComboBox
        Left = 96
        Top = 89
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Att ankomstregistrera'
          'Ankomstregistrerade'
          'Mina ankomstregistreringar')
        Properties.OnChange = bcConfirmedPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Text = 'Att ankomstregistrera'
        Width = 181
      end
      object cxLabel2: TcxLabel
        Left = 14
        Top = 98
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Visa:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 14
        Top = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'LO:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
      object Edit1: TEdit
        Left = 96
        Top = 14
        Width = 73
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 23
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
      object Edit2: TEdit
        Left = 96
        Top = 43
        Width = 73
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 23
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = Edit2KeyDown
      end
      object cxLabel4: TcxLabel
        Left = 14
        Top = 49
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Lastnr:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel5: TcxLabel
        Left = 299
        Top = 82
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Period:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
      end
      object deStartPeriod: TcxDBDateEdit
        Left = 377
        Top = 82
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Enabled = False
        ParentFont = False
        Properties.ImmediatePost = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 188
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 377
        Top = 111
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Enabled = False
        ParentFont = False
        Properties.ImmediatePost = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 188
      end
      object cbAllaVerk: TcxDBCheckBox
        Left = 198
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
        Style.Font.Height = 23
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 5
        Visible = False
        Width = 111
      end
      object btPrepareScan: TcxButton
        Left = 377
        Top = 1
        Width = 188
        Height = 74
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acPrepareScan
        TabOrder = 10
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 25
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 620
    Width = 1386
    Height = 307
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 3
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 1384
      Height = 74
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 13
        Top = 7
        Width = 127
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acSetInfo2Text
        TabOrder = 0
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object mePackageNo: TcxMaskEdit
        Left = 583
        Top = 6
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabStop = False
        ParentFont = False
        Properties.ReadOnly = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -37
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.StyleController = cxEditStyleController1
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = mePackageNoKeyDown
        Width = 570
      end
      object cxLabel10: TcxLabel
        Left = 305
        Top = 15
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ange paketnr:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -37
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabelEntryMetod: TcxLabel
        Left = 1172
        Top = 20
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
      end
      object cxButton2: TcxButton
        Left = 145
        Top = 7
        Width = 144
        Height = 50
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acSetPktStorlek
        TabOrder = 4
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
    object grdPkgs: TcxGrid
      Left = 1
      Top = 75
      Width = 1384
      Height = 231
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      PopupMenu = pmPkgs
      TabOrder = 1
      object grdPkgsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
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
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPkgsDBTableView1
      end
    end
  end
  object lbLO_To_Invoice: TListBox
    Left = 1178
    Top = 203
    Width = 208
    Height = 238
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Sorted = True
    TabOrder = 5
    Visible = False
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
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
    UseSystemFont = True
    Left = 312
    Top = 296
    DockControlHeights = (
      0
      0
      0
      0)
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
      Action = acSendLoadToHampen
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
      end>
    UseOwnFont = False
    Left = 312
    Top = 352
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
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
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 72
    Top = 392
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 512
    Top = 408
    PixelsPerInch = 120
    object cxStyle_1: TcxStyle
      AssignedValues = [svColor]
      Color = 15138815
    end
    object cxStyle_0: TcxStyle
      AssignedValues = [svColor]
      Color = 16772829
    end
    object cxStyle_4: TcxStyle
      AssignedValues = [svColor]
      Color = 9830399
    end
    object cxStyle_Focus: TcxStyle
      AssignedValues = [svColor]
      Color = clOlive
    end
    object cxStyleLoadAR: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
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
      AssignedValues = [svColor]
      Color = clGreen
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
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
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
      'PropertiesClassName')
    Left = 688
    Top = 416
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004C006F00610064004100720072006900
      760061006C0073000100660072006D004C006F00610064004100720072006900
      760061006C0073000100010001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004C004F000100
      4C004F000100010001000D000A006700720064004C006F006100640073004400
      42005400610062006C006500560069006500770031004C004F00410044004E00
      4F0001004C006100730074006E0072000100010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      31004C004F00410044004500440044004100540045000100550074006C006100
      73007400610064000100010001000D000A006700720064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004C004F004100
      44005F0053005400410054005500530001005300740061007400750073000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C0065005600690065007700310046005300010046005300010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      6500560069006500770031004C004F00410044005F004900440001004C006100
      730074002000490044000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310041005600
      52004F0050005F0043005500530054004F004D004500520001004B0075006E00
      64002800650078007400650072006E0029000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      7700310053005500500050004C0049004500520001004C006500760065007200
      61006E007400F60072000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310044004500
      5300540049004E004100540049004F004E000100440065007300740069006E00
      6100740069006F006E000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310049004E00
      560050004F0049004E0054004E0041004D00450001004C006500760065007200
      6500720061002000740069006C006C000100010001000D000A00670072006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      3100530055005000500043004F00440045000100500072006500660069007800
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C0065005600690065007700310043005500530054004F004D004500
      520001004B0075006E006400280069006E007400650072006E00290001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C0065005600690065007700310049004E0049005400490041004C0053000100
      410052002000610076000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310043006F00
      75006E0074007200790043006F006400650001004C0061006E0064006B006F00
      64000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C006500560069006500770031004C004F0049004E0049000100
      4C004F0020007200650067002E00610076000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C00410053005400530054004C004C00450001004C00610073007400
      73007400E4006C006C0065000100010001000D000A006700720064004C006F00
      610064007300440042005400610062006C006500560069006500770031004F00
      52004400450052005F004E004F0001004F0072006400650072006E0072000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004F0042004A0045004300540054005900
      5000450001004F0042004A004500430054005400590050004500010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310043005500530054004F004D00450052004E004F00
      010043005500530054004F004D00450052004E004F000100010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      69006500770031004100560052004F0050005F0043005500530054004F004D00
      450052004E004F0001004100560052004F0050005F0043005500530054004F00
      4D00450052004E004F000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C006500560069006500770031004F007200
      640065007200540079007000650001004F007200640065007200740079007000
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C0065005600690065007700310053005500500050004C0049004500
      52004E004F00010053005500500050004C004900450052004E004F0001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C006500560069006500770031004C00690070004E006F0001004C0069007000
      4E006F000100010001000D000A006700720064004C006F006100640073004400
      42005400610062006C0065005600690065007700310049004E00560050004F00
      49004E0054004E004F00010049004E00560050004F0049004E0054004E004F00
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C006500560069006500770031005400590050000100540079007000
      0100010001000D000A006700720064004C006F00610064007300440042005400
      610062006C006500560069006500770031004C004F0054005900500001004C00
      4F000100010001000D000A006700720064004C006F0061006400730044004200
      5400610062006C00650056006900650077003100540072006100640069006E00
      67000100540072006100640069006E0067000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C006F0061006400410052000100410052000100010001000D000A00
      6700720064004C006F00610064007300440042005400610062006C0065005600
      690065007700310041005200740069006C006C004C0061006700650072000100
      410052002000740069006C006C0020006C006100670065007200010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310049006D0070005600650072006B00010049006D00
      70002E006F00720074000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C0065005600690065007700310045004700
      45004E0001004500470045004E000100010001000D000A00630078004C006100
      620065006C003200010056006900730061003A000100010001000D000A006300
      78004C006100620065006C00330001004C004F003A000100010001000D000A00
      630078004C006100620065006C00340001004C006100730074006E0072003A00
      0100010001000D000A00630078004C006100620065006C003500010050006500
      720069006F0064003A000100010001000D000A006300620041006C006C006100
      5600650072006B00010041006C006C00610020007600650072006B0001000100
      01000D000A0067007200640050006B0067007300440042005400610062006C00
      6500560069006500770031005000410043004B004100470045005F004E004F00
      0100500061006B00650074006E0072000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      53005500500050004C0049004500520043004F00440045000100500072006500
      6600690078000100010001000D000A0067007200640050006B00670073004400
      42005400610062006C00650056006900650077003100500052004F0044005500
      430054005F004400450053004300520049005000540049004F004E0001005000
      72006F00640075006B0074000100010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310047005300
      01004B00760061006C006900740065007400730073007400E4006D0070006500
      6C000100010001000D000A0067007200640050006B0067007300440042005400
      610062006C006500560069006500770031004200430001005300740072006500
      63006B006B006F0064000100010001000D000A0067007200640050006B006700
      7300440042005400610062006C006500560069006500770031004D0033005F00
      4E0045005400010041004D0033000100010001000D000A006700720064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      43005300010053007400790063006B000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      4D0033005F004E004F004D0001004E004D0033000100010001000D000A006700
      7200640050006B0067007300440042005400610062006C006500560069006500
      770031004D00460042004D0001004D00460042004D000100010001000D000A00
      67007200640050006B0067007300440042005400610062006C00650056006900
      6500770031004C006F00610064004E006F0001004C006F00610064004E006F00
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C006500560069006500770031004C004F0001004C004F00010001000100
      0D000A0067007200640050006B0067007300440042005400610062006C006500
      560069006500770031004C004F00410044005F00440045005400410049004C00
      4E004F0001005200610064006E0072000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      5000410043004B004100470045004F004B000100530074006100740075007300
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C006500560069006500770031005000410043004B004100470045005F00
      4C004F00470001004C006F00670067000100010001000D000A00670072006400
      50006B0067007300440042005400610062006C00650056006900650077003100
      530075006200530075006D0001005600E4007200640065000100010001000D00
      0A0067007200640050006B0067007300440042005400610062006C0065005600
      6900650077003100500052004900430045000100500072006900730001000100
      01000D000A0067007200640050006B0067007300440042005400610062006C00
      6500560069006500770031004E004C004D004D0001004E004C004D004D000100
      010001000D000A0067007200640050006B006700730044004200540061006200
      6C0065005600690065007700310041004C004D004D00010041004C004D004D00
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C00650056006900650077003100550073006500640001004600F6007200
      6200720075006B00610064000100010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310049006E00
      66006F003200010049006E0066006F0032002000280070006F00730069007400
      69006F006E0029000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D00200032000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      200031000100010001000D000A00640078004200610072005300750062004900
      740065006D00310001004600F6006C006A00650073006500640065006C000100
      010001000D000A00640078004200610072005300750062004900740065006D00
      320001004600F6006C006A00650073006500640065006C002000550053004100
      0100010001000D000A00610063004600530001004600F6007200680061006E00
      640073006700720061006E0073006B0061000100010001000D000A0061006300
      460053005F0044004B0001004600F6006C006A00650073006500640065006C00
      2000280044004B0029000100010001000D000A00610063005000720069006E00
      7400530061006D004C006100730074000100530061006D006C0069006E006700
      73006600F6006C006A00650073006500640065006C000100010001000D000A00
      610063005000720069006E007400530061006D004C006100730074004D006500
      640050006B0074004E0072000100530061006D006C0069006E00670073006600
      F6006C006A00650073006500640065006C0020006D0065006400200070006B00
      74006E0072000100010001000D000A006100630050006B00670049006E006600
      6F000100500061006B006500740069006E0066006F0072006D00610074006900
      6F006E000100010001000D000A00610063004300680061006E00670065004C00
      6F00610064004C00610079006F00750074000100C4006E006400720061002000
      6C00610079006F00750074000100010001000D000A0061006300430068006100
      6E006700650050006B0067004C00610079006F00750074000100C4006E006400
      7200610020006C00610079006F00750074000100010001000D000A0061006300
      5300650074004C006F006100640054006F0043006F006E006600690072006D00
      65006400010053006500740020004C006F0061006400200074006F0020004300
      6F006E006600690072006D00650064000100010001000D000A00610063004300
      6F006E006600690072006D00650064004C006F0061006400010041006E006B00
      6F006D002E0020004600310030000100010001000D000A006100630043006C00
      6F0073006500010053007400E4006E0067002000460031003200010001000100
      0D000A00610063004500780070006F00720074004C006F006100640073005400
      6F0045007800630065006C0001004500780070002E0078006C00730020004600
      310031000100010001000D000A00610063005200650066007200650073006800
      01005500700070006400610074002E002000460036000100010001000D000A00
      6100630055006E0064006F00410052000100C5006E0067007200610020004600
      34000100010001000D000A0061006300530068006F007700470072006F007500
      700042006F0078000100470072007500700070006500720069006E0067007300
      72007500740061006E000100010001000D000A00610063004500780070006100
      6E00640041006C006C00010045007800700061006E0064006500720061002000
      61006C006C006100200067007200750070007000650072000100010001000D00
      0A006100630043006F006C006C00610070007300650041006C006C0001004B00
      6F006C006C006100700073006100200061006C006C0061002000670072007500
      70007000650072000100010001000D000A00610063005000720069006E007400
      540061006C006C007900550053004E006F007400650001004600F60072006800
      61006E00640073006700720061006E0073006B0061000100010001000D000A00
      6100630043006F006E006600690072006D004F006E0065004C006F0061006400
      010041006E006B006F006D007300740072006500670069007300740072006500
      720061000100010001000D000A00610063005000720069006E00740044006900
      720065006300740046005300010053006B007200690076002000750074002000
      6D00610072006B006500720061006400650020006C0061007300740065007200
      0100010001000D000A00610063005000720069006E0074004400690072006500
      63007400460053005F00550053004100010053006B0072006900760020007500
      740020006D00610072006B006500720061006400650020006C00610073007400
      650072000100010001000D000A0061006300530061006D006C0069006E006700
      7300460053005F005500530041000100530061006D006C0069006E0067007300
      6600F6006C006A00650073006500640065006C00200055005300410001000100
      01000D000A006100630047006500740049006E00740050007200690063006500
      730001005500700064002E002000700072006900730065007200200073002D00
      460036000100010001000D000A00610063005000720069006E00740001005300
      6B007200690076002000750074002000460038000100010001000D000A006100
      6300530065006E0064004C006F006100640054006F00480061006D0070006500
      6E0001005300E4006E006400200069006E006C00650076002000740069006C00
      6C0020004800540046000100010001000D000A00610063005300650074004900
      6E0066006F0032005400650078007400010041006E0067006500200070006100
      6B006500740070006F0073006900740069006F006E0020007000E50020006D00
      610072006B00650072006100640065002000700061006B006500740001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C006500560069006500770031004E006F004F0066005000610063006B006100
      670065007300010041006E00740061006C002000700061006B00650074000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031005000610063006B006100670065007300
      43006F006E006600690072006D00650064000100500061006B00650074002000
      620065006B007200E400660074006100640065000100010001000D000A006300
      78004C006100620065006C0031003000010041006E0067006500200070006100
      6B00650074006E0072003A000100010001000D000A0067007200640050006B00
      67007300440042005400610062006C0065005600690065007700310050006100
      63006B006100670065004E006F0001005000610063006B006100670065004E00
      6F000100010001000D000A0067007200640050006B0067007300440042005400
      610062006C006500560069006500770031004300720065006100740065006400
      5500730065007200010043007200650061007400650064005500730065007200
      0100010001000D000A0067007200640050006B00670073004400420054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      7400650064000100440061007400650043007200650061007400650064000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      530065006C00650063007400650064004C006F006100640073004C006F006100
      64004E006F0001004C006F00610064004E006F000100010001000D000A006D00
      7400530065006C00650063007400650064004C006F006100640073004C004F00
      4E006F0001004C004F004E006F000100010001000D000A006D00740053006500
      6C00650063007400650064004C006F006100640073004C00490050004E006F00
      01004C00490050004E006F000100010001000D000A006D007400530065006C00
      650063007400650064004C006F0061006400730043007500730074006F006D00
      650072004E006F00010043007500730074006F006D00650072004E006F000100
      010001000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073005300740061007400750073000100530074006100740075007300
      0100010001000D000A006D007400530065006C00650063007400650064004C00
      6F006100640073004F0042004A00450043005400540059005000450001004F00
      42004A0045004300540054005900500045000100010001000D000A006D007400
      530065006C00650063007400650064004C006F006100640073004F0072006400
      65007200540079007000650001004F0072006400650072005400790070006500
      0100010001000D000A006D007400530065006C00650063007400650064004C00
      6F006100640073004C006F00610064004100520001004C006F00610064004100
      52000100010001000D000A006D007400530065006C0065006300740065006400
      4C006F0061006400730049006D0070004F0072007400010049006D0070004F00
      720074000100010001000D000A006D007400530065006C006500630074006500
      64004C006F006100640073004500470045004E0001004500470045004E000100
      010001000D000A006D007400530065006C00650063007400650064004C006F00
      6100640073004100760072006F00700043007500730074006F006D0065007200
      4E006F0001004100760072006F00700043007500730074006F006D0065007200
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      5500730065007200490044000100550073006500720049004400010001000100
      0D000A006300640073005F00500072006F007000730046006F0072006D000100
      46006F0072006D000100010001000D000A006300640073005F00500072006F00
      700073005600650072006B004E006F0001005600650072006B004E006F000100
      010001000D000A006300640073005F00500072006F00700073004F0077006E00
      650072004E006F0001004F0077006E00650072004E006F000100010001000D00
      0A006300640073005F00500072006F00700073005000490050004E006F000100
      5000490050004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004C00490050004E006F0001004C00490050004E006F0001000100
      01000D000A006300640073005F00500072006F007000730049006E0070007500
      74004F007000740069006F006E00010049006E007000750074004F0070007400
      69006F006E000100010001000D000A006300640073005F00500072006F007000
      730052006500670050006F0069006E0074004E006F0001005200650067005000
      6F0069006E0074004E006F000100010001000D000A006300640073005F005000
      72006F0070007300520065006700440061007400650001005200650067004400
      6100740065000100010001000D000A006300640073005F00500072006F007000
      730043006F0070007900500063007300010043006F0070007900500063007300
      0100010001000D000A006300640073005F00500072006F007000730052007500
      6E004E006F000100520075006E004E006F000100010001000D000A0063006400
      73005F00500072006F0070007300500072006F00640075006300650072004E00
      6F000100500072006F00640075006300650072004E006F000100010001000D00
      0A006300640073005F00500072006F00700073004100750074006F0043006F00
      6C005700690064007400680001004100750074006F0043006F006C0057006900
      6400740068000100010001000D000A006300640073005F00500072006F007000
      730053007500700070006C0069006500720043006F0064006500010053007500
      700070006C0069006500720043006F00640065000100010001000D000A006300
      640073005F00500072006F00700073004C0065006E006700740068004F007000
      740069006F006E0001004C0065006E006700740068004F007000740069006F00
      6E000100010001000D000A006300640073005F00500072006F00700073004C00
      65006E00670074006800470072006F00750070004E006F0001004C0065006E00
      670074006800470072006F00750070004E006F000100010001000D000A006300
      640073005F00500072006F00700073004E00650077004900740065006D005200
      6F00770001004E00650077004900740065006D0052006F007700010001000100
      0D000A006300640073005F00500072006F0070007300530061006C0065007300
      52006500670069006F006E004E006F000100530061006C006500730052006500
      670069006F006E004E006F000100010001000D000A006300640073005F005000
      72006F00700073004D00610072006B006500740052006500670069006F006E00
      4E006F0001004D00610072006B006500740052006500670069006F006E004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004F00
      720064006500720054007900700065004E006F0001004F007200640065007200
      54007900700065004E006F000100010001000D000A006300640073005F005000
      72006F0070007300530074006100740075007300010053007400610074007500
      73000100010001000D000A006300640073005F00500072006F00700073004600
      69006C007400650072004F007200640065007200440061007400650001004600
      69006C007400650072004F007200640065007200440061007400650001000100
      01000D000A006300640073005F00500072006F00700073005300740061007200
      740050006500720069006F006400010053007400610072007400500065007200
      69006F0064000100010001000D000A006300640073005F00500072006F007000
      730045006E00640050006500720069006F006400010045006E00640050006500
      720069006F0064000100010001000D000A006300640073005F00500072006F00
      7000730043006C00690065006E0074004E006F00010043006C00690065006E00
      74004E006F000100010001000D000A006300640073005F00500072006F007000
      7300530061006C006500730050006500720073006F006E004E006F0001005300
      61006C006500730050006500720073006F006E004E006F000100010001000D00
      0A006300640073005F00500072006F00700073005600650072006B0053007500
      700070006C006900650072004E006F0001005600650072006B00530075007000
      70006C006900650072004E006F000100010001000D000A006300640073005F00
      500072006F00700073005600650072006B004B0075006E0064004E006F000100
      5600650072006B004B0075006E0064004E006F000100010001000D000A006300
      640073005F00500072006F00700073004C004F004F0062006A00650063007400
      540079007000650001004C004F004F0062006A00650063007400540079007000
      65000100010001000D000A006300640073005F00500072006F00700073004200
      6100720043006F00640065004E006F00010042006100720043006F0064006500
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      470072006100640065005300740061006D0070004E006F000100470072006100
      640065005300740061006D0070004E006F000100010001000D000A0063006400
      73005F00500072006F007000730056006F006C0075006D00650055006E006900
      74004E006F00010056006F006C0075006D00650055006E00690074004E006F00
      0100010001000D000A006300640073005F00500072006F00700073004C006500
      6E0067007400680046006F0072006D00610074004E006F0001004C0065006E00
      67007400680046006F0072006D00610074004E006F000100010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068005600
      6F006C0055006E00690074004E006F0001004C0065006E006700740068005600
      6F006C0055006E00690074004E006F000100010001000D000A00630064007300
      5F00500072006F0070007300470072006F00750070004200790042006F007800
      0100470072006F00750070004200790042006F0078000100010001000D000A00
      6300640073005F00500072006F0070007300470072006F007500700053007500
      6D006D006100720079000100470072006F0075007000530075006D006D006100
      720079000100010001000D000A006300640073005F00500072006F0070007300
      4100670065006E0074004E006F0001004100670065006E0074004E006F000100
      010001000D000A006300640073005F00500072006F00700073004C006F006100
      640069006E0067004C006F0063006100740069006F006E004E006F0001004C00
      6F006100640069006E0067004C006F0063006100740069006F006E004E006F00
      0100010001000D000A006300640073005F00500072006F007000730053006800
      690070007000650072004E006F00010053006800690070007000650072004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004200
      6F006F006B0069006E00670054007900700065004E006F00010042006F006F00
      6B0069006E00670054007900700065004E006F000100010001000D000A006300
      640073005F00500072006F007000730043007500730074006F006D0065007200
      4E006F00010043007500730074006F006D00650072004E006F00010001000100
      0D000A006300640073005F00500072006F0070007300530068006F0077005000
      72006F0064007500630074000100530068006F007700500072006F0064007500
      630074000100010001000D000A006300640073005F00500072006F0070007300
      4D00610072006B006E006100640001004D00610072006B006E00610064000100
      010001000D000A006300640073005F00500072006F00700073004B0075006E00
      640001004B0075006E0064000100010001000D000A006300640073005F005000
      72006F0070007300530052000100530052000100010001000D000A0063006400
      73005F00500072006F0070007300530061006C006A0067007200750070007000
      0100530061006C006A00670072007500700070000100010001000D000A006300
      640073005F00500072006F00700073005600650072006B000100560065007200
      6B000100010001000D000A006300640073005F00500072006F00700073004C00
      610073007400730074006C006C00650001004C0061007300740073007400E400
      6C006C0065000100010001000D000A006300640073005F00500072006F007000
      7300440065007300740069006E006100740069006F006E000100440065007300
      740069006E006100740069006F006E000100010001000D000A00630064007300
      5F00500072006F007000730053006C00750074006B0075006E00640001005300
      6C00750074006B0075006E0064000100010001000D000A00730071005F004300
      6900740079004F007200740001004F00720074000100010001000D000A007300
      71005F00430069007400790043006900740079004E006F000100430069007400
      79004E006F000100010001000D000A00730071005F0044006500730074004F00
      7200740001004F00720074000100010001000D000A00730071005F0044006500
      7300740043006900740079004E006F00010043006900740079004E006F000100
      010001000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A005400660072006D004C006F0061006400410072007200
      6900760061006C00730001004D0053002000530061006E007300200053006500
      7200690066000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005400610068006F006D0061000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200310001005400610068006F006D0061000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      5400610068006F006D0061000100010001000D000A0070006D00500072006900
      6E00740001005400610068006F006D0061000100010001000D000A0070006D00
      50006B006700730001005400610068006F006D0061000100010001000D000A00
      70006D004C006F0061006400730001005400610068006F006D00610001000100
      01000D000A00630078005300740079006C0065005F0031000100540061006800
      6F006D0061000100010001000D000A00630078005300740079006C0065005F00
      300001005400610068006F006D0061000100010001000D000A00630078005300
      740079006C0065005F00340001005400610068006F006D006100010001000100
      0D000A00630078005300740079006C0065005F0046006F006300750073000100
      5400610068006F006D0061000100010001000D000A0063007800530074007900
      6C0065004C006F00610064004100520001005400610068006F006D0061000100
      010001000D000A00630078005300740079006C00650041007600720061006B00
      6E006100640001004D0053002000530061006E00730020005300650072006900
      66000100010001000D000A00630078005300740079006C006500470072006500
      65006E0001005400610068006F006D0061000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00640078004200610072004D0061006E006100670065007200
      31002E00430061007400650067006F0072006900650073000100440065006600
      610075006C0074002C0050006B00670073002C004C006F006100640048006500
      610064002C005000720069006E00740050006F00700055007000010001000100
      0D000A006200630043006F006E006600690072006D00650064002E0050007200
      6F0070006500720074006900650073002E004900740065006D00730001002200
      410074007400200061006E006B006F006D007300740072006500670069007300
      7400720065007200610022002C0041006E006B006F006D007300740072006500
      67006900730074007200650072006100640065002C0022004D0069006E006100
      200061006E006B006F006D007300740072006500670069007300740072006500
      720069006E0067006100720022000100010001000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A004900
      440053005F00300001004B0061006E00200069006E0074006500200041005200
      20006C0061007300740065006E002E002000500072006F0062006C0065006D00
      20006D006500640020004C004F00230020000100010001000D000A0049004400
      53005F0031003000010041006E00670065002000650074007400200054004F00
      4D00200064006100740075006D000100010001000D000A004900440053005F00
      310031000100560069006C006C002000640075002000E5006E00670072006100
      200061006E006B006F006D007300740072006500670069007300740072006500
      720069006E00670065006E0020007000E50020006D00610072006B0065007200
      61006400650020006C00610073007400650072003F000100010001000D000A00
      4900440053005F00310032000100560069006C006C0020006400750020006100
      6E006B006F006D00730074007200650067006900730074007200650072006100
      20006D00610072006B006500720061006400650020006C006100730074006500
      72003F000100010001000D000A004900440053005F003100330001004C006F00
      6100640020006900730020006E006F0074002000760061006C00690064002E00
      0100010001000D000A004900440053005F003100340001004C00610073007400
      6E00720020000100010001000D000A004900440053005F003100350001002000
      6B0075006E0064006500200069006E0074006500200061006E006B006F006D00
      7300740072006500670069007300740072006500720061007300200070006700
      6100200061007400740020007300740061007400750073002000E4006E006400
      72006100740073002000740069006C006C0020007000720065006C0069006D00
      69006E00E40072000100010001000D000A004900440053005F00310036000100
      4C00610073007400730074006100740075007300200069006E00640069006B00
      65007200610072002000700072006F0062006C0065006D0020006D0065006400
      20006C0061007300740065006E002C0020006B0061006E00200069006E007400
      6500200061006E006B006F006D00730074007200650067006900730074007200
      65007200610073002E000100010001000D000A004900440053005F0031003700
      01004C0061007300740065006E002000E4007200200072006500640061006E00
      200061006E006B006F006D007300740072006500670069007300740072006500
      72006100640020006100760020000100010001000D000A004900440053005F00
      3100380001002000640065006E0020000100010001000D000A00490044005300
      5F0031003900010041006E006B006F006D007300740072006500670069007300
      740072006500720069006E00670020006D006900730073006C00790063006B00
      61006400650073002C0020006B006F006C006C00610020006F006D0020006C00
      61007300740065006E0020006800610072002000E4006E006400720061007400
      20007300740061007400750073000100010001000D000A004900440053005F00
      320001005400680069007300200043006F006E006600690072006D0061007400
      69006F006E00200064006F006500730020006F006E006C007900200069006E00
      73006500720074002000610020007200650063006F0072006400200069006E00
      2000740068006500200043006F006E006600690072006D00650064005F004C00
      6F006100640020007400610062006C0065002C00200043006F006E0074006900
      6E00750065003F000100010001000D000A004900440053005F00320031000100
      4400750020006D00E50073007400650020007600E4006C006A00610020006500
      7400740020006C00610067006500720021000100010001000D000A0049004400
      53005F00320033000100560069006C006C002000640075002000E4006E006400
      7200610020006B00760061006C0069007400650074002000740069006C006C00
      20006B00760061006C00690074006500740020002B00200069006D0070007200
      650067006E00650072006100740020007000E500200061006C006C0061002000
      700072006F00640075006B007400650072002000690020006C00610073007400
      6E00720020000100010001000D000A004900440053005F003200340001003F00
      200028006900200061006E006E00610074002000660061006C006C0020006700
      E500720020007600610072006F0072006E0061002000740069006C006C002000
      6C0061006700720065007400200073006F006D002000640065002000E4007200
      29000100010001000D000A004900440053005F003300010049006E006D006100
      74006E0069006E006700200061007600200070006F007300740020006D006900
      730073006C00790063006B0061006400650073002C0020006B006F006E007400
      61006B0074006100200073007500700070006F007200740020006D0065006400
      20004C004F0020006F006300680020004C006100730074004E0072002E000100
      010001000D000A004900440053005F00340001004E006F0020006C0075006300
      6B000100010001000D000A004900440053005F00340031000100560069006C00
      6C00200064007500200061006E006B006F006D00730074007200650067006900
      73007400720065007200610020006D00610072006B0065007200610064006500
      2000740072006100640069006E00670020006C00610073007400650072003F00
      0100010001000D000A004900440053005F003400330001004100760062007200
      79007400650072002E000100010001000D000A004900440053005F0034003400
      010041007600620072007900740020006B0061006E00200065006A0020006600
      6F00720074007300E400740074006100200074006100200062006F0072007400
      2000740072006100640069006E0067006B006F00700070006C0069006E006700
      20006F006300680020006600F60072007300F6006B0020006900670065006E00
      2E000100010001000D000A004900440053005F00360001004D00E50073007400
      650020007600E4006C006A006100200065006E0020006C006100730074000100
      010001000D000A004900440053005F0037000100560069006C006C0020006400
      750020006500780070006F00720074006500720061002000740069006C006C00
      200065007800630065006C003F000100010001000D000A004900440053005F00
      3800010054006100620065006C006C0020006500780070006F00720074006500
      7200610064002000740069006C006C00200045007800630065006C0066006900
      6C0020000100010001000D000A004900440053005F003900010041006E006700
      65002000650074007400200046004F004D00200064006100740075006D000100
      010001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006200630043006F00
      6E006600690072006D00650064002E0054006500780074000100410074007400
      200061006E006B006F006D007300740072006500670069007300740072006500
      720061000100010001000D000A006D007400530065006C006500630074006500
      64004C006F006100640073002E00560065007200730069006F006E0001003700
      2E00360033002E003000300020005300740061006E0064006100720064002000
      450064006900740069006F006E000100010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006700720064004C006F0061006400730044004200540061006200
      6C006500560069006500770031004C004F00410044005F005300540041005400
      550053002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E0001005000720065006C0069006D0069006E00E4007200010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      6500560069006500770031004C004F00410044005F0053005400410054005500
      53002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E004400650073006300720069007000740069006F00
      6E000100500072006F0062006C0065006D000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C004F00410044005F005300540041005400550053002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003200
      5D002E004400650073006300720069007000740069006F006E00010041007600
      73006C0075007400610064000100010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660072006D004C006F00610064004100720072006900760061006C0073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      0D000A0070006D005000720069006E0074000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0070006D00
      50006B00670073000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A0070006D004C006F00610064007300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100010001000D000A00630078005300740079006C0065005F00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      01000D000A00630078005300740079006C0065005F0030000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00630078005300740079006C0065005F003400010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A006300
      78005300740079006C0065005F0046006F006300750073000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00630078005300740079006C0065004C006F00610064004100520001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      01000D000A00630078005300740079006C00650041007600720061006B006E00
      610064000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00630078005300740079006C00650047007200
      650065006E000100440045004600410055004C0054005F004300480041005200
      5300450054000100010001000D000A00}
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 136
    Top = 304
  end
  object FDQ_Position: TFDQuery
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evUnidirectional]
    SQL.Strings = (
      'SELECT PositionName, PositionID FROM dbo.Position')
    Left = 616
    Top = 592
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
    Left = 736
    Top = 656
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 165
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
    Left = 584
    Top = 664
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
    Left = 968
    Top = 592
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
    Top = 664
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
    Left = 432
    Top = 600
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
    Left = 440
    Top = 664
  end
  object ds_MatchPosition: TDataSource
    DataSet = FDQ_MatchPosition
    Left = 816
    Top = 656
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
    Left = 769
    Top = 592
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
    Left = 656
    Top = 648
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
    Left = 672
    Top = 696
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
    Left = 1040
    Top = 288
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clInfoBk
    Left = 912
    Top = 240
    PixelsPerInch = 120
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 891
    Top = 184
    PixelsPerInch = 120
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
      AssignedValues = [svColor, svTextColor]
      Color = 13160660
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
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
      AssignedValues = [svColor, svTextColor]
      Color = 14264494
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15521240
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
      AssignedValues = [svColor]
      Color = clWhite
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
      AssignedValues = [svColor]
      Color = clSilver
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
      AssignedValues = [svColor]
      Color = clSilver
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
      AssignedValues = [svColor]
      Color = clWhite
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
      AssignedValues = [svColor, svTextColor]
      Color = 14264494
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15521240
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
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
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
      AssignedValues = [svColor, svTextColor]
      Color = 10343916
      TextColor = clBlack
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13626101
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
    object GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet
      Caption = 'Lilac'
      Styles.Content = cxStyle12
      Styles.ContentEven = cxStyle13
      Styles.ContentOdd = cxStyle14
      Styles.Inactive = cxStyle19
      Styles.Selection = cxStyle22
      Styles.Footer = cxStyle15
      Styles.Group = cxStyle16
      Styles.GroupByBox = cxStyle17
      Styles.Header = cxStyle18
      Styles.Indicator = cxStyle20
      Styles.Preview = cxStyle21
      BuiltIn = True
    end
    object GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet
      Caption = 'Red, White, and Blue (VGA)'
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Inactive = cxStyle95
      Styles.Selection = cxStyle98
      Styles.Footer = cxStyle91
      Styles.Group = cxStyle92
      Styles.GroupByBox = cxStyle93
      Styles.Header = cxStyle94
      Styles.Indicator = cxStyle96
      Styles.Preview = cxStyle97
      BuiltIn = True
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle99
      Styles.ContentEven = cxStyle100
      Styles.ContentOdd = cxStyle101
      Styles.Inactive = cxStyle106
      Styles.Selection = cxStyle109
      Styles.Footer = cxStyle102
      Styles.Group = cxStyle103
      Styles.GroupByBox = cxStyle104
      Styles.Header = cxStyle105
      Styles.Indicator = cxStyle107
      Styles.Preview = cxStyle108
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 184
    Top = 257
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
end
