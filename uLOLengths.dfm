object fLOLengths: TfLOLengths
  Left = 404
  Top = 117
  Caption = 'LO l'#228'ngder'
  ClientHeight = 559
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 50
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 92
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acAddLength
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 108
      Top = 10
      Width = 93
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acRemoveLength
      TabOrder = 1
    end
    object lcGroupLengths: TcxDBLookupComboBox
      Left = 354
      Top = 15
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'ALMM'
      DataBinding.DataSource = dsLengths
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GroupNo'
      Properties.ListColumns = <
        item
          FieldName = 'GroupName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 208
    end
    object cxButton3: TcxButton
      Left = 571
      Top = 10
      Width = 119
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Action = acCopyLengthsFromSelectedLengthGroup
      TabOrder = 3
    end
    object cxLabel1: TcxLabel
      Left = 266
      Top = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'L'#228'ngdgrupp:'
      FocusControl = lcGroupLengths
    end
  end
  object grdLOLengths: TcxGrid
    Left = 0
    Top = 50
    Width = 698
    Height = 448
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    object grdLOLengthsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmcOrder.ds_LOLengths
      DataController.KeyFieldNames = 'SupplierShipPlanObjectNo;ProductLengthNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLOLengthsDBTableView1ActualLengthMM: TcxGridDBColumn
        DataBinding.FieldName = 'ActualLengthMM'
        Visible = False
      end
      object grdLOLengthsDBTableView1ALMM: TcxGridDBColumn
        DataBinding.FieldName = 'ALMM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ProductLengthNo'
        Properties.ListColumns = <
          item
            FieldName = 'ActualLengthMM'
          end>
        Properties.ListOptions.ShowHeader = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object grdLOLengthsDBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierShipPlanObjectNo'
        Visible = False
      end
      object grdLOLengthsDBTableView1ProductLengthNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductLengthNo'
        Visible = False
      end
      object grdLOLengthsDBTableView1PkgCodePPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PkgCodePPNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdLOLengthsLevel1: TcxGridLevel
      GridView = grdLOLengthsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 498
    Width = 698
    Height = 61
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 276
      Top = 10
      Width = 102
      Height = 39
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 232
    Top = 96
    object acAddLength: TAction
      Caption = 'L'#228'g till'
      OnExecute = acAddLengthExecute
    end
    object acRemoveLength: TAction
      Caption = 'Ta bort'
      OnExecute = acRemoveLengthExecute
      OnUpdate = acRemoveLengthUpdate
    end
    object acCopyLengthsFromSelectedLengthGroup: TAction
      Caption = 'Kopiera l'#228'ngder'
      OnExecute = acCopyLengthsFromSelectedLengthGroupExecute
      OnUpdate = acCopyLengthsFromSelectedLengthGroupUpdate
    end
  end
  object mtLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 112
    object mtLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLengthsALMM: TStringField
      FieldKind = fkLookup
      FieldName = 'ALMM'
      LookupDataSet = dmsSystem.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'ProductLengthNo'
      Lookup = True
    end
  end
  object dsLengths: TDataSource
    DataSet = mtLengths
    Left = 40
    Top = 152
  end
  object sq_PGLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'GroupName'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct pl.ActualLengthMM, pl.ProductLengthNo'
      'FROM dbo.ProductLengthGroupName plgn'
      
        'Inner Join dbo.ProductLengthGroup plg on plg.GroupNo = plgn.Grou' +
        'pNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = plg.Prod' +
        'uctLengthNo'
      'WHERE plgn.GroupName = :GroupName'
      'Order By pl.ActualLengthMM')
    Left = 80
    Top = 112
    object sq_PGLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_PGLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object siLangLinked_fLOLengths: TsiLangLinked
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
    Left = 280
    Top = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C004F004C0065006E0067007400680073000100
      4C004F0020006C00E4006E0067006400650072000100010001000D000A006300
      78004C006100620065006C00310001004C00E4006E0067006400670072007500
      700070003A000100010001000D000A006700720064004C004F004C0065006E00
      6700740068007300440042005400610062006C00650056006900650077003100
      410063007400750061006C004C0065006E006700740068004D004D0001004100
      63007400750061006C004C0065006E006700740068004D004D00010001000100
      0D000A006700720064004C004F004C0065006E00670074006800730044004200
      5400610062006C0065005600690065007700310041004C004D004D0001004100
      4C004D004D000100010001000D000A006700720064004C004F004C0065006E00
      6700740068007300440042005400610062006C00650056006900650077003100
      53007500700070006C00690065007200530068006900700050006C0061006E00
      4F0062006A006500630074004E006F00010053007500700070006C0069006500
      7200530068006900700050006C0061006E004F0062006A006500630074004E00
      6F000100010001000D000A006700720064004C004F004C0065006E0067007400
      68007300440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      0D000A006700720064004C004F004C0065006E00670074006800730044004200
      5400610062006C0065005600690065007700310050006B00670043006F006400
      6500500050004E006F00010050006B00670043006F0064006500500050004E00
      6F000100010001000D000A00420069007400420074006E003100010026005300
      7400E4006E0067000100010001000D000A00610063004100640064004C006500
      6E0067007400680001004C00E40067002000740069006C006C00010001000100
      0D000A0061006300520065006D006F00760065004C0065006E00670074006800
      010054006100200062006F00720074000100010001000D000A00610063004300
      6F00700079004C0065006E006700740068007300460072006F006D0053006500
      6C00650063007400650064004C0065006E00670074006800470072006F007500
      700001004B006F007000690065007200610020006C00E4006E00670064006500
      72000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6D0074004C0065006E006700740068007300500072006F006400750063007400
      4C0065006E006700740068004E006F000100500072006F006400750063007400
      4C0065006E006700740068004E006F000100010001000D000A006D0074004C00
      65006E00670074006800730041004C004D004D00010041004C004D004D000100
      010001000D000A00730071005F00500047004C0065006E006700740068007300
      410063007400750061006C004C0065006E006700740068004D004D0001004100
      63007400750061006C004C0065006E006700740068004D004D00010001000100
      0D000A00730071005F00500047004C0065006E00670074006800730050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00540066004C004F004C0065006E00670074006800730001004D00
      53002000530061006E0073002000530065007200690066000100010001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A007300740053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00730074004F00740068006500
      720053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A006C006300470072006F0075007000
      4C0065006E0067007400680073002E00500072006F0070006500720074006900
      650073002E004C0069007300740043006F006C0075006D006E0073005B003000
      5D002E00430061007000740069006F006E000100470072006F00750070004E00
      61006D0065000100010001000D000A006700720064004C004F004C0065006E00
      6700740068007300440042005400610062006C00650056006900650077003100
      41004C004D004D002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E000100410063007400750061006C004C0065006E00
      6700740068004D004D000100010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A0054006600
      4C004F004C0065006E0067007400680073000100440045004600410055004C00
      54005F0043004800410052005300450054000100010001000D000A00}
  end
end
