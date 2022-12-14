object fUserPreference: TfUserPreference
  Left = 270
  Top = 169
  BorderStyle = bsDialog
  Caption = 'User preference'
  ClientHeight = 344
  ClientWidth = 688
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
  object Label6: TLabel
    Left = 24
    Top = 72
    Width = 87
    Height = 13
    Caption = 'Fr'#229'ga avrop mallar'
  end
  object Label7: TLabel
    Left = 24
    Top = 104
    Width = 45
    Height = 13
    Caption = 'Excel filer'
  end
  object Label1: TLabel
    Left = 24
    Top = 136
    Width = 44
    Height = 13
    Caption = 'LO mallar'
  end
  object Label2: TLabel
    Left = 136
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Mappar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 58
    Height = 13
    Caption = 'WoodX filer:'
  end
  object Label4: TLabel
    Left = 24
    Top = 224
    Width = 75
    Height = 13
    Caption = 'Min emailadress'
  end
  object bbOK: TBitBtn
    Left = 240
    Top = 288
    Width = 81
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
  end
  object bbCancel: TBitBtn
    Left = 344
    Top = 288
    Width = 75
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object beFragaAvropDir: TcxDBButtonEdit
    Left = 136
    Top = 64
    DataBinding.DataField = 'UserDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beFragaAvropDirPropertiesButtonClick
    TabOrder = 0
    Width = 457
  end
  object beExcelDir: TcxDBButtonEdit
    Left = 136
    Top = 96
    DataBinding.DataField = 'ExcelDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
    TabOrder = 1
    Width = 457
  end
  object beLOMallar: TcxDBButtonEdit
    Left = 136
    Top = 128
    DataBinding.DataField = 'LODir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beLOMallarPropertiesButtonClick
    TabOrder = 2
    Width = 457
  end
  object teMyEmailAddress: TcxDBTextEdit
    Left = 136
    Top = 216
    DataBinding.DataField = 'MyEmailAddress'
    DataBinding.DataSource = dmsSystem.ds_Props
    TabOrder = 4
    Width = 457
  end
  object beWoodXDir: TcxDBButtonEdit
    Left = 136
    Top = 168
    DataBinding.DataField = 'WoodXDir'
    DataBinding.DataSource = dmsSystem.ds_Props
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = beWoodXDirPropertiesButtonClick
    TabOrder = 3
    Width = 457
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
    Left = 336
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005500730065007200500072006500660065007200
      65006E0063006500010055007300650072002000700072006500660065007200
      65006E0063006500010041006E007600E4006E00640061007200200069006E00
      73007400E4006C006C006E0069006E0067006100720001005500730065007200
      200070007200650066006500720065006E0063006500010041006E007600E400
      6E00640061007200200069006E0073007400E4006C006C006E0069006E006700
      6100720001000D000A004C006100620065006C003600010046007200E5006700
      610020006100760072006F00700020006D0061006C006C006100720001000100
      51007500650072007900200043004F002000740065006D0070006C0061007400
      65007300010001000D000A004C006100620065006C0037000100450078006300
      65006C002000660069006C00650072000100010045007800630065006C002000
      660069006C0065007300010001000D000A004C006100620065006C0031000100
      4C004F0020006D0061006C006C0061007200010001004C004F00200074006500
      6D0070006C006100740065007300010001000D000A004C006100620065006C00
      320001004D00610070007000610072000100010046006F006C00640065007200
      7300010001000D000A004C006100620065006C003300010057006F006F006400
      58002000660069006C00650072003A00010057006F006F006400580020006600
      69006C0065007200010057006F006F00640058002000660069006C0065007300
      010057006F006F00640058002000660069006C006500720001000D000A004C00
      6100620065006C00340001004D0069006E00200065006D00610069006C006100
      64007200650073007300010001004D007900200065006D00610069006C006100
      64007200650073007300010001000D000A00620062004F004B0001004F004B00
      010001004F004B00010001000D000A0062006200430061006E00630065006C00
      0100430061006E00630065006C00010041007600620072007900740001000100
      41007600620072007900740001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00540066005500730065007200500072006500660065007200
      65006E006300650001004D0053002000530061006E0073002000530065007200
      6900660001000100010001000D000A004C006100620065006C00320001004D00
      53002000530061006E0073002000530065007200690066000100010001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      550073006500720050007200650066006500720065006E006300650001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      010001000D000A004C006100620065006C003200010044004500460041005500
      4C0054005F00430048004100520053004500540001000100010001000D000A00}
  end
end
