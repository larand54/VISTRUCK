object fCert: TfCert
  Left = 0
  Top = 0
  Caption = 'Certifiering'
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
    Top = 307
    Width = 830
    Height = 85
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 293
      Top = 18
      Width = 116
      Height = 54
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
      Top = 18
      Width = 117
      Height = 54
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 64
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 64
    Width = 830
    Height = 243
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.ds_Cert
      DataController.KeyFieldNames = 'CertNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1CertNo: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'CertNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object cxGrid1DBTableView1CertName: TcxGridDBColumn
        DataBinding.FieldName = 'Certifiering'
        PropertiesClassName = 'TcxTextEditProperties'
      end
      object cxGrid1DBTableView1CertShortName: TcxGridDBColumn
        Caption = 'Kortnamn'
        DataBinding.FieldName = 'CertShortName'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object siLangLinked_fCert: TsiLangLinked
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
      640065000D000A00540066004300650072007400010043006500720074006900
      660069006500720069006E0067000100010001000D000A006300780042007500
      740074006F006E00310001004F004B000100010001000D000A00630078004200
      7500740074006F006E0032000100C5006E006700720061000100010001000D00
      0A006300780047007200690064003100440042005400610062006C0065005600
      690065007700310043006500720074004E006F00010049004400010001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310043006500720074004E0061006D006500010043006500
      720074006900660069006500720069006E0067000100010001000D000A006300
      780047007200690064003100440042005400610062006C006500560069006500
      770031004300650072007400530068006F00720074004E0061006D0065000100
      4B006F00720074006E0061006D006E000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A0054006600430065007200740001005400
      610068006F006D0061000100010001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660043006500720074000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00}
  end
end
