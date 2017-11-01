object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 204
  ClientWidth = 892
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
    Top = 162
    Width = 892
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 381
      Top = 1
      Width = 72
      Height = 39
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 459
      Top = 1
      Width = 72
      Height = 39
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 162
    Align = alClient
    TabOrder = 1
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 890
      Height = 160
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
    Left = 440
    Top = 104
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D005000610063006B006100670065005000
      690063006B00650072000100500061006B00650074006E007200200064007500
      62006C006500740074000100500061006B00650074004E007200200064007500
      62006C00650074007400010050006B0067004E006F00200064006F0075006200
      6C0065000100500061006C006C004E00720020006400750062006C0065007400
      740001000D000A00620074006E004F004B0001004F004B00010001004F004B00
      010001000D000A00620074006E00430061006E00630065006C00010043006100
      6E00630065006C00010041007600620072007900740001000100410076006200
      72007900740001000D000A006700720064005000610063006B00610067006500
      73005000610063006B006100670065004E006F000100500061006B0065007400
      6E0072000100500061006B00650074004E007200010050006B0067004E006F00
      0100500061006C006C004E00720001000D000A00670072006400500061006300
      6B00610067006500730053007500700070006C0069006500720043006F006400
      6500010050007200650066006900780001000100500072006500660069007800
      010001000D000A006700720064005000610063006B0061006700650073005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A006700720064005000610063006B00610067006500
      730053007500700070006C006900650072004E006F0001005300750070007000
      6C006900650072004E006F0001000100010001000D000A006700720064005000
      610063006B0061006700650073004C0065006E00670074006800440065007300
      6300720069007000740069006F006E0001004C00E4006E006700640001000100
      4C0065006E00670074006800010001000D000A00670072006400500061006300
      6B006100670065007300500072006F0064007500630074004E006F0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0067007200
      64005000610063006B0061006700650073004E006F004F0066004C0065006E00
      670074006800730001004E006F004F0066004C0065006E006700740068007300
      01000100010001000D000A006700720064005000610063006B00610067006500
      7300500072006F0064007500630074004C0065006E006700740068004E006F00
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      01000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A005400660072006D005000610063006B006100670065005000690063006B00
      6500720001004D0053002000530061006E007300200053006500720069006600
      01000100010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A005400660072006D005000610063006B00610067006500500069006300
      6B00650072000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00}
  end
end
