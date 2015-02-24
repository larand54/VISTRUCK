inherited fIntrastat: TfIntrastat
  Left = 306
  Top = 173
  Caption = 'fIntrastat'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Panel2: TPanel
      Width = 265
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 263
      end
    end
    inherited Panel4: TPanel
      Left = 265
      Width = 609
      object Label4: TLabel
        Left = 48
        Top = 32
        Width = 65
        Height = 13
        Caption = 'F'#246'rs'#228'lj.region:'
      end
      object deStartPeriod: TcxDBDateEdit
        Left = 320
        Top = 24
        DataBinding.DataField = 'StartPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 0
        Width = 121
      end
      object deEndPeriod: TcxDBDateEdit
        Left = 456
        Top = 24
        DataBinding.DataField = 'EndPeriod'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        TabOrder = 1
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 280
        Top = 28
        Caption = 'Period:'
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Intrastat'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 305
      end
      object lcSR: TcxDBLookupComboBox
        Left = 120
        Top = 24
        DataBinding.DataField = 'SR'
        DataBinding.DataSource = ds_Props
        Properties.ClearKey = 46
        Properties.DropDownWidth = 300
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        TabOrder = 4
        Width = 145
      end
    end
  end
  inherited Panel5: TPanel
    object grdIntrastat: TcxGrid
      Left = 1
      Top = 1
      Width = 942
      Height = 568
      Align = alClient
      TabOrder = 0
      object grdIntrastatDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dmModule1.ds_Vis_Intra_Stat_Exp
        DataController.KeyFieldNames = 'LandKod;Varukod'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Fakturavarde_sek'
            Column = grdIntrastatDBTableView1Fakturavarde_sek
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'kvantitet'
            Column = grdIntrastatDBTableView1kvantitet
          end
          item
            Format = '#,###,###,###.0'
            Kind = skSum
            FieldName = 'Nettovikt'
            Column = grdIntrastatDBTableView1Nettovikt
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grdIntrastatDBTableView1LandKod: TcxGridDBColumn
          DataBinding.FieldName = 'LandKod'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdIntrastatDBTableView1Transaktionstyp: TcxGridDBColumn
          DataBinding.FieldName = 'Transaktionstyp'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdIntrastatDBTableView1Varukod: TcxGridDBColumn
          DataBinding.FieldName = 'Varukod'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdIntrastatDBTableView1kvantitet: TcxGridDBColumn
          DataBinding.FieldName = 'kvantitet'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###,###.0'
          Properties.Precision = 2
          Properties.UseThousandSeparator = True
        end
        object grdIntrastatDBTableView1Nettovikt: TcxGridDBColumn
          DataBinding.FieldName = 'Nettovikt'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '#,###,###,###.0'
          Properties.Precision = 2
          Properties.ReadOnly = True
          Properties.UseThousandSeparator = True
        end
        object grdIntrastatDBTableView1Fakturavarde_sek: TcxGridDBColumn
          DataBinding.FieldName = 'Fakturavarde_sek'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
      end
      object grdIntrastatLevel1: TcxGridLevel
        GridView = grdIntrastatDBTableView1
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 352
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarLargeButton4: TdxBarLargeButton
      SyncImageIndex = False
      ImageIndex = 17
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 200
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acPrint: TAction
      OnExecute = acPrintExecute
    end
    inherited acExportXLS: TAction
      ImageIndex = 17
    end
  end
  inherited cds_Props: TADQuery
    AfterInsert = cds_PropsAfterInsert
  end
  inherited SaveDialog1: TSaveDialog
    Left = 280
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdIntrastat
    PopupMenus = <>
    Left = 224
    Top = 208
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 280
    Top = 203
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdIntrastat
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
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
end
