object fEnterKilnVagn: TfEnterKilnVagn
  Left = 0
  Top = 0
  Caption = 'Vagn/Sats'
  ClientHeight = 564
  ClientWidth = 1256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1256
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object mePackageNo: TcxTextEdit
      Left = 139
      Top = 8
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = mePackageNoKeyDown
      Width = 210
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 11
      Caption = 'Ange paketnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 923
      Top = 11
      DataBinding.DataField = 'KilnChargeNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
      AnchorX = 1044
    end
    object cxLabel2: TcxLabel
      Left = 801
      Top = 8
      Caption = 'Torksatsnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 1117
      Top = 11
      DataBinding.DataField = 'VagnNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 21
      Width = 121
      AnchorX = 1238
    end
    object cxLabel3: TcxLabel
      Left = 1050
      Top = 11
      Caption = 'Vagnnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 490
      Top = 10
      Width = 129
      Height = 65
      Action = acRemovePackage
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 355
      Top = 10
      Width = 129
      Height = 65
      Action = acPickPackages
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lcImp: TcxDBLookupComboBox
      Left = 924
      Top = 40
      Hint = 'Please select a pressure treated type!'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'IMP'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      ParentShowHint = False
      Properties.KeyFieldNames = 'ProductCategoryNo'
      Properties.ListColumns = <
        item
          FieldName = 'ProductCategoryName'
        end>
      Properties.ListOptions.ShowHeader = False
      ShowHint = True
      Style.Color = clGreen
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 314
    end
    object LabelIMP: TcxLabel
      Left = 801
      Top = 43
      Caption = 'Impregnering:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 139
      Top = 40
      Hint = 'Kopieras till info2 f'#228'ltet i paketen'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Notering'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 210
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 42
      Caption = 'Notering:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object tePlannedDuration: TcxDBTextEdit
      Left = 139
      Top = 71
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'PlannedDuration'
      DataBinding.DataSource = ds_KilnVagn
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 210
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 74
      Caption = 'Plan.torktid:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton3: TcxButton
      Left = 624
      Top = 10
      Width = 129
      Height = 65
      Action = acRefresh
      TabOrder = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 496
    Width = 1256
    Height = 68
    Align = alBottom
    TabOrder = 1
    object bOK: TcxButton
      Left = 577
      Top = 6
      Width = 105
      Height = 51
      Caption = 'St'#228'ng'
      ModalResult = 1
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton4: TcxButton
      Left = 824
      Top = 8
      Width = 129
      Height = 49
      Action = acPrint
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grdVagnPkgs: TcxGrid
    Left = 0
    Top = 105
    Width = 1256
    Height = 391
    Align = alClient
    TabOrder = 2
    object grdVagnPkgsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dmInventory.ds_KilnChargeRows
      DataController.KeyFieldNames = 'KilnChargeNo;RowNo;VagnNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.000'
          Kind = skSum
          FieldName = 'Totalm3Actual'
          Column = grdVagnPkgsDBTableView1Totalm3Actual
        end
        item
          Format = '###'
          Kind = skCount
          FieldName = 'PackageNo'
          Column = grdVagnPkgsDBTableView1PackageNo
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.DataRowSizing = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.StyleSheet = GridTableViewStyleSheetPumpkinlarge
      object grdVagnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn
        DataBinding.FieldName = 'KilnChargeNo'
        Visible = False
        Width = 96
      end
      object grdVagnPkgsDBTableView1VagnNo: TcxGridDBColumn
        DataBinding.FieldName = 'VagnNo'
        Visible = False
        Width = 71
      end
      object grdVagnPkgsDBTableView1RowNo: TcxGridDBColumn
        DataBinding.FieldName = 'RowNo'
        PropertiesClassName = 'TcxLabelProperties'
        SortIndex = 0
        SortOrder = soDescending
        Width = 82
      end
      object grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn
        DataBinding.FieldName = 'PackageNo'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 112
      end
      object grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierCode'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 83
      end
      object grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductDisplayName'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 518
      end
      object grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfPkgs'
        Visible = False
        Width = 84
      end
      object grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn
        DataBinding.FieldName = 'PcsPerLength'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 261
      end
      object grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 186
      end
      object grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
        Width = 101
      end
      object grdVagnPkgsDBTableView1MatchingPT: TcxGridDBColumn
        Caption = 'Matching P/T'
        DataBinding.FieldName = 'MatchingPT'
        PropertiesClassName = 'TcxLabelProperties'
      end
      object grdVagnPkgsDBTableView1Totalm3Actual: TcxGridDBColumn
        DataBinding.FieldName = 'Totalm3Actual'
      end
    end
    object grdVagnPkgsLevel1: TcxGridLevel
      GridView = grdVagnPkgsDBTableView1
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 192
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 352
    Top = 192
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet
      Caption = 'Pumpkin (large)'
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object ActionList1: TActionList
    Left = 464
    Top = 208
    object acRemovePackage: TAction
      Caption = 'Ta bort paket'
      OnExecute = acRemovePackageExecute
      OnUpdate = acRemovePackageUpdate
    end
    object acPickPackages: TAction
      Caption = 'Plocka paket'
      OnExecute = acPickPackagesExecute
    end
    object acRefresh: TAction
      Caption = 'Refresh'
      OnExecute = acRefreshExecute
    end
    object acPrint: TAction
      Caption = 'Print'
      OnExecute = acPrintExecute
    end
  end
  object siLangLinked_fEnterKilnVagn: TsiLangLinked
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
      'AutoIncFields'
      'CaseInsFields'
      'CatalogName'
      'Categories'
      'ClassName'
      'CommandText'
      'ConnectionName'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'DisplayChecked'
      'DisplayUnchecked'
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
      'GraphicClassName'
      'HotZoneClassName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'KeyFieldNames'
      'ListFieldNames'
      'LockSQL'
      'Origin'
      'PackageName'
      'Params'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'PopupMenuLinks'
      'PropertiesClassName'
      'RegistryPath'
      'SchemaName'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'DataSetName'
      'IniFile'
      'ProviderName'
      'ScriptLanguage'
      'ScriptText')
    Left = 624
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004B0069006C006E005600
      610067006E0001005600610067006E002F005300610074007300010001004300
      6100720074002F00730065007400010001000D000A00630078004C0061006200
      65006C003100010041006E00670065002000700061006B00650074006E007200
      3A00010041006E00670065002000700061006B00650074006E00720001004500
      6E00740065007200200070006B00670020006E006F00010041006E0067006500
      2000700061006C006C006E00720001000D000A00630078004C00610062006500
      6C003200010054006F0072006B0073006100740073006E0072003A0001005400
      6F0072006B0073006100740073006E00720001004B0069006C006E0020007300
      6500740020006E006F00010054006F0072006B0073006100740073006E007200
      01000D000A00630078004C006100620065006C00330001005600610067006E00
      6E0072003A0001005600610067006E006E007200010043006100720074002000
      6E006F0001005600610067006E006E00720001000D000A0062004F004B000100
      53007400E4006E00670001000100430026006C006F0073006500010001000D00
      0A006700720064005600610067006E0050006B00670073004400420054006100
      62006C006500560069006500770031004B0069006C006E004300680061007200
      670065004E006F00010054006F0072006B0073006100740073006E0072000100
      0100010001000D000A006700720064005600610067006E0050006B0067007300
      440042005400610062006C006500560069006500770031005600610067006E00
      4E006F0001005600610067006E006E0072000100010043006100720074002000
      6E006F00010001000D000A006700720064005600610067006E0050006B006700
      7300440042005400610062006C0065005600690065007700310052006F007700
      4E006F0001005200610064006E007200010001004C0069006E0065004E006F00
      010001000D000A006700720064005600610067006E0050006B00670073004400
      42005400610062006C006500560069006500770031005000610063006B006100
      670065004E006F000100500061006B00650074006E0072000100500061006B00
      650074004E007200010050006B0067004E006F000100500061006C006C004E00
      720001000D000A006700720064005600610067006E0050006B00670073004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      69006500720043006F0064006500010050007200650066006900780001000100
      500072006500660069007800010001000D000A00670072006400560061006700
      6E0050006B0067007300440042005400610062006C0065005600690065007700
      3100500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100500072006F00640075006B00740001000100500072006F00
      6400750063007400010001000D000A006700720064005600610067006E005000
      6B0067007300440042005400610062006C006500560069006500770031004E00
      6F004F00660050006B006700730001004E006F004F00660050006B0067007300
      01000100010001000D000A006700720064005600610067006E0050006B006700
      7300440042005400610062006C00650056006900650077003100500063007300
      5000650072004C0065006E006700740068000100530074002F006C00E4006E00
      67006400010053007400790063006B002F006C00E4006E006700640001005000
      630073002F006C0065006E00670074006800010053007400790063006B002F00
      6C00E4006E006700640001000D000A006700720064005600610067006E005000
      6B0067007300440042005400610062006C006500560069006500770031004400
      6100740065004300720065006100740065006400010049006E006D0061007400
      610064000100010045006E0074006500720065006400010001000D000A006700
      720064005600610067006E0050006B0067007300440042005400610062006C00
      6500560069006500770031004300720065006100740065006400550073006500
      7200010049006E006D0061007400610064002000610076000100010045006E00
      74006500720065006400200062007900010001000D000A004700720069006400
      5400610062006C00650056006900650077005300740079006C00650053006800
      650065007400500075006D0070006B0069006E006C0061007200670065000100
      500075006D0070006B0069006E00200028006C00610072006700650029000100
      0100010001000D000A0061006300520065006D006F0076006500500061006300
      6B00610067006500010054006100200062006F00720074002000700061006B00
      6500740001000100440065006C00650074006500200070006B00670001005400
      6100200062006F00720074002000700061006C006C0001000D000A0061006300
      5000690063006B005000610063006B006100670065007300010050006C006F00
      63006B0061002000700061006B0065007400010001005000690063006B002000
      70006B006700010050006C006F0063006B0061002000700061006C006C006100
      720001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      660045006E007400650072004B0069006C006E005600610067006E0001005400
      610068006F006D00610001000100010001000D000A0063007800420075007400
      74006F006E00310001005400610068006F006D00610001000100010001000D00
      0A006300780042007500740074006F006E00320001005400610068006F006D00
      610001000100010001000D000A0062004F004B0001005400610068006F006D00
      610001000100010001000D000A00630078005300740079006C00650031000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      650072006900660001000100010001000D000A00630078005300740079006C00
      6500320001005400610068006F006D00610001000100010001000D000A006300
      78005300740079006C006500330001005400610068006F006D00610001000100
      010001000D000A00630078005300740079006C006500340001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      660001000100010001000D000A00630078005300740079006C00650035000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      650072006900660001000100010001000D000A00630078005300740079006C00
      6500360001004D006900630072006F0073006F00660074002000530061006E00
      730020005300650072006900660001000100010001000D000A00630078005300
      740079006C006500370001004D006900630072006F0073006F00660074002000
      530061006E00730020005300650072006900660001000100010001000D000A00
      630078005300740079006C006500380001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      01000D000A00630078005300740079006C006500390001004D00690063007200
      6F0073006F00660074002000530061006E007300200053006500720069006600
      01000100010001000D000A00630078005300740079006C006500310030000100
      4D006900630072006F0073006F00660074002000530061006E00730020005300
      650072006900660001000100010001000D000A00630078005300740079006C00
      65003100310001004D006900630072006F0073006F0066007400200053006100
      6E00730020005300650072006900660001000100010001000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A004900440053005F003000010020003A005000
      61006B00650074006E0072002000660069006E006E0073002000750070007000
      7400610067006500740020006900200065006E00200074006F0072006B002000
      72006500640061006E002E0001000100200050006B0067004E006F0020006900
      73002000740061006B0065006E00200074006F0020006B0069006C006E002000
      61006C0072006500610064007900010020003A00500061006C006C006E007200
      2000660069006E006E0073002000750070007000740061006700650074002000
      6900200065006E00200074006F0072006B00200072006500640061006E002E00
      01000D000A004900440053005F00310001004B006F00640065006E0020006B00
      75006E0064006500200069006E00740065002000F6007600650072007300E400
      74007400610073002000740069006C006C002000650074007400200050006100
      6B00650074006E00720001000100540068006500200063006F00640065002000
      63006F0075006C00640020006E006F0074002000620065002000740072006100
      6E0073006C006100740065006400200074006F0020006100200050006B006700
      4E006F0001004B006F00640065006E0020006B0075006E006400650020006900
      6E00740065002000F6007600650072007300E400740074006100730020007400
      69006C006C0020006500740074002000500061006C006C006E00720001000D00
      0A004900440053005F0032000100500061006B00650074006E00720020000100
      500061006B00650074004E007200010050006B0067004E006F00010050006100
      6C006C004E00720001000D000A004900440053005F0033000100200066006900
      6E006E007300200069006E00740065002000690020006C006100670065007200
      200001000100200064006F006500730020006E006F0074002000650078006900
      73007400200069006E002000730074006F0063006B00010001000D000A004900
      440053005F00350001002000E400720020007200650073006500720076006500
      7200610074002000610076002000010001002000690073002000720065007300
      650072007600650064002000620079002000010001000D000A00490044005300
      5F00370001002000E4007200200072006500640061006E00200069006E006D00
      610074006100740001000100200069007300200061006C007200650061006400
      7900200065006E0074006500720065006400010001000D000A00490044005300
      5F0038000100500061006B00650074006E0072002000730061006B006E006100
      73002E000100500061006B00650074004E0072002000730061006B006E006100
      7300010050006B0067004E006F0020006D0069007300730069006E0067000100
      500061006C006C004E0072002000730061006B006E006100730001000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660045006E007400650072004B0069006C006E0056006100
      67006E000100440045004600410055004C0054005F0043004800410052005300
      4500540001000100010001000D000A006300780042007500740074006F006E00
      31000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A006300780042007500740074006F006E003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000100010001000D000A0062004F004B000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      78005300740079006C00650031000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078005300
      740079006C00650032000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A0063007800530074007900
      6C00650033000100440045004600410055004C0054005F004300480041005200
      53004500540001000100010001000D000A00630078005300740079006C006500
      34000100440045004600410055004C0054005F00430048004100520053004500
      540001000100010001000D000A00630078005300740079006C00650035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0100010001000D000A00630078005300740079006C0065003600010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      01000D000A00630078005300740079006C006500370001004400450046004100
      55004C0054005F00430048004100520053004500540001000100010001000D00
      0A00630078005300740079006C00650038000100440045004600410055004C00
      54005F00430048004100520053004500540001000100010001000D000A006300
      78005300740079006C00650039000100440045004600410055004C0054005F00
      430048004100520053004500540001000100010001000D000A00630078005300
      740079006C006500310030000100440045004600410055004C0054005F004300
      48004100520053004500540001000100010001000D000A006300780053007400
      79006C006500310031000100440045004600410055004C0054005F0043004800
      4100520053004500540001000100010001000D000A00}
  end
  object ds_KilnVagn: TDataSource
    DataSet = dmInventory.cds_KilnVagn
    Left = 368
    Top = 328
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 872
    Top = 296
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = grdVagnPkgs
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Date Printed][Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43902.889727754630000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
