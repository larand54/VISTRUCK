object fConfirm: TfConfirm
  Left = 383
  Top = 191
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Bekr'#228'fta'
  ClientHeight = 255
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 255
    Align = alClient
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 16
      Top = 136
      Width = 145
      Height = 105
      Caption = 'Ja'
      Colors.Default = clGreen
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 6
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 168
      Top = 136
      Width = 137
      Height = 105
      Cancel = True
      Caption = 'Nej'
      Colors.Default = clRed
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 7
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = 'cxLabel1'
      Constraints.MaxWidth = 366
      Constraints.MinWidth = 297
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 297
    end
  end
  object siLangLinked_fConfirm: TsiLangLinked
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
    Left = 152
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660043006F006E006600690072006D00010042006500
      6B007200E4006600740061000100010043006F006E006600690072006D000100
      01000D000A006300780042007500740074006F006E00310001004A0061000100
      0100590065007300010001000D000A006300780042007500740074006F006E00
      320001004E0065006A00010001004E006F00010001000D000A00630078004C00
      6100620065006C0031000100630078004C006100620065006C00310001000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660043006F006E006600690072006D0001004D0053002000530061006E007300
      20005300650072006900660001000100010001000D000A006300780042007500
      740074006F006E0031000100560065007200640061006E006100010001000100
      01000D000A006300780042007500740074006F006E0032000100560065007200
      640061006E00610001000100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660043006F006E006600690072006D000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A006300780042007500740074006F006E00310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A006300780042007500740074006F006E003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00}
  end
end
