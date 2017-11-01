object dm_SendMapiMail: Tdm_SendMapiMail
  OldCreateOrder = False
  Height = 249
  Width = 410
  object MapiSession: TRwMAPISession
    LogonInfo.UseExtendedMAPI = True
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = True
    LogonInfo.NewSession = True
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = True
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    Left = 72
    Top = 40
  end
  object siLangLinked1: TsiLangLinked
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
    Left = 264
    Top = 80
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A004900440053005F00300001004E006F00
      200072006500630069007000690065006E007400730020007300700065006300
      69006600690065006400010049006E00670065006E0020006D006F0074007400
      6100670061007200650020007300700065006300690066006900630065007200
      610064000100010049006E00670065006E0020006D006F007400740061006700
      6100720065002000730070006500630069006600690063006500720061006400
      01000D000A004900440053005F00310001005400680065007200650020006900
      730020006E006F0020007300750062006A006500630074002E00010001000100
      01000D000A004900440053005F003200010054006800650020006D0065007300
      730061006700650020006900730020007300750062006D006900740074006500
      64002E0001004D0065006400640065006C0061006E006400650074002000E400
      720020007300E4006E007400010001004D0065006400640065006C0061006E00
      6400650074002000E400720020007300E4006E00740001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00}
  end
end
