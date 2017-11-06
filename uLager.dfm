object fLager: TfLager
  Left = 215
  Top = 143
  Align = alClient
  BorderStyle = bsNone
  Caption = 'fLager'
  ClientHeight = 696
  ClientWidth = 1282
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = pmFormShortcuts
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcInventory: TcxPageControl
    Left = 0
    Top = 140
    Width = 1282
    Height = 556
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsTABELL
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 556
    ClientRectRight = 1282
    ClientRectTop = 0
    object tsTABELL: TcxTabSheet
      Caption = 'PAKETTABELLER'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1282
        Height = 556
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object grdBoT: TcxGrid
          Left = 0
          Top = 0
          Width = 1282
          Height = 258
          Align = alClient
          PopupMenu = pmSortimentsVy
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          RootLevelStyles.Tab = cxStyle54
          OnActiveTabChanged = grdBoTActiveTabChanged
          object grdDBBandedPerSortiment: TcxGridDBBandedTableView
            OnDblClick = grdDBBandedPerSortimentDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmInventory.ds_invpiv
            DataController.KeyFieldNames = 'ProductNo;LIPNo;LP;Package_Size;InventorySource'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.BandsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 75
            OptionsView.Indicator = True
            Styles.Content = cxStyleContent
            Styles.ContentEven = cxStyleContent
            Styles.ContentOdd = cxStyleContentOdd
            Styles.Footer = cxStyleContent
            Styles.Header = cxStyleHeaderSortimentsVy
            Styles.BandHeader = cxStyleHeaderSortimentsVy
            Bands = <
              item
                Caption = 'PAKET ID'
                Options.HoldOwnColumnsOnly = True
                Visible = False
                Width = 79
              end
              item
                Caption = 'PRODUKT'
                Width = 300
              end
              item
                Caption = 'NM3 PER L'#196'NGD'
                Width = 501
              end
              item
                Caption = 'LAGER'
                Width = 95
              end
              item
                Caption = 'KVANTITET'
                Width = 247
              end>
            object grdDBBandedPerSortimentColumn1: TcxGridDBBandedColumn
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object grdDBBandedPerPaketNr: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmInventory.ds_invpivPkg
            DataController.KeyFieldNames = 'Paketnr;Prefix'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.PullFocusing = True
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 75
            OptionsView.Indicator = True
            Styles.Content = cxStyleContent
            Styles.ContentEven = cxStyleContent
            Styles.ContentOdd = cxStyleContentOdd
            Styles.Footer = cxStyleContent
            Styles.Header = cxStyleHeaderSortimentsVy
            Styles.BandHeader = cxStyleHeaderSortimentsVy
            Bands = <
              item
                Caption = 'PAKET ID'
              end
              item
                Caption = 'PRODUKT'
                Options.HoldOwnColumnsOnly = True
              end
              item
                Caption = 'NM3 PER L'#196'NGD'
                Options.HoldOwnColumnsOnly = True
              end
              item
                Caption = 'LAGER'
                Options.HoldOwnColumnsOnly = True
              end
              item
                Caption = 'KVANTITET'
                Options.HoldOwnColumnsOnly = True
              end
              item
                Caption = 'REF'
                Options.HoldOwnColumnsOnly = True
              end>
          end
          object grdBoTDBBandedPerPosition: TcxGridDBBandedTableView
            OnDblClick = grdBoTDBBandedPerPositionDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dmInventory.ds_Vis_LagerPOS_v1
            DataController.KeyFieldNames = 'ProductNo;Package_Size;PositionName;REFERENCE'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 75
            Styles.Content = cxStyleContent
            Styles.ContentEven = cxStyleContent
            Styles.ContentOdd = cxStyleContentOdd
            Styles.Footer = cxStyleContent
            Styles.Header = cxStyleHeaderSortimentsVy
            Styles.BandHeader = cxStyleHeaderSortimentsVy
            Bands = <
              item
                Caption = 'PAKET ID'
                Options.HoldOwnColumnsOnly = True
              end
              item
                Caption = 'PRODUKT'
              end
              item
                Caption = 'NM3 PER L'#196'NGD'
              end
              item
                Caption = 'LAGER'
              end
              item
                Caption = 'KVANTITET'
              end>
          end
          object grdBoTLevel1: TcxGridLevel
            Caption = 'Sortiment vy'
            GridView = grdDBBandedPerSortiment
            Options.DetailTabsPosition = dtpTop
            Styles.Tab = cxStyle10
          end
          object grdBoTLevel2: TcxGridLevel
            Caption = 'Paketnr vy'
            GridView = grdDBBandedPerPaketNr
            Options.DetailTabsPosition = dtpTop
            Styles.Tab = cxStyleBrist
          end
          object grdBoTLevel3: TcxGridLevel
            Caption = 'Positions vy'
            GridView = grdBoTDBBandedPerPosition
          end
        end
        object PanelPaketnr: TPanel
          Left = 0
          Top = 266
          Width = 1282
          Height = 290
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object PanelMenyPaketnrFunktioner: TPanel
            Left = 0
            Top = 0
            Width = 1282
            Height = 80
            Align = alTop
            TabOrder = 0
            object cxButton1: TcxButton
              Left = 7
              Top = 6
              Width = 86
              Height = 49
              Caption = 'Skapa paket'
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object cxButton2: TcxButton
              Left = 97
              Top = 6
              Width = 87
              Height = 49
              Action = acChangePkg
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxButton3: TcxButton
              Left = 186
              Top = 6
              Width = 92
              Height = 49
              Caption = 'Ta bort paket'
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxButton4: TcxButton
              Left = 281
              Top = 6
              Width = 87
              Height = 49
              Caption = 'Flytta paket'
              TabOrder = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxButton8: TcxButton
              Left = 371
              Top = 6
              Width = 87
              Height = 49
              Action = acPrintPkgDtl
              TabOrder = 4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object LabelPkgDtlProduct: TcxLabel
              Left = 1
              Top = 59
              Align = alBottom
              Caption = '__________________________________'
              ParentFont = False
              Style.StyleController = cxEditStyleControllerFileldLabels
              Properties.Alignment.Horz = taCenter
              AnchorX = 641
            end
            object cxButton6: TcxButton
              Left = 564
              Top = 6
              Width = 123
              Height = 60
              Action = acSetPktStorlek
              TabOrder = 7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object cxButton9: TcxButton
              Left = 692
              Top = 6
              Width = 122
              Height = 60
              Action = acSetCertification
              TabOrder = 8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object cxButton10: TcxButton
              Left = 820
              Top = 6
              Width = 114
              Height = 60
              Action = acSetInfo2Text
              Caption = #196'ndra paketposition '
              TabOrder = 9
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object cxButton5: TcxButton
              Left = 940
              Top = 6
              Width = 87
              Height = 60
              Action = acClosePkgDtlVy
              TabOrder = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxButton12: TcxButton
              Left = 462
              Top = 6
              Width = 86
              Height = 49
              Action = acPrintPKGLabels
              TabOrder = 10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxbtnIMPinfo: TcxButton
              Left = 1034
              Top = 7
              Width = 124
              Height = 60
              Action = acSetRef_and_Info
              TabOrder = 11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
          end
          object grdPkgNos: TcxGrid
            Left = 0
            Top = 80
            Width = 1282
            Height = 210
            Align = alClient
            PopupMenu = pmPkgNos
            TabOrder = 1
            object grdPkgNosDBBandedTableView1: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmInventory.ds_invpivPkgDtl
              DataController.KeyFieldNames = 'Paketnr;Prefix'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              OptionsBehavior.PullFocusing = True
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Content = cxStyleContent
              Styles.ContentEven = cxStyleContent
              Styles.ContentOdd = cxStyleContentOdd
              Styles.Footer = cxStyleContent
              Styles.Header = cxStyleHeaderSortimentsVy
              Styles.BandHeader = cxStyleHeaderSortimentsVy
              Bands = <
                item
                  Caption = 'PAKET ID'
                  Width = 344
                end
                item
                  Caption = 'PRODUKT'
                  Width = 247
                end
                item
                  Caption = 'NM3 PER L'#196'NGD'
                  Width = 305
                end
                item
                  Caption = 'LAGER'
                  Visible = False
                end
                item
                  Caption = 'KVANTITET'
                  Width = 208
                end
                item
                  Caption = 'REF'
                  Width = 229
                end>
            end
            object grdPkgNosLevel1: TcxGridLevel
              GridView = grdPkgNosDBBandedTableView1
            end
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 258
          Width = 1282
          Height = 8
          HotZoneClassName = 'TcxMediaPlayer8Style'
          AlignSplitter = salBottom
          Control = PanelPaketnr
          Color = clGreen
          ParentColor = False
        end
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1282
    Height = 21
    Align = dalTop
    BarManager = dxBarManager1
  end
  object Panel3: TPanel
    Left = 0
    Top = 21
    Width = 1282
    Height = 119
    Align = alTop
    TabOrder = 6
    DesignSize = (
      1282
      119)
    object cxLabel1: TcxLabel
      Left = 10
      Top = 32
      AutoSize = False
      Caption = 'Tjocklek:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
      Height = 20
      Width = 71
    end
    object cxLabel6: TcxLabel
      Left = 223
      Top = 31
      Caption = 'Bredd:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
    end
    object bUpdate: TcxButton
      Left = 833
      Top = 7
      Width = 76
      Height = 81
      Action = acPkgTypeTable
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object bClearFilter: TcxButton
      Left = 455
      Top = 63
      Width = 76
      Height = 41
      Action = acClearFilter
      TabOrder = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object bClose: TcxButton
      Left = 1012
      Top = 7
      Width = 78
      Height = 81
      Action = acClose
      TabOrder = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButtonSparaVyer: TcxButton
      Left = 535
      Top = 63
      Width = 76
      Height = 41
      Action = acSaveGridLayout
      TabOrder = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object eFocusDummy: TEdit
      Left = 1274
      Top = 10
      Width = 1
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 17
    end
    object cbHideZeroColumns: TcxCheckBox
      Left = 831
      Top = 94
      Caption = 'G'#246'm noll kolumner'
      ParentFont = False
      State = cbsChecked
      Style.StyleController = cxEditStyleControllerFileldLabels
      TabOrder = 9
      Visible = False
      Width = 161
    end
    object lcLengthVolUnit: TcxDBLookupComboBox
      Left = 535
      Top = 30
      DataBinding.DataField = 'LengthVolUnitName'
      DataBinding.DataSource = ds_Props
      ParentFont = False
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'LengthVolUnitNo'
      Properties.ListColumns = <
        item
          FieldName = 'LengthVolUnitName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 5
      Width = 163
    end
    object cbLIP: TcxCheckComboBox
      Left = 319
      Top = 4
      ParentFont = False
      Properties.EmptySelectionText = 'Alla'
      Properties.ClearKey = 46
      Properties.DropDownRows = 30
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 350
      Properties.EditValueFormat = cvfStatesString
      Properties.Items = <>
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 1
      Width = 379
    end
    object lcOWNER: TcxDBLookupComboBox
      Left = 84
      Top = 4
      DataBinding.DataField = 'OWNER'
      DataBinding.DataSource = ds_Props
      ParentFont = False
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 0
      Width = 129
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 8
      AutoSize = False
      Caption = #196'gare:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
      Height = 20
      Width = 61
    end
    object cxLabel3: TcxLabel
      Left = 223
      Top = 8
      Caption = 'Lagergrupp:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
    end
    object cxLabel4: TcxLabel
      Left = 455
      Top = 31
      Caption = 'Vol.enhet:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
    end
    object eBL: TcxMaskEdit
      Left = 319
      Top = 53
      ParentFont = False
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 7
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 223
      Top = 57
      AutoSize = False
      Caption = 'Info 1:'
      FocusControl = eBL
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
      Height = 20
      Width = 71
    end
    object eReference: TcxMaskEdit
      Left = 84
      Top = 53
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 6
      Width = 129
    end
    object cxLabel7: TcxLabel
      Left = 10
      Top = 57
      AutoSize = False
      Caption = 'Referens:'
      FocusControl = eReference
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
      Height = 20
      Width = 71
    end
    object eAT: TcxMaskEdit
      Left = 84
      Top = 28
      ParentFont = False
      Properties.MaxLength = 0
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 3
      Text = '   '
      OnExit = eATExit
      Width = 129
    end
    object eAB: TcxMaskEdit
      Left = 319
      Top = 28
      ParentFont = False
      Properties.MaxLength = 0
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 4
      Text = '   '
      Width = 121
    end
    object bPrint: TcxButton
      Left = 618
      Top = 63
      Width = 80
      Height = 41
      Action = acPrintPkgTable
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object cxButton7: TcxButton
      Left = 1118
      Top = 54
      Width = 80
      Height = 23
      Caption = 'Skriv &ut'
      PopupMenu = pmPrint
      TabOrder = 23
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = acPrintPkgTableExecute
    end
    object cbInklEjFakt: TcxComboBox
      Left = 319
      Top = 78
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Lager'
        'Lager + ej fakt'
        'Ej fakturerat')
      Properties.MaxLength = 0
      Properties.OnChange = cbInklEjFaktPropertiesChange
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 2
      Text = 'Lager'
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 223
      Top = 84
      Caption = 'K'#228'lla:'
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
    end
    object eInfo2: TcxMaskEdit
      Left = 84
      Top = 80
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.StyleController = cxEditStyleControllerEditControls
      TabOrder = 8
      Width = 129
    end
    object cxLabel9: TcxLabel
      Left = 10
      Top = 83
      AutoSize = False
      Caption = 'Info2:'
      FocusControl = eInfo2
      ParentFont = False
      Style.StyleController = cxEditStyleControllerFileldLabels
      Height = 20
      Width = 71
    end
    object cxButton11: TcxButton
      Left = 916
      Top = 7
      Width = 89
      Height = 81
      Action = acSetStdGridLayout
      TabOrder = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
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
      'PaketNr'
      'PaketTabellMeny'
      'GrdPeriod'
      'SortimentsVy'
      'pmPrint'
      'EXCELVy')
    Categories.ItemsVisibles = (
      2
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
      True
      True)
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 288
    Top = 161
    DockControlHeights = (
      0
      0
      0
      0)
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
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Paketnr'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 310
      FloatTop = 566
      FloatClientWidth = 130
      FloatClientHeight = 160
      ItemLinks = <>
      OldName = 'Paketnr'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'PaketTabellMeny'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 469
      FloatTop = 475
      FloatClientWidth = 160
      FloatClientHeight = 50
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OldName = 'PaketTabellMeny'
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
    object dxBarButton40: TdxBarButton
      Action = acSaveGridLayout
      Category = 0
    end
    object dxBarButton42: TdxBarButton
      Action = acExportToExcel
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Arkiv'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton2: TdxBarButton
      Action = acSetCertification
      Category = 1
    end
    object dxBarButton3: TdxBarButton
      Action = acSetPktStorlek
      Category = 1
    end
    object dxBarButton4: TdxBarButton
      Action = acSetInfo2Text
      Category = 1
    end
    object dxBarButton22: TdxBarButton
      Action = acPkgTypeTable
      Category = 2
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000000000000000008484
        8400FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202000000
        0000000000000202020202020201000001020202020002020202020202020100
        0001020202020202020202020202020100000102020202020202020202020202
        0100000202020202020202020202020100000102020202020202020202020100
        0001020202020202020202020201000001020202020002020202020202000000
        0000000000000202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton23: TdxBarButton
      Action = acPrintPkgTable
      Category = 2
    end
    object dxBarButton25: TdxBarButton
      Action = acExport
      Category = 2
    end
    object dxBarButton18: TdxBarButton
      Action = acPrintPeriodWeek
      Category = 3
    end
    object SpinEditRubrikFontSortimentsVy: TdxBarSpinEdit
      Caption = 'Rubrikfont'
      Category = 4
      Hint = 'Rubrikfont'
      Style = cxStyle10
      Visible = ivAlways
      OnCurChange = SpinEditRubrikFontSortimentsVyCurChange
      StyleEdit = cxStyle10
    end
    object SpinEditContentFontSortimentsVy: TdxBarSpinEdit
      Caption = 'Cellfont'
      Category = 4
      Hint = 'Cellfont'
      Style = cxStyle10
      Visible = ivAlways
      OnCurChange = SpinEditContentFontSortimentsVyCurChange
      StyleEdit = cxStyle10
    end
    object dxBarSeparator1: TdxBarSeparator
      Category = 4
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 5
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Paketlista'
      Category = 6
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Referens'
      Category = 6
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Ref o Dimension'
      Category = 6
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Ref, Dim o L'#228'ngd(Maxl'#228'ngd)'
      Category = 6
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = 'D'#228'cklista'
      Category = 6
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Tomma R'#228'ckor'
      Category = 6
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Left = 456
    Top = 233
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 11
      ShortCut = 16467
      OnExecute = acCloseExecute
    end
    object acPrintPkgTable: TAction
      Caption = 'Skriv &ut'
      ShortCut = 16503
      OnExecute = acPrintPkgTableExecute
    end
    object acExport: TAction
      Caption = 'Emaila'
      OnExecute = acExportExecute
    end
    object acPkgTypeTable: TAction
      Caption = 'S'#246'k F6'
      ImageIndex = 2
      ShortCut = 117
      OnExecute = acPkgTypeTableExecute
    end
    object acSaveGridLayout: TAction
      Caption = 'Spara vyer'
      ImageIndex = 7
      OnExecute = acSaveGridLayoutExecute
    end
    object acExportToExcel: TAction
      Caption = 'Exportera till Excel'
      OnExecute = acExportToExcelExecute
    end
    object acClearFilter: TAction
      Category = 'Boka'
      Caption = 'Rensa filter'
      OnExecute = acClearFilterExecute
    end
    object acPrintOtherBookings: TAction
      Caption = 'Skriv ut'
      ImageIndex = 12
      OnExecute = acPrintOtherBookingsExecute
    end
    object acPrintPeriodWeek: TAction
      Caption = 'Skriv ut'
      ImageIndex = 12
    end
    object acClosePkgDtlVy: TAction
      Caption = 'St'#228'ng vy'
      OnExecute = acClosePkgDtlVyExecute
    end
    object acCreatePkgs: TAction
      Category = 'Paket'
      Caption = 'Skapa paket'
    end
    object acChangePkg: TAction
      Category = 'Paket'
      Caption = #196'ndra paket'
      OnExecute = acChangePkgExecute
    end
    object acPrintPkgDtl: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintPkgDtlExecute
    end
    object acSetPktStorlek: TAction
      Caption = #196'ndra paketstorlek rubrik'
      OnExecute = acSetPktStorlekExecute
    end
    object acSetCertification: TAction
      Caption = #196'ndra certifieringen'
      OnExecute = acSetCertificationExecute
    end
    object acSetInfo2Text: TAction
      Caption = 'Ange paketposition p'#229' markerade paket'
      OnExecute = acSetInfo2TextExecute
    end
    object acSetStdGridLayout: TAction
      Caption = 'S'#228'tt std layout'
      OnExecute = acSetStdGridLayoutExecute
    end
    object acSortimentVy: TAction
      Caption = 'Sortimentsvy'
    end
    object acPackageNoVy: TAction
      Caption = 'Paketnrvy'
    end
    object acPositionsVy: TAction
      Caption = 'Positionsvy'
    end
    object acPrintPKGLabels: TAction
      Category = 'Paket'
      Caption = 'Paketlappar'
      OnExecute = acPrintPKGLabelsExecute
    end
    object acSetRef_and_Info: TAction
      Caption = #196'ndra Ref o Info f'#246'r  markerade'
      OnExecute = acSetRef_and_InfoExecute
    end
  end
  object pmFormShortcuts: TPopupMenu
    AutoPopup = False
    Left = 120
    Top = 312
    object Stng1: TMenuItem
      Action = acClose
    end
    object Skrivut1: TMenuItem
      Action = acPrintPkgTable
    end
    object SummeringF61: TMenuItem
      Action = acPkgTypeTable
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 553
    Top = 257
  end
  object SaveDialog1: TSaveDialog
    Left = 553
    Top = 201
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 1008
    Top = 297
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdBoT
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
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        ''
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 39085.979061331020000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsSelection.ProcessExactSelection = True
      OptionsSelection.ProcessSelection = True
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      Component = grdPkgNos
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
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object pmPkgTable: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 400
    Top = 545
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 120
    Top = 201
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAktivePkg: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
    object cxStyleBrist: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14150898
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14150898
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13886416
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13886416
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11126946
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 6592345
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6592345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14150898
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14150898
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11458790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle40: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15461375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3552892
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 14540253
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3552892
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5855675
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13158655
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 7364767
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5855675
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 4630214
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle51: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14542570
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle55: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle56: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle57: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle58: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14542570
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle69: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle73: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14542570
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6852002
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle82: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clTeal
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyleAvBookat: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsStrikeOut]
      TextColor = clLime
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 2178849
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyleHeaderSortimentsVy: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12307669
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet
      Caption = 'Maple'
      Styles.Content = cxStyle16
      Styles.ContentEven = cxStyle17
      Styles.ContentOdd = cxStyle18
      Styles.Inactive = cxStyle23
      Styles.Selection = cxStyle26
      Styles.Footer = cxStyle19
      Styles.Group = cxStyle20
      Styles.GroupByBox = cxStyle21
      Styles.Header = cxStyle22
      Styles.Indicator = cxStyle24
      Styles.Preview = cxStyle25
      BuiltIn = True
    end
    object GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet
      Caption = 'Spruce'
      Styles.Content = cxStyle5
      Styles.ContentEven = cxStyle6
      Styles.ContentOdd = cxStyle7
      Styles.Inactive = cxStyle12
      Styles.Selection = cxStyle15
      Styles.Footer = cxStyle8
      Styles.Group = cxStyle9
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
      Styles.Indicator = cxStyle13
      Styles.Preview = cxStyle14
      BuiltIn = True
    end
    object GridBandedTableViewStyleSheetMaple: TcxGridBandedTableViewStyleSheet
      Caption = 'Maple'
      Styles.Content = cxStyle28
      Styles.ContentEven = cxStyle29
      Styles.ContentOdd = cxStyle30
      Styles.Inactive = cxStyle35
      Styles.Selection = cxStyle38
      Styles.Footer = cxStyle31
      Styles.Group = cxStyle32
      Styles.GroupByBox = cxStyle33
      Styles.Header = cxStyle34
      Styles.Indicator = cxStyle36
      Styles.Preview = cxStyle37
      Styles.BandHeader = cxStyle27
      BuiltIn = True
    end
    object GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet
      Caption = 'Rose'
      Styles.Content = cxStyle39
      Styles.ContentEven = cxStyle40
      Styles.ContentOdd = cxStyle41
      Styles.Inactive = cxStyle46
      Styles.Selection = cxStyle49
      Styles.Footer = cxStyle42
      Styles.Group = cxStyle43
      Styles.GroupByBox = cxStyle44
      Styles.Header = cxStyle45
      Styles.Indicator = cxStyle47
      Styles.Preview = cxStyle48
      BuiltIn = True
    end
    object GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet
      Caption = 'Desert'
      Styles.Content = cxStyle51
      Styles.ContentEven = cxStyle52
      Styles.ContentOdd = cxStyle53
      Styles.Inactive = cxStyle58
      Styles.Selection = cxStyle61
      Styles.Footer = cxStyle54
      Styles.Group = cxStyle55
      Styles.GroupByBox = cxStyle56
      Styles.Header = cxStyle57
      Styles.Indicator = cxStyle59
      Styles.Preview = cxStyle60
      BuiltIn = True
    end
    object GridBandedTableViewStyleSheetDesert: TcxGridBandedTableViewStyleSheet
      Caption = 'Desert'
      Styles.Content = cxStyle75
      Styles.ContentEven = cxStyle76
      Styles.ContentOdd = cxStyle77
      Styles.Inactive = cxStyle82
      Styles.Selection = cxStyle85
      Styles.Footer = cxStyle78
      Styles.Group = cxStyle79
      Styles.GroupByBox = cxStyle80
      Styles.Header = cxStyle81
      Styles.Indicator = cxStyle83
      Styles.Preview = cxStyle84
      Styles.BandHeader = cxStyle74
      BuiltIn = True
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
    Left = 120
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
  object pmPkgNos: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 400
    Top = 592
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.TextColor = clMaroon
    Style.TextStyle = [fsBold]
    Left = 288
    Top = 272
    PixelsPerInch = 96
  end
  object cxEditStyleControllerFileldLabels: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 288
    Top = 328
    PixelsPerInch = 96
  end
  object cxEditStyleControllerEditControls: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Style.IsFontAssigned = True
    Left = 288
    Top = 384
    PixelsPerInch = 96
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 24707624
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
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000400000003000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000040000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000020000000F02020229070707440A0A0A510A0A0A500707073F0101
          01220000000A0000000100000000000000000000000000000000000000000000
          000000000000000000000000000400000014040404320909094A0B0B0B530909
          094D050505370101011B00000006000000000000000000000000000000000000
          0004020202281010106E232322B02B2B2AD12E2D2CDC2F2E2EDB2E2E2ECC2424
          24A30D0D0D580101011700000001000000000000000000000000000000000000
          00000000000000000007050505331919197F2B2B2ABC2F2F2ED62E2E2DDD2D2C
          2BD9282827C31919199307070748000000110000000000000000000000040404
          042F1A1A1A9E2A2A29E924262AFE262A34FF2D3440FF2B3240FF262B35FF2E2F
          32FC343434D91616167401010115000000000000000000000000000000000000
          0000000000050707073A282828AF353535F1292B32FF2B303CFF323842FF2E33
          3CFF25282EFF292929F8262625CC0D0D0D640000000F000000000101011A1414
          148B252627F31F273DFF415788FF6D89C0FF809FD5FF7A98D3FF5D79B9FF3143
          76FF282C3AFF333333D90D0D0D4F000000040000000000000000000000000000
          00000303031B22222299333437F7273251FF51679FFF7F98CDFF91AAD9FF8AA3
          D1FF667CAAFF324162FF21252CFE222221CE0707074500000004070707491E1E
          1ED51B2847FF3C60BAFF648EF6FF6391FBFF5F8FFAFF5F8DFAFF5C88FBFF5177
          EDFF273E92FF2C303FFC21212095020202110000000000000000000000000000
          00000D0C0C46313132DB25325DFF4A6BD0FF769BFEFF749DFFFF739FFFFF75A1
          FFFF749EFFFF618AE9FF2A4681FF1F232BFA1312128E010101120B0B0B6C191D
          27EB1E419CFF386BF4FF3467F6FF2F61F4FF3366F4FF3667F4FF305FF4FF2B57
          F7FF2649DDFF232E66FF262525B40404041C0000000000000000000000000000
          0001131312602D303CEE2642ACFF466FFEFF4372FFFF3D71FFFF4579FFFF487B
          FFFF4578FFFF417AFFFF336BDFFF1A2F59FF151414B30202021E0B0B0A6F151D
          32ED1640BFFF1C50F2FF1E4CF1FF214CF1FF2751F1FF2B53F2FF2950F1FF143A
          F0FF0E2EDFFF1E2B76FF242424B90505051E0000000000000000000000000000
          0001131212642A2E42EF1F3CC0FF2B55FCFF2958FFFF2E5FFFFF3767FFFF3B6B
          FFFF3969FFFF235FFFFF1A5CF4FF15357BFF131314B7030303200F0E0E5A191C
          28E510298DFF163DDAFF1B3FEAFF1F3EECFF2444EEFF2947EEFF2844EBFF0D29
          DEFF061BAEFF222752FF292928B60606061C0000000000000000000000000000
          000116161661303139EE20328BFF2949E2FF284FF8FF2D55FDFF335CFFFF3961
          FFFF3660FDFF174BF6FF083CCDFF112556FE171817A404040415101010303333
          33C81A203FFF15278AFF1E33C0FF2336D2FF293CD8FF2D3FD6FF2031C5FF0817
          9DFF131A58FF2F3035FF2B2B2AB40606061A0000000000000000000000000000
          00011818185E383837ED2A2E45FF2C3B91FF3048CDFF3551E3FF3B58EBFF3F5B
          EBFF2B49DCFF092BB6FF091D65FF2B2E37F82525247701010106070707154444
          44A3535354FE282B3DFF1A2058FF1E2577FF242C85FF232B81FF151C65FF1A1E
          43FF303135FF2A2929FE1C1C1CA4040404130000000000000000000000000000
          00001111114E282828E6313131FF303240FF2A3263FF2F3B86FF344195FF2F3D
          90FF15226FFF131C49FF3A3C43FF5B5B5BE91E1E1E4B00000000010101042727
          2762686867EE686867FF545454FF494A4FFF4B4C54FF4B4C53FF424245FF3939
          38FF212120FF0F0F0FFB12121286010101090000000000000000000000000000
          00000A0A0A35161616D3131313FF302F2EFF3E3E3EFF48484DFF4E5057FF4B4C
          53FF4C4C50FF5E5D5DFF6D6D6CFE4D4D4DB70A0A0A1D00000000000000000A0A
          0A20474747BA5F5F5FFF5D5D5DFF6A6A6AFF808080FF777777FF3E3E3DFF0F0F
          0FFF020202FF151515F81919197A010101060000000000000000000000000000
          00000A0A0A2D222222CB080808FF050505FF202020FF5A5A59FF828281FF7777
          77FF616161FF5C5C5CFF5A5A5AEE262626680101010300000000000000000101
          01162A2A2AA3595959FD515151FF555555FF6D6D6DFF6A6A6AFF333333FF0808
          08FF030303FF212121F81C1C1C7B0000000B0000000000000000000000000000
          00010A0A0A312C2C2CC9101010FF010101FF161616FF4E4E4EFF727272FF6262
          62FF4F4F4FFF565656FF4A4A4AE40E0E0E580000000300000000000000000101
          0121191919C04F4F4FFF565656FF515151FF666666FF717171FF474747FF1414
          14FF050505FF222222FB1A1A1AB10000004C0000000E00000000000000020000
          0020080808762A2A2AE0121212FF050505FF282828FF5C5C5CFF6B6B6BFF5959
          59FF505050FF5B5B5BFF393939F50909097A0000000500000000000000000101
          010E1313139D3D3D3DFD575757FF525252FF696969FF7F7F7FFF5A5A5AFF1D1D
          1DFF060606FF1B1B1BFF0F0F0FF8010101CA0000004800000004000000130000
          007F030303E8191919FD101010FF090909FF363636FF696969FF6A6A6AFF5555
          55FF535353FF525252FF292929E8080808560000000100000000000000000000
          0002101010652F2F2FEF464646FF515151FF707070FF8D8D8DFF696969FF2626
          26FF070707FF0A0A0AFF030303FF010101FB01010194000000130000003A0101
          01CE010101FF060606FF080808FF0D0D0DFF414141FF707070FF6A6A6AFF5656
          56FF4D4D4DFF3D3D3DFF232323C5060606290000000000000000000000000000
          00000B0B0B32333333CF3C3C3CFF3F3F3FFF595959FF757575FF5C5C5CFF2A2A
          2AFF111111FF0C0C0CFF070707FF040404FF020202C700000033000000690202
          02EF050505FF090909FF0D0D0DFF171717FF3E3E3EFF606060FF575757FF4545
          45FF3C3C3CFF3C3C3CFC212121900202020C0000000000000000000000000000
          0000040404122F2F2FA04F4F4FFE444444FF3D3D3DFF3D3D3DFF353535FF2929
          29FF212121FF1B1B1BFF151515FF0F0F0FFF090909E102020258050505900C0C
          0CFB121212FF181818FF1E1E1EFF242424FF2E2E2EFF383838FF3B3B3BFF3E3E
          3EFF494949FF4A4A4AEE17171758000000010000000000000000000000000000
          0000000000031F1F1F66565656F35C5C5CFF535353FF484848FF3F3F3FFF3939
          39FF323232FF2C2C2CFF262626FF202020FF181818EE0808087E0F0F0FB11C1C
          1CFF222222FF282828FF2E2E2EFF343434FF3B3B3BFF424242FF4D4D4DFF5757
          57FF5D5D5DFF444444CA0A0A0A27000000000000000000000000000000000000
          00000000000010101031515151D4636363FF616161FF5D5D5DFF565656FF4D4D
          4DFF434343FF3C3C3CFF353535FF2F2F2FFF282828F6121212A11B1B1BC92B2B
          2BFF313131FF373737FF3E3E3EFF464646FF515151FF595959FF5F5F5FFF6363
          63FF676767FC373737930303030B000000000000000000000000000000000000
          0000000000000303030B3C3C3C8C727272F8707070FF696969FF626262FF5A5A
          5AFF525252FF4F4F4FFF4B4B4BFF434343FF353535FC1B1B1BD3252525E73C3C
          3CFF464646FF4D4D4DFF505050FF555555FF5C5C5CFF636363FF6D6D6DFF7878
          78FF686868DC1D1D1D4900000000000000000000000000000000000000000000
          00000000000000000000151515305F5F5FBB868686FE838383FF7A7A7AFF7171
          71FF646464FF5E5E5EFF5E5E5EFF575757FF3E3E3EFF343434FA353535FC4949
          49FF5B5B5BFF5E5E5EFF5E5E5EFF646464FF6E6E6EFF797979FF868686FF8181
          81F23F3F3F810606060F00000000000000000000000000000000000000000000
          00000000000000000000010101021D1D1D3A636363B68C8C8CF6939393FF8D8D
          8DFF7A7A7AFF6F6F6FFF6B6B6BFF626262FF515151FF545454FF4D4D4DFF5656
          56FF666666FF6B6B6BFF6F6F6FFF7A7A7AFF878787FF8E8E8EFF7F7F7FE54646
          46850B0B0B170000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010213131334474747C47B7B7BFF8E8E
          8EFF858585FF868686FF898989FF7D7D7DFF686868FF6C6C6CFF595959FF6D6D
          6DFF838383FF858585FF7D7D7DFF848484FF848484FF686868F82D2D2D850808
          0812000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000B131313943F3F3FFD5D5D
          5DFF5E5E5EFF6C6C6CFF979797FF969696FF747474FF737373FF606060FF8282
          82FF9C9C9CFF848484FF5B5B5BFF5F5F5FFF535353FF2E2E2EE8070707490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002141414543A3A3AE44848
          48FF454545FF484848FC666666D56D6D6DBF646464D7707070FB5C5C5CF06666
          66C96C6C6CC1595959E9414141FF494949FF444444FC2C2C2CB20606061D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404040D232323633D3D
          3DB0444444BF373737981616163C0C0C0C191C1C1C42454545992E2E2E7B1010
          10270D0D0D1E24242463404040B1434343BF3535359713131336000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202050A0A
          0A180C0C0C1F060606100000000000000000010101020707070F0404040A0000
          000000000000020202050A0A0A180D0D0D1F0606061000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000040000000D000000160000001800000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0018000000120000000800000001000000000000000000000000000000000000
          00010000000B00000227020313500708246A080A2870090B2771090B2871090B
          2871090B2871090B2871090B2871090B2871080A2871080A2871080928710708
          2871070828710607287105062871050528710404287104042771040426710404
          246F020219600000063C00000016000000040000000000000000000000000000
          000B01010E3D0F1154922B2E9ED13A3EBCE83D42C1EC3E43C2EC3F44C4EC3F44
          C5EC3F44C7EC3F44C8EC3F44C9EC3E43CAEC3E42CCEC3D40CDEC3C3FCEEC3C3F
          CEEC3C3FCFEC3C3FCFEC3C3FCFEC3C3FD0EC3C40D0EC3D41CEEC3F43CDEC3F43
          CAEB3639B4E01B1D76B8040423650000021E0000000200000000000000040000
          0A2B12136B9F3334C3EF2E2FCAFF2121C4FF1E1EC6FF1E1ECAFF1E1ECDFF1E1E
          D0FF1E1ED3FF1E1ED7FF1E1EDAFF1E1EDDFF1E1EE0FF1E1EE3FF1E1EE6FF2021
          E8FF2427E9FF282BEAFF2C31EBFF2F35ECFF333BEDFF3640EDFF3A45EEFF3E4A
          EFFF4753F0FF4C56E6FC2B2F9DD1050526600000000E000000000000010D0606
          436B2324BDEB1717BDFF0302B6FF0000B9FF0000BDFF0000C1FF0000C4FF0000
          C8FF0000CCFF0000D0FF0000D3FF0000D7FF0000DBFF0000DEFF0000E2FF0002
          E4FF0608E5FF0B0FE6FF1016E7FF141CE8FF1822E9FF1D28EAFF212EEBFF2533
          ECFF2A39EDFF3646EFFF4551E7FD1D207FB701010B2C0000000200000A1C0D0D
          7BA21313BDFD0101B2FF0000B6FF0000BAFF0000BEFF0000C1FF0000C5FF0000
          C8FF0000CCFF0202D0FF1111D6FF2A2ADEFF4343E4FF4F4FE8FF4B4BEBFF3A3B
          EAFF2326E8FF1318E7FF1016E7FF141CE8FF1A24E9FF1E29EBFF232FEBFF2734
          ECFF2B3AEDFF2F3FEFFF394AEFFF2F38BDE60405275000000004000014240808
          8BB80404B3FF0000B2FF0000B6FF0000B9FF0000BDFF0000C0FF0000C5FF0202
          C9FF2222D2FF6464E2FFA9A9F0FFD4D4F8FFE8E8FCFFEEEEFDFFECECFDFFE1E1
          FCFFC4C4F9FF9092F4FF4C51EDFF2027E9FF1923E9FF1E29EAFF232FEBFF2835
          EDFF2C3BEDFF3040EFFF3447F0FF2D3AD1F20607396300000004000015250101
          85B90000B0FF0000B1FF0000B5FF0000B9FF0000BCFF0000C0FF0808C6FF4B4B
          D7FFB6B6F0FFEFEFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFFFFDBDDFCFF8E92F4FF353DECFF1D28EAFF222EEBFF2734
          ECFF2B3AEDFF2F40EFFF3446F0FF2835D1F305073A6500000005000014250000
          80B90000AFFF0000B0FF0000B4FF0000B8FF0000BBFF0808C1FF6363DAFFD9D9
          F6FFFFFFFFFFFFFFFFFFFBFBFEFFE4E4F8FFC5C5F1FFB3B3EEFFBABAF0FFD4D4
          F5FFF2F2FCFFFFFFFFFFFFFFFFFFF7F7FEFFAEB1F7FF4049EDFF212CEBFF2633
          ECFF2A39EDFF2E3FEEFF3345F0FF2634CDF30406386500000005000013250000
          7CB90000ACFF0000AFFF0000B3FF0000B7FF0303BBFF5050D2FFDBDBF6FFFFFF
          FFFFFFFFFFFFE8E8F8FF9898E5FF4C4CD9FF2424D6FF1919D9FF1C1CDDFF3333
          E0FF7071E6FFC7C7F3FFFBFBFEFFFFFFFFFFF8F9FEFFA9ADF7FF353FECFF2431
          ECFF2938EDFF2D3EEEFF3244EFFF2633CAF30406356500000005000012250000
          78B90303ABFF0505B0FF0606B3FF0404B7FF2C2CC5FFBDBDEEFFFFFFFFFFFFFF
          FFFFDCDCF4FF6565D9FF0F0FCEFF0000D2FF0000D7FF0000DBFF0000DFFF0000
          E1FF0607E1FF3335E2FFAAACEFFFF8F8FDFFFFFFFFFFF3F3FEFF7F86F3FF2834
          ECFF2735ECFF2C3BEEFF3142EEFF2432C6F30406346500000005000011250101
          75B90808AAFF0F0FB2FF1010B5FF1313BAFF7878D9FFF3F3FCFFFFFFFFFFF0F0
          FAFF7979DBFF1717CCFF0909D0FF0505D3FF0202D6FF0000D9FF0000DEFF0000
          E1FF0203E4FF0407E4FF3337E3FFBDBFF3FFFEFEFFFFFFFFFFFFC8CBFAFF414C
          EEFF2431ECFF2A39EDFF2F3FEDFF222FC3F30405326500000005000010250101
          70B90C0CA8FF1717B3FF1717B7FF2A2AC0FFB8B8EBFFFFFFFFFFFEFEFFFFB9B9
          EAFF3434CEFF2020D0FF2121D3FF1F1FD6FF1818D8FF0F0FDAFF0707DCFF0101
          DFFF0101E3FF0406E4FF090CE4FF5F62E8FFEDEDFBFFFFFFFFFFEEEFFDFF6C74
          F2FF222EECFF2835EDFF2C3BEBFF202CC1F3040532650000000500000F250101
          6DB91010A7FF1E1EB3FF1E1EB7FF4545C6FFDBDBF4FFFFFFFFFFF6F6FCFF8484
          DDFF2828CDFF2929D0FF2B2BD4FF2D2DD7FF2D2DDBFF2C2CDDFF2626DFFF1919
          E0FF0A0BE2FF0404E4FF0407E4FF292CE6FFC9CAF7FFFFFFFFFFFBFBFFFF8F94
          F4FF232FEBFF2431ECFF2837EAFF1E28C0F3040432650000000500000E250101
          68B91515A5FF2525B4FF2525B8FF5C5CCBFFE9E9F8FFFFFFFFFFECECFAFF6D6D
          D9FF2D2DCCFF3131D0FF3232D3FF3434D6FF3535DAFF3636DDFF3838E0FF3838
          E3FF3131E5FF2021E5FF0E0FE5FF1517E6FFABACF5FFFFFFFFFFFFFFFFFFA4A8
          F6FF252FEBFF202CEBFF2432E8FF1B25BEF3030431650000000500000D250101
          65B91919A3FF2C2CB4FF2C2CB8FF6363CCFFEBEBF8FFFFFFFFFFECECFAFF7070
          D9FF3434CCFF3838D0FF3939D3FF3A3AD6FF3B3BD9FF3F3FDCFF3F3FDFFF4040
          E2FF4242E5FF4242E8FF3637E8FF2C2DE8FFACADF6FFFFFFFFFFFFFFFFFFA5A8
          F5FF222AEAFF1C26EAFF202CE7FF1820BCF3030431650000000500000D250202
          61B91D1DA2FF3434B5FF3434B9FF5C5CC7FFE3E3F5FFFFFFFFFFF4F4FCFF8888
          DFFF3E3ECDFF4040D0FF4141D3FF4545D6FF7171E2FF9E9EEDFF8383E9FF5151
          E2FF4949E3FF4B4BE6FF4C4CE9FF5C5CECFFCECEFAFFFFFFFFFFFDFDFEFF9093
          F1FF191FE8FF1720E9FF1B24E5FF141CBAF3020330650000000500000C250202
          5EB92121A1FF3B3BB6FF3C3CBAFF5050C1FFCCCCEBFFFFFFFFFFFDFDFFFFB7B7
          EBFF4F4FCFFF4646CFFF4747D2FF5C5CD9FFCDCDF4FFFCFCFEFFE3E3FAFF7C7C
          E9FF4F4FE3FF5252E5FF5252E7FF8282EFFFEDEDFDFFFFFFFFFFF2F2FCFF6B6D
          ECFF0E13E6FF1218E8FF151DE3FF1016B8F3020330650000000500000C250202
          5BB926269FFF4343B7FF4444BBFF4949BEFFA2A2DAFFFAFAFCFFFFFFFFFFEBEB
          F9FF8484DDFF4F4FD0FF4E4ED1FF6C6CDBFFE4E4F9FFFFFFFFFFF5F5FDFF9494
          EBFF5757E1FF5858E4FF6A6AE8FFC2C2F6FFFDFDFFFFFFFFFFFFDDDDF7FF4F51
          E7FF0A0DE5FF0B0FE6FF0F14E1FF0B0FB6F3010230650000000500000B250202
          5AB92A2A9FFF4A4AB7FF4C4CBCFF4C4CBEFF7373C8FFDFDFF0FFFFFFFFFFFEFE
          FFFFD6D6F4FF8080DBFF5757D2FF7272DAFFE5E5F8FFFFFFFFFFF5F5FDFF9999
          EAFF5E5EE0FF6D6DE5FFB1B1F2FFF4F4FDFFFFFFFFFFFCFCFDFFB7B7EEFF6262
          E9FF2A2BE8FF080AE4FF0709DFFF0709B4F3010130650000000500000B250303
          59B92E2E9FFF5252B8FF5454BCFF5454BFFF5A5AC0FF9F9FD5FFF4F4F9FFFFFF
          FFFFFEFEFFFFDEDEF5FF8383DCFF7878DAFFE6E6F8FFFFFFFFFFF5F5FDFF9D9D
          EAFF7B7BE3FFC2C2F3FFF6F6FDFFFFFFFFFFFEFEFEFFDADAF2FF8585E5FF7070
          EBFF6262EBFF2828E5FF0303DDFF0102B2F300002F650000000500000C250303
          58B933339FFF5959B9FF5B5BBDFF5C5CBFFF5D5DC2FF6A6AC3FFB8B8DDFFF7F7
          FAFFFFFFFFFFFCFCFEFFA8A8E4FF7F7FDAFFE7E7F8FFFFFFFFFFF6F6FDFFA2A2
          E9FFABABEBFFF9F9FEFFFFFFFFFFFFFFFFFFE2E2F3FF9999E1FF7676E5FF7777
          E9FF7979EAFF6262E8FF1B1BDBFF0000ADF300002F650000000500000B250404
          56B93A3AA0FF6161BBFF6262BDFF6464C0FF6565C3FF6565C4FF7474C5FFB0B0
          D8FFE2E2EEFFD4D4E9FF8B8BD4FF8484D9FFE8E8F8FFFFFFFFFFF6F6FDFFA6A6
          E8FFA4A4E3FFEEEEF6FFF6F6FAFFD7D7EDFF9999DDFF7C7CE1FF7D7DE6FF7F7F
          E7FF8181E8FF8282E9FF5656DFFF0E0EABF300002E650000000500000B250606
          56B94444A3FF6969BCFF6969BEFF6A6AC0FF6C6CC3FF6E6EC5FF6E6EC7FF7474
          C5FF8585C8FF8181C9FF7474CDFF8A8AD9FFE9E9F8FFFFFFFFFFF7F7FCFFABAB
          E7FF8282D7FFA0A0D8FFA9A9D9FF8F8FD7FF8181DEFF8383E2FF8585E3FF8686
          E4FF8888E5FF8A8AE6FF7D7DE2FF2A2AACF300002C650000000500000B250909
          58B95050A8FF7070BDFF7171BFFF7272C1FF7373C3FF7474C5FF7676C8FF7676
          C9FF7777CAFF7878CDFF7A7ACFFF9191D8FFEBEBF8FFFFFFFFFFF7F7FDFFB0B0
          E7FF8282DAFF8383D8FF8484D9FF8787DDFF8A8AE0FF8B8BE0FF8D8DE1FF8E8E
          E2FF8F8FE3FF9191E4FF8C8CE1FF3C3CACF301012C650000000400000B241111
          5BB96060AFFF7777BEFF7878BFFF7979C2FF7A7AC4FF7B7BC6FF7D7DC8FF7E7E
          CAFF8080CCFF8181CEFF8282CFFF9696D8FFEBEBF8FFFFFFFFFFF7F7FCFFB2B2
          E5FF8A8AD9FF8C8CDBFF8E8EDCFF8F8FDDFF9191DEFF9292DFFF9494E0FF9595
          E1FF9696E1FF9898E1FF9696E0FF4E4EB0F306062E640000000400000A1F2323
          64B47272B6FF7E7EBFFF7F7FC1FF8080C3FF8282C5FF8383C7FF8585C9FF8686
          CBFF8888CDFF8989CEFF8A8AD0FF9393D2FFCDCDE5FFF0F0F5FFDCDCECFFA3A3
          DAFF9292D9FF9494DAFF9696DBFF9797DCFF9999DDFF9A9ADEFF9C9CDFFF9D9D
          DFFF9E9EDFFF9F9FDFFFA1A1DFFF7070BAF10F0F305D000000020000050F2828
          5A957E7EBBFD8686C0FF8686C2FF8787C4FF8989C6FF8A8AC8FF8C8CCAFF8D8D
          CBFF8F8FCDFF9090CFFF9292D0FF9292D1FF9B9BCEFFA9A9D0FFA1A1D1FF9898
          D5FF9A9AD8FF9B9BDAFF9D9DDBFF9E9EDBFFA0A0DCFFA1A1DDFFA3A3DDFFA4A4
          DDFFA5A5DEFFA6A6DDFFAEAEE0FF8484B6E10F0F233F00000000000000011111
          2B4B6E6EA5E09797C7FF9191C5FF8F8FC5FF9090C7FF9292C9FF9393CAFF9595
          CCFF9696CEFF9898CFFF9999D1FF9A9AD2FF9B9BD3FF9A9AD3FF9D9DD5FFA0A0
          D7FFA1A1D8FFA3A3D9FFA4A4DAFFA6A6DBFFA7A7DCFFA9A9DCFFAAAADCFFABAB
          DCFFADADDDFFB8B8E1FFBDBDDFFB57577A9F0303091300000000000000000101
          060D2D2D52798686B4E6ABABD2FFABABD2FFABABD3FFADADD5FFAEAED6FFB0B0
          D8FFB2B2D9FFB4B4DBFFB5B5DCFFB7B7DDFFB9B9DFFFBABAE0FFBCBCE1FFBDBD
          E2FFBFBFE3FFC1C1E4FFC2C2E5FFC4C4E5FFC5C5E6FFC6C6E6FFC8C8E6FFC9C9
          E7FFCFCFE9FFCCCCE4FA7B7B9ABA141424370000000100000000000000000000
          00000202070E1F1F3B575D5D83A98585A8CC9090B1D29292B2D29393B3D29595
          B4D29797B5D29898B6D29A9AB7D29C9CB8D29D9DB8D29F9FB9D2A0A0BAD2A1A1
          BBD2A3A3BCD2A5A5BDD2A6A6BDD2A6A6BDD2A7A7BED2A8A8BED2A9A9BED2A7A7
          BDD28F8FA8C050506B860F0F1C2B000000020000000000000000000000000000
          0000000000000000010205050E1810101F2D1616233216162332161624321717
          2432171724321818243218182432181825321818253219192532191925321919
          25321A1A25321A1A25321A1A26321A1A26321A1A26321A1A26321A1A26321919
          24310E0E19250101060B00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000200000005000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010004061900101A4A00070C320000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002001C3051005AA3D4004479B400101B4B0000000E000000000000
          00000000000000000000000000040000000D0001011D0005082F000A103E000C
          1445000C134300080E3A00030529000000180000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000007002E5377006DD9F8006DD6FA004C8AC30016255A000000120000
          0001000000050001011800090F3F001C306F00345C9D004880BB005598CC005B
          A3D3005BA1D1005494C8004579B3002F529100162661000509320000000F0000
          0002000000000000000000000000000000000000000000000000000000000000
          00000002040F00407496007DF2FD0077F1FF006FDDFD00569FD4001E346E0003
          052E000E194D002C4E90004E91CC0065BFEE0071D8FB0079E4FF007FEAFF0084
          EEFF0086EFFF0084EEFF007FE9FE0077DCF90065BBE7004780BC002038750006
          0A2F000000080000000000000000000000000000000000000000000000000000
          000000070C1C005391B1009EFCFF0099FEFF007CF3FF0070E0FE005BABDF003C
          6BB1005197D1006ACBF5006FDEFF0071E4FF007DEBFF0091F2FF00A3F6FF00AD
          F8FF00B1F9FF00ACF8FF00A0F5FF008FF0FF007DE8FF0073DDFE0062BAEA003D
          6FAD000F1A4B0000000F00000000000000000000000000000000000000000000
          0000000D182E0065ADC900A6FDFF00AEFFFF00A1FEFF0082F6FF0071E4FF006F
          D8FE006FDFFF0071E8FF007DF3FF0093FAFF00B0FEFF00C6FFFF00D2FFFF00D9
          FFFF00DBFFFF00D9FFFF00D2FFFF00C3FEFF00A8F9FF0087F1FF0072E5FF006D
          D6FB004E92CA00182B6000010110000000000000000000000000000000000000
          0000001627430074C4DC00A5FEFF00ACFFFF00B1FFFF00A8FFFF0087F7FF0073
          ECFF007DF3FF0098FCFF00B6FFFF00C8FFFF00D2FFFF00D7FFFF00D9FFFF00DB
          FFFF00DDFFFF00DDFFFF00DDFFFF00DBFFFF00D3FFFF00BDFFFF0096F9FF0078
          EDFF006EDCFD00539AD0001525560000000B0000000000000000000000000000
          000100223D5D0080D9EB00A5FFFF00AAFFFF00AEFFFF00B3FFFF00AEFFFF009F
          FEFF00AFFFFF00C2FFFF00C9FFFF00CCFFFF00CFFFFF00D2FFFF00D4FFFF00D6
          FFFF00D7FFFF00D8FFFF00D7FFFF00D7FFFF00D6FFFF00D3FFFF00CAFFFF00AC
          FDFF0082F3FF0071DFFE004A8BC0000E183E0000000300000000000000000000
          0006002F55790089E8F500A3FFFF00A8FFFF00ACFFFF00B0FFFF00B4FFFF00B8
          FFFF00BDFFFF00C0FFFF00C4FFFF00C7FFFF00CAFFFF00CDFFFF00CFFFFF00D0
          FFFF00D2FFFF00D2FFFF00D2FFFF00D1FFFF00D0FFFF00CEFFFF00CDFFFF00C9
          FFFF00B2FEFF0087F4FF006BD2F6003460950003051700000000000000000002
          030F003F73980091F4FD00A1FFFF00A5FFFF00A9FFFF00ADFFFF00B1FFFF00B5
          FFFF00B9FFFF00BCFFFF00C0FFFF00C3FFFF00C6FFFF00C8FFFF00CAFFFF00CB
          FFFF00CDFFFF00CDFFFF00CDFFFF00CCFFFF00CBFFFF00C9FFFF00C7FFFF00C5
          FFFF00C2FFFF00AFFEFF0083F0FF005BB2DE0014254C00000004000000000005
          0A1B005091B40093FAFF009EFFFF00A1FFFF00A5FFFF01AAFFFF02AEFFFF04B3
          FFFF06B7FFFF07BBFFFF08BEFFFF08C0FFFF08C3FFFF08C5FFFF06C7FFFF05C7
          FFFF03C8FFFF02C8FFFF01C9FFFF00C7FFFF00C6FFFF00C4FFFF00C3FFFF00C0
          FFFF00BDFFFF00BBFFFF00A3FCFF0077E0FA00315D8C0002031200000000000B
          142C005FAECD0093FDFF019AFFFF05A0FFFF0BA6FFFF11ACFFFF16B1FFFF18B5
          FFFF19B9FFFF1ABBFFFF19BEFFFF19C1FFFF15C1FFFF0DBBFDFF07AEF6FF059D
          E5FB048DC6E30599D0E108B4EFF60AC2FEFF07C3FFFF03C0FFFF00BEFFFF00BB
          FFFF00B9FFFF00B7FFFF00B2FFFF0091F5FF004E95BF000B142E000000010013
          2341016DC7E10895FEFF16A0FFFF21A7FFFF26ADFFFF28B1FFFF28B4FFFF28B7
          FFFF28BAFFFF27BCFFFF27BFFFFF27C1FFFF1CBEFFFF06A1FBFF007DE8FF006E
          D2FA004885C5002A467B034A6E850A8CC5D317BCF9FD19C1FFFF0DBDFFFF04B8
          FFFF00B5FFFF00B2FFFF00B0FFFF00A3FDFF0066BCDB0016294C00000003001E
          395C0A7CDBEF29A2FFFF36AAFFFF37ADFFFF37B0FFFF36B3FFFF35B6FFFF35B8
          FFFF35BAFFFF34BCFFFF34BEFFFF34C0FFFF31C1FFFF20B6FFFF0891F7FF0074
          E6FF0067CCF6003C74AC0008102A001E323F0C78AFC026BAF8FC2CC1FFFF22BC
          FFFF0FB4FFFF02AEFFFF00ABFFFF00A7FFFF007BD3E80022416500000008002B
          53791689E9F83FACFFFF45AEFFFF44B0FFFF43B3FFFF43B5FFFF43B7FFFF42B9
          FFFF42BCFFFF41BDFFFF41BFFFFF41C1FFFF41C2FFFF3EC3FFFF2CBAFFFF0E98
          F9FF0076E8FF005CB4DE00101E370000000101243B4C178CCADA38C0FEFF3CC0
          FFFF34BCFFFF1EB2FFFF06A8FFFF00A3FFFF0086DFED002B4E6F00020412013B
          70982496F4FD4FB3FFFF52B4FFFF51B4FFFF50B5FFFF50B7FFFF50B9FFFF4FBB
          FFFF4FBDFFFF4EBFFFFF4EC0FFFF4EC2FFFF4DC3FFFF4DC4FFFF4CC5FFFF3CBE
          FFFF179EFBFF0369C4E10011223B000000000003071109517E9D38B6F7FD49C1
          FFFF49C0FFFF45BCFFFF2BB1FFFF09A2FFFF0087E2EE002E517100070D21034B
          8DB334A2FAFF5EB9FFFF5EB9FFFF5EB9FFFF5DB9FFFF5DBAFFFF5DBCFFFF5CBD
          FFFF5BBFFFFF5BC0FFFF5BC2FFFF5BC3FFFF5BC5FFFF5AC6FFFF59C5FFFF54C3
          FEFF3CB8FCFF0F7DC6DB0013243700000000000204180343729F33AEF5FD56C2
          FFFF55C1FFFF55BFFFFF51BCFFFF31AEFFFF0787E2EE002D5171000C1934075D
          A9CA49ADFDFF6CBFFFFF6BBFFFFF6BBFFFFF6ABFFFFF6ABEFFFF6ABFFFFF6AC0
          FFFF6AC2FFFF69C3FFFF67C3FFFF62C2FFFF57BDFCFF4AB2F3FA369DDEE92483
          BFCE146297A80536596A00060C110000000900122557025EACD935ADFAFF62C4
          FFFF63C3FFFF62C1FFFF62BFFFFF5BBBFFFF2791E2EE022D5171001224410E6C
          BDD85EB8FEFF79C5FFFF78C4FFFF78C5FFFF78C5FFFF78C5FFFF76C3FFFF70C1
          FEFF66BCFCFF57B2F5FB419FE4EE2B84C5D519649BAD0C446F80042844520014
          232D00070E140000010700000013000C174C00407FBE0577DEFB44B1FDFF70C6
          FFFF6FC5FFFF6FC3FFFF6EC2FFFF6DC1FFFF3D97DEEC042A4C6A001428441C77
          C4DA74C3FFFF87CBFFFF85CAFFFF7FC7FFFF73C0FCFF62B4F6FC4A9EE2EC3383
          C5D41C629CAF0D437183042745540112232D00060D1200010305000000070000
          001B0002052E00091248001E3B8100468BCC006AD3FB1289F0FF63BEFFFF7EC9
          FFFF7CC7FFFF7CC7FFFF7CC6FFFF77C4FFFF388BCFE1021D3751001428412A7F
          C5DA77C2FDFF71BCF7FC55A5E7F13B8ACBDA2367A2B412477688062A4A590115
          2833000811170002040700000000000000000000000000000000000A1533002B
          5699003A74BC004890D2005FBCF0006DD8FE0478E8FF3EA5FBFF84CAFFFF8ACC
          FFFF89CBFFFF88CBFFFF88CCFFFF7CC5FEFF2972B0C7000E1D2F000C18241251
          869D2468A3B51348788B062A4B5C0114273300070F1500010406000000000000
          0000000000000000000000000000000000000000000000000001001B3659005D
          BAE9006DD9FF006EDBFF006FDFFF0477E8FF349DF9FF81C8FFFF97D2FFFF96D2
          FFFF96D1FFFF95D1FFFF96D1FFFF71BBF5FC124978930003070F000103040009
          13190009131A0002050800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001001D3A5C0062
          C6EC0172E4FF0477E8FF1687F1FF48A8FBFF8BCCFFFFA3D7FFFFA3D7FFFFA2D6
          FFFFA2D6FFFFA2D6FFFF9BD3FFFF4B95D3E5041E374C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001011F3D5C2181
          D7EC49A8FBFF60B5FDFF87CAFFFFA8D9FFFFB1DDFFFFB0DDFFFFAFDDFFFFAFDD
          FFFFAFDCFFFFAFDDFFFF7EBFF3FB1A50819B0004091100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000102213E5C5AA0
          DAECB4DFFFFFBCE2FFFFBEE3FFFFBDE2FFFFBCE2FFFFBCE2FFFFBBE1FFFFBBE1
          FFFFBCE2FFFFA0D3FCFF3979B3C9021529390000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000102203E5C65A5
          DAECC8E8FFFFCAE8FFFFCAE8FFFFC9E8FFFFC9E8FFFFC8E8FFFFC8E7FFFFC9E8
          FFFFADD9FCFF4D8DC5D905223F52000102040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000103203E5C6AA8
          DAECD2ECFFFFD6EDFFFFD5EDFFFFD5ECFFFFD5ECFFFFD6EEFFFFD1EBFFFFAAD6
          F9FE4988BED20928475B00020508000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000103203E5C71AA
          DAECDFF2FFFFE3F3FFFFE2F3FFFFE3F3FFFFDEF1FFFFC5E4FDFF84B8E5F03067
          9AB0031A32420001030500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003203D5972AB
          DBEDDFF1FEFFDFF0FEFFD2EAFDFFB7D9F6FC82B4E0ED437AADC110355A6E000B
          1720000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001142737316B
          A0B66096C5D45589B8C83C6F9EB11E4C788C08264455000B1821000002040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000030508000F
          1E28001427330010202B0008131B0002060A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          0009000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000070106042C020A
          0639000201240000001300000007000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003050F08312E622EA23E82
          3DC426572D98102B1868030E083F000101230000001200000008000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000206041E2754238F61B130F46ABA
          2CFF6BB542FA5EA749E83E803BC3215129940C251461030B073A000101200000
          0010000000060000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000201101B3D1B72529F32E75FB046FF6FAF
          50FFB7CA8FFFBFD799FF9BC96EFF7DBD56FA5BA447E73C7D39C2214E28910D25
          1561020B063A0001002000000010000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000080E231150498E2ED35EA850FE68BBC3FFAED9
          DCFFF8F8F4FFFEFDFCFFF2F3E6FFDCE3BFFFBBD18DFF98C365FF76B54DF8579E
          42E3387838BD1C4A258E091F115A020906360000001900000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000308150A393A7829B969A443FD969BB3FFBCCDF8FFECF2
          F5FFF5ECE2FFF8F2EBFFFEFBF9FFFFFBF8FFFDF4EAFFF3E9D2FFDAD9AAFFB8C8
          7CFF96BE5BFF76B44AF9559B41E3377436BC17391D7802080426000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001030804212B5E239A57AD39F674B599FFC4BDF1FFF5E7F6FFF3E9
          DCFFEBDCC7FFEBDBC7FFEDDDC9FFF4E5D3FFFAECDEFFFEEFE1FFFFEEDDFFFDE8
          D0FFEFDCB6FFD7CD93FFB6C16DFF91B850FF60A03EE923421881010200140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010302151D421B7954A531ED5FC570FF81F0E5FFD8F5F6FFF8EFE6FFEDDE
          CAFFEAD9C3FFEBD9C4FFEBD7BFFFEAD1B5FFEBD1B3FFEFD5B8FFF5DBBEFFFAE1
          C6FFFFE3C8FFFFE0C1FFECCEACFFD4BE8CFFA3B455FF5C902CDE15260C5A0000
          000A000000000000000000000000000000000000000000000000000000000000
          0009122B125A49942DD76BBD45FF8FEA97FFCBFBE2FFF2EEE4FFDBD0C4FFD2C6
          BAFFE4D0BAFFE4CFB8FFE4CEB5FFE4CAAFFFE4C7A8FFE7C8A5FFEBC9A3FFECC8
          A0FFF6D3AFFFF3D5B5FFD0B89AFFD2B899FFDFC795FF95B24AFD437222BB0911
          0537000000020000000000000000000000000000000000000000000000060918
          0B3E3E822AC378AF3BFDBCCA7DFFD9F3C0FFF4F4E6FFEFE0CEFFAFB0BAFF7483
          A8FFB9AEAAFFD8BFA7FFD7BB9FFFD7B99CFFD9BA9CFFDCBA98FFE0BC95FFEAC5
          9EFFF1D1AFFFD6BEA1FFC8B395FFEBCCACFFFEDCBAFFD7CA8EFF7CA83CF63155
          1A990306021E0000000100000000000000000000000000000000050E06242E66
          23A05BA342F9A0A181FFF4D3B9FFFCF2E6FFF2E7D9FFECDAC5FFB5B5BDFF7585
          FDFF8392B6FFB3A7A3FFD5B89AFFD5B596FFD5B290FFD7B38FFFDAB490FFE2BE
          9EFFD3B89DFFC2AD91FFDFC2A3FFF5D1ABFFFEDEBEFFFBE0C0FFBEC378FF679A
          31E81C320F6B0001000E000000000000000000000000000000001A3A16534F9F
          32DE5C8588FF9490E4FFEEE6F2FFFBF5EFFFEEDECDFFECDBC7FFBABEC4FFA3B8
          D3FFB7CEE8FF8DA4CAFFB0A6A6FFD6B698FFD6B28FFFD6B18CFFDFBD9DFFD2B5
          9CFFB8A189FFCCB095FFE4BE9AFFE4BB91FFF0CEAAFFFEE5CCFFF3DFBEFFA7BD
          64FF508227CE0F1D094A000000050000000000000000000000000D1C09232A52
          1A6F487058B38DAA9BE0DCECD3F9F4FAEFFFF9F7F1FFF7EEE6FFBECDDAFFB0D2
          F0FFDEF1FFFFC2DCF7FF8BA7D3FFAAA1A2FFD7B493FFDFBD9EFFD8BBA2FFBCA5
          8EFFC5AB92FFDCB897FFDAB28BFFD9B28CFFDCB893FFEDD1B6FFFBE6D3FFE4DA
          B2FF8BB24BFA3A651DAC050A0329000000020000000000000000000000000103
          0103091104151E32123D4767347A7C9E68B3B5D0A3E1DDEDD1F8BADCEAFFABD5
          F5FFCFEFFFFFBCEBFFFF9BD1F6FF769AC8FFC5B0A2FFDCBFA4FFBFA992FFC0A9
          91FFDCBB9DFFDCB691FFD8B28CFFD8B490FFD8B492FFD9B899FFE9D3BFFFF3E1
          D3FFCBCC97FF74A43BF226431483020301160000000000000000000000000000
          00000000000000000000010400050A14041A233715454C69367D619987C58AD0
          EBF9A1EDFFFF8AE3FFFF8EDCFFFF79B8EDFF9EA9BFFFCBB6A0FFBFAB93FFD9BC
          A1FFDCB794FFD7B18DFFD8B492FFD8B594FFD8B797FFD8B89AFFDCC0A6FFEAD8
          CCFFE8DACCFFAEBD77FF598D2BDB15280C5B0000000800000000000000000000
          00000000000000000000000000000000000000000000000300040B2B334254B3
          D0D788EFFFFF7DE3FFFF7EDBFFFF7FCAFBFF6F9CCEFFB3ACA3FFE5CCAFFFEAC9
          A6FFDCB690FFD9B591FFD8B594FFD8B799FFD8B99CFFD8BB9FFFD8BCA2FFDEC8
          B4FFEBDFD9FFE2DBC9FF9DBD65FE477623C00912053800000003000000000000
          000000000000000000000000000000000000000000000000000000090F0F2774
          939874E8FBFD77E7FFFF71DBFFFF79D1FFFF66A9E7FFA5AFC1FFF5DABCFFECCA
          A4FFE8C6A1FFE3C19EFFDEBF9EFFDBBC9FFFD8BCA0FFD8BDA3FFD8BEA6FFD8C0
          A8FFE2D3C7FFF5EFEFFFCFD8AEFF70A634F82D53178F04080214000000000000
          0000000000000000000000000000000000000000000000000000000000000931
          45484DC4E1E56EECFFFF66DCFFFF6BD3FFFF68BBF8FF7DA6D8FFEBDCD0FFF2D6
          B8FFEACCA9FFE9CBA9FFE7CAA9FFE6CBAEFFE1C7ACFFDCC4ABFFD9C2ACFFD8C1
          FDFFE0CFC0FFEDEBE1FFA2BE77FF67A81CFF4F881BCB0F1B072E000000000000
          000000000000000000000000000000000000000000000000000000000000010B
          12132583A4A95DE8FCFE5EE1FFFF5CD4FFFF64C5FEFF5CA2E8FFBAC4D1FFFCEB
          D7FFEED4B8FFEACFB1FFE8CEAFFFE8D0B3FFE9D3B9FFE8D3BCFFE3CFB9FFE2D0
          BFFFEDE5DBFFB7CA96FF6AA825FF62AB15FA39620D95070D0316000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          01010A3D55593EC8E4E954E7FFFF50D6FFFF56C9FFFF55AEF6FF6DA2C3FFE1E3
          CFFFFBEDDDFFECD5BBFFEAD4B9FFE8D2B7FFE9D4BCFFE9D6BFFFECDCC9FFF5ED
          E4FFCAD6B1FF74AC36FF62AF17FD477D11BA0E19032900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001121C1E1F8DAFB544E8FEFF46DBFFFF47CCFFFF51B8FEFF4495D0FE93BA
          A2FAF6F5E3FFF7EBDFFFEAD6BEFFE9D6BFFFE7D4BCFFEAD8C2FFF3E8DDFFDDE3
          CCFF81B24BFF63B11BFF529316D5192D06480001000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010303084762672ED1EEF23AE2FFFF3ACEFFFF43BFFFFF3F9EF0FD3E80
          90DEB7D0A7EBFBFBF5FFF3E8DBFFEAD8C3FFE9D7C0FFEFE1D1FFE7E9D9FF92BA
          66FF63B21FFF5BA51CEA24420966020400070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001162325179BBFC62BE6FEFF2FD3FFFF33C4FFFF3EABFDFF2471
          BBDB537E60B1D6E8C8F2FDFCF9FFF0E2D3FFEFE0CFFFF1ECE1FFA6C584FF67B3
          29FF60B220F6335F0F8E05090111000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000204050754737918D3F1F520DDFFFF25C8FFFF2FB4FFFF2B8C
          EAF516476996759664AFEBF6E4FCFDFAF8FFF5F1E9FFBBD0A1FF6BB332FF62BA
          24FC3F7715AD0B14032300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000011F2F3309A3C9CF10E2FEFF18CDFFFF1FBAFFFF2A9E
          FCFF1459ABC11F3C2F62A1BF8CCFF6FBF3FFD0DDBEFF76B645FF63BE27FF4C93
          1CCF1324063C0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000005090A025E808704D9F7FA0BD6FFFF10C0FFFF1FAA
          FFFF217FE3F0062A556C39542B65A8C991E784BC58FF63C02BFF56A723E21F3B
          0B5D010100030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000025383D00B0D6DD03DFFEFF06C5FFFF0FB4
          FFFF2497FAFF104FA0B50815182C3F6E238D64BF30F95FBA2BF52C5612800407
          010E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000060C0D016D919901DAF9FC00D1FFFF05BB
          FFFF28AAFFFF2D82DDED072048590E1D0726438520AA386F199E080F031B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000001010030474D01B7DCE30FDFFFFF4CD3
          FFFF92D9FFFF8ABDF2FE1D4178930103080D0C1805210A13041F000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B131507779DA664DEF9FDBEE6
          FBFFB2CDEDF95E80B4CF0B1E3F52000103040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000102020939575F519EDAEF6391
          CFED315189A60817344400010507000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000050000001B0606064E1010106E040404430000
          0015000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000009000000270F0F0F67565656BB838383DE3D3D3DAD0A0A
          0A5A0000001F0000000600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000140404043F2323238E686869DBCCCCCCFDE7E7E7FFA7A7A7FA5959
          59D11A1A1A7E020202360000000E000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          00200C0C0C5C393939B07C7C7CEEB1B1B1FFE5E5E6FFEEEEEEFFC9C9C9FFAAAA
          AAFE737373E6303030A20707074E0000001A0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000F030303371D1D
          1D80595959D38F8F8FFAA8A8A9FFB7B7B8FFE2E2E3FFECECECFFC6C6C6FFB9B9
          B9FFB0B0B0FF8E8E8EF74E4E4EC5161616730101012D0000000C000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000050000001B08080850262626A56565
          65E7979798FEA2A2A3FFA5A5A6FFB8B8B9FFE8E8E9FFF7F7F7FFD5D5D5FFB8B8
          B8FFB2B2B2FFB1B1B1FF9D9D9DFC6B6B6BDF2929299406060645000000140000
          0004000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000C0101012E181818744C4C4CC7595959F77B7B
          7BFF9D9D9EFFA1A1A2FFB9B9BAFFE2E2E3FFFCFCFCFFFFFFFFFFF8F8F8FFDCDC
          DCFFB9B9B9FFAEAEAEFFADADADFFA6A6A6FF848484F2464646BB0F0F0F650000
          0026000000080000000100000000000000000000000000000000000000000000
          00000000000400000015070707462B2B2B96656565E1868687FD676768FF7777
          78FFA4A4A4FFC8C8C8FFEFEFEFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
          FBFFE5E5E5FFC2C2C2FFAAAAAAFFA7A7A7FFA5A5A5FF8E8E8EFB515151D62020
          20880404043A0000001100000002000000000000000000000000000000000000
          00010101011A13131361464647BD767677F3888889FF888889FF686869FF9292
          93FFDCDCDDFFF0F0F0FFF7F7F7FFFCFCFCFFFFFFFFFFFFFFFFFFFCFCFCFFF4F4
          F4FFEFEFEFFFEAEAEAFFCDCDCDFFACACACFFA2A2A2FF989898FF7F7F7FFF7373
          73EE3E3E3EAD0E0E0E5400000012000000010000000000000000000000000000
          00031515154B5C5C5DCB838384FB888889FF888889FF939394FF858586FFB2B2
          B2FFF1F1F1FFE2E2E2FFE7E7E7FFF1F1F1FFF6F6F6FFF6F6F6FFF1F1F1FFE7E7
          E7FFDCDCDCFFD7D7D7FFD4D4D4FFCCCCCCFFB2B2B2FF949494FF7E7E7EFF8E8E
          8EFF888888F8535353BC0C0C0C35000000020000000000000000000000000000
          000633333373929293F48E8E8FFF89898AFFA3A3A4FFCBCBCCFFA3A3A3FF6F6F
          6FFFB0B0B0FFD4D4D4FFD8D8D8FFDFDFDFFFE4E4E4FFE3E3E3FFDFDFDFFFD7D7
          D7FFC7C7C7FF9A9A9AFF646464FF9B9B9BFFD8D8D8FFB3B3B3FF7D7D7DFF8888
          88FF999999FF8C8C8CEC21212155000000030000000000000000000000000000
          00083E3E3E7F9C9C9DF7949495FFA9A9AAFFC9C9C9FFBEBEBEFFA3A3A3FF8B8B
          8BFF7D7D7DFF9A9A9AFFBDBDBDFFCECECEFFD2D2D2FFD2D2D2FFCDCDCDFFBBBB
          BBFF8C8C8CFF676767FF777777FF9D9D9DFFBCBCBCFFC2C2C2FF989898FF8E8E
          8EFF9C9C9CFF9D9D9DEF2828285C000000030000000000000000000000000000
          000842424280ABABABF8C8C8C8FFDADADAFFB5B5B5FFA0A0A0FFA0A0A0FFA6A6
          A6FFA6A6A6FF9B9B9BFF9B9B9BFFB4B4B4FFC7C7C7FFC8C8C8FFB3B3B3FF9393
          93FF8F8F8FFFA4A4A4FFB1B1B1FFACACACFF9D9D9DFF929292FF9A9A9AFFAEAE
          AEFFACACACFFA3A3A3EF2B2B2B5C000000020000000000000000000000000000
          000540404077C5C5C5F7F8F8F8FFF8F8F8FFD4D4D4FFB1B1B1FFADADADFFB4B4
          B4FFB8B8B8FFBABABAFFB2B2B2FFADADADFFB6B6B6FFB2B2B2FFACACACFFBBBB
          BBFFBEBEBEFFBABABAFFB9B9B9FFA5A5A5FF8F8F8FFF949494FFA5A5A5FFBABA
          BAFFBEBEBEFFA7A7A7EF2A2A2A55000000010000000000000000000000000000
          00012929294B939393D6DADADAFEF8F8F8FFF8F8F8FFE2E2E2FFCACACAFFC0C0
          C0FFBFBFBFFFBFBFBFFFBEBEBEFFB7B7B7FFB3B3B3FFAAAAAAFFC8C8C8FFDCDC
          DCFFC2C2C2FFBEBEBEFFC3C3C3FFACACACFF9E9E9EFFB6B6B6FFBEBEBEFFBDBD
          BDFFB1B1B1FC7C7C7CC719191931000000000000000000000000000000000000
          00000606060C2D2D2D50797979BBC1C1C1F6EEEEEEFFF9F9F9FFE6E6E6FFCECE
          CEFFC5C5C5FFBBBBBBFFAAAAAAFFAEAEAEFFBDBDBDFFBEBEBEFFB3B3B3FFB8B8
          B8FFC2C2C2FFC4C4C4FFC8C8C8FFAFAFAFFFABABABFFC5C5C5FFBFBFBFFFA7A7
          A7F26A6A6AAA2626264203030306000000000000000000000000000000000000
          000000000000000000011515152650505084A1A1A1E0DCDCDCFEF3F3F3FFE2E2
          E2FFB2B2B2FF939393FFA4A4A4FFC1C1C1FFCACACAFFCBCBCBFFC5C5C5FFAEAE
          AEFF999999FFA6A6A6FFC3C3C3FFAFAFAFFFACACACFFBCBCBCFD8D8D8DD44646
          46740E0E0E1A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707070D313131527B7B7BB9B9B9B9F7BDBD
          BDFFA3A3A3FFADADADFFC9C9C9FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFCECE
          CEFFB7B7B7FF8B8B8BFF979797FFABABABFF969696F2707070AD272727420505
          0509000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001151515243D3D3D867171
          71DFC1C1C1FEDBDBDBFFD8D8D8FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFC6C6C6FFB0B0B0FFA8A8A8FD585858A811111123000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000606060E2E2E
          2E517E7E7EBBBABABAF6D4D4D4FFDBDBDBFFDCDCDCFFDBDBDBFFDCDCDCFFDCDC
          DCFFD3D3D3FFB4B4B4F2A3A3A3E4A5A5A5F73F3F3F8801010109000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010117171726555555849E9E9EE0C7C7C7FEDBDBDBFFE1E1E1FFDEDEDEFFCCCC
          CCFC989898D24A4A4A785959598A9F9F9FF0404040890101010A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707070C353535527D7D7DB9B9B9B9F7D2D2D2FFBBBBBBF07575
          75A82929293F0505050D4B4B4A729F9F9FF0404040890101010B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000300000005010100091717172E5757568C7E7E7DBE4C4C4B751010
          101D000000020000000B4747477A959599F13D3D3E8C0101010D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          00150000012A0001053D0001094900000A4D080810571212175F050507410000
          002E0000002A0002073E213561A44353A5F71F2A5B9D01030615000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000E010307360512
          2C6F091F5AA1081E75BE06137ECC02067CD2000270CF00035DC500074EB9000D
          48AA001349A0002372B5033FC4EB0424C0FF0A2284B102070F1C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000E020912440F356EA41854
          C3E3164DDCF91038D7FF091FC9FF0208BAFF0004ACFF00089FFF001097FE001F
          A5FB0031BEF80145DFFC0448E6FF0324C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000402091236123F83AC2072EEF71F6C
          F7FF1752E8FF1039D8FF091FC9FF0208BAFF0004ACFF00089FFF00109AFF001F
          ACFF0034CAFF0248E6FF0649E5FF0424C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102070B2A566C1E69D8E02070E9EA1B60
          DDE5154ACFE60F34C9EE091DC4FA0208BAFF0004ACFF00089FFF00109AFF001F
          ACFF0034C9FF0248E6FF0649E5FF0424C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001020506081E3D400C2A575809214446071A
          3C3F0614394005114351040E6381020691CA0004A6F800089FFF00109AFF001F
          ACFF0034C9FF0147E6FF0548E5FF0324C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000010100000000000000000000
          00000000000000000000000005070001233300025581000676C0000E89E5001E
          A5F40033C8FC0047E6FF0347E5FF0425C1FF0A2386B10207101C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000004060001111D00042640000D
          4465001B6A86002C8FA01746B0D1394EAAF9233474A503070E15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010507000510121B22314C444752962427315803040507000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000005000000090000000900000009000000090000000A0000000A0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B000000090000000400000000000000000000
          0008030303350404044F04040451040404510404045105050552050505570606
          0658060606580606065806060658060606580505055805050558050505580505
          0558050505580505055805050558050505580505055805050558050505580505
          05580505055805050558050505580404044D0000001E00000002000000000909
          0926333333B2404040DA3F3F3FDA3F3F3FDA3F3F3FDA404040DC414141E04141
          41E1414141E1414141E1414141E1414141E1404040E1404040E1404040E14040
          40E1404040E1404040E1404040E1404040E1404040E1404040E1404040E14040
          40E1404040E1404040E1414141E1373737CE0C0C0C5000000004000000000F0F
          0F35535353DF6B6B6BFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6B6B6BFF5B5B5BF31616166500000004000000000808
          082B3B3B3BD7808080FF989898FF969696FF969696FF969696FF969696FF9696
          96FF969696FF969696FF969696FF969696FF969696FF979797FF979797FF9797
          97FF979797FF979797FF979797FF969696FF969696FF969696FF969696FF9696
          96FF969696FF979797FF8A8A8AFF484848EE0E0E0E5900000002000000000404
          041F3E3E3EC7BDBDBDFFEEEEEEFFEBEBEBFFE9E9E9FFE8E8E8FFE7E7E7FFE5E5
          E5FFE3E3E3FFE0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD6D6D6FFD6D6D6FFD8D8
          D8FFDBDBDBFFDFDFDFFFE4E4E4FFE7E7E7FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7
          E7FFE7E7E7FFEAEAEAFFC7C7C7FF4D4D4DE40808084400000001000000000303
          0314373737B5C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFDFDFDFFFCFCFCFFFAFAFAFFF7F7F7FFF1F1F1FFEBEBEBFFE3E3E3FFD7D7
          D7FFCBCBCBFFC1C1C1FFBFBFBFFFC9C9C9FFDCDCDCFFEDEDEDFFF6F6F6FFF7F7
          F7FFF7F7F7FFF9F9F9FFC6C6C6FF434343D40505053100000000000000000202
          020D2F2F2FA4B3B3B3FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE8E8E8FFD7D7D7FFDCDCDCFFE6E6
          E6FFF4F4F4FFE9E9E9FFD1D1D1FFB2B2B2FF9F9F9FFFAAAAAAFFCDCDCDFFEDED
          EDFFF7F7F7FFF8F8F8FFB6B6B6FF363636C10303032200000000000000000101
          01072727278FA4A4A4FEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFCACACAFF8C8C8CFF858585FFA5A5
          A5FFF5F5F5FFFFFFFFFFFEFEFEFFF4F4F4FFD3D3D3FFA8A8A8FF999999FFB5B5
          B5FFE3E3E3FFF5F5F5FFA6A6A6FF2C2C2CAD0202021600000000000000000000
          00032020207B949494F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF6D6D6DFF5D5D5DFF8989
          89FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFEAEAEAFFBDBDBDFFA3A3
          A3FFB6B6B6FFE2E2E2FF969696FD242424960101010D00000000000000000000
          00011A1A1A67848484F2F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF555555FF3E3E3EFF7979
          79FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFCBCB
          CBFFBABABAFFCACACAFF818181F71D1D1D7F0000000700000000000000000000
          000016161655767676EBEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAFF444444FF222222FF6767
          67FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4
          F4FFEBEBEBFFD5D5D5FF6D6D6DF0171717680000000300000000000000000000
          000012121244686868E2E6E6E6FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFCFCFCFFF373737FF0B0B0BFF5252
          52FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE1E1E1FF616161E6121212520000000000000000000000000000
          00000E0E0E345C5C5CD7DBDBDBFFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFCFC
          FCFFFCFCFCFFF6F6F6FFC7C7C7FFC8C8C8FFBFBFBFFF2E2E2EFF010101FF4848
          48FFE8E8E8FFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFFFFFFFFD9D9D9FF575757DA0D0D0D3E0000000000000000000000000000
          00000B0B0B26515151C8CECECEFFFAFAFAFFF8F8F8FFF8F8F8FFF9F9F9FFF8F8
          F8FFF9F9F9FFEEEEEEFF666666FF252525FF454545FF202020FF0E0E0EFF4C4C
          4CFFE3E3E3FFFBFBFBFFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFDFDFDFFCCCCCCFF4B4B4BC90909092D0000000000000000000000000000
          00000808081B474747B8C1C1C1FFF6F6F6FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6
          F6FFF7F7F7FFF2F2F2FF8B8B8BFF292929FF1E1E1EFF232323FF272727FF5D5D
          5DFFE2E2E2FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9
          F9FFFAFAFAFFC1C1C1FF424242B70606061F0000000000000000000000000000
          0000060606123F3F3FA6B4B4B4FFF3F3F3FFF3F3F3FFF3F3F3FFF4F3F3FFF4F3
          F4FFF4F4F4FFF4F3F4FFE3E3E3FFB8B8B8FF706F70FF434343FF444444FF7272
          72FFE3E2E3FFF6F6F6FFF5F5F5FFF6F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFB6B6B6FE383838A1030303130000000000000000000000000000
          00000303030B37373794A9A8A9FEF1F0F1FFF2F1F2FFF2F1F2FFF3F1F3FFF3F1
          F3FFF3F1F3FFF3F2F3FFF5F3F4FFF6F4F5FFD5D3D5FF8A898AFF787778FF9795
          97FFE6E4E6FFF6F4F5FFF5F3F5FFF5F3F5FFF5F3F4FFF5F3F5FFF6F4F5FFF6F4
          F6FFF5F3F5FFACABACFC2E2E2E8B0101010B0000000000000000000000000000
          000001010104303030807D8E7EFBA6CAAAFFADD2B2FFAFD5B5FFA9D5B0FFA9D7
          B1FFAADAB2FFA5DAAEFFA3DBADFFA4DCAEFFA3DCADFF9CD1A6FF99CDA3FF94CF
          A0FFA0DCACFFA4DFAFFFA4DFAFFFA4DEAFFFACDFB6FFACDEB5FFA4DBAEFFA4DA
          FDFFA4D4ABFF7C9280F625252573000000050000000000000000000000000000
          0000000000012929296C406C43F7409748FF6FB977FF72BF7CFF65BD71FF5BBE
          6AFF4DBC5FFF23B139FF13AF2CFF13B32FFF13B52FFF2DBF47FF50CB68FF43C8
          5DFF39C554FF3AC555FF1BBB39FF15B631FF3EC156FF4EC363FF3DBB53FF3AB6
          4FFF31A844FF3E7346F01D1C1D5C000000020000000000000000000000000000
          000000000000232223573D633FF0419146FF78BA7EFF74BC7DFF77C080FF6CC0
          78FF60BF6FFF2AAE3FFF00A21BFF00A61CFF00A91DFF19B435FF5AC970FF60CB
          74FF5ECB72FF54C769FF16B332FF04AB21FF3FBC56FF5DC36FFF64C274FF59BB
          68FF3CA44BFF3B6641E415141546000000010000000000000000000000000000
          0000000000001D1C1D46446145E9237928FF2A8B31FF299033FF2A9636FF2E9D
          3CFF269F36FF1A9F2EFF029B1AFF009E1AFF00A11BFF0FA92AFF43BC58FF46BD
          5BFF4ABF5FFF49BE5EFF18AC31FF05A31FFF36B24AFF47B558FF4DB45CFF4AB0
          59FF359843FF3C5C41D60F0D0F33000000000000000000000000000000000000
          00000000000016151633485D49DD116613FF006B05FF007309FF007A0BFF0D83
          16FF288B2FFF138D1EFF009014FF009416FF009718FF029A1BFF0A9F22FF0BA0
          23FF0CA024FF1AA32DFF2D9E3AFF1D972BFF0B981FFF0B951FFF0D911EFF1390
          22FF20842BFF3C523EC10A080A20000000000000000000000000000000000000
          0000000000000B0A0B16313F31950F530FDB005A02E5006005E4006607E42075
          20E8769371F8317F31EE00790EE4007C11E4008012E4008213E4008313E40083
          13E4008313E40D851AE56B996AF64F8B4FF4037D11E5007A0FE400750DE40072
          0CE513661BD929362A7D0504050B000000000000000000000000000000000000
          0000000000000100010105080514021302350017003E0019013E001A013D1930
          1A5B868D87CF374C3988001E023F0020043D0021043E0022053E0022053E0022
          053E0022053D08280C48758076BC5F6E60B002210647001F043D001F033E001D
          033E031704330407041000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          1927959595BF4443446100000001000000000000000000000000000000000000
          0000000000000807080D7F7F7FA7717071970303030C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001C1C
          1C269D9D9DBA4646465900000001000000000000000000000000000000000000
          0000000000000909090E868686A17373738C0303030900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F125454545F2323232800000000000000000000000000000000000000000000
          000000000000040404054646464F3B3B3B430101010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030303030101010100000000000000000000000000000000000000000000
          0000000000000000000003030303020202020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 288
    Top = 209
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
    Left = 776
    Top = 248
  end
  object cdsVerk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.Sales' +
        'RegionNo, C.PktNrLevKod'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6)'
      'OR (R.RoleType = 7))'
      ''
      'Order by C.clientName')
    Left = 840
    Top = 192
    object cdsVerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsVerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
    object cdsVerkSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
    object cdsVerkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object cds_PLIP: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct CY.CityName + '#39'/'#39' + RTRIM(LIP.LogicalInventoryNa' +
        'me) AS PLIP,'
      
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
      'FROM dbo.PHYSICALINVENTORYPOINT PH2'
      'WHERE PH2.OwnerNo = :LegoOwnerNo)'
      ''
      'Order By  CY.CityName, LIP.LogicalInventoryName')
    Left = 776
    Top = 192
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
      Origin = 'InvCode'
      ReadOnly = True
      Size = 54
    end
    object cds_PLIPLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_PLIPInvCode: TStringField
      FieldName = 'InvCode'
      Origin = 'InvCode'
      Size = 3
    end
    object cds_PLIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 896
    Top = 192
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsOwnerNoChange
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
      OnChange = cds_PropsSalesRegionNoChange
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
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cds_PropsOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cdsVerk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = dm_UserProps.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      ProviderFlags = []
      Lookup = True
    end
    object cds_PropsLengthVolUnitName: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthVolUnitName'
      LookupDataSet = dm_UserProps.mtLengthVolUnit
      LookupKeyFields = 'LengthVolUnitNo'
      LookupResultField = 'LengthVolUnitName'
      KeyFields = 'LengthVolUnitNo'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
    object cds_PropsLengthFormat: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthFormat'
      LookupDataSet = dm_UserProps.mtLengthFormat
      LookupKeyFields = 'LengthFormatNo'
      LookupResultField = 'LengthFormatName'
      KeyFields = 'LengthFormatNo'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_PropsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_PropsSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      Size = 50
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 896
    Top = 248
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdBoT
    PopupMenus = <>
    Left = 672
    Top = 717
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 702
    Top = 248
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 704
    Top = 192
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object pmFardigVara: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 473
    Top = 747
  end
  object pmRavara: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 425
    Top = 749
  end
  object cxImageListTabs: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 24707728
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          0009000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000070106042C020A
          0639000201240000001300000007000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003050F08312E622EA23E82
          3DC426572D98102B1868030E083F000101230000001200000008000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000206041E2754238F61B130F46ABA
          2CFF6BB542FA5EA749E83E803BC3215129940C251461030B073A000101200000
          0010000000060000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000201101B3D1B72529F32E75FB046FF6FAF
          50FFB7CA8FFFBFD799FF9BC96EFF7DBD56FA5BA447E73C7D39C2214E28910D25
          1561020B063A0001002000000010000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000080E231150498E2ED35EA850FE68BBC3FFAED9
          DCFFF8F8F4FFFEFDFCFFF2F3E6FFDCE3BFFFBBD18DFF98C365FF76B54DF8579E
          42E3387838BD1C4A258E091F115A020906360000001900000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000308150A393A7829B969A443FD969BB3FFBCCDF8FFECF2
          F5FFF5ECE2FFF8F2EBFFFEFBF9FFFFFBF8FFFDF4EAFFF3E9D2FFDAD9AAFFB8C8
          7CFF96BE5BFF76B44AF9559B41E3377436BC17391D7802080426000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001030804212B5E239A57AD39F674B599FFC4BDF1FFF5E7F6FFF3E9
          DCFFEBDCC7FFEBDBC7FFEDDDC9FFF4E5D3FFFAECDEFFFEEFE1FFFFEEDDFFFDE8
          D0FFEFDCB6FFD7CD93FFB6C16DFF91B850FF60A03EE923421881010200140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010302151D421B7954A531ED5FC570FF81F0E5FFD8F5F6FFF8EFE6FFEDDE
          CAFFEAD9C3FFEBD9C4FFEBD7BFFFEAD1B5FFEBD1B3FFEFD5B8FFF5DBBEFFFAE1
          C6FFFFE3C8FFFFE0C1FFECCEACFFD4BE8CFFA3B455FF5C902CDE15260C5A0000
          000A000000000000000000000000000000000000000000000000000000000000
          0009122B125A49942DD76BBD45FF8FEA97FFCBFBE2FFF2EEE4FFDBD0C4FFD2C6
          BAFFE4D0BAFFE4CFB8FFE4CEB5FFE4CAAFFFE4C7A8FFE7C8A5FFEBC9A3FFECC8
          A0FFF6D3AFFFF3D5B5FFD0B89AFFD2B899FFDFC795FF95B24AFD437222BB0911
          0537000000020000000000000000000000000000000000000000000000060918
          0B3E3E822AC378AF3BFDBCCA7DFFD9F3C0FFF4F4E6FFEFE0CEFFAFB0BAFF7483
          A8FFB9AEAAFFD8BFA7FFD7BB9FFFD7B99CFFD9BA9CFFDCBA98FFE0BC95FFEAC5
          9EFFF1D1AFFFD6BEA1FFC8B395FFEBCCACFFFEDCBAFFD7CA8EFF7CA83CF63155
          1A990306021E0000000100000000000000000000000000000000050E06242E66
          23A05BA342F9A0A181FFF4D3B9FFFCF2E6FFF2E7D9FFECDAC5FFB5B5BDFF7585
          FDFF8392B6FFB3A7A3FFD5B89AFFD5B596FFD5B290FFD7B38FFFDAB490FFE2BE
          9EFFD3B89DFFC2AD91FFDFC2A3FFF5D1ABFFFEDEBEFFFBE0C0FFBEC378FF679A
          31E81C320F6B0001000E000000000000000000000000000000001A3A16534F9F
          32DE5C8588FF9490E4FFEEE6F2FFFBF5EFFFEEDECDFFECDBC7FFBABEC4FFA3B8
          D3FFB7CEE8FF8DA4CAFFB0A6A6FFD6B698FFD6B28FFFD6B18CFFDFBD9DFFD2B5
          9CFFB8A189FFCCB095FFE4BE9AFFE4BB91FFF0CEAAFFFEE5CCFFF3DFBEFFA7BD
          64FF508227CE0F1D094A000000050000000000000000000000000D1C09232A52
          1A6F487058B38DAA9BE0DCECD3F9F4FAEFFFF9F7F1FFF7EEE6FFBECDDAFFB0D2
          F0FFDEF1FFFFC2DCF7FF8BA7D3FFAAA1A2FFD7B493FFDFBD9EFFD8BBA2FFBCA5
          8EFFC5AB92FFDCB897FFDAB28BFFD9B28CFFDCB893FFEDD1B6FFFBE6D3FFE4DA
          B2FF8BB24BFA3A651DAC050A0329000000020000000000000000000000000103
          0103091104151E32123D4767347A7C9E68B3B5D0A3E1DDEDD1F8BADCEAFFABD5
          F5FFCFEFFFFFBCEBFFFF9BD1F6FF769AC8FFC5B0A2FFDCBFA4FFBFA992FFC0A9
          91FFDCBB9DFFDCB691FFD8B28CFFD8B490FFD8B492FFD9B899FFE9D3BFFFF3E1
          D3FFCBCC97FF74A43BF226431483020301160000000000000000000000000000
          00000000000000000000010400050A14041A233715454C69367D619987C58AD0
          EBF9A1EDFFFF8AE3FFFF8EDCFFFF79B8EDFF9EA9BFFFCBB6A0FFBFAB93FFD9BC
          A1FFDCB794FFD7B18DFFD8B492FFD8B594FFD8B797FFD8B89AFFDCC0A6FFEAD8
          CCFFE8DACCFFAEBD77FF598D2BDB15280C5B0000000800000000000000000000
          00000000000000000000000000000000000000000000000300040B2B334254B3
          D0D788EFFFFF7DE3FFFF7EDBFFFF7FCAFBFF6F9CCEFFB3ACA3FFE5CCAFFFEAC9
          A6FFDCB690FFD9B591FFD8B594FFD8B799FFD8B99CFFD8BB9FFFD8BCA2FFDEC8
          B4FFEBDFD9FFE2DBC9FF9DBD65FE477623C00912053800000003000000000000
          000000000000000000000000000000000000000000000000000000090F0F2774
          939874E8FBFD77E7FFFF71DBFFFF79D1FFFF66A9E7FFA5AFC1FFF5DABCFFECCA
          A4FFE8C6A1FFE3C19EFFDEBF9EFFDBBC9FFFD8BCA0FFD8BDA3FFD8BEA6FFD8C0
          A8FFE2D3C7FFF5EFEFFFCFD8AEFF70A634F82D53178F04080214000000000000
          0000000000000000000000000000000000000000000000000000000000000931
          45484DC4E1E56EECFFFF66DCFFFF6BD3FFFF68BBF8FF7DA6D8FFEBDCD0FFF2D6
          B8FFEACCA9FFE9CBA9FFE7CAA9FFE6CBAEFFE1C7ACFFDCC4ABFFD9C2ACFFD8C1
          FDFFE0CFC0FFEDEBE1FFA2BE77FF67A81CFF4F881BCB0F1B072E000000000000
          000000000000000000000000000000000000000000000000000000000000010B
          12132583A4A95DE8FCFE5EE1FFFF5CD4FFFF64C5FEFF5CA2E8FFBAC4D1FFFCEB
          D7FFEED4B8FFEACFB1FFE8CEAFFFE8D0B3FFE9D3B9FFE8D3BCFFE3CFB9FFE2D0
          BFFFEDE5DBFFB7CA96FF6AA825FF62AB15FA39620D95070D0316000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          01010A3D55593EC8E4E954E7FFFF50D6FFFF56C9FFFF55AEF6FF6DA2C3FFE1E3
          CFFFFBEDDDFFECD5BBFFEAD4B9FFE8D2B7FFE9D4BCFFE9D6BFFFECDCC9FFF5ED
          E4FFCAD6B1FF74AC36FF62AF17FD477D11BA0E19032900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001121C1E1F8DAFB544E8FEFF46DBFFFF47CCFFFF51B8FEFF4495D0FE93BA
          A2FAF6F5E3FFF7EBDFFFEAD6BEFFE9D6BFFFE7D4BCFFEAD8C2FFF3E8DDFFDDE3
          CCFF81B24BFF63B11BFF529316D5192D06480001000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010303084762672ED1EEF23AE2FFFF3ACEFFFF43BFFFFF3F9EF0FD3E80
          90DEB7D0A7EBFBFBF5FFF3E8DBFFEAD8C3FFE9D7C0FFEFE1D1FFE7E9D9FF92BA
          66FF63B21FFF5BA51CEA24420966020400070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001162325179BBFC62BE6FEFF2FD3FFFF33C4FFFF3EABFDFF2471
          BBDB537E60B1D6E8C8F2FDFCF9FFF0E2D3FFEFE0CFFFF1ECE1FFA6C584FF67B3
          29FF60B220F6335F0F8E05090111000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000204050754737918D3F1F520DDFFFF25C8FFFF2FB4FFFF2B8C
          EAF516476996759664AFEBF6E4FCFDFAF8FFF5F1E9FFBBD0A1FF6BB332FF62BA
          24FC3F7715AD0B14032300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000011F2F3309A3C9CF10E2FEFF18CDFFFF1FBAFFFF2A9E
          FCFF1459ABC11F3C2F62A1BF8CCFF6FBF3FFD0DDBEFF76B645FF63BE27FF4C93
          1CCF1324063C0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000005090A025E808704D9F7FA0BD6FFFF10C0FFFF1FAA
          FFFF217FE3F0062A556C39542B65A8C991E784BC58FF63C02BFF56A723E21F3B
          0B5D010100030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000025383D00B0D6DD03DFFEFF06C5FFFF0FB4
          FFFF2497FAFF104FA0B50815182C3F6E238D64BF30F95FBA2BF52C5612800407
          010E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000060C0D016D919901DAF9FC00D1FFFF05BB
          FFFF28AAFFFF2D82DDED072048590E1D0726438520AA386F199E080F031B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000001010030474D01B7DCE30FDFFFFF4CD3
          FFFF92D9FFFF8ABDF2FE1D4178930103080D0C1805210A13041F000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000B131507779DA664DEF9FDBEE6
          FBFFB2CDEDF95E80B4CF0B1E3F52000103040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000102020939575F519EDAEF6391
          CFED315189A60817344400010507000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
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
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000400000003000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000040000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000020000000F02020229070707440A0A0A510A0A0A500707073F0101
          01220000000A0000000100000000000000000000000000000000000000000000
          000000000000000000000000000400000014040404320909094A0B0B0B530909
          094D050505370101011B00000006000000000000000000000000000000000000
          0004020202281010106E232322B02B2B2AD12E2D2CDC2F2E2EDB2E2E2ECC2424
          24A30D0D0D580101011700000001000000000000000000000000000000000000
          00000000000000000007050505331919197F2B2B2ABC2F2F2ED62E2E2DDD2D2C
          2BD9282827C31919199307070748000000110000000000000000000000040404
          042F1A1A1A9E2A2A29E924262AFE262A34FF2D3440FF2B3240FF262B35FF2E2F
          32FC343434D91616167401010115000000000000000000000000000000000000
          0000000000050707073A282828AF353535F1292B32FF2B303CFF323842FF2E33
          3CFF25282EFF292929F8262625CC0D0D0D640000000F000000000101011A1414
          148B252627F31F273DFF415788FF6D89C0FF809FD5FF7A98D3FF5D79B9FF3143
          76FF282C3AFF333333D90D0D0D4F000000040000000000000000000000000000
          00000303031B22222299333437F7273251FF51679FFF7F98CDFF91AAD9FF8AA3
          D1FF667CAAFF324162FF21252CFE222221CE0707074500000004070707491E1E
          1ED51B2847FF3C60BAFF648EF6FF6391FBFF5F8FFAFF5F8DFAFF5C88FBFF5177
          EDFF273E92FF2C303FFC21212095020202110000000000000000000000000000
          00000D0C0C46313132DB25325DFF4A6BD0FF769BFEFF749DFFFF739FFFFF75A1
          FFFF749EFFFF618AE9FF2A4681FF1F232BFA1312128E010101120B0B0B6C191D
          27EB1E419CFF386BF4FF3467F6FF2F61F4FF3366F4FF3667F4FF305FF4FF2B57
          F7FF2649DDFF232E66FF262525B40404041C0000000000000000000000000000
          0001131312602D303CEE2642ACFF466FFEFF4372FFFF3D71FFFF4579FFFF487B
          FFFF4578FFFF417AFFFF336BDFFF1A2F59FF151414B30202021E0B0B0A6F151D
          32ED1640BFFF1C50F2FF1E4CF1FF214CF1FF2751F1FF2B53F2FF2950F1FF143A
          F0FF0E2EDFFF1E2B76FF242424B90505051E0000000000000000000000000000
          0001131212642A2E42EF1F3CC0FF2B55FCFF2958FFFF2E5FFFFF3767FFFF3B6B
          FFFF3969FFFF235FFFFF1A5CF4FF15357BFF131314B7030303200F0E0E5A191C
          28E510298DFF163DDAFF1B3FEAFF1F3EECFF2444EEFF2947EEFF2844EBFF0D29
          DEFF061BAEFF222752FF292928B60606061C0000000000000000000000000000
          000116161661303139EE20328BFF2949E2FF284FF8FF2D55FDFF335CFFFF3961
          FFFF3660FDFF174BF6FF083CCDFF112556FE171817A404040415101010303333
          33C81A203FFF15278AFF1E33C0FF2336D2FF293CD8FF2D3FD6FF2031C5FF0817
          9DFF131A58FF2F3035FF2B2B2AB40606061A0000000000000000000000000000
          00011818185E383837ED2A2E45FF2C3B91FF3048CDFF3551E3FF3B58EBFF3F5B
          EBFF2B49DCFF092BB6FF091D65FF2B2E37F82525247701010106070707154444
          44A3535354FE282B3DFF1A2058FF1E2577FF242C85FF232B81FF151C65FF1A1E
          43FF303135FF2A2929FE1C1C1CA4040404130000000000000000000000000000
          00001111114E282828E6313131FF303240FF2A3263FF2F3B86FF344195FF2F3D
          90FF15226FFF131C49FF3A3C43FF5B5B5BE91E1E1E4B00000000010101042727
          2762686867EE686867FF545454FF494A4FFF4B4C54FF4B4C53FF424245FF3939
          38FF212120FF0F0F0FFB12121286010101090000000000000000000000000000
          00000A0A0A35161616D3131313FF302F2EFF3E3E3EFF48484DFF4E5057FF4B4C
          53FF4C4C50FF5E5D5DFF6D6D6CFE4D4D4DB70A0A0A1D00000000000000000A0A
          0A20474747BA5F5F5FFF5D5D5DFF6A6A6AFF808080FF777777FF3E3E3DFF0F0F
          0FFF020202FF151515F81919197A010101060000000000000000000000000000
          00000A0A0A2D222222CB080808FF050505FF202020FF5A5A59FF828281FF7777
          77FF616161FF5C5C5CFF5A5A5AEE262626680101010300000000000000000101
          01162A2A2AA3595959FD515151FF555555FF6D6D6DFF6A6A6AFF333333FF0808
          08FF030303FF212121F81C1C1C7B0000000B0000000000000000000000000000
          00010A0A0A312C2C2CC9101010FF010101FF161616FF4E4E4EFF727272FF6262
          62FF4F4F4FFF565656FF4A4A4AE40E0E0E580000000300000000000000000101
          0121191919C04F4F4FFF565656FF515151FF666666FF717171FF474747FF1414
          14FF050505FF222222FB1A1A1AB10000004C0000000E00000000000000020000
          0020080808762A2A2AE0121212FF050505FF282828FF5C5C5CFF6B6B6BFF5959
          59FF505050FF5B5B5BFF393939F50909097A0000000500000000000000000101
          010E1313139D3D3D3DFD575757FF525252FF696969FF7F7F7FFF5A5A5AFF1D1D
          1DFF060606FF1B1B1BFF0F0F0FF8010101CA0000004800000004000000130000
          007F030303E8191919FD101010FF090909FF363636FF696969FF6A6A6AFF5555
          55FF535353FF525252FF292929E8080808560000000100000000000000000000
          0002101010652F2F2FEF464646FF515151FF707070FF8D8D8DFF696969FF2626
          26FF070707FF0A0A0AFF030303FF010101FB01010194000000130000003A0101
          01CE010101FF060606FF080808FF0D0D0DFF414141FF707070FF6A6A6AFF5656
          56FF4D4D4DFF3D3D3DFF232323C5060606290000000000000000000000000000
          00000B0B0B32333333CF3C3C3CFF3F3F3FFF595959FF757575FF5C5C5CFF2A2A
          2AFF111111FF0C0C0CFF070707FF040404FF020202C700000033000000690202
          02EF050505FF090909FF0D0D0DFF171717FF3E3E3EFF606060FF575757FF4545
          45FF3C3C3CFF3C3C3CFC212121900202020C0000000000000000000000000000
          0000040404122F2F2FA04F4F4FFE444444FF3D3D3DFF3D3D3DFF353535FF2929
          29FF212121FF1B1B1BFF151515FF0F0F0FFF090909E102020258050505900C0C
          0CFB121212FF181818FF1E1E1EFF242424FF2E2E2EFF383838FF3B3B3BFF3E3E
          3EFF494949FF4A4A4AEE17171758000000010000000000000000000000000000
          0000000000031F1F1F66565656F35C5C5CFF535353FF484848FF3F3F3FFF3939
          39FF323232FF2C2C2CFF262626FF202020FF181818EE0808087E0F0F0FB11C1C
          1CFF222222FF282828FF2E2E2EFF343434FF3B3B3BFF424242FF4D4D4DFF5757
          57FF5D5D5DFF444444CA0A0A0A27000000000000000000000000000000000000
          00000000000010101031515151D4636363FF616161FF5D5D5DFF565656FF4D4D
          4DFF434343FF3C3C3CFF353535FF2F2F2FFF282828F6121212A11B1B1BC92B2B
          2BFF313131FF373737FF3E3E3EFF464646FF515151FF595959FF5F5F5FFF6363
          63FF676767FC373737930303030B000000000000000000000000000000000000
          0000000000000303030B3C3C3C8C727272F8707070FF696969FF626262FF5A5A
          5AFF525252FF4F4F4FFF4B4B4BFF434343FF353535FC1B1B1BD3252525E73C3C
          3CFF464646FF4D4D4DFF505050FF555555FF5C5C5CFF636363FF6D6D6DFF7878
          78FF686868DC1D1D1D4900000000000000000000000000000000000000000000
          00000000000000000000151515305F5F5FBB868686FE838383FF7A7A7AFF7171
          71FF646464FF5E5E5EFF5E5E5EFF575757FF3E3E3EFF343434FA353535FC4949
          49FF5B5B5BFF5E5E5EFF5E5E5EFF646464FF6E6E6EFF797979FF868686FF8181
          81F23F3F3F810606060F00000000000000000000000000000000000000000000
          00000000000000000000010101021D1D1D3A636363B68C8C8CF6939393FF8D8D
          8DFF7A7A7AFF6F6F6FFF6B6B6BFF626262FF515151FF545454FF4D4D4DFF5656
          56FF666666FF6B6B6BFF6F6F6FFF7A7A7AFF878787FF8E8E8EFF7F7F7FE54646
          46850B0B0B170000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010213131334474747C47B7B7BFF8E8E
          8EFF858585FF868686FF898989FF7D7D7DFF686868FF6C6C6CFF595959FF6D6D
          6DFF838383FF858585FF7D7D7DFF848484FF848484FF686868F82D2D2D850808
          0812000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000B131313943F3F3FFD5D5D
          5DFF5E5E5EFF6C6C6CFF979797FF969696FF747474FF737373FF606060FF8282
          82FF9C9C9CFF848484FF5B5B5BFF5F5F5FFF535353FF2E2E2EE8070707490000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002141414543A3A3AE44848
          48FF454545FF484848FC666666D56D6D6DBF646464D7707070FB5C5C5CF06666
          66C96C6C6CC1595959E9414141FF494949FF444444FC2C2C2CB20606061D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404040D232323633D3D
          3DB0444444BF373737981616163C0C0C0C191C1C1C42454545992E2E2E7B1010
          10270D0D0D1E24242463404040B1434343BF3535359713131336000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202050A0A
          0A180C0C0C1F060606100000000000000000010101020707070F0404040A0000
          000000000000020202050A0A0A180D0D0D1F0606061000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000040000000D000000160000001800000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0019000000190000001900000019000000190000001900000019000000190000
          0018000000120000000800000001000000000000000000000000000000000000
          00010000000B00000227020313500708246A080A2870090B2771090B2871090B
          2871090B2871090B2871090B2871090B2871080A2871080A2871080928710708
          2871070828710607287105062871050528710404287104042771040426710404
          246F020219600000063C00000016000000040000000000000000000000000000
          000B01010E3D0F1154922B2E9ED13A3EBCE83D42C1EC3E43C2EC3F44C4EC3F44
          C5EC3F44C7EC3F44C8EC3F44C9EC3E43CAEC3E42CCEC3D40CDEC3C3FCEEC3C3F
          CEEC3C3FCFEC3C3FCFEC3C3FCFEC3C3FD0EC3C40D0EC3D41CEEC3F43CDEC3F43
          CAEB3639B4E01B1D76B8040423650000021E0000000200000000000000040000
          0A2B12136B9F3334C3EF2E2FCAFF2121C4FF1E1EC6FF1E1ECAFF1E1ECDFF1E1E
          D0FF1E1ED3FF1E1ED7FF1E1EDAFF1E1EDDFF1E1EE0FF1E1EE3FF1E1EE6FF2021
          E8FF2427E9FF282BEAFF2C31EBFF2F35ECFF333BEDFF3640EDFF3A45EEFF3E4A
          EFFF4753F0FF4C56E6FC2B2F9DD1050526600000000E000000000000010D0606
          436B2324BDEB1717BDFF0302B6FF0000B9FF0000BDFF0000C1FF0000C4FF0000
          C8FF0000CCFF0000D0FF0000D3FF0000D7FF0000DBFF0000DEFF0000E2FF0002
          E4FF0608E5FF0B0FE6FF1016E7FF141CE8FF1822E9FF1D28EAFF212EEBFF2533
          ECFF2A39EDFF3646EFFF4551E7FD1D207FB701010B2C0000000200000A1C0D0D
          7BA21313BDFD0101B2FF0000B6FF0000BAFF0000BEFF0000C1FF0000C5FF0000
          C8FF0000CCFF0202D0FF1111D6FF2A2ADEFF4343E4FF4F4FE8FF4B4BEBFF3A3B
          EAFF2326E8FF1318E7FF1016E7FF141CE8FF1A24E9FF1E29EBFF232FEBFF2734
          ECFF2B3AEDFF2F3FEFFF394AEFFF2F38BDE60405275000000004000014240808
          8BB80404B3FF0000B2FF0000B6FF0000B9FF0000BDFF0000C0FF0000C5FF0202
          C9FF2222D2FF6464E2FFA9A9F0FFD4D4F8FFE8E8FCFFEEEEFDFFECECFDFFE1E1
          FCFFC4C4F9FF9092F4FF4C51EDFF2027E9FF1923E9FF1E29EAFF232FEBFF2835
          EDFF2C3BEDFF3040EFFF3447F0FF2D3AD1F20607396300000004000015250101
          85B90000B0FF0000B1FF0000B5FF0000B9FF0000BCFF0000C0FF0808C6FF4B4B
          D7FFB6B6F0FFEFEFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFBFFFFDBDDFCFF8E92F4FF353DECFF1D28EAFF222EEBFF2734
          ECFF2B3AEDFF2F40EFFF3446F0FF2835D1F305073A6500000005000014250000
          80B90000AFFF0000B0FF0000B4FF0000B8FF0000BBFF0808C1FF6363DAFFD9D9
          F6FFFFFFFFFFFFFFFFFFFBFBFEFFE4E4F8FFC5C5F1FFB3B3EEFFBABAF0FFD4D4
          F5FFF2F2FCFFFFFFFFFFFFFFFFFFF7F7FEFFAEB1F7FF4049EDFF212CEBFF2633
          ECFF2A39EDFF2E3FEEFF3345F0FF2634CDF30406386500000005000013250000
          7CB90000ACFF0000AFFF0000B3FF0000B7FF0303BBFF5050D2FFDBDBF6FFFFFF
          FFFFFFFFFFFFE8E8F8FF9898E5FF4C4CD9FF2424D6FF1919D9FF1C1CDDFF3333
          E0FF7071E6FFC7C7F3FFFBFBFEFFFFFFFFFFF8F9FEFFA9ADF7FF353FECFF2431
          ECFF2938EDFF2D3EEEFF3244EFFF2633CAF30406356500000005000012250000
          78B90303ABFF0505B0FF0606B3FF0404B7FF2C2CC5FFBDBDEEFFFFFFFFFFFFFF
          FFFFDCDCF4FF6565D9FF0F0FCEFF0000D2FF0000D7FF0000DBFF0000DFFF0000
          E1FF0607E1FF3335E2FFAAACEFFFF8F8FDFFFFFFFFFFF3F3FEFF7F86F3FF2834
          ECFF2735ECFF2C3BEEFF3142EEFF2432C6F30406346500000005000011250101
          75B90808AAFF0F0FB2FF1010B5FF1313BAFF7878D9FFF3F3FCFFFFFFFFFFF0F0
          FAFF7979DBFF1717CCFF0909D0FF0505D3FF0202D6FF0000D9FF0000DEFF0000
          E1FF0203E4FF0407E4FF3337E3FFBDBFF3FFFEFEFFFFFFFFFFFFC8CBFAFF414C
          EEFF2431ECFF2A39EDFF2F3FEDFF222FC3F30405326500000005000010250101
          70B90C0CA8FF1717B3FF1717B7FF2A2AC0FFB8B8EBFFFFFFFFFFFEFEFFFFB9B9
          EAFF3434CEFF2020D0FF2121D3FF1F1FD6FF1818D8FF0F0FDAFF0707DCFF0101
          DFFF0101E3FF0406E4FF090CE4FF5F62E8FFEDEDFBFFFFFFFFFFEEEFFDFF6C74
          F2FF222EECFF2835EDFF2C3BEBFF202CC1F3040532650000000500000F250101
          6DB91010A7FF1E1EB3FF1E1EB7FF4545C6FFDBDBF4FFFFFFFFFFF6F6FCFF8484
          DDFF2828CDFF2929D0FF2B2BD4FF2D2DD7FF2D2DDBFF2C2CDDFF2626DFFF1919
          E0FF0A0BE2FF0404E4FF0407E4FF292CE6FFC9CAF7FFFFFFFFFFFBFBFFFF8F94
          F4FF232FEBFF2431ECFF2837EAFF1E28C0F3040432650000000500000E250101
          68B91515A5FF2525B4FF2525B8FF5C5CCBFFE9E9F8FFFFFFFFFFECECFAFF6D6D
          D9FF2D2DCCFF3131D0FF3232D3FF3434D6FF3535DAFF3636DDFF3838E0FF3838
          E3FF3131E5FF2021E5FF0E0FE5FF1517E6FFABACF5FFFFFFFFFFFFFFFFFFA4A8
          F6FF252FEBFF202CEBFF2432E8FF1B25BEF3030431650000000500000D250101
          65B91919A3FF2C2CB4FF2C2CB8FF6363CCFFEBEBF8FFFFFFFFFFECECFAFF7070
          D9FF3434CCFF3838D0FF3939D3FF3A3AD6FF3B3BD9FF3F3FDCFF3F3FDFFF4040
          E2FF4242E5FF4242E8FF3637E8FF2C2DE8FFACADF6FFFFFFFFFFFFFFFFFFA5A8
          F5FF222AEAFF1C26EAFF202CE7FF1820BCF3030431650000000500000D250202
          61B91D1DA2FF3434B5FF3434B9FF5C5CC7FFE3E3F5FFFFFFFFFFF4F4FCFF8888
          DFFF3E3ECDFF4040D0FF4141D3FF4545D6FF7171E2FF9E9EEDFF8383E9FF5151
          E2FF4949E3FF4B4BE6FF4C4CE9FF5C5CECFFCECEFAFFFFFFFFFFFDFDFEFF9093
          F1FF191FE8FF1720E9FF1B24E5FF141CBAF3020330650000000500000C250202
          5EB92121A1FF3B3BB6FF3C3CBAFF5050C1FFCCCCEBFFFFFFFFFFFDFDFFFFB7B7
          EBFF4F4FCFFF4646CFFF4747D2FF5C5CD9FFCDCDF4FFFCFCFEFFE3E3FAFF7C7C
          E9FF4F4FE3FF5252E5FF5252E7FF8282EFFFEDEDFDFFFFFFFFFFF2F2FCFF6B6D
          ECFF0E13E6FF1218E8FF151DE3FF1016B8F3020330650000000500000C250202
          5BB926269FFF4343B7FF4444BBFF4949BEFFA2A2DAFFFAFAFCFFFFFFFFFFEBEB
          F9FF8484DDFF4F4FD0FF4E4ED1FF6C6CDBFFE4E4F9FFFFFFFFFFF5F5FDFF9494
          EBFF5757E1FF5858E4FF6A6AE8FFC2C2F6FFFDFDFFFFFFFFFFFFDDDDF7FF4F51
          E7FF0A0DE5FF0B0FE6FF0F14E1FF0B0FB6F3010230650000000500000B250202
          5AB92A2A9FFF4A4AB7FF4C4CBCFF4C4CBEFF7373C8FFDFDFF0FFFFFFFFFFFEFE
          FFFFD6D6F4FF8080DBFF5757D2FF7272DAFFE5E5F8FFFFFFFFFFF5F5FDFF9999
          EAFF5E5EE0FF6D6DE5FFB1B1F2FFF4F4FDFFFFFFFFFFFCFCFDFFB7B7EEFF6262
          E9FF2A2BE8FF080AE4FF0709DFFF0709B4F3010130650000000500000B250303
          59B92E2E9FFF5252B8FF5454BCFF5454BFFF5A5AC0FF9F9FD5FFF4F4F9FFFFFF
          FFFFFEFEFFFFDEDEF5FF8383DCFF7878DAFFE6E6F8FFFFFFFFFFF5F5FDFF9D9D
          EAFF7B7BE3FFC2C2F3FFF6F6FDFFFFFFFFFFFEFEFEFFDADAF2FF8585E5FF7070
          EBFF6262EBFF2828E5FF0303DDFF0102B2F300002F650000000500000C250303
          58B933339FFF5959B9FF5B5BBDFF5C5CBFFF5D5DC2FF6A6AC3FFB8B8DDFFF7F7
          FAFFFFFFFFFFFCFCFEFFA8A8E4FF7F7FDAFFE7E7F8FFFFFFFFFFF6F6FDFFA2A2
          E9FFABABEBFFF9F9FEFFFFFFFFFFFFFFFFFFE2E2F3FF9999E1FF7676E5FF7777
          E9FF7979EAFF6262E8FF1B1BDBFF0000ADF300002F650000000500000B250404
          56B93A3AA0FF6161BBFF6262BDFF6464C0FF6565C3FF6565C4FF7474C5FFB0B0
          D8FFE2E2EEFFD4D4E9FF8B8BD4FF8484D9FFE8E8F8FFFFFFFFFFF6F6FDFFA6A6
          E8FFA4A4E3FFEEEEF6FFF6F6FAFFD7D7EDFF9999DDFF7C7CE1FF7D7DE6FF7F7F
          E7FF8181E8FF8282E9FF5656DFFF0E0EABF300002E650000000500000B250606
          56B94444A3FF6969BCFF6969BEFF6A6AC0FF6C6CC3FF6E6EC5FF6E6EC7FF7474
          C5FF8585C8FF8181C9FF7474CDFF8A8AD9FFE9E9F8FFFFFFFFFFF7F7FCFFABAB
          E7FF8282D7FFA0A0D8FFA9A9D9FF8F8FD7FF8181DEFF8383E2FF8585E3FF8686
          E4FF8888E5FF8A8AE6FF7D7DE2FF2A2AACF300002C650000000500000B250909
          58B95050A8FF7070BDFF7171BFFF7272C1FF7373C3FF7474C5FF7676C8FF7676
          C9FF7777CAFF7878CDFF7A7ACFFF9191D8FFEBEBF8FFFFFFFFFFF7F7FDFFB0B0
          E7FF8282DAFF8383D8FF8484D9FF8787DDFF8A8AE0FF8B8BE0FF8D8DE1FF8E8E
          E2FF8F8FE3FF9191E4FF8C8CE1FF3C3CACF301012C650000000400000B241111
          5BB96060AFFF7777BEFF7878BFFF7979C2FF7A7AC4FF7B7BC6FF7D7DC8FF7E7E
          CAFF8080CCFF8181CEFF8282CFFF9696D8FFEBEBF8FFFFFFFFFFF7F7FCFFB2B2
          E5FF8A8AD9FF8C8CDBFF8E8EDCFF8F8FDDFF9191DEFF9292DFFF9494E0FF9595
          E1FF9696E1FF9898E1FF9696E0FF4E4EB0F306062E640000000400000A1F2323
          64B47272B6FF7E7EBFFF7F7FC1FF8080C3FF8282C5FF8383C7FF8585C9FF8686
          CBFF8888CDFF8989CEFF8A8AD0FF9393D2FFCDCDE5FFF0F0F5FFDCDCECFFA3A3
          DAFF9292D9FF9494DAFF9696DBFF9797DCFF9999DDFF9A9ADEFF9C9CDFFF9D9D
          DFFF9E9EDFFF9F9FDFFFA1A1DFFF7070BAF10F0F305D000000020000050F2828
          5A957E7EBBFD8686C0FF8686C2FF8787C4FF8989C6FF8A8AC8FF8C8CCAFF8D8D
          CBFF8F8FCDFF9090CFFF9292D0FF9292D1FF9B9BCEFFA9A9D0FFA1A1D1FF9898
          D5FF9A9AD8FF9B9BDAFF9D9DDBFF9E9EDBFFA0A0DCFFA1A1DDFFA3A3DDFFA4A4
          DDFFA5A5DEFFA6A6DDFFAEAEE0FF8484B6E10F0F233F00000000000000011111
          2B4B6E6EA5E09797C7FF9191C5FF8F8FC5FF9090C7FF9292C9FF9393CAFF9595
          CCFF9696CEFF9898CFFF9999D1FF9A9AD2FF9B9BD3FF9A9AD3FF9D9DD5FFA0A0
          D7FFA1A1D8FFA3A3D9FFA4A4DAFFA6A6DBFFA7A7DCFFA9A9DCFFAAAADCFFABAB
          DCFFADADDDFFB8B8E1FFBDBDDFFB57577A9F0303091300000000000000000101
          060D2D2D52798686B4E6ABABD2FFABABD2FFABABD3FFADADD5FFAEAED6FFB0B0
          D8FFB2B2D9FFB4B4DBFFB5B5DCFFB7B7DDFFB9B9DFFFBABAE0FFBCBCE1FFBDBD
          E2FFBFBFE3FFC1C1E4FFC2C2E5FFC4C4E5FFC5C5E6FFC6C6E6FFC8C8E6FFC9C9
          E7FFCFCFE9FFCCCCE4FA7B7B9ABA141424370000000100000000000000000000
          00000202070E1F1F3B575D5D83A98585A8CC9090B1D29292B2D29393B3D29595
          B4D29797B5D29898B6D29A9AB7D29C9CB8D29D9DB8D29F9FB9D2A0A0BAD2A1A1
          BBD2A3A3BCD2A5A5BDD2A6A6BDD2A6A6BDD2A7A7BED2A8A8BED2A9A9BED2A7A7
          BDD28F8FA8C050506B860F0F1C2B000000020000000000000000000000000000
          0000000000000000010205050E1810101F2D1616233216162332161624321717
          2432171724321818243218182432181825321818253219192532191925321919
          25321A1A25321A1A25321A1A26321A1A26321A1A26321A1A26321A1A26321919
          24310E0E19250101060B00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000200000005000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010004061900101A4A00070C320000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002001C3051005AA3D4004479B400101B4B0000000E000000000000
          00000000000000000000000000040000000D0001011D0005082F000A103E000C
          1445000C134300080E3A00030529000000180000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000007002E5377006DD9F8006DD6FA004C8AC30016255A000000120000
          0001000000050001011800090F3F001C306F00345C9D004880BB005598CC005B
          A3D3005BA1D1005494C8004579B3002F529100162661000509320000000F0000
          0002000000000000000000000000000000000000000000000000000000000000
          00000002040F00407496007DF2FD0077F1FF006FDDFD00569FD4001E346E0003
          052E000E194D002C4E90004E91CC0065BFEE0071D8FB0079E4FF007FEAFF0084
          EEFF0086EFFF0084EEFF007FE9FE0077DCF90065BBE7004780BC002038750006
          0A2F000000080000000000000000000000000000000000000000000000000000
          000000070C1C005391B1009EFCFF0099FEFF007CF3FF0070E0FE005BABDF003C
          6BB1005197D1006ACBF5006FDEFF0071E4FF007DEBFF0091F2FF00A3F6FF00AD
          F8FF00B1F9FF00ACF8FF00A0F5FF008FF0FF007DE8FF0073DDFE0062BAEA003D
          6FAD000F1A4B0000000F00000000000000000000000000000000000000000000
          0000000D182E0065ADC900A6FDFF00AEFFFF00A1FEFF0082F6FF0071E4FF006F
          D8FE006FDFFF0071E8FF007DF3FF0093FAFF00B0FEFF00C6FFFF00D2FFFF00D9
          FFFF00DBFFFF00D9FFFF00D2FFFF00C3FEFF00A8F9FF0087F1FF0072E5FF006D
          D6FB004E92CA00182B6000010110000000000000000000000000000000000000
          0000001627430074C4DC00A5FEFF00ACFFFF00B1FFFF00A8FFFF0087F7FF0073
          ECFF007DF3FF0098FCFF00B6FFFF00C8FFFF00D2FFFF00D7FFFF00D9FFFF00DB
          FFFF00DDFFFF00DDFFFF00DDFFFF00DBFFFF00D3FFFF00BDFFFF0096F9FF0078
          EDFF006EDCFD00539AD0001525560000000B0000000000000000000000000000
          000100223D5D0080D9EB00A5FFFF00AAFFFF00AEFFFF00B3FFFF00AEFFFF009F
          FEFF00AFFFFF00C2FFFF00C9FFFF00CCFFFF00CFFFFF00D2FFFF00D4FFFF00D6
          FFFF00D7FFFF00D8FFFF00D7FFFF00D7FFFF00D6FFFF00D3FFFF00CAFFFF00AC
          FDFF0082F3FF0071DFFE004A8BC0000E183E0000000300000000000000000000
          0006002F55790089E8F500A3FFFF00A8FFFF00ACFFFF00B0FFFF00B4FFFF00B8
          FFFF00BDFFFF00C0FFFF00C4FFFF00C7FFFF00CAFFFF00CDFFFF00CFFFFF00D0
          FFFF00D2FFFF00D2FFFF00D2FFFF00D1FFFF00D0FFFF00CEFFFF00CDFFFF00C9
          FFFF00B2FEFF0087F4FF006BD2F6003460950003051700000000000000000002
          030F003F73980091F4FD00A1FFFF00A5FFFF00A9FFFF00ADFFFF00B1FFFF00B5
          FFFF00B9FFFF00BCFFFF00C0FFFF00C3FFFF00C6FFFF00C8FFFF00CAFFFF00CB
          FFFF00CDFFFF00CDFFFF00CDFFFF00CCFFFF00CBFFFF00C9FFFF00C7FFFF00C5
          FFFF00C2FFFF00AFFEFF0083F0FF005BB2DE0014254C00000004000000000005
          0A1B005091B40093FAFF009EFFFF00A1FFFF00A5FFFF01AAFFFF02AEFFFF04B3
          FFFF06B7FFFF07BBFFFF08BEFFFF08C0FFFF08C3FFFF08C5FFFF06C7FFFF05C7
          FFFF03C8FFFF02C8FFFF01C9FFFF00C7FFFF00C6FFFF00C4FFFF00C3FFFF00C0
          FFFF00BDFFFF00BBFFFF00A3FCFF0077E0FA00315D8C0002031200000000000B
          142C005FAECD0093FDFF019AFFFF05A0FFFF0BA6FFFF11ACFFFF16B1FFFF18B5
          FFFF19B9FFFF1ABBFFFF19BEFFFF19C1FFFF15C1FFFF0DBBFDFF07AEF6FF059D
          E5FB048DC6E30599D0E108B4EFF60AC2FEFF07C3FFFF03C0FFFF00BEFFFF00BB
          FFFF00B9FFFF00B7FFFF00B2FFFF0091F5FF004E95BF000B142E000000010013
          2341016DC7E10895FEFF16A0FFFF21A7FFFF26ADFFFF28B1FFFF28B4FFFF28B7
          FFFF28BAFFFF27BCFFFF27BFFFFF27C1FFFF1CBEFFFF06A1FBFF007DE8FF006E
          D2FA004885C5002A467B034A6E850A8CC5D317BCF9FD19C1FFFF0DBDFFFF04B8
          FFFF00B5FFFF00B2FFFF00B0FFFF00A3FDFF0066BCDB0016294C00000003001E
          395C0A7CDBEF29A2FFFF36AAFFFF37ADFFFF37B0FFFF36B3FFFF35B6FFFF35B8
          FFFF35BAFFFF34BCFFFF34BEFFFF34C0FFFF31C1FFFF20B6FFFF0891F7FF0074
          E6FF0067CCF6003C74AC0008102A001E323F0C78AFC026BAF8FC2CC1FFFF22BC
          FFFF0FB4FFFF02AEFFFF00ABFFFF00A7FFFF007BD3E80022416500000008002B
          53791689E9F83FACFFFF45AEFFFF44B0FFFF43B3FFFF43B5FFFF43B7FFFF42B9
          FFFF42BCFFFF41BDFFFF41BFFFFF41C1FFFF41C2FFFF3EC3FFFF2CBAFFFF0E98
          F9FF0076E8FF005CB4DE00101E370000000101243B4C178CCADA38C0FEFF3CC0
          FFFF34BCFFFF1EB2FFFF06A8FFFF00A3FFFF0086DFED002B4E6F00020412013B
          70982496F4FD4FB3FFFF52B4FFFF51B4FFFF50B5FFFF50B7FFFF50B9FFFF4FBB
          FFFF4FBDFFFF4EBFFFFF4EC0FFFF4EC2FFFF4DC3FFFF4DC4FFFF4CC5FFFF3CBE
          FFFF179EFBFF0369C4E10011223B000000000003071109517E9D38B6F7FD49C1
          FFFF49C0FFFF45BCFFFF2BB1FFFF09A2FFFF0087E2EE002E517100070D21034B
          8DB334A2FAFF5EB9FFFF5EB9FFFF5EB9FFFF5DB9FFFF5DBAFFFF5DBCFFFF5CBD
          FFFF5BBFFFFF5BC0FFFF5BC2FFFF5BC3FFFF5BC5FFFF5AC6FFFF59C5FFFF54C3
          FEFF3CB8FCFF0F7DC6DB0013243700000000000204180343729F33AEF5FD56C2
          FFFF55C1FFFF55BFFFFF51BCFFFF31AEFFFF0787E2EE002D5171000C1934075D
          A9CA49ADFDFF6CBFFFFF6BBFFFFF6BBFFFFF6ABFFFFF6ABEFFFF6ABFFFFF6AC0
          FFFF6AC2FFFF69C3FFFF67C3FFFF62C2FFFF57BDFCFF4AB2F3FA369DDEE92483
          BFCE146297A80536596A00060C110000000900122557025EACD935ADFAFF62C4
          FFFF63C3FFFF62C1FFFF62BFFFFF5BBBFFFF2791E2EE022D5171001224410E6C
          BDD85EB8FEFF79C5FFFF78C4FFFF78C5FFFF78C5FFFF78C5FFFF76C3FFFF70C1
          FEFF66BCFCFF57B2F5FB419FE4EE2B84C5D519649BAD0C446F80042844520014
          232D00070E140000010700000013000C174C00407FBE0577DEFB44B1FDFF70C6
          FFFF6FC5FFFF6FC3FFFF6EC2FFFF6DC1FFFF3D97DEEC042A4C6A001428441C77
          C4DA74C3FFFF87CBFFFF85CAFFFF7FC7FFFF73C0FCFF62B4F6FC4A9EE2EC3383
          C5D41C629CAF0D437183042745540112232D00060D1200010305000000070000
          001B0002052E00091248001E3B8100468BCC006AD3FB1289F0FF63BEFFFF7EC9
          FFFF7CC7FFFF7CC7FFFF7CC6FFFF77C4FFFF388BCFE1021D3751001428412A7F
          C5DA77C2FDFF71BCF7FC55A5E7F13B8ACBDA2367A2B412477688062A4A590115
          2833000811170002040700000000000000000000000000000000000A1533002B
          5699003A74BC004890D2005FBCF0006DD8FE0478E8FF3EA5FBFF84CAFFFF8ACC
          FFFF89CBFFFF88CBFFFF88CCFFFF7CC5FEFF2972B0C7000E1D2F000C18241251
          869D2468A3B51348788B062A4B5C0114273300070F1500010406000000000000
          0000000000000000000000000000000000000000000000000001001B3659005D
          BAE9006DD9FF006EDBFF006FDFFF0477E8FF349DF9FF81C8FFFF97D2FFFF96D2
          FFFF96D1FFFF95D1FFFF96D1FFFF71BBF5FC124978930003070F000103040009
          13190009131A0002050800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001001D3A5C0062
          C6EC0172E4FF0477E8FF1687F1FF48A8FBFF8BCCFFFFA3D7FFFFA3D7FFFFA2D6
          FFFFA2D6FFFFA2D6FFFF9BD3FFFF4B95D3E5041E374C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001011F3D5C2181
          D7EC49A8FBFF60B5FDFF87CAFFFFA8D9FFFFB1DDFFFFB0DDFFFFAFDDFFFFAFDD
          FFFFAFDCFFFFAFDDFFFF7EBFF3FB1A50819B0004091100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000102213E5C5AA0
          DAECB4DFFFFFBCE2FFFFBEE3FFFFBDE2FFFFBCE2FFFFBCE2FFFFBBE1FFFFBBE1
          FFFFBCE2FFFFA0D3FCFF3979B3C9021529390000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000102203E5C65A5
          DAECC8E8FFFFCAE8FFFFCAE8FFFFC9E8FFFFC9E8FFFFC8E8FFFFC8E7FFFFC9E8
          FFFFADD9FCFF4D8DC5D905223F52000102040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000103203E5C6AA8
          DAECD2ECFFFFD6EDFFFFD5EDFFFFD5ECFFFFD5ECFFFFD6EEFFFFD1EBFFFFAAD6
          F9FE4988BED20928475B00020508000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000103203E5C71AA
          DAECDFF2FFFFE3F3FFFFE2F3FFFFE3F3FFFFDEF1FFFFC5E4FDFF84B8E5F03067
          9AB0031A32420001030500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003203D5972AB
          DBEDDFF1FEFFDFF0FEFFD2EAFDFFB7D9F6FC82B4E0ED437AADC110355A6E000B
          1720000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001142737316B
          A0B66096C5D45589B8C83C6F9EB11E4C788C08264455000B1821000002040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000030508000F
          1E28001427330010202B0008131B0002060A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000050000001B0606064E1010106E040404430000
          0015000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000009000000270F0F0F67565656BB838383DE3D3D3DAD0A0A
          0A5A0000001F0000000600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000140404043F2323238E686869DBCCCCCCFDE7E7E7FFA7A7A7FA5959
          59D11A1A1A7E020202360000000E000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          00200C0C0C5C393939B07C7C7CEEB1B1B1FFE5E5E6FFEEEEEEFFC9C9C9FFAAAA
          AAFE737373E6303030A20707074E0000001A0000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000F030303371D1D
          1D80595959D38F8F8FFAA8A8A9FFB7B7B8FFE2E2E3FFECECECFFC6C6C6FFB9B9
          B9FFB0B0B0FF8E8E8EF74E4E4EC5161616730101012D0000000C000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000050000001B08080850262626A56565
          65E7979798FEA2A2A3FFA5A5A6FFB8B8B9FFE8E8E9FFF7F7F7FFD5D5D5FFB8B8
          B8FFB2B2B2FFB1B1B1FF9D9D9DFC6B6B6BDF2929299406060645000000140000
          0004000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000C0101012E181818744C4C4CC7595959F77B7B
          7BFF9D9D9EFFA1A1A2FFB9B9BAFFE2E2E3FFFCFCFCFFFFFFFFFFF8F8F8FFDCDC
          DCFFB9B9B9FFAEAEAEFFADADADFFA6A6A6FF848484F2464646BB0F0F0F650000
          0026000000080000000100000000000000000000000000000000000000000000
          00000000000400000015070707462B2B2B96656565E1868687FD676768FF7777
          78FFA4A4A4FFC8C8C8FFEFEFEFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
          FBFFE5E5E5FFC2C2C2FFAAAAAAFFA7A7A7FFA5A5A5FF8E8E8EFB515151D62020
          20880404043A0000001100000002000000000000000000000000000000000000
          00010101011A13131361464647BD767677F3888889FF888889FF686869FF9292
          93FFDCDCDDFFF0F0F0FFF7F7F7FFFCFCFCFFFFFFFFFFFFFFFFFFFCFCFCFFF4F4
          F4FFEFEFEFFFEAEAEAFFCDCDCDFFACACACFFA2A2A2FF989898FF7F7F7FFF7373
          73EE3E3E3EAD0E0E0E5400000012000000010000000000000000000000000000
          00031515154B5C5C5DCB838384FB888889FF888889FF939394FF858586FFB2B2
          B2FFF1F1F1FFE2E2E2FFE7E7E7FFF1F1F1FFF6F6F6FFF6F6F6FFF1F1F1FFE7E7
          E7FFDCDCDCFFD7D7D7FFD4D4D4FFCCCCCCFFB2B2B2FF949494FF7E7E7EFF8E8E
          8EFF888888F8535353BC0C0C0C35000000020000000000000000000000000000
          000633333373929293F48E8E8FFF89898AFFA3A3A4FFCBCBCCFFA3A3A3FF6F6F
          6FFFB0B0B0FFD4D4D4FFD8D8D8FFDFDFDFFFE4E4E4FFE3E3E3FFDFDFDFFFD7D7
          D7FFC7C7C7FF9A9A9AFF646464FF9B9B9BFFD8D8D8FFB3B3B3FF7D7D7DFF8888
          88FF999999FF8C8C8CEC21212155000000030000000000000000000000000000
          00083E3E3E7F9C9C9DF7949495FFA9A9AAFFC9C9C9FFBEBEBEFFA3A3A3FF8B8B
          8BFF7D7D7DFF9A9A9AFFBDBDBDFFCECECEFFD2D2D2FFD2D2D2FFCDCDCDFFBBBB
          BBFF8C8C8CFF676767FF777777FF9D9D9DFFBCBCBCFFC2C2C2FF989898FF8E8E
          8EFF9C9C9CFF9D9D9DEF2828285C000000030000000000000000000000000000
          000842424280ABABABF8C8C8C8FFDADADAFFB5B5B5FFA0A0A0FFA0A0A0FFA6A6
          A6FFA6A6A6FF9B9B9BFF9B9B9BFFB4B4B4FFC7C7C7FFC8C8C8FFB3B3B3FF9393
          93FF8F8F8FFFA4A4A4FFB1B1B1FFACACACFF9D9D9DFF929292FF9A9A9AFFAEAE
          AEFFACACACFFA3A3A3EF2B2B2B5C000000020000000000000000000000000000
          000540404077C5C5C5F7F8F8F8FFF8F8F8FFD4D4D4FFB1B1B1FFADADADFFB4B4
          B4FFB8B8B8FFBABABAFFB2B2B2FFADADADFFB6B6B6FFB2B2B2FFACACACFFBBBB
          BBFFBEBEBEFFBABABAFFB9B9B9FFA5A5A5FF8F8F8FFF949494FFA5A5A5FFBABA
          BAFFBEBEBEFFA7A7A7EF2A2A2A55000000010000000000000000000000000000
          00012929294B939393D6DADADAFEF8F8F8FFF8F8F8FFE2E2E2FFCACACAFFC0C0
          C0FFBFBFBFFFBFBFBFFFBEBEBEFFB7B7B7FFB3B3B3FFAAAAAAFFC8C8C8FFDCDC
          DCFFC2C2C2FFBEBEBEFFC3C3C3FFACACACFF9E9E9EFFB6B6B6FFBEBEBEFFBDBD
          BDFFB1B1B1FC7C7C7CC719191931000000000000000000000000000000000000
          00000606060C2D2D2D50797979BBC1C1C1F6EEEEEEFFF9F9F9FFE6E6E6FFCECE
          CEFFC5C5C5FFBBBBBBFFAAAAAAFFAEAEAEFFBDBDBDFFBEBEBEFFB3B3B3FFB8B8
          B8FFC2C2C2FFC4C4C4FFC8C8C8FFAFAFAFFFABABABFFC5C5C5FFBFBFBFFFA7A7
          A7F26A6A6AAA2626264203030306000000000000000000000000000000000000
          000000000000000000011515152650505084A1A1A1E0DCDCDCFEF3F3F3FFE2E2
          E2FFB2B2B2FF939393FFA4A4A4FFC1C1C1FFCACACAFFCBCBCBFFC5C5C5FFAEAE
          AEFF999999FFA6A6A6FFC3C3C3FFAFAFAFFFACACACFFBCBCBCFD8D8D8DD44646
          46740E0E0E1A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707070D313131527B7B7BB9B9B9B9F7BDBD
          BDFFA3A3A3FFADADADFFC9C9C9FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFCECE
          CEFFB7B7B7FF8B8B8BFF979797FFABABABFF969696F2707070AD272727420505
          0509000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001151515243D3D3D867171
          71DFC1C1C1FEDBDBDBFFD8D8D8FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD6D6D6FFC6C6C6FFB0B0B0FFA8A8A8FD585858A811111123000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000606060E2E2E
          2E517E7E7EBBBABABAF6D4D4D4FFDBDBDBFFDCDCDCFFDBDBDBFFDCDCDCFFDCDC
          DCFFD3D3D3FFB4B4B4F2A3A3A3E4A5A5A5F73F3F3F8801010109000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010117171726555555849E9E9EE0C7C7C7FEDBDBDBFFE1E1E1FFDEDEDEFFCCCC
          CCFC989898D24A4A4A785959598A9F9F9FF0404040890101010A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707070C353535527D7D7DB9B9B9B9F7D2D2D2FFBBBBBBF07575
          75A82929293F0505050D4B4B4A729F9F9FF0404040890101010B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000300000005010100091717172E5757568C7E7E7DBE4C4C4B751010
          101D000000020000000B4747477A959599F13D3D3E8C0101010D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          00150000012A0001053D0001094900000A4D080810571212175F050507410000
          002E0000002A0002073E213561A44353A5F71F2A5B9D01030615000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000E010307360512
          2C6F091F5AA1081E75BE06137ECC02067CD2000270CF00035DC500074EB9000D
          48AA001349A0002372B5033FC4EB0424C0FF0A2284B102070F1C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000E020912440F356EA41854
          C3E3164DDCF91038D7FF091FC9FF0208BAFF0004ACFF00089FFF001097FE001F
          A5FB0031BEF80145DFFC0448E6FF0324C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000402091236123F83AC2072EEF71F6C
          F7FF1752E8FF1039D8FF091FC9FF0208BAFF0004ACFF00089FFF00109AFF001F
          ACFF0034CAFF0248E6FF0649E5FF0424C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102070B2A566C1E69D8E02070E9EA1B60
          DDE5154ACFE60F34C9EE091DC4FA0208BAFF0004ACFF00089FFF00109AFF001F
          ACFF0034C9FF0248E6FF0649E5FF0424C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001020506081E3D400C2A575809214446071A
          3C3F0614394005114351040E6381020691CA0004A6F800089FFF00109AFF001F
          ACFF0034C9FF0147E6FF0548E5FF0324C0FF0A2286B20207101D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000010100000000000000000000
          00000000000000000000000005070001233300025581000676C0000E89E5001E
          A5F40033C8FC0047E6FF0347E5FF0425C1FF0A2386B10207101C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000004060001111D00042640000D
          4465001B6A86002C8FA01746B0D1394EAAF9233474A503070E15000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010507000510121B22314C444752962427315803040507000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000005000000090000000900000009000000090000000A0000000A0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
          000B0000000B0000000B0000000B000000090000000400000000000000000000
          0008030303350404044F04040451040404510404045105050552050505570606
          0658060606580606065806060658060606580505055805050558050505580505
          0558050505580505055805050558050505580505055805050558050505580505
          05580505055805050558050505580404044D0000001E00000002000000000909
          0926333333B2404040DA3F3F3FDA3F3F3FDA3F3F3FDA404040DC414141E04141
          41E1414141E1414141E1414141E1414141E1404040E1404040E1404040E14040
          40E1404040E1404040E1404040E1404040E1404040E1404040E1404040E14040
          40E1404040E1404040E1414141E1373737CE0C0C0C5000000004000000000F0F
          0F35535353DF6B6B6BFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C6CFF6C6C
          6CFF6C6C6CFF6C6C6CFF6B6B6BFF5B5B5BF31616166500000004000000000808
          082B3B3B3BD7808080FF989898FF969696FF969696FF969696FF969696FF9696
          96FF969696FF969696FF969696FF969696FF969696FF979797FF979797FF9797
          97FF979797FF979797FF979797FF969696FF969696FF969696FF969696FF9696
          96FF969696FF979797FF8A8A8AFF484848EE0E0E0E5900000002000000000404
          041F3E3E3EC7BDBDBDFFEEEEEEFFEBEBEBFFE9E9E9FFE8E8E8FFE7E7E7FFE5E5
          E5FFE3E3E3FFE0E0E0FFDDDDDDFFDADADAFFD7D7D7FFD6D6D6FFD6D6D6FFD8D8
          D8FFDBDBDBFFDFDFDFFFE4E4E4FFE7E7E7FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7
          E7FFE7E7E7FFEAEAEAFFC7C7C7FF4D4D4DE40808084400000001000000000303
          0314373737B5C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFDFDFDFFFCFCFCFFFAFAFAFFF7F7F7FFF1F1F1FFEBEBEBFFE3E3E3FFD7D7
          D7FFCBCBCBFFC1C1C1FFBFBFBFFFC9C9C9FFDCDCDCFFEDEDEDFFF6F6F6FFF7F7
          F7FFF7F7F7FFF9F9F9FFC6C6C6FF434343D40505053100000000000000000202
          020D2F2F2FA4B3B3B3FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE8E8E8FFD7D7D7FFDCDCDCFFE6E6
          E6FFF4F4F4FFE9E9E9FFD1D1D1FFB2B2B2FF9F9F9FFFAAAAAAFFCDCDCDFFEDED
          EDFFF7F7F7FFF8F8F8FFB6B6B6FF363636C10303032200000000000000000101
          01072727278FA4A4A4FEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFCACACAFF8C8C8CFF858585FFA5A5
          A5FFF5F5F5FFFFFFFFFFFEFEFEFFF4F4F4FFD3D3D3FFA8A8A8FF999999FFB5B5
          B5FFE3E3E3FFF5F5F5FFA6A6A6FF2C2C2CAD0202021600000000000000000000
          00032020207B949494F9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF6D6D6DFF5D5D5DFF8989
          89FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFEAEAEAFFBDBDBDFFA3A3
          A3FFB6B6B6FFE2E2E2FF969696FD242424960101010D00000000000000000000
          00011A1A1A67848484F2F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6FF555555FF3E3E3EFF7979
          79FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFCBCB
          CBFFBABABAFFCACACAFF818181F71D1D1D7F0000000700000000000000000000
          000016161655767676EBEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAFF444444FF222222FF6767
          67FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4
          F4FFEBEBEBFFD5D5D5FF6D6D6DF0171717680000000300000000000000000000
          000012121244686868E2E6E6E6FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFCFCFCFFF373737FF0B0B0BFF5252
          52FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE1E1E1FF616161E6121212520000000000000000000000000000
          00000E0E0E345C5C5CD7DBDBDBFFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFCFC
          FCFFFCFCFCFFF6F6F6FFC7C7C7FFC8C8C8FFBFBFBFFF2E2E2EFF010101FF4848
          48FFE8E8E8FFFEFEFEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFFFFFFFFD9D9D9FF575757DA0D0D0D3E0000000000000000000000000000
          00000B0B0B26515151C8CECECEFFFAFAFAFFF8F8F8FFF8F8F8FFF9F9F9FFF8F8
          F8FFF9F9F9FFEEEEEEFF666666FF252525FF454545FF202020FF0E0E0EFF4C4C
          4CFFE3E3E3FFFBFBFBFFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
          FBFFFDFDFDFFCCCCCCFF4B4B4BC90909092D0000000000000000000000000000
          00000808081B474747B8C1C1C1FFF6F6F6FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6
          F6FFF7F7F7FFF2F2F2FF8B8B8BFF292929FF1E1E1EFF232323FF272727FF5D5D
          5DFFE2E2E2FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9
          F9FFFAFAFAFFC1C1C1FF424242B70606061F0000000000000000000000000000
          0000060606123F3F3FA6B4B4B4FFF3F3F3FFF3F3F3FFF3F3F3FFF4F3F3FFF4F3
          F4FFF4F4F4FFF4F3F4FFE3E3E3FFB8B8B8FF706F70FF434343FF444444FF7272
          72FFE3E2E3FFF6F6F6FFF5F5F5FFF6F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFB6B6B6FE383838A1030303130000000000000000000000000000
          00000303030B37373794A9A8A9FEF1F0F1FFF2F1F2FFF2F1F2FFF3F1F3FFF3F1
          F3FFF3F1F3FFF3F2F3FFF5F3F4FFF6F4F5FFD5D3D5FF8A898AFF787778FF9795
          97FFE6E4E6FFF6F4F5FFF5F3F5FFF5F3F5FFF5F3F4FFF5F3F5FFF6F4F5FFF6F4
          F6FFF5F3F5FFACABACFC2E2E2E8B0101010B0000000000000000000000000000
          000001010104303030807D8E7EFBA6CAAAFFADD2B2FFAFD5B5FFA9D5B0FFA9D7
          B1FFAADAB2FFA5DAAEFFA3DBADFFA4DCAEFFA3DCADFF9CD1A6FF99CDA3FF94CF
          A0FFA0DCACFFA4DFAFFFA4DFAFFFA4DEAFFFACDFB6FFACDEB5FFA4DBAEFFA4DA
          FDFFA4D4ABFF7C9280F625252573000000050000000000000000000000000000
          0000000000012929296C406C43F7409748FF6FB977FF72BF7CFF65BD71FF5BBE
          6AFF4DBC5FFF23B139FF13AF2CFF13B32FFF13B52FFF2DBF47FF50CB68FF43C8
          5DFF39C554FF3AC555FF1BBB39FF15B631FF3EC156FF4EC363FF3DBB53FF3AB6
          4FFF31A844FF3E7346F01D1C1D5C000000020000000000000000000000000000
          000000000000232223573D633FF0419146FF78BA7EFF74BC7DFF77C080FF6CC0
          78FF60BF6FFF2AAE3FFF00A21BFF00A61CFF00A91DFF19B435FF5AC970FF60CB
          74FF5ECB72FF54C769FF16B332FF04AB21FF3FBC56FF5DC36FFF64C274FF59BB
          68FF3CA44BFF3B6641E415141546000000010000000000000000000000000000
          0000000000001D1C1D46446145E9237928FF2A8B31FF299033FF2A9636FF2E9D
          3CFF269F36FF1A9F2EFF029B1AFF009E1AFF00A11BFF0FA92AFF43BC58FF46BD
          5BFF4ABF5FFF49BE5EFF18AC31FF05A31FFF36B24AFF47B558FF4DB45CFF4AB0
          59FF359843FF3C5C41D60F0D0F33000000000000000000000000000000000000
          00000000000016151633485D49DD116613FF006B05FF007309FF007A0BFF0D83
          16FF288B2FFF138D1EFF009014FF009416FF009718FF029A1BFF0A9F22FF0BA0
          23FF0CA024FF1AA32DFF2D9E3AFF1D972BFF0B981FFF0B951FFF0D911EFF1390
          22FF20842BFF3C523EC10A080A20000000000000000000000000000000000000
          0000000000000B0A0B16313F31950F530FDB005A02E5006005E4006607E42075
          20E8769371F8317F31EE00790EE4007C11E4008012E4008213E4008313E40083
          13E4008313E40D851AE56B996AF64F8B4FF4037D11E5007A0FE400750DE40072
          0CE513661BD929362A7D0504050B000000000000000000000000000000000000
          0000000000000100010105080514021302350017003E0019013E001A013D1930
          1A5B868D87CF374C3988001E023F0020043D0021043E0022053E0022053E0022
          053E0022053D08280C48758076BC5F6E60B002210647001F043D001F033E001D
          033E031704330407041000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          1927959595BF4443446100000001000000000000000000000000000000000000
          0000000000000807080D7F7F7FA7717071970303030C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001C1C
          1C269D9D9DBA4646465900000001000000000000000000000000000000000000
          0000000000000909090E868686A17373738C0303030900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F125454545F2323232800000000000000000000000000000000000000000000
          000000000000040404054646464F3B3B3B430101010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030303030101010100000000000000000000000000000000000000000000
          0000000000000000000003030303020202020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxImageList2: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 24576760
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000000001021103080D3A050C124B050C124A050C124A050B
          114A050B114A040B114A040B114A040B114A050B114A050B114A050B114A050B
          114A050B114A050B114A050B114A050B114A050B114A050C124A050C124B040B
          1147010407250000000400000000000000000000000000000000000000000000
          0000000000000000000007101938264E70B138698ECF37678BCE38678CCE396A
          8ECE3B6B8FCE3D6C90CE3E6D90CE3E6D90CE3D6D90CE3C6B8FCE3C6B8FCE3C6B
          8FCE3D6B8FCE3C6B8FCE3C6B8FCE3C6B8FCE3C6B8FCE39678BCE3A6A8ECF3563
          89CB162F467C0102040F00000000000000000000000000000000000000000000
          00000000000000000000102231514A87B6E763A6D6FF6EAED8FF73B3DBFF76B7
          E0FF77B7E0FF78B9E0FF79B9E1FF7DBCE2FF7DBCE3FF7BBBE2FF7BBBE1FF7CBB
          E2FF7EBCE3FF7CBBE2FF7BBAE1FF7BBAE1FF79B9E1FF73B2DAFF6BACD8FF5FA3
          D4FF325E81B003070B1900000000000000000000000000000000000000000000
          00000000000000000000142737574F8DB9E967A9D4FF74B3DCFF77B7DEFF79B9
          DFFF78B8DFFF78B8DFFF78B9DFFF79B9DFFF79B9E0FF79B9DFFF79B9DFFF79B9
          DFFF79B9E0FF79B9E0FF79B9DFFF79B9DFFF79B9DFFF78B7DFFF73B3DCFF61A5
          D1FF39688BB8050A0F1E00000000000000000000000000000000000000000000
          00000000000000000001172C3D5D5694C1EC6CAEDAFF67A8D6FF65A7D4FF67A9
          D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A9
          D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A9D5FF67A8D6FF70B1DCFF64A9
          D8FF3F7095C1070D132500000000000000000000000000000000000000000000
          000000000000000000011B3143635796C5EF6BADDBFF60A2D2FF5B9DCEFF5E9F
          D0FF5D9FD0FF5D9FD0FF5D9FD0FF5D9FD0FF5EA0D0FF5FA0D0FF5FA0D0FF5FA0
          D0FF5FA0D0FF5FA0D0FF5FA1D0FF5FA0D0FF5D9FCFFF5FA0D0FF6CAEDAFF61A6
          D7FF43769DC90911182D00000000000000000000000000000000000000000000
          000000000000000000021F37496B5697C6F167ABDAFF5DA1D4FF589ED2FF5BA0
          D3FF5BA0D3FF5BA0D3FF5BA0D3FF5BA0D4FF5CA2D4FF5EA2D5FF5DA2D5FF5DA2
          D4FF5EA2D4FF5DA2D4FF5DA2D4FF5CA1D4FF5AA0D3FF5CA0D3FF69ACDAFF5EA3
          D6FF467CA4D10C161D3400000000000000000000000000000000000000000000
          00000000000000000004223B4E725396C8F461A6D8FF599BCEFF5296C9FF5498
          CBFF5498CBFF5498CBFF5498CBFF5498CBFF5398CAFF5397CAFF5397CAFF5397
          CAFF5397CAFF5397CAFF5397CAFF5397CAFF5397CAFF5699CCFF65A8D8FF5CA2
          D6FF4A83ADD90F1B233B00000000000000000000000000000000000000000000
          000000000000010101052542557A5195C9F65BA0D4FF5398CEFF4D93CBFF4F95
          CDFF4F96CDFF4F96CDFF4D95CDFF4D94CDFF4C93CCFF4C93CCFF4C93CCFF4C93
          CCFF4C93CCFF4C93CCFF4C93CCFF4C93CCFF4C93CCFF4F94CCFF60A3D5FF5AA0
          D6FF4E88B4DF13212A4400000000000000000000000000000000000000000000
          0000000000000101020729465C815195CAF8579CD1FF4F90C5FF4587BDFF4789
          BFFF4789BFFF4789BFFF4689BFFF4689BFFF4689BFFF4689BFFF4688BFFF4688
          BFFF4688BFFF4688BFFF4688BFFF4688BFFF4688BEFF498BC0FF5C9FD1FF579E
          D5FF508CB9E51827324E00000000000000000000000000000000000000000000
          000000000000010202082D4C62885096CCFB5298CEFF4586BDFF377BB4FF397D
          B5FF397DB5FF397EB6FF397DB6FF397DB6FF397DB6FF397DB6FF397DB5FF397D
          B5FF397DB5FF397DB5FF397DB5FF397CB6FF387CB5FF3D80B7FF579ACDFF539A
          D2FF518FBDEA1D2F3B5800000000000000000000000000000000000000000000
          0000000000000203030A3152698F4C92C8FD4B90C6FF3F80B8FF3275AEFF3377
          B0FF3377AFFF3377AFFF3377AFFF3376AFFF3377AFFF3478B0FF3578B1FF3578
          B1FF3578B1FF3578B1FF3578B1FF3478B0FF3477B0FF387AB2FF4F92C7FF4C92
          C8FF5091C0EE2135436000000001000000000000000000000000000000000000
          0000000000000304040C355770964C92CBFE468DC9FF4489C3FF4289C3FF448C
          C7FF448BC7FF458CC7FF458CC7FF458CC7FF458CC7FF458DC7FF468DC8FF468D
          C8FF468DC8FF478DC8FF478EC8FF488EC8FF478EC7FF458BC2FF4A91CAFF498F
          CAFF4F91C3F1263D4B6B00000002000000000000000000000000000000000000
          0000000000000304050D3D5F769B69A9D7FF70B0DBFF72B0D9FF73B2DAFF76B5
          DEFF77B5DEFF77B6DFFF78B7E0FF79B7E0FF7AB7E0FF79B6DFFF79B7DFFF79B6
          DFFF73B3DEFF72B2DEFF72B3DEFF72B2DEFF71B1DDFF6FAED8FF70B1DCFF6CAD
          DAFF63A0CCF52D44537301010004000000000000000000000000000000000000
          000000000000020203073957698579B2D7FA699DBFFF5C8CADFF5D8CAAFF6291
          AEFF6594B0FF6694B0FF6795B0FF6896B1FF6894ADFF6994A8FF6893AAFF6995
          B0FF6795B1FF6695B1FF6695B1FF6594B1FF6293B1FF6193B1FF6296B8FF72A8
          C9FF75ACCDEE2A3F4B6200000002000000000000000000000000000000000000
          0000000000000000000121333E516EA3C3E54B80A7FF1E5078FF1B4B6FFF1C4C
          70FF1D4D71FF1D4D71FF1D4D70FF1B496BFF326174FF729E9CFF548088FF1E4C
          69FF1C4A6EFF1D4D71FF1D4D71FF1D4D71FF1D4D71FF1D4E73FF255A84FF5A8F
          B5FF6392AFCF141F263300000000000000000000000000000000000000000000
          000000000000000000000A11162154809CBB6299BDFF2B5F86FF23567BFF2356
          7CFF23567CFF23557BFF205275FF336C7AFF82BFABFFB8F0D1FFA3DEC2FF5491
          8EFF235672FF215377FF23567BFF23567CFF23567CFF23567CFF346B93FF6BA3
          C6FD42657B970407090F00000000000000000000000000000000000000000000
          00000000000000000000010304083151668269A2C6FA3E7498FF2E6589FF2F66
          8AFF2F6589FF2D6385FF377E83FF68C39CFF94ECB7FFA1EFC0FF99EEBBFF7EDE
          A9FF4A9D8CFF2E6A82FF2E6387FF2F658AFF2F668AFF2E658AFF4D84A9FF6CA2
          C4ED203542570000000100000000000000000000000000000000000000000000
          0000000000000000000000000000142430445E93B6E3528AABFF3C7698FF3E77
          99FF3C7795FF398F88FF4AC887FF62E492FF74E89FFF7EE9A6FF79E8A2FF67E6
          95FF52DA89FF3CAA85FF397D90FF3E7698FF3D7798FF3F7799FF669DBEFF5582
          A1C3091117230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050B101A45708FB468A0C1FC5B95B5FD5692
          FDFE389D87FF25C66CFF30DC6DFF44DF7BFF55E288FF5CE38DFF57E38AFF49E0
          7FFF34DD6FFF24D567FF2AAF78FF49939FFF5892B3FD5C95B5FD70A7C9F73252
          6986010204080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102041A2B38483F5F7491436F7BBB38A0
          7CF01DC660FF19D659FF27DA65FF39DD72FF46E07CFF49E07FFF43DF7BFF35DD
          70FF1FD95FFF0AD54EFF08CB4CFF24B56DFC408180D5436578A23A586C810F1B
          232E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101010A020F0746065921B519B2
          4AF632D063FF39D66BFF3CDB71FF42DE77FF48E07DFF4BE07FFF48E07DFF40DE
          76FF34DB6CFF27D45FFF18CB4FFF0BBE42FE04862EDC032B10790205051E0000
          0102000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000A022B055417AF24AD46F945C9
          67FF4ED072FF4DD475FF4CD878FF4CDB7AFF4DDD7DFF4DDD7DFF4DDD7DFF4DDC
          7CFF4DD979FF4DD575FF4AD06FFF3EC863FF26B94BFE0D8329E1012407660000
          0008000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000051D09463C984EE172CD85FF7BD3
          8FFF73D48CFF5BD17AFF5BD57EFF5DD881FF5DD982FF5DDA83FF5DDA83FF5DD9
          82FF5DD680FF59D27AFF66D282FF7AD490FF77CF89FF5DC070FF1855229A0002
          000F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000819093B43824BCF64AA70F165AC
          73F059AE6DF34CBF68FC6AD385FF6DD689FF6DD78AFF6DD88AFF6DD78AFF6DD6
          89FF6ED588FF5DCC78FF4DB364F763AC72F065AA71F05CA166EE1F4922890002
          000B000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020702110D260F4D133417611333
          185E114319813D9D50E47AD38DFF7DD692FF7DD692FF7DD793FF7DD693FF7DD6
          92FF7ED591FF65C679FB1B6729AC12341864133317601230145D0614072D0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000140235408E4BD38AD397FF8ED69CFF8ED79CFF8ED79DFF8ED79CFF8ED6
          9CFF8FD59BFF72C37FF91244197A000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001130235478E4ED499D5A1FF9ED8A6FF9ED8A6FF9ED9A6FF9ED9A7FF9ED8
          A6FF9FD8A6FF7FC387F915441A7B000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000011202364F8D52D4A9D7ACFFAFDBB2FFAEDBB2FFAEDCB3FFAEDCB2FFAEDB
          B2FFAFDBB3FF8DC490F91741197B000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000011201365A8F5AD4C1E1C1FFC8E4C8FFC7E4C8FFC7E4C9FFC7E4C9FFC7E4
          C8FFC9E4C9FF9ECA9FF9193F1A7B000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020F022F457945CD8EBB8EFD92BD92FC91BC91FC91BC91FC91BC91FC91BC
          91FC92BD92FC75A975F514351473000000050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010701161338137A255525A5265526A4265526A4265526A4265526A42655
          26A4265526A41F4D1F9B0619063F000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object pmGrdPeriod: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end>
    UseOwnFont = False
    Left = 281
    Top = 541
  end
  object FD_Query: TFDQuery
    Left = 1009
    Top = 349
  end
  object ds_invpiv: TDataSource
    DataSet = dmInventory.sp_invpiv
    Left = 464
    Top = 544
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPkgNos
    PopupMenus = <>
    Left = 280
    Top = 595
  end
  object pmSortimentsVy: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'SpinEditRubrikFontSortimentsVy'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator1'
      end
      item
        Visible = True
        ItemName = 'SpinEditContentFontSortimentsVy'
      end>
    UseOwnFont = False
    OnPopup = pmSortimentsVyPopup
    Left = 456
    Top = 289
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 552
    Top = 313
  end
  object siLangLinked_fLager: TsiLangLinked
    Version = '7.2'
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
    ExtendedTranslations = <
      item
        Identifier = 'grdDBBandedPerSortiment.Bands[4].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4B00560041004E0054004900540045005400010001005100550041004E00
          540049005400590001000100}
      end
      item
        Identifier = 'grdDBBandedPerSortiment.Bands[3].Caption'
        PropertyType = tkUString
        ValuesEx = {FFFE4C00410047004500520001000100530054004F0043004B0001000100}
      end
      item
        Identifier = 'grdDBBandedPerSortiment.Bands[2].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4E004D003300200050004500520020004C00C4004E004700440001000100
          4E004D003300200050004500520020004C0045004E0047005400480001000100}
      end
      item
        Identifier = 'grdDBBandedPerSortiment.Bands[1].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500052004F00440055004B0054000100500052004F00440055004B005400
          0100500052004F0044005500430054000100500052004F00440055004B005400
          0100}
      end
      item
        Identifier = 'grdDBBandedPerSortiment.Bands[0].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500041004B00450054002000490044000100010050004B00470020004900
          44000100500041004C004C002000490044000100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[0].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500041004B00450054002000490044000100010050004B00470020004900
          44000100500041004C004C002000490044000100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[1].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500052004F00440055004B0054000100500052004F00440055004B005400
          0100500052004F0044005500430054000100500052004F00440055004B005400
          0100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[2].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4E004D003300200050004500520020004C00C4004E004700440001000100
          4E004D003300200050004500520020004C0045004E0047005400480001000100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[3].Caption'
        PropertyType = tkUString
        ValuesEx = {FFFE4C00410047004500520001000100530054004F0043004B0001000100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[4].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4B00560041004E0054004900540045005400010001005100550041004E00
          540049005400590001000100}
      end
      item
        Identifier = 'grdDBBandedPerPaketNr.Bands[5].Caption'
        PropertyType = tkUString
        ValuesEx = {FFFE5200450046000100010001000100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[0].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500041004B00450054002000490044000100010050004B00470020004900
          44000100500041004C004C002000490044000100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[1].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE500052004F00440055004B0054000100500052004F00440055004B005400
          0100500052004F0044005500430054000100500052004F00440055004B005400
          0100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[2].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4E004D003300200050004500520020004C00C4004E004700440001000100
          4E004D003300200050004500520020004C0045004E0047005400480001000100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[3].Caption'
        PropertyType = tkUString
        ValuesEx = {FFFE4C00410047004500520001000100530054004F0043004B0001000100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[4].Caption'
        PropertyType = tkUString
        ValuesEx = {
          FFFE4B00560041004E0054004900540045005400010001005100550041004E00
          540049005400590001000100}
      end
      item
        Identifier = 'grdPkgNosDBBandedTableView1.Bands[5].Caption'
        PropertyType = tkUString
        ValuesEx = {FFFE5200450046000100010001000100}
      end>
    Left = 1008
    Top = 408
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006100670065007200010066004C0061006700
      6500720001000100010001000D000A007400730054004100420045004C004C00
      0100500041004B004500540054004100420045004C004C004500520001005000
      41004B0045005400200054004100420045004C004C00010050004B0047002000
      5400410042004C0045000100500041004C004C00200054004100420045004C00
      4C0001000D000A0067007200640042006F0054004C006500760065006C003100
      010053006F007200740069006D0065006E007400200076007900010001005000
      72006F00640075006300740020007600690065007700010001000D000A006700
      7200640042006F0054004C006500760065006C0032000100500061006B006500
      74006E0072002000760079000100010050006B0067004E006F00200076006900
      650077000100500061006C006C006E00720020007600790001000D000A006300
      780042007500740074006F006E003100010053006B0061007000610020007000
      61006B006500740001000100430072006500610074006500200070006B006700
      010053006B006100700061002000700061006C006C0001000D000A0063007800
      42007500740074006F006E003300010054006100200062006F00720074002000
      700061006B006500740001000100440065006C00650074006500200070006B00
      6700010054006100200062006F00720074002000700061006C006C0001000D00
      0A006300780042007500740074006F006E003400010046006C00790074007400
      61002000700061006B0065007400010001004D006F0076006500200070006B00
      67007300010046006C0079007400740061002000700061006C006C0001000D00
      0A004C006100620065006C0050006B006700440074006C00500072006F006400
      75006300740001005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F005F005F005F005F005F005F005F005F005F005F00
      5F005F005F005F005F005F0001000100010001000D000A006300780042007500
      740074006F006E00310030000100C4006E006400720061002000700061006B00
      6500740070006F0073006900740069006F006E00200001000100430068006100
      6E0067006500200070006B006700200070006F0073006900740069006F006E00
      0100C4006E006400720061002000700061006C006C0070006F00730069007400
      69006F006E00200001000D000A00630078004C006100620065006C0031000100
      54006A006F0063006B006C0065006B003A00010054006A006F0063006B006C00
      65006B00010054006800690063006B006E00650073007300010054006A006F00
      63006B006C0065006B0001000D000A00630078004C006100620065006C003600
      0100420072006500640064003A00010042007200650064006400010057006900
      64007400680001004200720065006400640001000D000A006300620048006900
      640065005A00650072006F0043006F006C0075006D006E00730001004700F600
      6D0020006E006F006C006C0020006B006F006C0075006D006E00650072000100
      0100480069006400650020007A00650072006F00200063006F006C0075006D00
      6E007300010001000D000A00630078004C006100620065006C0032000100C400
      67006100720065003A000100C400670061007200650001004F0077006E006500
      72000100C400670061007200650001000D000A00630078004C00610062006500
      6C00330001004C006100670065007200670072007500700070003A0001004C00
      6100670065007200670072007500700070000100530074006F0063006B002000
      670072006F007500700001004C00610067006500720067007200750070007000
      01000D000A00630078004C006100620065006C003400010056006F006C002E00
      65006E006800650074003A00010056006F006C002E0065006E00680065007400
      010056006F006C002E0075006E0069007400010056006F006C002E0065006E00
      68006500740001000D000A00630078004C006100620065006C00350001004900
      6E0066006F00200031003A00010049006E0066006F0020003100010049006E00
      66006F0020003100010049006E0066006F002000310001000D000A0063007800
      4C006100620065006C00370001005200650066006500720065006E0073003A00
      01005200650066006500720065006E0073000100520065006600650072006500
      6E006300650001005200650066006500720065006E00730001000D000A006300
      780042007500740074006F006E003700010053006B0072006900760020002600
      75007400010001005000720069006E007400010001000D000A00630078004C00
      6100620065006C00380001004B00E4006C006C0061003A0001004B00E4006C00
      6C006100010053006F00750072006300650001004B00E4006C006C0061000100
      0D000A00630078004C006100620065006C003900010049006E0066006F003200
      3A00010049006E0066006F003200010049006E0066006F003200010049006E00
      66006F00320001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003100010043007500730074006F006D0020003100
      01000100010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720032000100500061006B00650074006E0072000100
      500061006B00650074004E007200010050006B0067004E006F00010050006100
      6C006C004E00720001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720034000100500061006B006500740054006100
      620065006C006C004D0065006E007900010001000100500061006C006C005400
      6100620065006C006C004D0065006E00790001000D000A006400780042006100
      72005300750062004900740065006D0031000100410072006B00690076000100
      01004100720063006800690076006500010001000D000A005300700069006E00
      4500640069007400520075006200720069006B0046006F006E00740053006F00
      7200740069006D0065006E007400730056007900010052007500620072006900
      6B0066006F006E007400010001004C006100620065006C00200066006F006E00
      7400010001000D000A005300700069006E00450064006900740043006F006E00
      740065006E00740046006F006E00740053006F007200740069006D0065006E00
      74007300560079000100430065006C006C0066006F006E007400010001000100
      01000D000A006400780042006100720042007500740074006F006E0031000100
      4E006500770020004900740065006D0001000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E00670001000100430026006C00
      6F0073006500010001000D000A00610063005000720069006E00740050006B00
      67005400610062006C006500010053006B007200690076002000260075007400
      010001005000720069006E007400010001000D000A0061006300450078007000
      6F0072007400010045006D00610069006C006100010045006D00610069006C00
      010045006D00610069006C00010045006D00610069006C0001000D000A006100
      630050006B00670054007900700065005400610062006C00650001005300F600
      6B00200046003600010001005300650061007200630068002000460036000100
      01000D000A0061006300530061007600650047007200690064004C0061007900
      6F00750074000100530070006100720061002000760079006500720001000100
      530061007600650020007600690065007700010001000D000A00610063004500
      780070006F007200740054006F0045007800630065006C000100450078007000
      6F00720074006500720061002000740069006C006C0020004500780063006500
      6C00010001004500780070006F0072007400200074006F002000650078006300
      65006C00010001000D000A006100630043006C00650061007200460069006C00
      7400650072000100520065006E00730061002000660069006C00740065007200
      0100010043006C006500610072002000660069006C0074006500720001000100
      0D000A00610063005000720069006E0074004F00740068006500720042006F00
      6F006B0069006E0067007300010053006B007200690076002000750074000100
      01005000720069006E007400010001000D000A00610063005000720069006E00
      740050006500720069006F0064005700650065006B00010053006B0072006900
      7600200075007400010001005000720069006E007400010001000D000A006100
      630043006C006F007300650050006B006700440074006C005600790001005300
      7400E4006E0067002000760079000100010043006C006F007300650020007600
      690065007700010001000D000A00610063004300720065006100740065005000
      6B0067007300010053006B006100700061002000700061006B00650074000100
      0100430072006500610074006500200070006B006700010053006B0061007000
      61002000700061006C006C0001000D000A00610063004300680061006E006700
      650050006B0067000100C4006E006400720061002000700061006B0065007400
      010001004300680061006E0067006500200070006B0067000100C4006E006400
      720061002000700061006C006C0001000D000A00610063005000720069006E00
      740050006B006700440074006C00010053006B00720069007600200075007400
      010001005000720069006E007400010001000D000A0061006300530065007400
      50006B007400530074006F0072006C0065006B000100C4006E00640072006100
      2000700061006B0065007400730074006F0072006C0065006B00200072007500
      6200720069006B000100C4006E006400720061002000500061006B0065007400
      730074006F0072006C0065006B007300720075006200720069006B0065006E00
      01004300680061006E0067006500200070006B0067002000730069007A006500
      20006E0061006D0065000100C4006E006400720061002000500061006C006C00
      730074006F0072006C0065006B007300720075006200720069006B0065006E00
      01000D000A006100630053006500740043006500720074006900660069006300
      6100740069006F006E000100C4006E0064007200610020006300650072007400
      6900660069006500720069006E00670065006E00010001004300680061006E00
      670065002000630065007200740069006600690063006100740069006F006E00
      010001000D000A006100630053006500740049006E0066006F00320054006500
      78007400010041006E00670065002000700061006B006500740070006F007300
      6900740069006F006E0020007000E50020006D00610072006B00650072006100
      640065002000700061006B00650074000100010045006E007400650072002000
      70006B006700200070006F0073006900740069006F006E0020006F006E002000
      730065006C0065006300740065006400200070006B0067007300010041006E00
      670065002000700061006C006C0070006F0073006900740069006F006E002000
      7000E50020006D00610072006B00650072006100640065002000700061006C00
      6C006100720001000D000A006100630053006500740053007400640047007200
      690064004C00610079006F007500740001005300E40074007400200073007400
      640020006C00610079006F007500740001000100530065007400200064006500
      6600610075006C00740020006C00610079006F0075007400010001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B00310001004E00650077005200650070006F00
      7200740001000100010001000D000A006400780043006F006D0070006F006E00
      65006E0074005000720069006E0074006500720031004C0069006E006B003200
      01004E00650077005200650070006F007200740001000100010001000D000A00
      47007200690064005400610062006C0065005600690065007700530074007900
      6C006500530068006500650074004D00610070006C00650001004D0061007000
      6C00650001000100010001000D000A0047007200690064005400610062006C00
      650056006900650077005300740079006C006500530068006500650074005300
      7000720075006300650001005300700072007500630065000100470072006100
      6E00010001004700720061006E0001000D000A00470072006900640042006100
      6E006400650064005400610062006C0065005600690065007700530074007900
      6C006500530068006500650074004D00610070006C00650001004D0061007000
      6C00650001000100010001000D000A0047007200690064005400610062006C00
      650056006900650077005300740079006C006500530068006500650074005200
      6F0073006500010052006F007300650001000100010001000D000A0047007200
      690064005400610062006C00650056006900650077005300740079006C006500
      5300680065006500740044006500730065007200740001004400650073006500
      7200740001000100010001000D000A004700720069006400420061006E006400
      650064005400610062006C00650056006900650077005300740079006C006500
      5300680065006500740044006500730065007200740001004400650073006500
      7200740001000100010001000D000A006100630053006F007200740069006D00
      65006E00740056007900010053006F007200740069006D0065006E0074007300
      7600790001000100010001000D000A00610063005000610063006B0061006700
      65004E006F00560079000100500061006B00650074006E007200760079000100
      0100010001000D000A006100630050006F0073006900740069006F006E007300
      56007900010050006F0073006900740069006F006E0073007600790001000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A005300700069006E004500640069007400520075006200
      720069006B0046006F006E00740053006F007200740069006D0065006E007400
      7300560079000100520075006200720069006B0066006F006E00740001000100
      4C006100620065006C00200066006F006E007400010001000D000A0053007000
      69006E00450064006900740043006F006E00740065006E00740046006F006E00
      740053006F007200740069006D0065006E007400730056007900010043006500
      6C006C0066006F006E00740001000100010001000D000A006400780042006100
      720042007500740074006F006E00310001004E00650077002000490074006500
      6D0001000100010001000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
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
      010001000D000A006300640073005600650072006B0043006C00690065006E00
      74004E006F00010043006C00690065006E0074004E006F000100010001000100
      0D000A006300640073005600650072006B0043006C00690065006E0074004E00
      61006D006500010043006C00690065006E0074004E0061006D00650001000100
      010001000D000A006300640073005600650072006B0053006500610072006300
      68004E0061006D00650001005300650061007200630068004E0061006D006500
      01000100010001000D000A006300640073005600650072006B00530061006C00
      6500730052006500670069006F006E004E006F000100530061006C0065007300
      52006500670069006F006E004E006F0001000100010001000D000A0063006400
      73005600650072006B0050006B0074004E0072004C00650076004B006F006400
      010050006B0074004E0072004C00650076004B006F0064000100010001000100
      0D000A006300640073005F0050004C004900500050004C004900500001005000
      4C004900500001000100010001000D000A006300640073005F0050004C004900
      50004C006F0067006900630061006C0049006E00760065006E0074006F007200
      79004E0061006D00650001004C006F0067006900630061006C0049006E007600
      65006E0074006F00720079004E0061006D00650001000100010001000D000A00
      6300640073005F0050004C004900500049006E00760043006F00640065000100
      49006E00760043006F006400650001000100010001000D000A00630064007300
      5F0050004C00490050004C00490050004E006F0001004C00490050004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073005600
      650072006B004E006F0001005600650072006B004E006F000100010001000100
      0D000A006300640073005F00500072006F00700073004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073005000490050004E006F0001005000
      490050004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004C00490050004E006F0001004C00490050004E006F0001000100
      010001000D000A006300640073005F00500072006F007000730049006E007000
      750074004F007000740069006F006E00010049006E007000750074004F007000
      740069006F006E00010049006E006D00610074006E0069006E00670073006100
      6C007400650072006E006100740069007600010049006E007000750074002000
      6F007000740069006F006E007300010049006E006D00610074006E0069006E00
      6700730061006C007400650072006E00610074006900760001000D000A006300
      640073005F00500072006F007000730052006500670050006F0069006E007400
      4E006F00010052006500670050006F0069006E0074004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005200650067004400
      6100740065000100520065006700440061007400650001000100010001000D00
      0A006300640073005F00500072006F007000730043006F007000790050006300
      7300010043006F007000790050006300730001004B006F007000690065007200
      6100200073007400790063006B00010001004B006F0070006900650072006100
      20007300E40063006B0001000D000A006300640073005F00500072006F007000
      7300520075006E004E006F000100520075006E004E006F0001004B00F6007200
      4E007200010001004B00F60072004E00720001000D000A006300640073005F00
      500072006F0070007300500072006F00640075006300650072004E006F000100
      500072006F00640075006300650072004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004100750074006F0043006F006C00
      5700690064007400680001004100750074006F0043006F006C00570069006400
      7400680001004100750074006F002E0020006B006F006C002E00620072006500
      6400640001004100750074006F002E00200063006F006C002E00770069006400
      7400680001004100750074006F002E0020006B006F006C002E00620072006500
      6400640001000D000A006300640073005F00500072006F007000730053007500
      700070006C0069006500720043006F0064006500010053007500700070006C00
      69006500720043006F006400650001004C00650076006500720061006E007400
      F600720073006B006F006400010053007500700070006C006900650072006300
      6F006400650001004C00650076006500720061006E007400F600720073006B00
      6F00640001000D000A006300640073005F00500072006F00700073004C006500
      6E006700740068004F007000740069006F006E0001004C0065006E0067007400
      68004F007000740069006F006E0001000100010001000D000A00630064007300
      5F00500072006F00700073004C0065006E00670074006800470072006F007500
      70004E006F0001004C0065006E00670074006800470072006F00750070004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4E00650077004900740065006D0052006F00770001004E006500770049007400
      65006D0052006F00770001000100010001000D000A006300640073005F005000
      72006F0070007300530061006C006500730052006500670069006F006E004E00
      6F000100530061006C006500730052006500670069006F006E004E006F000100
      0100010001000D000A006300640073005F00500072006F007000730056006F00
      6C0075006D00650055006E00690074004E006F00010056006F006C0075006D00
      650055006E00690074004E006F0001000100010001000D000A00630064007300
      5F00500072006F00700073004C0065006E0067007400680046006F0072006D00
      610074004E006F0001004C0065006E0067007400680046006F0072006D006100
      74004E006F0001000100010001000D000A006300640073005F00500072006F00
      70007300470072006100640065005300740061006D0070004E006F0001004700
      72006100640065005300740061006D0070004E006F0001000100010001000D00
      0A006300640073005F00500072006F007000730042006100720043006F006400
      65004E006F00010042006100720043006F00640065004E006F00010001000100
      01000D000A006300640073005F00500072006F007000730046006F0072006D00
      010046006F0072006D00010046006F0072006D0075006C00E400720001000100
      46006F0072006D0075006C00E400720001000D000A006300640073005F005000
      72006F0070007300550073006500720049004400010055007300650072004900
      440001000100010001000D000A006300640073005F00500072006F0070007300
      4C0065006E0067007400680056006F006C0055006E00690074004E006F000100
      4C0065006E0067007400680056006F006C0055006E00690074004E006F000100
      0100010001000D000A006300640073005F00500072006F007000730047007200
      6F00750070004200790042006F0078000100470072006F007500700042007900
      42006F00780001000100010001000D000A006300640073005F00500072006F00
      70007300470072006F0075007000530075006D006D0061007200790001004700
      72006F0075007000530075006D006D0061007200790001000100010001000D00
      0A006300640073005F00500072006F00700073004D00610072006B0065007400
      52006500670069006F006E004E006F0001004D00610072006B00650074005200
      6500670069006F006E004E006F0001000100010001000D000A00630064007300
      5F00500072006F00700073004F00720064006500720054007900700065004E00
      6F0001004F00720064006500720054007900700065004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005300740061007400
      7500730001005300740061007400750073000100010053007400610074007500
      7300010001000D000A006300640073005F00500072006F007000730046006900
      6C007400650072004F0072006400650072004400610074006500010046006900
      6C007400650072004F0072006400650072004400610074006500010046006900
      6C007400650072004F00720064006500720044006100740075006D0001000100
      460069006C007400650072004F00720064006500720044006100740075006D00
      01000D000A006300640073005F00500072006F00700073005300740061007200
      740050006500720069006F006400010053007400610072007400500065007200
      69006F00640001000100010001000D000A006300640073005F00500072006F00
      7000730045006E00640050006500720069006F006400010045006E0064005000
      6500720069006F00640001000100010001000D000A006300640073005F005000
      72006F007000730043006C00690065006E0074004E006F00010043006C006900
      65006E0074004E006F0001000100010001000D000A006300640073005F005000
      72006F0070007300530061006C006500730050006500720073006F006E004E00
      6F000100530061006C006500730050006500720073006F006E004E006F000100
      0100010001000D000A006300640073005F00500072006F007000730056006500
      72006B0053007500700070006C006900650072004E006F000100560065007200
      6B0053007500700070006C006900650072004E006F0001000100010001000D00
      0A006300640073005F00500072006F00700073005600650072006B004B007500
      6E0064004E006F0001005600650072006B004B0075006E0064004E006F000100
      0100010001000D000A006300640073005F00500072006F00700073004C004F00
      4F0062006A00650063007400540079007000650001004C004F004F0062006A00
      650063007400540079007000650001000100010001000D000A00630064007300
      5F00500072006F00700073004100670065006E0074004E006F00010041006700
      65006E0074004E006F0001000100010001000D000A006300640073005F005000
      72006F00700073004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F0001004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F0001000100010001000D000A00630064007300
      5F00500072006F007000730053006800690070007000650072004E006F000100
      53006800690070007000650072004E006F0001000100010001000D000A006300
      640073005F00500072006F007000730042006F006F006B0069006E0067005400
      7900700065004E006F00010042006F006F006B0069006E006700540079007000
      65004E006F0001000100010001000D000A006300640073005F00500072006F00
      7000730043007500730074006F006D00650072004E006F000100430075007300
      74006F006D00650072004E006F0001000100010001000D000A00630064007300
      5F00500072006F0070007300530068006F007700500072006F00640075006300
      74000100530068006F007700500072006F006400750063007400010001000100
      01000D000A006300640073005F00500072006F00700073004F0057004E004500
      520001004F0057004E004500520001000100010001000D000A00630064007300
      5F00500072006F00700073004C0065006E00670074006800470072006F007500
      700001004C0065006E00670074006800470072006F0075007000010001000100
      01000D000A006300640073005F00500072006F00700073004C0065006E006700
      7400680056006F006C0055006E00690074004E0061006D00650001004C006500
      6E0067007400680056006F006C0055006E00690074004E0061006D0065000100
      0100010001000D000A006300640073005F00500072006F00700073004C006500
      6E0067007400680046006F0072006D006100740001004C0065006E0067007400
      680046006F0072006D006100740001000100010001000D000A00630064007300
      5F00500072006F00700073005000490050000100500049005000010001000100
      01000D000A006300640073005F00500072006F00700073005300520001005300
      520001000100010001000D000A006300640073005F00500072006F0070007300
      460069006C0074006500720031000100460069006C0074006500720031000100
      0100010001000D000A006300640073005F005000490050005000490050004E00
      6F0001005000490050004E006F0001000100010001000D000A00630064007300
      5F005000490050004F005200540001004F005200540001004F00520054000100
      430049005400590001004F005200540001000D000A006300640073005F005000
      490050004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4E0061006D00650001004E0061006D00650001004E0061006D006E0001000100
      4E0061006D006E0001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540066004C0061006700650072000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A006300780042007500740074006F00
      6E00310001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780042007500
      740074006F006E00320001004D0053002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      780042007500740074006F006E00330001004D0053002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A006300780042007500740074006F006E00340001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A006300780042007500740074006F006E00350001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A006300780042007500740074006F006E00
      380001004D0053002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800420075007400
      74006F006E00360001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0063007800
      42007500740074006F006E00390001004D0053002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A006300780042007500740074006F006E003100300001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00620055007000640061007400650001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00620043006C00650061007200460069006C007400
      6500720001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A00620043006C006F00
      7300650001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780042007500
      740074006F006E0053007000610072006100560079006500720001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A0062005000720069006E00740001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A006300780042007500740074006F006E003700
      01004D0053002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078004200750074007400
      6F006E003100310001004D0053002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310001005300650067006F00
      6500200055004900010001005400610068006F006D006100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      310001005300650067006F006500200055004900010001005400610068006F00
      6D006100010001000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200320001005300650067006F006500200055004900
      010001005400610068006F006D006100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003400010053006500
      67006F006500200055004900010001005400610068006F006D00610001000100
      0D000A006400780043006F006D0070006F006E0065006E007400500072006900
      6E0074006500720031004C0069006E006B0031000100540069006D0065007300
      20004E0065007700200052006F006D0061006E00010001005400610068006F00
      6D006100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B00320001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001000100
      5400610068006F006D006100010001000D000A0070006D0050006B0067005400
      610062006C00650001005300650067006F006500200055004900010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      310001005400610068006F006D006100010001005400610068006F006D006100
      010001000D000A00630078005300740079006C006500320001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500330001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003400
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C00650041006B007400690076006500
      50006B00670001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C00650049004E004100
      6B00740069007600650050006B00670001004D0053002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065004200720069007300740001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003100
      360001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003100370001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003100380001005400610068006F006D00610001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      65003100390001004D006900630072006F0073006F0066007400200053006100
      6E007300200053006500720069006600010001005400610068006F006D006100
      010001000D000A00630078005300740079006C0065003200300001004D006900
      630072006F0073006F00660074002000530061006E0073002000530065007200
      69006600010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003200310001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003200
      320001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003200330001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003200340001004D006900630072006F0073006F00660074002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500320035000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      6500720069006600010001005400610068006F006D006100010001000D000A00
      630078005300740079006C0065003200360001004D006900630072006F007300
      6F00660074002000530061006E00730020005300650072006900660001000100
      5400610068006F006D006100010001000D000A00630078005300740079006C00
      6500350001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500360001005400610068006F00
      6D006100010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C006500370001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      380001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C006500390001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003100300001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003100310001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003100320001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3100330001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003100340001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003100350001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650032003700
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003200380001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003200390001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650033003000
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003300310001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003300320001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650033003300
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003300340001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003300350001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003300360001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003300370001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3300380001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003300390001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003400300001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3400310001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003400320001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003400330001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3400340001004D0053002000530061006E007300200053006500720069006600
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C0065003400350001004D0053002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003400360001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      340037000100540069006D006500730020004E0065007700200052006F006D00
      61006E00010001005400610068006F006D006100010001000D000A0063007800
      5300740079006C0065003400380001004D006900630072006F0073006F006600
      74002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065003400
      390001004D006900630072006F0073006F00660074002000530061006E007300
      200053006500720069006600010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C0065003500300001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003500310001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003500320001005400610068006F006D0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003500330001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650035003400
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003500350001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003500360001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003500370001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003500380001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3500390001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003600300001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003600310001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003200
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003600330001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003600340001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003500
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003600360001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003600370001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650036003800
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003600390001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003700300001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003700310001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003700320001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3700330001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003700340001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003700350001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650037003600
      01005400610068006F006D006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500370037000100540061006800
      6F006D006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065003700380001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3700390001004D006900630072006F0073006F00660074002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C0065003800300001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      6600010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003800310001004D006900630072006F0073006F0066007400
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650038003200
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      53006500720069006600010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C0065003800330001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C0065003800340001004D006900630072006F0073006F006600740020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065003800350001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      720069006600010001005400610068006F006D006100010001000D000A006300
      78005300740079006C0065004100760042006F006F006B006100740001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D006100010001000D000A00630078005300740079006C0065004800
      650061006400650072000100560065007200640061006E006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      43006F006E00740065006E0074000100560065007200640061006E0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C00650043006F006E00740065006E0074004F00640064000100560065007200
      640061006E006100010001005400610068006F006D006100010001000D000A00
      630078005300740079006C00650048006500610064006500720053006F007200
      740069006D0065006E0074007300560079000100560065007200640061006E00
      6100010001005400610068006F006D006100010001000D000A0070006D005000
      6B0067004E006F00730001005300650067006F00650020005500490001000100
      5400610068006F006D006100010001000D000A0070006D004600610072006400
      69006700560061007200610001005300650067006F0065002000550049000100
      01005400610068006F006D006100010001000D000A0070006D00520061007600
      61007200610001005300650067006F0065002000550049000100010054006100
      68006F006D006100010001000D000A0070006D00470072006400500065007200
      69006F00640001005300650067006F0065002000550049000100010054006100
      68006F006D006100010001000D000A0070006D0053006F007200740069006D00
      65006E00740073005600790001005300650067006F0065002000550049000100
      01005400610068006F006D006100010001000D000A0070006D00500072006900
      6E00740001005300650067006F00650020005500490001000100540061006800
      6F006D006100010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00630062004900
      6E006B006C0045006A00460061006B0074002E00500072006F00700065007200
      74006900650073002E004900740065006D00730001004C006100670065007200
      2C0022004C00610067006500720020002B00200065006A002000660061006B00
      740022002C00220045006A002000660061006B00740075007200650072006100
      7400220001000100530074006F0063006B002C0020002200530074006F006300
      6B002B006E006F007400200069006E0076006F00690063006500640022002C00
      200022004E006F007400200069006E0076006F00690063006500640022000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A004900440053005F0030000100500061006B006500
      740073007000650063006900660069006B006100740069006F006E0001000100
      50006B006700200073007000650063000100500061006C006C00730070006500
      63006900660069006B006100740069006F006E0001000D000A00490044005300
      5F0031000100700061006B006500740073007000650063000100500061006B00
      650074007300700065006300010050006B006700200073007000650063000100
      500061006C006C00730070006500630001000D000A004900440053005F003100
      31000100500041004B00450054002000490044000100010050004B0047002000
      490044000100500041004C004C0020004900440001000D000A00490044005300
      5F00310032000100500052004F00440055004B0054000100500052004F004400
      55004B0054000100500052004F0044005500430054000100500052004F004400
      55004B00540001000D000A004900440053005F003100340001004C0041004700
      4500520001000100530054004F0043004B00010001000D000A00490044005300
      5F003200010054006100620065006C006C0020006500780070006F0072007400
      65007200610064002000740069006C006C00200065007800630065006C002000
      660069006C002000010054006100620065006C006C0020006500780070006F00
      7200740065007200610064002000740069006C006C0020004500780063006500
      6C002000660069006C00200001005400610062006C0065002000650078007000
      6F007200740065006400200074006F00200045007800630065006C0020006600
      69006C0065002000010054006100620065006C006C0020006500780070006F00
      7200740065007200610064002000740069006C006C0020004500780063006500
      6C002000660069006C00200001000D000A004900440053005F00330001005600
      E4006C006A00200065006E0020006C0061006700650072006700720075007000
      700001000100530065006C00650063007400200061002000730074006F006300
      6B002000670072006F0075007000010001000D000A004900440053005F003400
      010041004D003300200050004500520020004C00C4004E004700440001000100
      41004D003300200050004500520020004C0045004E0047005400480001000100
      0D000A004900440053005F00350001004E004D00330020005000450052002000
      4C00C4004E0047004400010001004E004D003300200050004500520020004C00
      45004E00470054004800010001000D000A004900440053005F00360001005000
      41004B0045005400200050004500520020004C00C4004E004700440001005000
      41004B00450054002F004C00C4004E0047004400010050004B0047002F004C00
      45004E004700540048000100500041004B00450054002F004C00C4004E004700
      440001000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00630062004C004900
      50002E00500072006F0070006500720074006900650073002E00440065006C00
      69006D00690074006500720001003B0001000100010001000D000A0063006200
      4C00490050002E00500072006F0070006500720074006900650073002E004500
      6D00700074007900530065006C0065006300740069006F006E00540065007800
      7400010041006C006C0061000100010041006C006C00010001000D000A006500
      410054002E005400650078007400010020002000200001000100440065006600
      610075006C007400200050006B00670020006C00610079006F00750074000100
      5300740061006E0064006100720064002000700061006C006C006C0061007900
      6F007500740001000D000A006500410042002E00540065007800740001002000
      2000200001000100440065006600610075006C007400200050006B0067002000
      6C00610079006F007500740001005300740061006E0064006100720064002000
      700061006C006C006C00610079006F007500740001000D000A00630062004900
      6E006B006C0045006A00460061006B0074002E00540065007800740001004C00
      610067006500720001000100530074006F0063006B00010001000D000A005300
      700069006E004500640069007400520075006200720069006B0046006F006E00
      740053006F007200740069006D0065006E0074007300560079002E0054006500
      780074000100300001000100010001000D000A005300700069006E0045006400
      6900740043006F006E00740065006E00740046006F006E00740053006F007200
      740069006D0065006E0074007300560079002E00540065007800740001003000
      01000100010001000D000A006400780043006F006D0070006F006E0065006E00
      74005000720069006E0074006500720031004C0069006E006B0031002E004400
      65007300690067006E0065007200430061007000740069006F006E0001004600
      6F0072006D006100740020005200650070006F0072007400010046006F007200
      6D0061007400200072006100700070006F00720074000100010046006F007200
      6D0061007400200072006100700070006F007200740001000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0032002E00440065007300690067006E00650072004300
      61007000740069006F006E00010046006F0072006D0061007400200052006500
      70006F0072007400010046006F0072006D006100740020007200610070007000
      6F00720074000100010046006F0072006D006100740020007200610070007000
      6F007200740001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00670072006400
      44004200420061006E0064006500640050006500720053006F00720074006900
      6D0065006E0074002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E000100500041004B004500540020004900440001000100
      50004B0047002000490044000100500041004C004C0020004900440001000D00
      0A0067007200640044004200420061006E006400650064005000650072005300
      6F007200740069006D0065006E0074002E00420061006E00640073005B003100
      5D002E00430061007000740069006F006E000100500052004F00440055004B00
      54000100500052004F00440055004B0054000100500052004F00440055004300
      54000100500052004F00440055004B00540001000D000A006700720064004400
      4200420061006E0064006500640050006500720053006F007200740069006D00
      65006E0074002E00420061006E00640073005B0032005D002E00430061007000
      740069006F006E0001004E004D003300200050004500520020004C00C4004E00
      47004400010001004E004D003300200050004500520020004C0045004E004700
      54004800010001000D000A0067007200640044004200420061006E0064006500
      640050006500720053006F007200740069006D0065006E0074002E0042006100
      6E00640073005B0033005D002E00430061007000740069006F006E0001004C00
      410047004500520001000100530054004F0043004B00010001000D000A006700
      7200640044004200420061006E0064006500640050006500720053006F007200
      740069006D0065006E0074002E00420061006E00640073005B0034005D002E00
      430061007000740069006F006E0001004B00560041004E005400490054004500
      5400010001005100550041004E005400490054005900010001000D000A006700
      7200640044004200420061006E00640065006400500065007200500061006B00
      650074004E0072002E00420061006E00640073005B0030005D002E0043006100
      7000740069006F006E000100500041004B004500540020004900440001000100
      50004B0047002000490044000100500041004C004C0020004900440001000D00
      0A0067007200640044004200420061006E006400650064005000650072005000
      61006B00650074004E0072002E00420061006E00640073005B0031005D002E00
      430061007000740069006F006E000100500052004F00440055004B0054000100
      500052004F00440055004B0054000100500052004F0044005500430054000100
      500052004F00440055004B00540001000D000A00670072006400440042004200
      61006E00640065006400500065007200500061006B00650074004E0072002E00
      420061006E00640073005B0032005D002E00430061007000740069006F006E00
      01004E004D003300200050004500520020004C00C4004E004700440001000100
      4E004D003300200050004500520020004C0045004E0047005400480001000100
      0D000A0067007200640044004200420061006E00640065006400500065007200
      500061006B00650074004E0072002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001004C00410047004500520001000100
      530054004F0043004B00010001000D000A006700720064004400420042006100
      6E00640065006400500065007200500061006B00650074004E0072002E004200
      61006E00640073005B0034005D002E00430061007000740069006F006E000100
      4B00560041004E0054004900540045005400010001005100550041004E005400
      490054005900010001000D000A0067007200640044004200420061006E006400
      65006400500065007200500061006B00650074004E0072002E00420061006E00
      640073005B0035005D002E00430061007000740069006F006E00010052004500
      460001000100010001000D000A0067007200640050006B0067004E006F007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0030005D002E004300610070007400
      69006F006E000100500041004B00450054002000490044000100010050004B00
      47002000490044000100500041004C004C0020004900440001000D000A006700
      7200640050006B0067004E006F00730044004200420061006E00640065006400
      5400610062006C006500560069006500770031002E00420061006E0064007300
      5B0031005D002E00430061007000740069006F006E000100500052004F004400
      55004B0054000100500052004F00440055004B0054000100500052004F004400
      5500430054000100500052004F00440055004B00540001000D000A0067007200
      640050006B0067004E006F00730044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      32005D002E00430061007000740069006F006E0001004E004D00330020005000
      4500520020004C00C4004E0047004400010001004E004D003300200050004500
      520020004C0045004E00470054004800010001000D000A006700720064005000
      6B0067004E006F00730044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0033005D00
      2E00430061007000740069006F006E0001004C00410047004500520001000100
      530054004F0043004B00010001000D000A0067007200640050006B0067004E00
      6F00730044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0034005D002E0043006100
      7000740069006F006E0001004B00560041004E00540049005400450054000100
      01005100550041004E005400490054005900010001000D000A00670072006400
      50006B0067004E006F00730044004200420061006E0064006500640054006100
      62006C006500560069006500770031002E00420061006E00640073005B003500
      5D002E00430061007000740069006F006E000100520045004600010001000100
      01000D000A006C0063004C0065006E0067007400680056006F006C0055006E00
      690074002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004C0065006E0067007400680056006F006C0055006E00
      690074004E0061006D00650001000100010001000D000A006C0063004F005700
      4E00450052002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010043006C00690065006E0074004E0061006D006500
      01000100010001000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A00540066004C00610067006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006300780042007500740074006F006E003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6300780042007500740074006F006E0032000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780042007500
      740074006F006E0033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006300780042007500740074006F006E00
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006300780042007500740074006F006E003500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6300780042007500740074006F006E0038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780042007500
      740074006F006E0036000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006300780042007500740074006F006E00
      39000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A006300780042007500740074006F006E003100300001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A0062005500700064006100740065000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00620043006C0065006100
      7200460069006C007400650072000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00620043006C006F0073006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006300780042007500740074006F006E0053007000610072006100
      56007900650072000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A0062005000720069006E007400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6300780042007500740074006F006E0037000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780042007500
      740074006F006E00310031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00640078004200610072004D006100
      6E00610067006500720031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      6400780043006F006D0070006F006E0065006E0074005000720069006E007400
      6500720031004C0069006E006B0032000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0070006D0050006B006700
      5400610062006C0065000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00630078005300740079006C0065003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C00650033000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650041006B00740069007600
      650050006B0067000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650049004E00
      41006B00740069007600650050006B0067000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A006300780053007400
      79006C006500420072006900730074000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500310036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650031003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310038000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500310039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500320030000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650032003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C006500320033000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C006500320034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00630078005300740079006C00650032003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500320036000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A006300
      78005300740079006C00650035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      650036000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C0065003700010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      630078005300740079006C00650038000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0063007800530074007900
      6C00650039000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500310030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003100310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500310032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500310033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500310034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003100350001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500320037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500320038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500320039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003300300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500330031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500330032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500330033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003300340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500330035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500330036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500330037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003300380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500330039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500340030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500340031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003400320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500340033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500340034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500340035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003400360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500340037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500340038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500340039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003500300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500350031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500350032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500350033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003500340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500350035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500350036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500350037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003500380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500350039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500360030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500360031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003600320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500360033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500360034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500360035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003600360001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500360037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500360038000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500360039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003700300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500370031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500370032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500370033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003700340001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500370035000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500370036000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500370037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003700380001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500370039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500380030000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500380031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065003800320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C006500380033000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A00630078005300740079006C00
      6500380034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C006500380035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C0065004100760042006F006F006B006100
      74000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650048006500610064006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650043006F006E0074006500
      6E0074000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F00640064000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      48006500610064006500720053006F007200740069006D0065006E0074007300
      560079000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      4500540001000D000A0070006D0050006B0067004E006F007300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      70006D0046006100720064006900670056006100720061000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007000
      6D005200610076006100720061000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      430048004100520053004500540001000D000A0070006D004700720064005000
      6500720069006F0064000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A0070006D0053006F007200740069006D00
      65006E0074007300560079000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A0070006D005000720069006E007400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00}
  end
  object pmEXCELvyer: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
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
      end>
    UseOwnFont = False
    Left = 456
    Top = 349
  end
end
