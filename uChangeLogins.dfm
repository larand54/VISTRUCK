object OKHelpBottomDlg: TOKHelpBottomDlg
  Left = 335
  Top = 193
  ActiveControl = EFD_Name
  Caption = 'Byt anv'#228'ndare'
  ClientHeight = 321
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 72
    Height = 20
    Caption = 'FD Namn:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 65
    Height = 20
    Caption = 'Databas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EFD_Name: TEdit
    Left = 88
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 216
    Top = 29
    Width = 153
    Height = 25
    Caption = 'H'#228'mta standard FD namn'
    TabOrder = 2
    OnClick = Button1Click
  end
  object eDatabas: TEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 216
    Top = 69
    Width = 153
    Height = 25
    Caption = 'H'#228'mta standard databas'
    TabOrder = 3
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 222
    Width = 97
    Height = 59
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 294
    Top = 222
    Width = 91
    Height = 59
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object cxLabel1: TcxLabel
    Left = 7
    Top = 218
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Vida\alvetruck'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnDblClick = cxLabel1DblClick
  end
  object cxLabel2: TcxLabel
    Left = 7
    Top = 246
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'vida\hesttruck01'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnDblClick = cxLabel2DblClick
  end
  object cxLabel3: TcxLabel
    Left = 7
    Top = 164
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Vida\thelin'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnDblClick = cxLabel3DblClick
  end
  object cxlblTestDB: TcxLabel
    Left = 7
    Top = 133
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'vistestsql.vida.se:vis_vida'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnClick = cxlblTestDBClick
    OnDblClick = cxlblTestDBDblClick
  end
  object cxLabel4: TcxLabel
    Left = 7
    Top = 192
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'vida\shathi2'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnClick = cxLabel4Click
  end
  object cxLabel5: TcxLabel
    Left = 7
    Top = 105
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'visdevsql.vida.se:vis_vida'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnClick = cxLabel5Click
  end
  object cxLabel6: TcxLabel
    Left = 7
    Top = 274
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'vida\mattho'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
    OnClick = cxLabel6Click
  end
  object siLangLinked_OKHelpBottomDlg: TsiLangLinked
    Version = '7.9.0.1'
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
    Left = 328
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054004F004B00480065006C00700042006F00740074006F00
      6D0044006C0067000100420079007400200061006E007600E4006E0064006100
      72006500010001004300680061006E0067006500200075007300650072000100
      01000D000A004C006100620065006C00310001004600440020004E0061006D00
      6E003A0001004100440020004E0061006D006E0001004600440020004E006100
      6D00650001004100440020004E0061006D006E0001000D000A004C0061006200
      65006C003200010044006100740061006200610073003A000100440061007400
      6100620061007300010044006100740061006200610073006500010044006100
      7400610062006100730001000D000A0042007500740074006F006E0031000100
      4800E4006D007400610020007300740061006E00640061007200640020004600
      440020006E0061006D006E0001004800E4006D00740061002000730074006100
      6E00640061007200640020004100440020004E0061006D006E00010047006500
      74002000640065006600610075006C00740020004600440020004E0061006D00
      650001004800E4006D007400610020007300740061006E006400610072006400
      20004100440020004E0061006D006E0001000D000A0042007500740074006F00
      6E00320001004800E4006D007400610020007300740061006E00640061007200
      6400200064006100740061006200610073000100010047006500740020006400
      65006600610075006C0074002000640061007400610062006100730065000100
      01000D000A00420069007400420074006E00310001004F004B00010001004F00
      4B00010001000D000A00420069007400420074006E0032000100430061006E00
      630065006C000100410076006200720079007400010001004100760062007200
      7900740001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      54004F004B00480065006C00700042006F00740074006F006D0044006C006700
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      54004F004B00480065006C00700042006F00740074006F006D0044006C006700
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00}
  end
end
