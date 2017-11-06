object frmChangeLanguage: TfrmChangeLanguage
  Left = 0
  Top = 0
  Caption = 'V'#228'lj spr'#229'k'
  ClientHeight = 151
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblcboLang: TLabel
    Left = 24
    Top = 21
    Width = 47
    Height = 13
    Caption = 'V'#228'lj Spr'#229'k'
  end
  object Label1: TLabel
    Left = 24
    Top = 68
    Width = 85
    Height = 13
    Caption = 'V'#228'lj spr'#229'kbibliotek'
  end
  object cboSelectLanguage: TComboBox
    Left = 24
    Top = 40
    Width = 203
    Height = 21
    TabOrder = 0
    Text = 'V'#228'lj spr'#229'k'
  end
  object bbtnOk: TBitBtn
    Left = 24
    Top = 110
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = bbtnOkClick
  end
  object bbtnCancel: TBitBtn
    Left = 152
    Top = 110
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bbtnCancelClick
  end
  object cboLanguageLibrary: TComboBox
    Left = 24
    Top = 83
    Width = 203
    Height = 21
    TabOrder = 1
    Text = 'V'#228'lj spr'#229'kbibliotek'
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
      'PropertiesClassName')
    Left = 116
    Top = 7
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004300680061006E00670065004C006100
      6E006700750061006700650001005600E4006C006A002000730070007200E500
      6B0001005600E4006C006A002000730070007200E5006B000100530065006C00
      65006300740020006C0061006E006700750061006700650001005600E4006C00
      6A002000730070007200E5006B0001000D000A006C0062006C00630062006F00
      4C0061006E00670001005600E4006C006A002000530070007200E5006B000100
      5600E4006C006A002000730070007200E5006B000100530065006C0065006300
      740020006C0061006E006700750061006700650001005600E4006C006A002000
      730070007200E5006B0001000D000A006200620074006E004F006B0001004F00
      4B00010001004F004B00010001000D000A006200620074006E00430061006E00
      630065006C000100430061006E00630065006C00010041007600620072007900
      74000100010041007600620072007900740001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400660072006D004300680061006E006700
      65004C0061006E006700750061006700650001005400610068006F006D006100
      01005400610068006F006D00610001005400610068006F006D00610001005400
      610068006F006D00610001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00630062006F00530065006C006500
      630074004C0061006E00670075006100670065002E0054006500780074000100
      5600E4006C006A002000730070007200E5006B0001005600E4006C006A002000
      730070007200E5006B000100530065006C0065006300740020006C0061006E00
      6700750061006700650001005600E4006C006A002000730070007200E5006B00
      01000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      72006D004300680061006E00670065004C0061006E0067007500610067006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100440045004600410055004C0054005F00430048004100520053004500
      540001000D000A00}
  end
end
