object fEnterKilnVagn: TfEnterKilnVagn
  Left = 0
  Top = 0
  Caption = 'Vagn/Sats'
  ClientHeight = 738
  ClientWidth = 1642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1642
    Height = 95
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object mePackageNo: TcxTextEdit
      Left = 260
      Top = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 325
    end
    object cxLabel1: TcxLabel
      Left = 115
      Top = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ange paketnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 1207
      Top = 14
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'KilnChargeNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 28
      Width = 158
    end
    object cxLabel2: TcxLabel
      Left = 1088
      Top = 14
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Torksatsnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 1461
      Top = 14
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'VagnNo'
      DataBinding.DataSource = dmInventory.ds_KilnChargeRows
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 28
      Width = 158
    end
    object cxLabel3: TcxLabel
      Left = 1373
      Top = 14
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Vagnnr:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxButton1: TcxButton
      Left = 785
      Top = 4
      Width = 168
      Height = 85
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acRemovePackage
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 608
      Top = 4
      Width = 169
      Height = 85
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acPickPackages
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 649
    Width = 1642
    Height = 89
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object bOK: TcxButton
      Left = 755
      Top = 8
      Width = 137
      Height = 67
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'St'#228'ng'
      ModalResult = 1
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object grdVagnPkgs: TcxGrid
    Left = 0
    Top = 95
    Width = 1642
    Height = 554
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    TabStop = False
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
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
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
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10343916
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13626101
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3122647
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 13626101
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4325442
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = 3122647
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
    end
    object acPickPackages: TAction
      Caption = 'Plocka paket'
      OnExecute = acPickPackagesExecute
    end
  end
  object siLangLinked_fEnterKilnVagn: TsiLangLinked
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
    Left = 624
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660045006E007400650072004B0069006C006E005600
      610067006E0001005600610067006E002F005300610074007300010001000100
      0D000A00630078004C006100620065006C003100010041006E00670065002000
      700061006B00650074006E0072003A000100010001000D000A00630078004C00
      6100620065006C003200010054006F0072006B0073006100740073006E007200
      3A000100010001000D000A00630078004C006100620065006C00330001005600
      610067006E006E0072003A000100010001000D000A0062004F004B0001005300
      7400E4006E0067000100010001000D000A006700720064005600610067006E00
      50006B0067007300440042005400610062006C00650056006900650077003100
      4B0069006C006E004300680061007200670065004E006F00010054006F007200
      6B0073006100740073006E0072000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031005600610067006E004E006F0001005600610067006E006E007200
      0100010001000D000A006700720064005600610067006E0050006B0067007300
      440042005400610062006C0065005600690065007700310052006F0077004E00
      6F0001005200610064006E0072000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031005000610063006B006100670065004E006F000100500061006B00
      650074006E0072000100010001000D000A006700720064005600610067006E00
      50006B0067007300440042005400610062006C00650056006900650077003100
      53007500700070006C0069006500720043006F00640065000100500072006500
      6600690078000100010001000D000A006700720064005600610067006E005000
      6B0067007300440042005400610062006C006500560069006500770031005000
      72006F00640075006300740044006900730070006C00610079004E0061006D00
      65000100500072006F00640075006B0074000100010001000D000A0067007200
      64005600610067006E0050006B0067007300440042005400610062006C006500
      560069006500770031004E006F004F00660050006B006700730001004E006F00
      4F00660050006B00670073000100010001000D000A0067007200640056006100
      67006E0050006B0067007300440042005400610062006C006500560069006500
      770031005000630073005000650072004C0065006E0067007400680001005300
      74002F006C00E4006E00670064000100010001000D000A006700720064005600
      610067006E0050006B0067007300440042005400610062006C00650056006900
      6500770031004400610074006500430072006500610074006500640001004900
      6E006D0061007400610064000100010001000D000A0067007200640056006100
      67006E0050006B0067007300440042005400610062006C006500560069006500
      7700310043007200650061007400650064005500730065007200010049006E00
      6D0061007400610064002000610076000100010001000D000A00470072006900
      64005400610062006C00650056006900650077005300740079006C0065005300
      6800650065007400500075006D0070006B0069006E006C006100720067006500
      0100500075006D0070006B0069006E00200028006C0061007200670065002900
      0100010001000D000A0061006300520065006D006F0076006500500061006300
      6B00610067006500010054006100200062006F00720074002000700061006B00
      650074000100010001000D000A00610063005000690063006B00500061006300
      6B006100670065007300010050006C006F0063006B0061002000700061006B00
      650074000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660045006E007400650072004B0069006C006E00560061006700
      6E0001005400610068006F006D0061000100010001000D000A00630078004200
      7500740074006F006E00310001005400610068006F006D006100010001000100
      0D000A006300780042007500740074006F006E00320001005400610068006F00
      6D0061000100010001000D000A0062004F004B0001005400610068006F006D00
      61000100010001000D000A00630078005300740079006C006500310001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      7200690066000100010001000D000A00630078005300740079006C0065003200
      01005400610068006F006D0061000100010001000D000A006300780053007400
      79006C006500330001005400610068006F006D0061000100010001000D000A00
      630078005300740079006C006500340001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      0D000A00630078005300740079006C006500350001004D006900630072006F00
      73006F00660074002000530061006E0073002000530065007200690066000100
      010001000D000A00630078005300740079006C006500360001004D0069006300
      72006F0073006F00660074002000530061006E00730020005300650072006900
      66000100010001000D000A00630078005300740079006C006500370001004D00
      6900630072006F0073006F00660074002000530061006E007300200053006500
      7200690066000100010001000D000A00630078005300740079006C0065003800
      01004D006900630072006F0073006F00660074002000530061006E0073002000
      530065007200690066000100010001000D000A00630078005300740079006C00
      6500390001004D006900630072006F0073006F00660074002000530061006E00
      73002000530065007200690066000100010001000D000A006300780053007400
      79006C0065003100300001004D006900630072006F0073006F00660074002000
      530061006E0073002000530065007200690066000100010001000D000A006300
      78005300740079006C0065003100310001004D006900630072006F0073006F00
      660074002000530061006E007300200053006500720069006600010001000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A004900440053005F003000
      010020003A00500061006B00650074006E0072002000660069006E006E007300
      20007500700070007400610067006500740020006900200065006E0020007400
      6F0072006B00200072006500640061006E002E000100010001000D000A004900
      440053005F00310001004B006F00640065006E0020006B0075006E0064006500
      200069006E00740065002000F6007600650072007300E4007400740061007300
      2000740069006C006C0020006500740074002000500061006B00650074006E00
      72000100010001000D000A004900440053005F0032000100500061006B006500
      74006E00720020000100010001000D000A004900440053005F00330001002000
      660069006E006E007300200069006E00740065002000690020006C0061006700
      6500720020000100010001000D000A004900440053005F00350001002000E400
      7200200072006500730065007200760065007200610074002000610076002000
      0100010001000D000A004900440053005F00370001002000E400720020007200
      6500640061006E00200069006E006D0061007400610074000100010001000D00
      0A004900440053005F0038000100500061006B00650074006E00720020007300
      61006B006E00610073002E000100010001000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A007300740043006F006C006C0065006300740069006F006E007300
      5F0055006E00690063006F00640065000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      45006E007400650072004B0069006C006E005600610067006E00010044004500
      4600410055004C0054005F004300480041005200530045005400010001000100
      0D000A006300780042007500740074006F006E00310001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00
      6300780042007500740074006F006E0032000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0062004F00
      4B000100440045004600410055004C0054005F00430048004100520053004500
      54000100010001000D000A00630078005300740079006C006500310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      01000D000A00630078005300740079006C006500320001004400450046004100
      55004C0054005F0043004800410052005300450054000100010001000D000A00
      630078005300740079006C00650033000100440045004600410055004C005400
      5F0043004800410052005300450054000100010001000D000A00630078005300
      740079006C00650034000100440045004600410055004C0054005F0043004800
      410052005300450054000100010001000D000A00630078005300740079006C00
      650035000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00630078005300740079006C00650036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      010001000D000A00630078005300740079006C00650037000100440045004600
      410055004C0054005F0043004800410052005300450054000100010001000D00
      0A00630078005300740079006C00650038000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A0063007800
      5300740079006C00650039000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A0063007800530074007900
      6C006500310030000100440045004600410055004C0054005F00430048004100
      52005300450054000100010001000D000A00630078005300740079006C006500
      310031000100440045004600410055004C0054005F0043004800410052005300
      450054000100010001000D000A00}
  end
end
