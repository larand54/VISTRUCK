object fEntryFieldNoOfPkgs: TfEntryFieldNoOfPkgs
  Left = 303
  Top = 226
  ActiveControl = seAntalPaket
  Caption = 'Ange antal paket'
  ClientHeight = 218
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LTitle: TLabel
    Left = 48
    Top = 56
    Width = 85
    Height = 20
    Caption = 'Antal paket:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object bbok: TBitBtn
    Left = 112
    Top = 168
    Width = 75
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 232
    Top = 169
    Width = 75
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object seAntalPaket: TcxSpinEdit
    Left = 144
    Top = 48
    ParentFont = False
    Properties.LargeIncrement = 5.000000000000000000
    Properties.MaxValue = 100.000000000000000000
    Properties.SpinButtons.ShowFastButtons = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 129
  end
  object LExtraInfo: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Extra info to display - Use label: LExtraInfo'
    Properties.Alignment.Horz = taCenter
    Properties.WordWrap = True
    Width = 432
    AnchorX = 216
  end
  object siLangLinked_fEntryFieldNoOfPkgs: TsiLangLinked
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
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
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
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 176
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      4E006F004F00660050006B0067007300010041006E0067006500200061006E00
      740061006C002000700061006B00650074000100010001000D000A004C005400
      690074006C006500010041006E00740061006C002000700061006B0065007400
      3A000100010001000D000A00620062006F006B0001004F004B00010001000100
      0D000A0062006200630061006E00630065006C000100430061006E0063006500
      6C000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660045006E007400720079004600690065006C0064004E006F004F00
      660050006B006700730001004D0053002000530061006E007300200053006500
      72006900660001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D0061000D000A004C005400690074006C006500
      01004D0053002000530061006E00730020005300650072006900660001000100
      5400610068006F006D0061000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      4E006F004F00660050006B00670073000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A004C005400690074006C006500
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00}
  end
end
