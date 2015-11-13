object fAnkomstRegProgress: TfAnkomstRegProgress
  Left = 276
  Top = 134
  Caption = 'Progress'
  ClientHeight = 246
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object cxDBLabel1: TcxDBLabel
    Left = 226
    Top = 98
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'LOADNO'
    DataBinding.DataSource = dmArrivingLoads.dsrcArrivingLoads
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 35
    Width = 199
    AnchorX = 326
  end
  object cxLabel1: TcxLabel
    Left = 197
    Top = 49
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Ankomstregistrerar lastnr'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object cxLabel2: TcxLabel
    Left = 197
    Top = 158
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    AutoSize = False
    Caption = 'v'#228'nta...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Height = 34
    Width = 257
    AnchorX = 326
  end
  object siLangLinked_fAnkomstRegProgress: TsiLangLinked
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
    Left = 248
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041006E006B006F006D0073007400520065006700
      500072006F00670072006500730073000100500072006F006700720065007300
      73000100010001000D000A00630078004C006100620065006C00310001004100
      6E006B006F006D00730074007200650067006900730074007200650072006100
      720020006C006100730074006E0072000100010001000D000A00630078004C00
      6100620065006C00320001007600E4006E00740061002E002E002E0001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      41006E006B006F006D0073007400520065006700500072006F00670072006500
      7300730001004D0053002000530061006E007300200053006500720069006600
      0100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A005400660041006E006B006F006D0073007400520065006700500072006F00
      670072006500730073000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A00}
  end
end
