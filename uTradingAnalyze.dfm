inherited fTradingAnalyze: TfTradingAnalyze
  Width = 1146
  Height = 757
  Caption = 'fTradingAnalyze'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1138
    inherited Panel2: TPanel
      Width = 321
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 319
      end
    end
    inherited Panel3: TPanel
      Left = 1068
    end
    inherited Panel4: TPanel
      Left = 321
      Width = 747
      object deStartPeriod: TcxDBDateEdit
        Left = 104
        Top = 24
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 48
        Top = 28
        Caption = 'Period:'
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 248
        Top = 24
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 2
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Trading analys'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 374
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1138
    Height = 671
    object grdTradingAnalyze: TcxGrid
      Left = 1
      Top = 1
      Width = 1136
      Height = 669
      Align = alClient
      TabOrder = 0
      object grdTradingAnalyzeDBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmModule1.ds_Vis_GenTradingAnalyze
        DataController.KeyFieldNames = 'PO_Fakturanr'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'PO_Belopp_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'PO_AM3'
            Column = grdTradingAnalyzeDBBandedTableView1PO_AM3
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Sales_Belopp_SEK'
            Column = grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Sales_AM3'
            Column = grdTradingAnalyzeDBBandedTableView1Sales_AM3
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Bands = <
          item
            Caption = 'Ink'#246'p'
            Width = 588
          end
          item
            Caption = 'F'#246'rs'#228'ljning'
            Width = 546
          end>
        object grdTradingAnalyzeDBBandedTableView1Lev: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Lev'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 133
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Kontraktnr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Kontraktnr'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Fakturanr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Fakturanr'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Fakturadatum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Fakturadatum'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 98
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Belopp_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Belopp_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Belopp_SEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_ProduktVrde_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_ProduktV'#228'rde_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1PO_AM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_AM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_ProduktVrde_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_ProduktV'#228'rde_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 50
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_AM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_AM3'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 49
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Belopp_Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_Belopp_Valuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 48
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_Belopp_SEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 49
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Kund: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kund'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 75
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Fakturanr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_Fakturanr'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 96
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdTradingAnalyzeDBBandedTableView1Sales_Fakturadatum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Sales_Fakturadatum'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 112
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grdTradingAnalyzeLevel1: TcxGridLevel
        GridView = grdTradingAnalyzeDBBandedTableView1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Top = 176
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acExportXLS: TAction
      ImageIndex = 16
    end
  end
  inherited cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 272
    Top = 187
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdTradingAnalyze
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
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
      BuiltInReportLink = True
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdTradingAnalyze
    PopupMenus = <>
    Left = 184
    Top = 179
  end
end
