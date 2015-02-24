inherited fOrderStocken: TfOrderStocken
  Width = 1145
  Height = 797
  Caption = 'fOrderStocken'
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1137
    inherited Panel3: TPanel
      Left = 1067
    end
    inherited Panel4: TPanel
      Width = 514
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Orderstock'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 257
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1137
    Height = 711
    object grdOrderStock: TcxGrid
      Left = 1
      Top = 1
      Width = 1135
      Height = 709
      Align = alClient
      TabOrder = 0
      object grdOrderStockDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.DataSource = dmModule1.ds_vis_GenOSRunAll
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object grdOrderStockDBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmModule1.ds_Orderstock
        DataController.KeyFieldNames = 'SalesRegionNo;CountryNo;CurrencyNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'LevNM3ext'
            Column = grdOrderStockDBBandedTableView1LevNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'LevNM3int'
            Column = grdOrderStockDBBandedTableView1LevNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderNM3ext'
            Column = grdOrderStockDBBandedTableView1OrderNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderNM3int'
            Column = grdOrderStockDBBandedTableView1OrderNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockNM3ext'
            Column = grdOrderStockDBBandedTableView1OrderstockNM3ext
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockNM3int'
            Column = grdOrderStockDBBandedTableView1OrderstockNM3int
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'OrderstockSEK'
            Column = grdOrderStockDBBandedTableView1OrderstockSEK
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
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Grupp'
            Options.HoldOwnColumnsOnly = True
            Width = 255
          end
          item
            Caption = 'V'#228'rden'
            Options.HoldOwnColumnsOnly = True
            Width = 279
          end
          item
            Caption = 'NM3 ext'
            Options.HoldOwnColumnsOnly = True
            Width = 231
          end
          item
            Caption = 'NM3 int'
            Options.HoldOwnColumnsOnly = True
            Width = 356
          end>
        object grdOrderStockDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn
          DataBinding.FieldName = 'F'#246'rs'#228'ljningsregion'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1Lev_Land: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Lev_Land'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 87
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1Valuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Valuta'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderNM3int: TcxGridDBBandedColumn
          Caption = 'Order'
          DataBinding.FieldName = 'OrderNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1LevNM3int: TcxGridDBBandedColumn
          Caption = 'Levererat'
          DataBinding.FieldName = 'LevNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockNM3int: TcxGridDBBandedColumn
          Caption = 'Orderstock'
          DataBinding.FieldName = 'OrderstockNM3int'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderNM3ext: TcxGridDBBandedColumn
          Caption = 'Order'
          DataBinding.FieldName = 'OrderNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1LevNM3ext: TcxGridDBBandedColumn
          Caption = 'Levererat'
          DataBinding.FieldName = 'LevNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockNM3ext: TcxGridDBBandedColumn
          Caption = 'Orderstock'
          DataBinding.FieldName = 'OrderstockNM3ext'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockValuta: TcxGridDBBandedColumn
          Caption = 'Per valuta'
          DataBinding.FieldName = 'OrderstockValuta'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdOrderStockDBBandedTableView1OrderstockSEK: TcxGridDBBandedColumn
          Caption = 'Per SEK'
          DataBinding.FieldName = 'OrderstockSEK'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object grdOrderStockLevel1: TcxGridLevel
        GridView = grdOrderStockDBBandedTableView1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 320
    Top = 144
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acGenerateOrderstock
      Category = 0
    end
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acExportXLS: TAction
      ImageIndex = 17
    end
    object acGenerateOrderstock: TAction
      Caption = 'Generera orderstock'
      ImageIndex = 16
      OnExecute = acGenerateOrderstockExecute
    end
  end
  inherited cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 336
    Top = 296
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdOrderStock
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
    Grid = grdOrderStock
    PopupMenus = <>
    Left = 256
    Top = 171
  end
end
