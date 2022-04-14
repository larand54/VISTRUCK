object frmMain: TfrmMain
  Left = 252
  Top = 102
  Hint = 'Currency'
  Caption = 'VISTRUCK'
  ClientHeight = 795
  ClientWidth = 1226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 126
    Width = 1226
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panelBase: TPanel
      Left = 0
      Top = 0
      Width = 1226
      Height = 669
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object PanelA: TPanel
        Left = 0
        Top = 0
        Width = 1226
        Height = 669
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PanelA'
        TabOrder = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1226
          Height = 116
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Caption = 'Panel7'
          TabOrder = 0
          object grdSelectedPkgs: TcxGrid
            Left = 1
            Top = 1
            Width = 1224
            Height = 114
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            TabOrder = 0
            object grdSelectedPkgsDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dmInventory.ds_PkgsToReposition
              DataController.KeyFieldNames = 'PackageNo;suppliercode'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
              object grdSelectedPkgsDBTableView1PackageNo: TcxGridDBColumn
                Caption = 'Paketnr'
                DataBinding.FieldName = 'PackageNo'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 82
              end
              object grdSelectedPkgsDBTableView1suppliercode: TcxGridDBColumn
                Caption = 'Prefix'
                DataBinding.FieldName = 'suppliercode'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 42
              end
              object grdSelectedPkgsDBTableView1REFERENCE: TcxGridDBColumn
                Caption = 'Referens'
                DataBinding.FieldName = 'REFERENCE'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 130
              end
              object grdSelectedPkgsDBTableView1Product: TcxGridDBColumn
                DataBinding.FieldName = 'Product'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 329
              end
              object grdSelectedPkgsDBTableView1position: TcxGridDBColumn
                Caption = 'Position'
                DataBinding.FieldName = 'position'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 146
              end
              object grdSelectedPkgsDBTableView1PositionID: TcxGridDBColumn
                DataBinding.FieldName = 'PositionID'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object grdSelectedPkgsDBTableView1PackageTypeNo: TcxGridDBColumn
                DataBinding.FieldName = 'PackageTypeNo'
                PropertiesClassName = 'TcxLabelProperties'
                Visible = False
              end
              object grdSelectedPkgsDBTableView1PCS: TcxGridDBColumn
                DataBinding.FieldName = 'PCS'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 94
              end
              object grdSelectedPkgsDBTableView1AM3: TcxGridDBColumn
                DataBinding.FieldName = 'AM3'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 94
              end
              object grdSelectedPkgsDBTableView1NM3: TcxGridDBColumn
                DataBinding.FieldName = 'NM3'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 95
              end
              object grdSelectedPkgsDBTableView1MaxLength: TcxGridDBColumn
                DataBinding.FieldName = 'MaxLength'
                PropertiesClassName = 'TcxLabelProperties'
                Width = 94
              end
            end
            object grdSelectedPkgsLevel1: TcxGridLevel
              GridView = grdSelectedPkgsDBTableView1
            end
          end
        end
        object pcPositioning: TcxPageControl
          Left = 0
          Top = 116
          Width = 1226
          Height = 553
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = tsUttag
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 547
          ClientRectLeft = 3
          ClientRectRight = 1220
          ClientRectTop = 26
          object tsUttag: TcxTabSheet
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'tsUttag'
            ImageIndex = 0
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 1224
            ExplicitHeight = 531
            object PanelMain: TPanel
              Left = 0
              Top = 0
              Width = 1217
              Height = 521
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitWidth = 1224
              ExplicitHeight = 531
              object PanelBottom: TPanel
                Left = 0
                Top = 59
                Width = 1217
                Height = 462
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitWidth = 1224
                ExplicitHeight = 472
                object Panelgrid: TPanel
                  Left = 0
                  Top = 0
                  Width = 1217
                  Height = 462
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  ExplicitWidth = 1224
                  ExplicitHeight = 472
                  object Panel4: TPanel
                    Left = 0
                    Top = 418
                    Width = 1217
                    Height = 44
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alBottom
                    BevelOuter = bvNone
                    TabOrder = 0
                    ExplicitTop = 428
                    ExplicitWidth = 1224
                  end
                  object grdPkgOutput: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1217
                    Height = 418
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Align = alClient
                    TabOrder = 1
                    ExplicitWidth = 1224
                    ExplicitHeight = 428
                    object grdPkgOutputDBTableView1: TcxGridDBTableView
                      OnMouseDown = grdPkgOutputDBTableView1MouseDown
                      Navigator.Buttons.CustomButtons = <>
                      ScrollbarAnnotations.CustomAnnotations = <>
                      OnCellClick = grdPkgOutputDBTableView1CellClick
                      OnCustomDrawCell = grdPkgOutputDBTableView1CustomDrawCell
                      DataController.DataSource = dmInventory.ds_usersmonpu_piv
                      DataController.KeyFieldNames = 'RowGroupNo'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsCustomize.DataRowSizing = True
                      OptionsData.Deleting = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.HideFocusRectOnExit = False
                      OptionsSelection.HideSelection = True
                      OptionsView.ColumnAutoWidth = True
                      OptionsView.DataRowHeight = 100
                      OptionsView.GridLines = glVertical
                      OptionsView.GroupByBox = False
                      OptionsView.Indicator = True
                      Styles.OnGetContentStyle = grdPkgOutputDBTableView1StylesGetContentStyle
                      Styles.Selection = cxStyle1
                      Styles.StyleSheet = GridTableViewStyleSheetWindowsStandardlarge
                    end
                    object grdPkgOutputLevel1: TcxGridLevel
                      GridView = grdPkgOutputDBTableView1
                    end
                  end
                  object PanelPkgsPerLine: TPanel
                    Left = 33
                    Top = 117
                    Width = 306
                    Height = 274
                    Margins.Left = 2
                    Margins.Top = 2
                    Margins.Right = 2
                    Margins.Bottom = 2
                    Caption = 'PanelPkgsPerLine'
                    TabOrder = 2
                    object grdPkgsPerMP: TcxGrid
                      Left = 1
                      Top = 1
                      Width = 304
                      Height = 272
                      Margins.Left = 2
                      Margins.Top = 2
                      Margins.Right = 2
                      Margins.Bottom = 2
                      Align = alClient
                      TabOrder = 0
                      object grdPkgsPerMPDBCardView1: TcxGridDBCardView
                        Navigator.Buttons.CustomButtons = <>
                        ScrollbarAnnotations.CustomAnnotations = <>
                        DataController.DataSource = dmInventory.ds_SumPkgsPerMP
                        DataController.KeyFieldNames = 'RegPointName'
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.CardIndent = 7
                        OptionsView.CardWidth = 544
                        object grdPkgsPerMPDBCardView1RegPointName: TcxGridDBCardViewRow
                          DataBinding.FieldName = 'RegPointName'
                          Position.BeginsLayer = True
                        end
                        object grdPkgsPerMPDBCardView1Packages: TcxGridDBCardViewRow
                          DataBinding.FieldName = 'Packages'
                          Position.BeginsLayer = True
                        end
                      end
                      object grdPkgsPerMPDBChartView1: TcxGridDBChartView
                        DataController.DataSource = dmInventory.ds_SumPkgsPerMP
                        DataController.KeyFieldNames = 'RegPointName'
                        DiagramArea.Enabled = False
                        DiagramColumn.Active = True
                        DiagramColumn.Legend.KeyBorder = lbNone
                        DiagramColumn.Legend.Position = cppNone
                        OptionsBehavior.ValueHints = False
                        Title.Position = cppNone
                        ToolBox.Border = tbNone
                        ToolBox.DataLevelsInfoVisible = dlivNever
                        OnValueClick = grdPkgsPerMPDBChartView1ValueClick
                        object grdPkgsPerMPDBChartView1DataGroup1: TcxGridDBChartDataGroup
                          DataBinding.FieldName = 'RegPointName'
                        end
                        object grdPkgsPerMPDBChartView1Series1: TcxGridDBChartSeries
                          DataBinding.FieldName = 'Packages'
                        end
                      end
                      object grdPkgsPerMPLevel1: TcxGridLevel
                        GridView = grdPkgsPerMPDBChartView1
                      end
                    end
                  end
                end
              end
              object PanelTop: TPanel
                Left = 0
                Top = 0
                Width = 1217
                Height = 59
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                ExplicitWidth = 1224
                object cxButton1: TcxButton
                  Left = 13
                  Top = 5
                  Width = 98
                  Height = 40
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = acRefresh_Usersmonpu_piv
                  SpeedButtonOptions.CanBeFocused = False
                  TabOrder = 0
                  TabStop = False
                end
                object mePackageNo: TcxTextEdit
                  Left = 208
                  Top = 20
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Enabled = False
                  TabOrder = 1
                  Width = 553
                end
                object cxButton2: TcxButton
                  Left = 878
                  Top = 5
                  Width = 86
                  Height = 49
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = acSetupUserOutput
                  SpeedButtonOptions.CanBeFocused = False
                  TabOrder = 2
                  TabStop = False
                end
                object bShowAllOutput: TcxButton
                  Left = 766
                  Top = 5
                  Width = 103
                  Height = 49
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = acShowAllOutput
                  SpeedButtonOptions.CanBeFocused = False
                  TabOrder = 3
                  TabStop = False
                end
                object cxButton4: TcxButton
                  Left = 969
                  Top = 5
                  Width = 98
                  Height = 49
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = acPositionPkgs
                  TabOrder = 4
                end
              end
            end
          end
          object tsPositionPkgs: TcxTabSheet
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Caption = 'tsPositionPkgs'
            ImageIndex = 1
            ExplicitLeft = 1
            ExplicitTop = 21
            ExplicitWidth = 1224
            ExplicitHeight = 498
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 1217
              Height = 61
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alTop
              TabOrder = 0
              ExplicitWidth = 1224
              object cxButton3: TcxButton
                Left = 7
                Top = 4
                Width = 98
                Height = 54
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Action = acSelectPosition
                TabOrder = 0
              end
              object cxButton5: TcxButton
                Left = 1027
                Top = 3
                Width = 98
                Height = 54
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Action = acGoToUttag
                TabOrder = 1
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 61
              Width = 1217
              Height = 460
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitWidth = 1224
              ExplicitHeight = 437
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 390
                Height = 460
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alLeft
                Caption = 'Panelpositionering'
                TabOrder = 0
                ExplicitHeight = 437
                object Panel9: TPanel
                  Left = 1
                  Top = 1
                  Width = 388
                  Height = 53
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alTop
                  Caption = 'Panel9'
                  TabOrder = 0
                end
                object grdMatchingGrid: TcxGrid
                  Left = 1
                  Top = 54
                  Width = 388
                  Height = 405
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  TabOrder = 1
                  ExplicitHeight = 382
                  object grdMatchingGridDBCardView1: TcxGridDBCardView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dmInventory.ds_Matching
                    DataController.KeyFieldNames = 'PositionID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsView.CaptionWidth = 1
                    OptionsView.CardIndent = 5
                    OptionsView.CardWidth = 282
                    object grdMatchingGridDBCardView1Vald: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'Vald'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taRightJustify
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1Position: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'Position'
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1REFERENCE: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'REFERENCE'
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1ProductNo: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'ProductNo'
                      Visible = False
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1ActualLengthMM: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'ActualLengthMM'
                      PropertiesClassName = 'TcxLabelProperties'
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1PositionID: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'PositionID'
                      Visible = False
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1PhysicalInventoryPointNo: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'PhysicalInventoryPointNo'
                      Visible = False
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1PosStatus: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'PosStatus'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1ALMM: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'ALMM'
                      Visible = False
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1PIPNo: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'PIPNo'
                      Visible = False
                      Position.BeginsLayer = True
                    end
                    object grdMatchingGridDBCardView1StoredDate: TcxGridDBCardViewRow
                      DataBinding.FieldName = 'StoredDate'
                      Position.BeginsLayer = True
                    end
                  end
                  object grdMatchingGridDBBandedTableView1: TcxGridDBBandedTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    OnCellClick = grdMatchingGridDBBandedTableView1CellClick
                    DataController.DataSource = dmInventory.ds_Matching
                    DataController.KeyFieldNames = 'PositionID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.DataRowSizing = True
                    OptionsData.Deleting = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OptionsView.Indicator = True
                    OptionsView.RowSeparatorWidth = 3
                    OptionsView.BandHeaders = False
                    Styles.ContentEven = cxStyleContentEven
                    Styles.ContentOdd = cxStyleContentEven
                    Bands = <
                      item
                        Width = 304
                      end>
                    object grdMatchingGridDBBandedTableView1Vald: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'Vald'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taRightJustify
                      Properties.ValueChecked = 1
                      Properties.ValueUnchecked = 0
                      Width = 39
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1Position: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'PositionNamn'
                      PropertiesClassName = 'TcxLabelProperties'
                      Width = 298
                      Position.BandIndex = 0
                      Position.ColIndex = 6
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'REFERENCE'
                      Visible = False
                      Width = 166
                      Position.BandIndex = 0
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1ProductNo: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'ProductNo'
                      Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1ActualLengthMM: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'MaxLength'
                      Width = 87
                      Position.BandIndex = 0
                      Position.ColIndex = 7
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1PositionID: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'PositionID'
                      Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 4
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1PhysicalInventoryPointNo: TcxGridDBBandedColumn
                      Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 5
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1PosStatus: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'Fullt'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.Alignment = taRightJustify
                      Properties.ValueChecked = 1
                      Properties.ValueUnchecked = 0
                      Width = 40
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object grdMatchingGridDBBandedTableView1StoredDate: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'StoredDate'
                      Visible = False
                      Position.BandIndex = 0
                      Position.ColIndex = 8
                      Position.RowIndex = 0
                    end
                  end
                  object grdMatchingGridLevel1: TcxGridLevel
                    GridView = grdMatchingGridDBBandedTableView1
                  end
                end
              end
              object Panel5: TPanel
                Left = 390
                Top = 0
                Width = 360
                Height = 460
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                Caption = 'Panel5'
                TabOrder = 1
                ExplicitWidth = 367
                ExplicitHeight = 437
                object Panel10: TPanel
                  Left = 1
                  Top = 1
                  Width = 358
                  Height = 53
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alTop
                  Caption = 'Panel9'
                  TabOrder = 0
                  ExplicitWidth = 365
                end
              end
              object Panel6: TPanel
                Left = 750
                Top = 0
                Width = 467
                Height = 460
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alRight
                TabOrder = 2
                ExplicitLeft = 757
                ExplicitHeight = 437
                object Panel11: TPanel
                  Left = 1
                  Top = 1
                  Width = 465
                  Height = 53
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alTop
                  Caption = 'Panel9'
                  TabOrder = 0
                end
                object grdArea: TcxGrid
                  Left = 1
                  Top = 54
                  Width = 195
                  Height = 405
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  TabOrder = 1
                  ExplicitHeight = 382
                  object grdAreaDBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dmInventory.ds_allAreas
                    DataController.KeyFieldNames = 'AreaID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsSelection.CellSelect = False
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.DataRowHeight = 26
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    OptionsView.RowSeparatorColor = clWhite
                    OptionsView.RowSeparatorWidth = 2
                    Styles.ContentEven = cxStyleContentEven
                    Styles.ContentOdd = cxStyleContentOdd
                    object grdAreaDBTableView1AreaName: TcxGridDBColumn
                      Caption = 'Area'
                      DataBinding.FieldName = 'AreaName'
                      PropertiesClassName = 'TcxLabelProperties'
                    end
                    object grdAreaDBTableView1AreaID: TcxGridDBColumn
                      DataBinding.FieldName = 'AreaID'
                      Visible = False
                    end
                  end
                  object grdAreaLevel1: TcxGridLevel
                    GridView = grdAreaDBTableView1
                  end
                end
                object grdPosition: TcxGrid
                  Left = 196
                  Top = 54
                  Width = 270
                  Height = 405
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alClient
                  TabOrder = 2
                  ExplicitHeight = 382
                  object cxPositionDBTableView1: TcxGridDBTableView
                    Navigator.Buttons.CustomButtons = <>
                    ScrollbarAnnotations.CustomAnnotations = <>
                    DataController.DataSource = dmInventory.ds_AllPositions
                    DataController.KeyFieldNames = 'PositionID'
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    OptionsSelection.CellSelect = False
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.DataRowHeight = 26
                    OptionsView.GridLines = glNone
                    OptionsView.GroupByBox = False
                    Styles.ContentEven = cxStyleContentEven
                    Styles.ContentOdd = cxStyleContentEven
                    object cxPositionDBTableView1Position: TcxGridDBColumn
                      DataBinding.FieldName = 'Position'
                      PropertiesClassName = 'TcxLabelProperties'
                    end
                    object cxPositionDBTableView1PositionID: TcxGridDBColumn
                      DataBinding.FieldName = 'PositionID'
                      Visible = False
                    end
                    object cxPositionDBTableView1PosStatus: TcxGridDBColumn
                      DataBinding.FieldName = 'PosStatus'
                      Visible = False
                    end
                    object cxPositionDBTableView1AreaID: TcxGridDBColumn
                      DataBinding.FieldName = 'AreaID'
                      Visible = False
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxPositionDBTableView1
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1226
    Height = 126
    ApplicationButton.Glyph.SourceDPI = 96
    ApplicationButton.Glyph.Data = {
      424D360900000000000036000000280000001800000018000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000AE38FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000AE38FF00A036FF00A036FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FF000000000000
      000000000000000000000000000000AE38FF00A036FF00A036FF00A036FF00A0
      36FF000000000000000000000000000000000000000000000000000000000000
      0000DAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FF00AE38FF00A036FF00A036FF0000000000AE38FF00A0
      36FF00000000000000000000000000000000000000000000000000000000CDD3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF00AE38FF00A036FF00A036FF00000000F1F1F1FF00AE38FF00A0
      36FF00A036FF0000000000000000000000000000000000000000CDCDC7FFCDD3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF00A036FF00A036FF00000000F1F1F1FFF1F1F1FFF1F1F1FF00AE
      38FF00A036FF00A036FF00000000000000000000000000000000CDCDC7FFCDD3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FF290086FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FF00AE38FF00AE38FF00A036FF000000000000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FF290086FF290086FF290086FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FF00AE38FF00A036FF0000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FF290086FFF1F1F1FFF1F1
      F1FFF1F1F1FF290086FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FF00AE38FF0000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF290086FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF290086FFF1F1F1FFF1F1F1FF0000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FF290086FF290086FF290086FFF1F1F1FF0000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFDAD3DAFFDAD3DAFFE6E6E6FFE6E6E6FFE6E6E6FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FF290086FFF1F1F1FFF1F1F1FF0000000000000000CDCDC7FFD3D3
      CDFFDAD3D3FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF0000000000000000CDCDC7FFD3D3
      CDFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF0000000000000000CDCDC7FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000000000000000000000E6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000000000000000000000000000000000
      00000000000000000000E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    ApplicationButton.Menu = dxBarApplicationMenu1
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    QuickAccessToolbar.Visible = False
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab2: TdxRibbonTab
      Active = True
      Caption = 'Lastorder'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
  end
  object ActionList1: TActionList
    Images = imglOutbar_large
    Left = 312
    Top = 190
    object atDataCountry: TAction
      Category = 'DATA'
      Caption = 'Country'
      Hint = 'Country'
    end
    object atDeliveryTerm: TAction
      Category = 'DATA'
      Caption = '&Delivery Term'
      Hint = 'Delivery Term'
    end
    object atPaymentTerm: TAction
      Category = 'DATA'
      Caption = '&Payment Term'
      Hint = 'Payment Term'
    end
    object atCurrency: TAction
      Category = 'DATA'
      Caption = '&Currency'
      Hint = 'Currency'
    end
    object atPackUnit: TAction
      Category = 'DATA'
      Caption = 'Price &Unit'
      Hint = 'Price Unit'
    end
    object atUnitName: TAction
      Category = 'DATA'
      Caption = '&Volume Unit'
      Hint = 'Volume Unit'
    end
    object atExit: TAction
      Caption = 'E&xit'
      Hint = 'Exit'
      ShortCut = 32883
      OnExecute = atExitExecute
    end
    object atPackageCode: TAction
      Category = 'DATA'
      Caption = 'Pac&kage Code'
    end
    object atAbout: TAction
      Caption = '&About...'
      Hint = 'About'
      OnExecute = atAboutExecute
    end
    object atMarketRegion: TAction
      Category = 'DATA'
      Caption = '&Market Region'
      Hint = 'Market Region'
    end
    object atStatisticalCode: TAction
      Category = 'DATA'
      Caption = '&Statistical Code'
      Hint = 'Statistical Code'
    end
    object atLanguage: TAction
      Category = 'DATA'
      Caption = '&Language'
      Hint = 'Language'
    end
    object acUserPreference: TAction
      Caption = 'Anv'#228'ndarinst'#228'llningar'
      OnExecute = acUserPreferenceExecute
    end
    object acBytAnvandare: TAction
      Caption = 'Byt Anv'#228'ndare'
      OnExecute = acBytAnvandareExecute
    end
    object acFTPSetup: TAction
      Caption = 'FTP setup'
    end
    object acReportNames: TAction
      Category = 'DATA'
      Caption = 'Rapportnamn'
    end
    object acAvrop: TAction
      Caption = 'Avrop'
      ImageIndex = 0
      ShortCut = 16450
    end
    object acAR: TAction
      Caption = 'Ankomst registrera'
      ImageIndex = 9
      OnExecute = acARExecute
    end
    object acSkeppningsinstruktion: TAction
      Caption = 'Skeppnings instruktion'
      ImageIndex = 32
      ShortCut = 16452
    end
    object acKPLista: TAction
      Caption = 'KP lista'
      ImageIndex = 27
      ShortCut = 16453
    end
    object acFragaAvrop: TAction
      Caption = 'Fr'#229'ga avrop'
      ImageIndex = 22
    end
    object acEjFakturerat: TAction
      Caption = 'Ej fakturerat'
      ImageIndex = 21
    end
    object acUtlastningVerk: TAction
      Caption = '   Lastorder   '
      ImageIndex = 1
      OnExecute = acUtlastningVerkExecute
    end
    object acLevereradeLaster: TAction
      Caption = 'Levererade laster'
      ImageIndex = 1
      OnExecute = acLevereradeLasterExecute
    end
    object acFakturalista: TAction
      Caption = 'Fakturalista'
      ImageIndex = 28
      ShortCut = 16499
    end
    object acSamlingsFakturaLista: TAction
      Caption = 'Samlings fakturalista'
      ImageIndex = 23
    end
    object acRegistreraFraktAvrakning: TAction
      Caption = 'Registrerade fraktavr'#228'kningar'
      ImageIndex = 21
    end
    object acRegistreradeFraktAvrakningar: TAction
      Caption = 'Registrera frakter'
      ImageIndex = 6
    end
    object acLagerRapport: TAction
      Caption = 'Lagerrapport'
    end
    object acRegistreraAvrakning: TAction
      Caption = 'Registrera avr'#228'kning'
      ImageIndex = 6
    end
    object acRegistreradeAvrakningar: TAction
      Caption = 'Registrerade avr'#228'kningar'
      ImageIndex = 24
    end
    object acAnkomnaHamn: TAction
      Caption = 'Ankomna hamn'
      ImageIndex = 32
      OnExecute = acAnkomnaHamnExecute
    end
    object acPaketinfo: TAction
      Caption = 'Paketinfo'
      ImageIndex = 4
    end
    object acKontrolleraAvrakningslaster: TAction
      Caption = 'Kontrollera avr'#228'kningslaster'
    end
    object acKontoLogik: TAction
      Caption = 'Konto styrning'
      ImageIndex = 21
    end
    object acOrderstock: TAction
      Caption = 'Orderstock'
      ImageIndex = 22
    end
    object acIntraStat: TAction
      Caption = 'Intrastat'
      ImageIndex = 21
    end
    object acTradingAnalyze: TAction
      Caption = 'Trading analys'
      ImageIndex = 33
    end
    object acAttestCommisionAndExtFreight: TAction
      Caption = 'Attest kommission&&frakt'
      ImageIndex = 32
    end
    object acPayControl: TAction
      Caption = 'Betalningskontroll'
      ImageIndex = 21
    end
    object acImportFromHampen: TAction
      Caption = 'Importera paket&&laster fr'#229'n Hampen'
    end
    object acCreditInsurance: TAction
      Caption = 'Kreditf'#246'rs'#228'kring'
      ImageIndex = 16
    end
    object acCreditAnalysis: TAction
      Caption = 'Kreditanalys'
    end
    object acLagervy: TAction
      Caption = 'Lagervy'
      ImageIndex = 4
      OnExecute = acLagervyExecute
    end
    object acFragaPaket: TAction
      Caption = 'Fraga paket'
      ImageIndex = 4
      OnExecute = acFragaPaketExecute
    end
    object acAndraPaket: TAction
      Caption = #196'ndra paket'
      ImageIndex = 4
      OnExecute = acAndraPaketExecute
    end
    object acPkgStdSizeIntervall: TAction
      Caption = 'Std pkt storlek'
      ImageIndex = 4
      OnExecute = acPkgStdSizeIntervallExecute
    end
    object acTorkhanteraren: TAction
      Caption = 'Torkhanteraren'
      ImageIndex = 14
      OnExecute = acTorkhanterarenExecute
    end
    object acChangeLanguage: TAction
      Caption = 'Byt Spr'#229'k'
      OnExecute = acChangeLanguageExecute
    end
    object acDeRegisterPackages: TAction
      Caption = 'Avregistrera paket'
      ImageIndex = 5
      OnExecute = acDeRegisterPackagesExecute
    end
    object acPositionView: TAction
      Caption = 'Positions vyer'
      ImageIndex = 14
      OnExecute = acPositionViewExecute
    end
    object acRefresh_Usersmonpu_piv: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefresh_Usersmonpu_pivExecute
    end
    object acSetupUserOutput: TAction
      Caption = 'Inst'#228'llningar'
      OnExecute = acSetupUserOutputExecute
    end
    object acSelectPosition: TAction
      Caption = 'V'#228'lj position'
      ImageIndex = 14
    end
    object acShowAllOutput: TAction
      Caption = 'Visa alla uttag'
      OnExecute = acShowAllOutputExecute
    end
    object acAskAvrop: TAction
      Caption = 'Aviseringslista'
      ImageIndex = 32
      OnExecute = acAskAvropExecute
    end
    object acPositionPkgs: TAction
      Caption = 'Positionera'
      OnExecute = acPositionPkgsExecute
    end
    object acGoToUttag: TAction
      Caption = 'Tillbaka'
      OnExecute = acGoToUttagExecute
    end
    object acEWSProfile: TAction
      Caption = 'acEWSProfile'
    end
  end
  object imglOutbar_large: TImageList
    Height = 24
    Width = 24
    Left = 312
    Top = 248
    Bitmap = {
      494C010122002500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000D800000001002000000000000044
      010000000000000000000000000000000000000000000000000000426B000000
      000000426B000000000000000000004A73000000000000426B0000426B00004A
      7300004A73000000000000426B0000426B000000000000000000000000000000
      00000000000000426B0000426B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100000000000000
      000000426B0000000000004A73000000000000426B0000000000004A73000000
      000000426B0000426B0000000000004A73000000000000426B00000000000042
      6B0000426B00004A7300004A7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9C4200FF8C2100FF8C2100FF8C
      2100004A7300004A730000426B0000426B00004A7300004A7300000000000042
      6B0000000000004A7300004A73000000000000426B0000426B0000426B00004A
      7300004A73000000000000426B0000426B000000000000000000000000000000
      00000000000000000000000000005A5A5A007B7373007B7373007B7373005A5A
      5A00000000000000000000000000000000005A5A5A007B7373007B7373003131
      31005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9C4200FF9C4200FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100004A73000000000000426B0000426B00004A
      7300004A7300000000000000000000426B0000426B0000426B00004A73000000
      00000000000000426B00004A7300000000000000000000000000000000000000
      00000000000000000000424A4A0084848400B5ADAD00CECECE00B5ADB5008C84
      8C007B73730000000000000000004242420084848400ADADAD00CECECE00B5AD
      B50084848C007B73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C21002100
      BD002100BD002100BD002100BD002100BD002100BD002100BD00004A73000000
      00000000000000426B0000426B00004A7300004A7300004A7300000000000000
      000000426B00004A73000000000000426B000000000000000000000000000000
      00000000000042424200848C8C008C8C8C00525A5A007B7373007B7373007B73
      73007B7373007B7373007B737300313131007B737300423939007B7373005A5A
      5A008C8C8C009C9494007B737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C21002100BD002100
      BD002100BD002100BD002100BD002100BD002100BD002100BD002100BD002100
      BD0000426B00004A7300004A730000000000000000000000000000426B000042
      6B00004A73000000000000426B00004A73000000000000000000000000000000
      00000000000052525200F7EFEF004A525A00847B8C0052636B005A5252008C9C
      9C00C6CECE00BDB5BD00BDBDC600C6CECE008C8C940052525200DEDEDE000000
      000052524A00EFEFEF00525A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C21002100BD002100BD002100
      B5002100B5002100B5002100B5002100B5002100B5002100BD002100BD002100
      BD002100BD002100BD002100BD000000000000426B0000426B0000426B00004A
      73000000000000426B00004A730000426B000000000000000000000000000000
      000000000000736B6B00D6D6D600C6CEC600848C8C006B636300737373007373
      73007B7373007373730063736B006B7373007B7373006B737B00736B6B008484
      8400BDCEC600D6CECE00736B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C21002100BD002100B5008C8C
      8C008C8C8C008C8C8C000000000000CEEF0000B5CE002100B5002100B5002100
      B5002100BD002100BD002100BD002100BD002100BD00004A7300004A73000000
      000000426B00004A730000426B0000426B000000000000000000000000000000
      000000000000000000008C8C8400D6CECE00FFFFFF00FFFFFF00EFEFEF00B5AD
      B5008C7B7B00A55A5A00AD635A00948C8400CECECE00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C21002100B5008C8C8C008C8C
      8C00000000000000000000B5CE0000C6DE0000CEEF0000B5CE0000A5BD0000B5
      CE002100B5002100B5002100B5002100BD002100BD002100BD002100BD002100
      BD00004A730000426B0000426B00004A73000000000000000000000000000000
      000000000000634231006B634A0063735A00737363006B736B00736B63008473
      6300B56B5200DE523900DE5A3900AD5A4A00736B6300846B6B006B7373007B73
      73009C8C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100848484008C8C8C000000
      00000000000000B5CE0000B5CE0000B5CE0000C6DE0000B5CE00009CB50000CE
      EF0000B5CE0000B5CE00009CB5002100B5002100B5002100B5002100BD002100
      BD002100BD002100BD002100BD0000426B000000000000000000000000000000
      00006B5A4A00AD5A39004A631800216B0800186B1800316B1800D67B4200EF6B
      4200E7633900FF633100F7632900945A1800085200005A4A29005A5A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100848484008C8C8C008C8C
      8C008C8C8C0000000000000000000000000000CEEF0000CEEF0000B5CE0000B5
      CE0000CEEF0000A5BD0000B5CE0000C6DE00000000008C8C8C002100B5002100
      B5002100B5002100BD002100BD002100BD000000000000000000000000000000
      0000844A3900846B3100637B29001884180029842100CE844200EF7B4200FF7B
      4A00EF734200FF6B4200EF6B42006B5A1800216B0800424A08005A4A29006B5A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100848484008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C00000000000000000000A5BD0000B5
      CE0000B5CE00009CB50000A5BD00000000000000000073737300737373007373
      7300737373002100B5002100B5002100B500000000000000000000000000847B
      7B00B56B3900F77B520029842100C6945A00CE945200B5944A00FF8C5A00FF8C
      5A00F77B5200F77B4A00FF6B4200B5632900216B0800216B0800424A0800847B
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C21008484
      840084848400848484008C8C8C008C8C8C008C8C8C008C8C8C00000000000000
      00000000000000B5CE0000000000737373007373730073737300FFFFFF00FFFF
      FF007373730073737300737373002100B5000000000000000000000000006363
      6300B57B4A00318C3900108C2100CE9C5A00E7AD6B0031AD4A004A9C4200F79C
      6300EF945A00FF845200F77B4A00EF6B39007B632100216B0800216B08006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C21008484840084848400848484008C8C8C008C8C8C008C8C
      8C008C8C8C00000000007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00737373002100B5000000000000000000000000005A5A
      5A005A84390008A5390000A5390039AD52007BB5630008AD42005AAD5200FFB5
      7300FFA56B00FF8C5A00F77B4A00EF7B4200B5633100735A18005A4A18006B5A
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C210084848400848484008484
      84008C8C8C007373730073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002100B500FF8C21000000000000000000000000007373
      7B005294420008AD420008C65A0000D66B0010DE7B0000B55200F7D69400FFBD
      8400F7B57300FF9C5A00EF8C5200FF7B4A007B6B2100216B0800216B0800636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100848484008484840084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FF8C2100FF8C21000000000000000000000000009C94
      94006B9C520000B54A0000C6630000D66B0008EF8C0000AD5200FFDEA500FFCE
      9400FFB57B00FFA56B00EF945200AD843900316B1800216B0800425221009C94
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF9C4200FF8C
      2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C210000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2100FF8C2100FF8C21000000000000000000000000009C94
      94009C8C630008B55A0008CE6B0000E7730000EF8C0000E78400ADDE9400FFD6
      9C00FFB57B00FFAD7300CE94520018842100006B0800216B0800736342000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF9C
      4200FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C
      4200FF8C2100FF8C2100FF8C2100FF8C2100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF8C2100FF8C2100FF8C21000000000000000000000000000000
      00009C94840073A5730008CE6B0000D66B0008EF8C0000EF8C0063CE7B00F7D6
      9400FFBD8400F7A56B004294420010842900636B2100635A31009C9484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF9C4200FF8C2100FF8C2100FF9C4200FF8C2100FF8C2100FF9C
      4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C21000000000000000000000000000000
      000000000000A594730039BD63004ADE7B0031DE84005AE78C0029CE6B0094C6
      7300FFB57B00FFA56B00B5944A00DE7B4A00DE734A00947B6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF9C4200FF8C2100FF8C
      2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF9C4200FF9C4200FF8C2100FF8C2100FF9C4200FF9C
      4200FF8C2100FF8C2100FF8C2100FF8C21000000000000000000000000000000
      00000000000000000000AD947B00DEB59400FFD6A500F7D69C00BDCE84009CBD
      6B00CEAD6300FF9C6300FF7B5A00CE735A00AD846B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF8C2100FF8C21000000000000000000000000000000
      0000000000000000000000000000BDA58C00B59C7B00EFAD7B00EFAD7B00F7A5
      7300F7946B00D6846300AD846B00ADA594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF9C
      4200FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF9C4200FF9C4200FF9C42000000000000000000000000000000
      0000000000000000000000000000000000009C949400A5ADB50094949C008C8C
      8C009C949400ADADAD009C949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF9C4200FF9C4200FF8C2100FF9C4200FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF9C42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C2100FF8C2100FF9C4200FF9C4200FF8C
      2100FF8C2100FF8C2100FF8C2100FF8C21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE63000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE6300000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000000000000000000000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100319C31005263
      4200636B4A007B736300948C8400000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE630000000000000000000000000000BD846300DE9C8C00FFC6
      FD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210042BD420042BD420042BD420042BD4200107B1000319C
      31003194290021731800319C310021842100736B5A0000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      39009CDE8C0042BD420042CE420042BD42004A42290000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50052C6520042BD420042CE42002184210000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      FD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630052C6520042BD42004A6B390000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E700317B
      EF00527BC600296BC600F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7008C8C8C00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000C6846300DEA58C00FFBD
      FD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      000000000000000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A00319C3100637B520000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00E7E7E700397B
      E700007BFF000073F700527BC600FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B552005A5242005A5242005A5242005A5242005A52
      42005A524200000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C00009CFF00008CFF00008CFF00527BC6008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00292921000000000000000000000000000000
      00005A524200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFF7EF0000B5FF00008CFF000094FF00527BC600527BC6008C8C8C00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF008C8C8C00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      FD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B520000000000000000001818180000000000000000000831FF00526B
      BD00524A4200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD60000B5FF0008C6FF00009CFF00009CFF00527BC600FFEF
      D600FFEFD600FFEFD600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C00000000000000000029292900000000000831FF00A5ADE7000831
      FF004A424A00000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C0000B5FF0008BDFF0000ADFF00009CFF00527B
      C6008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000181818000831FF0000000000000000004A6B
      E7000831FF00000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00527BC600527BC600527BC60000C6FF0008FFFF0031F7FF0010BDFF0000AD
      FF00527BC600527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE630000000000000000000000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000424242004242420042424200424239004242
      4A000831FF004A63CE000000000000000000000000008C8C8C00E7E7E7008C8C
      8C0029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FFFF004AEFFF0018CE
      FF0000A5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE630000000000000000000000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      0000000000000831FF000831FF004A63CE00000000008C8C8C008C8C8C008C8C
      8C0039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DEFF0000FFFF0000FF
      FF0039EFFF0008C6FF00527BC6008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      000000000000000000006B8CFF000831FF00000000008C8C8C00E7E7E7008C8C
      8C00FFEFD60008C6FF0039E7FF004AEFFF0042F7FF0018FFFF0000FFFF0000FF
      FF0008FFFF0021FFFF00527BC600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE630000000000000000000000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C00000000005A5242005A5242005A5242005A5242005A52
      42005A524200000000000000000000000000000000008C8C8C00E7E7E7008C8C
      8C00FFEFD600FFEFD600FFEFD60031D6FF0008F7FF0000FFFF0000F7FF0000D6
      FF0000B5FF00527BC600FFEFD600FFEFD6008C8C8C00FFEFD600FFEFD600FFEF
      D600FFEFD600FFEFD6006B6B6B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE630000000000000000000000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000080808000000000000000000000000000000
      00004242420000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C210031D6FF0000F7FF0000EF
      FF0000ADFF0000A5FF00527BC600EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE630000000000000000000000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA50000000000000000001818180000000000000000000831FF00526B
      BD005A5A5A0000000000000000000000000000000000EF9C2100E7A56300EF9C
      2100E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300EF9C210031D6
      FF0042DEFF0010D6FF005AA5FF00527BC600EF9C2100E7A56300E7A56300E7A5
      6300E7A56300E7A56300EF9C2100000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A56300000000000000000000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C00000000000000000029292900000000000831FF00849CFF000831
      FF004A4A520000000000000000000000000000000000EF9C2100FFDEB500EF9C
      2100FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500EF9C2100FFDE
      B500FFDEB50031D6FF0052A5FF00527BC600EF9C2100FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500EF9C210000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B210000000000000000000000000000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000181818000831FF0000000000000000004A6B
      E7000831FF0000000000000000000000000000000000EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000292929004242420042424200424242003139
      52000831FF004A63CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000831FF000831FF004A63CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      FD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B8CFF000831FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00DEDEDE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C00FFFFFF00E7E7E7009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFE700FFEFDE00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500FFFFFF00E7E7E700B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD00B5ADAD00B5ADAD00B5AD
      FD00FFEFD600CE63000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFE700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7E700CE63000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5AD
      5A00CEAD2900CEAD29009CA529007B9C29005294290039943100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084F78400A5F79C00E7EFA500FFDE8C00FFD67300FFC64200DEAD21009C9C
      21007B942100528C2100398C3100429C42000000000000000000000000000000
      00000000000000000000000000000000000000000000B5735200C64A2900C642
      1800C6422100CE4A2100CE4A2900C64A2900C64A2900C64A29008C5242008473
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      6300FFFFFF00FFFFFF00A5F79C0084EF7B0084EF7B007BEF630063EF5200CEEF
      8C00F7DE7B00FFD66300FFCE4A00DEAD2100638C210000000000000000000000
      00000000000000000000000000000000000000000000C64A2900D64A2900F763
      4A00F7634A00FF7B6300FF7B6300EF634A00C6633100E75A3900EF5A4200C64A
      29008C4A290063735A00527B52002184210021842100319C3100319C3100319C
      31007BAD63007BAD63005A735A00000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084F7840084EF7B009CF78C00DEEF8400FFDE4A00F7DE5200B5DE4A00B5EF
      63008CEF5A0084EF630084EF630084EF5A00528C180000000000000000000000
      00000000000000000000000000000000000000000000CE4A2100F7634A00F763
      4A00FF7B6300FF7B6300FF8C6B00D66B4200EFC69400D66B4200FF8C6B00F763
      4A00D64A29005A7B210042AD420021842100319C31009CDE8C009CDE8C005AD6
      5A005AD65A0042CE42005AA55A00000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      6300FFFFFF00FFFFFF00F7FFDE00DEDE5200A5BD21009CB518008CBD1000B5C6
      2100CEC62100F7CE3100FFDE4A00FFDE5A008C9C2100529C3100399431003994
      390052AD520000000000000000000000000000000000CE4A2100F7634A00FF7B
      6300FF7B6300FF8C6B00DE6B4200EFB58400FFDEAD00DE7B4A00FF8C6B00FF8C
      6B00E75A39007B8C390052B5520084BD730063AD5A00B5E7A5009CDE8C008CDE
      73005AD65A005AD65A005AA55A0000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      630084EF7B0084EF7B008CEF7B00CED62900B5BD2100B5B52100A5B52100BDB5
      2900B5B521009CAD18009CAD18009CB51800B5AD2100E7CE4200F7CE4200E7CE
      4200A5BD390000000000000000000000000000000000D6846300EF634A00FF7B
      6300FF8C6B00E77B5200DE8C5A00FFD69C00FFD6A500DE8C5A00FF8C6B00FF8C
      6B00E75A39005AD65A0052B55200C6DEB500D6E7C6004AA54A00B5E7A5009CDE
      8C008CDE73005AD65A005AA55A0000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000000000000A5B5
      6300FFFFFF00FFFFFF00FFF7BD00F7CE3900BDC62100A5BD18008CB510009CB5
      18009CB518009CB510009CAD1800A5B52100A5941000A5AD3100A5AD3100B5AD
      3900E7CE42000000000000000000000000000000000000000000D66B4A00EF7B
      5A00EF7B5A00D66B4200DE9C8400DEA58C00FFBD8C00E78C5A00EF7B5A00FF8C
      6B00B56B310073D673005AAD5A00EFF7E700FFFFFF00A5CEA5005AB55A00B5E7
      A5009CDE8C009CDE8C005AA55A0000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000000000000000000000000000A5B5
      63008CF78C0084EF7B00A5DE4A00BDC62100A5C61800A5C61800A5BD1800CEC6
      2100DEC62900CEBD2100BDBD2100A5B51800A5A51000B5B53100B5AD3100CEBD
      3900A5C64200000000000000000000000000000000000000000000000000A563
      42008C31180042215A00292994002929940042317300A5524A00C65A31009463
      210073D6730073D673005AA55A00FFF7E700FFF7E700F7EFDE007BAD63009CDE
      8C009CDE8C005AA55A0000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      210084636300002142000000000000000000000000000000000000000000A5B5
      6300B5FFB500DEFFCE00FFDE5A00F7CE3100E7CE3100CEC62100A5C61000B5C6
      1800A5BD1800A5BD1000A5BD10009CB51000A5A51000BDBD3100BDB53100E7CE
      42007BB5520000000000000000000000000000000000000000004A4A4A003131
      310008080800001039001031940010319400103194002929940063525A007BA5
      7B004AA54A0063BD63005A9C520094ADB5004A8CB500428CB5006394A5003184
      39005AA55A00000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000000000000000000000000000A5B5
      6300FFFFFF00B5EF8C00CED62900CECE1800BDCE1800B5C61000A5C61000BDCE
      1800CEC62100DEC62900DEC62900DEC62900BDAD1800CEC63100CEC63100E7CE
      42007BBD7300000000000000000000000000000000007B7B7B00313131000808
      080008214A00103994001842AD001842AD001842AD0010399C00292994000000
      0000000000008CBD9400187B7B002184D600218CDE00218CDE002184D6001073
      9C005A7373000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A5004242420000000000000000000000000000000000A5B5
      63008CF78C00B5EF6300E7D62900F7D63100FFD63100F7D62100DECE2100F7CE
      2900DECE2100BDCE1800B5C61000B5C61000BDAD1000DECE3100E7CE3900A5C6
      420000000000000000000000000000000000000000004A4A4A00181818000810
      1800184AA5001852BD00185ABD00185ABD00185ABD001852BD0010318C00737B
      8C000000000000000000298CE7003194F7003194F7003194F7003194F7002994
      EF002173A5000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A5004242420000000000000000000000000000000000B5B5
      6300FFFFFF00FFE77300E7DE3900DEDE2900CED62900CED61800BDCE1000CECE
      1800CECE1800BDCE1800CECE1800DECE2100DEB51000E7CE3100F7D6420084B5
      4A00000000000000000000000000000000000000000031313100212121001021
      3100185ABD00216BCE00216BCE00216BCE00216BCE002163CE00104AAD005A63
      840000000000529CCE00399CFF0052A5FF0052A5FF0039A5FF00399CFF00399C
      FF002994EF00426B7B000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000000000000000000A5B5
      63008CEF7B00CEDE3100CEDE3100DEDE3100E7DE3900E7DE3100DED62100FFD6
      3100FFD63100FFD62900F7D62100DECE1800DEBD1000F7CE3100F7D642007BBD
      6300000000000000000000000000000000000000000029292900313131002121
      2100216BC600297BDE00297BE7002984E700297BE700297BDE001863C6004A5A
      840000000000429CDE0042A5FF0042ADFF0042ADFF0042ADFF0042A5FF0042A5
      FF0039A5FF002973A5000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000000000000000000B5B5
      6300FFF7BD00FFDE4A00FFE76300F7DE5200E7DE4200DEDE3100BDDE2100CED6
      2900CED62900CED62100CED61800CECE1800E7C61000FFDE3900B5C642000000
      0000000000000000000000000000000000000000000031313100393939002929
      2900185ABD00298CF7005AADFF005AADFF00429CFF00298CF700216BCE00526B
      8C000000000042A5E7004AADFF006BBDFF006BBDFF006BBDFF006BBDFF004AAD
      FF0042A5FF00529CC6000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000000000000000000A5B5
      6300A5DE4A00CEDE4200CEE75200CEE74A00CEDE4200CEDE3900CEDE3100E7DE
      4200F7DE4200FFDE4200FFDE3900FFD63100F7C61800FFDE420084BD4A000000
      0000000000000000000000000000000000000000000031313100424242004A4A
      4A0018294200185ABD00297BDE00428CEF00429CFF003194F700216BC6007384
      9400000000004AA5E7006BBDFF006BC6FF006BC6FF006BC6FF006BC6FF0052B5
      FF004AADFF003194DE00000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000000000000000000000000000000000B5B5
      5A00FFDE6300FFE77B00FFEF8400FFE77B00FFE77300F7E75A00DEDE4A00E7E7
      4A00DEDE4200CEDE3100CEDE3100CED62900DEC62100F7D642007BBD63000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A005A5A5A00525252003131420010215A0029299400292994004A4A4A000000
      00000000000052ADDE006BBDFF0042A5DE0042A5DE004AB5F7006BBDFF006BBD
      FF004AADF7002184BD0000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000000000000B5B5
      5A00DEDE3900CEEF7300CEEF7300CEEF6300CEEF5A00CEE75200B5DE4A00CEE7
      4A00CEDE4200DEDE4200DEDE4200E7DE4200F7CE2900BDCE4200000000000000
      0000000000000000000000000000000000000000000000000000393939005A5A
      5A006B6B6B009C9C9C00A5A5A5009C9C9C004A4A4A00313131004A4A4A000000
      000000000000529CC600187BB5003994C6004A9CCE00429CCE003194CE00298C
      CE002984BD00106B9C0000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000B5B5
      5A00FFE77B00FFF7A500FFF7A500FFF79C00FFF79C00F7EF8C00E7EF6300FFE7
      7B00FFE77B00F7E76300F7E75A00DEDE4200E7CE31008CBD4A00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B004242
      42007B7B7B007B7B7B009C9C9C009C9C9C005A5A5A0039393900000000000000
      00000000000000000000318CBD005AA5D6006BB5DE0094C6E700ADD6EF0073B5
      D600318CB500529CC60000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000B5B5
      5A00CEC6520042739400F7EFA500B5CE840042739400F7EF9C0084C67300BDDE
      8400FFEF8400BDDE8400FFEF8400FFE77B00E7CE31007BB55A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363004A4A4A00424242004A4A4A007B7B7B0000000000000000000000
      000000000000000000008CBDD6005AA5D6008CC6E70094C6E7007BBDE70052A5
      D600529CC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      4A00B5AD5A00739CA5009CC67300CECE730063ADC600CED684009CC67B004273
      9400DED67B0042739400BDBDB500CECE73004273940094A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CC6DE008CBDD60094C6DE0084B5D6008CBD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BADBD0052C6D600A5ADBD00849CA5004AA5B500847B840094848C00529C
      FD00A57B84008C949C007B94A500C68484006B94A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039BDD600000000000000000039BDD600000000000000000039BDD6000000
      000039BDD600000000000000000039BDD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD632900000000000000000000000000000000000000
      0000AD632900000000000000000000000000000000000000000000000000AD63
      2900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD632900000000000000000000000000000000000000
      0000AD632900000000000000000000000000000000000000000000000000AD63
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD7B4200000000000000000000000000000000000000
      0000BD7B4200000000000000000000000000000000000000000000000000BD7B
      4200000000000000000000000000000000000000000000000000AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900000000000000000000000000AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900AD632900AD632900AD632900AD632900AD63
      2900AD632900AD632900AD632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B4200BD7B
      4200BD7B4200BD7B4200BD7B4200000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      000000000000B56B3100B56B3100B56B31005A42310000000000000000005A8C
      FD005A8CAD005A8CAD005A8CAD0000000000000000004A319C004A319C004A31
      9C004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000B56B3100B56B3100B56B31005A42310000000000000000005A8C
      FD005A8CAD005A8CAD005A8CAD0000000000000000004A319C004A319C004A31
      9C004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      000000000000C6844A00C6844A00C6844A00735A4A00000000000000000073A5
      BD0073A5BD0073A5BD0073A5BD000000000000000000634AAD00634AAD00634A
      FD00634AAD0000000000000000000000000000000000AD632900C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000AD632900C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000BD7B4200CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000C6733100C6733100C67331005A423100000000000000000052D6
      FF0052D6FF0052D6FF005A8CAD0000000000000000005A4AB5005A4AB5005A4A
      B5004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000CE9452000000
      000000000000CE8C4A00CE8C4A00CE8C4A00735A4A0000000000000000006BDE
      FF006BDEFF006BDEFF0073A5BD0000000000000000007363C6007363C6007363
      C600634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00C6733100D68C4A00AD63290000000000000000005AEF
      FF005AEFFF0052D6FF005A8CAD000000000000000000846BE7005A4AB500846B
      E7004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00C6733100D68C4A00AD63290000000000000000005AEF
      FF005AEFFF0052D6FF005A8CAD000000000000000000846BE7005A4AB500846B
      E7004A319C000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000CE9452000000
      000000000000DEA56300CE8C4A00DEA56300BD7B4200000000000000000073EF
      FF0073EFFF006BDEFF0073A5BD0000000000000000009C84E7007363C6009C84
      E700634AAD000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A8CAD000000000000000000846BE700846BE700846B
      E7004A319C000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A8CAD000000000000000000846BE700846BE700846B
      E7004A319C0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300DEA56300DEA56300BD7B4200000000000000000073EF
      FF0073EFFF0073EFFF0073A5BD0000000000000000009C84E7009C84E7009C84
      E700634AAD0000000000000000000000000000000000AD632900C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A9CA5000000000000000000846BE700846BE700846B
      E7005A4AB50000000000000000000000000000000000AD632900C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00AD63290000000000000000005AEF
      FF005AEFFF005AEFFF005A9CA5000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000BD7B4200CE9452000000
      000000000000DEA56300DEA56300DEA56300BD7B4200000000000000000073EF
      FF0073EFFF0073EFFF0073ADB50000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00FFC67300D68C4A00AD63290000000000000000005AF7
      F7005AF7F7005AEFFF0073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00FFC67300D68C4A00AD63290000000000000000005AF7
      F7005AF7F7005AEFFF0073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB50000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300FFCE8C00DEA56300BD7B4200000000000000000073F7
      F70073F7F70073EFFF008CB5BD0000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD63290000000000000000005AF7
      F7005AF7F7005AF7F70073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD63290000000000000000005AF7
      F7005AF7F7005AF7F70073A5AD000000000000000000846BE700846BE700846B
      E7005A4AB5000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE9452000000
      000000000000FFCE8C00FFCE8C00FFCE8C00BD7B4200000000000000000073F7
      F70073F7F70073F7F7008CB5BD0000000000000000009C84E7009C84E7009C84
      E7007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD632900000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF00846BE7008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFC67300FFC67300AD632900000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF00846BE7008473
      EF005A4AB5000000000000000000000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000FFCE8C00FFCE8C00FFCE8C00BD7B420000000000000000007BF7
      FF007BF7FF007BF7FF008CB5BD0000000000000000009C8CEF009C84E7009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFD69C00FFC67300B56B3100000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFC67300FFD69C00FFC67300B56B3100000000000000000063F7
      FF0063F7FF0063F7FF0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB500000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000FFCE8C00FFDEAD00FFCE8C00C6844A0000000000000000007BF7
      FF007BF7FF007BF7FF008CB5BD0000000000000000009C8CEF009C8CEF009C8C
      EF007363C60000000000000000000000000000000000AD632900C67B39000000
      000000000000FFD69C00FFD69C00FFD69C00B56B3100000000000000000052D6
      FF0073A5AD0073A5AD0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB50000000000000000000000000000000000AD632900C67B39000000
      000000000000FFD69C00FFD69C00FFD69C00B56B3100000000000000000052D6
      FF0073A5AD0073A5AD0073A5AD0000000000000000008473EF008473EF008473
      EF005A4AB50000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000BD7B4200CE9452000000
      000000000000FFDEAD00FFDEAD00FFDEAD00C6844A0000000000000000006BDE
      FF008CB5BD008CB5BD008CB5BD0000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000FFD69C00F7E7A500FFD69C00B56B310000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000FFD69C00F7E7A500FFD69C00B56B310000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000CE9452000000
      000000000000FFDEAD00F7E7B500FFDEAD00C6844A0000000000000000000000
      000000000000000000000000000000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000F7E7A500F7E7A500F7E7A500D68C4A0000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000F7E7A500F7E7A500F7E7A500D68C4A0000000000000000000000
      000000000000000000000000000000000000000000008473EF008473EF008473
      EF005A4AB5000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000F7E7B500F7E7B500F7E7B500DEA5630000000000000000000000
      000000000000000000000000000000000000000000009C8CEF009C8CEF009C8C
      EF007363C6000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00D68C4A0000000000000000000000
      000000000000000000000000000000000000000000005A4AB5005A4AB5005A4A
      B5005A4AB5000000000000000000000000000000000000000000C67B39000000
      000000000000D68C4A00D68C4A00D68C4A00D68C4A0000000000000000000000
      000000000000000000000000000000000000000000005A4AB5005A4AB5005A4A
      B5005A4AB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000CE9452000000
      000000000000DEA56300DEA56300DEA56300DEA5630000000000000000000000
      000000000000000000000000000000000000000000007363C6007363C6007363
      C6007363C6000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD632900C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD632900C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C6000000000000000000BD7B4200CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9452000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00A573
      6300C68C7300C68C7B00B5847300AD8C84009C847B00E7947300E79473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE846300D69C8400CE94
      7B00E7B59C00DEA58C00BD846B00BD8C7B00C6948400B5847300946B5200946B
      520073422900844A3900844A390084635A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300000000000000000000000000000000000000000000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A0000A54A
      0000A54A0000A54A000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD846300DE9C8C00FFC6
      FD00FFE7C600E7BDA500CE8C7300DE947B00FFAD8C00F7A58400F7A58400F7A5
      8400B5847300A5847B009C7B73007B4A390084635A0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C9C00639C
      9C00639C9C00A54A000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DE9C8C00FFB5
      A500FFD6B500E7BDA500D69C8400F7B59400F7B59400C6846B00B56B5200E794
      7B00EFA58C00C6846B00CE7B6300BD846B009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300639C9C00A54A000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DE9C8C00F7BD
      A500FFCEAD00EFC6AD00E7C6AD00FFD6BD00DEA58C00CE9C9400EFD6C600EFB5
      9C00E79C7B00E7A58C00E7947300DEA58C00B58C840000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      630031636300A54A00000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      00000000000000000000000000000000000000000000C6846B00DEA58C00FFBD
      A500FFCEB500EFC6A500DEAD9C00DEB59C00DEAD9400E7CEB500EFEFE700DEBD
      FD00DEAD9400EFBDA500EFB59400E7B59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEB500FFDEB500FFDE
      B500FFD6AD00CE63000000000000000000000000000000000000639C9C009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE00639C9C00639C9C009C9C
      9C0031636300A54A00000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      63004263630000000000000000000000000000000000C6846300DEA58C00FFBD
      FD00FFDEBD00DEB59400B5735A00BD735A00F7C6A500E7CEAD00A57B6300DEB5
      9C00FFDEBD00DEBDA500EFC6A500E7BDA500B584730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE6300000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A00000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      42004263630084848400000000000000000000000000BD846B00DEA59400FFC6
      B500FFD6BD00DEB59C00CE9C8400E7B59C00D6AD9400C68C7300C67B6300E7A5
      8C00DEAD9400C68C7B00DE9C7B00DEB59C00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      21008463630000214200000000000000000000000000C6846300DEA59400FFC6
      B500FFCEB500EFC6AD00E7CEB500FFEFCE00D6A59400D6948400FFD6BD00E7B5
      9C00CE947B00D6948400DE947B00DEAD9400B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFE7
      C600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      42004221210000426300424242000000000000000000C6846300E7A59400FFC6
      B500FFD6B500EFCEAD00DEB5A500DEBDA500EFBDA500FFD6BD00F7EFDE00E7C6
      FD00E7B59C00F7C6AD00EFBD9C00DEBDA500B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7
      C600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063009C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A500424242000000000000000000C6846300E7A59400FFCE
      BD00FFE7C600DEB59400B57B6300BD7B6300F7C6A500EFC6A500AD7B6B00DEB5
      9C00FFD6B500FFC69400FFDE9C00FFCEAD00B58C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEF
      D600FFE7C600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A500424242000000000000000000C6846300E7AD9C00FFD6
      C600FFE7C600DEAD9400BD8C7B00DEAD9400E7BD9C00D6A58C00C68C7300FFBD
      8C00CEADAD007384AD008C94AD00CEBDB500CE9C840000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF0063319C00FFCEFF00FFCEFF00FFCEFF006331
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      84000021840000218400424242000000000000000000C6846300E7AD9C00FFD6
      C600FFDEBD00E7C6AD00DEC6B500FFEFCE00DEB5A500D6A59400FFDEBD00FFC6
      8C00948CA500086BE7001063D6009CADC600DEAD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00B5DEDE00B5DEDE00B5DEDE0063319C0063319C0063319C0063319C006331
      9C00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE00B5DEDE009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      84000021840042424200424242000000000000000000BD846300DEB5A500FFD6
      CE00FFD6BD00F7D6B500E7C6B500DEBDA500EFC6AD00EFCEB500DEC6B500FFC6
      9400B5B5B5004A9CF7005294F700BDB5D600DE9C730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00D6D6D6009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0084848400848484006B6B6B006B6B6B00FFF7
      EF00FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A00000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      42004242420000000000000000004200210000000000BD846300DEB5A500FFDE
      CE00FFDEC600FFD6B500EFC6A500F7CEAD00E7B59C00F7D6BD00EFDEC600FFE7
      C600E7DECE00A5CEDE00ADC6E700D6CECE00CE94730000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7EF00FFF7
      EF00FFEFD600CE6300000000000000000000000000000000000000000000639C
      9C00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF00B5DE
      DE00FFFFFF00FFFFFF00FFFFFF00B5DEDE00FFFFFF00FFFFFF00FFFFFF009CCE
      CE0063636300A54A0000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      00000000000042424200424242004242420000000000C6846300DEB5A500FFDE
      D600FFDEC600F7C6A500F7CEAD00EFBD9C00F7CEAD00F7CEAD00F7CEAD00F7D6
      B500EFCEB500E7C6AD00EFD6B500EFD6C600C694840000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00CE6300000000000000000000000000000000000000000000639C
      9C009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCECE009CCE
      CE0031636300A54A000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A50000000000C6846300E7B5AD00FFE7
      DE00F7D6BD00E7AD8C00E79C7300F7A58400F7A58400F7A58400DE9C7B00DE9C
      7B00DE9C7B00EFAD8400F7B59400F7CEB500BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE63000000000000000000000000000000000000000000003163
      6300316363003163630031636300316363003163630031636300316363003163
      6300316363003163630031636300316363003163630031636300316363003163
      630031636300CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A50000000000C6846300E7BDB500FFEF
      E700F7DEC600EF9C7300EF844A00FF9C6300FFA56300FF9C6300FFA56B00FFA5
      6B00FFA57300FFAD7B00FFA57300EFBDA500BDA5940000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE6300000000000000000000000000000000000000000000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A50000000000C6846300E7B5AD00FFEF
      E700FFE7CE00EFAD8400E7734200EF7B4200EF7B4200EF7B4200EF844A00EF84
      4A00F78C5200FF8C5200EF7B4200E7A58C00BD9C940000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000000000000000000000000000000000000000000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A50000000000C6846300E7BDB500FFF7
      F700FFF7DE00F7D6B500E7AD8C00E7A57B00E79C7300E7947300DE946B00DE94
      6B00E78C6300F78C5A00E7845200E7B59400CEA5940000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A56300E7A5
      6300E7A56300CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424242004242420000000000CE846300F7D6CE00FFFF
      FF00FFFFF700FFFFDE00FFFFDE00FFFFDE00FFF7DE00FFFFDE00FFF7DE00FFF7
      DE00FFDEC600F7CEAD00FFD6B500FFEFD600DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000DEB59C00F7E7
      DE00F7E7CE00F7E7CE00F7EFD600F7EFDE00F7F7DE00F7EFDE00F7EFD600F7F7
      DE00F7EFD600F7E7D600FFFFDE00FFF7DE00DEB59C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      FD00E7C6B500E7C6B500E7C6BD00E7CEC600EFD6C600E7CEBD00DEC6B500EFD6
      C600F7EFD600FFF7DE00FFFFE700F7EFD600DEB5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000000
      000084E7E70084E7E70084E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E70084E7E7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000000000000000000084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E700000000000000000084E7E70084E7E70084E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000000000000000000084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E7000000000084E7E70084E7E70084E7E70084E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E700000000000000000084E7E70084E7E70084E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0084E7E70084E7E70084E7E70084E7E70084E7
      E70084E7E70084E7E70084E7E70084E7E70084E7E7000000000084E7E70084E7
      E70084E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084E7E70084E7E70084E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E700000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5000000
      0000FFFFFF00000000000000000084E7E70000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042E7E70042E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042E7E70042E7E70042E7E70084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E7000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042E7E70042E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042E7E70042E7E70042E7E70042E7E7000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E70000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042E7E70042E7E7000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      210000FFFF004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      940000000000000000000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      630042636300000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      000000FFFF0000FFFF0000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      940000000000000000000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      630042636300000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      420042636300848484000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      00008484840000FFFF0000FFFF00002142000042630042638400002142004242
      4200426363008484840000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      940000000000000000000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      4200426363008484840000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      000000FFFF008484840000FFFF0000FFFF004263A5004263A500004263004221
      2100846363000021420000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      210084636300002142000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000FFFF0000FFFF008484840000FFFF0000FFFF004263A500426384000021
      420042212100004263004242420000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A50000000000000000000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      4200422121000042630042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C60084424200422142000042630000E7E70000E7
      E70000FFFF0000FFFF0000FFFF008484840000FFFF0000218400424284004263
      8400004284004263A5004242420000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C
      2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A50042424200000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000E7E70000E7E70000E7
      E70000FFFF0000FFFF0000FFFF0000FFFF00848484000021840000FFFF0000FF
      FF00426384004263A5004242420000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A500000000000000000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A5004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E7008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00004242008484840000FF
      FF0000FFFF00002184004242420000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C
      2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      FD0000000000000000000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      840000218400002184004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00848484008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF004263A50000FFFF008484
      840000FFFF0000FFFF004242420000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C
      2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      FD0000000000000000000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      840000218400424242004242420000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484
      84008484840000FFFF0000FFFF0000FFFF0084A5E70000FFFF0000FFFF0000FF
      FF008484840000FFFF0000FFFF0000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      FD0000000000000000000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      42004242420000000000000000004200210000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0084848400848484004284A5004284C60000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B5000000000000000000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      0000000000004242420042424200424242000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF004284A500848484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF0084A5C60000FFFF0000FFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF00848484008484840000FFFF0000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A5000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A5000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000D80000000100010000000000200A00000000000000000000
      000000000000000000000000FFFFFF00D684F9FFFFFF0000000000003552A1FF
      FFFF000000000000002904FE0F07000000000000008619FC0603000000000000
      001832F800010000000000000001C4F80011000000000000000108F800010000
      00000000000010FC0003000000000000000000F80007000000000000000000F0
      001F000000000000000000F0000F000000000000000000E0000F000000000000
      000000E0000F000000000000000000E0000F000000000000000000E0000F0000
      00000000000000E0000F000000000000000000E0001F000000000000000000F0
      001F000000000000000000F8003F000000000000000000FC007F000000000000
      000000FE00FF000000000000000000FF01FF000000000000000000FFFFFF0000
      00000000000000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003FFFFFFFFFFFFC00003C000038000FF8000FF
      C00003C0000380007F80007FC00003C0000380003F80003FC00003C000038000
      1F80001FC00003C0000380000F80000FC00003C00003800007800007C00003C0
      0003800003800003C00003C00003800001800001C00003C00003800001800001
      C00003C00003800001800001C00003C00003800001800001C00003C000038000
      01800001C00003C00003C00001C00001C00003C00003E00001E00001C00003C0
      0003F00001F00001C00003C00003F80001F80001C00003C00003FC0001FC0001
      E00007E00007FE0001FE0001FFFFFFFFFFFFFF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
      1FFFFFFFFFFFFFFFC000038000FFE001FF800001C0000380007FC0007F800001
      C0000380007FC0007F800001C0000380007FC0007F800001C0000380007FC000
      7F800001C0000380007FE0007F800001C0000380007FF00007800001C0000380
      007FF800F7800001C0000380007FF806C7800001C0000380007FF80687800001
      C0000380007FF00267800001C0000380007FF00203800001C0000380007FE003
      F8800001C0000380007FE003FC800001C0000380007FE00207800001C0000380
      007FE002F7800001C0000380007FE006C7800001C0000380007FF00687800001
      E0000780007FF80E67800001FFFFFF80007FFC1E03FFFFFFFFFFFFC0007FFFFF
      F8FFFFFFFFFFFFE0007FFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC00003C00003C00003C00003C00003C00003C00003C00003
      C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C000
      03C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C0
      0003C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003
      C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C000
      03C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003C0
      0003C00003C00003C00003C00003C00003C00003C00003C00003C00003C00003
      E00007E00007E00007E00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE03FFFFFFFFFFF9FFFFF9FFFE000FF800FFFFE0FFFFE0FFFE0007F
      800001F00FFFF00FFFE0007F800001E0007FE0007FE00007800001C0007FC000
      7FE00007800001C00027C00027E00007C00001400003400003E00007E0000320
      0003200003E00007C00007000001000001E00007801807000001000001E0000F
      800C07000001000001E0000F800803800001800001E0000F8008039800019800
      01E0001F800803980001980001E0001F800803C00001C00001E0001F801803F0
      0001F00001E0003FC01803FD0001FD0001E0003FC03C03FD6007FD6007E0003F
      F07C07FF781FFF781FE0003FFFFE0FFF7E7FFF7E7FF0007FFFFFFFFFFFFFFFFF
      FFF6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7EFFD
      F7EFFFFFFFFDF7EFC00001C00001FFFFFFC00001DFFFFFDFFFFF8000FFDFFFFF
      DFFFFFDFFFFF80007FDFFFFFD86187D8618780003FD861879861879861878000
      1F986187D86187D8618780000FD86187D86187D86187800007D86187D86187D8
      6187800003D86187D86187D86187800001D86187986187986187800001986187
      D86187D86187800001D86187D86187D86187800001D86187D86187D861878000
      01D86187D86187D86187C00001D86187986187986187E00001986187D87F87D8
      7F87F00001D87F87D87F87D87F87F80001D87F87D87F87D87F87FC0001D87F87
      DFFFFFDFFFFFFE0001DFFFFF9FFFFF9FFFFFFF00019FFFFFDFFFFFDFFFFFFFFF
      FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC01FFFFFFFFFFFFFFFFF9FFF8000FFC00003E00003FE0FFF80007FC00003
      E00003F00FFF80007FC00003C00003E0007F80007FC00003C00003C0007F8000
      7FC00003C00003C0002780007FC00003E0000340000380007FC00003E0000320
      000380007FC00003E0000300000180007FC00003E0000300000180007FC00003
      E0000300400180007FC00003E0000380600180007FC00003E000039838018000
      7FC00003E00003981C0680007FC00003E00003C00E1880007FC00003E00003F0
      0FE080007FC00003E00003FD0FE080007FC00003E00003FD7FE080007FC00003
      E00003FF7FF880007FE00007F00003FF7FFC80007FFFFFFFFFFFFFFFFFFEC000
      7FFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FFFFFFFFFFFFFFFFFFFFFFF1C00003FFFFFF8000FFC7FFE3C00003FFFFFF
      80007FC3FF87C000038007FF80003FC1FF0FC000038001FF80001FE0FE1FC000
      038000FF80000FF07C3FC0000380007F800007FC307FC0000380001F800003FE
      00FFC00003C0000F800001FF01FFC00003E00007800001FF83FFC00003F80001
      800001FF01FFC00003E00000800001FE00FFC00003C00000800001FC187FC000
      03C00000C00001F83C3FC00003C00000E00001F07F1FC00003E00000F00001E0
      FF8FC00003FFFE00F80001C1FFEFC00003FFFF00FC000183FFFFC00003FFFFC0
      FE000187FFFFE00007FFFFF0FF00018FFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE0000FFFFFFFFF9FFFFF9FFFE0000FFF9FFFFE0FFFFE0FFFE0000FFE0FFF
      F00FFFF00FFFE0000FF00FFFE0007FE0007FE0000FE0007FC0007FC0007FE000
      0FC0007FC00027C00027E0000FC00027400003400003E0000F40000320000320
      0003E0000F200003000001000001E0000F000001000001000001E0000F000001
      000001000001E0000F004001800001800001E0000F806001980001980001E000
      0F983801980001980001E0000F981C06C00001C00001E0000FC00E18F00001F0
      0001E0000FF00FE0FD0001FD0001E0000FFD0FE0FD6007FD6007E0000FFD7FE0
      FF781FFF781FFFFFFFFF7FF8FF7E7FFF7E7FFFFFFFFF7FFCFFFFFFFFFFFFFFFF
      FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'File'
      'Data'
      'Help'
      'Print'
      'Avrop'
      'Lastorder'
      'Ekonomi'
      'FraktAvr'
      'Avr'#228'kning'
      'PopupInvoiceRows')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
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
      True
      True
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = imglOutbar_large
    MenuAnimations = maUnfold
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 480
    Top = 184
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'MainMenu'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 51
      FloatClientHeight = 57
      ItemLinks = <>
      OldName = 'MainMenu'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 263
      FloatTop = 220
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton26'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton33'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '&Arkiv'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = '&Data'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbGeneralShippingCost'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbBasMatPunkter'
        end
        item
          Visible = True
          ItemName = 'bbMatPunkterVerk'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbPkgNoSerie'
        end
        item
          Visible = True
          ItemName = 'bbPaketNrPos_INI'
        end
        item
          Visible = True
          ItemName = 'bbPktNrPositioner'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '&Help'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarCombo1'
        end>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Enabled = False
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAndraPkt'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Action = acFTPSetup
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = acKontrolleraAvrakningslaster
      Category = 0
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Action = acOrderstock
      Category = 0
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Action = acIntraStat
      Category = 0
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Action = acTradingAnalyze
      Category = 0
    end
    object dxBarLargeButton21: TdxBarLargeButton
      Action = acAttestCommisionAndExtFreight
      Category = 0
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Action = acPayControl
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = acImportFromHampen
      Category = 0
    end
    object dxBarLargeButton23: TdxBarLargeButton
      Action = acCreditInsurance
      Category = 0
    end
    object dxBarLargeButton24: TdxBarLargeButton
      Action = acCreditAnalysis
      Category = 0
    end
    object dxBarLargeButton25: TdxBarLargeButton
      Action = acLagervy
      Category = 0
    end
    object dxBarLargeButton26: TdxBarLargeButton
      Action = acFragaPaket
      Category = 0
    end
    object dxBarLargeButton27: TdxBarLargeButton
      Action = acAndraPaket
      Category = 0
    end
    object dxBarLargeButton28: TdxBarLargeButton
      Action = acLevereradeLaster
      Category = 0
    end
    object dxBarLargeButton29: TdxBarLargeButton
      Action = acPkgStdSizeIntervall
      Category = 0
    end
    object dxBarLargeButton30: TdxBarLargeButton
      Action = acTorkhanteraren
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = acChangeLanguage
      Category = 0
    end
    object dxBarLargeButton31: TdxBarLargeButton
      Action = acDeRegisterPackages
      Category = 0
    end
    object dxBarLargeButton32: TdxBarLargeButton
      Action = acPositionView
      Category = 0
    end
    object dxBarLargeButton33: TdxBarLargeButton
      Action = acBytAnvandare
      Category = 0
    end
    object dxBarLargeButton34: TdxBarLargeButton
      Action = acChangeLanguage
      Category = 0
    end
    object cxbtnChangeReporter: TdxBarLargeButton
      Caption = 'Change to FastReport'
      Category = 0
      Hint = 'Change to FastReport'
      Visible = ivAlways
    end
    object dxBarLargeButton35: TdxBarLargeButton
      Action = acFragaAvrop
      Category = 0
    end
    object dxBarLargeButton36: TdxBarLargeButton
      Action = acAskAvrop
      Category = 0
    end
    object dxBarLargeButton37: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton38: TdxBarLargeButton
      Caption = 'Mail test'
      Category = 0
      Hint = 'Mail test'
      Visible = ivNever
    end
    object dxBarLargeButtonEWSProfileManager: TdxBarLargeButton
      Action = acEWSProfile
      Caption = 'EWS Profile'
      Category = 0
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Skin:'
      Category = 0
      Hint = 'Select a skin'
      Visible = ivAlways
      OnChange = dxBarCombo1Change
      DropDownCount = 30
      ItemIndex = -1
    end
    object dxBarButton1: TdxBarButton
      Action = atExit
      Category = 1
    end
    object dxBarButton13: TdxBarButton
      Caption = 'Setup'
      Category = 1
      Hint = 'Setup'
      Visible = ivAlways
      OnClick = dxBarButton13Click
    end
    object dxBarButton15: TdxBarButton
      Caption = 'Clean up Load Orders'
      Category = 1
      Hint = 'Clean up Load Orders'
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Action = acBytAnvandare
      Category = 1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000FF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF1084
        10FF189C18FF31A531FF39AD39FF39AD39FF107B10FF319429FF217318FF5A52
        42FF736B5AFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF21A5
        21FF31AD31FF4ABD4AFF52C652FF399C39FF8CBD7BFF52BD52FF42BD42FF2173
        18FF4A4229FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF299C
        29FF4ABD4AFF6BCE6BFF6BC66BFFF7FFEFFFF7FFEFFF63C663FF63CE63FF31A5
        31FF4A6B39FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF4ABD4AFF73CE73FF52A54AFFFFFFFFFFFFFFFFFF6BC66BFF73CE73FF319C
        31FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF18734AFF3984ADFF217BBDFF428CADFF63BD63FF399C39FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF187BC6FF218CE7FF298CE7FF218CE7FF296B52FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF297BADFF399CFFFF399CFFFF399CFFFF399CFFFF298CE7FF395252FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF2184C6FF42A5FFFF42A5FFFF42A5FFFF42A5FFFF399CF7FF315A6BFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF6BA5
        C6FF42A5F7FF4AB5FFFF52B5FFFF52BDFFFF52B5FFFF4AADFFFF397394FFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF5294
        BDFF42A5EFFF5ABDFFFF5ABDFFFF52B5F7FF4AB5EFFF52B5F7FF39738CFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF6384
        9CFF2173A5FF4A94C6FF6BADD6FF63ADF7FF4A9CE7FF216BA5FFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFF2173A5FF6BADD6FF8CBDE7FF73BDE7FF5AADDEFF316B7BFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFF6BA5BDFF4A94B5FF4A8CFDFF63849CFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF}
    end
    object bbUserPreference: TdxBarButton
      Action = acUserPreference
      Category = 1
    end
    object bbPkgInfo: TdxBarButton
      Caption = 'Ask Package'
      Category = 2
      Hint = 'Ask Package'
      Visible = ivAlways
    end
    object bbAddPackage: TdxBarButton
      Caption = 'Add package'
      Category = 2
      Hint = 'Add package'
      Visible = ivAlways
    end
    object bbCurrency: TdxBarButton
      Caption = 'Valuta'
      Category = 2
      Hint = 'Valuta'
      Visible = ivAlways
    end
    object bbGeneralShippingCost: TdxBarButton
      Caption = 'Generella fraktkostnader'
      Category = 2
      Hint = 'Generella fraktkostnader'
      Visible = ivAlways
    end
    object bbMarketPriceTemplates: TdxBarButton
      Caption = 'Mallar f'#246'r Marknadspriser'
      Category = 2
      Hint = 'Mallar f'#246'r Marknadspriser'
      Visible = ivAlways
    end
    object bbMarketPrices: TdxBarButton
      Caption = 'Marknadspriser'
      Category = 2
      Hint = 'Marknadspriser'
      Visible = ivAlways
    end
    object bbMatPunkterVerk: TdxBarButton
      Caption = 'M'#228'tpunkter verk'
      Category = 2
      Hint = 'M'#228'tpunkter verk'
      Visible = ivAlways
    end
    object bbBasMatPunkter: TdxBarButton
      Caption = 'Basm'#228'tpunkter'
      Category = 2
      Hint = 'Basm'#228'tpunkter'
      Visible = ivAlways
    end
    object bbMainGrade: TdxBarButton
      Caption = 'Internkvalitet'
      Category = 2
      Hint = 'Internkvalitet'
      Visible = ivAlways
    end
    object bbPkgNoSerie: TdxBarButton
      Caption = 'PaketNr serier'
      Category = 2
      Hint = 'PaketNr serier'
      Visible = ivAlways
    end
    object bbProductCodes: TdxBarButton
      Caption = 'Interna kvalitetskoder'
      Category = 2
      Hint = 'Interna kvalitetskoder'
      Visible = ivAlways
    end
    object bbInternalSpeciesCodes: TdxBarButton
      Caption = 'Interna Tr'#228'slagskoder'
      Category = 2
      Hint = 'Interna Tr'#228'slagskoder'
      Visible = ivAlways
    end
    object bbInternalSurfacingCodes: TdxBarButton
      Caption = 'Interna utf'#246'randekoder'
      Category = 2
      Hint = 'Interna utf'#246'randekoder'
      Visible = ivAlways
    end
    object bbPktNrPositioner: TdxBarButton
      Caption = #214'vers'#228'tt leverant'#246'rskod'
      Category = 2
      Hint = #214'vers'#228'tt leverant'#246'rskod'
      Visible = ivAlways
    end
    object bbPaketNrPos_INI: TdxBarButton
      Caption = 'PaketNr position'
      Category = 2
      Hint = 'PaketNr position'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Prislista'
      Category = 2
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Action = acReportNames
      Category = 2
    end
    object dxBarButton9: TdxBarButton
      Action = atAbout
      Category = 3
    end
    object dxBarButton14: TdxBarButton
      Caption = 'Paketkod'
      Category = 4
      Enabled = False
      Hint = 'Paketkod'
      Visible = ivAlways
    end
    object test: TdxBarButton
      Caption = 'test'
      Category = 4
      Enabled = False
      Hint = 'test'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 4
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Get printer'
      Category = 4
      Hint = 'Get printer'
      Visible = ivAlways
    end
    object bbAndraPkt: TdxBarButton
      Caption = #196'ndra pkt'
      Category = 4
      Enabled = False
      Hint = #196'ndra pkt'
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acAvrop
      Category = 5
      GlyphLayout = glRight
    end
    object dxBarButton8: TdxBarButton
      Action = acAR
      Category = 5
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acAR
      Category = 5
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSkeppningsinstruktion
      Category = 5
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acKPLista
      Category = 5
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acFragaAvrop
      Category = 5
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acEjFakturerat
      Category = 5
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acLevereradeLaster
      Category = 6
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acUtlastningVerk
      Category = 6
      Width = 90
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acAnkomnaHamn
      Category = 6
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = acAR
      Category = 6
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acFakturalista
      Category = 7
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = acSamlingsFakturaLista
      Category = 7
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = acKontoLogik
      Category = 7
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = acRegistreradeFraktAvrakningar
      Category = 8
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = acRegistreraFraktAvrakning
      Category = 8
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = acRegistreraAvrakning
      Category = 9
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Action = acRegistreradeAvrakningar
      Category = 9
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 482
    Top = 240
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 482
    Top = 296
  end
  object dxBarScreenTipRepository1: TdxBarScreenTipRepository
    Left = 784
    Top = 256
    PixelsPerInch = 96
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 784
    Top = 384
    PixelsPerInch = 96
  end
  object dxRibbonPopupMenu1: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 784
    Top = 312
    PixelsPerInch = 96
  end
  object dxRibbonDropDownGallery1: TdxRibbonDropDownGallery
    BarManager = dxBarManager1
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 784
    Top = 440
    PixelsPerInch = 96
  end
  object siLangLinked1: TsiLangLinked
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
      'ListField')
    Left = 480
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004D00610069006E000100560049005300
      01000100010001000D000A006400780052006900620062006F006E0031005400
      61006200320001004C006100730074006F00720064006500720001004C006100
      730074006F00720064006500720001004C004F0001004C006100730074006F00
      720064006500720001000D000A0061007400440061007400610043006F007500
      6E00740072007900010043006F0075006E0074007200790001004C0061006E00
      6400010001004C0061006E00640001000D000A0061007400440065006C006900
      76006500720079005400650072006D0001002600440065006C00690076006500
      7200790020005400650072006D0001004C00650076002000760069006C006C00
      6B006F0072000100440065006C0020007400650072006D00730001004C006500
      76002000760069006C006C006B006F00720001000D000A006100740050006100
      79006D0065006E0074005400650072006D00010026005000610079006D006500
      6E00740020005400650072006D00010042006500740061006C006E0069006E00
      67007300760069006C006C006B006F00720001005000610079006D0065006E00
      740020007400650072006D007300010042006500740061006C006E0069006E00
      67007300760069006C006C006B006F00720001000D000A006100740043007500
      7200720065006E006300790001002600430075007200720065006E0063007900
      0100430075007200720065006E00630079000100430075007200720065006E00
      630079000100430075007200720065006E006300790001000D000A0061007400
      5000610063006B0055006E006900740001005000720069006300650020002600
      55006E006900740001000100010001000D000A006100740055006E0069007400
      4E0061006D0065000100260056006F006C0075006D006500200055006E006900
      7400010056006F006C0079006D0065006E00680065007400010056006F006C00
      75006D006500200075006E0069007400010056006F006C0079006D0065006E00
      68006500740001000D000A006100740045007800690074000100450026007800
      69007400010053007400E4006E00670001004500780069007400010053007400
      E4006E00670001000D000A00610074005000610063006B006100670065004300
      6F0064006500010050006100630026006B00610067006500200043006F006400
      65000100500061006B00650074006B006F006400010050006B00670020006300
      6F00640065000100500061006C006C006B006F00640001000D000A0061007400
      410062006F007500740001002600410062006F00750074002E002E002E000100
      4F006D002E002E002E0001002600410062006F007500740001004F006D002E00
      2E002E0001000D000A00610074004D00610072006B0065007400520065006700
      69006F006E00010026004D00610072006B006500740020005200650067006900
      6F006E0001000100010001000D000A0061007400530074006100740069007300
      74006900630061006C0043006F00640065000100260053007400610074006900
      730074006900630061006C00200043006F006400650001005300740061007400
      690073007400690073006B0020006B006F006400010053007400610074006900
      730074006900630061006C00200043006F006400650001005300740061007400
      690073007400690073006B0020006B006F00640001000D000A00610074004C00
      61006E0067007500610067006500010026004C0061006E006700750061006700
      65000100530070007200E5006B0001000100530070007200E5006B0001000D00
      0A0061006300550073006500720050007200650066006500720065006E006300
      6500010041006E007600E4006E0064006100720069006E0073007400E4006C00
      6C006E0069006E00670061007200010001005500730065007200200070007200
      650066006500720065006E00630065007300010001000D000A00610063004600
      5400500053006500740075007000010046005400500020007300650074007500
      700001000100010001000D000A00610063005200650070006F00720074004E00
      61006D0065007300010052006100700070006F00720074006E0061006D006E00
      010001005200650070006F007200740020006E0061006D006500010001000D00
      0A00610063004100760072006F00700001004100760072006F00700001000100
      430061006C006C0020006F0066006600010001000D000A006100630041005200
      010041006E006B006F006D007300740020007200650067006900730074007200
      650072006100010041006E006B006F006D007300740072006500670069007300
      7400720065007200610001004100720072006900760061006C00200072006500
      670069007300740065007200010041006E006B006F006D007300740072006500
      6700690073007400720065007200610001000D000A006100630053006B006500
      700070006E0069006E006700730069006E0073007400720075006B0074006900
      6F006E00010053006B006500700070006E0069006E0067007300200069006E00
      73007400720075006B00740069006F006E00010053006B006500700070006E00
      69006E006700730069006E0073007400720075006B00740069006F006E000100
      5300680069007000700069006E006700200069006E0073007400720075006300
      740069006F006E00010053006B006500700070006E0069006E00670073006900
      6E0073007400720075006B00740069006F006E0001000D000A00610063004B00
      50004C00690073007400610001004B00500020006C0069007300740061000100
      53006B006500700070006E0069006E00670073006C0069007300740061000100
      5300680069007000700069006E00670020006C00690073007400010053006B00
      6500700070006E0069006E00670073006C00690073007400610001000D000A00
      61006300460072006100670061004100760072006F007000010046007200E500
      6700610020006100760072006F00700001000100510075006500720079002000
      43004F00010001000D000A006100630045006A00460061006B00740075007200
      6500720061007400010045006A002000660061006B0074007500720065007200
      61007400010001004E006F007400200069006E0076006F006900630065006400
      010001000D000A0061006300550074006C006100730074006E0069006E006700
      5600650072006B0001002000200020004C006100730074006F00720064006500
      720020002000200001004C006100730074006F00720064006500720001004C00
      6F006100640020006F00720064006500720001004C006100730074006F007200
      64006500720001000D000A00610063004C006500760065007200650072006100
      640065004C006100730074006500720001004C00650076006500720065007200
      61006400650020006C006100730074006500720001000100440065006C006900
      7600650072006500640020006C006F00610064007300010001000D000A006100
      6300460061006B0074007500720061006C006900730074006100010046006100
      6B0074007500720061006C0069007300740061000100010049006E0076006F00
      69006300650020006C00690073007400010001000D000A006100630053006100
      6D006C0069006E0067007300460061006B0074007500720061004C0069007300
      740061000100530061006D006C0069006E00670073002000660061006B007400
      7500720061006C0069007300740061000100010043006F006C006C0065006300
      740069006F006E00200069006E0076006F0069006300650020006C0069007300
      7400010001000D000A0061006300520065006700690073007400720065007200
      61004600720061006B00740041007600720061006B006E0069006E0067000100
      5200650067006900730074007200650072006100640065002000660072006100
      6B007400610076007200E4006B006E0069006E00670061007200010001005200
      6500670069007300740065007200650064002000660072006500690067006800
      7400200073006500740074006C0065006D0065006E0074007300010001000D00
      0A00610063005200650067006900730074007200650072006100640065004600
      720061006B00740041007600720061006B006E0069006E006700610072000100
      520065006700690073007400720065007200610020006600720061006B007400
      6500720001000100520065006700690073007400650072002000660072006500
      69006700680074007300010001000D000A00610063004C006100670065007200
      52006100700070006F007200740001004C006100670065007200720061007000
      70006F007200740001000100530074006F0063006B0020007200650070006F00
      72007400010001000D000A006100630052006500670069007300740072006500
      7200610041007600720061006B006E0069006E00670001005200650067006900
      7300740072006500720061002000610076007200E4006B006E0069006E006700
      0100010052006500670069007300740065007200200073006500740074006C00
      65006D0065006E007400010001000D000A006100630052006500670069007300
      740072006500720061006400650041007600720061006B006E0069006E006700
      6100720001005200650067006900730074007200650072006100640065002000
      610076007200E4006B006E0069006E0067006100720001000100520065006700
      6900730074006500720065006400200073006500740074006C0065006D006500
      6E0074007300010001000D000A006100630041006E006B006F006D006E006100
      480061006D006E00010041006E006B006F006D006E0061002000680061006D00
      6E000100010050006F007200740020006100720072006900760061006C007300
      010001000D000A0061006300500061006B006500740069006E0066006F000100
      500061006B006500740069006E0066006F000100010050006B00670020006900
      6E0066006F000100500061006C006C0069006E0066006F0001000D000A006100
      63004B006F006E00740072006F006C006C006500720061004100760072006100
      6B006E0069006E00670073006C006100730074006500720001004B006F006E00
      740072006F006C006C006500720061002000610076007200E4006B006E006900
      6E00670073006C00610073007400650072000100010043006800650063006B00
      200073006500740074006C0065006D0065006E00740020006C006F0061006400
      7300010001000D000A00610063004B006F006E0074006F004C006F0067006900
      6B0001004B006F006E0074006F00200073007400790072006E0069006E006700
      010001004100630063006F0075006E0074007300200063006F006E0074007200
      6F006C00010001000D000A00610063004F007200640065007200730074006F00
      63006B0001004F007200640065007200730074006F0063006B00010001004F00
      7200640065007200730074006F0063006B00010001000D000A00610063004900
      6E007400720061005300740061007400010049006E0074007200610073007400
      610074000100010049006E007400720061007300740061007400010001000D00
      0A0061006300540072006100640069006E00670041006E0061006C0079007A00
      65000100540072006100640069006E006700200061006E0061006C0079007300
      01000100540072006100640069006E006700200061006E0061006C0079007300
      69007300010001000D000A006100630041007400740065007300740043006F00
      6D006D006900730069006F006E0041006E006400450078007400460072006500
      6900670068007400010041007400740065007300740020006B006F006D006D00
      69007300730069006F006E00260026006600720061006B007400010001004100
      74007400650073007400200063006F006D006D0069007300730069006F006E00
      200061006E00640020006600720065006900670068007400010001000D000A00
      6100630050006100790043006F006E00740072006F006C000100420065007400
      61006C006E0069006E00670073006B006F006E00740072006F006C006C000100
      01005000610079006D0065006E007400200063006F006E00740072006F006C00
      010001000D000A006100630049006D0070006F0072007400460072006F006D00
      480061006D00700065006E00010049006D0070006F0072007400650072006100
      2000700061006B0065007400260026006C006100730074006500720020006600
      7200E5006E002000480061006D00700065006E0001000100010001000D000A00
      6100630043007200650064006900740049006E0073007500720061006E006300
      650001004B00720065006400690074006600F60072007300E4006B0072006900
      6E00670001000100430072006500640069007400200069006E00730075007200
      61006E0063006500010001000D000A0061006300430072006500640069007400
      41006E0061006C00790073006900730001004B00720065006400690074006100
      6E0061006C007900730001000100430072006500640069007400200061006E00
      61006C007900730069007300010001000D000A00610063004C00610067006500
      72007600790001004C0061006700650072007600790001000100530074006F00
      63006B0020007600690065007700010001000D000A0061006300460072006100
      67006100500061006B0065007400010046007200610067006100200070006100
      6B0065007400010046007200E500670061002000700061006B00650074000100
      51007500650072007900200050006B006700010046007200E500670061002000
      700061006C006C0001000D000A006100630041006E0064007200610050006100
      6B00650074000100C4006E006400720061002000700061006B00650074000100
      01004300680061006E0067006500200070006B0067000100C4006E0064007200
      61002000700061006C006C0001000D000A006100630050006B00670053007400
      6400530069007A00650049006E00740065007200760061006C006C0001005300
      74006400200070006B0074002000730074006F0072006C0065006B0001000100
      440065006600610075006C007400200070006B0067002000730069007A006500
      01005300740064002000700061006C006C002000730074006F0072006C006500
      6B0001000D000A006100630054006F0072006B00680061006E00740065007200
      6100720065006E00010054006F0072006B00680061006E007400650072006100
      720065006E00010001004B0069006C006E0020006D0061006E00610067006500
      7200010001000D000A00610063004300680061006E00670065004C0061006E00
      6700750061006700650001004200790074002000530070007200E5006B000100
      01004300680061006E006700650020006C0061006E0067007500610067006500
      010001000D000A00640078004200610072004D0061006E006100670065007200
      3100420061007200310001004D00610069006E004D0065006E00750001000100
      010001000D000A00640078004200610072005300750062004900740065006D00
      310001002600410072006B006900760001000100410072006300680069007600
      6500010001000D000A0064007800420061007200530075006200490074006500
      6D00320001002600440061007400610001000100440061007400610001000100
      0D000A00640078004200610072005300750062004900740065006D0033000100
      2600480065006C007000010048006A00E4006C0070000100480065006C007000
      010048006A00E4006C00700001000D000A006400780042006100720053007500
      62004900740065006D00340001005000720069006E0074000100010001000100
      0D000A006400780042006100720042007500740074006F006E00340001004E00
      6500770020004900740065006D0001000100010001000D000A00640078004200
      6100720042007500740074006F006E0031003300010053006500740075007000
      01000100010001000D000A006400780042006100720042007500740074006F00
      6E0031003500010043006C00650061006E0020007500700020004C006F006100
      640020004F00720064006500720073000100520065006E007300610020007500
      7000700020004C004F0001000100520065006E00730061002000750070007000
      20004C004F0001000D000A006200620050006B00670049006E0066006F000100
      410073006B0020005000610063006B00610067006500010046007200E5006700
      61002000700061006B0065007400010051007500650072007900200070006B00
      6700010046007200E500670061002000700061006C006C0001000D000A006200
      62004100640064005000610063006B0061006700650001004100640064002000
      7000610063006B0061006700650001004C00E400670067002000740069006C00
      6C002000700061006B00650074000100410064006400200070006B0067000100
      4C00E400670067002000740069006C006C002000700061006C006C0001000D00
      0A0062006200430075007200720065006E00630079000100560061006C007500
      7400610001000100430075007200720065006E0063007900010001000D000A00
      62006200470065006E006500720061006C005300680069007000700069006E00
      670043006F00730074000100470065006E006500720065006C006C0061002000
      6600720061006B0074006B006F00730074006E00610064006500720001000100
      470065006E006500720061006C00200066007200650069006700680074006300
      6F00730074007300010001000D000A00620062004D00610072006B0065007400
      50007200690063006500540065006D0070006C00610074006500730001004D00
      61006C006C006100720020006600F600720020004D00610072006B006E006100
      6400730070007200690073006500720001000100540065006D0070006C006100
      7400650020006D00610072006B00650074007000720069006300650073000100
      01000D000A00620062004D00610072006B006500740050007200690063006500
      730001004D00610072006B006E00610064007300700072006900730065007200
      010001004D00610072006B006500740070007200690063006500730001000100
      0D000A00620062004D0061007400500075006E006B0074006500720056006500
      72006B0001004D00E4007400700075006E006B00740065007200200076006500
      72006B00010001004D0065006100730075007200650070006F0069006E007400
      20006D0069006C006C00010001000D000A00620062004200610073004D006100
      7400500075006E006B0074006500720001004200610073006D00E40074007000
      75006E006B0074006500720001000100420061007300650020006D0065006100
      730075007200650070006F0069006E0074007300010001000D000A0062006200
      4D00610069006E0047007200610064006500010049006E007400650072006E00
      6B00760061006C0069007400650074000100010049006E007400650072006E00
      200067007200610064006500010001000D000A006200620050006B0067004E00
      6F00530065007200690065000100500061006B00650074004E00720020007300
      650072006900650072000100010050006B0067004E006F002000730065007200
      6900650073000100500061006C006C006E007200200073006500720069006500
      720001000D000A0062006200500072006F00640075006300740043006F006400
      65007300010049006E007400650072006E00610020006B00760061006C006900
      74006500740073006B006F006400650072000100010049006E00740065007200
      6E0020006700720061006400650063006F0064006500010001000D000A006200
      620049006E007400650072006E0061006C005300700065006300690065007300
      43006F00640065007300010049006E007400650072006E006100200054007200
      E40073006C006100670073006B006F006400650072000100010049006E007400
      650072006E00200077006F006F00640063006F00640065007300010001000D00
      0A006200620049006E007400650072006E0061006C0053007500720066006100
      630069006E00670043006F00640065007300010049006E007400650072006E00
      61002000750074006600F600720061006E00640065006B006F00640065007200
      0100010049006E007400650072006E0020007300750072006600610063006900
      6E00670063006F00640065007300010001000D000A006200620050006B007400
      4E00720050006F0073006900740069006F006E00650072000100D60076006500
      72007300E4007400740020006C00650076006500720061006E007400F6007200
      73006B006F006400010001005400720061006E0073006C006100740065002000
      73007500700070006C0069006500720063006F0064006500010001000D000A00
      62006200500061006B00650074004E00720050006F0073005F0049004E004900
      0100500061006B00650074004E007200200070006F0073006900740069006F00
      6E000100010050006B0067004E006F00200070006F0073006900740069006F00
      6E000100500061006C006C006E007200200070006F0073006900740069006F00
      6E0001000D000A006400780042006100720042007500740074006F006E003500
      010050007200690073006C006900730074006100010001005000720069006300
      65006C00690073007400010001000D000A006400780042006100720042007500
      740074006F006E00310034000100500061006B00650074006B006F0064000100
      010050006B006700200063006F00640065000100500061006C006C006B006F00
      640001000D000A00740065007300740001007400650073007400010001000100
      01000D000A006400780042006100720042007500740074006F006E0032000100
      4E006500770020004900740065006D0001000100010001000D000A0064007800
      42006100720042007500740074006F006E003300010047006500740020007000
      720069006E0074006500720001004800E4006D0074006100200073006B007200
      69007600610072006500010001004800E4006D0074006100200073006B007200
      6900760061007200650001000D000A006200620041006E006400720061005000
      6B0074000100C4006E00640072006100200070006B0074000100010043006800
      61006E0067006500200070006B0067000100C4006E0064007200610020007000
      61006C006C0001000D000A006100630042007900740041006E00760061006E00
      64006100720065000100420079007400200041006E007600E4006E0064006100
      72006500010001004300680061006E0067006500200055007300650072000100
      01000D000A006100630044006500520065006700690073007400650072005000
      610063006B006100670065007300010041007600720065006700690073007400
      72006500720061002000700061006B00650074000100010055006E0072006500
      670069007300740065007200200070006B006700730001004100760072006500
      670069007300740072006500720061002000700061006C006C00610072000100
      0D000A0063007800620074006E004300680061006E0067006500520065007000
      6F00720074006500720001004300680061006E0067006500200074006F002000
      46006100730074005200650070006F007200740001000100010001000D000A00
      500061006E0065006C0041000100500061006E0065006C004100010001000100
      01000D000A00500061006E0065006C0037000100500061006E0065006C003700
      01000100010001000D000A00670072006400530065006C006500630074006500
      640050006B0067007300440042005400610062006C0065005600690065007700
      31005000610063006B006100670065004E006F000100500061006B0065007400
      6E007200010001005000610063006B0061006700650020006E006F0001005000
      61006C006C006E00720001000D000A00670072006400530065006C0065006300
      74006500640050006B0067007300440042005400610062006C00650056006900
      65007700310073007500700070006C0069006500720063006F00640065000100
      50007200650066006900780001000100010001000D000A006700720064005300
      65006C006500630074006500640050006B006700730044004200540061006200
      6C006500560069006500770031005200450046004500520045004E0043004500
      01005200650066006500720065006E00730001000100010001000D000A006700
      72006400530065006C006500630074006500640050006B006700730044004200
      5400610062006C00650056006900650077003100500072006F00640075006300
      74000100500072006F00640075006300740001000100010001000D000A006700
      72006400530065006C006500630074006500640050006B006700730044004200
      5400610062006C0065005600690065007700310070006F007300690074006900
      6F006E00010050006F0073006900740069006F006E0001000100010001000D00
      0A00670072006400530065006C006500630074006500640050006B0067007300
      440042005400610062006C0065005600690065007700310050006F0073006900
      740069006F006E0049004400010050006F0073006900740069006F006E004900
      440001000100010001000D000A00670072006400530065006C00650063007400
      6500640050006B0067007300440042005400610062006C006500560069006500
      770031005000610063006B0061006700650054007900700065004E006F000100
      5000610063006B0061006700650054007900700065004E006F00010001000100
      01000D000A00670072006400530065006C006500630074006500640050006B00
      67007300440042005400610062006C0065005600690065007700310050004300
      5300010050004300530001000100010001000D000A0067007200640053006500
      6C006500630074006500640050006B0067007300440042005400610062006C00
      65005600690065007700310041004D003300010041004D003300010001000100
      01000D000A00670072006400530065006C006500630074006500640050006B00
      67007300440042005400610062006C006500560069006500770031004E004D00
      330001004E004D00330001000100010001000D000A0067007200640053006500
      6C006500630074006500640050006B0067007300440042005400610062006C00
      6500560069006500770031004D00610078004C0065006E006700740068000100
      4D00610078004C0065006E0067007400680001000100010001000D000A007400
      7300550074007400610067000100740073005500740074006100670001000100
      010001000D000A00500061006E0065006C0050006B0067007300500065007200
      4C0069006E0065000100500061006E0065006C0050006B006700730050006500
      72004C0069006E00650001000100010001000D000A0067007200640050006B00
      670073005000650072004D005000440042004300610072006400560069006500
      7700310052006500670050006F0069006E0074004E0061006D00650001005200
      6500670050006F0069006E0074004E0061006D00650001000100010001000D00
      0A0067007200640050006B00670073005000650072004D005000440042004300
      610072006400560069006500770031005000610063006B006100670065007300
      01005000610063006B0061006700650073000100500061006B00650074000100
      0100500061006C006C006100720001000D000A007400730050006F0073006900
      740069006F006E0050006B006700730001007400730050006F00730069007400
      69006F006E0050006B006700730001000100010001000D000A00500061006E00
      65006C0032000100500061006E0065006C0070006F0073006900740069006F00
      6E006500720069006E00670001000100010001000D000A00500061006E006500
      6C0039000100500061006E0065006C00390001000100010001000D000A006700
      720064004D00610074006300680069006E006700470072006900640044004200
      430061007200640056006900650077003100560061006C006400010056006100
      6C00640001000100010001000D000A006700720064004D006100740063006800
      69006E0067004700720069006400440042004300610072006400560069006500
      7700310050006F0073006900740069006F006E00010050006F00730069007400
      69006F006E0001000100010001000D000A006700720064004D00610074006300
      680069006E006700470072006900640044004200430061007200640056006900
      6500770031005200450046004500520045004E00430045000100520065006600
      6500720065006E006300650001000100010001000D000A006700720064004D00
      610074006300680069006E006700470072006900640044004200430061007200
      640056006900650077003100500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F0001000100010001000D000A006700
      720064004D00610074006300680069006E006700470072006900640044004200
      430061007200640056006900650077003100410063007400750061006C004C00
      65006E006700740068004D004D000100410063007400750061006C004C006500
      6E006700740068004D004D0001000100010001000D000A006700720064004D00
      610074006300680069006E006700470072006900640044004200430061007200
      64005600690065007700310050006F0073006900740069006F006E0049004400
      010050006F0073006900740069006F006E004900440001000100010001000D00
      0A006700720064004D00610074006300680069006E0067004700720069006400
      4400420043006100720064005600690065007700310050006800790073006900
      630061006C0049006E00760065006E0074006F007200790050006F0069006E00
      74004E006F00010050006800790073006900630061006C0049006E0076006500
      6E0074006F007200790050006F0069006E0074004E006F000100010001000100
      0D000A006700720064004D00610074006300680069006E006700470072006900
      64004400420043006100720064005600690065007700310050006F0073005300
      74006100740075007300010050006F0073005300740061007400750073000100
      0100010001000D000A006700720064004D00610074006300680069006E006700
      4700720069006400440042004300610072006400560069006500770031004100
      4C004D004D00010041004C004D004D0001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004300
      610072006400560069006500770031005000490050004E006F00010050004900
      50004E006F0001000100010001000D000A006700720064004D00610074006300
      680069006E006700470072006900640044004200430061007200640056006900
      650077003100530074006F007200650064004400610074006500010053007400
      6F00720065006400440061007400650001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031005600
      61006C0064000100560061006C00640001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6F0073006900740069006F006E00010050006F0073006900740069006F006E00
      4E0061006D006E0001000100010001000D000A006700720064004D0061007400
      6300680069006E006700470072006900640044004200420061006E0064006500
      64005400610062006C0065005600690065007700310052004500460045005200
      45004E004300450001005200650066006500720065006E006300650001000100
      010001000D000A006700720064004D00610074006300680069006E0067004700
      72006900640044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004E006F0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      63007400750061006C004C0065006E006700740068004D004D0001004D006100
      78004C0065006E0067007400680001000100010001000D000A00670072006400
      4D00610074006300680069006E00670047007200690064004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006F00
      73006900740069006F006E0049004400010050006F0073006900740069006F00
      6E004900440001000100010001000D000A006700720064004D00610074006300
      680069006E006700470072006900640044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050006F007300530074006100
      7400750073000100460075006C006C00740001000100010001000D000A006700
      720064004D00610074006300680069006E006700470072006900640044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      530074006F0072006500640044006100740065000100530074006F0072006500
      6400440061007400650001000100010001000D000A00500061006E0065006C00
      35000100500061006E0065006C00350001000100010001000D000A0050006100
      6E0065006C00310030000100500061006E0065006C0039000100010001000100
      0D000A00500061006E0065006C00310031000100500061006E0065006C003900
      01000100010001000D000A006700720064004100720065006100440042005400
      610062006C0065005600690065007700310041007200650061004E0061006D00
      65000100410072006500610001000100010001000D000A006700720064004100
      720065006100440042005400610062006C006500560069006500770031004100
      7200650061004900440001004100720065006100490044000100010001000100
      0D000A006300780050006F0073006900740069006F006E004400420054006100
      62006C0065005600690065007700310050006F0073006900740069006F006E00
      010050006F0073006900740069006F006E0001000100010001000D000A006300
      780050006F0073006900740069006F006E00440042005400610062006C006500
      5600690065007700310050006F0073006900740069006F006E00490044000100
      50006F0073006900740069006F006E004900440001000100010001000D000A00
      6300780050006F0073006900740069006F006E00440042005400610062006C00
      65005600690065007700310050006F0073005300740061007400750073000100
      50006F00730053007400610074007500730001000100010001000D000A006300
      780050006F0073006900740069006F006E00440042005400610062006C006500
      5600690065007700310041007200650061004900440001004100720065006100
      4900440001000100010001000D000A006100630050006F007300690074006900
      6F006E005600690065007700010050006F0073006900740069006F006E007300
      2000760079006500720001000100010001000D000A0061006300520065006600
      72006500730068005F00550073006500720073006D006F006E00700075005F00
      7000690076000100550070007000640061007400650072006100010001000100
      01000D000A00610063005300650074007500700055007300650072004F007500
      7400700075007400010049006E0073007400E4006C006C006E0069006E006700
      6100720001000100010001000D000A0061006300530065006C00650063007400
      50006F0073006900740069006F006E0001005600E4006C006A00200070006F00
      73006900740069006F006E0001000100010001000D000A006100630053006800
      6F00770041006C006C004F007500740070007500740001005600690073006100
      200061006C006C00610020007500740074006100670001000100010001000D00
      0A0061006300410073006B004100760072006F00700001004100760069007300
      6500720069006E00670073006C00690073007400610001000100010001000D00
      0A006100630050006F0073006900740069006F006E0050006B00670073000100
      50006F0073006900740069006F006E0065007200610001000100010001000D00
      0A006100630047006F0054006F00550074007400610067000100540069006C00
      6C00620061006B00610001000100010001000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E003300370001004E006500
      7700200042007500740074006F006E0001000100010001000D000A0047007200
      690064005400610062006C00650056006900650077005300740079006C006500
      53006800650065007400570069006E0064006F00770073005300740061006E00
      64006100720064006C0061007200670065000100570069006E0064006F007700
      730020005300740061006E006400610072006400200028006C00610072006700
      6500290001000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A005400660072006D004D0061006900
      6E000100430075007200720065006E0063007900010043007500720072006500
      6E00630079000100430075007200720065006E00630079000100430075007200
      720065006E006300790001000D000A0061007400440061007400610043006F00
      75006E00740072007900010043006F0075006E0074007200790001004C006100
      6E006400010001004C0061006E00640001000D000A0061007400440065006C00
      690076006500720079005400650072006D000100440065006C00690076006500
      7200790020005400650072006D0001004C00650076002000760069006C006C00
      6B006F0072000100440065006C0020007400650072006D00730001004C006500
      76002000760069006C006C006B006F00720001000D000A006100740050006100
      79006D0065006E0074005400650072006D0001005000610079006D0065006E00
      740020005400650072006D00010042006500740061006C006E0069006E006700
      7300760069006C006C006B006F00720001005000610079006D0065006E007400
      20007400650072006D007300010042006500740061006C006E0069006E006700
      7300760069006C006C006B006F00720001000D000A0061007400430075007200
      720065006E00630079000100430075007200720065006E006300790001004300
      75007200720065006E00630079000100430075007200720065006E0063007900
      0100430075007200720065006E006300790001000D000A006100740050006100
      63006B0055006E0069007400010050007200690063006500200055006E006900
      740001000100010001000D000A006100740055006E00690074004E0061006D00
      6500010056006F006C0075006D006500200055006E0069007400010056006F00
      6C0079006D0065006E00680065007400010056006F006C0075006D0065002000
      75006E0069007400010056006F006C0079006D0065006E006800650074000100
      0D000A0061007400450078006900740001004500780069007400010053007400
      E4006E00670001004500780069007400010053007400E4006E00670001000D00
      0A0061007400410062006F00750074000100410062006F007500740001004F00
      6D00010001004F006D0001000D000A00610074004D00610072006B0065007400
      52006500670069006F006E0001004D00610072006B0065007400200052006500
      670069006F006E0001000100010001000D000A00610074005300740061007400
      6900730074006900630061006C0043006F006400650001005300740061007400
      6900730074006900630061006C00200043006F00640065000100530074006100
      7400690073007400690073006B0020006B006F00640001005300740061007400
      6900730074006900630061006C00200043006F00640065000100530074006100
      7400690073007400690073006B0020006B006F00640001000D000A0061007400
      4C0061006E006700750061006700650001004C0061006E006700750061006700
      65000100530070007200E5006B0001000100530070007200E5006B0001000D00
      0A006400780042006100720042007500740074006F006E00340001004E006500
      770020004900740065006D0001000100010001000D000A006400780042006100
      720042007500740074006F006E00310033000100530065007400750070000100
      0100010001000D000A006400780042006100720042007500740074006F006E00
      31003500010043006C00650061006E0020007500700020004C006F0061006400
      20004F00720064006500720073000100520065006E0073006100200075007000
      700020004C004F0001000100520065006E007300610020007500700070002000
      4C004F0001000D000A006200620050006B00670049006E0066006F0001004100
      73006B0020005000610063006B00610067006500010046007200E50067006100
      2000700061006B0065007400010051007500650072007900200070006B006700
      010046007200E500670061002000700061006C006C0001000D000A0062006200
      4100640064005000610063006B00610067006500010041006400640020007000
      610063006B0061006700650001004C00E400670067002000740069006C006C00
      2000700061006B00650074000100410064006400200070006B00670001004C00
      E400670067002000740069006C006C002000700061006C006C0001000D000A00
      62006200430075007200720065006E00630079000100560061006C0075007400
      610001000100430075007200720065006E0063007900010001000D000A006200
      6200470065006E006500720061006C005300680069007000700069006E006700
      43006F00730074000100470065006E006500720065006C006C00610020006600
      720061006B0074006B006F00730074006E006100640065007200010001004700
      65006E006500720061006C002000660072006500690067006800740063006F00
      730074007300010001000D000A00620062004D00610072006B00650074005000
      7200690063006500540065006D0070006C00610074006500730001004D006100
      6C006C006100720020006600F600720020004D00610072006B006E0061006400
      730070007200690073006500720001000100540065006D0070006C0061007400
      650020006D00610072006B006500740070007200690063006500730001000100
      0D000A00620062004D00610072006B0065007400500072006900630065007300
      01004D00610072006B006E006100640073007000720069007300650072000100
      01004D00610072006B0065007400700072006900630065007300010001000D00
      0A00620062004D0061007400500075006E006B00740065007200560065007200
      6B0001004D00E4007400700075006E006B007400650072002000760065007200
      6B00010001004D0065006100730075007200650070006F0069006E0074002000
      6D0069006C006C00010001000D000A00620062004200610073004D0061007400
      500075006E006B0074006500720001004200610073006D00E400740070007500
      6E006B0074006500720001000100420061007300650020006D00650061007300
      75007200650070006F0069006E0074007300010001000D000A00620062004D00
      610069006E0047007200610064006500010049006E007400650072006E006B00
      760061006C0069007400650074000100010049006E007400650072006E002000
      67007200610064006500010001000D000A006200620050006B0067004E006F00
      530065007200690065000100500061006B00650074004E007200200073006500
      72006900650072000100010050006B0067004E006F0020007300650072006900
      650073000100500061006C006C006E0072002000730065007200690065007200
      01000D000A0062006200500072006F00640075006300740043006F0064006500
      7300010049006E007400650072006E00610020006B00760061006C0069007400
      6500740073006B006F006400650072000100010049006E007400650072006E00
      20006700720061006400650063006F0064006500010001000D000A0062006200
      49006E007400650072006E0061006C0053007000650063006900650073004300
      6F00640065007300010049006E007400650072006E006100200054007200E400
      73006C006100670073006B006F006400650072000100010049006E0074006500
      72006E00200077006F006F00640063006F00640065007300010001000D000A00
      6200620049006E007400650072006E0061006C00530075007200660061006300
      69006E00670043006F00640065007300010049006E007400650072006E006100
      2000750074006600F600720061006E00640065006B006F006400650072000100
      010049006E007400650072006E00200073007500720066006100630069006E00
      670063006F00640065007300010001000D000A006200620050006B0074004E00
      720050006F0073006900740069006F006E00650072000100D600760065007200
      7300E4007400740020006C00650076006500720061006E007400F60072007300
      6B006F006400010001005400720061006E0073006C0061007400650020007300
      7500700070006C0069006500720063006F0064006500010001000D000A006200
      6200500061006B00650074004E00720050006F0073005F0049004E0049000100
      500061006B00650074004E007200200070006F0073006900740069006F006E00
      0100010050006B0067004E006F00200070006F0073006900740069006F006E00
      0100500061006C006C006E007200200070006F0073006900740069006F006E00
      01000D000A006400780042006100720042007500740074006F006E0031003400
      0100500061006B00650074006B006F0064000100010050006B00670020006300
      6F00640065000100500061006C006C006B006F00640001000D000A0074006500
      730074000100740065007300740001000100010001000D000A00640078004200
      6100720042007500740074006F006E00320001004E0065007700200049007400
      65006D0001000100010001000D000A0064007800420061007200420075007400
      74006F006E003300010047006500740020007000720069006E00740065007200
      01004800E4006D0074006100200073006B007200690076006100720065000100
      01004800E4006D0074006100200073006B007200690076006100720065000100
      0D000A006200620041006E0064007200610050006B0074000100C4006E006400
      72006100200070006B007400010001004300680061006E006700650020007000
      6B0067000100C4006E006400720061002000700061006C006C0001000D000A00
      63007800620074006E004300680061006E00670065005200650070006F007200
      74006500720001004300680061006E0067006500200074006F00200046006100
      730074005200650070006F007200740001000100010001000D000A0064007800
      4200610072004C00610072006700650042007500740074006F006E0033003500
      010046007200E5006700610020006100760072006F0070000100010001000100
      0D000A00640078004200610072004C0061007200670065004200750074007400
      6F006E003300370001004E0065007700200042007500740074006F006E000100
      0100010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E003500010046007200E500670061002000610076007200
      6F00700001000100010001000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D004D00610069006E0001004D005300200053006100
      6E007300200053006500720069006600010001004D0053002000530061006E00
      7300200053006500720069006600010001000D000A0064007800420061007200
      4D0061006E006100670065007200310001005300650067006F00650020005500
      4900010001005400610068006F006D006100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001005300
      650067006F006500200055004900010001005400610068006F006D0061000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      420061007200340001005300650067006F006500200055004900010001005400
      610068006F006D006100010001000D000A006400780042006100720041007000
      70006C00690063006100740069006F006E004D0065006E007500310001005300
      650067006F006500200055004900010001005400610068006F006D0061000100
      01000D000A006400780052006900620062006F006E0050006F00700075007000
      4D0065006E007500310001005300650067006F00650020005500490001000100
      5400610068006F006D006100010001000D000A00640078005200690062006200
      6F006E00440072006F00700044006F0077006E00470061006C006C0065007200
      7900310001005300650067006F00650020005500490001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650031000100
      560065007200640061006E006100010001005400610068006F006D0061000100
      01000D000A00630078005300740079006C006500320001005600650072006400
      61006E006100010001005400610068006F006D006100010001000D000A006300
      78005300740079006C00650033000100560065007200640061006E0061000100
      01005400610068006F006D006100010001000D000A0063007800530074007900
      6C006500340001005400610068006F006D006100010001005400610068006F00
      6D006100010001000D000A00630078005300740079006C006500350001005400
      610068006F006D006100010001005400610068006F006D006100010001000D00
      0A00630078005300740079006C006500360001005400610068006F006D006100
      010001005400610068006F006D006100010001000D000A006300780053007400
      79006C006500370001005400610068006F006D00610001000100540061006800
      6F006D006100010001000D000A00630078005300740079006C00650038000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00630078005300740079006C006500390001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C0065003100300001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      3100310001005400610068006F006D006100010001005400610068006F006D00
      6100010001000D000A00630078005300740079006C0065004D00610072006B00
      6500640050006B006700730001005400610068006F006D006100010001005400
      610068006F006D006100010001000D000A00630078005300740079006C006500
      43006F006E00740065006E0074004F006400640001005400610068006F006D00
      6100010001005400610068006F006D006100010001000D000A00630078005300
      740079006C00650043006F006E00740065006E0074004500760065006E000100
      5400610068006F006D006100010001005400610068006F006D00610001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A00640078004200610072004D0061006E00
      610067006500720031002E00430061007400650067006F007200690065007300
      0100440065006600610075006C0074002C00460069006C0065002C0044006100
      740061002C00480065006C0070002C005000720069006E0074002C0041007600
      72006F0070002C004C006100730074006F0072006400650072002C0045006B00
      6F006E006F006D0069002C004600720061006B0074004100760072002C004100
      76007200E4006B006E0069006E0067002C0050006F0070007500700049006E00
      76006F0069006300650052006F007700730001000100010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00640078005200690062006200
      6F006E0031002E0043006F006C006F00720053006300680065006D0065004E00
      61006D006500010042006C00610063006B000100530076006100720074000100
      01005300760061007200740001000D000A00640078004200610072004D006100
      6E006100670065007200310042006100720031002E004F006C0064004E006100
      6D00650001004D00610069006E004D0065006E00750001000100010001000D00
      0A00640078004200610072004100700070006C00690063006100740069006F00
      6E004D0065006E00750031002E0045007800740072006100500061006E006500
      480065006100640065007200010052006500630065006E007400200044006F00
      630075006D0065006E00740073000100530065006E0061007300740065002000
      64006F006B0075006D0065006E00740001000100530065006E00610073007400
      6500200064006F006B0075006D0065006E00740001000D000A00670072006400
      530065006C006500630074006500640050006B00670073004400420054006100
      62006C006500560069006500770031005000610063006B006100670065004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      6400530065006C006500630074006500640050006B0067007300440042005400
      610062006C0065005600690065007700310073007500700070006C0069006500
      720063006F00640065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00670072006400530065006C006500630074006500640050006B006700
      7300440042005400610062006C00650056006900650077003100520045004600
      4500520045004E00430045002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000100
      01000D000A00670072006400530065006C006500630074006500640050006B00
      67007300440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00670072006400530065006C006500630074006500640050006B006700
      7300440042005400610062006C0065005600690065007700310070006F007300
      6900740069006F006E002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A00670072006400530065006C006500630074006500640050006B006700
      7300440042005400610062006C0065005600690065007700310050006F007300
      6900740069006F006E00490044002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A00670072006400530065006C00650063007400650064005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      610063006B0061006700650054007900700065004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      69006500730001000100010001000D000A00670072006400530065006C006500
      630074006500640050006B0067007300440042005400610062006C0065005600
      69006500770031005000430053002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      010001000D000A00670072006400530065006C00650063007400650064005000
      6B0067007300440042005400610062006C006500560069006500770031004100
      4D0033002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      72006400530065006C006500630074006500640050006B006700730044004200
      5400610062006C006500560069006500770031004E004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400530065006C00
      6500630074006500640050006B0067007300440042005400610062006C006500
      560069006500770031004D00610078004C0065006E006700740068002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006700720064004D006100
      74006300680069006E0067004700720069006400440042004300610072006400
      56006900650077003100560061006C0064002E00500072006F00700065007200
      74006900650073002E0044006900730070006C00610079004300680065006300
      6B00650064000100540072007500650001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004300
      61007200640056006900650077003100560061006C0064002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001000100
      010001000D000A006700720064004D00610074006300680069006E0067004700
      7200690064004400420043006100720064005600690065007700310056006100
      6C0064002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780043006800650063006B004200
      6F007800500072006F0070006500720074006900650073000100010001000100
      0D000A006700720064004D00610074006300680069006E006700470072006900
      6400440042004300610072006400560069006500770031004100630074007500
      61006C004C0065006E006700740068004D004D002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      730001000100010001000D000A006700720064004D0061007400630068006900
      6E00670047007200690064004400420043006100720064005600690065007700
      310050006F0073005300740061007400750073002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B00650064000100540072007500650001000100010001000D000A006700
      720064004D00610074006300680069006E006700470072006900640044004200
      43006100720064005600690065007700310050006F0073005300740061007400
      750073002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790055006E0063006800650063006B006500640001004600
      61006C007300650001000100010001000D000A006700720064004D0061007400
      6300680069006E00670047007200690064004400420043006100720064005600
      690065007700310050006F0073005300740061007400750073002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006800650063006B0042006F007800500072006F00
      700065007200740069006500730001000100010001000D000A00670072006400
      4D00610074006300680069006E00670047007200690064004400420042006100
      6E006400650064005400610062006C0065005600690065007700310056006100
      6C0064002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790043006800650063006B00650064000100540072007500
      650001000100010001000D000A006700720064004D0061007400630068006900
      6E006700470072006900640044004200420061006E0064006500640054006100
      62006C00650056006900650077003100560061006C0064002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001000100
      010001000D000A006700720064004D00610074006300680069006E0067004700
      72006900640044004200420061006E006400650064005400610062006C006500
      56006900650077003100560061006C0064002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      69006500730001000100010001000D000A006700720064004D00610074006300
      680069006E006700470072006900640044004200420061006E00640065006400
      5400610062006C0065005600690065007700310050006F007300690074006900
      6F006E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F00700065007200740069006500730001000100010001000D000A006700
      720064004D00610074006300680069006E006700470072006900640044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      50006F0073005300740061007400750073002E00500072006F00700065007200
      74006900650073002E0044006900730070006C00610079004300680065006300
      6B00650064000100540072007500650001000100010001000D000A0067007200
      64004D00610074006300680069006E0067004700720069006400440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      6F0073005300740061007400750073002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790055006E00630068006500
      63006B00650064000100460061006C007300650001000100010001000D000A00
      6700720064004D00610074006300680069006E00670047007200690064004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310050006F0073005300740061007400750073002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780043006800650063006B0042006F007800500072006F00700065007200
      740069006500730001000100010001000D000A00670072006400410072006500
      6100440042005400610062006C00650056006900650077003100410072006500
      61004E0061006D0065002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F0070006500720074006900650073000100010001000100
      0D000A006300780050006F0073006900740069006F006E004400420054006100
      62006C0065005600690065007700310050006F0073006900740069006F006E00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      700065007200740069006500730001000100010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A005400660072006D004D00610069006E00
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      42006100720031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720034000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A0064007800420061007200
      4100700070006C00690063006100740069006F006E004D0065006E0075003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A006400780052006900620062006F006E0050006F00700075007000
      4D0065006E00750031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006400780052006900620062006F006E00
      440072006F00700044006F0077006E00470061006C006C006500720079003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00630078005300740079006C006500310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0063007800
      5300740079006C00650032000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00630078005300740079006C006500
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00630078005300740079006C00650034000100440045004600
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
      5300740079006C0065004D00610072006B006500640050006B00670073000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00630078005300740079006C00650043006F006E00740065006E007400
      4F00640064000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00630078005300740079006C00650043006F006E00
      740065006E0074004500760065006E000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 482
    Top = 410
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13160660
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Verdana'
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
    object cxStyleMarkedPkgs: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleContentEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet
      Caption = 'Windows Standard (large)'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Inactive = cxStyle8
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      Styles.Selection = cxStyle11
      BuiltIn = True
    end
  end
  object sp_GetGroupClientRegionNo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    SchemaName = 'dbo'
    StoredProcName = 'vis_GetGroupClientRegionNo'
    Left = 484
    Top = 477
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@VerkNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SalesRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dxSkinController1: TdxSkinController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    SkinName = 'Silver'
    Left = 784
    Top = 498
  end
  object cds_PropsInv: TFDQuery
    AfterInsert = cds_PropsInvAfterInsert
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_PropsInvPKey'
        Fields = 'Form;UserID'
      end>
    IndexName = 'cds_PropsInvPKey'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.userprops'
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 304
    Top = 312
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
    object cds_PropsInvUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsInvForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cds_PropsInvName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsInvVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsInvLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInvMarknad: TStringField
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
    object cds_PropsInvKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.sp_Customers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvSR: TStringField
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
    object cds_PropsInvSaljgrupp: TStringField
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
    object cds_PropsInvVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_Shippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsInvBokningstyp: TStringField
      FieldKind = fkLookup
      FieldName = 'Bokningstyp'
      LookupDataSet = dmsSystem.cdsBookingType
      LookupKeyFields = 'BookingTypeNo'
      LookupResultField = 'BookingType'
      KeyFields = 'BookingTypeNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_PropsInvLaststalle: TStringField
      FieldKind = fkLookup
      FieldName = 'Laststalle'
      LookupDataSet = dmsContact.cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LoadingLocationNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_PropsInvAgentNamn: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNamn'
      LookupDataSet = dmsContact.sp_Agent
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'AgentNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
end
