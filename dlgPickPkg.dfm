object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 251
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 120
  TextHeight = 16
  object pnlButtons: TPanel
    Left = 0
    Top = 199
    Width = 1098
    Height = 52
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 469
      Top = 1
      Width = 89
      Height = 48
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 565
      Top = 1
      Width = 89
      Height = 48
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 199
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 1096
      Height = 197
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
          Width = 65
        end
        object grdPackagesSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 54
        end
        object grdPackagesProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 468
        end
        object grdPackagesSupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          Visible = False
        end
        object grdPackagesLengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 289
        end
        object grdPackagesProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Visible = False
        end
        object grdPackagesNoOfLengths: TcxGridDBColumn
          DataBinding.FieldName = 'NoOfLengths'
          Visible = False
        end
        object grdPackagesProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          Visible = False
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPackages
      end
    end
  end
  object siLangLinked_frmPackagePicker: TsiLangLinked
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
    Left = 440
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072000100500061006B00650074006E007200200064007500
      62006C006500740074000100010001000D000A00620074006E004F004B000100
      4F004B000100010001000D000A00620074006E00430061006E00630065006C00
      0100430061006E00630065006C000100010001000D000A006700720064005000
      610063006B0061006700650073005000610063006B006100670065004E006F00
      0100500061006B00650074006E0072000100010001000D000A00670072006400
      5000610063006B00610067006500730053007500700070006C00690065007200
      43006F006400650001005000720065006600690078000100010001000D000A00
      6700720064005000610063006B006100670065007300500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010050007200
      6F00640075006B0074000100010001000D000A00670072006400500061006300
      6B00610067006500730053007500700070006C006900650072004E006F000100
      53007500700070006C006900650072004E006F000100010001000D000A006700
      720064005000610063006B0061006700650073004C0065006E00670074006800
      4400650073006300720069007000740069006F006E0001004C00E4006E006700
      64000100010001000D000A006700720064005000610063006B00610067006500
      7300500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F000100010001000D000A006700720064005000610063006B00
      61006700650073004E006F004F0066004C0065006E0067007400680073000100
      4E006F004F0066004C0065006E0067007400680073000100010001000D000A00
      6700720064005000610063006B006100670065007300500072006F0064007500
      630074004C0065006E006700740068004E006F000100500072006F0064007500
      630074004C0065006E006700740068004E006F000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A005400660072006D0050006100
      63006B006100670065005000690063006B006500720001004D00530020005300
      61006E0073002000530065007200690066000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A007300740043006800610072005300650074007300
      5F0055006E00690063006F00640065000D000A005400660072006D0050006100
      63006B006100670065005000690063006B006500720001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00}
  end
end
