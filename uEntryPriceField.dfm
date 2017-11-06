object fEntryPriceField: TfEntryPriceField
  Left = 394
  Top = 226
  ActiveControl = mePriceField
  Caption = 'Ange nytt pris'
  ClientHeight = 160
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mePriceField: TcxMaskEdit
    Left = 184
    Top = 60
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d+'
    Properties.MaxLength = 0
    TabOrder = 0
    Width = 121
  end
  object LabelForField: TcxLabel
    Left = 120
    Top = 64
    Caption = 'Pris/NM3:'
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 128
    Width = 84
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 128
    Width = 84
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object siLangLinked_fEntryPriceField: TsiLangLinked
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
    Top = 88
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E0074007200790050007200690063006500
      4600690065006C006400010041006E006700650020006E007900740074002000
      70007200690073000100010045006E0074006500720020006E00650077002000
      70007200690063006500010001000D000A004C006100620065006C0046006F00
      72004600690065006C006400010050007200690073002F004E004D0033003A00
      010050007200690073002F004E004D0033000100500072006900630065002F00
      4E004D003300010050007200690073002F004E004D00330001000D000A004200
      69007400420074006E00310001004F004B00010001004F004B00010001000D00
      0A00420069007400420074006E0032000100430061006E00630065006C000100
      4100760062007200790074000100010041007600620072007900740001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660045006E00
      740072007900500072006900630065004600690065006C00640001004D005300
      2000530061006E00730020005300650072006900660001000100010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066004500
      6E00740072007900500072006900630065004600690065006C00640001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A00}
  end
end
