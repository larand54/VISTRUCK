object dm_SendMapiMail: Tdm_SendMapiMail
  OldCreateOrder = False
  Height = 300
  Width = 565
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
    Left = 40
    Top = 24
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
      6900660069006500640001000100010001000D000A004900440053005F003100
      01005400680065007200650020006900730020006E006F002000730075006200
      6A006500630074002E0001000100010001000D000A004900440053005F003200
      010054006800650020006D006500730073006100670065002000690073002000
      7300750062006D00690074007400650064002E0001000100010001000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
  object EWSSession: TRwEWSSession
    UserAgent = 'RAPWare EWS Client'
    AccessType = atDefault
    SecurityFlags = []
    ProfileRequired = True
    ServiceUrl = ''
    ConnectingSIDType = csSmtpAddress
    NTService = False
    LogonDialog = True
    PasswordDialog = True
    Left = 130
    Top = 82
  end
  object dlgAttachment: TOpenDialog
    Filter = 'All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Select a file to attach...'
    Left = 226
    Top = 28
  end
  object FormScaler: TRwFormScaler
    Left = 125
    Top = 148
  end
  object RwMAPISession: TRwMAPISession
    LogonInfo.UseExtendedMAPI = False
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = False
    LogonInfo.NewSession = False
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = False
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    Left = 248
    Top = 160
  end
end
