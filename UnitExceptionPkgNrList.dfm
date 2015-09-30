object PkgNrExceptionList: TPkgNrExceptionList
  Left = 0
  Top = 0
  ActiveControl = cxDateEditStart
  Caption = 'Exception PkgNr List'
  ClientHeight = 465
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object ExceptionPanel: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 465
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'ExceptionPanel'
    TabOrder = 0
    ExplicitWidth = 1134
    ExplicitHeight = 635
    object Panel1: TPanel
      Left = 1
      Top = 406
      Width = 1009
      Height = 58
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 576
      ExplicitWidth = 1132
      object cxButton5: TcxButton
        Left = 168
        Top = 6
        Width = 161
        Height = 47
        Action = acClose
        TabOrder = 0
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 81
      Width = 1009
      Height = 325
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 1132
      ExplicitHeight = 495
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds_GetScannedPkgs
        DataController.KeyFieldNames = 'DateCreated'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1ScannedString: TcxGridDBColumn
          DataBinding.FieldName = 'ScannedString'
          Width = 213
        end
        object cxGrid1DBTableView1PackageNo: TcxGridDBColumn
          DataBinding.FieldName = 'PackageNo'
        end
        object cxGrid1DBTableView1Prefix: TcxGridDBColumn
          DataBinding.FieldName = 'Prefix'
          Width = 70
        end
        object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
          Caption = 'Registrerad'
          DataBinding.FieldName = 'DateCreated'
          Width = 133
        end
        object cxGrid1DBTableView1UserName: TcxGridDBColumn
          Caption = 'Registrerad av'
          DataBinding.FieldName = 'UserName'
          Width = 123
        end
        object cxGrid1DBTableView1Mottagare: TcxGridDBColumn
          DataBinding.FieldName = 'Mottagare'
          Width = 159
        end
        object cxGrid1DBTableView1Levereratill: TcxGridDBColumn
          DataBinding.FieldName = 'Leverera till'
          Width = 120
        end
        object cxGrid1DBTableView1ClientName: TcxGridDBColumn
          Caption = 'Leverant'#246'r'
          DataBinding.FieldName = 'ClientName'
          Width = 122
        end
        object cxGrid1DBTableView1Applikation: TcxGridDBColumn
          DataBinding.FieldName = 'Applikation'
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 80
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 1132
      object cxDateEditStart: TcxDateEdit
        Left = 112
        Top = 8
        EditValue = 42264.8488657407d
        Properties.Kind = ckDateTime
        TabOrder = 0
        Width = 177
      end
      object cxDateEditEnd: TcxDateEdit
        Left = 112
        Top = 39
        EditValue = 42264.8488657407d
        Properties.Kind = ckDateTime
        TabOrder = 1
        Width = 177
      end
      object cxButton1: TcxButton
        Left = 295
        Top = 15
        Width = 113
        Height = 50
        Action = acRefresh
        TabOrder = 2
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Startdatum:'
      end
      object cxLabel2: TcxLabel
        Left = 8
        Top = 43
        Caption = 'Slutdatum:'
      end
      object cxButton2: TcxButton
        Left = 527
        Top = 15
        Width = 113
        Height = 50
        Action = acPrint
        TabOrder = 5
      end
      object cxButton3: TcxButton
        Left = 646
        Top = 15
        Width = 113
        Height = 50
        Action = acMaila
        TabOrder = 6
      end
      object cxButton4: TcxButton
        Left = 414
        Top = 15
        Width = 107
        Height = 50
        Action = acPackageInfo
        TabOrder = 7
      end
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 168
    object acClose: TAction
      Caption = 'Close'
      OnExecute = acCloseExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut'
      OnExecute = acPrintExecute
    end
    object acMaila: TAction
      Caption = 'Maila'
      OnExecute = acMailaExecute
    end
    object acPackageInfo: TAction
      Caption = 'Paket info'
      OnExecute = acPackageInfoExecute
      OnUpdate = acPackageInfoUpdate
    end
    object acChangeFormSize: TAction
      Caption = 'acChangeFormSize'
      OnExecute = acChangeFormSizeExecute
    end
  end
  object sp_GetScannedPkgs: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetScannedPkgs'
    Left = 312
    Top = 168
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 258
      end
      item
        Position = 3
        Name = '@AppName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = #39'VisTruck.Ankomstreg'#39
      end
      item
        Position = 4
        Name = '@StartDateTime'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = 42262d
      end
      item
        Position = 5
        Name = '@EndDateTime'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = 42265d
      end>
  end
  object ds_GetScannedPkgs: TDataSource
    DataSet = sp_GetScannedPkgs
    Left = 312
    Top = 224
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 480
    Top = 248
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object frxReport1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42263.305287557900000000
    ReportOptions.LastChange = 42263.309349594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 256
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 914.646260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[DATE]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 929.764380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[PAGE#]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ScannedString: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ScannedString'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ScannedString"]')
        end
        object frxDBDataset1PackageNo: TfrxMemoView
          Left = 200.315090000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PackageNo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PackageNo"]')
        end
        object frxDBDataset1Prefix: TfrxMemoView
          Left = 287.244280000000000000
          Top = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Prefix'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Prefix"]')
        end
        object frxDBDataset1DateCreated: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DateCreated'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DateCreated"]')
        end
        object frxDBDataset1UserName: TfrxMemoView
          Left = 570.709030000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UserName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."UserName"]')
        end
        object frxDBDataset1Mottagare: TfrxMemoView
          Left = 646.299630000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Mottagare'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Mottagare"]')
        end
        object frxDBDataset1Levereratill: TfrxMemoView
          Left = 789.921770000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Leverera till'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Leverera till"]')
        end
        object frxDBDataset1ClientName: TfrxMemoView
          Left = 925.984850000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ClientName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ClientName"]')
        end
      end
      object Header1: TfrxHeader
        Height = 56.692950000000000000
        Top = 102.047310000000000000
        Width = 1046.929810000000000000
        object frxDBDataset1Applikation: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Applikation'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Applikation"]')
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Skannad str'#228'ng')
        end
        object Memo2: TfrxMemoView
          Left = 204.094620000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Paketnr')
        end
        object Memo3: TfrxMemoView
          Left = 287.244280000000000000
          Top = 30.236240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Prefix')
        end
        object Memo4: TfrxMemoView
          Left = 336.378170000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Registrerad')
        end
        object Memo5: TfrxMemoView
          Left = 570.709030000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Reg. av')
        end
        object Memo6: TfrxMemoView
          Left = 646.299630000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Mottagare')
        end
        object Memo7: TfrxMemoView
          Left = 789.921770000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Leverera till')
        end
        object Memo8: TfrxMemoView
          Left = 925.984850000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'Leverant'#246'r')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = sp_GetScannedPkgs
    BCDToCurrency = False
    Left = 136
    Top = 320
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 264
    Top = 320
  end
end
