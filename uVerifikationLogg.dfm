object fVerifikationLogg: TfVerifikationLogg
  Left = 197
  Top = 107
  Width = 973
  Height = 656
  Caption = 'Verifikatlogg'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 965
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      965
      57)
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 89
      Height = 33
      Action = acPrint
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 864
      Top = 8
      Width = 88
      Height = 33
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 576
    Width = 965
    Height = 53
    Align = alBottom
    TabOrder = 1
  end
  object grdVerifikationLogg: TcxGrid
    Left = 0
    Top = 57
    Width = 965
    Height = 519
    Align = alClient
    TabOrder = 2
    object grdVerifikationLoggDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dmVidaInvoice.ds_VerLogg
      DataController.KeyFieldNames = 'RadOrder'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Debet'
          Column = grdVerifikationLoggDBTableView1Debet
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'Kredit'
          Column = grdVerifikationLoggDBTableView1Kredit
        end
        item
          Format = '#,###,###,###.00'
          Kind = skSum
          FieldName = 'UtlandsBelopp'
          Column = grdVerifikationLoggDBTableView1UtlandsBelopp
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdVerifikationLoggDBTableView1Konto: TcxGridDBColumn
        DataBinding.FieldName = 'Konto'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 46
      end
      object grdVerifikationLoggDBTableView1Namn: TcxGridDBColumn
        DataBinding.FieldName = 'Namn'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 132
      end
      object grdVerifikationLoggDBTableView1Valuta: TcxGridDBColumn
        DataBinding.FieldName = 'Valuta'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 59
      end
      object grdVerifikationLoggDBTableView1Kurs: TcxGridDBColumn
        DataBinding.FieldName = 'Kurs'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 66
      end
      object grdVerifikationLoggDBTableView1UtlandsBelopp: TcxGridDBColumn
        DataBinding.FieldName = 'UtlandsBelopp'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Sorting = False
        Width = 85
      end
      object grdVerifikationLoggDBTableView1Debet: TcxGridDBColumn
        DataBinding.FieldName = 'Debet'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Sorting = False
        Width = 86
      end
      object grdVerifikationLoggDBTableView1Kredit: TcxGridDBColumn
        DataBinding.FieldName = 'Kredit'
        PropertiesClassName = 'TcxCalcEditProperties'
        Options.Sorting = False
        Width = 101
      end
      object grdVerifikationLoggDBTableView1Text: TcxGridDBColumn
        DataBinding.FieldName = 'Text'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Sorting = False
        Width = 242
      end
      object grdVerifikationLoggDBTableView1RadOrder: TcxGridDBColumn
        DataBinding.FieldName = 'RadOrder'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 134
      end
    end
    object grdVerifikationLoggLevel1: TcxGridLevel
      GridView = grdVerifikationLoggDBTableView1
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 408
    Top = 136
    object acClose: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      OnExecute = acCloseExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      ImageIndex = 5
      OnExecute = acPrintExecute
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdVerifikationLogg
    PopupMenus = <>
    Left = 600
    Top = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 240
    Top = 160
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdVerifikationLogg
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Verifikatlogg')
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
