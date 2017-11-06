object fSelectProduct: TfSelectProduct
  Left = 197
  Top = 107
  Caption = 'V'#228'lj product'
  ClientHeight = 642
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 57
    Align = alTop
    TabOrder = 0
    object tcProductSelection: TcxTabControl
      Left = 1
      Top = 17
      Width = 942
      Height = 39
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        'Produkter p'#229' k'#246'rorder'
        'Produkter i lager'
        'Alla produkter')
      OnChange = tcProductSelectionChange
      ClientRectBottom = 40
      ClientRectLeft = 4
      ClientRectRight = 938
      ClientRectTop = 40
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 575
    Width = 944
    Height = 67
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 344
      Top = 16
      Width = 97
      Height = 41
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 472
      Top = 16
      Width = 97
      Height = 41
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdProducts: TcxGrid
    Left = 0
    Top = 57
    Width = 944
    Height = 518
    Align = alClient
    TabOrder = 2
    object grdProductsDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = ds_ProdInLager
      DataController.KeyFieldNames = 'ProductNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdProductsDBTableView1ProductDisplayName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductDisplayName'
        PropertiesClassName = 'TcxLabelProperties'
        SortIndex = 0
        SortOrder = soAscending
      end
      object grdProductsDBTableView1ProductNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
    end
    object grdProductsLevel1: TcxGridLevel
      GridView = grdProductsDBTableView1
    end
  end
  object cds_ProdInLager: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct pr.ProductDisplayName, pr.ProductNo FROM '
      'dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pr on pr.ProductNo = pt.ProductNo'
      'WHERE PIP.PhysicalInventoryPointNo = 10048'
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName')
    Left = 264
    Top = 136
    object cds_ProdInLagerProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdInLagerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object ds_ProdInLager: TDataSource
    DataSet = cds_ProdInLager
    Left = 264
    Top = 208
  end
  object siLangLinked_fSelectProduct: TsiLangLinked
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
    Left = 464
    Top = 320
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C00650063007400500072006F006400
      75006300740001005600E4006C006A002000700072006F006400750063007400
      01000100010001000D000A00420069007400420074006E00310001004F004B00
      010001004F004B00010001000D000A00420069007400420074006E0032000100
      430061006E00630065006C000100410076006200720079007400010001004100
      7600620072007900740001000D000A00670072006400500072006F0064007500
      630074007300440042005400610062006C006500560069006500770031005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A00670072006400500072006F006400750063007400
      7300440042005400610062006C00650056006900650077003100500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6300640073005F00500072006F00640049006E004C0061006700650072005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A006300640073005F00500072006F00640049006E00
      4C006100670065007200500072006F0064007500630074004E006F0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C00650063007400500072006F00640075006300740001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A0074006300500072006F006400750063007400530065006C0065006300
      740069006F006E0001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0074006300
      500072006F006400750063007400530065006C0065006300740069006F006E00
      2E00500072006F0070006500720074006900650073002E005400610062007300
      01002200500072006F00640075006B0074006500720020007000E50020006B00
      F60072006F00720064006500720022002C002200500072006F00640075006B00
      7400650072002000690020006C00610067006500720022002C00220041006C00
      6C0061002000700072006F00640075006B007400650072002200010001000100
      01000D000A0074006300500072006F006400750063007400530065006C006500
      6300740069006F006E002E00540061006200730001002200500072006F006400
      75006B0074006500720020007000E50020006B00F60072006F00720064006500
      720022002C002200500072006F00640075006B00740065007200200069002000
      6C00610067006500720022002C00220041006C006C0061002000700072006F00
      640075006B00740065007200220001000100010001000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00670072006400500072006F0064007500
      630074007300440042005400610062006C006500560069006500770031005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F00700065007200740069006500730001000100010001000D000A0067007200
      6400500072006F0064007500630074007300440042005400610062006C006500
      56006900650077003100500072006F0064007500630074004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      7200740069006500730001000100010001000D000A006300640073005F005000
      72006F00640049006E004C0061006700650072002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F00500072006F00640049006E004C0061006700
      65007200500072006F00640075006300740044006900730070006C0061007900
      4E0061006D0065002E004F0072006900670069006E000100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001000100
      010001000D000A006300640073005F00500072006F00640049006E004C006100
      670065007200500072006F0064007500630074004E006F002E004F0072006900
      670069006E000100500072006F0064007500630074004E006F00010001000100
      01000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      530065006C00650063007400500072006F006400750063007400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A0074006300500072006F006400750063007400530065006C006500
      6300740069006F006E000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00}
  end
end
