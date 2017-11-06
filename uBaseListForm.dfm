object fBaseListForm: TfBaseListForm
  Left = 197
  Top = 107
  Caption = 'fBaseListForm'
  ClientHeight = 618
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 553
      Height = 59
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 551
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel3: TPanel
      Left = 866
      Top = 0
      Width = 70
      Height = 59
      Align = alRight
      Constraints.MaxWidth = 86
      Constraints.MinWidth = 70
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 68
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 553
      Top = 0
      Width = 313
      Height = 59
      Align = alClient
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 59
    Width = 936
    Height = 559
    Align = alClient
    TabOrder = 5
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmsConnector.imglistActions
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 336
    Top = 112
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 147
      FloatTop = 107
      FloatClientWidth = 0
      FloatClientHeight = 0
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
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Exit'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 147
      FloatTop = 107
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acExportXLS
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 448
    Top = 192
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acNew: TAction
      Caption = 'L'#228'gg till'
      ImageIndex = 8
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
    end
    object acSave: TAction
      Caption = 'Spara'
      ImageIndex = 15
    end
    object acExportXLS: TAction
      Caption = 'Exportera XLS F11'
      ImageIndex = 7
      ShortCut = 122
      OnExecute = acExportXLSExecute
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
    Left = 72
    Top = 192
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
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
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
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
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
    object cds_PropsMarknad: TStringField
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
    object cds_PropsKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSR: TStringField
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
    object cds_PropsSaljgrupp: TStringField
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
    object cds_PropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 72
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Left = 296
    Top = 243
  end
  object siLangLinked_fBaseListForm: TsiLangLinked
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
    Left = 464
    Top = 312
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660042006100730065004C0069007300740046006F00
      72006D000100660042006100730065004C0069007300740046006F0072006D00
      01000100010001000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200310001004D00610069006E000100480075007600
      75006400010001004800750076007500640001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010045007800
      69007400010053007400E4006E00670001004500780069007400010053007400
      E4006E00670001000D000A006100630052006500660072006500730068000100
      5500700070006400610074006500720061002000460036000100010055007000
      6400610074006500200046003600010001000D000A006100630043006C006F00
      73006500010053007400E4006E00670020004600310032000100010043006C00
      6F00730065002000460031003200010001000D000A00610063004E0065007700
      01004C00E400670067002000740069006C006C00010001004100640064000100
      01000D000A00610063005000720069006E007400010053006B00720069007600
      200075007400200046003800010001005000720069006E007400200046003800
      010001000D000A00610063005300610076006500010053007000610072006100
      010001005300610076006500010001000D000A00610063004500780070006F00
      7200740058004C00530001004500780070006F00720074006500720061002000
      58004C0053002000460031003100010001004500780070006F00720074002000
      58004C0053002000460031003100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A006300640073005F00500072006F007000730055007300
      6500720049004400010055007300650072004900440001000100010001000D00
      0A006300640073005F00500072006F007000730046006F0072006D0001004600
      6F0072006D00010046006F0072006D0075006C00E40072000100010046006F00
      72006D0075006C00E400720001000D000A006300640073005F00500072006F00
      700073005600650072006B004E006F0001005600650072006B004E006F000100
      0100010001000D000A006300640073005F00500072006F00700073004F007700
      6E00650072004E006F0001004F0077006E00650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005000490050004E00
      6F0001005000490050004E006F0001000100010001000D000A00630064007300
      5F00500072006F00700073004C00490050004E006F0001004C00490050004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      49006E007000750074004F007000740069006F006E00010049006E0070007500
      74004F007000740069006F006E00010049006E006D00610074006E0069006E00
      6700730061006C007400650072006E006100740069007600010049006E007000
      7500740020006F007000740069006F006E007300010049006E006D0061007400
      6E0069006E006700730061006C007400650072006E0061007400690076000100
      0D000A006300640073005F00500072006F007000730052006500670050006F00
      69006E0074004E006F00010052006500670050006F0069006E0074004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073005200
      6500670044006100740065000100520065006700440061007400650001000100
      010001000D000A006300640073005F00500072006F007000730043006F007000
      7900500063007300010043006F007000790050006300730001004B006F007000
      6900650072006100200073007400790063006B00010001004B006F0070006900
      65007200610020007300E40063006B0001000D000A006300640073005F005000
      72006F0070007300520075006E004E006F000100520075006E004E006F000100
      4B00F60072004E007200010001004B00F60072004E00720001000D000A006300
      640073005F00500072006F0070007300500072006F0064007500630065007200
      4E006F000100500072006F00640075006300650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073004100750074006F00
      43006F006C005700690064007400680001004100750074006F0043006F006C00
      5700690064007400680001004100750074006F002E0020006B006F006C002E00
      6200720065006400640001004100750074006F002E00200063006F006C002E00
      7700690064007400680001004100750074006F002E0020006B006F006C002E00
      6200720065006400640001000D000A006300640073005F00500072006F007000
      730053007500700070006C0069006500720043006F0064006500010053007500
      700070006C0069006500720043006F006400650001004C006500760065007200
      61006E007400F600720073006B006F006400010053007500700070006C006900
      6500720063006F006400650001004C00650076006500720061006E007400F600
      720073006B006F00640001000D000A006300640073005F00500072006F007000
      73004C0065006E006700740068004F007000740069006F006E0001004C006500
      6E006700740068004F007000740069006F006E0001000100010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068004700
      72006F00750070004E006F0001004C0065006E00670074006800470072006F00
      750070004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004E00650077004900740065006D0052006F00770001004E006500
      77004900740065006D0052006F00770001000100010001000D000A0063006400
      73005F00500072006F0070007300530061006C00650073005200650067006900
      6F006E004E006F000100530061006C006500730052006500670069006F006E00
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73004D00610072006B006500740052006500670069006F006E004E006F000100
      4D00610072006B006500740052006500670069006F006E004E006F0001000100
      010001000D000A006300640073005F00500072006F00700073004F0072006400
      6500720054007900700065004E006F0001004F00720064006500720054007900
      700065004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073005300740061007400750073000100530074006100740075007300
      01000100530074006100740075007300010001000D000A006300640073005F00
      500072006F0070007300460069006C007400650072004F007200640065007200
      44006100740065000100460069006C007400650072004F007200640065007200
      44006100740065000100460069006C007400650072004F007200640065007200
      44006100740075006D0001000100460069006C007400650072004F0072006400
      6500720044006100740075006D0001000D000A006300640073005F0050007200
      6F00700073005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F00640001000100010001000D000A00
      6300640073005F00500072006F007000730045006E0064005000650072006900
      6F006400010045006E00640050006500720069006F0064000100010001000100
      0D000A006300640073005F00500072006F007000730043006C00690065006E00
      74004E006F00010043006C00690065006E0074004E006F000100010001000100
      0D000A006300640073005F00500072006F0070007300530061006C0065007300
      50006500720073006F006E004E006F000100530061006C006500730050006500
      720073006F006E004E006F0001000100010001000D000A006300640073005F00
      500072006F00700073005600650072006B0053007500700070006C0069006500
      72004E006F0001005600650072006B0053007500700070006C00690065007200
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73005600650072006B004B0075006E0064004E006F0001005600650072006B00
      4B0075006E0064004E006F0001000100010001000D000A006300640073005F00
      500072006F00700073004C004F004F0062006A00650063007400540079007000
      650001004C004F004F0062006A00650063007400540079007000650001000100
      010001000D000A006300640073005F00500072006F0070007300420061007200
      43006F00640065004E006F00010042006100720043006F00640065004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004700
      72006100640065005300740061006D0070004E006F0001004700720061006400
      65005300740061006D0070004E006F0001000100010001000D000A0063006400
      73005F00500072006F007000730056006F006C0075006D00650055006E006900
      74004E006F00010056006F006C0075006D00650055006E00690074004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004C00
      65006E0067007400680046006F0072006D00610074004E006F0001004C006500
      6E0067007400680046006F0072006D00610074004E006F000100010001000100
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      680056006F006C0055006E00690074004E006F0001004C0065006E0067007400
      680056006F006C0055006E00690074004E006F0001000100010001000D000A00
      6300640073005F00500072006F0070007300470072006F007500700042007900
      42006F0078000100470072006F00750070004200790042006F00780001000100
      010001000D000A006300640073005F00500072006F0070007300470072006F00
      75007000530075006D006D006100720079000100470072006F00750070005300
      75006D006D0061007200790001000100010001000D000A006300640073005F00
      500072006F00700073004100670065006E0074004E006F000100410067006500
      6E0074004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004C006F006100640069006E0067004C006F006300610074006900
      6F006E004E006F0001004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F0001000100010001000D000A006300640073005F00
      500072006F007000730053006800690070007000650072004E006F0001005300
      6800690070007000650072004E006F0001000100010001000D000A0063006400
      73005F00500072006F007000730042006F006F006B0069006E00670054007900
      700065004E006F00010042006F006F006B0069006E0067005400790070006500
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      730043007500730074006F006D00650072004E006F0001004300750073007400
      6F006D00650072004E006F0001000100010001000D000A006300640073005F00
      500072006F0070007300530068006F007700500072006F006400750063007400
      0100530068006F007700500072006F0064007500630074000100010001000100
      0D000A006300640073005F00500072006F00700073004D00610072006B006E00
      6100640001004D00610072006B006E0061006400010001004D00610072006B00
      65007400010001000D000A006300640073005F00500072006F00700073004B00
      75006E00640001004B0075006E0064000100010043007500730074006F006D00
      65007200010001000D000A006300640073005F00500072006F00700073005300
      520001005300520001000100010001000D000A006300640073005F0050007200
      6F0070007300530061006C006A00670072007500700070000100530061006C00
      6A006700720075007000700001005300E4006C006A0067007200750070007000
      0100530061006C00650073002000670072006F007500700001005300E4006C00
      6A006700720075007000700001000D000A006300640073005F00500072006F00
      700073005600650072006B0001005600650072006B00010001004D0069006C00
      6C00010001000D000A006300640073005F00500072006F00700073004E006100
      6D00650001004E0061006D00650001004E0061006D006E00010001004E006100
      6D006E0001000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660042006100730065004C00690073007400
      46006F0072006D0001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005300650067006F00650020005500490001000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      3100420061007200310001005300650067006F00650020005500490001000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      3100420061007200320001005300650067006F00650020005500490001000100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      5400660042006100730065004C0069007300740046006F0072006D0001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00640078004200610072004D0061006E006100670065007200
      31000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00}
  end
end
