object fConfirm: TfConfirm
  Left = 383
  Top = 191
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Bekr'#228'fta'
  ClientHeight = 314
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 314
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 20
      Top = 167
      Width = 178
      Height = 130
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ja'
      Colors.Default = clGreen
      Colors.DefaultText = clWhite
      Colors.Pressed = clBlue
      Colors.PressedText = clWhite
      ModalResult = 6
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -43
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 207
      Top = 167
      Width = 168
      Height = 130
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Font.Height = -43
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'cxLabel1'
      Constraints.MaxWidth = 450
      Constraints.MinWidth = 366
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Width = 366
    end
  end
  object siLangLinked_fConfirm: TsiLangLinked
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
    Left = 152
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660043006F006E006600690072006D00010042006500
      6B007200E4006600740061000100010001000D000A0063007800420075007400
      74006F006E00310001004A0061000100010001000D000A006300780042007500
      740074006F006E00320001004E0065006A000100010001000D000A0063007800
      4C006100620065006C0031000100630078004C006100620065006C0031000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660043006F006E006600690072006D0001004D0053002000530061006E007300
      2000530065007200690066000100010001000D000A0063007800420075007400
      74006F006E0031000100560065007200640061006E0061000100010001000D00
      0A006300780042007500740074006F006E003200010056006500720064006100
      6E0061000100010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660043006F006E006600690072006D000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A006300780042007500740074006F006E003100010044004500460041005500
      4C0054005F0043004800410052005300450054000100010001000D000A006300
      780042007500740074006F006E0032000100440045004600410055004C005400
      5F0043004800410052005300450054000100010001000D000A00}
  end
end
