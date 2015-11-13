object fUserPreference: TfUserPreference
  Left = 270
  Top = 169
  BorderStyle = bsDialog
  Caption = 'User preference'
  ClientHeight = 423
  ClientWidth = 847
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
  object Label6: TLabel
    Left = 30
    Top = 89
    Width = 114
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Fr'#229'ga avrop mallar'
  end
  object Label7: TLabel
    Left = 30
    Top = 128
    Width = 57
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Excel filer'
  end
  object Label1: TLabel
    Left = 30
    Top = 167
    Width = 57
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'LO mallar'
  end
  object Label2: TLabel
    Left = 167
    Top = 49
    Width = 54
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Mappar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 217
    Width = 72
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'WoodX filer:'
  end
  object Label4: TLabel
    Left = 30
    Top = 276
    Width = 99
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Min emailadress'
  end
  object bbOK: TBitBtn
    Left = 295
    Top = 354
    Width = 100
    Height = 41
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
  end
  object bbCancel: TBitBtn
    Left = 423
    Top = 354
    Width = 93
    Height = 41
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object beFragaAvropDir: TcxDBButtonEdit
    Left = 167
    Top = 79
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'UserDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beFragaAvropDirPropertiesButtonClick
    TabOrder = 0
    Width = 563
  end
  object beExcelDir: TcxDBButtonEdit
    Left = 167
    Top = 118
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'ExcelDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    TabOrder = 1
    Width = 563
  end
  object beLOMallar: TcxDBButtonEdit
    Left = 167
    Top = 158
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'LODir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beLOMallarPropertiesButtonClick
    TabOrder = 2
    Width = 563
  end
  object teMyEmailAddress: TcxDBTextEdit
    Left = 167
    Top = 266
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'MyEmailAddress'
    DataBinding.DataSource = dmsSystem.ds_Props
    TabOrder = 4
    Width = 563
  end
  object beWoodXDir: TcxDBButtonEdit
    Left = 167
    Top = 207
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataBinding.DataField = 'WoodXDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beWoodXDirPropertiesButtonClick
    TabOrder = 3
    Width = 563
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 464
    Top = 24
  end
  object siLangLinked_fUserPreference: TsiLangLinked
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
    Left = 336
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005500730065007200500072006500660065007200
      65006E0063006500010055007300650072002000700072006500660065007200
      65006E00630065000100010001000D000A004C006100620065006C0036000100
      46007200E5006700610020006100760072006F00700020006D0061006C006C00
      610072000100010001000D000A004C006100620065006C003700010045007800
      630065006C002000660069006C00650072000100010001000D000A004C006100
      620065006C00310001004C004F0020006D0061006C006C006100720001000100
      01000D000A004C006100620065006C00320001004D0061007000700061007200
      0100010001000D000A004C006100620065006C003300010057006F006F006400
      58002000660069006C00650072003A000100010001000D000A004C0061006200
      65006C00340001004D0069006E00200065006D00610069006C00610064007200
      6500730073000100010001000D000A00620062004F004B0001004F004B000100
      010001000D000A0062006200430061006E00630065006C000100430061006E00
      630065006C000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400660055007300650072005000720065006600650072006500
      6E006300650001004D0053002000530061006E00730020005300650072006900
      66000100010001000D000A004C006100620065006C00320001004D0053002000
      530061006E0073002000530065007200690066000100010001000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600550073006500
      720050007200650066006500720065006E006300650001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00
      4C006100620065006C0032000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A00}
  end
end
