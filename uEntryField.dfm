object fEntryField: TfEntryField
  Left = 303
  Top = 226
  ActiveControl = eNoofpkgs
  Caption = 'Enter no of pkgs'
  ClientHeight = 208
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 79
    Top = 79
    Width = 96
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Enter no of pkgs'
  end
  object bbok: TBitBtn
    Left = 118
    Top = 158
    Width = 92
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object bbcancel: TBitBtn
    Left = 236
    Top = 158
    Width = 93
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object eNoofpkgs: TcxMaskEdit
    Left = 187
    Top = 69
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d{1,7}('#39','#39'\d\d?)?'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 188
  end
  object siLangLinked_fEntryField: TsiLangLinked
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
    Left = 184
    Top = 88
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400720079004600690065006C006400
      010045006E0074006500720020006E006F0020006F006600200070006B006700
      73000100010001000D000A004C006100620065006C003100010045006E007400
      6500720020006E006F0020006F006600200070006B0067007300010001000100
      0D000A00620062006F006B0001004F004B000100010001000D000A0062006200
      630061006E00630065006C000100430061006E00630065006C00010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066004500
      6E007400720079004600690065006C00640001004D0053002000530061006E00
      73002000530065007200690066000100010001000D000A00730074004D007500
      6C00740069004C0069006E00650073005F0055006E00690063006F0064006500
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A005400660045006E007400720079004600
      690065006C0064000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A00}
  end
end
