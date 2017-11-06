object fSelectLORowInLoad: TfSelectLORowInLoad
  Left = 0
  Top = 0
  ActiveControl = grdLORows
  Caption = 'V'#228'lj Lastorderrad'
  ClientHeight = 357
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 1122
    Height = 57
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 520
      Top = 6
      Width = 97
      Height = 43
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object PanelPaket: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 41
    Align = alTop
    Caption = '22x100 furu 4 hyvlat runda h'#246'rn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object grdLORows: TcxGrid
    Left = 0
    Top = 41
    Width = 1122
    Height = 259
    Align = alClient
    TabOrder = 2
    object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadEntrySSP.dsLORows
      DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnVertSizing = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = cxStyleContent
      Styles.ContentOdd = cxStyleContentOdd
      Styles.Header = cxStyleHeader
      Bands = <
        item
          Caption = 'MATCH'
          Width = 52
        end
        item
          Width = 897
        end>
      object grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = grdLORowsDBBandedTableView1MATCHPropertiesChange
        Options.Filtering = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShippingPlanNo'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PKGCODE'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 71
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 318
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
        Caption = 'L'#228'ngdbesk.'
        DataBinding.FieldName = 'LENGTHDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 122
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOOFUNITS'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICEUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_START'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 44
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_END'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 43
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KR_Ref'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUCTGROUPNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PCSPERPKG'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SupplierShipPlanObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
        Caption = 'Akt.l'#228'ngd'
        DataBinding.FieldName = 'ACT_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingLocationNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShipToInvPointNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MIN_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAX_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthGroupNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INCH_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVCH_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SurfacingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SpeciesNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GradeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Prislista'
        Visible = False
        Options.Filtering = False
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
        Caption = 'Till'#229't alla l'#228'ngder'
        DataBinding.FieldName = 'OverrideRL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CERTI'
        Width = 111
        Position.BandIndex = 1
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tr'#228'slag'
        Visible = False
        Width = 144
        Position.BandIndex = 1
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadedPkgs'
        Visible = False
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
    end
    object grdLORowsLevel1: TcxGridLevel
      GridView = grdLORowsDBBandedTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 161
    Top = 175
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object siLangLinked_fSelectLORowInLoad: TsiLangLinked
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
    Left = 552
    Top = 184
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C004F0052006F00
      770049006E004C006F006100640001005600E4006C006A0020004C0061007300
      74006F00720064006500720072006100640001005600E4006C006A0020004C00
      4F0020007200610064000100530065006C0065006300740020004C004F002000
      6C0069006E00650001005600E4006C006A0020004C004F002000720061006400
      01000D000A006300780042007500740074006F006E00310001004F004B000100
      01004F004B00010001000D000A00500061006E0065006C00500061006B006500
      7400010032003200780031003000300020006600750072007500200034002000
      6800790076006C00610074002000720075006E006400610020006800F6007200
      6E0001000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D00410054004300480001004D004100540043004800010001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006800
      69007000700069006E00670050006C0061006E004E006F0001004C004F000100
      01004C004F00010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310050004B00470043004F00440045000100500061006B00650074006B00
      6F0064000100010050006B006700200063006F00640065000100500061006C00
      6C006B006F00640001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      77003100500052004F0044005500430054004400450053004300520049005000
      540049004F004E000100500072006F00640075006B0074006200650073006B00
      2E00280069006E007400650072006E00290001000100500072006F0064007500
      630074006400650073006300720069007000720069006F006E00200028006900
      6E007400650072006E002900010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C0045004E0047005400480044004500530043000100
      4C00E4006E00670064006200650073006B002E0001004C00E4006E0067006400
      6200650073006B007200690076006E0001004C0065006E006700740068002000
      6400650073006300720001004C00E4006E00670064006200650073006B007200
      690076006E0001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004F004F00460055004E0049005400530001004B00760061006E007400
      6900740065007400010001005100750061006E00740069007400790001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C0065005600690065007700310056004F004C00
      55004E0049005400010045006E006800650074000100010055006E0069007400
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      5200490043004500010050007200690073000100010050007200690063006500
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      520049004300450055004E00490054000100500072006900730065006E006800
      6500740001000100500072006900630065002000260075006E00690074000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310052004500
      46004500520045004E004300450001005200650066006500720065006E007300
      010001005200650066006500720065006E0063006500010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C00450056005F0050004500
      520049004F0044005F005300540041005200540001004C00650076002E007000
      6500720069006F00640020007300740061007200740001004C00650076002000
      70006500720069006F0064002000730074006100720074000100440065006C00
      200070006500720069006F00640020007300740061007200740001004C006500
      7600200070006500720069006F00640020007300740061007200740001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00450056005F00
      50004500520049004F0044005F0045004E00440001004C00650076002E005000
      6500720069006F006400200073006C007500740001004C006500760020007000
      6500720069006F006400200073006C00750074000100440065006C0020007000
      6500720069006F006400200065006E00640001004C0065007600200070006500
      720069006F006400200073006C007500740001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004F0052004400450052004E004F0001004F00
      72006400650072006E00720001004F0072006400650072004E00720001004F00
      72006400650072004E006F0001004F0072006400650072004E00720001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004B0052005F005200
      6500660001004B0052002D007200650066006500720065006E00730001004F00
      520020007200650066006500720065006E00730001004F004C00200072006500
      66006500720065006E006300650001004F005200200072006500660065007200
      65006E00730001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004F004D005F0054004800490043004B0001004E004F004D005F005400
      4800490043004B0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004E004F004D005F005700490044005400480001004E00
      4F004D005F005700490044005400480001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500052004F004400550043005400
      470052004F00550050004E004F000100500052004F0044005500430054004700
      52004F00550050004E004F0001000100010001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C0065005600690065007700310050004300530050004500520050004B004700
      010050005000500001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004C0065006E006700
      740068004E006F000100500072006F0064007500630074004C0065006E006700
      740068004E006F0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F00610064004E006F0001004C00610073007400
      6E007200010001004C006F00610064004E006F00010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310053007500700070006C0069006500
      7200530068006900700050006C0061006E004F0062006A006500630074004E00
      6F00010053007500700070006C00690065007200530068006900700050006C00
      61006E004F0062006A006500630074004E006F0001000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004100430054005F005400
      4800490043004B0001004100430054005F0054004800490043004B0001000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      430054005F005700490044005400480001004100430054005F00570049004400
      5400480001000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004100430054005F004C0045004E00470054004800010041006B00
      74002E006C00E4006E0067006400010041006B00740020006C00E4006E006700
      6400010041006300740020006C0065006E00670074006800010041006B007400
      20006C00E4006E006700640001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004C006F006100640069006E0067004C006F00630061007400
      69006F006E004E006F0001004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F0001000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310049004E005400450052004E0050005200
      4F00440044004500530043000100500072006F00640075006B00740062006500
      73006B002E00280069006E007400650072006E00290001000100500072006F00
      64007500630074006400650073006300720069007000720069006F006E002000
      280069006E007400650072006E002900010001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100530068006900700054006F0049006E007600
      50006F0069006E0074004E006F000100530068006900700054006F0049006E00
      760050006F0069006E0074004E006F0001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004D0049004E00
      5F004C0045004E0047005400480001004D0049004E005F004C0045004E004700
      5400480001000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004D00410058005F004C0045004E0047005400480001004D004100
      58005F004C0045004E0047005400480001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310043007500730074006F006D006500
      72004E006F00010043007500730074006F006D00650072004E006F0001000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004300
      750073007400530068006900700050006C0061006E0044006500740061006900
      6C004F0062006A006500630074004E006F000100430075007300740053006800
      6900700050006C0061006E00440065007400610069006C004F0062006A006500
      630074004E006F0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004C0065006E006700
      74006800470072006F00750070004E006F000100500072006F00640075006300
      74004C0065006E00670074006800470072006F00750070004E006F0001000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      4E00430048005F0054004800490043004B00010049004E00430048005F005400
      4800490043004B0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310049004E005600430048005F0057004900440054004800
      010049004E005600430048005F00570049004400540048000100010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310053007000650063006900650073004E006F0001005300
      7000650063006900650073004E006F0001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100470072006100640065004E006F00
      0100470072006100640065004E006F0001000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031005000610063006B00610067006500
      54007900700065004E006F0001005000610063006B0061006700650054007900
      700065004E006F0001000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310050007200690073006C00690073007400610001005000
      7200690073006C00690073007400610001000100500072006900630065006C00
      690073007400010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004F00760065007200720069006400650052004C000100540069006C00
      6C00E5007400200061006C006C00610020006C00E4006E006700640065007200
      0100010041006C006C006F007700200061006C006C0020006C0065006E006700
      740068007300010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310043004500520054004900010043006500720074006900660069006500
      7200610064000100010043006500720074006900660069006500640001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100540072007300
      6C0061006700010054007200E40073006C006100670001000100530070006500
      6300690065007300010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C006F00610064006500640050006B0067007300010055007400
      6C00610073007400610064006500200070006B007400010001004C006F006100
      640065006400200070006B00670073000100550074006C006100730074006100
      640065002000700061006C006C0001000D000A0073007400480069006E007400
      73005F0055006E00690063006F00640065000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A0054006600530065006C006500630074004C004F005200
      6F00770049006E004C006F006100640001005400610068006F006D0061000100
      0100010001000D000A00500061006E0065006C00500061006B00650074000100
      5400610068006F006D00610001000100010001000D000A006300780053007400
      79006C006500590065006C006C006F00770001005400610068006F006D006100
      01000100010001000D000A00630078005300740079006C006500520065006400
      01005400610068006F006D00610001000100010001000D000A00630078005300
      740079006C006500410071007500610001005400610068006F006D0061000100
      0100010001000D000A00630078005300740079006C00650042006C0075006500
      01005400610068006F006D00610001000100010001000D000A00630078005300
      740079006C006500530069006C0076006500720001005400610068006F006D00
      610001000100010001000D000A00630078005300740079006C00650048006500
      61006400650072000100560065007200640061006E0061000100010001000100
      0D000A00630078005300740079006C00650043006F006E00740065006E007400
      01004D0053002000530061006E00730020005300650072006900660001000100
      010001000D000A00630078005300740079006C00650043006F006E0074006500
      6E0074004F006400640001004D0053002000530061006E007300200053006500
      72006900660001000100010001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0030005D002E00430061007000740069006F006E0001004D004100
      54004300480001000100010001000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066005300
      65006C006500630074004C004F0052006F00770049006E004C006F0061006400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00500061006E0065006C00500061006B0065007400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A00630078005300740079006C006500590065006C00
      6C006F0077000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00630078005300740079006C006500
      5200650064000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00630078005300740079006C006500
      41007100750061000100440045004600410055004C0054005F00430048004100
      520053004500540001000100010001000D000A00630078005300740079006C00
      650042006C00750065000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C006500530069006C007600650072000100440045004600410055004C005400
      5F00430048004100520053004500540001000100010001000D000A0063007800
      5300740079006C00650048006500610064006500720001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650043006F006E00740065006E0074000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F00640064000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A00}
  end
end
