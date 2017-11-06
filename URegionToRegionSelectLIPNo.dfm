object fRegionToRegionSelectLIPNo: TfRegionToRegionSelectLIPNo
  Left = 0
  Top = 0
  ActiveControl = lcVerk
  Caption = 'Select owner and inventory stock to store packages to'
  ClientHeight = 250
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 476
    Height = 57
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 120
      Top = 16
      Width = 97
      Height = 33
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 240
      Top = 16
      Width = 97
      Height = 33
      Caption = #197'ngra'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PanelLager: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 193
    Align = alClient
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 18
      Top = 49
      Caption = 'Lagerst'#228'lle:'
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 72
      Caption = 'Lagergrupp:'
    end
    object lcPIP: TcxDBLookupComboBox
      Left = 80
      Top = 44
      DataBinding.DataField = 'PIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      Width = 304
    end
    object lcLIP: TcxDBLookupComboBox
      Left = 80
      Top = 69
      DataBinding.DataField = 'LIP'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 304
    end
    object cxLabel3: TcxLabel
      Left = 18
      Top = 19
      Caption = #196'gare:'
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 79
      Top = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = dsProps
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 305
    end
    object cxLabel4: TcxLabel
      Left = 80
      Top = 98
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Select owner and inventory stock to store packages to'
    end
  end
  object cds_LO_LookUp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT '
      'CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo'
      'FROM dbo.CustomerShippingPlanHeader CSH'
      'WHERE'
      'CSH.ShippingPlanNo = :ShippingPlanNo')
    Left = 184
    Top = 136
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LO_LookUpLoadingPIPNo: TIntegerField
      FieldName = 'LoadingPIPNo'
      Origin = 'LoadingPIPNo'
    end
    object cds_LO_LookUpLoadingLIPNo: TIntegerField
      FieldName = 'LoadingLIPNo'
      Origin = 'LoadingLIPNo'
    end
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 89
    Top = 141
    object mtPropsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      OnChange = mtPropsOwnerNoChange
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNO'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      OnChange = mtPropsPIPNoChange
    end
    object mtPropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 89
    Top = 189
  end
  object ds_LIP2: TDataSource
    DataSet = cds_LIP
    Left = 368
    Top = 184
  end
  object ds_PIP2: TDataSource
    DataSet = cds_PIP
    Left = 288
    Top = 184
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT Distinct PH.PhysicalInventoryPointNo AS PIPNO, CY.CITYNAM' +
        'E AS ORT'
      'FROM'
      'PHYSICALINVENTORYPOINT PH, CITY CY, ClientRole CR'
      'WHERE'
      'PH.OwnerNo = :OwnerNo'
      'AND CY.CITYNO = PH.PhyInvPointNameNo'
      'AND CY.CITYNAME <> '#39'Transfer'#39
      'AND CR.ClientNo = PH.OwnerNo'
      'AND PH.SequenceNo = 1'
      ''
      ''
      'Order By  CY.CITYNAME')
    Left = 288
    Top = 128
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
  end
  object cds_LIP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT  Distinct LogicalInventoryPointNo AS LIPNo, LogicalInvent' +
        'oryName AS Lagergrupp'
      'FROM dbo.LOGICALINVENTORYPOINT'
      'WHERE'
      'PhysicalInventoryPointNo = :PIPNo'
      'AND SequenceNo = 1'
      ''
      'Order By LogicalInventoryName ')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_LIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
  end
  object siLangLinked_fSelectLIPNo: TsiLangLinked
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
      'PropertiesClassName')
    Left = 184
    Top = 200
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660052006500670069006F006E0054006F0052006500
      670069006F006E00530065006C006500630074004C00490050004E006F000100
      530065006C0065006300740020006F0077006E0065007200200061006E006400
      200069006E00760065006E0074006F00720079002000730074006F0063006B00
      200074006F002000730074006F007200650020007000610063006B0061006700
      65007300200074006F0001000100010001000D000A0063007800420075007400
      74006F006E00310001004F004B00010001004F004B00010001000D000A006300
      780042007500740074006F006E0032000100C5006E0067007200610001000100
      55006E0064006F00010001000D000A00630078004C006100620065006C003100
      01004C00610067006500720073007400E4006C006C0065003A0001004C006100
      67006500720073007400E4006C006C0065000100530074006F0063006B002000
      70006C0061006300650001004C00610067006500720073007400E4006C006C00
      650001000D000A00630078004C006100620065006C00320001004C0061006700
      65007200670072007500700070003A0001004C00610067006500720067007200
      7500700070000100530074006F0063006B002000670072006F00750070000100
      4C0061006700650072006700720075007000700001000D000A00630078004C00
      6100620065006C0033000100C40067006100720065003A000100C40067006100
      7200650001004F0077006E00650072000100C400670061007200650001000D00
      0A00630078004C006100620065006C0034000100530065006C00650063007400
      20006F0077006E0065007200200061006E006400200069006E00760065006E00
      74006F00720079002000730074006F0063006B00200074006F00200073007400
      6F007200650020007000610063006B006100670065007300200074006F000100
      0100010001000D000A0073007400480069006E00740073005F0055006E006900
      63006F00640065000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A006300
      640073005F004C004F005F004C006F006F006B00550070004C006F0061006400
      69006E0067005000490050004E006F0001004C006F006100640069006E006700
      5000490050004E006F0001000100010001000D000A006300640073005F004C00
      4F005F004C006F006F006B00550070004C006F006100640069006E0067004C00
      490050004E006F0001004C006F006100640069006E0067004C00490050004E00
      6F0001000100010001000D000A006D007400500072006F007000730046006100
      6B0074007500720061006E0072000100460061006B0074007500720061006E00
      72000100460061006B0074007500720061004E007200010049006E0076006F00
      6900630065004E006F000100460061006B0074007500720061004E0072000100
      0D000A006D007400500072006F00700073005000490050004E006F0001005000
      490050004E006F0001000100010001000D000A006D007400500072006F007000
      73004C00490050004E006F0001004C00490050004E006F000100010001000100
      0D000A006D007400500072006F00700073005000490050000100500049005000
      01000100010001000D000A006D007400500072006F00700073004C0049005000
      01004C004900500001000100010001000D000A006D007400500072006F007000
      73004F0077006E00650072004E006F0001004F0077006E00650072004E006F00
      01000100010001000D000A006300640073005F00500049005000500049005000
      4E006F0001005000490050004E006F0001000100010001000D000A0063006400
      73005F005000490050004F005200540001004F005200540001004F0052005400
      0100430049005400590001004F005200540001000D000A006300640073005F00
      4C00490050004C00490050004E006F0001004C00490050004E006F0001000100
      010001000D000A006300640073005F004C00490050004C004100470045005200
      4700520055005000500001004C00410047004500520047005200550050005000
      01000100530054004F0043004B002000470052004F0055005000010001000D00
      0A006D007400500072006F00700073005600650072006B000100560065007200
      6B00010001004D0069006C006C00010001000D000A006300640073005F005600
      650072006B0043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F0001000100010001000D000A006300640073005F0056006500
      72006B0043006C00690065006E0074004E0061006D006500010043006C006900
      65006E0074004E0061006D00650001000100010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      52006500670069006F006E0054006F0052006500670069006F006E0053006500
      6C006500630074004C00490050004E006F0001005400610068006F006D006100
      01005400610068006F006D00610001005400610068006F006D00610001005400
      610068006F006D00610001000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A005400660052006500670069006F006E0054006F0052006500
      670069006F006E00530065006C006500630074004C00490050004E006F000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      0D000A00}
  end
  object cds_Verk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from Client c'
      'where  SalesRegionNo = :SalesRegionNo')
    Left = 440
    Top = 128
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 440
    Top = 184
  end
end
