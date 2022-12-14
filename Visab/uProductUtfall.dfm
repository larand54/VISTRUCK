object fProductUtfall: TfProductUtfall
  Left = 258
  Top = 150
  Caption = 'Utfall'
  ClientHeight = 710
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1034
      57)
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 121
      Height = 41
      Action = acRefresh
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 905
      Top = 8
      Width = 122
      Height = 41
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1034
    Height = 653
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1034
      Height = 294
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object grdOutputSummary: TcxGrid
        Left = 0
        Top = 0
        Width = 1034
        Height = 294
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object grdOutputSummaryDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmsSortOrder.ds_ProdUtfall
          DataController.KeyFieldNames = 'SortingOrderNo;ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM1'
              Column = grdOutputSummaryDBTableView1AM1
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM3'
              Column = grdOutputSummaryDBTableView1AM3
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'ProduktV'#228'rde'
              Column = grdOutputSummaryDBTableView1ProduktVrde
            end
            item
              Format = '#########'
              Kind = skSum
              FieldName = 'STYCK'
              Column = grdOutputSummaryDBTableView1STYCK
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'NM3'
              Column = grdOutputSummaryDBTableView1NM3
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = grdOutputSummaryDBTableView1SortingOrderNo
                end>
              SummaryItems = <
                item
                  Format = '#,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'Prisutfall'
                  Column = grdOutputSummaryDBTableView1Medelpris_1
                end
                item
                  Format = '#,###,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'AM3'
                  Column = grdOutputSummaryDBTableView1AM3
                end
                item
                  Format = '#,###.0'
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'Utfall'
                  Column = grdOutputSummaryDBTableView1Utfall
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object grdOutputSummaryDBTableView1RegPointName: TcxGridDBColumn
            DataBinding.FieldName = 'RegPointName'
            Width = 181
          end
          object grdOutputSummaryDBTableView1AT: TcxGridDBColumn
            DataBinding.FieldName = 'AT'
            Width = 69
          end
          object grdOutputSummaryDBTableView1AB: TcxGridDBColumn
            DataBinding.FieldName = 'AB'
            Width = 68
          end
          object grdOutputSummaryDBTableView1KV: TcxGridDBColumn
            DataBinding.FieldName = 'KV'
            Width = 195
          end
          object grdOutputSummaryDBTableView1AM3: TcxGridDBColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 54
          end
          object grdOutputSummaryDBTableView1AM1: TcxGridDBColumn
            DataBinding.FieldName = 'AM1'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 53
          end
          object grdOutputSummaryDBTableView1NM3: TcxGridDBColumn
            DataBinding.FieldName = 'NM3'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 54
          end
          object grdOutputSummaryDBTableView1STYCK: TcxGridDBColumn
            Caption = 'Styck'
            DataBinding.FieldName = 'STYCK'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 59
          end
          object grdOutputSummaryDBTableView1Utfall: TcxGridDBColumn
            DataBinding.FieldName = 'Utfall'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 76
          end
          object grdOutputSummaryDBTableView1ProduktVrde: TcxGridDBColumn
            DataBinding.FieldName = 'ProduktV'#228'rde'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 81
          end
          object grdOutputSummaryDBTableView1medelpris: TcxGridDBColumn
            Caption = 'Medelpris'
            DataBinding.FieldName = 'medelpris'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 50
          end
          object grdOutputSummaryDBTableView1Medelpris_1: TcxGridDBColumn
            DataBinding.FieldName = 'Prisutfall'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 62
          end
          object grdOutputSummaryDBTableView1ProductNo: TcxGridDBColumn
            DataBinding.FieldName = 'ProductNo'
            Visible = False
            Width = 62
          end
          object grdOutputSummaryDBTableView1SortingOrderNo: TcxGridDBColumn
            DataBinding.FieldName = 'SortingOrderNo'
            Visible = False
            GroupIndex = 0
          end
        end
        object grdOutputSummaryDBChartView1: TcxGridDBChartView
          DataController.DataSource = dmsSortOrder.ds_ProdUtfall
          DataController.KeyFieldNames = 'SortingOrderNo;ProductNo'
          DiagramPie.Active = True
          ToolBox.CustomizeButton = True
          ToolBox.DiagramSelector = True
          ToolBox.Visible = tvAlways
          object grdOutputSummaryDBChartView1DataGroup1: TcxGridDBChartDataGroup
            DataBinding.FieldName = 'ProductDisplayName'
          end
          object grdOutputSummaryDBChartView1Series1: TcxGridDBChartSeries
            DataBinding.FieldName = 'AM3'
          end
          object grdOutputSummaryDBChartView1Series2: TcxGridDBChartSeries
            DataBinding.FieldName = 'Utfall'
            Visible = False
          end
          object grdOutputSummaryDBChartView1Series3: TcxGridDBChartSeries
            DataBinding.FieldName = 'Prisutfall'
            Visible = False
          end
        end
        object grdOutputSummaryLevel1: TcxGridLevel
          Caption = 'Tabell'
          GridView = grdOutputSummaryDBTableView1
        end
        object grdOutputSummaryLevel2: TcxGridLevel
          Caption = 'Diagram'
          GridView = grdOutputSummaryDBChartView1
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 294
      Width = 1034
      Height = 359
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1034
        Height = 129
        Align = alClient
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Ber'#228'knad matningshastighet:'
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 80
          Caption = 'Verklig matningshastighet:'
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 104
          Caption = 'Verkningsgrad totaltid:'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 152
          Top = 52
          DataBinding.DataField = 'FeedSpeed'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 152
          Top = 76
          DataBinding.DataField = 'RealLpmMinute'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 152
          Top = 100
          DataBinding.DataField = 'EfficiencyFactor'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 5
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 368
          Top = 32
          Caption = 'F'#228'rdigvara&&biprodukter:'
        end
        object cxLabel5: TcxLabel
          Left = 368
          Top = 56
          Caption = 'Produktionskostnad:'
        end
        object cxLabel6: TcxLabel
          Left = 368
          Top = 80
          Caption = 'R'#229'varukostnad:'
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 496
          Top = 28
          DataBinding.DataField = 'TotValPerNM3In'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 496
          Top = 52
          DataBinding.DataField = 'TotCostPerNM3In'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 10
          Width = 121
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 496
          Top = 76
          DataBinding.DataField = 'RawMtrlCostPerNM3In'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 11
          Width = 121
        end
        object cxLabel7: TcxLabel
          Left = 368
          Top = 104
          Caption = 'Resultat:'
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 496
          Top = 100
          DataBinding.DataField = 'ResultAOPerNM3In'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 13
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 496
          Top = 8
          Caption = 'Sek/NM3 in'
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 32
          Caption = 'K'#246'rordernr:'
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 152
          Top = 28
          DataBinding.DataField = 'SortingOrderNo'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 16
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 648
          Top = 32
          Caption = 'Starttid:'
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 752
          Top = 28
          DataBinding.DataField = 'RealStartTime'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 18
          Width = 121
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 752
          Top = 52
          DataBinding.DataField = 'ProdTimeHour'
          DataBinding.DataSource = dmsSortOrder.ds_SortOrderRes
          TabOrder = 19
          Width = 121
        end
        object cxLabel11: TcxLabel
          Left = 648
          Top = 56
          Caption = 'Produktionstid(tim):'
        end
      end
      object grdRawMtrl: TcxGrid
        Left = 0
        Top = 129
        Width = 1034
        Height = 230
        Align = alBottom
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        object grdRawMtrlDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmsSortOrder.ds_SORawUtfall
          DataController.KeyFieldNames = 'SortingOrderNo;RawMtrlNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'KassationAM3'
            end
            item
              Format = '###########'
              Kind = skSum
              FieldName = 'KassationStyck'
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'KassationAM1'
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM1'
              Column = grdRawMtrlDBBandedTableView1AM1
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'AM3'
              Column = grdRawMtrlDBBandedTableView1AM3
            end
            item
              Format = '########'
              Kind = skSum
              FieldName = 'PCS'
              Column = grdRawMtrlDBBandedTableView1PCS
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'PlannedAM1'
              Column = grdRawMtrlDBBandedTableView1PlannedAM1
            end
            item
              Format = '#,###,###.0'
              Kind = skSum
              FieldName = 'PlannedAM3'
              Column = grdRawMtrlDBBandedTableView1PlannedAM3
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.FocusCellOnCycle = True
          OptionsBehavior.PullFocusing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Bands = <
            item
              Caption = 'Produkt'
              Options.HoldOwnColumnsOnly = True
              Width = 664
            end
            item
              Caption = 'Planerad volym'
              Visible = False
              Width = 214
            end
            item
              Caption = 'F'#246'rbrukad volym'
              Options.HoldOwnColumnsOnly = True
              Width = 172
            end
            item
              Caption = 'OTHER'
              Visible = False
              VisibleForCustomization = False
            end>
          object grdRawMtrlDBBandedTableView1PRODUKT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRODUKT'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Options.Filtering = False
            Width = 133
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1LengthDescription: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LengthDescription'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.Filtering = False
            Width = 141
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1FUKTKVOT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FUKTKVOT'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownWidth = 100
            Properties.KeyFieldNames = 'MCClassNo'
            Properties.ListColumns = <
              item
                FieldName = 'MCDescription'
              end>
            Properties.ListOptions.ShowHeader = False
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1MainRawMtrl: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MainRawMtrl'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Filtering = False
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1ALMM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALMM'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1RawMtrlNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RawMtrlNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1AntalKapSnitt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AntalKapSnitt'
            PropertiesClassName = 'TcxSpinEditProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 26
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1AntalLamellerUt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AntalLamellerUt'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1PlannedAM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PlannedAM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 61
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1PlannedAM1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PlannedAM1'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 68
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1UrlaggsProcent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UrlaggsProcent'
            PropertiesClassName = 'TcxCalcEditProperties'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1RealLPM: TcxGridDBBandedColumn
            Caption = 'AM1'
            DataBinding.FieldName = 'RealLPM'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 39
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1PCS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PCS'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1AM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM3'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1AM1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AM1'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1SortingOrderNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SortingOrderNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1ProductNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ProductNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1MCClassNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MCClassNo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1PricePerNM3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PricePerNM3'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1AntalBitarUt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AntalBitarUt'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            VisibleForCustomization = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object grdRawMtrlDBBandedTableView1LengthSpec: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LengthSpec'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object grdRawMtrlLevel1: TcxGridLevel
          GridView = grdRawMtrlDBBandedTableView1
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 489
    Top = 234
    object acRefresh: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
  object siLangLinked_fProductUtfall: TsiLangLinked
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
      'ListField')
    Left = 504
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600500072006F006400750063007400550074006600
      61006C006C00010055007400660061006C006C00010001004F00750074006300
      6F006D006500010001000D000A006100630043006C006F007300650001005300
      7400E4006E00670001000100430026006C006F0073006500010001000D000A00
      6100630052006500660072006500730068000100550070007000640061007400
      65007200610001000100550070006400610074006500010001000D000A006300
      78004C006100620065006C0031000100420065007200E4006B006E0061006400
      20006D00610074006E0069006E00670073006800610073007400690067006800
      650074003A0001000100010001000D000A00630078004C006100620065006C00
      310030000100530074006100720074007400690064003A000100530074006100
      72007400540069006400010053007400610072007400540069006D0065000100
      5300740061007200740054006900640001000D000A00630078004C0061006200
      65006C00310031000100500072006F00640075006B00740069006F006E007300
      7400690064002800740069006D0029003A0001000100010001000D000A006300
      78004C006100620065006C00320001005600650072006B006C00690067002000
      6D00610074006E0069006E006700730068006100730074006900670068006500
      74003A0001000100010001000D000A00630078004C006100620065006C003300
      01005600650072006B006E0069006E0067007300670072006100640020007400
      6F00740061006C007400690064003A0001000100010001000D000A0063007800
      4C006100620065006C00340001004600E4007200640069006700760061007200
      61002600260062006900700072006F00640075006B007400650072003A000100
      0100010001000D000A00630078004C006100620065006C003500010050007200
      6F00640075006B00740069006F006E0073006B006F00730074006E0061006400
      3A0001000100010001000D000A00630078004C006100620065006C0036000100
      5200E50076006100720075006B006F00730074006E00610064003A0001000100
      010001000D000A00630078004C006100620065006C0037000100520065007300
      75006C007400610074003A000100010052006500730075006C00740073003A00
      010001000D000A00630078004C006100620065006C0038000100530065006B00
      2F004E004D003300200069006E0001000100010001000D000A00630078004C00
      6100620065006C00390001004B00F60072006F0072006400650072006E007200
      3A0001000100520075006E0020006F00720064006500720020006E006F003A00
      010001000D000A006700720064004F0075007400700075007400530075006D00
      6D00610072007900440042005400610062006C00650056006900650077003100
      410042000100410042000100010041005700010001000D000A00670072006400
      4F0075007400700075007400530075006D006D00610072007900440042005400
      610062006C0065005600690065007700310041004D003100010041004D003100
      01000100010001000D000A006700720064004F00750074007000750074005300
      75006D006D00610072007900440042005400610062006C006500560069006500
      7700310041004D003300010041004D00330001000100010001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C0065005600690065007700310041005400010041005400
      0100010041005400010001000D000A006700720064004F007500740070007500
      7400530075006D006D00610072007900440042005400610062006C0065005600
      69006500770031004B00560001004B00560001004B00760061006C0069007400
      6500740001004700720061006400650001004B00760061006C00690074006500
      740001000D000A006700720064004F0075007400700075007400530075006D00
      6D00610072007900440042005400610062006C00650056006900650077003100
      6D006500640065006C00700072006900730001004D006500640065006C007000
      7200690073000100010041007600650072006100670065002000700072006900
      63006500010001000D000A006700720064004F00750074007000750074005300
      75006D006D00610072007900440042005400610062006C006500560069006500
      770031004D006500640065006C0070007200690073005F003100010025002000
      6100760020007200E500760061007200610001000100010001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C006500560069006500770031004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A006700720064004F007500
      7400700075007400530075006D006D0061007200790044004200540061006200
      6C00650056006900650077003100500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      6700720064004F0075007400700075007400530075006D006D00610072007900
      440042005400610062006C00650056006900650077003100500072006F006400
      75006B00740056007200640065000100500072006F00640075006B0074005600
      E40072006400650001000100010001000D000A006700720064004F0075007400
      700075007400530075006D006D00610072007900440042005400610062006C00
      65005600690065007700310052006500670050006F0069006E0074004E006100
      6D00650001004D00E4007400700075006E006B007400010001004D0065006100
      730075007200650070006F0069006E007400010001000D000A00670072006400
      4F0075007400700075007400530075006D006D00610072007900440042005400
      610062006C0065005600690065007700310053006F007200740069006E006700
      4F0072006400650072004E006F0001004B00F60072006F007200640065007200
      01000100520075006E0020006F007200640065007200010001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C0065005600690065007700310053005400590043004B00
      010053007400790063006B000100010050006300730001005300E40063006B00
      01000D000A006700720064004F0075007400700075007400530075006D006D00
      610072007900440042005400610062006C006500560069006500770031005500
      7400660061006C006C00010055007400660061006C006C00010001004F007500
      740063006F006D006500010001000D000A006700720064004F00750074007000
      75007400530075006D006D006100720079004C006500760065006C0031000100
      54006100620065006C006C0001000100010001000D000A006700720064004F00
      75007400700075007400530075006D006D006100720079004C00650076006500
      6C00320001004400690061006700720061006D0001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C0065005600690065007700310041004C004D004D00
      010041004C004D004D0001000100010001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310041004D003100010041004D00310001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D003300010041004D00330001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C0065005600690065007700310041006E00740061006C0042006900
      74006100720055007400010041006E00740061006C0042006900740061007200
      5500740001000100010001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      690065007700310041006E00740061006C004B006100700053006E0069007400
      740001004B006100700073006E00690074007400010001004300750074007400
      69006E006700200070006F0073006900740069006F006E007300010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C0065005600690065007700310041006E007400
      61006C004C0061006D0065006C006C00650072005500740001004C0061006D00
      65006C006C006500720001000100010001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C00650056006900650077003100460055004B0054004B0056004F0054000100
      460055004B0054004B0056004F00540001000100010001000D000A0067007200
      64005200610077004D00740072006C0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C0065006E00670074006800
      4400650073006300720069007000740069006F006E0001004C00E4006E006700
      64006200650073006B007200690076006E0069006E006700010001004C006500
      6E0067006800740020006400650073006300720069007000740069006F006E00
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C0065006E00670074006800530070006500630001004C00E4006E0067006400
      010001004C0065006E00670074006800010001000D000A006700720064005200
      610077004D00740072006C0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D00610069006E005200610077004D00
      740072006C000100480075007600750064007600610072006100010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031004D00
      430043006C006100730073004E006F000100440065006C006100730020006600
      F6007200650020006800790076006C0069006E00670001000100010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100500043005300
      010053007400790063006B000100010050006300730001005300E40063006B00
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6C0061006E006E006500640041004D003100010041004D003100010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6C0061006E006E006500640041004D003300010041004D003300010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      72006900630065005000650072004E004D003300010050007200690073002F00
      4E004D00330001000100500072006900630065002F004E004D00330001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A006700720064005200610077004D0074007200
      6C0044004200420061006E006400650064005400610062006C00650056006900
      650077003100500052004F00440055004B0054000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C006500560069006500770031005200610077004D007400
      72006C004E006F0001005200610064006E007200010001004C0069006E006500
      4E006F00010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005200650061006C004C0050004D00010041004D003100010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031005300
      6F007200740069006E0067004F0072006400650072004E006F00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A006700720064005200610077004D00740072006C004400420042006100
      6E006400650064005400610062006C0065005600690065007700310055007200
      6C006100670067007300500072006F00630065006E0074000100550072006C00
      E400670067002000250001000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A0054006600500072006F0064007500630074005500
      7400660061006C006C0001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A006700720064004F0075007400
      700075007400530075006D006D00610072007900440042005400610062006C00
      65005600690065007700310041004D0033002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A006700720064004F00750074007000750074005300
      75006D006D00610072007900440042005400610062006C006500560069006500
      7700310041004D0031002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004F0075007400700075007400530075006D006D006100
      72007900440042005400610062006C006500560069006500770031004E004D00
      33002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      64004F0075007400700075007400530075006D006D0061007200790044004200
      5400610062006C0065005600690065007700310053005400590043004B002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064004F00
      75007400700075007400530075006D006D006100720079004400420054006100
      62006C0065005600690065007700310055007400660061006C006C002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004F007500
      7400700075007400530075006D006D0061007200790044004200540061006200
      6C00650056006900650077003100500072006F00640075006B00740056007200
      640065002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004F0075007400700075007400530075006D006D006100720079004400
      42005400610062006C006500560069006500770031006D006500640065006C00
      70007200690073002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064004F0075007400700075007400530075006D006D0061007200
      7900440042005400610062006C006500560069006500770031004D0065006400
      65006C0070007200690073005F0031002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500052004F00440055004B0054002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      42007500740074006F006E004500640069007400500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400520061007700
      4D00740072006C0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C0065006E006700740068004400650073006300
      720069007000740069006F006E002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A006700720064005200610077004D0074007200
      6C0044004200420061006E006400650064005400610062006C00650056006900
      650077003100460055004B0054004B0056004F0054002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D006500730001004D00430043006C006100730073004E006F0001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      460055004B0054004B0056004F0054002E00500072006F007000650072007400
      6900650073002E004C006900730074004600690065006C0064004E0061006D00
      6500730001004D0043004400650073006300720069007000740069006F006E00
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100460055004B0054004B0056004F0054002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006F006F006B007500700043006F006D0062006F0042006F007800
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C006500560069006500770031004D00610069006E00
      5200610077004D00740072006C002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790043006800650063006B006500
      6400010054007200750065000100530061006E00740001000100530061006E00
      740001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4D00610069006E005200610077004D00740072006C002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010046006500
      6C0001000100460065006C0001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031004D00610069006E005200610077004D00740072006C00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780043006800650063006B0042006F007800
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C0065005600690065007700310041004C004D004D00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031005200610077004D00740072006C00
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041006E00740061006C00
      4B006100700053006E006900740074002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      5300700069006E004500640069007400500072006F0070006500720074006900
      6500730001000100010001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      690065007700310041006E00740061006C004C0061006D0065006C006C006500
      7200550074002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078005300700069006E004500
      640069007400500072006F007000650072007400690065007300010001000100
      01000D000A006700720064005200610077004D00740072006C00440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6C0061006E006E006500640041004D0033002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      7800430061006C0063004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      5600690065007700310050006C0061006E006E006500640041004D0031002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800430061006C00630045006400690074005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064005200610077004D00740072006C0044004200420061006E0064006500
      64005400610062006C00650056006900650077003100550072006C0061006700
      67007300500072006F00630065006E0074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      7800430061006C0063004500640069007400500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031005200650061006C004C0050004D002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031005000430053002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      0100010001000D000A006700720064005200610077004D00740072006C004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310041004D0033002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F00700065007200740069006500730001000100010001000D00
      0A006700720064005200610077004D00740072006C0044004200420061006E00
      6400650064005400610062006C0065005600690065007700310041004D003100
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C0065005600690065007700310053006F007200740069006E006700
      4F0072006400650072004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A006700720064005200610077004D00740072006C0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F0064007500630074004E006F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      01000100010001000D000A006700720064005200610077004D00740072006C00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D00430043006C006100730073004E006F002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B0065006400010054007200750065000100530061006E0074000100
      0100530061006E00740001000D000A006700720064005200610077004D007400
      72006C0044004200420061006E006400650064005400610062006C0065005600
      69006500770031004D00430043006C006100730073004E006F002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      55006E0063006800650063006B00650064000100460061006C00730065000100
      460065006C0001000100460065006C0001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004D00430043006C006100730073004E006F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780043006800650063006B0042006F007800
      500072006F00700065007200740069006500730001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720069006300
      65005000650072004E004D0033002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      730001000100010001000D000A006700720064005200610077004D0074007200
      6C0044004200420061006E006400650064005400610062006C00650056006900
      65007700310041006E00740061006C0042006900740061007200550074002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      65007200740069006500730001000100010001000D000A006700720064005200
      610077004D00740072006C0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C0065006E0067007400680053007000
      650063002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780043006F006D0062006F004200
      6F007800500072006F0070006500720074006900650073000100010001000100
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      560069006500770031002E00420061006E00640073005B0030005D002E004300
      61007000740069006F006E000100500072006F00640075006B00740001000100
      500072006F006400750063007400010001000D000A0067007200640052006100
      77004D00740072006C0044004200420061006E00640065006400540061006200
      6C006500560069006500770031002E00420061006E00640073005B0031005D00
      2E00430061007000740069006F006E00010050006C0061006E00650072006100
      6400200076006F006C0079006D0001000100010001000D000A00670072006400
      5200610077004D00740072006C0044004200420061006E006400650064005400
      610062006C006500560069006500770031002E00420061006E00640073005B00
      32005D002E00430061007000740069006F006E0001004600F600720062007200
      75006B0061006400200076006F006C0079006D0001000100010001000D000A00
      6700720064005200610077004D00740072006C0044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0033005D002E00430061007000740069006F006E0001004F005400
      48004500520001000100010001000D000A006700720064005200610077004D00
      740072006C0044004200420061006E006400650064005400610062006C006500
      56006900650077003100460055004B0054004B0056004F0054002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4D0043004400650073006300720069007000740069006F006E00010001000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A0054006600500072006F006400750063007400
      55007400660061006C006C000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00}
  end
end
