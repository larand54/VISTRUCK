object fAnkomstRegProgress: TfAnkomstRegProgress
  Left = 276
  Top = 134
  Caption = 'Progress'
  ClientHeight = 200
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBLabel1: TcxDBLabel
    Left = 184
    Top = 80
    DataBinding.DataField = 'LOADNO'
    DataBinding.DataSource = dmArrivingLoads.dsrcArrivingLoads
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 28
    Width = 161
    AnchorX = 265
  end
  object cxLabel1: TcxLabel
    Left = 160
    Top = 40
    Caption = 'Ankomstregistrerar lastnr'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 160
    Top = 128
    AutoSize = False
    Caption = 'v'#228'nta...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Height = 28
    Width = 209
    AnchorX = 265
  end
  object siLangLinked_fAnkomstRegProgress: TsiLangLinked
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
    Left = 248
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006E006B006F006D0073007400520065006700
      500072006F00670072006500730073000100500072006F006700720065007300
      730001005000E5006700E50065006E0064006500010001005000E5006700E500
      65006E006400650001000D000A00630078004C006100620065006C0031000100
      41006E006B006F006D0073007400720065006700690073007400720065007200
      6100720020006C006100730074006E0072000100010041007200720069007600
      61006C0020007200650063006F00720064007300200074006800650020006C00
      6F0061006400010001000D000A00630078004C006100620065006C0032000100
      7600E4006E00740061002E002E002E000100010057006100690074002E002E00
      2E00010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660041006E006B006F006D0073007400520065006700500072006F006700
      720065007300730001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A005400660041006E006B006F006D0073007400520065006700
      500072006F00670072006500730073000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
  end
end
