object fkilnHandling: TfkilnHandling
  Left = 251
  Top = 172
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LAGERRAPPORT'
  ClientHeight = 822
  ClientWidth = 1415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pmFormShortcuts
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgInventory: TcxPageControl
    Left = 0
    Top = 0
    Width = 1415
    Height = 89
    Align = alTop
    TabOrder = 0
    Properties.ActivePage = tsLagret
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ExplicitWidth = 1252
    ClientRectBottom = 85
    ClientRectLeft = 4
    ClientRectRight = 1411
    ClientRectTop = 4
    object tsLagret: TcxTabSheet
      Caption = 'Lager'
      ImageIndex = 2
      ExplicitWidth = 1244
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1407
        Height = 81
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 1244
        DesignSize = (
          1407
          81)
        object cxLabel2: TcxLabel
          Left = 4
          Top = 8
          Caption = #196'gare:'
          Style.StyleController = cxEditStyleController1
        end
        object cxLabelVagn: TcxLabel
          Left = 351
          Top = 7
          Caption = 'Markerad vagn:'
        end
        object lcProgressKiln: TcxDBLookupComboBox
          Left = 45
          Top = 36
          DataBinding.DataField = 'ProgressKiln'
          DataBinding.DataSource = dsUserProp
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'KilnChargeNo'
          Properties.ListColumns = <
            item
              FieldName = 'KilnName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ReadOnly = True
          Style.StyleController = cxEditStyleController3
          TabOrder = 2
          Width = 292
        end
        object cxButton3: TcxButton
          Left = 901
          Top = 0
          Width = 82
          Height = 79
          Action = acMoveFromKiln
          TabOrder = 4
          WordWrap = True
        end
        object cxButton1: TcxButton
          Left = 731
          Top = 0
          Width = 86
          Height = 79
          Action = acMoveVagnIntoKiln
          TabOrder = 5
          WordWrap = True
        end
        object cxButton6: TcxButton
          Left = 657
          Top = 0
          Width = 73
          Height = 79
          Action = acEditVagn
          TabOrder = 6
          WordWrap = True
        end
        object cxButton5: TcxButton
          Left = 577
          Top = 0
          Width = 81
          Height = 79
          Action = acAddVagn
          TabOrder = 7
          WordWrap = True
        end
        object cxButton2: TcxButton
          Left = 500
          Top = 0
          Width = 71
          Height = 79
          Action = acPkgTypeTable
          OptionsImage.Layout = blGlyphTop
          TabOrder = 8
        end
        object cxLabel1: TcxLabel
          Left = 4
          Top = 36
          Caption = 'Tork:'
          Style.StyleController = cxEditStyleController1
        end
        object cxButton4: TcxButton
          Left = 818
          Top = 0
          Width = 82
          Height = 79
          Action = acCancelMoveVagnIntoKiln
          LookAndFeel.SkinName = ''
          TabOrder = 10
          WordWrap = True
        end
        object cbColAutoWidth: TcxCheckBox
          Left = 351
          Top = 30
          Caption = 'Auto kolumnbredd'
          Properties.ImmediatePost = True
          Properties.OnChange = cbColAutoWidthPropertiesChange
          TabOrder = 11
        end
        object cxButton7: TcxButton
          Left = 983
          Top = 0
          Width = 83
          Height = 79
          Action = acCancelMoveFromKiln
          TabOrder = 12
          WordWrap = True
        end
        object lcOWNER: TcxDBLookupComboBox
          Left = 45
          Top = 9
          DataBinding.DataField = 'OWNER'
          DataBinding.DataSource = dsUserProp
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleController3
          TabOrder = 13
          Width = 284
        end
        object lNoOfVagnarKiln: TcxDBLabel
          Left = 20
          Top = 58
          DataBinding.DataField = 'NoOfVagnar'
          Height = 21
          Width = 85
        end
        object lAntalVagnarBefore: TcxDBLabel
          Left = 140
          Top = 58
          DataBinding.DataField = 'NoOfVagnarBefore'
          Height = 21
          Width = 85
        end
        object cxButton9: TcxButton
          Left = 1307
          Top = 0
          Width = 88
          Height = 79
          Anchors = [akTop, akRight]
          Caption = 'St'#228'ng'
          TabOrder = 3
          OnClick = cxButton9Click
          ExplicitLeft = 1144
        end
        object seColWidth: TcxDBSpinEdit
          Left = 409
          Top = 58
          DataBinding.DataField = 'CopyPcs'
          DataBinding.DataSource = dsUserProp
          TabOrder = 16
          Width = 63
        end
        object cxLabel3: TcxLabel
          Left = 348
          Top = 62
          Caption = 'Kolbredd:'
        end
        object cxButton8: TcxButton
          Left = 1066
          Top = 0
          Width = 74
          Height = 79
          Action = acSaveProps
          TabOrder = 18
          WordWrap = True
        end
      end
    end
  end
  object tcKilns: TcxTabControl
    Left = 0
    Top = 89
    Width = 120
    Height = 733
    Align = alClient
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    Properties.Rotate = True
    Properties.ShowFrame = True
    Properties.Style = 6
    Properties.TabHeight = 30
    Properties.TabIndex = 1
    Properties.TabPosition = tpLeft
    Properties.Tabs.Strings = (
      'kammare 1'
      'Kammare 2'
      'Kammare 3')
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013DarkGray'
    OnChange = tcKilnsChange
    ExplicitWidth = 161
    ClientRectBottom = 732
    ClientRectLeft = 108
    ClientRectRight = 119
    ClientRectTop = 1
  end
  object cxSplitter1: TcxSplitter
    Left = 120
    Top = 89
    Width = 8
    Height = 733
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salRight
    AutoPosition = False
    Color = clMaroon
    ParentColor = False
    ExplicitLeft = 167
    ExplicitTop = 67
  end
  object MainPanel: TPanel
    Left = 128
    Top = 89
    Width = 1287
    Height = 733
    Align = alRight
    TabOrder = 7
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1285
      Height = 208
      Align = alTop
      TabOrder = 0
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        OnMouseDown = cxGrid1DBBandedTableView1MouseDown
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxGrid1DBBandedTableView1CellClick
        OnInitEdit = cxGrid1DBBandedTableView1InitEdit
        DataController.DataSource = dmInventory.ds_KilnVagnar
        DataController.KeyFieldNames = 'RowNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.DataRowHeight = 54
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.LeftIndent = 300
        Preview.Visible = True
        Styles.Content = cxStyleContent
        Styles.ContentEven = cxStyleContent
        Styles.ContentOdd = cxStyleContent
        Styles.StyleSheet = GridBandedTableViewStyleSheetPumpkinlarge
        Styles.BandHeader = cxStyle8
        OnColumnHeaderClick = cxGrid1DBBandedTableView1ColumnHeaderClick
        Bands = <
          item
            FixedKind = fkLeft
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 153
          end
          item
            Caption = 'VAGNL'#196'GE'
            Options.HoldOwnColumnsOnly = True
            Options.Moving = False
            Width = 1127
          end>
        object cxGrid1DBBandedTableView1Rad: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Rad'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1RowNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RowNo'
          SortIndex = 0
          SortOrder = soAscending
          Width = 38
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L1'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L2'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L3'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L4'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L5'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L6: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L6'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L7: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L7'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L8: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L8'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L9: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L9'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L10: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L10'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L11: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L11'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L12: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L12'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L13: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L13'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L14: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L14'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L15: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L15'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L16: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L16'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L17: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L17'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L18: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L18'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L19: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L19'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L20: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L20'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L21: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L21'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L22: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L22'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L23: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L23'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L24: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L24'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L25: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L25'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L26: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L26'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L27: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L27'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L28: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L28'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L29: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L29'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L30: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L30'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L31: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L31'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L32: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L32'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L33: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L33'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L34: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L34'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L35: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L35'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          OnGetDisplayText = cxGrid1DBBandedTableView1V1GetDisplayText
          Styles.OnGetContentStyle = cxGrid1DBBandedTableView1V1StylesGetContentStyle
          Position.BandIndex = 1
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L36: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L36'
          Position.BandIndex = 1
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L37: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L37'
          Position.BandIndex = 1
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L38: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L38'
          Position.BandIndex = 1
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L39: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L39'
          Position.BandIndex = 1
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L40: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L40'
          Position.BandIndex = 1
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L41: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L41'
          Position.BandIndex = 1
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L42: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L42'
          Position.BandIndex = 1
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L43: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L43'
          Position.BandIndex = 1
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L44: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L44'
          Position.BandIndex = 1
          Position.ColIndex = 43
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1L45: TcxGridDBBandedColumn
          DataBinding.FieldName = 'L45'
          Position.BandIndex = 1
          Position.ColIndex = 44
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 1
      Top = 209
      Width = 1285
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Color = clMaroon
      ParentColor = False
      ExplicitLeft = -9
      ExplicitTop = 617
      ExplicitWidth = 1050
    end
    object VagnPanel: TPanel
      Left = 1
      Top = 217
      Width = 1285
      Height = 515
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 280
      ExplicitWidth = 1050
      ExplicitHeight = 452
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 217
        Height = 515
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = -2
        object mePackageNo: TcxTextEdit
          Left = 67
          Top = 11
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = mePackageNoKeyDown
          Width = 145
        end
        object cxLabel4: TcxLabel
          Left = 5
          Top = 15
          Caption = 'PkgNo:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel7: TcxLabel
          Left = 5
          Top = 46
          Caption = 'Note:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 67
          Top = 45
          Hint = 'Kopieras till info2 f'#228'ltet i paketen'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataBinding.DataField = 'Notering'
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 145
        end
        object tePlannedDuration: TcxDBTextEdit
          Left = 67
          Top = 78
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataBinding.DataField = 'PlannedDuration'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 145
        end
        object cxLabel8: TcxLabel
          Left = 5
          Top = 79
          Caption = 'Dura.:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel5: TcxLabel
          Left = 5
          Top = 112
          Caption = 'Torksatsnr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object LabelIMP: TcxLabel
          Left = 5
          Top = 203
          Caption = 'Imp:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel9: TcxLabel
          Left = 5
          Top = 168
          Caption = 'Preset digits:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxDBLabel1: TcxDBLabel
          Left = 125
          Top = 112
          DataBinding.DataField = 'KilnChargeNo'
          DataBinding.DataSource = dmInventory.ds_KilnVagn
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsSingle
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Height = 21
          Width = 86
        end
        object cxLabel6: TcxLabel
          Left = 5
          Top = 136
          Caption = 'Vagnnr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxDBLabel2: TcxDBLabel
          Left = 126
          Top = 139
          DataBinding.DataField = 'VagnNo'
          DataBinding.DataSource = dmInventory.ds_KilnVagn
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsSingle
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Height = 21
          Width = 85
        end
        object lcImp: TcxDBLookupComboBox
          Left = 60
          Top = 198
          Hint = 'Please select a pressure treated type!'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          DataBinding.DataField = 'IMP'
          ParentFont = False
          ParentShowHint = False
          Properties.KeyFieldNames = 'ProductCategoryNo'
          Properties.ListColumns = <
            item
              FieldName = 'ProductCategoryName'
            end>
          Properties.ListOptions.ShowHeader = False
          ShowHint = True
          Style.Color = clGreen
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          Width = 152
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 126
          Top = 164
          DataBinding.DataField = 'MarketRegionNo'
          DataBinding.DataSource = dsUserProp
          ParentFont = False
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '[0-9]+'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 13
          Width = 85
        end
        object cxButton11: TcxButton
          Left = 5
          Top = 231
          Width = 196
          Height = 43
          Action = acPickPackages
          TabOrder = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton10: TcxButton
          Left = 5
          Top = 277
          Width = 196
          Height = 39
          Action = acRemovePackage
          TabOrder = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxLabel_RowNo: TcxLabel
          Left = 5
          Top = 461
          Caption = 'RowNo:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -17
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxButton12: TcxButton
          Left = 5
          Top = 320
          Width = 196
          Height = 41
          Action = acAddVagnLocally
          TabOrder = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton13: TcxButton
          Left = 5
          Top = 364
          Width = 196
          Height = 41
          Action = acRemoveVagn
          TabOrder = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxButton14: TcxButton
          Left = 5
          Top = 409
          Width = 196
          Height = 41
          Action = acPrintPackages
          TabOrder = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 217
        Top = 0
        Width = 1068
        Height = 515
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 236
        ExplicitTop = 120
        ExplicitWidth = 713
        ExplicitHeight = 393
        object grdVagnPkgs: TcxGrid
          Left = 1
          Top = 1
          Width = 1066
          Height = 513
          Align = alClient
          TabOrder = 0
          ExplicitTop = 159
          ExplicitWidth = 831
          ExplicitHeight = 355
          object grdVagnPkgsDBTableView1: TcxGridDBTableView
            OnDblClick = grdVagnPkgsDBTableView1DblClick
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dmInventory.ds_KilnChargeRows
            DataController.KeyFieldNames = 'KilnChargeNo;RowNo;VagnNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###.000'
                Kind = skSum
                FieldName = 'Totalm3Actual'
                Column = grdVagnPkgsDBTableView1Totalm3Actual
              end
              item
                Format = '###'
                Kind = skCount
                FieldName = 'PackageNo'
                Column = grdVagnPkgsDBTableView1PackageNo
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.DataRowSizing = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Content = cxStyle17
            Styles.ContentEven = cxStyle17
            Styles.ContentOdd = cxStyle17
            object grdVagnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn
              DataBinding.FieldName = 'KilnChargeNo'
              Visible = False
              Width = 96
            end
            object grdVagnPkgsDBTableView1VagnNo: TcxGridDBColumn
              DataBinding.FieldName = 'VagnNo'
              Visible = False
              Width = 71
            end
            object grdVagnPkgsDBTableView1RowNo: TcxGridDBColumn
              DataBinding.FieldName = 'RowNo'
              PropertiesClassName = 'TcxLabelProperties'
              SortIndex = 0
              SortOrder = soDescending
              Width = 82
            end
            object grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn
              DataBinding.FieldName = 'PackageNo'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 112
            end
            object grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn
              DataBinding.FieldName = 'SupplierCode'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 83
            end
            object grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn
              DataBinding.FieldName = 'ProductDisplayName'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 518
            end
            object grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn
              DataBinding.FieldName = 'NoOfPkgs'
              Visible = False
              Width = 84
            end
            object grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn
              DataBinding.FieldName = 'PcsPerLength'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 261
            end
            object grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn
              DataBinding.FieldName = 'DateCreated'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 186
            end
            object grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn
              DataBinding.FieldName = 'CreatedUser'
              Visible = False
              Width = 101
            end
            object grdVagnPkgsDBTableView1MatchingPT: TcxGridDBColumn
              Caption = 'Matching P/T'
              DataBinding.FieldName = 'MatchingPT'
              PropertiesClassName = 'TcxLabelProperties'
            end
            object grdVagnPkgsDBTableView1Totalm3Actual: TcxGridDBColumn
              DataBinding.FieldName = 'Totalm3Actual'
            end
          end
          object grdVagnPkgsLevel1: TcxGridLevel
            GridView = grdVagnPkgsDBTableView1
          end
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PkgTable'
      'PaketNr'
      'TorkSats'
      'PaketTabellMeny'
      'FilterComboBoxes')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 352
    Top = 473
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 273
      FloatTop = 178
      FloatClientWidth = 100
      FloatClientHeight = 280
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbPkgNoReport'
        end
        item
          Visible = True
          ItemName = 'lbPcsPerLengthReport'
        end
        item
          Visible = True
          ItemName = 'lbPkgTypeReport'
        end
        item
          Visible = True
          ItemName = 'lbInventoryCount'
        end
        item
          Visible = True
          ItemName = 'bbSummaryReport'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'TorkSats'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 313
      FloatTop = 626
      FloatClientWidth = 86
      FloatClientHeight = 110
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
      OldName = 'TorkSats'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Torksats2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAddPkgsToKilnCharge'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
      OldName = 'Torksats2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Caption = '&Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object lbPkgNoReport: TdxBarLargeButton
      Caption = 'Paketnr F2'
      Category = 0
      Visible = ivAlways
      ShortCut = 113
      LargeImageIndex = 2
    end
    object lbPcsPerLengthReport: TdxBarLargeButton
      Caption = 'Ant/l'#228'ngd F3'
      Category = 0
      Visible = ivAlways
      ShortCut = 114
      LargeImageIndex = 5
    end
    object lbPkgTypeReport: TdxBarLargeButton
      Caption = 'Paketkod F4'
      Category = 0
      Visible = ivAlways
      ShortCut = 115
      LargeImageIndex = 4
    end
    object lbInventoryCount: TdxBarLargeButton
      Caption = 'PktNr lista F5'
      Category = 0
      Visible = ivAlways
      ShortCut = 116
      LargeImageIndex = 2
    end
    object lbHideFilterPanel: TdxBarLargeButton
      Caption = 'G'#246'm filter'
      Category = 0
      Hint = 'G'#246'm filter'
      Visible = ivAlways
      ButtonStyle = bsChecked
      LargeImageIndex = 6
    end
    object bbSummaryReport: TdxBarLargeButton
      Caption = 'Summering CR F6'
      Category = 0
      Visible = ivAlways
      ShortCut = 117
      LargeImageIndex = 7
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Tabell F8'
      Category = 0
      Visible = ivAlways
      ShortCut = 119
      LargeImageIndex = 8
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Summering F7'
      Category = 0
      Visible = ivAlways
      ShortCut = 118
      LargeImageIndex = 7
    end
    object dxBarButton33: TdxBarButton
      Caption = 'Summering'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton40: TdxBarButton
      Caption = 'Spara layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton41: TdxBarButton
      Caption = #214'ppna layout'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Caption = 'Spara som excel'
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Action = acPkgInfo
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Expandera alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Kollapsa alla grupper'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #196'ndra paket'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 1
      Enabled = False
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Paketlogg'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Caption = 'V'#229'rda lager'
      Category = 1
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Caption = #196'ndra pris p'#229' markerade paket'
      Category = 1
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF848484FF008484FF008484FF0084
        84FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF8484
        84FF008484FF008484FF008484FF848484FF008484FFC6FFFFFF84FFFFFF84FF
        FFFF008484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0084
        84FFC6FFFFFF84FFFFFF84FFFFFF008484FF848484FF008484FF008484FF0084
        84FF848484FF008484FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF8484
        84FF008484FF008484FF008484FF848484FFFF00FFFFFF00FFFF008484FFC6C6
        C6FFC6C6C6FFC6C6C6FF008484FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008484FF00C6
        C6FF00C6C6FF00C6C6FF008484FFFF00FFFFFF00FFFFFF00FFFF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF008484FFC6C6
        C6FFC6C6C6FFC6C6C6FF008484FF005A00FF005A00FFFF00FFFF005A00FF0084
        00FF008400FF00C600FF00C600FF00C600FF00C600FF00C600FF008484FF00C6
        C6FF00C6C6FF00C6C6FF008484FF008400FF005A00FFFF00FFFF005A00FF0084
        00FF00C600FF84FF84FF84FF84FF84FF84FF424242FF424242FF008484FFFFFF
        FFFF84FFFFFF84FFFFFF008484FF008400FF005A00FFFF00FFFF005A00FF00C6
        00FFC6FFC6FFC6FFC6FF84FF84FF424242FFC6C6C6FFC6C6C6FF008484FF0084
        84FF008484FF008484FF84FF84FF00C600FF005A00FFFF00FFFF005A00FF00C6
        00FFC6FFC6FFC6FFC6FFC6FFC6FF424242FFC6FFFFFFC6C6C6FFC6C6C6FF4242
        42FF84FF84FF84FF84FF84FF84FF00C600FF005A00FFFF00FFFF005A00FF0084
        00FF00C600FFC6FFC6FFC6FFC6FFC6FFC6FF424242FF424242FF424242FF84FF
        84FF84FF84FF84FF84FF00C600FF008400FF005A00FFFF00FFFF005A00FF0084
        00FF008400FF00C600FFC6FFC6FFC6FFC6FFC6FFC6FFC6FFC6FF84FF84FF84FF
        84FF84FF84FF00C600FF008400FF008400FF005A00FFFF00FFFF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A00FF005A
        00FF005A00FF005A00FF005A00FF005A00FF005A00FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Registrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton9: TdxBarButton
      Caption = #196'ndra paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Avregistrera paket'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton11: TdxBarButton
      Caption = 'Skriv ut'
      Category = 2
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton12: TdxBarButton
      Caption = 'Emaila'
      Category = 2
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton14: TdxBarButton
      Caption = 'F'#228'lt v'#228'ljare'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Paketinformation'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'Flytta paket internt'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Caption = 'Avregistrera mot inventering'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Caption = 'Ta bort paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = #196'ndra paket (lagerv'#229'rd)'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Ny torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Caption = '  Spara  '
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Caption = #197'ngra'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Caption = 'Ta bort torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Caption = #214'ppna'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Caption = 'Skriv ut'
      Category = 3
      Visible = ivAlways
    end
    object bbAddPkgsToKilnCharge: TdxBarButton
      Caption = 'L'#228'gg paket till torksats'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Caption = 'Ta bort paket'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Caption = 'Ta bort rad'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Caption = 'Flytta paket till lager efter tork'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Caption = 'Notering'
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Action = acPkgTypeTable
      Category = 4
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFF848484FF000000FF000000FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF848484FF000000FF000000FF848484FFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Caption = 'Skriv &ut'
      Category = 4
      Visible = ivAlways
      ImageIndex = 11
      ShortCut = 16503
    end
    object dxBarButton24: TdxBarButton
      Caption = 'Automatisk kolumnbredd'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton25: TdxBarButton
      Caption = 'Emaila'
      Category = 4
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarButton26: TdxBarButton
      Caption = 'Gruppsummering'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton27: TdxBarButton
      Caption = 'Grupperingsruta'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object bbVisaAvAktiverade: TdxBarButton
      Caption = 'Visa avaktiverade'
      Category = 4
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'Alternativ dim.inmatning'
      Category = 4
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
    end
    object dxBarButton39: TdxBarButton
      Caption = #197'terst'#228'll tabelllayout'
      Category = 4
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 768
    Top = 385
    object acClose: TAction
      Caption = 'X'
      ShortCut = 16467
      OnExecute = acCloseExecute
    end
    object acPkgInfo: TAction
      Caption = 'Paketinformation'
      OnExecute = acPkgInfoExecute
    end
    object acPkgTypeTable: TAction
      Caption = 'Uppdatera'
      ImageIndex = 0
      ShortCut = 121
      OnExecute = acPkgTypeTableExecute
      OnUpdate = acPkgTypeTableUpdate
    end
    object acAddVagn: TAction
      Category = 'TorkSats'
      Caption = 'L'#228'gg till Vagn/Sats'
      OnExecute = acAddVagnExecute
      OnUpdate = acAddVagnUpdate
    end
    object acEditVagn: TAction
      Category = 'TorkSats'
      Caption = #196'ndra Vagn/Sats'
      OnExecute = acEditVagnExecute
      OnUpdate = acEditVagnUpdate
    end
    object acMoveVagnIntoKiln: TAction
      Category = 'TorkSats'
      Caption = 'Stega in Vagn/Sats i tork'
      OnExecute = acMoveVagnIntoKilnExecute
      OnUpdate = acMoveVagnIntoKilnUpdate
    end
    object acMoveFromKiln: TAction
      Category = 'TorkSats'
      Caption = 'Stega ut Vagn/Sats fr'#229'n tork'
      OnExecute = acMoveFromKilnExecute
      OnUpdate = acMoveFromKilnUpdate
    end
    object acCancelMoveVagnIntoKiln: TAction
      Category = 'TorkSats'
      Caption = #197'ngra Stega in Vagn/Sats i tork'
      OnExecute = acCancelMoveVagnIntoKilnExecute
    end
    object acCancelMoveFromKiln: TAction
      Category = 'TorkSats'
      Caption = #197'ngra Stega ut Vagn/Sats fr'#229'n tork'
      OnExecute = acCancelMoveFromKilnExecute
    end
    object acSaveProps: TAction
      Caption = 'Spara inst'#228'llningar'
      OnExecute = acSavePropsExecute
    end
    object acPickPackages: TAction
      Caption = 'Pick packages'
      OnExecute = acPickPackagesExecute
    end
    object acRemovePackage: TAction
      Caption = 'Remove package'
      OnExecute = acRemovePackageExecute
    end
    object acAddVagnLocally: TAction
      Category = 'TorkSats'
      Caption = 'Add cart'
      OnExecute = acAddVagnLocallyExecute
    end
    object acRemoveVagn: TAction
      Category = 'TorkSats'
      Caption = 'Remove cart'
      OnExecute = acRemoveVagnExecute
    end
    object Action2: TAction
      Category = 'TorkSats'
      Caption = 'Action2'
    end
    object acPrintPackages: TAction
      Caption = 'Print packages'
      OnExecute = acPrintPackagesExecute
    end
  end
  object pmFormShortcuts: TPopupMenu
    AutoPopup = False
    Left = 1176
    Top = 416
    object F1PktNrrapport1: TMenuItem
      Caption = 'Paketnr F2'
      ImageIndex = 2
      ShortCut = 113
    end
    object F2Antallngdrapport1: TMenuItem
      Caption = 'Ant/l'#228'ngd F3'
      ImageIndex = 5
      ShortCut = 114
    end
    object F3Pktkodrapport1: TMenuItem
      Caption = 'Paketkod F4'
      ImageIndex = 4
      ShortCut = 115
    end
    object F4PktNrlista1: TMenuItem
      Caption = 'PktNr lista F5'
      ImageIndex = 2
      ShortCut = 116
    end
    object F5Lagersummering1: TMenuItem
      Caption = 'Summering F6'
      ImageIndex = 7
      ShortCut = 117
    end
    object Stng1: TMenuItem
      Action = acClose
    end
    object PakettabellF81: TMenuItem
      Caption = 'Paketnr F8'
      ImageIndex = 8
      ShortCut = 119
    end
    object LagersumtabellF71: TMenuItem
      Caption = 'Summering F7'
      ImageIndex = 7
      ShortCut = 118
    end
    object Skrivut1: TMenuItem
      Caption = 'Skriv &ut'
      ImageIndex = 11
      ShortCut = 16503
    end
    object AntlngdF91: TMenuItem
      Caption = 'Ant/l'#228'ngd F9'
      ImageIndex = 5
      ShortCut = 120
    end
    object SummeringF61: TMenuItem
      Action = acPkgTypeTable
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 609
    Top = 481
  end
  object SaveDialog1: TSaveDialog
    Left = 609
    Top = 417
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 440
    Top = 457
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdVagnPkgs
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39085.979061331020000000
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link3: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link4: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      TimeFormat = 0
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link5: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[User Name][Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object pmPkgTable: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbAddPkgsToKilnCharge'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton35'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton43'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 608
    Top = 233
    PixelsPerInch = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 592
    Top = 632
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clSilver
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyleINAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsStrikeOut]
      TextColor = clRed
    end
    object cxStyleNormalAktivePkg: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13626101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleBeforeKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleInKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleAfterKiln: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object GridBandedTableViewStyleSheetPumpkinlarge: TcxGridBandedTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle6
      Styles.ContentEven = cxStyle7
      Styles.ContentOdd = cxStyle8
      Styles.Footer = cxStyle9
      Styles.Group = cxStyle10
      Styles.GroupByBox = cxStyle11
      Styles.Header = cxStyle12
      Styles.Inactive = cxStyle13
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.Selection = cxStyle16
      Styles.BandHeader = cxStyle5
      BuiltIn = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPkgTable
      end>
    Left = 584
    Top = 369
  end
  object mtUserProp: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'SalesRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarCodeNo'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end
      item
        Name = 'ProductDescription'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPChange'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUniNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthVolUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeUnitNo'
        DataType = ftInteger
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UserID'
        DataType = ftInteger
      end
      item
        Name = 'GroupByBox'
        DataType = ftInteger
      end
      item
        Name = 'GroupSummary'
        DataType = ftInteger
      end
      item
        Name = 'AgentNo'
        DataType = ftInteger
      end
      item
        Name = 'KilnNo'
        DataType = ftInteger
      end
      item
        Name = 'TEST'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ShipperNo'
        DataType = ftInteger
      end
      item
        Name = 'StartPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'EndPeriod'
        DataType = ftDateTime
      end
      item
        Name = 'KilnChargeNo'
        DataType = ftInteger
      end
      item
        Name = 'Filter1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Filter2'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'MarketRegionNo'
        DataType = ftInteger
      end
      item
        Name = 'OrderTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'FilterOrderDate'
        DataType = ftInteger
      end
      item
        Name = 'ClientNo'
        DataType = ftInteger
      end
      item
        Name = 'SalesPersonNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkSupplierNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkKundNo'
        DataType = ftInteger
      end
      item
        Name = 'LOObjectType'
        DataType = ftInteger
      end
      item
        Name = 'LoadingLocationNo'
        DataType = ftInteger
      end
      item
        Name = 'BookingTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'CustomerNo'
        DataType = ftInteger
      end
      item
        Name = 'ShowProduct'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    AfterInsert = mtUserPropAfterInsert
    Left = 1072
    Top = 449
    object mtUserPropVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtUserPropOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtUserPropOwnerNoChange
    end
    object mtUserPropPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtUserPropLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtUserPropInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtUserPropRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtUserPropRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtUserPropCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtUserPropRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtUserPropProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object mtUserPropAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtUserPropSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtUserPropLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtUserPropLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtUserPropNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtUserPropSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
    end
    object mtUserPropLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtUserPropGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtUserPropBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtUserPropLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtUserPropLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = dm_UserProps.cds_LIP2
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LIPName'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropPIPNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPNAME'
      LookupDataSet = dm_UserProps.cds_PIP2
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'PIPNAME'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtUserPropREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = dm_UserProps.cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = dm_UserProps.cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVERK: TStringField
      FieldKind = fkLookup
      FieldName = 'VERK'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtUserPropGradestamp: TStringField
      FieldKind = fkLookup
      FieldName = 'Gradestamp'
      LookupDataSet = dm_UserProps.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'GradeStampNo'
      Lookup = True
    end
    object mtUserPropBarcode: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode'
      LookupDataSet = dm_UserProps.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeNo'
      Lookup = True
    end
    object mtUserPropProductDescription: TStringField
      FieldName = 'ProductDescription'
      Size = 100
    end
    object mtUserPropProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtUserPropProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtUserPropLIPChange: TIntegerField
      FieldName = 'LIPChange'
    end
    object mtUserPropSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dm_UserProps.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object mtUserPropVolumeUniNo: TIntegerField
      FieldName = 'VolumeUniNo'
    end
    object mtUserPropVU: TStringField
      FieldKind = fkLookup
      FieldName = 'VU'
      LookupDataSet = dm_UserProps.cds_VU
      LookupKeyFields = 'VolumeUnit_No'
      LookupResultField = 'VolumeUnitName'
      KeyFields = 'VolumeUniNo'
      Size = 10
      Lookup = True
    end
    object mtUserPropLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupDataSet = dm_UserProps.mtLengthFormat
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormatName'
      KeyFields = 'LengthFormatNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
    end
    object mtUserPropLengthVolUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthVolUnit'
      LookupDataSet = dm_UserProps.mtLengthVolUnit
      LookupKeyFields = 'LengthVolUnitNo'
      LookupResultField = 'LengthVolUnitName'
      KeyFields = 'LengthVolUnitNo'
      Size = 5
      Lookup = True
    end
    object mtUserPropVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object mtUserPropForm: TStringField
      FieldName = 'Form'
      Size = 50
    end
    object mtUserPropUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtUserPropGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
    end
    object mtUserPropGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
    end
    object mtUserPropAgentNo: TIntegerField
      FieldName = 'AgentNo'
    end
    object mtUserPropKilnNo: TIntegerField
      FieldName = 'KilnNo'
    end
    object mtUserPropTEST: TStringField
      FieldName = 'TEST'
      Size = 200
    end
    object mtUserPropShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtUserPropStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtUserPropEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtUserPropKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      OnChange = mtUserPropKilnChargeNoChange
    end
    object mtUserPropProgressKiln: TStringField
      FieldKind = fkLookup
      FieldName = 'ProgressKiln'
      LookupDataSet = dmInventory.cds_SelectProgressKiln
      LookupKeyFields = 'KilnChargeNo'
      LookupResultField = 'KilnName'
      KeyFields = 'KilnChargeNo'
      Size = 30
      Lookup = True
    end
    object mtUserPropFilter1: TStringField
      FieldName = 'Filter1'
      Size = 50
    end
    object mtUserPropFilter2: TStringField
      FieldName = 'Filter2'
      Size = 255
    end
    object mtUserPropMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtUserPropOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
    end
    object mtUserPropStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtUserPropFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
    end
    object mtUserPropClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtUserPropSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
    end
    object mtUserPropVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
    end
    object mtUserPropVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
    end
    object mtUserPropLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
    end
    object mtUserPropLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
    end
    object mtUserPropBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
    end
    object mtUserPropCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
    end
    object mtUserPropShowProduct: TIntegerField
      FieldName = 'ShowProduct'
    end
    object mtUserPropName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsUserProp: TDataSource
    DataSet = mtUserProp
    Left = 1072
    Top = 504
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 1176
    Top = 520
  end
  object GridPMPkgNos: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmPkgNos
      end>
    Left = 609
    Top = 289
  end
  object mtPkgNos: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'Supp_Code'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1072
    Top = 401
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
  end
  object pmPkgNos: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        Visible = True
        ItemName = 'dxBarButton38'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton14'
      end>
    UseOwnFont = False
    Left = 608
    Top = 176
    PixelsPerInch = 96
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.TextColor = clMaroon
    Style.TextStyle = [fsBold]
    Left = 320
    Top = 160
    PixelsPerInch = 96
  end
  object cxEditStyleController2: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -8
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clNavy
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 448
    Top = 192
    PixelsPerInch = 96
  end
  object cxEditStyleController3: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Left = 352
    Top = 584
    PixelsPerInch = 96
  end
  object pmKilnPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end>
    UseOwnFont = False
    Left = 353
    Top = 530
    PixelsPerInch = 96
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 22610360
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000606060006060600060606000606060006060600060606000606060006466
          6800697175006061620061656700606C6F0061757800607E830064888F005D81
          88005F616200605858007E7774006A656100565350005E5D5C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005F5F61005B5D6A0056587400505581004B528C00434E98008F9CB800A4CC
          D6009CD5E400639CA80062A3B00063A4B20063A6B30062A3B00066A9B6005990
          9D0053889200587B82007A8687006C676500605858006C66630084807E000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000535679003845B9003844BA003444BA003644BC003644B8009AA9D000A6DE
          EC009AD8E80061A2AD0061A6B30062A4B00064A6B50063A3B00065A7B5005A90
          9B00518890005087900071969E006D888F00BAB3AF00D6CFC900857F7C007B76
          7400847F7C000000000000000000000000000000000000000000000000000000
          000052567A003644BC003745BA003544BA003744BC003744BA009BADCC009ED1
          DE006D9FAF005C96A5005F9AA8005E9BA8005E9BA8005E9CAA00619EAB005A95
          A10052869100508590006F959C006B8A9200DCD6D100EFE8E4007C7474007A73
          7100847E7A007974720079767500000000000000000000000000000000000000
          000052577B003645BC003646BD003544BA003944BA003544BA00A4C7D10070A4
          AF0061A3B10061A1AF0062A5B40062A4B10063A6B50062A4B00067A8B7005B91
          9D0052889100518790006F969C006B8C9400DAD3CE00EFE5E3007C7674006E68
          670079747100706B690084807B00000000000000000000000000000000000000
          000052577C003646BC003646BB003D52BD006E85C8009DB2CD0070A2B30061A1
          AE0063A5B20061A2AE0062A5B30061A2AF0061A1B00061A0AC0062A0AE005992
          9F0052899200538791006E949A006C8C9200D7D0CC00EFE6E100847E7C00756F
          6E007E797500696362007B747300000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052557C003646BA004E5CB70092B7D100B1CBD3009AB5BB005E9AA8005F9A
          A9005E9CAA005E9BA9005E9BAB005FA0AD0062A0AF0061A1AE0065A7B5005A95
          A1005084940052848F006E939B006C8B9300D6CEC800EDE6E00086807E007A75
          720085817C00736F6B007E787600000000000000000000000000000000000000
          000052567F004A65C000A2BFC9008B8787008C96980087AEB60063A5B10060A2
          AE0062A6B20060A2AE0062A5B30062A3B00064A5B30062A3B00064A9B5005A91
          9D0053899300538793006E939B006C8D9500D4CDC800EAE2DF008B858400807A
          780088837F007873700086807D00000000000000000000000000000000000000
          0000644958009BD4EA00A6C7CD00726A69007684860062A5B20060A4AF0060A0
          AE0060A1B0005F9EA9005F9DAB00609EAB00609FAD005E9FAE005FA2B1005A95
          A30053889200518791006D9198006C8C9200CFC9C500E8E1DC0086807D007974
          720086817E007E7876008B848100000000000000000000000000000000000000
          000000000000A8CDD700ACB7BC00726A6800758384005E9EAC005F9EAE005E9F
          AC005E9FAF005FA2AF0062A5B30062A5B20063A5B50061A3B10065A8B6005991
          9D00548A9500538792006D939C006C8F9600CFC8C300E6DEDA007A7673006E69
          67007C787500756F6D0087827E00000000000000000000000000000000000000
          000000000000837F7C0076717000736C6B007687880063A6B10061A7B20062A2
          AF0062A5B20060A3AE0063A6B20064A4B20063A6B40062A4B20066A9B7005A91
          9D00538993005288910069929C006C8D9400CCC6C100E3DCD9007F787600716C
          6C0079747300686362007B767300000000000000000000000000000000000000
          0000000000007D787400706C6A00736C6A007782840061949C005D8992005983
          8A005D828C005A7980005C7C8200567277005E777D0052686F005B6F74004E5F
          63004D646A004F6B77006A898E006D8D9100CCC7C000E2DAD40085807C007973
          7000807A78006F6B69007E797500000000000000000000000000000000000000
          0000000000008D8883008A838300908988009D999400A59E9B009E989700A19D
          9A009C96940096918F009C9695009B959400BAB2B000A7A3A0009E9C98009F9D
          9A00ACABA700BFBAB800D3CECB007A767600817B7B009D969200888480007F79
          770087827F007975720086817D00000000000000000000000000000000000000
          00000000000089847F007D7774007D77740085807E0079746F00696560004F48
          45004F484400433F390048433D00433F37007E7873005F5A5800544E49005852
          4F004C48420054504C00928B87006469950063667E005E62750071707C007C77
          7300615F6500706D71007E777700000000000000000000000000000000000000
          0000000000007D787400726B6A00726C6A007E7B7700706B6800736E6D00514F
          4E005F5A5700494743005C5755005C5757009F9995009E9895006F6968007D78
          78008884810089878500B7B0AB007478A2005E648D00464B7B004B518300676C
          8A00666B8B006469860062678600000000000000000000000000000000000000
          0000000000007C777400726B6900736C69007C777500706B6900736E6C00524E
          4E004E4947004C4743004C484500514B4B009F989600857F7F00635B5A007873
          73007A76720088838100BDB5AF00464C940027308A002A328A00363F85003E45
          82003C448C003A4290003B439500000000000000000000000000000000000000
          0000000000007C777400726C6A00736C6B007E79760074706D0075717000524F
          4F004D484600494745004A4340004F4947009D969300686263006A6262006A63
          6200676262006A656400D9CFCC00464C940026308A0028328B002C3790002B33
          8E002D3692002E3694002F389800000000000000000000000000000000000000
          00000000000086827E007D7774007D77750087837F007F7B77008B8784006764
          6300665F5E00625D5B00615C5900655F5E00A7A19E00726A6A00706868008081
          8000B0A9A5007A727200D5CDCB00464D940028308A002A338B002C348D002935
          8C002D3692002C3894002D389500000000000000000000000000000000000000
          0000000000004D528E004A518D004E558E0051578F00515790009A949500575C
          96005C6099006C739E005B619800A9A8B900E0D8D40097919400575A75009294
          9F00D2CCC7009A989B00D0CAC7003D458A0027308A0029328B002B348E002833
          8D002C3590002D3896002C369300000000000000000000000000000000000000
          000000000000252D7F00232C7E00252D7F00262D7F00232B7F00817D7D002831
          8200252E820026308400242E84009C9AB500E2DBD9007D787D0020285000596C
          8300D0CBC7006D6B7500C9C5C200353D830027308B0028328B002A348F002834
          8C002B3491002E3796002C349300000000000000000000000000000000000000
          000000000000252C7E00252E7D00262E7F00272E7F00232C8100868181002830
          8200242E80002730830028307F009292AA00B1ADAA007C7A8200202850004E62
          7800CEC6C3004E4E5D00C0BBB900353E820027308C0028308A0029338E002A34
          8E002B3491002D3695002C349300000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          0000000000003238760033386E00383C6C003C3E68003F406500898280004B48
          5D004D4B59004C4D5600524E5600847F8000A39E9C0096918F00474652007172
          7B00CCC4BF005A575F00BFBAB700363E82002730890029328900293290002A35
          8D002C3490002D3695002E389500000000000000000000000000000000000000
          00000000000082483D0081564E007D5E59007A696700726969006C6768005651
          560057505500565054005250530054505300AEA9A5008881810054505300817F
          7E00CBC2BD00716B6B00938C8B003840860028308C0028308B00283290002B35
          8E002C3491002E37940030389700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000958F8C00844F
          4600805C57007D666300796E6E00706D6D007F7B7D0068626600545052007874
          7400B1ABA8005F595C0055505400343B84002830890028338A002D368B003A42
          87004C4D7E00594D6D0065444F00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000867570000000
          0000000000000000000000000000A8867B00D8D3CD009C918F00835951008C79
          7600969293007873740068656800464B7E004D4F7E0076789500713B36000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000816C66000000
          000000000000000000000000000000000000CCC3BC0084726C00000000000000
          0000CAC2BE00000000000000000000000000000000009F726700000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFC00000FFC000007FC000001FC0000007C0000007C0000007C000
          0007C0000007C0000007C0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007E0000007E0000007E0000007E0000007E0000007E000
          0007E0000007E0000007FF000007FF78007FFF7CDEFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001E180F004E4A450078757300827F
          7D00342F2700342F270016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600EDEDED00EDED
          ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00D9D9D800D9D9D8009A9796008C8987008C898700928F
          8D00D8D7D700D8D7D700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
          ED00EDEDED00EDEDED00E4E4E400E4E4E4003E39330016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F1F1009D9B99009D9B99008C8987008C8987008C8987009390
          8E00E6E6E500E6E6E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          06001610060065625E008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600161006001610060016100600161006001610
          060026201700DFDFDE00F5F5F500F5F5F500413D3700161006000000FF000000
          FF000000FF000000FF00FF000000FF000000FF00000016100600161006001610
          06002B261E00827F7D008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F27001610060016100600FF0000000000FF000000FF000000
          FF000000FF00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600FF000000FF0000000000FF001610060016100600FF000000FF0000001610
          0600353029008A8785008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF000000161006000000FF000000FF001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600FF000000FF00
          00001610060016100600161006000000FF00161006001610060016100600FF00
          000038332B008C8987008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F270016100600FF00000039352F00625E5A00625E5A007A77
          7500817E7C00AAA8A700CAC9C800CAC9C800423E380016100600161006001610
          06001610060016100600161006000000FF00161006001610060016100600FF00
          0000322D2500878482008C8987008C8987008C8987008C8987008C8987008885
          8300342F2700342F2700221D1500696562008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700817E7C0035312C00161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000007A7775008C8987008C8987008C8987008C8987008C8987008885
          83003B362F003B362F006C6965008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C89870086838100161006001610
          0600161006001610060016100600161006000000FF0016100600161006001610
          0600FF0000004D4944008B8886008B8886008C8987008C8987008C8987008885
          83006B6866006B6866008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          060016100600161006001610060016100600161006000000FF000000FF001610
          060016100600FF0000005F5C59005F5C59008C8987008C8987008C8987008B88
          86008B8886008B8886008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          0600161006001610060016100600161006001610060016100600161006000000
          FF001610060016100600FF000000FF000000534F4B00868381008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C898700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          06004D4A47004D4A470077747200777472007774720077747200777472007774
          720077747200777472007774720077747200777472007C7977008B8886008C89
          87008C8987008C8987008B8886007875720054504B00514D4700514D4700514D
          470059554F00B6B4B300C1BFBE00C1BFBE0067635F00514D4700161006001610
          060046423C0046423C008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C898700716E6B0026211800262118001610
          060026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600302B2300302B2300868381008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008C8987008481
          7F0088858300888583008C8987008C8987008C8987007A7774007A777400231E
          150026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600676461008C8987008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987008A8785005552
          4D0086838100868381008C8987008C8987008C8987008C8987008C8987005F5C
          580026201700DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          06001610060016100600241E1600797673008C8987008C8987008C8987008C89
          87008C8987008C8987008C8987008C8987008C8987008C8987005F5B58000000
          FF0086838100868381008C8987008C8987008C8987008C8987008C8987008380
          7E0035312A00DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          0600161006001610060016100600231E1500686462008B8886008B8886008C89
          87008C8987008C8987008C8987008C898700868381004E4A45000000FF002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008986
          84004A464000DFDFDE00F5F5F500F5F5F500413D370016100600161006001610
          060016100600161006001610060016100600161006002F2A23002F2A23004A46
          4000514D4700514C4600433F3900433F39000000FF000000FF00161006002A24
          1C0086838100868381008C8987008C8987008C8987008C8987008C8987008A87
          85004C484200DFDFDE00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C8987008F8C
          8A009A989500EFEFEF00F5F5F500F5F5F500413D370016100600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEE
          EE0096949200969492008C8987008C8987008C8987008C8987008C8987009A97
          9500F8F8F800FFFFFF00F5F5F500F5F5F500413D3700161006008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008B88
          83008B8883008B8883008B8883008B8883008B8883008B8883008B8883008D89
          85008E8C8A008E8C8A008C8987008C8987008C8987008C8987008C898700827F
          7C008B8883008B88830086837E0086837E002C271F0016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008C8987008C898700726F6D00726F6D00211B
          1200161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006002A24
          1C0086838100868381008C8987008B88860069666300211C1300211C13001610
          0600161006001610060016100600161006001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600161006001610
          060016100600161006001610060016100600161006001610060016100600241E
          160064615F0064615F0057534E00342F28001610060016100600161006001610
          0600161006001610060016100600161006001610060016100600}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 440
    Top = 401
    Bitmap = {
      494C01010D001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B6B63005A4A
      4200524A42005A5252006B6B6B00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C522100A539
      0000843910006B311800523929004A42390052524A00636363007B7B7B008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094522100B552
      1000D6946B00D6946B00BD6B39009C5221007B4221006339210052423900524A
      4200635A520073736B0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C5A2100B552
      1800EFC6A500FFEFCE00FFDEB500EFC69C00E7A57300CE845200AD6331008C4A
      2100734221005A423100524A4200636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A55A2100B552
      1800EFC6A500FFE7CE00FFE7C600FFE7BD00FFE7BD00FFDEB500F7C69C00EFB5
      8400DE945A00BD6B39008C4A21005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7CEB500FFE7CE00FFE7C600F7DEBD00F7DEBD00F7DEB500FFDEB500FFD6
      A500FFCE8400F7B56B00B5633100634A31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD632100B55A
      2100F7D6BD00FFEFD600FFE7CE00DEDEC600A5C6C600C6CEBD00FFDEB500FFCE
      8C00FFBD6300F7B56B00B56B3100634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD63
      3100F7E7CE00FFEFDE00EFE7D6008CC6CE004AADCE009CC6C600FFDEB500F7BD
      7300EFBD6B00EFB57B00AD6B3900634A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B56B2900BD6B
      3900F7E7DE00EFEFDE009CCECE004AADCE00009CCE007BBDCE00EFCEAD00B59C
      73009C947300CE9C6B00B56B31007B523100736B63009C949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD6B2900BD73
      4200F7F7E700B5D6DE0052B5D6009CCED600ADCED600009CCE00C6CEBD00A5A5
      94008C8C7300D6A57300E7AD7300C68C52009C734200846B4A0084736B009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900BD73
      4200F7F7EF00C6DEE700A5D6DE00EFEFDE00CEDED6004AADCE009CC6C600EFDE
      C600DEBD9400E7B58400EFC69400F7C69400EFB57B00CE945A00AD7B4200846B
      4A00736B6B008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6732900C67B
      5200FFFFF700F7F7EF00F7F7E700FFEFDE00EFE7D6008CC6D6004AADCE00F7E7
      CE00FFE7C600E7B58400C67B4A00BD8C5A00E7B58400EFC69400E7AD7B00AD94
      7B005A5A840039427B006B6B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2900C684
      5A00FFFFFF00FFF7EF00FFF7EF00FFF7E700F7EFDE00B5D6DE0063BDCE00C6D6
      CE00FFEFD600EFC69C00A56331007B523100B59C7B00E7BD9C00D6AD8400ADA5
      A5004A63C6001842BD0063639400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE8C
      6B00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700D6E7DE006BBDD6008CC6
      CE00F7EFDE00EFC69C00A5633100523929000000000000000000E7BD9C00C6C6
      C6006373C6004A63C600ADADCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00F7F7E70094CEDE0063BD
      CE00CEDED600EFC6A500A5633100523929000000000000000000000000000000
      0000ADADCE00ADADCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900CE9C
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00CEE7E70094CE
      D600CEE7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE732900BD73
      4200DEAD8C00E7C6B500EFDED600F7EFEF00F7F7F700FFFFF700F7F7F700EFF7
      EF00F7F7E700E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D67B2100BD52
      0800BD5A1000C6632100C66B2900C67B4200CE946300D6A58400E7BDA500EFD6
      C600F7E7DE00E7BD9C009C633100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFA55200D66B
      1000CE630800C65A0000C65A0000C65A0800C65A0800BD5A1000C6631800C663
      2100C6733900C673310094522100523929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD9C7B00BDA5
      7300CEA56B00D69C5200DE8C3900DE8C3900DE842900D6731000CE6B0800CE63
      0000C65A0000C65A00005A4A39005A4A39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C7B00BDA573009C948400A5947B00AD9C7300BD9C6B00CE9C
      5A00D69C5200DE8C39009C6B3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000DED6DE00DED6DE00F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D6005ACEEF00B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A50000000000000000000000000000000000DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010A5D6009CEFFF00CEFF
      FF008CF7FF0094F7FF0094F7FF008CEFFF008CEFFF007BE7F70073DEF7005AE7
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000CED6CE00DED6
      D600DED6DE00DED6DE00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000021A5D6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF0073EF
      FF0063E7FF005ADEFF005ADEFF005ADEFF0073DEF7005ACEEF004AC6E70031B5
      DE0018A5D6000000000000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      00000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F7000000000000000000000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEFFF0084EFFF007BEF
      FF0073EFFF006BE7FF0063E7FF0063E7FF005ADEFF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C00000000000000000000000000CECEC600CED6CE00DED6
      D600DED6DE00DED6DE00F7EFE700EFE7E70029008400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0084EF
      FF0084EFFF007BEFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700290084002900840029008400F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF008CEFFF008CEF
      FF008CEFFF0084EFFF0084EFFF0073EFFF006BE7FF0063E7FF005ADEFF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D60000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F70029008400F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094F7
      FF0094F7FF0094F7FF008CF7FF0094F7FF0094F7FF008CF7FF008CEFFF008CEF
      FF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF006BE7FF0063E7FF005ADE
      FF005ADEFF0018A5D60000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00EFE7E700F7EFE700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F70029008400F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF0073EFFF006BE7FF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD00000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00DED6DE00F7EFE700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7002900
      84002900840029008400F7F7F700000000000000000029ADD60094EFF70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BEFFF0073EFFF001084
      18005ADEFF0018A5D60000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D60000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B500000000000000000000000000CECEC600D6D6CE00DED6
      D600DED6DE00E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F70029008400F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF008CF7FF008CEFFF008CEFFF008CEFFF008CEFFF0084EFFF007BEFFF001084
      18005AE7FF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A00087310000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A50000000000000000000000000000000000CECEC600D6D6CE00DED6
      D600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF001084180094F7FF008CEFFF008CEFFF00108418001084
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD390008730800000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B5000000000000000000000000000000000000000000CECEC600D6D6CE00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00108418001084180094F7FF0010841800108418000894
      18008CEFFF0018A5D60000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD3100007308000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      00000000000000000000000000000000000000000000CECEC600E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700000000000000000029ADD6009CF7FF00BDE7
      F700BDEFF700C6F7FF00C6F7FF00C6F7FF009CF7FF008CF7FF008CF7FF0094F7
      FF0094F7FF0094F7FF001084180031AD52001084180010841800089418008CEF
      FF008CEFFF0018A5D60000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A00087308000873080008730800087308000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000029ADD60031ADDE0031AD
      DE0031ADDE0031ADDE0031ADDE0031ADDE007BCEE7008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF001084180031AD520039C65A001084180094F7FF0094F7
      FF0094F7FF0018A5D60000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      3900087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0031ADDE007BCEE7009CEFFF009CEF
      FF009CEFFF009CEFFF00108418004AD67B0021AD390021AD3900108418009CEF
      FF005ACEEF0018A5D60000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      2100087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE0010841800108418001084180010841800108418001084
      180039BDE7000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      1800087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      1000087308000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFF7E700FFF7E700FFEF
      D600FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDEB500FFDEB500FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFF7E700FFF7
      E700FFEFD600FFEFD600FFE7C600FFDEB500FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C60000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7E700FFEFD600FFE7C600FFE7
      C600FFD6AD00FFDEB500CE630000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE00000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E700000000000000000042E7E70042E7E70042E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFEFD600FFEF
      D600FFE7C600FFE7C600CE630000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE00000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7E7000000
      0000000000000000000000000000000000000000000000000000DEBD9400DEBD
      9400DEBD9400DEBD9400DEBD9400DEBD9400CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7E700FFF7
      E700FFEFD600FFE7C600CE630000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000042E7E70042E7E70042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFEFD600FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E7000000000000000000000000000000000000000000FFD6AD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E700000000000000000000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFD600CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000000042E7
      E70042E7E70042E7E70000000000000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840042424200424242004242
      4200848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000848484004242420042424200424242008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D673100000000000000000000000000000000000000000000000
      0000000000000000000084848400424242004242420042424200848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E700000000000000000042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840042424200424242004242420084848400000000000000
      0000000000000000000000000000000000000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700000000000000000000000000000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      000042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000008484840042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E70042E7E70042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00DEBD940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70042E7
      E70042E7E70042E7E70042E7E700000000000000000042E7E70042E7E70042E7
      E70042E7E700000000000000000042E7E7000000000000000000FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E70042E7E700000000000000000042E7
      E70042E7E70042E7E70042E7E70000000000000000000000000000000000FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6
      FD00FFD6AD00FFD6AD00FFD6AD00FFD6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E70042E7E70042E7E70042E7E7000000
      00000000000042E7E70042E7E70042E7E7000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E70000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      6300636363006363630000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B00000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B58484000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000C0FFFF000000000000000000C00FFF000000000000000000
      C001FF000000000000000000C000FF000000000000000000C000FF0000000000
      00000000C000FF000000000000000000C000FF000000000000000000C000FF00
      0000000000000000C0003F000000000000000000C0000F000000000000000000
      C00003000000000000000000C00001000000000000000000C000010000000000
      00000000C000C1000000000000000000C000F3000000000000000000C000FF00
      0000000000000000C000FF000000000000000000C000FF000000000000000000
      C000FF000000000000000000C000FF000000000000000000F801FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0C1FFFFFFF807FFF807FFFFC0007F07FFF8003FF8003FFF00001
      E007FF80003F80001FE00003C0007F80000780001F8000038000078000038000
      0F80000380000180000380000F80000380000180000380000780000380000180
      0003800007800003800001800003800007800003800001800003800003C00003
      800001800003800003E00007800001800003800001F8000F8000018000038000
      00F8001F800001800003800000FC007FC00003800003800007FC00FFF8000780
      0003800007FC01FFFF800F800007800007FC01FFFFFC1FC03FFFC03F07FC01FF
      FFFFFFE07FFFE07E0FFC01FFFFFFFFFFFFFFFFE01FF803FFFFFFFFFFFFFFFFF0
      7FF803FFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00003FFFFFFFF0001FFFFFF
      8000018007FFFF0001FFFFFF8000018001FFFF0001FFFFFF8000018000FFFF00
      01F8003F80000180007FFF0001F87F3F800001C0001FFF0001F83FBF800001F0
      000FC00001FC1FFF800001FC0007C00001FE0FFF800001FE0003C00001FF07FF
      800001FF0001C00001FF83FF800001FF0000C00001FF83FF800001FF0000C000
      01FF07FF800001FF8000C00001FE0FFF800001C00000C00003FC1FFF800001C0
      0000C0007FF83FBFC00003C00000C0007FF87F3FFFFFFFC00000C0007FF8003F
      FFFFFFF00000C0007FFFFFFFFFFFFFFC0000C0007FFFFFFFFFFFFFFF0000E000
      FFFFFFFFFFFFFFFFC000FFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE00003FF
      FFFFFFFFFFFFFFFFE00003FF1FFFFFFFFFFFFFFFE00003F8000FFFFFFF8000FF
      E00003E0000FF1FFCF80007FE00003C0000FF5802F80003FE00003C0000FF990
      0F80001FE00003C0000FFBDEDF80000FE00003C0000FF1FFFF800007E00003C0
      000FFFFFFF800003E00003C0000FF18FFF800001E00003C0000FF7C423800001
      E00003C0000FFB8003800001E00003C0000FF5D237800001E00003C0000FF1FF
      7F800001E00003C0000FFFFFFFC00001E00003C0000FF1FFFFE00001E00003C0
      000FFBA05FF00001E00003E0000FFB821FF80001E00007F8000FF3989FFC0001
      E0000FFE1FFFFBFBFFFE0001E0001FFFFFFFFFFFFFFF0001E0003FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ds_PLIP: TDataSource
    DataSet = cds_PLIP
    Left = 840
    Top = 272
  end
  object cds_Verk: TFDQuery
    AggregatesActive = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo, C.PktNrLevKod'
      ''
      'FROM   dbo.Client C'
      '       inner join dbo.ClientRole    R on R.ClientNo = C.ClientNo'
      '       inner join dbo.GroupClient gc on gc.ClientNo = C.ClientNo'
      ''
      'WHERE  gc.MainClientNo = :MainClientNo'
      ''
      'Order by C.clientName'
      '')
    Left = 1176
    Top = 472
    ParamData = <
      item
        Name = 'MAINCLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cds_VerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cds_VerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object cds_PLIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct isNull(LIP.InvCode,'#39#39')+'#39'/'#39'+RTRIM(LIP.LogicalInve' +
        'ntoryName) AS PLIP,'
      
        'LIP.LogicalInventoryPointNo AS LIPNo, PH.PhysicalInventoryPointN' +
        'o AS PIPNO, CY.CITYNAME,'
      'LIP.LogicalInventoryName, LIP.InvCode'
      'FROM'
      'dbo.PHYSICALINVENTORYPOINT PH'
      
        'Inner Join dbo.LOGICALINVENTORYPOINT LIP on LIP.PhysicalInventor' +
        'yPointNo = PH.PhysicalInventoryPointNo'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PH.PhyInvPointNameNo'
      'Inner Join dbo.ClientRole CR ON CR.ClientNo = PH.OwnerNo'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND LIP.SequenceNo = 1'
      'AND PH.SequenceNo = 1'
      'AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo'
      'FROM PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  LIP.InvCode, LIP.LogicalInventoryName, CY.CITYNAME'
      ''
      '')
    Left = 768
    Top = 216
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LEGOOWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PLIPPLIP: TStringField
      FieldName = 'PLIP'
      Origin = 'PLIP'
      ReadOnly = True
      Size = 54
    end
    object cds_PLIPInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 3
    end
  end
  object sq_UserProfile: TFDQuery
    AfterInsert = sq_UserProfileAfterInsert
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.UserProfile'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      'AND ((Name = :Name) OR ('#39'ALL'#39' = :Name))'
      '')
    Left = 768
    Top = 328
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
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_UserProfileUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_UserProfileForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sq_UserProfileCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Timer1: TTimer
    Left = 768
    Top = 440
  end
  object mtSpecData: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NoOfCopies'
        DataType = ftInteger
      end
      item
        Name = 'SizeFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LengthFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'VolumeFormatNo'
        DataType = ftInteger
      end
      item
        Name = 'LanguageCode'
        DataType = ftInteger
      end
      item
        Name = 'ArtikelKod'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KundReferens'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 912
    Top = 197
    object mtSpecDataNoOfCopies: TIntegerField
      FieldName = 'NoOfCopies'
    end
    object mtSpecDataSizeFormatNo: TIntegerField
      FieldName = 'SizeFormatNo'
    end
    object mtSpecDataLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
    end
    object mtSpecDataVolumeFormatNo: TIntegerField
      FieldName = 'VolumeFormatNo'
    end
    object mtSpecDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object mtSpecDataSprk: TStringField
      FieldKind = fkLookup
      FieldName = 'Spr'#229'k'
      LookupKeyFields = 'LanguageNo'
      LookupResultField = 'LanguageName'
      KeyFields = 'LanguageCode'
      Lookup = True
    end
    object mtSpecDataSizeFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'SizeFormat'
      LookupKeyFields = 'SizeFormatNo'
      LookupResultField = 'SizeFormat'
      KeyFields = 'SizeFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormat'
      KeyFields = 'LengthFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataVolumeFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'VolumeFormat'
      LookupKeyFields = 'VolumeFormatNo'
      LookupResultField = 'VolumeFormat'
      KeyFields = 'VolumeFormatNo'
      Size = 10
      Lookup = True
    end
    object mtSpecDataArtikelKod: TStringField
      FieldName = 'ArtikelKod'
    end
    object mtSpecDataKundReferens: TStringField
      FieldName = 'KundReferens'
    end
  end
  object mtLayout: TkbmMemTable
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
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    AfterInsert = mtLayoutAfterInsert
    Left = 984
    Top = 301
    object mtLayoutPackageLogLayoutNo: TIntegerField
      FieldName = 'PackageLogLayoutNo'
    end
    object mtLayoutLayout: TStringField
      FieldKind = fkLookup
      FieldName = 'Layout'
      LookupKeyFields = 'PackageLogLayoutNo'
      LookupResultField = 'PackageLogLayoutName'
      KeyFields = 'PackageLogLayoutNo'
      Lookup = True
    end
    object mtLayoutNoOfCopies: TIntegerField
      FieldName = 'NoOfCopies'
    end
  end
  object dsLayout: TDataSource
    DataSet = mtLayout
    Left = 984
    Top = 357
  end
  object dsSpecData: TDataSource
    DataSet = mtSpecData
    Left = 864
    Top = 189
  end
  object sq_OnePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '--        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9#9#9#9'AS PACKAGENO,'
      '--        PN.PackageTypeNo'#9#9#9#9'AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '--        PT.Totalm3Actual                AS M3_NET,'
      '        PT.TotalNoOfPieces              AS TotalPCS,'
      '--        PT.Totalm3Nominal'#9#9#9#9'AS M3_NOM,'
      '--'#9#9'PT.TotalSQMofActualWidth'#9#9'AS KVM,'
      #9#9'PT.TotalLinealMeterActualLength AS LOPM,'
      '--        PT.ProductNo                    AS PRODUCTNO,'
      '--        Cy.CityName                     AS INVENTORY,'
      '--        PT.OnSticks                     AS ONSTICKS,'
      '--        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '--        C.ClientName                    AS OWNER,'
      '--        PIP.OwnerNo                     AS OWNERNO,'
      '--        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '--        BC.BARCODE                      AS BAR_CODE,'
      '--        PT.BarCodeID                    AS BARCODE_ID,'
      '--        GS.GradeStamp                   AS GRADE_STAMP,'
      '--        PT.GradeStamp                   AS GRADESTAMPNO,'
      '--        PT.PackageHeight                AS PKG_HEIGHT,'
      '--        PT.PackageWidth                 AS PKGWIDTH,'
      '--        PT.MiniBundled                  AS MINI_BUNDLE,'
      '--        PT.ShrinkWrap                   AS SHRINK_WRAP,'
      '--        WT.WrapType                     AS WRAP_TYPE,'
      '--        PT.WrapType                     AS WRAPTYPENO,'
      '--        PN.SupplierNo                   AS SUPPLIERNO,'
      '--        PN.PackageTypeNo'#9#9#9#9'AS OLD_PACKAGETYPENO,'
      ''
      '        CASE'
      
        '        WHEN 1 = :SizeFormat THEN CAST(PG.ActualThicknessMM AS V' +
        'archar(6))'
      
        '        WHEN 3 = :SizeFormat THEN CAST(PG.NominalThicknessINCH A' +
        'S Varchar(6))'
      '        END AS oThickness,'
      '        CASE'
      
        '        WHEN 1 = :SizeFormat THEN CAST(PG.ActualWidthMM AS Varch' +
        'ar(6))'
      
        '        WHEN 3 = :SizeFormat THEN CAST(PG.NominalWidthINCH AS Va' +
        'rchar(6))'
      '        END AS oWidth,'
      ''
      #9#9'RTRIM(KV.GradeName) AS KV,'
      #9#9'RTRIM(TS.SpeciesShortName) AS SpeciesShortName,'
      '    RTRIM(UT.SurfacingName) AS UT,'
      #9#9
      #9#9'(Select '
      #9#9'CASE '
      
        #9#9'WHEN 1 = :LengthFormat THEN CAST(Max(PL.ActualLengthMM) AS Var' +
        'char(6))'
      
        #9#9'WHEN 3 = :LengthFormat THEN CAST(Max(PL.NominalLengthFEET) AS ' +
        'Varchar(6))'
      
        #9#9'WHEN 4 = :LengthFormat THEN CAST(Max(PL.ActualLengthINCH) AS V' +
        'archar(6))'
      #9#9'END '#9
      #9#9'FROM dbo.PackageTypeDetail PTD '
      
        #9#9'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Pr' +
        'oductLengthNo'
      #9#9'WHERE PTD.PackageTypeNo = PN.PackageTypeNo) AS oLength,'
      ''
      #9#9'CASE'
      #9#9'WHEN 1 = :VolumeFormat THEN'#9'PT.Totalm3Actual'
      #9#9'WHEN 3 = :VolumeFormat THEN'#9'PT.TotalMFBMNominal '
      #9#9'END AS Volume,'
      '    PN.DateCreated'
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '--        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageTy' +
        'peNo = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup      PG  ON PG.ProductGroupN' +
        'o     = Pr.ProductGroupNo'
      '        INNER JOIN dbo.Species TS on TS.SpeciesNo = PG.SpeciesNo'
      
        '        INNER JOIN dbo.Surfacing UT on UT.SurfacingNo = PG.Surfa' +
        'cingNo'
      '        INNER JOIN dbo.Grade KV on KV.GradeNo = Pr.GradeNo'
      
        '--        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.Logica' +
        'lInventoryPointNo = PN.LogicalInventoryPointNo'
      
        '--        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physi' +
        'calInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '--        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPoint' +
        'NameNo'
      '--        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '--        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.Ba' +
        'rCodeID'
      
        '--        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo =' +
        ' PT.GradeStamp'
      
        '--        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.' +
        'WrapType'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'And TS.LanguageCode = :LanguageCode'
      'And UT.LanguageCode = :LanguageCode'
      'And KV.LanguageCode = :LanguageCode'
      '')
    Left = 904
    Top = 456
    ParamData = <
      item
        Name = 'SIZEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LENGTHFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VOLUMEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OnePkgTotalPCS: TIntegerField
      FieldName = 'TotalPCS'
      Origin = 'TotalPCS'
    end
    object sq_OnePkgLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OnePkgoThickness: TStringField
      FieldName = 'oThickness'
      Origin = 'oThickness'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgoWidth: TStringField
      FieldName = 'oWidth'
      Origin = 'oWidth'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Size = 30
    end
    object sq_OnePkgSpeciesShortName: TStringField
      FieldName = 'SpeciesShortName'
      Origin = 'SpeciesShortName'
      ReadOnly = True
      Size = 10
    end
    object sq_OnePkgUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ReadOnly = True
      Size = 30
    end
    object sq_OnePkgoLength: TStringField
      FieldName = 'oLength'
      Origin = 'oLength'
      ReadOnly = True
      Size = 6
    end
    object sq_OnePkgVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      ReadOnly = True
    end
    object sq_OnePkgDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 440
    Top = 512
  end
  object siLangLinked_fkilnHandling: TsiLangLinked
    Version = '7.8.4'
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
    Left = 608
    Top = 544
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066006B0069006C006E00480061006E0064006C006900
      6E00670001004C00410047004500520052004100500050004F00520054000100
      0100530054004F0043004B0020005200450050004F0052005400010001000D00
      0A00740073004C006100670072006500740001004C0061006700650072000100
      0100530074006F0063006B00010001000D000A00630078004C00610062006500
      6C0032000100C40067006100720065003A000100C40067006100720065000100
      4F0077006E00650072000100C400670061007200650001000D000A0063007800
      4C006100620065006C005600610067006E0001004D00610072006B0065007200
      6100640020007600610067006E003A0001004D00610072006B00650072006100
      640020007600610067006E000100530065006C00650063007400650064002000
      630061007200740001004D00610072006B006500720061006400200076006100
      67006E0001000D000A00630078004C006100620065006C003100010054006F00
      72006B003A00010054006F0072006B0001004B0069006C006E00010054006F00
      72006B0001000D000A006300620043006F006C004100750074006F0057006900
      64007400680001004100750074006F0020006B006F006C0075006D006E006200
      720065006400640001004100750074006F002E0020006B006F006C002E006200
      720065006400640001004100750074006F002E00200063006F006C002E007700
      690064007400680001004100750074006F002E0020006B006F006C002E006200
      720065006400640001000D000A006300780042007500740074006F006E003900
      010053007400E4006E00670001000100430026006C006F007300650001000100
      0D000A00630078004C006100620065006C00330001004B006F006C0062007200
      6500640064003A0001004B006F006C002E006200720065006400640001004300
      6F006C002E007700690064007400680001004B006F006C002E00620072006500
      6400640001000D000A00640078004200610072004D0061006E00610067006500
      720031004200610072003100010043007500730074006F006D00200031000100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      720031004200610072003300010054006F0072006B0053006100740073000100
      54006F0072006B00730061007400730001004B0069006C006E00200073006500
      7400010054006F0072006B00730061007400730001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200350001005400
      6F0072006B0073006100740073003200010001004B0069006C006E0020007300
      6500740020003200010001000D000A006C006200520065006600720065007300
      6800010026005200650066007200650073006800010055007000700064006100
      7400650072006100010055007000640061007400650001005500700070006400
      6100740065007200610001000D000A006C00620050006B0067004E006F005200
      650070006F00720074000100500061006B00650074006E007200200046003200
      0100500061006B00650074004E007200200046003200010050006B0067004E00
      6F002000460032000100500061006C006C004E00720020004600320001000D00
      0A006C0062005000630073005000650072004C0065006E006700740068005200
      650070006F0072007400010041006E0074002F006C00E4006E00670064002000
      46003300010041006E00740061006C002F006C00E4006E006700640020004600
      330001005000630073002F006C0065006E006700740068002000460033000100
      41006E00740061006C002F006C00E4006E006700640020004600330001000D00
      0A006C00620050006B00670054007900700065005200650070006F0072007400
      0100500061006B00650074006B006F0064002000460034000100010050006B00
      6700200063006F00640065002000460034000100500061006C006C006B006F00
      640020004600340001000D000A006C00620049006E00760065006E0074006F00
      7200790043006F0075006E007400010050006B0074004E00720020006C006900
      7300740061002000460035000100010050006B0067004E006F0020006C006900
      730074002000460035000100500061006C006C004E00720020006C0069007300
      7400610020004600350001000D000A006C006200480069006400650046006900
      6C00740065007200500061006E0065006C0001004700F6006D00200066006900
      6C007400650072000100010048006900640065002000660069006C0074006500
      7200010001000D000A0062006200530075006D006D0061007200790052006500
      70006F00720074000100530075006D006D006500720069006E00670020004300
      520020004600360001000100530075006D006D00610072007900200043005200
      200046003600010001000D000A00640078004200610072004C00610072006700
      650042007500740074006F006E003100010054006100620065006C006C002000
      46003800010001005400610062006C006500200046003800010001000D000A00
      640078004200610072004C00610072006700650042007500740074006F006E00
      32000100530075006D006D006500720069006E00670020004600370001000100
      530075006D006D00610072007900200046003700010001000D000A0064007800
      42006100720042007500740074006F006E00330033000100530075006D006D00
      6500720069006E00670001000100530075006D006D0061007200790001000100
      0D000A006400780042006100720042007500740074006F006E00340030000100
      5300700061007200610020006C00610079006F00750074000100010053006100
      7600650020006C00610079006F0075007400010001000D000A00640078004200
      6100720042007500740074006F006E00340031000100D600700070006E006100
      20006C00610079006F0075007400010001004F00700065006E0020006C006100
      79006F0075007400010001000D000A0064007800420061007200420075007400
      74006F006E0034003200010053007000610072006100200073006F006D002000
      65007800630065006C0001000100530061007600650020006100730020006500
      7800630065006C00010001000D000A0064007800420061007200420075007400
      74006F006E00320001004600E4006C00740020007600E4006C006A0061007200
      650001004600E4006C0074007600E4006C006A00610072006500010046006900
      65006C006400630068006F006F0073006500720001004600E4006C0074007600
      E4006C006A0061007200650001000D000A006400780042006100720042007500
      740074006F006E003300010045007800700061006E0064006500720061002000
      61006C006C006100200067007200750070007000650072000100010045007800
      700061006E006400200061006C006C002000670072006F007500700073000100
      01000D000A006400780042006100720042007500740074006F006E0034000100
      4B006F006C006C006100700073006100200061006C006C006100200067007200
      750070007000650072000100010043006F006C006C0061007000730065002000
      61006C006C002000670072006F00750070007300010001000D000A0064007800
      42006100720042007500740074006F006E0035000100C4006E00640072006100
      2000700061006B0065007400010001004300680061006E006700650020007000
      6B0067000100C4006E006400720061002000700061006C006C0001000D000A00
      6400780042006100720042007500740074006F006E0036000100540061002000
      62006F00720074002000700061006B006500740001000100440065006C006500
      74006500200070006B006700010054006100200062006F007200740020007000
      61006C006C0001000D000A006400780042006100720042007500740074006F00
      6E0037000100500061006B00650074006C006F00670067000100010050006B00
      670020006C006F0067000100500061006C006C0020006C006F00670067000100
      0D000A006400780042006100720042007500740074006F006E00330035000100
      5600E50072006400610020006C00610067006500720001000100530074006F00
      63006B0020006300610072006500010001000D000A0064007800420061007200
      42007500740074006F006E00340033000100C4006E0064007200610020007000
      72006900730020007000E50020006D00610072006B0065007200610064006500
      2000700061006B0065007400010001004300680061006E006700650020007000
      720069006300650020006F006E002000730065006C0065006300740065006400
      200070006B0067000100C4006E00640072006100200070007200690073002000
      7000E50020006D00610072006B00650072006100640065002000700061006C00
      6C006100720001000D000A006400780042006100720042007500740074006F00
      6E00380001005200650067006900730074007200650072006100200070006100
      6B00650074000100520065006700690073007400720065007200610020007000
      61006B0065007400010052006500670069007300740065007200200070006B00
      6700010052006500670069007300740072006500720061002000700061006C00
      6C0001000D000A006400780042006100720042007500740074006F006E003900
      0100C4006E006400720061002000700061006B00650074000100010043006800
      61006E0067006500200070006B0067000100C4006E0064007200610020007000
      61006C006C0001000D000A006400780042006100720042007500740074006F00
      6E00310030000100410076007200650067006900730074007200650072006100
      2000700061006B00650074000100010055006E00720065006700690073007400
      65007200200070006B0067007300010041007600720065006700690073007400
      72006500720061002000700061006C006C006100720001000D000A0064007800
      42006100720042007500740074006F006E0031003100010053006B0072006900
      7600200075007400010001005000720069006E007400010001000D000A006400
      780042006100720042007500740074006F006E0031003200010045006D006100
      69006C006100010045006D00610069006C00010045006D00610069006C000100
      45006D00610069006C0001000D000A0064007800420061007200420075007400
      74006F006E003100340001004600E4006C00740020007600E4006C006A006100
      7200650001004600E4006C0074007600E4006C006A0061007200650001004600
      690065006C006400630068006F006F0073006500720001004600E4006C007400
      7600E4006C006A0061007200650001000D000A00640078004200610072004200
      7500740074006F006E00310033000100500061006B006500740069006E006600
      6F0072006D006100740069006F006E000100010050006B006700200069006E00
      66006F000100500061006C006C0069006E0066006F0001000D000A0064007800
      42006100720042007500740074006F006E0032003800010046006C0079007400
      740061002000700061006B0065007400200069006E007400650072006E007400
      010001004D006F0076006500200070006B006700200069006E00740065007200
      6E0061006C006C007900010046006C0079007400740061002000700061006C00
      6C00200069006E007400650072006E00740001000D000A006400780042006100
      720042007500740074006F006E00330034000100410076007200650067006900
      73007400720065007200610020006D006F007400200069006E00760065006E00
      74006500720069006E0067000100010055006E00720065006700690073007400
      65007200200061006700610069006E0073007400200069006E00760065006E00
      74006F0072007900010001000D000A0064007800420061007200420075007400
      74006F006E0033003700010054006100200062006F0072007400200070006100
      6B0065007400200028006C0061006700650072007600E5007200640029000100
      0100440065006C00650074006500200070006B00670020002800730074006F00
      63006B00200063006100720065002900010054006100200062006F0072007400
      2000700061006C006C00200028006C0061006700650072007600E50072006400
      290001000D000A006400780042006100720042007500740074006F006E003300
      38000100C4006E006400720061002000700061006B0065007400200028006C00
      61006700650072007600E500720064002900010001004300680061006E006700
      6500200070006B00670020002800730074006F0063006B002000630061007200
      650029000100C4006E006400720061002000700061006C006C00200028006C00
      61006700650072007600E50072006400290001000D000A006400780042006100
      720042007500740074006F006E003100350001004E007900200074006F007200
      6B007300610074007300010001004E006500770020006B0069006C006E002000
      730065007400010001000D000A00640078004200610072004200750074007400
      6F006E0031003600010020002000530070006100720061002000200001000100
      20002000530061007600650020002000010001000D000A006400780042006100
      720042007500740074006F006E00310037000100C5006E006700720061000100
      010055006E0064006F00010001000D000A006400780042006100720042007500
      740074006F006E0031003800010054006100200062006F007200740020007400
      6F0072006B00730061007400730001000100440065006C006500740065002000
      6B0069006C006E002000730065007400010001000D000A006400780042006100
      720042007500740074006F006E00310039000100D600700070006E0061000100
      01004F00700065006E00010001000D000A006400780042006100720042007500
      740074006F006E0032003000010053006B007200690076002000750074000100
      01005000720069006E007400010001000D000A00620062004100640064005000
      6B006700730054006F004B0069006C006E004300680061007200670065000100
      4C00E400670067002000700061006B00650074002000740069006C006C002000
      74006F0072006B00730061007400730001000100410064006400200070006B00
      6700200074006F0020006B0069006C006E00200073006500740001004C00E400
      670067002000700061006C006C002000740069006C006C00200074006F007200
      6B00730061007400730001000D000A0064007800420061007200420075007400
      74006F006E0033003000010054006100200062006F0072007400200070006100
      6B006500740001000100440065006C00650074006500200070006B0067000100
      54006100200062006F00720074002000700061006C006C0001000D000A006400
      780042006100720042007500740074006F006E00320039000100540061002000
      62006F0072007400200072006100640001000100440065006C00650074006500
      20006C0069006E006500010001000D000A006400780042006100720042007500
      740074006F006E0033003100010046006C007900740074006100200070006100
      6B00650074002000740069006C006C0020006C00610067006500720020006500
      6600740065007200200074006F0072006B00010001004D006F00760065002000
      70006B0067007300200074006F002000730074006F0063006B00200061006600
      74006500720020006B0069006C006E00010046006C0079007400740061002000
      700061006C006C002000740069006C006C0020006C0061006700650072002000
      65006600740065007200200074006F0072006B0001000D000A00640078004200
      6100720042007500740074006F006E003300320001004E006F00740065007200
      69006E00670001004E006F00740065007200610001004E006F00740065000100
      4E006F00740065007200610001000D000A006400780042006100720042007500
      740074006F006E0032003300010053006B007200690076002000260075007400
      010001005000720069006E007400010001000D000A0064007800420061007200
      42007500740074006F006E003200340001004100750074006F006D0061007400
      690073006B0020006B006F006C0075006D006E00620072006500640064000100
      4100750074006F002E0020006B006F006C002E00620072006500640064000100
      4100750074006F002E00200063006F006C002E00770069006400740068000100
      4100750074006F002E0020006B006F006C002E00620072006500640064000100
      0D000A006400780042006100720042007500740074006F006E00320035000100
      45006D00610069006C006100010045006D00610069006C00010045006D006100
      69006C00010045006D00610069006C0001000D000A0064007800420061007200
      42007500740074006F006E003200360001004700720075007000700073007500
      6D006D006500720069006E00670001000100470072006F007500700073007500
      6D00010001000D000A006400780042006100720042007500740074006F006E00
      320037000100470072007500700070006500720069006E006700730072007500
      7400610001000100470072006F0075007000200062006F007800010001000D00
      0A006200620056006900730061004100760041006B0074006900760065007200
      6100640065000100560069007300610020006100760061006B00740069007600
      6500720061006400650001000100530068006F00770020006400690073006100
      62006C0065006400010001000D000A0064007800420061007200420075007400
      74006F006E0033003600010041006C007400650072006E006100740069007600
      2000640069006D002E0069006E006D00610074006E0069006E00670001000100
      440069006D0020006F007000740069006F006E007300200069006E0070007500
      7400010001000D000A006400780042006100720042007500740074006F006E00
      330039000100C50074006500720073007400E4006C006C002000740061006200
      65006C006C006C00610079006F00750074000100010052006500730065007400
      20007400610062006C00650020006C00610079006F0075007400010001000D00
      0A006100630043006C006F00730065000100580001000100010001000D000A00
      6100630050006B00670049006E0066006F000100500061006B00650074006900
      6E0066006F0072006D006100740069006F006E000100010050006B0067002000
      69006E0066006F000100500061006C006C0069006E0066006F0001000D000A00
      6100630050006B00670054007900700065005400610062006C00650001005500
      7000700064006100740065007200610001000100550070006400610074006500
      010001000D000A00610063004100640064005600610067006E0001004C00E400
      670067002000740069006C006C0020005600610067006E002F00530061007400
      730001000100410064006400200074006F00200063006100720074002F007300
      65007400010001000D000A006100630045006400690074005600610067006E00
      0100C4006E0064007200610020005600610067006E002F005300610074007300
      010001004300680061006E0067006500200063006100720074002F0073006500
      7400010001000D000A00610063004D006F00760065005600610067006E004900
      6E0074006F004B0069006C006E00010053007400650067006100200069006E00
      20005600610067006E002F00530061007400730020006900200074006F007200
      6B000100010045006E00740065007200200043006100720074002F0042006100
      740063006800200069006E00200074006F0020006B0069006C006E0001000100
      0D000A00610063004D006F0076006500460072006F006D004B0069006C006E00
      01005300740065006700610020007500740020005600610067006E002F005300
      610074007300200066007200E5006E00200074006F0072006B00010001004500
      6A00650063007400200043006100720074002F00420061007400630068002000
      660072006F006D0020006B0069006C006E00010001000D000A00610063004300
      61006E00630065006C004D006F00760065005600610067006E0049006E007400
      6F004B0069006C006E000100C5006E0067007200610020005300740065006700
      6100200069006E0020005600610067006E002F00530061007400730020006900
      200074006F0072006B000100010055006E0064006F00200045006E0074006500
      7200200043006100720074002F0042006100740063006800200069006E002000
      74006F0020006B0069006C006E00010001000D000A0061006300430061006E00
      630065006C004D006F0076006500460072006F006D004B0069006C006E000100
      C5006E0067007200610020005300740065006700610020007500740020005600
      610067006E002F005300610074007300200066007200E5006E00200074006F00
      72006B000100010055006E0064006F00200045006A0065006300740020004300
      6100720074002F00420061007400630068002000660072006F006D0020006B00
      69006C006E00010001000D000A00610063005300610076006500500072006F00
      70007300010053007000610072006100200069006E0073007400E4006C006C00
      6E0069006E006700610072000100010053006100760065002000730065007400
      740069006E0067007300010001000D000A004600310050006B0074004E007200
      72006100700070006F007200740031000100500061006B00650074006E007200
      2000460032000100500061006B00650074004E00720020004600320001005000
      6B0067004E006F002000460032000100500061006C006C004E00720020004600
      320001000D000A004600320041006E00740061006C006C006E00670064007200
      6100700070006F00720074003100010041006E0074002F006C00E4006E006700
      6400200046003300010041006E00740061006C002F006C00E4006E0067006400
      20004600330001005000630073002F006C0065006E0067007400680020004600
      3300010041006E00740061006C002F006C00E4006E0067006400200046003300
      01000D000A004600330050006B0074006B006F00640072006100700070006F00
      7200740031000100500061006B00650074006B006F0064002000460034000100
      010050006B006700200063006F00640065002000460034000100500061006C00
      6C006B006F00640020004600340001000D000A004600340050006B0074004E00
      72006C0069007300740061003100010050006B0074004E00720020006C006900
      7300740061002000460035000100010050006B0067004E006F0020006C006900
      730074002000460035000100500061006C006C004E00720020006C0069007300
      7400610020004600350001000D000A00460035004C0061006700650072007300
      75006D006D006500720069006E00670031000100530075006D006D0065007200
      69006E00670020004600360001000100530075006D006D006100720079002000
      46003600010001000D000A00500061006B006500740074006100620065006C00
      6C004600380031000100500061006B00650074006E0072002000460038000100
      500061006B00650074004E007200200046003800010050006B0067004E006F00
      2000460038000100500061006C006C004E00720020004600380001000D000A00
      4C006100670065007200730075006D0074006100620065006C006C0046003700
      31000100530075006D006D006500720069006E00670020004600370001000100
      530075006D006D00610072007900200046003700010001000D000A0053006B00
      720069007600750074003100010053006B007200690076002000260075007400
      010001005000720069006E007400010001000D000A0041006E0074006C006E00
      67006400460039003100010041006E0074002F006C00E4006E00670064002000
      46003900010041006E00740061006C002F006C00E4006E006700640020004600
      390001005000630073002F006C0065006E006700740068002000460039000100
      41006E00740061006C002F006C00E4006E006700640020004600390001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B00310001004E0065007700520065007000
      6F007200740001000100010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      320001004E00650077005200650070006F007200740001000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B00330001004E0065007700520065007000
      6F007200740001000100010001000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      340001004E00650077005200650070006F007200740001000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B00350001004E0065007700520065007000
      6F007200740001000100010001000D000A004700720069006400420061006E00
      6400650064005400610062006C00650056006900650077005300740079006C00
      650053006800650065007400500075006D0070006B0069006E006C0061007200
      670065000100500075006D0070006B0069006E00200028006C00610072006700
      6500290001000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A006C00620052006500660072006500
      7300680001005200650066007200650073006800010055007000700064006100
      7400650072006100010055007000640061007400650001005500700070006400
      6100740065007200610001000D000A006C006200480069006400650046006900
      6C00740065007200500061006E0065006C0001004700F6006D00200066006900
      6C007400650072000100010048006900640065002000660069006C0074006500
      7200010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      5500730065007200500072006F0070005600650072006B004E006F0001005600
      650072006B004E006F0001000100010001000D000A006D007400550073006500
      7200500072006F0070004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F0001000100010001000D000A006D0074005500730065007200
      500072006F0070005000490050004E006F0001005000490050004E006F000100
      0100010001000D000A006D0074005500730065007200500072006F0070004C00
      490050004E006F0001004C00490050004E006F0001000100010001000D000A00
      6D0074005500730065007200500072006F00700049006E007000750074004F00
      7000740069006F006E00010049006E007000750074004F007000740069006F00
      6E00010049006E006D00610074006E0069006E006700730061006C0074006500
      72006E006100740069007600010049006E0070007500740020006F0070007400
      69006F006E007300010049006E006D00610074006E0069006E00670073006100
      6C007400650072006E00610074006900760001000D000A006D00740055007300
      65007200500072006F00700052006500670050006F0069006E0074004E006F00
      010052006500670050006F0069006E0074004E006F0001000100010001000D00
      0A006D0074005500730065007200500072006F00700052006500670044006100
      740065000100520065006700440061007400650001000100010001000D000A00
      6D0074005500730065007200500072006F00700043006F007000790050006300
      7300010043006F007000790050006300730001004B006F007000690065007200
      6100200073007400790063006B00010001004B006F0070006900650072006100
      20007300E40063006B0001000D000A006D007400550073006500720050007200
      6F007000520075006E004E006F000100520075006E004E006F0001004B00F600
      72004E007200010001004B00F60072004E00720001000D000A006D0074005500
      730065007200500072006F007000500072006F00640075006300650072004E00
      6F000100500072006F00640075006300650072004E006F000100010001000100
      0D000A006D0074005500730065007200500072006F0070004100750074006F00
      43006F006C005700690064007400680001004100750074006F0043006F006C00
      5700690064007400680001004100750074006F002E0020006B006F006C002E00
      6200720065006400640001004100750074006F002E00200063006F006C002E00
      7700690064007400680001004100750074006F002E0020006B006F006C002E00
      6200720065006400640001000D000A006D007400550073006500720050007200
      6F00700053007500700070006C0069006500720043006F006400650001005300
      7500700070006C0069006500720043006F006400650001004C00650076006500
      720061006E007400F600720073006B006F006400010053007500700070006C00
      69006500720063006F006400650001004C00650076006500720061006E007400
      F600720073006B006F00640001000D000A006D00740055007300650072005000
      72006F0070004C0065006E006700740068004F007000740069006F006E000100
      4C0065006E006700740068004F007000740069006F006E000100010001000100
      0D000A006D0074005500730065007200500072006F0070004C0065006E006700
      74006800470072006F00750070004E006F0001004C0065006E00670074006800
      470072006F00750070004E006F0001000100010001000D000A006D0074005500
      730065007200500072006F0070004E00650077004900740065006D0052006F00
      770001004E00650077004900740065006D0052006F0077000100010001000100
      0D000A006D0074005500730065007200500072006F007000530061006C006500
      730052006500670069006F006E004E006F000100530061006C00650073005200
      6500670069006F006E004E006F0001000100010001000D000A006D0074005500
      730065007200500072006F0070004C0065006E0067007400680046006F007200
      6D00610074004E006F0001004C0065006E0067007400680046006F0072006D00
      610074004E006F0001000100010001000D000A006D0074005500730065007200
      500072006F007000470072006100640065005300740061006D0070004E006F00
      0100470072006100640065005300740061006D0070004E006F00010001000100
      01000D000A006D0074005500730065007200500072006F007000420061007200
      43006F00640065004E006F00010042006100720043006F00640065004E006F00
      01000100010001000D000A006D0074005500730065007200500072006F007000
      4C0065006E00670074006800470072006F007500700001004C0065006E006700
      74006800470072006F007500700001000100010001000D000A006D0074005500
      730065007200500072006F0070004C00490050004E0061006D00650001004C00
      490050004E0061006D00650001000100010001000D000A006D00740055007300
      65007200500072006F0070005000490050004E0041004D004500010050004900
      50004E0041004D00450001000100010001000D000A006D007400550073006500
      7200500072006F00700052004500470050004F0049004E005400010052004500
      470050004F0049004E00540001000100010001000D000A006D00740055007300
      65007200500072006F007000500052004F004400550043004500520001005000
      52004F00440055004300450052000100500052004F0044005500430045004E00
      540001000100500052004F0044005500430045004E00540001000D000A006D00
      74005500730065007200500072006F0070004F0057004E004500520001004F00
      57004E004500520001000100010001000D000A006D0074005500730065007200
      500072006F0070005600450052004B0001005600450052004B00010001004D00
      49004C004C00010001000D000A006D0074005500730065007200500072006F00
      700052006F006C0065005400790070006500010052006F006C00650054007900
      7000650001000100010001000D000A006D007400550073006500720050007200
      6F007000470072006100640065007300740061006D0070000100470072006100
      640065007300740061006D00700001000100010001000D000A006D0074005500
      730065007200500072006F00700042006100720063006F006400650001004200
      6100720063006F00640065000100530074007200650063006B006B006F006400
      01000100530074007200650063006B006B006F00640001000D000A006D007400
      5500730065007200500072006F007000500072006F0064007500630074004400
      650073006300720069007000740069006F006E000100500072006F0064007500
      630074004400650073006300720069007000740069006F006E00010001000100
      01000D000A006D0074005500730065007200500072006F007000500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A006D0074005500730065007200500072006F007000
      500072006F006400750063007400470072006F00750070004E006F0001005000
      72006F006400750063007400470072006F00750070004E006F00010001000100
      01000D000A006D0074005500730065007200500072006F0070004C0049005000
      4300680061006E006700650001004C00490050004300680061006E0067006500
      01000100010001000D000A006D0074005500730065007200500072006F007000
      5300520001005300520001000100010001000D000A006D007400550073006500
      7200500072006F00700056006F006C0075006D00650055006E0069004E006F00
      010056006F006C0075006D00650055006E0069004E006F000100010001000100
      0D000A006D0074005500730065007200500072006F0070005600550001005600
      550001000100010001000D000A006D0074005500730065007200500072006F00
      70004C0065006E0067007400680046006F0072006D006100740001004C006500
      6E0067007400680046006F0072006D006100740001000100010001000D000A00
      6D0074005500730065007200500072006F0070004C0065006E00670074006800
      56006F006C0055006E00690074004E006F0001004C0065006E00670074006800
      56006F006C0055006E00690074004E006F0001000100010001000D000A006D00
      74005500730065007200500072006F0070004C0065006E006700740068005600
      6F006C0055006E006900740001004C0065006E0067007400680056006F006C00
      55006E006900740001000100010001000D000A006D0074005500730065007200
      500072006F00700056006F006C0075006D00650055006E00690074004E006F00
      010056006F006C0075006D00650055006E00690074004E006F00010001000100
      01000D000A006D0074005500730065007200500072006F00700046006F007200
      6D00010046006F0072006D00010046006F0072006D0075006C00E40072000100
      010046006F0072006D0075006C00E400720001000D000A006D00740055007300
      65007200500072006F0070005500730065007200490044000100550073006500
      72004900440001000100010001000D000A006D00740055007300650072005000
      72006F007000470072006F00750070004200790042006F007800010047007200
      6F00750070004200790042006F00780001000100010001000D000A006D007400
      5500730065007200500072006F007000470072006F0075007000530075006D00
      6D006100720079000100470072006F0075007000530075006D006D0061007200
      790001000100010001000D000A006D0074005500730065007200500072006F00
      70004100670065006E0074004E006F0001004100670065006E0074004E006F00
      01000100010001000D000A006D0074005500730065007200500072006F007000
      4B0069006C006E004E006F0001004B0069006C006E004E006F00010001000100
      01000D000A006D0074005500730065007200500072006F007000540045005300
      54000100540045005300540001000100010001000D000A006D00740055007300
      65007200500072006F00700053006800690070007000650072004E006F000100
      53006800690070007000650072004E006F0001000100010001000D000A006D00
      74005500730065007200500072006F0070005300740061007200740050006500
      720069006F00640001005300740061007200740050006500720069006F006400
      01000100010001000D000A006D0074005500730065007200500072006F007000
      45006E00640050006500720069006F006400010045006E006400500065007200
      69006F00640001000100010001000D000A006D00740055007300650072005000
      72006F0070004B0069006C006E004300680061007200670065004E006F000100
      4B0069006C006E004300680061007200670065004E006F000100010001000100
      0D000A006D0074005500730065007200500072006F007000500072006F006700
      72006500730073004B0069006C006E000100500072006F006700720065007300
      73004B0069006C006E000100560061006E006400720069006E00670073007400
      6F0072006B000100500072006F006700720065007300730020006B0069006C00
      6E000100560061006E006400720069006E006700730074006F0072006B000100
      0D000A006D0074005500730065007200500072006F007000460069006C007400
      6500720031000100460069006C00740065007200310001000100010001000D00
      0A006D0074005500730065007200500072006F007000460069006C0074006500
      720032000100460069006C00740065007200320001000100010001000D000A00
      6D0074005500730065007200500072006F0070004D00610072006B0065007400
      52006500670069006F006E004E006F0001004D00610072006B00650074005200
      6500670069006F006E004E006F0001000100010001000D000A006D0074005500
      730065007200500072006F0070004F0072006400650072005400790070006500
      4E006F0001004F00720064006500720054007900700065004E006F0001000100
      010001000D000A006D0074005500730065007200500072006F00700053007400
      6100740075007300010053007400610074007500730001000100530074006100
      740075007300010001000D000A006D0074005500730065007200500072006F00
      7000460069006C007400650072004F0072006400650072004400610074006500
      0100460069006C007400650072004F0072006400650072004400610074006500
      0100460069006C007400650072004F0072006400650072004400610074007500
      6D0001000100460069006C007400650072004F00720064006500720044006100
      740075006D0001000D000A006D0074005500730065007200500072006F007000
      43006C00690065006E0074004E006F00010043006C00690065006E0074004E00
      6F0001000100010001000D000A006D0074005500730065007200500072006F00
      7000530061006C006500730050006500720073006F006E004E006F0001005300
      61006C006500730050006500720073006F006E004E006F000100010001000100
      0D000A006D0074005500730065007200500072006F0070005600650072006B00
      53007500700070006C006900650072004E006F0001005600650072006B005300
      7500700070006C006900650072004E006F0001000100010001000D000A006D00
      74005500730065007200500072006F0070005600650072006B004B0075006E00
      64004E006F0001005600650072006B004B0075006E0064004E006F0001000100
      010001000D000A006D0074005500730065007200500072006F0070004C004F00
      4F0062006A00650063007400540079007000650001004C004F004F0062006A00
      650063007400540079007000650001000100010001000D000A006D0074005500
      730065007200500072006F0070004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F0001004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F0001000100010001000D000A00
      6D0074005500730065007200500072006F00700042006F006F006B0069006E00
      670054007900700065004E006F00010042006F006F006B0069006E0067005400
      7900700065004E006F0001000100010001000D000A006D007400550073006500
      7200500072006F00700043007500730074006F006D00650072004E006F000100
      43007500730074006F006D00650072004E006F0001000100010001000D000A00
      6D0074005500730065007200500072006F007000530068006F00770050007200
      6F0064007500630074000100530068006F007700500072006F00640075006300
      740001000100010001000D000A006D00740050006B0067004E006F0073005000
      610063006B006100670065004E006F0001005000610063006B00610067006500
      4E006F0001000100010001000D000A006D00740050006B0067004E006F007300
      53007500700070005F0043006F0064006500010053007500700070005F004300
      6F006400650001000100010001000D000A006D00740050006B0067004E006F00
      73004F0077006E00650072004E006F0001004F0077006E00650072004E006F00
      01000100010001000D000A006D00740050006B0067004E006F0073004C004900
      50004E006F0001004C00490050004E006F0001000100010001000D000A006D00
      740050006B0067004E006F0073005000490050004E006F000100500049005000
      4E006F0001000100010001000D000A006D00740050006B0067004E006F007300
      5300740061007400750073000100530074006100740075007300010001005300
      74006100740075007300010001000D000A006300640073005F00560065007200
      6B0043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F0001000100010001000D000A006300640073005F005600650072006B00
      43006C00690065006E0074004E0061006D006500010043006C00690065006E00
      74004E0061006D00650001000100010001000D000A006300640073005F005600
      650072006B005300650061007200630068004E0061006D006500010053006500
      61007200630068004E0061006D00650001000100010001000D000A0063006400
      73005F005600650072006B00530061006C006500730052006500670069006F00
      6E004E006F000100530061006C006500730052006500670069006F006E004E00
      6F0001000100010001000D000A006300640073005F005600650072006B005000
      6B0074004E0072004C00650076004B006F006400010050006B0074004E007200
      4C00650076004B006F00640001000100010001000D000A006300640073005F00
      50004C004900500050004C0049005000010050004C0049005000010001000100
      01000D000A006300640073005F0050004C004900500049006E00760043006F00
      64006500010049006E00760043006F006400650001000100010001000D000A00
      730071005F005500730065007200500072006F00660069006C00650055007300
      6500720049004400010055007300650072004900440001000100010001000D00
      0A00730071005F005500730065007200500072006F00660069006C0065004600
      6F0072006D00010046006F0072006D00010046006F0072006D0075006C00E400
      72000100010046006F0072006D0075006C00E400720001000D000A0073007100
      5F005500730065007200500072006F00660069006C00650043006F0070007900
      500063007300010043006F007000790050006300730001004B006F0070006900
      650072006100200073007400790063006B00010001004B006F00700069006500
      7200610020007300E40063006B0001000D000A006D0074005300700065006300
      44006100740061004E006F004F00660043006F00700069006500730001004E00
      6F004F00660043006F00700069006500730001000100010001000D000A006D00
      740053007000650063004400610074006100530069007A00650046006F007200
      6D00610074004E006F000100530069007A00650046006F0072006D0061007400
      4E006F0001000100010001000D000A006D007400530070006500630044006100
      740061004C0065006E0067007400680046006F0072006D00610074004E006F00
      01004C0065006E0067007400680046006F0072006D00610074004E006F000100
      0100010001000D000A006D007400530070006500630044006100740061005600
      6F006C0075006D00650046006F0072006D00610074004E006F00010056006F00
      6C0075006D00650046006F0072006D00610074004E006F000100010001000100
      0D000A006D007400530070006500630044006100740061004C0061006E006700
      750061006700650043006F006400650001004C0061006E006700750061006700
      650043006F006400650001000100010001000D000A006D007400530070006500
      630044006100740061005300700072006B000100530070007200E5006B000100
      01004C0061006E0067007500610067006500010001000D000A006D0074005300
      7000650063004400610074006100530069007A00650046006F0072006D006100
      74000100530069007A00650046006F0072006D00610074000100010053006900
      7A006500200066006F0072006D0061007400010001000D000A006D0074005300
      70006500630044006100740061004C0065006E0067007400680046006F007200
      6D006100740001004C0065006E0067007400680046006F0072006D0061007400
      01000100010001000D000A006D00740053007000650063004400610074006100
      56006F006C0075006D00650046006F0072006D0061007400010056006F006C00
      75006D00650046006F0072006D006100740001000100010001000D000A006D00
      74005300700065006300440061007400610041007200740069006B0065006C00
      4B006F006400010041007200740069006B0065006C004B006F00640001004100
      7200740069006B0065006C006B006F0064000100410072007400690063006C00
      6500200063006F0064006500010041007200740069006B0065006C006B006F00
      640001000D000A006D007400530070006500630044006100740061004B007500
      6E0064005200650066006500720065006E00730001004B0075006E0064005200
      650066006500720065006E00730001004B0075006E0064007200650066006500
      720065006E007300010043007500730074006F006D0065007200200072006500
      660001004B0075006E0064007200650066006500720065006E00730001000D00
      0A006D0074004C00610079006F00750074005000610063006B00610067006500
      4C006F0067004C00610079006F00750074004E006F0001005000610063006B00
      6100670065004C006F0067004C00610079006F00750074004E006F0001000100
      010001000D000A006D0074004C00610079006F00750074004C00610079006F00
      7500740001004C00610079006F007500740001000100010001000D000A006D00
      74004C00610079006F00750074004E006F004F00660043006F00700069006500
      730001004E006F004F00660043006F0070006900650073000100010001000100
      0D000A00730071005F004F006E00650050006B0067005000410043004B004100
      470045004E004F0001005000410043004B004100470045004E004F0001000100
      010001000D000A00730071005F004F006E00650050006B006700530055005000
      50005F0043004F0044004500010053005500500050005F0043004F0044004500
      01000100010001000D000A00730071005F004F006E00650050006B0067005400
      6F00740061006C00500043005300010054006F00740061006C00500043005300
      01000100010001000D000A00730071005F004F006E00650050006B0067004C00
      4F0050004D0001004C004F0050004D0001000100010001000D000A0073007100
      5F004F006E00650050006B0067006F0054006800690063006B006E0065007300
      730001006F0054006800690063006B006E006500730073000100010001000100
      0D000A00730071005F004F006E00650050006B0067006F005700690064007400
      680001006F005700690064007400680001000100010001000D000A0073007100
      5F004F006E00650050006B0067004B00560001004B00560001004B0076006100
      6C00690074006500740001004700720061006400650001004B00760061006C00
      690074006500740001000D000A00730071005F004F006E00650050006B006700
      5300700065006300690065007300530068006F00720074004E0061006D006500
      01005300700065006300690065007300530068006F00720074004E0061006D00
      650001000100010001000D000A00730071005F004F006E00650050006B006700
      550054000100550054000100550074006600F600720061006E00640065000100
      53007500720066006100630069006E0067000100550074006600F60072006100
      6E006400650001000D000A00730071005F004F006E00650050006B0067006F00
      4C0065006E0067007400680001006F004C0065006E0067007400680001000100
      010001000D000A00730071005F004F006E00650050006B00670056006F006C00
      75006D006500010056006F006C0075006D00650001000100010001000D000A00
      730071005F004F006E00650050006B0067004400610074006500430072006500
      6100740065006400010044006100740065004300720065006100740065006400
      01000100010001000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066006B0069006C006E00480061006E00
      64006C0069006E00670001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00640078004200610072004D006100
      6E006100670065007200310001005300650067006F0065002000550049000100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001005300650067006F0065002000550049000100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200330001005300650067006F0065002000550049000100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200350001005300650067006F0065002000550049000100
      0100010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003100010054006900
      6D006500730020004E0065007700200052006F006D0061006E00010001000100
      01000D000A006400780043006F006D0070006F006E0065006E00740050007200
      69006E0074006500720031004C0069006E006B0032000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001000100010001000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0033000100540069006D00650073002000
      4E0065007700200052006F006D0061006E0001000100010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0034000100540069006D006500730020004E006500
      7700200052006F006D0061006E0001000100010001000D000A00640078004300
      6F006D0070006F006E0065006E0074005000720069006E007400650072003100
      4C0069006E006B0035000100540069006D006500730020004E00650077002000
      52006F006D0061006E0001000100010001000D000A0070006D0050006B006700
      5400610062006C00650001005300650067006F00650020005500490001000100
      010001000D000A00630078005300740079006C00650031000100540061006800
      6F006D00610001000100010001000D000A00630078005300740079006C006500
      320001004D0053002000530061006E0073002000530065007200690066000100
      0100010001000D000A00630078005300740079006C006500330001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A00630078005300740079006C006500340001005400610068006F006D006100
      01000100010001000D000A00630078005300740079006C00650041006B007400
      69007600650050006B00670001005400610068006F006D006100010001000100
      01000D000A00630078005300740079006C00650049004E0041006B0074006900
      7600650050006B00670001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00630078005300740079006C006500
      4E006F0072006D0061006C0041006B00740069007600650050006B0067000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C006500350001004D006900630072006F0073006F006600740020005300
      61006E00730020005300650072006900660001000100010001000D000A006300
      78005300740079006C006500360001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010001000100
      0D000A00630078005300740079006C006500370001005400610068006F006D00
      610001000100010001000D000A00630078005300740079006C00650038000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C006500390001004D006900630072006F0073006F006600740020005300
      61006E00730020005300650072006900660001000100010001000D000A006300
      78005300740079006C0065003100300001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      01000D000A00630078005300740079006C0065003100310001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      660001000100010001000D000A00630078005300740079006C00650031003200
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      5300650072006900660001000100010001000D000A0063007800530074007900
      6C0065003100330001004D006900630072006F0073006F006600740020005300
      61006E00730020005300650072006900660001000100010001000D000A006300
      78005300740079006C0065003100340001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      01000D000A00630078005300740079006C0065003100350001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      660001000100010001000D000A00630078005300740079006C00650031003600
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      5300650072006900660001000100010001000D000A0063007800530074007900
      6C0065004200650066006F00720065004B0069006C006E000100560065007200
      640061006E00610001000100010001000D000A00630078005300740079006C00
      650049006E004B0069006C006E000100560065007200640061006E0061000100
      0100010001000D000A00630078005300740079006C0065004100660074006500
      72004B0069006C006E000100560065007200640061006E006100010001000100
      01000D000A00630078005300740079006C006500520065006400010054006100
      68006F006D00610001000100010001000D000A00630078005300740079006C00
      650043006F006E00740065006E00740001005400610068006F006D0061000100
      0100010001000D000A0070006D0050006B0067004E006F007300010053006500
      67006F00650020005500490001000100010001000D000A0070006D004B006900
      6C006E0050006B006700730001005300650067006F0065002000550049000100
      0100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0049004400
      53005F00300001005300690073007400610020007600610067006E0065006E00
      200069006E006D0061007400610064002000740069006C006C00200065006600
      740065007200200074006F0072006B00200066006C0079007400740061007300
      2000740069006C006C00620061006B0061002000740069006C006C0020006900
      200074006F0072006B0028006F006D0020006400650074002000660069006E00
      6E007300200070006C0061007400730020006900200074006F0072006B006500
      6E0029002C00200066006F00720074007300E4007400740061003F0001000100
      4C0061007300740020006300610072007400200065006E007400650072006500
      6400200074006F002000410066007400650072004B0069006C006E0020007700
      69006C006C0020006200650020006D006F007600650064002000620061006300
      6B00200074006F00200049006E0074006F004B0069006C006E00280069006600
      20007400680065007200650027007300200072006F006F006D00200069006E00
      20006B0069006C006E0029002C002000700072006F0063006500650064003F00
      010001000D000A004900440053005F00310001004B0069006C006E0043006800
      61007200670065004E006F0020003D00200001000100010001000D000A004900
      440053005F003100300001005600E4006C006A00200065006E00200076006100
      67006E0020006100740074002000E4006E006400720061002E00010001005300
      65006C006500630074002000610020006300610072007400200074006F002000
      6300680061006E0067006500010001000D000A004900440053005F0031003100
      01004D00610072006B00650072006100640020007600610067006E003A002000
      01004D00610072006B00650072006100640020007600610067006E0001005300
      65006C00650063007400650064002000630061007200740001004D0061007200
      6B00650072006100640020007600610067006E0001000D000A00490044005300
      5F0031003200010041006E00740061006C0020007600610067006E0061007200
      20006600F60072002000760061006C006400200074006F0072006B0020007300
      61006B006E0061007300010001004E006F0020006F0066002000630061007200
      74007300200066006F0072002000730065006C00650063007400650064002000
      6B0069006C006E0020006900730020006D0069007300730069006E0067000100
      01000D000A004900440053005F0031003300010049006E00670065006E002000
      E4006E006400720069006E006700010001004E006F0020006300680061006E00
      67006500010001000D000A004900440053005F0031003400010045006E002000
      7600610067006E00200073007400650067006100730020007500740020007500
      7200200074006F0072006B0065006E002000740069006C006C0020006C006100
      670065007200200065006600740065007200200074006F0072006B002C002000
      66006F00720074007300E4007400740061003F00010001004100200063006100
      72007400200069007300200065006A0065006300740065006400200066007200
      6F006D0020006B0069006C006E00200074006F00200041006600740065007200
      4B0069006C006E002C002000700072006F0063006500650064003F0020000100
      01000D000A004900440053005F003200010020005600610067006E004E006F00
      20003D00200001005600610067006E006E007200010043006100720074002000
      6E006F0001005600610067006E006E00720001000D000A004900440053005F00
      32003300010049006E002000740069006C006C00200054006F0072006B000100
      010049006E00200054006F004B0069006C006E00010001000D000A0049004400
      53005F003200340001006900200054006F0072006B000100010069006E002000
      4B0069006C006E00010001000D000A004900440053005F003200350001004500
      6600740065007200200054006F0072006B000100010041006600740065007200
      20006B0069006C006E00010001000D000A004900440053005F00330001002000
      4D006F007600650054006F004C00490050004E006F0020003D00200001000100
      010001000D000A004900440053005F003400010054006F0072006B0065006E00
      2000E40072002000660075006C006C002C002000640065007400200066006900
      6E006E007300200069006E0074006500200070006C0061007400730020006600
      F600720020006D0065007200610020007600610067006E00610072002E000100
      01004B0069006C006E002000690073002000660075006C006C002C0020006E00
      6F00200072006F006F006D00200066006F00720020006D006F00720065002000
      63006100720074007300010001000D000A004900440053005F00350001005300
      690073007400610020007600610067006E0065006E00200069006E006D006100
      7400610064002000740069006C006C00200074006F0072006B00200066006C00
      790074007400610073002000740069006C006C00620061006B00610020007400
      69006C006C002000220049006E002000740069006C006C00200074006F007200
      6B0022002C00200066006F00720074007300E4007400740061003F0001000100
      4C0061007300740020006300610072007400200065006E007400650072006500
      6400200054006F004B0069006C006E002000770069006C006C00200062006500
      20006D006F0076006500640020006200610063006B00200074006F0020004900
      6E0074006F004B0069006C006E002C002000700072006F006300650065006400
      3F00010001000D000A004900440053005F0036000100500072006F0062006C00
      65006D003A0020004B0069006C006E004300680061007200670065004E006F00
      20003D0020000100500072006F0062006C0065006D003A00200054006F007200
      6B00730061007400730020006E0072003A00200001000100500072006F006200
      6C0065006D003A00200054006F0072006B00730061007400730020006E007200
      3A00200001000D000A004900440053005F003900010045006E00640061007300
      740020007600610067006E00610072002000220049006E002000740069006C00
      6C00200074006F0072006B00220020006B0061006E002000E4006E0064007200
      610073002E00010001004F006E006C0079002000630061007200740073002000
      54006F004B0069006C006E002000630061006E00200062006500200063006800
      61006E006700650064002E00010001000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0031002E0044006500730069006700
      6E0065007200430061007000740069006F006E00010046006F0072006D006100
      740020005200650070006F0072007400010046006F0072006D00610074002000
      72006100700070006F00720074000100010046006F0072006D00610074002000
      72006100700070006F007200740001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0032002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010046006F0072006D0061007400200072006100700070006F00720074000100
      010046006F0072006D0061007400200072006100700070006F00720074000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0033002E0044006500730069006700
      6E0065007200430061007000740069006F006E00010046006F0072006D006100
      740020005200650070006F0072007400010046006F0072006D00610074002000
      72006100700070006F00720074000100010046006F0072006D00610074002000
      72006100700070006F007200740001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0034002E00440065007300690067006E006500720043006100700074006900
      6F006E00010046006F0072006D006100740020005200650070006F0072007400
      010046006F0072006D0061007400200072006100700070006F00720074000100
      010046006F0072006D0061007400200072006100700070006F00720074000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0035002E0044006500730069006700
      6E0065007200430061007000740069006F006E00010046006F0072006D006100
      740020005200650070006F0072007400010046006F0072006D00610074002000
      72006100700070006F00720074000100010046006F0072006D00610074002000
      72006100700070006F007200740001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A006C006300500072006F00670072006500730073004B0069006C006E002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001004B0069006C006E004E0061006D006500010054006F0072006B006E00
      61006D006E000100010054006F0072006B006E0061006D006E0001000D000A00
      6C0063004F0057004E00450052002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E00010043006C00690065006E007400
      4E0061006D00650001000100010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      6B0069006C006E00480061006E0064006C0069006E0067000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720031000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      42006100720035000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0031000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A006400780043006F006D0070006F006E0065006E0074005000
      720069006E0074006500720031004C0069006E006B0034000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B003500010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      70006D0050006B0067005400610062006C006500010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C00650031000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650032000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780053007400
      79006C00650033000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      650034000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065004100
      6B00740069007600650050006B0067000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650049004E0041006B00740069007600650050006B006700
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00630078005300740079006C0065004E006F007200
      6D0061006C0041006B00740069007600650050006B0067000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A00630078005300740079006C0065003500010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00
      630078005300740079006C00650036000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650037000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780053007400
      79006C00650038000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      650039000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065003100
      30000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00630078005300740079006C00650031003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00630078005300740079006C006500310032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00630078005300740079006C0065003100330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00630078005300740079006C00650031003400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C006500310035000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000100
      0D000A00630078005300740079006C0065003100360001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C0065004200650066006F00720065004B006900
      6C006E000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A00630078005300740079006C0065004900
      6E004B0069006C006E000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C006500410066007400650072004B0069006C006E0001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650052006500640001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650043006F006E00740065006E0074000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A0070006D0050006B0067004E006F007300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A0070006D004B0069006C006E0050006B0067007300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00}
  end
  object mtVagn: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 778
    Top = 522
    object mtVagnVagnNo: TIntegerField
      FieldName = 'VagnNo'
    end
    object mtVagnKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
    end
  end
  object sq_GetVagnNos: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct Max(kv.VagnNo) as VagnNo, kv.KilnChargeNo'
      'FROM   [dbo].[KilnVagn]  kv'
      
        'inner join [dbo].[KilnChargeHdr] kh on kh.KilnChargeNo = kv.Kiln' +
        'ChargeNo'
      'WHERE'
      'kh.ClientNo = :ClientNo'
      'and kv.VagnStatus = 0'
      'Group by kv.KilnChargeNo'
      'UNION'
      'SELECT distinct -1 as VagnNo, kv.KilnChargeNo'
      'FROM   [dbo].[KilnVagn]  kv'
      
        'inner join [dbo].[KilnChargeHdr] kh on kh.KilnChargeNo = kv.Kiln' +
        'ChargeNo'
      'WHERE'
      'kh.ClientNo = :ClientNo'
      'and not exists (select * from [dbo].[KilnVagn]  kv2'
      'where kv2.KilnChargeNo = kh.KilnChargeNo'
      'and kv2.VagnStatus = 0) '
      'Group by kv.KilnChargeNo')
    Left = 778
    Top = 578
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetVagnNosVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sq_GetVagnNosKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 968
    Top = 576
    PixelsPerInch = 96
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle17
      Styles.ContentEven = cxStyle18
      Styles.ContentOdd = cxStyle19
      Styles.Footer = cxStyle20
      Styles.Group = cxStyle21
      Styles.GroupByBox = cxStyle22
      Styles.Header = cxStyle23
      Styles.Inactive = cxStyle24
      Styles.Indicator = cxStyle25
      Styles.Preview = cxStyle26
      Styles.Selection = cxStyle27
      BuiltIn = True
    end
  end
end
