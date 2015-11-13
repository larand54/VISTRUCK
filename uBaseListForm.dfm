object fBaseListForm: TfBaseListForm
  Left = 197
  Top = 107
  Caption = 'fBaseListForm'
  ClientHeight = 761
  ClientWidth = 1152
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1152
    Height = 73
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 681
      Height = 73
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 679
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel3: TPanel
      Left = 1066
      Top = 0
      Width = 86
      Height = 73
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      Constraints.MaxWidth = 106
      Constraints.MinWidth = 86
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 84
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 681
      Top = 0
      Width = 385
      Height = 73
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 73
    Width = 1152
    Height = 688
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 5
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
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
    UseSystemFont = True
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
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
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
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001004D00610069006E000100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      3200010045007800690074000100010001000D000A0061006300520065006600
      7200650073006800010055007000700064006100740065007200610020004600
      36000100010001000D000A006100630043006C006F0073006500010053007400
      E4006E00670020004600310032000100010001000D000A00610063004E006500
      770001004C00E400670067002000740069006C006C000100010001000D000A00
      610063005000720069006E007400010053006B00720069007600200075007400
      2000460038000100010001000D000A0061006300530061007600650001005300
      70006100720061000100010001000D000A00610063004500780070006F007200
      740058004C00530001004500780070006F007200740065007200610020005800
      4C00530020004600310031000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A006300640073005F00500072006F007000730055007300
      650072004900440001005500730065007200490044000100010001000D000A00
      6300640073005F00500072006F007000730046006F0072006D00010046006F00
      72006D000100010001000D000A006300640073005F00500072006F0070007300
      4E0061006D00650001004E0061006D0065000100010001000D000A0063006400
      73005F00500072006F00700073005600650072006B004E006F00010056006500
      72006B004E006F000100010001000D000A006300640073005F00500072006F00
      700073004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F000100010001000D000A006300640073005F00500072006F00700073005000
      490050004E006F0001005000490050004E006F000100010001000D000A006300
      640073005F00500072006F00700073004C00490050004E006F0001004C004900
      50004E006F000100010001000D000A006300640073005F00500072006F007000
      730049006E007000750074004F007000740069006F006E00010049006E007000
      750074004F007000740069006F006E000100010001000D000A00630064007300
      5F00500072006F007000730052006500670050006F0069006E0074004E006F00
      010052006500670050006F0069006E0074004E006F000100010001000D000A00
      6300640073005F00500072006F00700073005200650067004400610074006500
      010052006500670044006100740065000100010001000D000A00630064007300
      5F00500072006F007000730043006F0070007900500063007300010043006F00
      700079005000630073000100010001000D000A006300640073005F0050007200
      6F0070007300520075006E004E006F000100520075006E004E006F0001000100
      01000D000A006300640073005F00500072006F0070007300500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F000100010001000D000A006300640073005F00500072006F00700073004100
      750074006F0043006F006C005700690064007400680001004100750074006F00
      43006F006C00570069006400740068000100010001000D000A00630064007300
      5F00500072006F007000730053007500700070006C0069006500720043006F00
      64006500010053007500700070006C0069006500720043006F00640065000100
      010001000D000A006300640073005F00500072006F00700073004C0065006E00
      6700740068004F007000740069006F006E0001004C0065006E00670074006800
      4F007000740069006F006E000100010001000D000A006300640073005F005000
      72006F00700073004C0065006E00670074006800470072006F00750070004E00
      6F0001004C0065006E00670074006800470072006F00750070004E006F000100
      010001000D000A006300640073005F00500072006F00700073004E0065007700
      4900740065006D0052006F00770001004E00650077004900740065006D005200
      6F0077000100010001000D000A006300640073005F00500072006F0070007300
      530061006C006500730052006500670069006F006E004E006F00010053006100
      6C006500730052006500670069006F006E004E006F000100010001000D000A00
      6300640073005F00500072006F00700073004D00610072006B00650074005200
      6500670069006F006E004E006F0001004D00610072006B006500740052006500
      670069006F006E004E006F000100010001000D000A006300640073005F005000
      72006F00700073004F00720064006500720054007900700065004E006F000100
      4F00720064006500720054007900700065004E006F000100010001000D000A00
      6300640073005F00500072006F00700073005300740061007400750073000100
      5300740061007400750073000100010001000D000A006300640073005F005000
      72006F0070007300460069006C007400650072004F0072006400650072004400
      6100740065000100460069006C007400650072004F0072006400650072004400
      6100740065000100010001000D000A006300640073005F00500072006F007000
      73005300740061007200740050006500720069006F0064000100530074006100
      7200740050006500720069006F0064000100010001000D000A00630064007300
      5F00500072006F007000730045006E00640050006500720069006F0064000100
      45006E00640050006500720069006F0064000100010001000D000A0063006400
      73005F00500072006F007000730043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F000100010001000D000A00630064007300
      5F00500072006F0070007300530061006C006500730050006500720073006F00
      6E004E006F000100530061006C006500730050006500720073006F006E004E00
      6F000100010001000D000A006300640073005F00500072006F00700073005600
      650072006B0053007500700070006C006900650072004E006F00010056006500
      72006B0053007500700070006C006900650072004E006F000100010001000D00
      0A006300640073005F00500072006F00700073005600650072006B004B007500
      6E0064004E006F0001005600650072006B004B0075006E0064004E006F000100
      010001000D000A006300640073005F00500072006F00700073004C004F004F00
      62006A00650063007400540079007000650001004C004F004F0062006A006500
      6300740054007900700065000100010001000D000A006300640073005F005000
      72006F007000730042006100720043006F00640065004E006F00010042006100
      720043006F00640065004E006F000100010001000D000A006300640073005F00
      500072006F0070007300470072006100640065005300740061006D0070004E00
      6F000100470072006100640065005300740061006D0070004E006F0001000100
      01000D000A006300640073005F00500072006F007000730056006F006C007500
      6D00650055006E00690074004E006F00010056006F006C0075006D0065005500
      6E00690074004E006F000100010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680046006F0072006D00610074004E00
      6F0001004C0065006E0067007400680046006F0072006D00610074004E006F00
      0100010001000D000A006300640073005F00500072006F00700073004C006500
      6E0067007400680056006F006C0055006E00690074004E006F0001004C006500
      6E0067007400680056006F006C0055006E00690074004E006F00010001000100
      0D000A006300640073005F00500072006F0070007300470072006F0075007000
      4200790042006F0078000100470072006F00750070004200790042006F007800
      0100010001000D000A006300640073005F00500072006F007000730047007200
      6F0075007000530075006D006D006100720079000100470072006F0075007000
      530075006D006D006100720079000100010001000D000A006300640073005F00
      500072006F00700073004100670065006E0074004E006F000100410067006500
      6E0074004E006F000100010001000D000A006300640073005F00500072006F00
      700073004C006F006100640069006E0067004C006F0063006100740069006F00
      6E004E006F0001004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F000100010001000D000A006300640073005F0050007200
      6F007000730053006800690070007000650072004E006F000100530068006900
      70007000650072004E006F000100010001000D000A006300640073005F005000
      72006F007000730042006F006F006B0069006E00670054007900700065004E00
      6F00010042006F006F006B0069006E00670054007900700065004E006F000100
      010001000D000A006300640073005F00500072006F0070007300430075007300
      74006F006D00650072004E006F00010043007500730074006F006D0065007200
      4E006F000100010001000D000A006300640073005F00500072006F0070007300
      530068006F007700500072006F0064007500630074000100530068006F007700
      500072006F0064007500630074000100010001000D000A006300640073005F00
      500072006F00700073004D00610072006B006E006100640001004D0061007200
      6B006E00610064000100010001000D000A006300640073005F00500072006F00
      700073004B0075006E00640001004B0075006E0064000100010001000D000A00
      6300640073005F00500072006F00700073005300520001005300520001000100
      01000D000A006300640073005F00500072006F0070007300530061006C006A00
      670072007500700070000100530061006C006A00670072007500700070000100
      010001000D000A006300640073005F00500072006F0070007300560065007200
      6B0001005600650072006B000100010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660042006100
      730065004C0069007300740046006F0072006D0001004D005300200053006100
      6E0073002000530065007200690066000100010001000D000A00640078004200
      610072004D0061006E006100670065007200310001005400610068006F006D00
      61000100010001000D000A00640078004200610072004D0061006E0061006700
      650072003100420061007200310001005400610068006F006D00610001000100
      01000D000A00640078004200610072004D0061006E0061006700650072003100
      420061007200320001005400610068006F006D0061000100010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660042006100
      730065004C0069007300740046006F0072006D00010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720031000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720032000100440045004600410055004C005400
      5F0043004800410052005300450054000100010001000D000A00}
  end
end
