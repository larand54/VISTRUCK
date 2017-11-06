object fPackageSize: TfPackageSize
  Left = 0
  Top = 0
  Caption = 'Paketstorlek'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 240
    Width = 635
    Height = 60
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 224
      Top = 6
      Width = 89
      Height = 41
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 319
      Top = 6
      Width = 89
      Height = 41
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 199
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
    Left = 312
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005000610063006B00610067006500530069007A00
      65000100500061006B0065007400730074006F0072006C0065006B0001005000
      61006B0065007400730074006F0072006C0065006B00010050006B0067002000
      730069007A0065000100500061006C006C00730074006F0072006C0065006B00
      01000D000A006300780042007500740074006F006E00310001004F004B000100
      01004F004B00010001000D000A006300780042007500740074006F006E003200
      0100C5006E006700720061000100010055006E0064006F00010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      6500770031005000610063006B00610067006500530069007A0065004E006F00
      01004900440001000100010001000D000A006300780047007200690064003100
      440042005400610062006C006500560069006500770031005000610063006B00
      610067006500530069007A0065004E0061006D0065000100500061006B006500
      7400730074006F0072006C0065006B000100500061006B006500740073007400
      6F0072006C0065006B00010050006B0067002000730069007A00650001005000
      61006C006C00730074006F0072006C0065006B0001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      4C0061006E006700750061006700650043006F006400650001004C0061006E00
      6700750061006700650043006F006400650001000100010001000D000A006300
      780047007200690064003100440042005400610062006C006500560069006500
      7700310044006100740065004300720065006100740065006400010044006100
      74006500430072006500610074006500640001000100010001000D000A006300
      780047007200690064003100440042005400610062006C006500560069006500
      7700310043007200650061007400650064005500730065007200010043007200
      650061007400650064005500730065007200010053006B006100700061006400
      2000610076000100010053006B00610070006100640020006100760001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      6900650077003100410063007400010041006300740001000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660050006100
      63006B00610067006500530069007A00650001005400610068006F006D006100
      01000100010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540066005000610063006B00610067006500530069007A0065000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00}
  end
end
