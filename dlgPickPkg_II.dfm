object frmPackagePicker_II: TfrmPackagePicker_II
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 228
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 186
    Width = 859
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 347
      Top = 5
      Width = 71
      Height = 34
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 435
      Top = 5
      Width = 71
      Height = 34
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 186
    Align = alClient
    TabOrder = 1
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 857
      Height = 184
      Align = alClient
      TabOrder = 0
      object grdPackages: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdPackagesPackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 76
        end
        object grdPackagesSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 61
        end
        object grdPackagesSupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          Visible = False
        end
        object grdPackagesProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 439
        end
        object grdPackagesLengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 279
        end
        object grdPackagesProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Visible = False
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPackages
      end
    end
  end
  object siLangLinked_frmPackagePicker_II: TsiLangLinked
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
    Left = 424
    Top = 120
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072005F00490049000100500061006B00650074006E007200
      20006400750062006C006500740074000100500061006B00650074004E007200
      20006400750062006C00650074007400010050006B0067004E006F0020006400
      6F00750062006C0065000100500061006C006C004E0072002000640075006200
      6C0065007400740001000D000A00620074006E004F004B0001004F004B000100
      01004F004B00010001000D000A00620074006E00430061006E00630065006C00
      0100430061006E00630065006C00010041007600620072007900740001000100
      41007600620072007900740001000D000A006700720064005000610063006B00
      61006700650073005000610063006B006100670065004E006F00010050006100
      6B00650074006E0072000100500061006B00650074004E007200010050006B00
      67004E006F000100500061006C006C004E00720001000D000A00670072006400
      5000610063006B00610067006500730053007500700070006C00690065007200
      43006F0064006500010050007200650066006900780001000100500072006500
      660069007800010001000D000A006700720064005000610063006B0061006700
      6500730053007500700070006C006900650072004E006F000100530075007000
      70006C006900650072004E006F0001000100010001000D000A00670072006400
      5000610063006B006100670065007300500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006700
      720064005000610063006B0061006700650073004C0065006E00670074006800
      4400650073006300720069007000740069006F006E0001004C00E4006E006700
      6400010001004C0065006E00670074006800010001000D000A00670072006400
      5000610063006B006100670065007300500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F0001000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      5000610063006B006100670065005000690063006B00650072005F0049004900
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      5400660072006D005000610063006B006100670065005000690063006B006500
      72005F00490049000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00}
  end
end
