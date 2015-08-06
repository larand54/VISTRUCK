object fLOLengths: TfLOLengths
  Left = 404
  Top = 117
  Caption = 'LO l'#228'ngder'
  ClientHeight = 454
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = acAddLength
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = acRemoveLength
      TabOrder = 1
    end
    object lcGroupLengths: TcxDBLookupComboBox
      Left = 288
      Top = 12
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
      Width = 169
    end
    object cxButton3: TcxButton
      Left = 464
      Top = 8
      Width = 97
      Height = 25
      Action = acCopyLengthsFromSelectedLengthGroup
      TabOrder = 3
    end
    object cxLabel1: TcxLabel
      Left = 216
      Top = 16
      Caption = 'L'#228'ngdgrupp:'
      FocusControl = lcGroupLengths
    end
  end
  object grdLOLengths: TcxGrid
    Left = 0
    Top = 41
    Width = 567
    Height = 364
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
    Top = 405
    Width = 567
    Height = 49
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 224
      Top = 8
      Width = 83
      Height = 32
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
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
