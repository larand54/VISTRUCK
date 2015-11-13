object fAddSpecialLengths: TfAddSpecialLengths
  Left = 224
  Top = 107
  ActiveControl = eLength
  Caption = 'Speciall'#228'ngder'
  ClientHeight = 251
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object lbSpecialLengths: TListBox
    Left = 187
    Top = 10
    Width = 169
    Height = 178
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    MultiSelect = True
    Sorted = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 20
    Top = 49
    Width = 119
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Action = acAddLength
    Caption = 'L'#228'gg till l'#228'ngd'
    Default = True
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 20
    Top = 89
    Width = 119
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Action = acRemoveLength
    Caption = 'Ta bort markerade'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 201
    Width = 367
    Height = 50
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 79
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Left = 187
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object eLength: TcxMaskEdit
    Left = 20
    Top = 20
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
    TabOrder = 4
    Width = 119
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
    Left = 144
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004100640064005300700065006300690061006C00
      4C0065006E00670074006800730001005300700065006300690061006C006C00
      E4006E0067006400650072000100010001000D000A0042006900740042007400
      6E003200010054006100200062006F007200740020006D00610072006B006500
      72006100640065000100010001000D000A00420069007400420074006E003300
      01004F004B000100010001000D000A00420069007400420074006E0034000100
      430061006E00630065006C000100010001000D000A0061006300410064006400
      4C0065006E0067007400680001004C00E400670067002000740069006C006C00
      20006C00E4006E00670064000100010001000D000A0061006300520065006D00
      6F00760065004C0065006E00670074006800010054006100200062006F007200
      740020006C00E4006E00670064000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066004100640064005300700065006300
      690061006C004C0065006E00670074006800730001004D005300200053006100
      6E0073002000530065007200690066000100010001000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A005400660041006400640053007000
      65006300690061006C004C0065006E0067007400680073000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00}
  end
end
