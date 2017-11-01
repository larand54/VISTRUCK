object fAddSpecialLengths: TfAddSpecialLengths
  Left = 224
  Top = 107
  ActiveControl = eLength
  Caption = 'Speciall'#228'ngder'
  ClientHeight = 204
  ClientWidth = 298
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
  object lbSpecialLengths: TListBox
    Left = 152
    Top = 8
    Width = 137
    Height = 145
    ItemHeight = 13
    MultiSelect = True
    Sorted = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 40
    Width = 97
    Height = 25
    Action = acAddLength
    Caption = 'L'#228'gg till l'#228'ngd'
    Default = True
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 72
    Width = 97
    Height = 25
    Action = acRemoveLength
    Caption = 'Ta bort markerade'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 298
    Height = 41
    Align = alBottom
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 64
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 152
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object eLength: TcxMaskEdit
    Left = 16
    Top = 16
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '\d{1,7}('#39','#39'\d\d?)?'
    Properties.MaxLength = 0
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 4
    Width = 97
  end
  object ActionList1: TActionList
    Left = 40
    Top = 104
    object acAddLength: TAction
      Caption = 'L'#228'gg till l'#228'ngd'
      OnExecute = acAddLengthExecute
    end
    object acRemoveLength: TAction
      Caption = 'Ta bort l'#228'ngd'
      OnExecute = acRemoveLengthExecute
    end
  end
  object siLangLinked_fAddSpecialLengths: TsiLangLinked
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
    Left = 144
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004100640064005300700065006300690061006C00
      4C0065006E00670074006800730001005300700065006300690061006C006C00
      E4006E006700640065007200010001005300700065006300690061006C002000
      6C0065006E006700740068007300010001000D000A0042006900740042007400
      6E003200010054006100200062006F007200740020006D00610072006B006500
      720061006400650001000100440065006C006500740065002000730065006C00
      65006300740065006400010001000D000A00420069007400420074006E003300
      01004F004B00010001004F004B00010001000D000A0042006900740042007400
      6E0034000100430061006E00630065006C000100410076006200720079007400
      0100010041007600620072007900740001000D000A0061006300410064006400
      4C0065006E0067007400680001004C00E400670067002000740069006C006C00
      20006C00E4006E00670064000100010041006400640020006C0065006E006700
      74006800010001000D000A0061006300520065006D006F00760065004C006500
      6E00670074006800010054006100200062006F007200740020006C00E4006E00
      6700640001000100440065006C0065007400650020006C0065006E0067007400
      6800010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      540066004100640064005300700065006300690061006C004C0065006E006700
      74006800730001004D0053002000530061006E00730020005300650072006900
      660001000100010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00540066004100640064005300700065006300690061006C004C00
      65006E0067007400680073000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00}
  end
end
