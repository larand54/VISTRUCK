object dmLanguage: TdmLanguage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object siLang1: TsiLang
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 4
    LangDispatcher = siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
    Language = 'Origin'
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
    Left = 16
    Top = 8
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740044006C006700730043006100700074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00570061007200
      6E0069006E00670001005700610072006E0069006E0067000100010001000100
      0D000A004500720072006F00720001004500720072006F007200010001000100
      01000D000A0049006E0066006F0072006D006100740069006F006E0001004900
      6E0066006F0072006D006100740069006F006E0001000100010001000D000A00
      43006F006E006600690072006D00010043006F006E006600690072006D000100
      0100010001000D000A0059006500730001002600590065007300010001000100
      01000D000A004E006F00010026004E006F0001000100010001000D000A004F00
      4B0001004F004B0001000100010001000D000A00430061006E00630065006C00
      0100430061006E00630065006C0001000100010001000D000A00410062006F00
      7200740001002600410062006F007200740001000100010001000D000A005200
      6500740072007900010026005200650074007200790001000100010001000D00
      0A00490067006E006F007200650001002600490067006E006F00720065000100
      0100010001000D000A0041006C006C000100260041006C006C00010001000100
      01000D000A004E006F00200054006F00200041006C006C0001004E0026006F00
      200074006F00200041006C006C0001000100010001000D000A00590065007300
      200054006F00200041006C006C000100590065007300200074006F0020002600
      41006C006C0001000100010001000D000A00480065006C007000010026004800
      65006C00700001000100010001000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004C006F00630061006C00650073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00}
  end
  object siLangDispatcher1: TsiLangDispatcher
    ActiveLanguage = 1
    NumOfLanguages = 4
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English'
      'VE_Svenska')
    Language = 'Origin'
    UseDefaultLanguage = True
    OnLanguageChanged = siLangDispatcher1LanguageChanged
    Left = 120
    Top = 40
  end
end
