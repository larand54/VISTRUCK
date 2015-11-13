object fPackageSize: TfPackageSize
  Left = 0
  Top = 0
  Caption = 'Paketstorlek'
  ClientHeight = 392
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 54
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 314
    Width = 830
    Height = 78
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 293
      Top = 8
      Width = 116
      Height = 53
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 417
      Top = 8
      Width = 117
      Height = 53
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 54
    Width = 830
    Height = 260
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.ds_PackageSize
      DataController.KeyFieldNames = 'PackageSizeNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1PackageSizeNo: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'PackageSizeNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1PackageSizeName: TcxGridDBColumn
        Caption = 'Paketstorlek'
        DataBinding.FieldName = 'PackageSizeName'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cxGrid1DBTableView1LanguageCode: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageCode'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1Act: TcxGridDBColumn
        DataBinding.FieldName = 'Act'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object siLangLinked_fPackageSize: TsiLangLinked
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
    Left = 312
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000610063006B00610067006500530069007A00
      65000100500061006B0065007400730074006F0072006C0065006B0001000100
      01000D000A006300780042007500740074006F006E00310001004F004B000100
      010001000D000A006300780042007500740074006F006E0032000100C5006E00
      6700720061000100010001000D000A0063007800470072006900640031004400
      42005400610062006C006500560069006500770031005000610063006B006100
      67006500530069007A0065004E006F000100490044000100010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      6500770031005000610063006B00610067006500530069007A0065004E006100
      6D0065000100500061006B0065007400730074006F0072006C0065006B000100
      010001000D000A00630078004700720069006400310044004200540061006200
      6C006500560069006500770031004C0061006E00670075006100670065004300
      6F006400650001004C0061006E006700750061006700650043006F0064006500
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310044006100740065004300720065006100
      7400650064000100440061007400650043007200650061007400650064000100
      010001000D000A00630078004700720069006400310044004200540061006200
      6C00650056006900650077003100430072006500610074006500640055007300
      6500720001004300720065006100740065006400550073006500720001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      6500560069006500770031004100630074000100410063007400010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005000
      610063006B00610067006500530069007A00650001005400610068006F006D00
      61000100010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540066005000610063006B00610067006500530069007A0065000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00}
  end
end
