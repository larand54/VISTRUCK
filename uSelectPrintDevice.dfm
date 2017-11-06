object fSelectPrintDevice: TfSelectPrintDevice
  Left = 602
  Top = 276
  BorderStyle = bsDialog
  Caption = 'V'#228'lj enhet'
  ClientHeight = 347
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object bSkrivare: TcxButton
    Left = 24
    Top = 48
    Width = 200
    Height = 81
    Caption = 'Skrivare'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bSkrivareClick
  end
  object bBildskarm: TcxButton
    Left = 24
    Top = 144
    Width = 200
    Height = 81
    Caption = 'Bildsk'#228'rm'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bBildskarmClick
  end
  object bAngra: TcxButton
    Left = 24
    Top = 240
    Width = 200
    Height = 81
    Caption = #197'ngra'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = bAngraClick
  end
  object seNoOfCopies: TcxDBSpinEdit
    Left = 104
    Top = 8
    DataBinding.DataField = 'CopyPcs'
    DataBinding.DataSource = dmcOrder.ds_Props
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 16
    Caption = 'Kopior:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object siLangLinked_fSelectPrintDevice: TsiLangLinked
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
    Left = 112
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074005000720069006E00
      740044006500760069006300650001005600E4006C006A00200065006E006800
      6500740001000100530065006C00650063007400200075006E00690074000100
      01000D000A00620053006B00720069007600610072006500010053006B007200
      69007600610072006500010001005000720069006E0074006500720001000100
      0D000A006200420069006C00640073006B00610072006D000100420069006C00
      640073006B00E40072006D0001000100530063007200650065006E0001000100
      0D000A00620041006E006700720061000100C5006E0067007200610001000100
      55006E0064006F00010001000D000A00630078004C006100620065006C003100
      01004B006F00700069006F0072003A0001004B006F00700069006F0072000100
      43006F00700069006500730001004B006F00700069006F00720001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074005000720069006E00740044006500760069006300650001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A00620053006B0072006900760061007200650001005600650072006400
      61006E00610001000100010001000D000A006200420069006C00640073006B00
      610072006D000100560065007200640061006E00610001000100010001000D00
      0A00620041006E006700720061000100560065007200640061006E0061000100
      0100010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C006500630074005000720069006E00740044006500
      76006900630065000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00620053006B00720069007600
      6100720065000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A006200420069006C00640073006B00
      610072006D000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00620041006E006700720061000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00}
  end
end
