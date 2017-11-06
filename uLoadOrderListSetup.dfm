object fLoadOrderListSetup: TfLoadOrderListSetup
  Left = 229
  Top = 107
  ActiveControl = lcLengthgrupp
  Caption = 'Lastorder inst'#228'llningar'
  ClientHeight = 252
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 211
    Width = 451
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 176
      Top = 8
      Width = 75
      Height = 25
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object lcLengthgrupp: TcxDBLookupComboBox
    Left = 112
    Top = 48
    DataBinding.DataField = 'Lengthgrupp'
    DataBinding.DataSource = dmcOrder.dsProps
    Properties.ClearKey = 46
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediatePost = True
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 1
    Width = 145
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 52
    Caption = 'L'#228'ngdgrupp:'
  end
  object siLangLinked_fLoadOrderListSetup: TsiLangLinked
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
    Left = 216
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006F00610064004F0072006400650072004C00
      6900730074005300650074007500700001004C006100730074006F0072006400
      65007200200069006E0073007400E4006C006C006E0069006E00670061007200
      010001004C004F002000730065007400740069006E0067007300010001000D00
      0A00420069007400420074006E0031000100260053007400E4006E0067000100
      0100430026006C006F0073006500010001000D000A00630078004C0061006200
      65006C00310001004C00E4006E0067006400670072007500700070003A000100
      4C00E4006E00670064006700720075007000700001004C0065006E0067007400
      68002000670072006F007500700001004C00E4006E0067006400670072007500
      7000700001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      540066004C006F00610064004F0072006400650072004C006900730074005300
      650074007500700001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A00540066004C006F00610064004F0072006400650072004C00
      690073007400530065007400750070000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A00}
  end
end
