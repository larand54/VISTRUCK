object fEntryField: TfEntryField
  Left = 303
  Top = 226
  ActiveControl = eNoofpkgs
  Caption = 'Enter no of pkgs'
  ClientHeight = 169
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 64
    Width = 78
    Height = 13
    Caption = 'Enter no of pkgs'
  end
  object bbok: TBitBtn
    Left = 96
    Top = 128
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object eNoofpkgs: TcxMaskEdit
    Left = 152
    Top = 56
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d{1,7}('#39','#39'\d\d?)?'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 153
  end
  object siLangLinked_fEntryField: TsiLangLinked
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
    Left = 184
    Top = 88
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      010045006E0074006500720020006E006F0020006F006600200070006B006700
      730001004C00E40067006700200069006E00200061006E00740061006C002000
      700061006B0065007400010001004C00E40067006700200069006E0020006100
      6E00740061006C002000700061006C006C006100720001000D000A004C006100
      620065006C003100010045006E0074006500720020006E006F0020006F006600
      200070006B006700730001004C00E40067006700200069006E00200061006E00
      740061006C002000700061006B0065007400010001004C00E400670067002000
      69006E00200061006E00740061006C002000700061006C006C00610072000100
      0D000A00620062006F006B0001004F004B00010001004F004B00010001000D00
      0A0062006200630061006E00630065006C000100430061006E00630065006C00
      0100410076006200720079007400010001004100760062007200790074000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004500
      6E007400720079004600690065006C00640001004D0053002000530061006E00
      730020005300650072006900660001000100010001000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A005400660045006E00740072007900
      4600690065006C0064000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00}
  end
end
