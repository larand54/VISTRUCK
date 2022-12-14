object dmsSortOrder: TdmsSortOrder
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 903
  Width = 1200
  object ds_SortOrder: TDataSource
    DataSet = cds_SortOrder
    OnDataChange = ds_SortOrderDataChange
    Left = 30
    Top = 64
  end
  object ds_SorOrdRow: TDataSource
    DataSet = cds_SorOrdRow
    OnDataChange = ds_SorOrdRowDataChange
    Left = 134
    Top = 64
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 414
    Top = 64
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 470
    Top = 64
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 296
    Top = 240
  end
  object ds_SORaw: TDataSource
    DataSet = cds_SORaw
    Left = 262
    Top = 64
  end
  object ds_AO: TDataSource
    DataSet = cds_AO
    Left = 678
    Top = 240
  end
  object ds_FeedBack: TDataSource
    DataSet = cds_FeedBack
    Left = 798
    Top = 728
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'VerkNo'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'PIPNo'
        DataType = ftInteger
      end
      item
        Name = 'LIPNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftInteger
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'CopyPcs'
        DataType = ftInteger
      end
      item
        Name = 'RunNo'
        DataType = ftInteger
      end
      item
        Name = 'ProducerNo'
        DataType = ftInteger
      end
      item
        Name = 'AutoColWidth'
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LengthOption'
        DataType = ftInteger
      end
      item
        Name = 'LengthGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'NewItemRow'
        DataType = ftInteger
      end
      item
        Name = 'RoleType'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 342
    Top = 464
    object mtPropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtPropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtPropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtPropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtPropsInputOption: TIntegerField
      FieldName = 'InputOption'
    end
    object mtPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtPropsRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtPropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
    end
    object mtPropsRunNo: TIntegerField
      FieldName = 'RunNo'
    end
    object mtPropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtPropsProducerNoChange
    end
    object mtPropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
    end
    object mtPropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object mtPropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
    end
    object mtPropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
    end
    object mtPropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
    end
    object mtPropsLengthGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGroup'
      LookupDataSet = cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
    object mtPropsREGPOINT: TStringField
      FieldKind = fkLookup
      FieldName = 'REGPOINT'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
    object mtPropsPRODUCER: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCER'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsOWNER: TStringField
      FieldKind = fkLookup
      FieldName = 'OWNER'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object mtPropsRoleType: TIntegerField
      FieldName = 'RoleType'
    end
    object mtPropsTimeUnit: TIntegerField
      FieldName = 'TimeUnit'
    end
    object mtPropsNoOfTop: TIntegerField
      FieldName = 'NoOfTop'
    end
    object mtPropsVisaKortStopp: TIntegerField
      FieldName = 'VisaKortStopp'
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 22
    Top = 384
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 86
    Top = 384
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 166
    Top = 384
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 342
    Top = 512
  end
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 246
    Top = 384
  end
  object ds_ProdInstruct: TDataSource
    DataSet = cds_ProdInstruct
    Left = 360
    Top = 168
  end
  object ds_SOLayout: TDataSource
    DataSet = cds_SOLayout
    Left = 122
    Top = 240
  end
  object ds_Products: TDataSource
    DataSet = cds_Products
    Left = 524
    Top = 384
  end
  object dsrcBooking: TDataSource
    DataSet = cdsBooking
    Left = 704
    Top = 384
  end
  object ds_SOVerkParams: TDataSource
    DataSet = cds_SOVerkParams
    Left = 592
    Top = 240
  end
  object ds_SOCngProd: TDataSource
    DataSet = cds_SOCngProd
    Left = 880
    Top = 248
  end
  object ds_SOLegoCost: TDataSource
    DataSet = cds_SOLegoCost
    Left = 432
    Top = 384
  end
  object ds_RawPIP: TDataSource
    DataSet = cds_RawPIP
    Left = 534
    Top = 64
  end
  object ds_RawLIP: TDataSource
    DataSet = cds_RawLIP
    Left = 606
    Top = 64
  end
  object ds_Raw: TDataSource
    DataSet = cds_Raw
    Left = 952
    Top = 248
  end
  object ds_SOoutput: TDataSource
    DataSet = cds_SOoutput
    Left = 920
    Top = 64
  end
  object ds_LOinAO: TDataSource
    DataSet = cds_LOinAO
    Left = 792
    Top = 384
  end
  object mtLengthFormat: TkbmMemTable
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
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1016
    Top = 112
    object mtLengthFormatLengthFormatNo: TSmallintField
      FieldName = 'LengthFormatNo'
    end
    object mtLengthFormatLengthFormat: TStringField
      FieldName = 'LengthFormat'
      Size = 10
    end
  end
  object mtVolumeFormat: TkbmMemTable
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
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1016
    Top = 16
    object mtVolumeFormatVolumeFormatNo: TSmallintField
      FieldName = 'VolumeFormatNo'
    end
    object mtVolumeFormatVolumeFormat: TStringField
      FieldName = 'VolumeFormat'
      Size = 10
    end
  end
  object dsLengthFormat: TDataSource
    DataSet = mtLengthFormat
    Left = 1016
    Top = 160
  end
  object dsVolumeFormat: TDataSource
    DataSet = mtVolumeFormat
    Left = 1016
    Top = 64
  end
  object mtSizeFormat: TkbmMemTable
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
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1096
    Top = 168
    object mtSizeFormatSizeFormatNo: TSmallintField
      FieldName = 'SizeFormatNo'
    end
    object mtSizeFormatSizeFormat: TStringField
      FieldName = 'SizeFormat'
      Size = 10
    end
  end
  object dsSizeFormat: TDataSource
    DataSet = mtSizeFormat
    Left = 1096
    Top = 216
  end
  object ds_LegoPris: TDataSource
    DataSet = cds_LegoPris
    Left = 1096
    Top = 64
  end
  object ds_UrlLayout: TDataSource
    DataSet = cds_UrlLayout
    Left = 408
    Top = 240
  end
  object ds_AOMall: TDataSource
    DataSet = cds_AOMall
    Left = 486
    Top = 240
  end
  object mtUrlaggProduct: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'UrlaggProductNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 984
    Top = 384
    object mtUrlaggProductUrlaggProductNo: TIntegerField
      FieldName = 'UrlaggProductNo'
    end
    object mtUrlaggProductUrlaggProdukt: TStringField
      FieldKind = fkLookup
      FieldName = 'UrlaggProdukt'
      LookupDataSet = cds_FindUrlagg
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'UrlaggProductNo'
      Size = 113
      Lookup = True
    end
  end
  object ds_SOShift: TDataSource
    DataSet = cds_SOShift
    Left = 1088
    Top = 384
  end
  object mtRawMtrl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'RawMtrlProductNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 1096
    Top = 112
    object mtRawMtrlRawMtrlProductNo: TIntegerField
      FieldName = 'RawMtrlProductNo'
    end
    object mtRawMtrlRawProdukt: TStringField
      FieldKind = fkLookup
      FieldName = 'RawProdukt'
      LookupDataSet = cds_FindRaw
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'RawMtrlProductNo'
      Size = 111
      Lookup = True
    end
  end
  object mtPkgNos: TkbmMemTable
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
    Version = '7.83.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 344
    Top = 576
    object mtPkgNosPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtPkgNosLevKod: TStringField
      FieldName = 'LevKod'
      Size = 3
    end
  end
  object FD_SortOrderRawSum: TFDQuery
    OnCalcFields = FD_SortOrderRawSumCalcFields
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortOrderRawSum'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 968
    Top = 592
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SortOrderRawSumSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderRawSumProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderRawSumRawMtrlNo: TIntegerField
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderRawSumPieces: TIntegerField
      FieldName = 'Pieces'
      Origin = 'Pieces'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumUrlaggPcs: TIntegerField
      FieldName = 'UrlaggPcs'
      Origin = 'UrlaggPcs'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumLameller: TIntegerField
      FieldName = 'Lameller'
      Origin = 'Lameller'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumKapSnitt: TIntegerField
      FieldName = 'KapSnitt'
      Origin = 'KapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumExpectedPcsOut: TIntegerField
      FieldName = 'ExpectedPcsOut'
      Origin = 'ExpectedPcsOut'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
    end
    object FD_SortOrderRawSumABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
    end
    object FD_SortOrderRawSumALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FD_SortOrderRawSumSizePercentOfTotal: TFloatField
      FieldName = 'SizePercentOfTotal'
      Origin = 'SizePercentOfTotal'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderRawSumNTMM: TFloatField
      FieldName = 'NTMM'
      Origin = 'NTMM'
    end
    object FD_SortOrderRawSumNBMM: TFloatField
      FieldName = 'NBMM'
      Origin = 'NBMM'
    end
    object FD_SortOrderRawSumNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
    end
    object FD_SortOrderRawSumPercentAdjPcs: TFloatField
      FieldName = 'PercentAdjPcs'
      Origin = 'PercentAdjPcs'
    end
    object FD_SortOrderRawSumKassPcs: TFloatField
      FieldName = 'KassPcs'
      Origin = 'KassPcs'
    end
    object FD_SortOrderRawSumKassAM3: TFloatField
      FieldName = 'KassAM3'
      Origin = 'KassAM3'
    end
    object FD_SortOrderRawSumKassAM1: TFloatField
      FieldName = 'KassAM1'
      Origin = 'KassAM1'
    end
    object FD_SortOrderRawSumPricePerNM3: TFloatField
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
    end
    object FD_SortOrderRawSumProductValue: TFloatField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
    end
    object FD_SortOrderRawSumPcsAttAvrakna: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PcsAttAvrakna'
      Calculated = True
    end
    object FD_SortOrderRawSumAdjustedPieces: TIntegerField
      FieldName = 'AdjustedPieces'
      Origin = 'AdjustedPieces'
    end
    object FD_SortOrderRawSumAdjustedAM3: TFloatField
      FieldName = 'AdjustedAM3'
      Origin = 'AdjustedAM3'
    end
    object FD_SortOrderRawSumAdjustedNM3: TFloatField
      FieldName = 'AdjustedNM3'
      Origin = 'AdjustedNM3'
    end
    object FD_SortOrderRawSumAdjustedAM1: TFloatField
      FieldName = 'AdjustedAM1'
      Origin = 'AdjustedAM1'
    end
  end
  object FD_NewPkgSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '    SELECT DISTINCT'
      #9'  PL.ActualLengthMM,'
      #9'  PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM,'
      '    SUM(PTD.m3Actual) AS AM3,'
      '    SUM(PTD.m3Nominal) AS NM3,'
      '    SUM(PTD.NoOfPieces) AS STYCK,'
      #9'  SUM(PTD.LinealMeterActualLength) AS AM1,'
      '    PG.SurfacingNo,'
      '    SOR.Urlagg,'
      '    SOR.MCClassNo'
      ''
      '    FROM'
      '    dbo.SortingOrderNewPkgs SORP'
      
        '    LEFT OUTER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrderN' +
        'o = SORP.SortingOrderNo'
      
        '                                    AND SOR.SortingOrderRowNo = ' +
        'SORP.SortingOrderRowNo'
      
        '    INNER JOIN dbo.PackageType P ON P.PackageTypeNo = SORP.Packa' +
        'geTypeNo'
      
        #9'  INNER JOIN dbo.PackageTypeDetail PTD ON PTD.PackageTypeNo = P' +
        '.PackageTypeNo'
      
        #9'  INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.P' +
        'roductLengthNo'
      ''
      ''
      '    INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      
        #9'  INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = PR.Prod' +
        'uctGroupNo'
      ''
      '    WHERE'
      '    SORP.SortingOrderNo = :SortingOrderNo'
      ''
      #9'  Group By PL.ActualLengthMM,'
      #9'  PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM,'
      '    PG.SurfacingNo,'
      '    SOR.Urlagg,'
      '    SOR.MCClassNo')
    Left = 880
    Top = 432
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_NewPkgSumActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object FD_NewPkgSumActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object FD_NewPkgSumActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object FD_NewPkgSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object FD_NewPkgSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object FD_NewPkgSumSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object FD_NewPkgSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
    end
    object FD_NewPkgSumSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object FD_NewPkgSumUrlagg: TIntegerField
      FieldName = 'Urlagg'
      Origin = 'Urlagg'
    end
    object FD_NewPkgSumMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
  end
  object FD_GenRawSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'CREATE TABLE #SortOrderRawSum('
      #9'[SortingOrderNo] [int] NOT NULL,'
      #9'[ProductNo] [int] NOT NULL,'
      #9'[RawMtrlNo] [int] NOT NULL,'
      #9'[Pieces] [int] NULL,'
      #9'[AM3] [float] NULL,'
      #9'[NM3] [float] NULL,'
      #9'[AM1] [float] NULL,'
      #9'[UrlaggPcs] [int] NULL,'
      #9'[FDjustedPieces] [int] NULL,'
      #9'[FDjustedAM3] [float] NULL,'
      #9'[FDjustedNM3] [float] NULL,'
      #9'[FDjustedAM1] [float] NULL,'
      #9'[Lameller] [int] NULL,'
      #9'[KapSnitt] [int] NULL,'
      #9'[ExpectedPcsOut] [int] NULL,'
      #9'[ATMM] [float] NULL,'
      #9'[ABMM] [float] NULL,'
      #9'[ALMM] [float] NOT NULL,'
      #9'[NTMM] [float] NULL,'
      #9'[NBMM] [float] NULL,'
      #9'[NLMM] [float] NOT NULL,'
      #9'[SizePercentOfTotal] [float] NULL,'
      #9'[PercentAdjPcs] [float] NULL,'
      #9'[KassPcs] [float] NULL,'
      #9'[KassAM3] [float] NULL,'
      #9'[KassAM1] [float] NULL,'
      #9'[PricePerNM3][float] NULL,'
      #9'[ProductValue][float] NULL)'
      ''
      'Insert into #SortOrderRawSum'
      'SELECT DISTINCT'
      'SORP.SortingOrderNo,'
      'P.ProductNo,'
      'SUP.RawMtrlNo,'
      'SUM(PTD.NoOfPieces)'#9#9#9'  AS'#9'STYCK,'
      'SUM(PTD.m3Actual)'#9#9#9'    AS '#9'AM3,'
      'SUM(PTD.m3Nominal)'#9#9#9'  AS '#9'NM3,'
      'SUM(PTD.LinealMeterActualLength) AS AM1,'
      ''
      '0 AS UrlaggPcs,'
      '0 AS FDjustedPieces,'
      '0 AS FDjustedAM3,'
      '0 AS FDjustedNM3,'
      '0 AS FDjustedAM1,'
      '0 AS Lameller,'
      '0 AS KapSnitt,'
      '0 AS ExpectedPcsOut,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PL.ActualLengthMM,'
      'PG.NominalThicknessMM,'
      'PG.NominalWidthMM,'
      'PL.NominalLengthMM,'
      ''
      ''
      
        '1.0 * SUM(PTD.NoOfPieces) / -- TotalPieces of such thickness, wi' +
        'dth and length'
      '(Select SUM(PTD2.NoOfPieces) FROM'
      'dbo.SortingOrderUsedPkgs SORP2'
      
        'Inner Join dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD2 on PTD2.PackageTypeNo = P2' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL2 ON PL2.ProductLengthNo = PTD2.P' +
        'roductLengthNo'
      'INNER JOIN dbo.Product PR2 ON PR2.ProductNo = P2.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG2 ON PG2.ProductGroupNo = PR2.Prod' +
        'uctGroupNo'
      'WHERE'
      'SORP2.SortingOrderNo = SORP.SortingOrderNo'
      'AND PG2.ActualThicknessMM = PG.ActualThicknessMM'
      'and PG2.ActualWidthMM = PG.ActualWidthMM'
      
        'and PL2.ActualLengthMM = PL.ActualLengthMM) AS SizePercentOfTota' +
        'l,'
      ''
      '0 AS PercentAdjPcs, 0, 0, 0, 0,0'
      ''
      'FROM'
      'dbo.SortingOrderUsedPkgs SORP'
      
        'Inner Join dbo.PackageType P ON P.PackageTypeNo = SORP.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = p.Pa' +
        'ckageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG'#9#9'ON'#9'PG.ProductGroupNo = PR.Produc' +
        'tGroupNo'
      ''
      
        'Left Outer Join dbo.SortingOrderRawMtrl sup on sup.SortingOrderN' +
        'o = SORP.SortingOrderNo'
      'AND sup.ProductNo = P.ProductNo'
      'WHERE SUP.RawMtrlNo is not null'
      'and SORP.SortingOrderNo = :SortingOrderNo'
      ''
      'Group by SORP.SortingOrderNo,'
      'P.ProductNo,'
      'SUP.RawMtrlNo,'
      'PG.ActualThicknessMM,'
      'PG.ActualWidthMM,'
      'PL.ActualLengthMM,'
      'PG.NominalThicknessMM,'
      'PG.NominalWidthMM,'
      'PL.NominalLengthMM'
      ''
      ''
      ''
      ''
      ''
      
        'Delete dbo.SortOrderRawSum where SortingOrderNo = :SortingOrderN' +
        'o'
      ''
      'Insert into dbo.SortOrderRawSum'
      'Select * FROM #SortOrderRawSum'
      ''
      ''
      'Drop Table #SortOrderRawSum')
    Left = 1088
    Top = 696
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FD_RawSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PR.ProductDisplayName,'
      'SORS.SortingOrderNo,'
      'SORS.ProductNo,'
      'SORS.RawMtrlNo,'
      'SORS.Pieces'#9#9#9'  AS'#9'STYCK,'
      'SORS.AM3'#9#9#9'    AS '#9'AM3,'
      'SORS.NM3'#9#9#9'  AS '#9'NM3,'
      'SORS.AM1 AS AM1,'
      'SORS.UrlaggPcs AS UrlaggPcs,'
      'SORS.ADjustedPieces AS ADjustedPieces,'
      'SORS.ADjustedAM3 AS ADjustedAM3,'
      'SORS.ADjustedNM3 AS ADjustedNM3,'
      'SORS.ADjustedAM1 AS ADjustedAM1,'
      'SORS.Lameller AS Lameller,'
      'SORS.KapSnitt AS KapSnitt,'
      'SORS.ExpectedPcsOut AS ExpectedPcsOut,'
      'SORS.ATMM,'
      'SORS.ABMM,'
      'SORS.ALMM,'
      'SORS.NTMM,'
      'SORS.NBMM,'
      'SORS.NLMM,'
      'SORS.SizePercentOfTotal,'
      'SORS.PercentAdjPcs,'
      'SORS.KassPcs,'
      'SORS.KassAM3,'
      'SORS.KassAM1,'
      'SORS.PricePerNM3,'
      'SORS.ProductValue'
      ''
      'FROM'
      'dbo.SortOrderRawSum SORS'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = SORS.ProductNo'
      ''
      'WHERE SORS.SortingOrderNo = :SortingOrderNo')
    Left = 984
    Top = 536
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_RawSumProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ProviderFlags = []
      Size = 100
    end
    object FD_RawSumSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawSumProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawSumRawMtrlNo: TIntegerField
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawSumSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumUrlaggPcs: TIntegerField
      DisplayLabel = 'Styck url'#228'gg'
      FieldName = 'UrlaggPcs'
      Origin = 'UrlaggPcs'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumLameller: TIntegerField
      FieldName = 'Lameller'
      Origin = 'Lameller'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumKapSnitt: TIntegerField
      DisplayLabel = 'Kapsnitt'
      FieldName = 'KapSnitt'
      Origin = 'KapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumExpectedPcsOut: TIntegerField
      DisplayLabel = 'F'#246'rv'#228'ntat styck ut'
      FieldName = 'ExpectedPcsOut'
      Origin = 'ExpectedPcsOut'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_RawSumNTMM: TFloatField
      FieldName = 'NTMM'
      Origin = 'NTMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumNBMM: TFloatField
      FieldName = 'NBMM'
      Origin = 'NBMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_RawSumSizePercentOfTotal: TFloatField
      FieldName = 'SizePercentOfTotal'
      Origin = 'SizePercentOfTotal'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
    end
    object FD_RawSumPercentAdjPcs: TFloatField
      FieldName = 'PercentAdjPcs'
      Origin = 'PercentAdjPcs'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumKassPcs: TFloatField
      FieldName = 'KassPcs'
      Origin = 'KassPcs'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumKassAM3: TFloatField
      FieldName = 'KassAM3'
      Origin = 'KassAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumKassAM1: TFloatField
      FieldName = 'KassAM1'
      Origin = 'KassAM1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumPricePerNM3: TFloatField
      DisplayLabel = 'Pris'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumProductValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_RawSumADjustedPieces: TIntegerField
      FieldName = 'ADjustedPieces'
      Origin = 'ADjustedPieces'
    end
    object FD_RawSumADjustedAM3: TFloatField
      FieldName = 'ADjustedAM3'
      Origin = 'ADjustedAM3'
    end
    object FD_RawSumADjustedNM3: TFloatField
      FieldName = 'ADjustedNM3'
      Origin = 'ADjustedNM3'
    end
    object FD_RawSumADjustedAM1: TFloatField
      FieldName = 'ADjustedAM1'
      Origin = 'ADjustedAM1'
    end
  end
  object FD_NewProduction: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '    SELECT DISTINCT'
      '    SORP.SortingOrderNo,'
      '    PR.ProductDisplayName AS Produkt,'
      #9'  PL.ActualLengthMM,'
      #9'  PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM,'
      '    SUM(PTD.m3Actual) AS AM3,'
      '    SUM(PTD.m3Nominal) AS NM3,'
      '    SUM(PTD.NoOfPieces) AS STYCK,'
      #9'  SUM(PTD.LinealMeterActualLength) AS AM1,'
      '    PG.SurfacingNo,'
      '    P.ProductNo,'
      '    SOR.Price AS Pris,'
      '    SOR.Price * SUM(PTD.m3Nominal) AS V'#228'rde'
      ''
      '    FROM'
      '    dbo.SortingOrderNewPkgs SORP'
      
        '    LEFT OUTER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrderN' +
        'o = SORP.SortingOrderNo'
      
        '                                    AND SOR.SortingOrderRowNo = ' +
        'SORP.SortingOrderRowNo'
      
        '    INNER JOIN dbo.PackageType P ON P.PackageTypeNo = SORP.Packa' +
        'geTypeNo'
      
        #9'  INNER JOIN dbo.PackageTypeDetail PTD ON PTD.PackageTypeNo = P' +
        '.PackageTypeNo'
      
        #9'  INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.P' +
        'roductLengthNo'
      ''
      ''
      '    INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      
        #9'  INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = PR.Prod' +
        'uctGroupNo'
      ''
      '    WHERE'
      '    SORP.SortingOrderNo = :SortingOrderNo'
      ''
      #9'  Group By PL.ActualLengthMM,'
      #9'  PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM,'
      '    PG.SurfacingNo,'
      '    PR.ProductDisplayName,'
      '    P.ProductNo,'
      '    SORP.SortingOrderNo,'
      '    SOR.Price')
    Left = 792
    Top = 576
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_NewProductionSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_NewProductionProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 100
    end
    object FD_NewProductionActualLengthMM: TFloatField
      DisplayLabel = 'ALMM'
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object FD_NewProductionActualThicknessMM: TFloatField
      DisplayLabel = 'AT'
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object FD_NewProductionActualWidthMM: TFloatField
      DisplayLabel = 'AB'
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object FD_NewProductionAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_NewProductionNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_NewProductionSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object FD_NewProductionAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_NewProductionSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object FD_NewProductionProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object FD_NewProductionVrde: TFloatField
      FieldName = 'V'#228'rde'
      Origin = '[V'#228'rde]'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FD_NewProductionPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      Precision = 18
      Size = 2
    end
  end
  object cds_SortOrder: TFDQuery
    AfterInsert = cds_SortOrderAfterInsert
    BeforePost = cds_SortOrderBeforePost
    AfterScroll = cds_SortOrderAfterScroll
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SO.*, SO.RealProductionTime / 60 AS ProdTimeHour,'
      'SO.StopTime / 60 AS StopTimeHour,'
      'SO.StopTimeNotIncl / 60 AS StopTimeNotInclHour,'
      'SO.Postningstid / 60 AS PostTimeHour'
      'FROM dbo.SortingOrder SO'
      ''
      'WHERE (SO.SortingOrderNo = :SortingOrderNo)'
      '')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SortOrderSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SortOrderPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      OnChange = cds_SortOrderPIPNoChange
    end
    object cds_SortOrderLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_SortOrderStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_SortOrderEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_SortOrderComments: TMemoField
      FieldName = 'Comments'
      Origin = 'Comments'
      BlobType = ftMemo
    end
    object cds_SortOrderPlannedProductionTime: TFMTBCDField
      FieldName = 'PlannedProductionTime'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderStopTime: TIntegerField
      FieldName = 'StopTime'
      Origin = 'StopTime'
    end
    object cds_SortOrderDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SortOrderCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SortOrderPrioNo: TIntegerField
      FieldName = 'PrioNo'
      Origin = 'PrioNo'
    end
    object cds_SortOrderPercentTrimloss: TFMTBCDField
      FieldName = 'PercentTrimloss'
      Origin = 'PercentTrimloss'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderMCClassNo: TIntegerField
      DisplayLabel = 'Delas f'#246're hyvling'
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
    object cds_SortOrderMoveToLIPNo: TIntegerField
      FieldName = 'MoveToLIPNo'
      Origin = 'MoveToLIPNo'
    end
    object cds_SortOrderShiftNo: TIntegerField
      FieldName = 'ShiftNo'
      Origin = 'ShiftNo'
    end
    object cds_SortOrderTypeOfRunNo: TIntegerField
      FieldName = 'TypeOfRunNo'
      Origin = 'TypeOfRunNo'
    end
    object cds_SortOrderResponsibleUser: TIntegerField
      FieldName = 'ResponsibleUser'
      Origin = 'ResponsibleUser'
      OnChange = cds_SortOrderResponsibleUserChange
    end
    object cds_SortOrderAnsvarigSaljareNo: TIntegerField
      FieldName = 'AnsvarigSaljareNo'
      Origin = 'AnsvarigSaljareNo'
    end
    object cds_SortOrderAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
    end
    object cds_SortOrderKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
    end
    object cds_SortOrderSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
      Origin = 'SizeFormat'
    end
    object cds_SortOrderLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_SortOrderRawMtrlPcs: TIntegerField
      FieldName = 'RawMtrlPcs'
      Origin = 'RawMtrlPcs'
    end
    object cds_SortOrderProductionPcs: TIntegerField
      FieldName = 'ProductionPcs'
      Origin = 'ProductionPcs'
    end
    object cds_SortOrderAntalKapSnitt: TIntegerField
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
    end
    object cds_SortOrderTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
      Origin = 'TotalPcs'
    end
    object cds_SortOrderStopTimeNotIncl: TIntegerField
      FieldName = 'StopTimeNotIncl'
      Origin = 'StopTimeNotIncl'
    end
    object cds_SortOrderLego: TIntegerField
      FieldName = 'Lego'
      Origin = 'Lego'
    end
    object cds_SortOrderRawPIPNo: TIntegerField
      FieldName = 'RawPIPNo'
      Origin = 'RawPIPNo'
      OnChange = cds_SortOrderRawPIPNoChange
    end
    object cds_SortOrderRawLIPNo: TIntegerField
      FieldName = 'RawLIPNo'
      Origin = 'RawLIPNo'
    end
    object cds_SortOrderSeqNo: TIntegerField
      FieldName = 'SeqNo'
      Origin = 'SeqNo'
    end
    object cds_SortOrderHyvelInfo: TMemoField
      FieldName = 'HyvelInfo'
      Origin = 'HyvelInfo'
      BlobType = ftMemo
    end
    object cds_SortOrderPrintRawMtrlPart: TIntegerField
      FieldName = 'PrintRawMtrlPart'
      Origin = 'PrintRawMtrlPart'
    end
    object cds_SortOrderTemplate: TIntegerField
      FieldName = 'Template'
      Origin = 'Template'
    end
    object cds_SortOrderTemplateName: TStringField
      FieldName = 'TemplateName'
      Origin = 'TemplateName'
      Size = 50
    end
    object cds_SortOrderTemplateUser: TIntegerField
      FieldName = 'TemplateUser'
      Origin = 'TemplateUser'
    end
    object cds_SortOrderAnsvarig: TStringField
      FieldKind = fkLookup
      FieldName = 'Ansvarig'
      LookupDataSet = dmsContact.cds_Users
      LookupKeyFields = 'UserID'
      LookupResultField = 'Namn'
      KeyFields = 'ResponsibleUser'
      Size = 32
      Lookup = True
    end
    object cds_SortOrderAnsvarigSaljare: TStringField
      FieldKind = fkLookup
      FieldName = 'AnsvarigSaljare'
      LookupDataSet = dmsContact.cds_Users
      LookupKeyFields = 'UserID'
      LookupResultField = 'Namn'
      KeyFields = 'AnsvarigSaljareNo'
      Size = 32
      Lookup = True
    end
    object cds_SortOrderPIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'PIPName'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_SortOrderLIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'LIPName'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
    object cds_SortOrderTypeOfRunName: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeOfRunName'
      LookupDataSet = dmsContact.cds_TypeOfRun
      LookupKeyFields = 'TypeOfRunNo'
      LookupResultField = 'TypeOfRunName'
      KeyFields = 'TypeOfRunNo'
      Lookup = True
    end
    object cds_SortOrderRawPIPName: TStringField
      FieldKind = fkLookup
      FieldName = 'RawPIPName'
      LookupDataSet = cds_RawPIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'RawPIPNo'
      Size = 50
      Lookup = True
    end
    object cds_SortOrderRawLipName: TStringField
      FieldKind = fkLookup
      FieldName = 'RawLipName'
      LookupDataSet = cds_RawLIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'RawLIPNo'
      Size = 50
      Lookup = True
    end
    object cds_SortOrderProdTimeHour: TFMTBCDField
      FieldName = 'ProdTimeHour'
      Origin = 'ProdTimeHour'
      ProviderFlags = []
      OnChange = cds_SortOrderProdTimeHourChange
      DisplayFormat = '####.00'
      Precision = 23
      Size = 6
    end
    object cds_SortOrderStopTimeHour: TIntegerField
      FieldName = 'StopTimeHour'
      Origin = 'StopTimeHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
    end
    object cds_SortOrderStopTimeNotInclHour: TIntegerField
      FieldName = 'StopTimeNotInclHour'
      Origin = 'StopTimeNotInclHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
    end
    object cds_SortOrderPostTimeHour: TFMTBCDField
      FieldName = 'PostTimeHour'
      Origin = 'PostTimeHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
      Precision = 21
      Size = 6
    end
    object cds_SortOrderManualProdTime: TIntegerField
      FieldName = 'ManualProdTime'
      Origin = 'ManualProdTime'
    end
    object cds_SortOrderProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderVP_ProductCodePrefix: TStringField
      FieldName = 'VP_ProductCodePrefix'
      Origin = 'VP_ProductCodePrefix'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SortOrderVP_ProductCodePrefixChange
      Size = 2
    end
    object cds_SortOrderProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
    end
    object cds_SortOrderRealStartTime: TSQLTimeStampField
      FieldName = 'RealStartTime'
      Origin = 'RealStartTime'
    end
    object cds_SortOrderRealEndTime: TSQLTimeStampField
      FieldName = 'RealEndTime'
      Origin = 'RealEndTime'
    end
    object cds_SortOrderRealProductionTime: TFMTBCDField
      FieldName = 'RealProductionTime'
      Origin = 'RealProductionTime'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderWeekNo: TStringField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      Size = 2
    end
    object cds_SortOrderYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
    end
    object cds_SortOrderYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
    object cds_SortOrderChipsM3Solid: TFMTBCDField
      FieldName = 'ChipsM3Solid'
      Origin = 'ChipsM3Solid'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderChipsValue: TFMTBCDField
      FieldName = 'ChipsValue'
      Origin = 'ChipsValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderRawMtrlCost: TFMTBCDField
      FieldName = 'RawMtrlCost'
      Origin = 'RawMtrlCost'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderRawMtrlAM3: TFMTBCDField
      FieldName = 'RawMtrlAM3'
      Origin = 'RawMtrlAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderProductionCost: TFMTBCDField
      FieldName = 'ProductionCost'
      Origin = 'ProductionCost'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderProductionAM3: TFMTBCDField
      FieldName = 'ProductionAM3'
      Origin = 'ProductionAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderCostPerAM3: TFMTBCDField
      FieldName = 'CostPerAM3'
      Origin = 'CostPerAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderSawdustM3Solid: TFMTBCDField
      FieldName = 'SawdustM3Solid'
      Origin = 'SawdustM3Solid'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderSawdustValue: TFMTBCDField
      FieldName = 'SawdustValue'
      Origin = 'SawdustValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderNoOfWorkers: TFMTBCDField
      FieldName = 'NoOfWorkers'
      Origin = 'NoOfWorkers'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderPostningstid: TFMTBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderNoOfWorkersPostning: TFMTBCDField
      FieldName = 'NoOfWorkersPostning'
      Origin = 'NoOfWorkersPostning'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderAvkapAM3: TFMTBCDField
      FieldName = 'AvkapAM3'
      Origin = 'AvkapAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderAvkapLPM: TFMTBCDField
      FieldName = 'AvkapLPM'
      Origin = 'AvkapLPM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderKassationAM3: TFMTBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderKassationLPM: TFMTBCDField
      FieldName = 'KassationLPM'
      Origin = 'KassationLPM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderAvkapValue: TFMTBCDField
      FieldName = 'AvkapValue'
      Origin = 'AvkapValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderKassationValue: TFMTBCDField
      FieldName = 'KassationValue'
      Origin = 'KassationValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderTotalSalaryCost: TFMTBCDField
      FieldName = 'TotalSalaryCost'
      Origin = 'TotalSalaryCost'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderFeedSpeed: TFMTBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderRawMtrlAM1: TFMTBCDField
      FieldName = 'RawMtrlAM1'
      Origin = 'RawMtrlAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderProductionAM1: TFMTBCDField
      FieldName = 'ProductionAM1'
      Origin = 'ProductionAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderProductionValue: TFMTBCDField
      FieldName = 'ProductionValue'
      Origin = 'ProductionValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderTotalValue: TFMTBCDField
      FieldName = 'TotalValue'
      Origin = 'TotalValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderTotalAM3: TFMTBCDField
      FieldName = 'TotalAM3'
      Origin = 'TotalAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderTotalAM1: TFMTBCDField
      FieldName = 'TotalAM1'
      Origin = 'TotalAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderTotalCost: TFMTBCDField
      FieldName = 'TotalCost'
      Origin = 'TotalCost'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResultAO: TFMTBCDField
      FieldName = 'ResultAO'
      Origin = 'ResultAO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderCostPerAM1: TFMTBCDField
      FieldName = 'CostPerAM1'
      Origin = 'CostPerAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderAvgRawMtrlPriceAM3: TFMTBCDField
      FieldName = 'AvgRawMtrlPriceAM3'
      Origin = 'AvgRawMtrlPriceAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderAvgProductPriceAM3: TFMTBCDField
      FieldName = 'AvgProductPriceAM3'
      Origin = 'AvgProductPriceAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderAvgProductPriceAM1: TFMTBCDField
      FieldName = 'AvgProductPriceAM1'
      Origin = 'AvgProductPriceAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderAvgRawMtrlPriceAM1: TFMTBCDField
      FieldName = 'AvgRawMtrlPriceAM1'
      Origin = 'AvgRawMtrlPriceAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderEfficiencyFactor: TFMTBCDField
      FieldName = 'EfficiencyFactor'
      Origin = 'EfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderLegoCostPerAM3: TFMTBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 1
    end
    object cds_SortOrderRealLpmMinute: TFMTBCDField
      FieldName = 'RealLpmMinute'
      Origin = 'RealLpmMinute'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 1
    end
    object cds_SortOrderAvgProductPriceNM3: TFMTBCDField
      FieldName = 'AvgProductPriceNM3'
      Origin = 'AvgProductPriceNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderAvgRawMtrlPriceNM3: TFMTBCDField
      FieldName = 'AvgRawMtrlPriceNM3'
      Origin = 'AvgRawMtrlPriceNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderProductionNM3: TFMTBCDField
      FieldName = 'ProductionNM3'
      Origin = 'ProductionNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderRawMtrlNM3: TFMTBCDField
      FieldName = 'RawMtrlNM3'
      Origin = 'RawMtrlNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderSalaryCostPerHour: TFMTBCDField
      FieldName = 'SalaryCostPerHour'
      Origin = 'SalaryCostPerHour'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderEfficiencyFactorWOStopptime: TFMTBCDField
      FieldName = 'EfficiencyFactorWOStopptime'
      Origin = 'EfficiencyFactorWOStopptime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderCostPerNM3: TFMTBCDField
      FieldName = 'CostPerNM3'
      Origin = 'CostPerNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderPreCalcEfficiencyFactor: TFMTBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderRawMtrlNM3NoOmSort: TFMTBCDField
      FieldName = 'RawMtrlNM3NoOmSort'
      Origin = 'RawMtrlNM3NoOmSort'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
  end
  object FD_GenRawSum_II: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      
        'Update dbo.SortOrderRawSum Set ADjustedPieces = Pieces - UrlaggP' +
        'cs'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 1088
    Top = 536
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_GenSOoutput: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '-- temp'
      'Declare @TotalFinProdAM3 float,'
      '@TotalRawMtrlAM3 float,'
      '@TotalRawMtrlPcs int,'
      '@TotalRawMtrlAM1 float'
      ''
      'Select @TotalRawMtrlPcs = SUM(P2.TotalNoOfPieces),'
      '@TotalRawMtrlAM3 = SUM(P2.Totalm3Actual),'
      '@TotalRawMtrlAM1 = SUM(P2.TotalLinealMeterActualLength)'
      'FROM'
      'dbo.SortingOrderUsedPkgs SORP2'
      
        'Inner Join dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      ''
      'WHERE'
      'SORP2.SortingOrderNo = :SortingOrderNo'
      ''
      'SELECT @TotalFinProdAM3 = SUM(P2.Totalm3Actual)'
      'FROM'
      'dbo.SortingOrderNewPkgs SORP2'
      
        'INNER JOIN dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      'INNER JOIN dbo.Product PR2 ON PR2.ProductNo = P2.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG2 ON PG2.ProductGroupNo = PR2.Prod' +
        'uctGroupNo'
      'WHERE'
      'SORP2.SortingOrderNo = :SortingOrderNo'
      ''
      ''
      
        'Delete dbo.SortingOrderOutput where SortingOrderNo = :SortingOrd' +
        'erNo'
      ''
      'Insert dbo.SortingOrderOutput'
      ''
      ''
      
        'SELECT SORP2.SortingOrderNo, P2.ProductNo, PR2.ProductDisplayNam' +
        'e,'
      'SUM(P2.Totalm3Actual),'
      'SUM(P2.TotalLinealMeterActualLength),'
      'SUM(P2.Totalm3Nominal),'
      'SUM(P2.TotalNoOfPieces),'
      'CASE WHEN @TotalFinProdAM3 > 0 THEN'
      'SUM(P2.Totalm3Actual) / @TotalFinProdAM3 * 100'
      'END ,'
      ''
      'SUM(SOR.Price * P2.Totalm3Nominal) AS V'#228'rde,'
      'CASE WHEN SUM(P2.Totalm3Nominal) > 0 THEN'
      'SUM(SOR.Price * P2.Totalm3Nominal)/SUM(P2.Totalm3Nominal)'
      'ELSE'
      '0'
      'END AS AvgPricePerAM3,'
      'CASE WHEN @TotalRawMtrlAM3 > 0 THEN'
      'SUM(P2.Totalm3Actual) / @TotalRawMtrlAM3 * 100'
      'END AS OutturnPrice,'
      'SOR.ProductLengthNo'
      'FROM'
      'dbo.SortingOrderNewPkgs SORP2'
      
        'INNER JOIN dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      'INNER JOIN dbo.Product PR2 ON PR2.ProductNo = P2.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG2 ON PG2.ProductGroupNo = PR2.Prod' +
        'uctGroupNo'
      
        'Inner Join dbo.SortingOrderRow sor on sor.SortingOrderNo = SORP2' +
        '.SortingOrderNo'
      'and sor.SortingOrderRowNo = SORP2.SortingOrderRowNo'
      'WHERE'
      'SORP2.SortingOrderNo = :SortingOrderNo'
      ''
      
        'Group By P2.ProductNo, PR2.ProductDisplayName, SORP2.SortingOrde' +
        'rNo, SOR.ProductLengthNo'
      ''
      'Insert dbo.SortingOrderOutput'
      'Select RS.SortingOrderNo, -1 AS ProductNo,'
      #39'Kassation'#39' AS Produkt,'
      'SUM(RS.KassAM3),'
      'SUM(RS.KassAM1),'
      'SUM(RS.KassAM3),'
      'SUM(RS.KassPcs),'
      '0 AS OutturnVolume,'
      '--sov.AvkapPriceFM3 * SUM(RS.KassAM3)'
      '0 AS ProductValue,'
      '--sov.AvkapPriceFM3'
      '0 AS AvgPricePerAM3,'
      '--SUM(RS.KassAM3) / @TotalRawMtrlAM3'
      '0 AS OutturnPrice,'
      '-1 AS ProductLengthNo'
      'FROM dbo.SortOrderRawSum RS'
      
        'Inner Join dbo.SortingOrder sor on sor.SortingOrderNo = RS.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.SortingOrderVerkParams sov on sov.VerkNo = sor.Ow' +
        'nerNo'
      'WHERE RS.SortingOrderNo = :SortingOrderNo'
      'Group By RS.SortingOrderNo, sov.AvkapPriceFM3'
      ''
      'Insert dbo.SortingOrderOutput'
      'Select so.SortingOrderNo, -2 AS ProductNo,'
      #39'Sp'#229'n/avkap'#39' AS Produkt,'
      
        '@TotalRawMtrlAM3 - (Select SUM(AM3) FROM dbo.SortingOrderOutput ' +
        'So2'
      'WHERE SortingOrderNo = :SortingOrderNo'
      ') AS AM3,'
      '0,0,0,'
      ''
      '0 AS OutturnVolume,'
      ''
      'sov.SawdustPriceFM3 * (@TotalRawMtrlAM3'
      '- (Select SUM(AM3) FROM dbo.SortingOrderOutput So2'
      'WHERE SortingOrderNo = :SortingOrderNo)) AS ProductValue,'
      ''
      'sov.SawdustPriceFM3 AS AvgPricePerAM3,'
      ''
      'CASE WHEN @TotalRawMtrlAM3 > 0 THEN'
      
        '(@TotalRawMtrlAM3 - (Select SUM(AM3) FROM dbo.SortingOrderOutput' +
        ' So2'
      
        'WHERE SortingOrderNo = :SortingOrderNo)) / @TotalRawMtrlAM3 * 10' +
        '0'
      'END AS OutturnPrice,'
      ''
      '-1 AS ProductLengthNo'
      'FROM dbo.SortingOrderOutput so'
      
        'Inner Join dbo.SortingOrder sor on sor.SortingOrderNo = so.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.SortingOrderVerkParams sov on sov.VerkNo = sor.Ow' +
        'nerNo'
      'WHERE so.SortingOrderNo = :SortingOrderNo'
      'Group By so.SortingOrderNo, sov.SawdustPriceFM3')
    Left = 920
    Top = 120
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cds_SOoutput: TFDQuery
    AfterOpen = cds_SOoutputAfterOpen
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      'Select'
      'soup.ProductNo,'
      'soup.ProductDisplayName,'
      'SUM(soup.AM3) AS AM3,'
      'SUM(soup.AM1) AS AM1,'
      'SUM(soup.NM3) AS NM3,'
      'SUM(soup.Pcs) AS STYCK,'
      'SUM(soup.OutturnVolume) AS Utfall,'
      'SUM(soup.ProductValue) AS ProduktV'#228'rde,'
      ''
      'CASE WHEN SUM(soup.NM3) > 0 THEN'
      'SUM(soup.ProductValue) / SUM(soup.NM3)'
      'ELSE'
      ' CASE'
      ' WHEN soup.ProductNo < 1 THEN'
      '  (Select soup2.AvgPricePerAM3 from SortingOrderOutput soup2'
      #9'WHERE soup2.SortingOrderNo = soup.SortingOrderNo'
      #9#9'and soup2.ProductNo = soup.ProductNo)'
      ' ELSE'
      ' 0'
      'END'
      'END AS medelpris,'
      ''
      'SUM(soup.OutturnPrice) AS Prisutfall'
      ''
      'from dbo.SortingOrderOutput soup'
      'WHERE soup.SortingOrderNo = :SortingOrderNo'
      ''
      
        'Group By soup.ProductNo, soup.ProductDisplayName, soup.SortingOr' +
        'derNo')
    Left = 920
    Top = 16
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SOoutputProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOoutputProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_SOoutputSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_SOoutputAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SOoutputAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SOoutputNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SOoutputUtfall: TFMTBCDField
      DisplayLabel = 'Utfall %'
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object cds_SOoutputProduktVrde: TFMTBCDField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProduktV'#228'rde'
      Origin = '[ProduktV'#228'rde]'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object cds_SOoutputmedelpris: TFMTBCDField
      DisplayLabel = 'M-pris'
      FieldName = 'medelpris'
      Origin = 'medelpris'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 6
    end
    object cds_SOoutputPrisutfall: TFMTBCDField
      DisplayLabel = '% av r'#229'vara'
      FieldName = 'Prisutfall'
      Origin = 'Prisutfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
  end
  object cds_SorOrdRow: TFDQuery
    AfterInsert = cds_SorOrdRowAfterInsert
    BeforePost = cds_SorOrdRowBeforePost
    AfterPost = cds_SorOrdRowAfterPost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_SorOrdRowIndex01'
        Fields = 'SortingOrderNo'
      end>
    IndexName = 'cds_SorOrdRowIndex01'
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'SortingOrderRow'
    UpdateOptions.KeyFields = 'SortingOrderNo;SortingOrderRowNo'
    SQL.Strings = (
      'Select SOR.*, CSD.Reference AS M'#196'RKE,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdAM1,'
      ''
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdAM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderNewPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdPCS,'
      ''
      '(Select Count(SORP.PackageNo) FROM dbo.SortingOrderNewPkgs SORP'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdPKT,'
      ''
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderNewPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo) AS ProdNM3,'
      ''
      'SSP.ShippingPlanNo AS LONR,'
      'pg.SpeciesNo,'
      'pg.SurfacingNo,'
      'pd.ProductDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM,'
      
        'gd.GradeName AS Kvalitet, sc.SpeciesName AS Tr'#228'slag, sf.Surfacin' +
        'gName AS Utf'#246'rande,'
      
        'pc.ProductCategoryName AS IMP, pg.ActualThicknessMM AS AT, pg.Ac' +
        'tualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB'
      'FROM dbo.SortingOrderRow SOR'
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.ProductLengthNo'
      
        'Left Outer Join dbo.SupplierShippingPlan SSP on SSP.SupplierShip' +
        'PlanObjectNo = SOR.CSDNo'
      
        'Left Outer Join dbo.CustomerShippingPlanDetails CSD on CSD.CustS' +
        'hipPlanDetailObjectNo = SSP.CustShipPlanDetailObjectNo'
      'INNER JOIN      dbo.Product pd ON pd.ProductNo = SOR.ProductNo'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE SOR.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 136
    Top = 16
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SorOrdRowSortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rorder'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SorOrdRowSortingOrderRowNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SorOrdRowCSDNo: TIntegerField
      FieldName = 'CSDNo'
      Origin = 'CSDNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_SorOrdRowVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPPP: TIntegerField
      DisplayLabel = 'st/pkt'
      FieldName = 'PPP'
      Origin = 'PPP'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SorOrdRowPPPChange
    end
    object cds_SorOrdRowProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPcsIn: TFMTBCDField
      FieldName = 'PcsIn'
      Origin = 'PcsIn'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SorOrdRowAM1In: TFMTBCDField
      FieldName = 'AM1In'
      Origin = 'AM1In'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SorOrdRowTargetProduct: TIntegerField
      FieldName = 'TargetProduct'
      Origin = 'TargetProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPriceUnit: TIntegerField
      DisplayLabel = 'Prisenhet'
      FieldName = 'PriceUnit'
      Origin = 'PriceUnit'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPrio: TIntegerField
      FieldName = 'Prio'
      Origin = 'Prio'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowMark: TStringField
      DisplayLabel = 'M'#228'rkning'
      FieldName = 'Mark'
      Origin = 'Mark'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_SorOrdRowCustomer: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'Customer'
      Origin = 'Customer'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cds_SorOrdRowExportRow: TIntegerField
      DisplayLabel = 'Exportera'
      FieldName = 'ExportRow'
      Origin = 'ExportRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowSortOrder: TIntegerField
      FieldName = 'SortOrder'
      Origin = 'SortOrder'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowNoteMark: TStringField
      FieldName = 'NoteMark'
      Origin = 'NoteMark'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_SorOrdRowNoteStamp: TStringField
      FieldName = 'NoteStamp'
      Origin = 'NoteStamp'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_SorOrdRowLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowLanguagecode: TIntegerField
      FieldName = 'Languagecode'
      Origin = 'Languagecode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
      Origin = 'SizeFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
      Origin = 'VolumeFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowUrlagg: TIntegerField
      DisplayLabel = 'Url'#228'gg'
      FieldName = 'Urlagg'
      Origin = 'Urlagg'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowEndPkgAllowed: TIntegerField
      DisplayLabel = 'Slutpkt'
      FieldName = 'EndPkgAllowed'
      Origin = 'EndPkgAllowed'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPkgPrefix: TStringField
      DisplayLabel = 'Pktprefix'
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_SorOrdRowNotering: TStringField
      FieldName = 'Notering'
      Origin = 'Notering'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cds_SorOrdRowStickRecipe: TStringField
      DisplayLabel = 'Str'#246'recept'
      FieldName = 'StickRecipe'
      Origin = 'StickRecipe'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_SorOrdRowRefCopies: TIntegerField
      DisplayLabel = 'Ref.kopior'
      FieldName = 'RefCopies'
      Origin = 'RefCopies'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowStackerNo: TIntegerField
      FieldName = 'StackerNo'
      Origin = 'StackerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowAntalKapSnitt: TIntegerField
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowArtikelKod: TStringField
      DisplayLabel = 'Artikelkod'
      FieldName = 'ArtikelKod'
      Origin = 'ArtikelKod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_SorOrdRowProdAM1: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'ProdAM1'
      Origin = 'ProdAM1'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdAM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ProdAM3'
      Origin = 'ProdAM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'ProdPCS'
      Origin = 'ProdPCS'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cds_SorOrdRowProdPKT: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'ProdPKT'
      Origin = 'ProdPKT'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cds_SorOrdRowProdNM3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'ProdNM3'
      Origin = 'ProdNM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SorOrdRowLengthSpecChange
      Size = 15
    end
    object cds_SorOrdRowPrisEnhet: TStringField
      DisplayLabel = 'Prisenhet'
      FieldKind = fkLookup
      FieldName = 'PrisEnhet'
      LookupDataSet = cds_PriceUnit
      LookupKeyFields = 'TemplateUnitNo'
      LookupResultField = 'TemplateUnitName'
      KeyFields = 'PriceUnit'
      ProviderFlags = []
      Lookup = True
    end
    object cds_SorOrdRowMRKE: TStringField
      FieldName = 'M'#196'RKE'
      Origin = '[M'#196'RKE]'
      ProviderFlags = []
      Size = 30
    end
    object cds_SorOrdRowProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object cds_SorOrdRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_SorOrdRowSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_SorOrdRowLONR: TIntegerField
      FieldName = 'LONR'
      Origin = 'LONR'
      ProviderFlags = []
    end
    object cds_SorOrdRowALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_SorOrdRowLagergrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagergrupp'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_SorOrdRowPrislista: TStringField
      FieldKind = fkLookup
      FieldName = 'Prislista'
      LookupDataSet = cds_PriceList
      LookupKeyFields = 'TemplateNo'
      LookupResultField = 'PriceListName'
      KeyFields = 'PriceListNo'
      ProviderFlags = []
      Lookup = True
    end
    object cds_SorOrdRowLggare: TStringField
      FieldKind = fkLookup
      FieldName = 'L'#228'ggare'
      LookupDataSet = dmsContact.cds_Stacker
      LookupKeyFields = 'StackerNo'
      LookupResultField = 'StackerName'
      KeyFields = 'StackerNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_SorOrdRowKvalitet: TStringField
      FieldName = 'Kvalitet'
      Origin = 'Kvalitet'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cds_SorOrdRowTrslag: TStringField
      FieldName = 'Tr'#228'slag'
      Origin = '[Tr'#228'slag]'
      ProviderFlags = []
      Size = 30
    end
    object cds_SorOrdRowUtfrande: TStringField
      FieldName = 'Utf'#246'rande'
      Origin = '[Utf'#246'rande]'
      ProviderFlags = []
      Size = 30
    end
    object cds_SorOrdRowIMP: TStringField
      FieldName = 'IMP'
      Origin = 'IMP'
      ProviderFlags = []
    end
    object cds_SorOrdRowAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cds_SorOrdRowAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_SorOrdRowNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object cds_SorOrdRowNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object cds_SorOrdRowExcludeFromTotal: TIntegerField
      FieldName = 'ExcludeFromTotal'
      Origin = 'ExcludeFromTotal'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowVP_ProductCode: TStringField
      DisplayLabel = 'VP Produktkod'
      FieldName = 'VP_ProductCode'
      Origin = 'VP_ProductCode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPlannedPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PlannedPcs'
      Origin = 'PlannedPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowPlannedAM3: TFMTBCDField
      FieldName = 'PlannedAM3'
      Origin = 'PlannedAM3'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowNoOfUnits: TFMTBCDField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowCostDist: TFMTBCDField
      FieldName = 'CostDist'
      Origin = 'CostDist'
      Precision = 18
      Size = 2
    end
    object cds_SorOrdRowPrice: TFMTBCDField
      FieldName = 'Price'
      Origin = 'Price'
      Precision = 18
      Size = 2
    end
    object cds_SorOrdRowAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowOutturnOfInputAM3: TFMTBCDField
      FieldName = 'OutturnOfInputAM3'
      Origin = 'OutturnOfInputAM3'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowProductValue: TFMTBCDField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowPlannedNM3: TFMTBCDField
      FieldName = 'PlannedNM3'
      Origin = 'PlannedNM3'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowPrintGroupNo: TIntegerField
      FieldName = 'PrintGroupNo'
      Origin = 'PrintGroupNo'
    end
    object cds_SorOrdRowInfo1: TStringField
      FieldName = 'Info1'
      Origin = 'Info1'
      Size = 15
    end
    object cds_SorOrdRowInfo2: TStringField
      FieldName = 'Info2'
      Origin = 'Info2'
      Size = 15
    end
    object cds_SorOrdRowOriginalReferens: TStringField
      FieldName = 'OriginalReferens'
      Origin = 'OriginalReferens'
    end
    object cds_SorOrdRowGoodsMarks: TStringField
      FieldName = 'GoodsMarks'
      Origin = 'GoodsMarks'
    end
    object cds_SorOrdRowColorCode: TStringField
      FieldName = 'ColorCode'
      Origin = 'ColorCode'
      FixedChar = True
      Size = 1
    end
    object cds_SorOrdRowNT_U: TFloatField
      FieldName = 'NT_U'
      Origin = 'NT_U'
    end
    object cds_SorOrdRowNW_U: TFloatField
      FieldName = 'NW_U'
      Origin = 'NW_U'
    end
    object cds_SorOrdRowHeadLO: TIntegerField
      FieldName = 'HeadLO'
      Origin = 'HeadLO'
    end
    object cds_SorOrdRowLocalLO: TIntegerField
      FieldName = 'LocalLO'
      Origin = 'LocalLO'
    end
    object cds_SorOrdRowNoInventory: TIntegerField
      FieldName = 'NoInventory'
      Origin = 'NoInventory'
    end
    object cds_SorOrdRowMallsorno: TIntegerField
      FieldName = 'Mallsorno'
      Origin = 'Mallsorno'
    end
    object cds_SorOrdRowSubProduct: TIntegerField
      FieldName = 'SubProduct'
      Origin = 'SubProduct'
    end
    object cds_SorOrdRowGruppSpec: TIntegerField
      FieldName = 'GruppSpec'
      Origin = 'GruppSpec'
    end
    object cds_SorOrdRowGradeNamePrintOption: TIntegerField
      FieldName = 'GradeNamePrintOption'
      Origin = 'GradeNamePrintOption'
    end
    object cds_SorOrdRowPkgArticleNo: TIntegerField
      FieldName = 'PkgArticleNo'
      Origin = 'PkgArticleNo'
    end
  end
  object cds_SORaw: TFDQuery
    AfterInsert = cds_SORawAfterInsert
    BeforePost = cds_SORawBeforePost
    OnCalcFields = cds_SORawCalcFields
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.RawMtrlBookedDtl'
    SQL.Strings = (
      'Select SOR.*,'
      ''
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.BookedProductNo) AS AM3,'
      ''
      
        '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderUsedPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.BookedProductNo) AS NM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderUsedPkgs SO' +
        'RP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.BookedProductNo) AS PCS,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.BookedProductNo) AS AM1,'
      'P.GradeNo, PG.SpeciesNo, PG.SurfacingNo, PG.ProductCategoryNo,'
      'pg.ActualThicknessMM AS AT, pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'P.ProductDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM'
      ''
      'FROM'
      'dbo.RawMtrlBookedLink rml'
      'Inner Join dbo.RawMtrlBookedDtl SOR on sor.sspNo = rml.sspno'
      'and rml.OldBookingNo = sor.ID'
      ''
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.BookedProductLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = SOR.BookedProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE rml.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 264
    Top = 16
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SORawBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawBookedProductNo: TIntegerField
      FieldName = 'BookedProductNo'
      Origin = 'BookedProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawBookedALMM: TFloatField
      FieldName = 'BookedALMM'
      Origin = 'BookedALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawBookedNM3: TFMTBCDField
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_SORawDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SORawCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SORawUtfall2: TFMTBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      Precision = 18
      Size = 2
    end
    object cds_SORawBookedAM3: TFMTBCDField
      FieldName = 'BookedAM3'
      Origin = 'BookedAM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_SORawUsedAM3: TFMTBCDField
      FieldName = 'UsedAM3'
      Origin = 'UsedAM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawPlannedOutputAM3: TFMTBCDField
      FieldName = 'PlannedOutputAM3'
      Origin = 'PlannedOutputAM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawPkgFormat: TIntegerField
      FieldName = 'PkgFormat'
      Origin = 'PkgFormat'
    end
    object cds_SORawBookedLIPGroupNo: TIntegerField
      FieldName = 'BookedLIPGroupNo'
      Origin = 'BookedLIPGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawsspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawBookedProductLengthNo: TIntegerField
      FieldName = 'BookedProductLengthNo'
      Origin = 'BookedProductLengthNo'
    end
    object cds_SORawMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
    object cds_SORawProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
    end
    object cds_SORawModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SORawKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
    end
    object cds_SORawKassationAM3: TFMTBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawKassationAM1: TFMTBCDField
      FieldName = 'KassationAM1'
      Origin = 'KassationAM1'
      Precision = 18
      Size = 3
    end
    object cds_SORawAvgLength: TFMTBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      Precision = 18
      Size = 3
    end
    object cds_SORawPlannedAM1: TFMTBCDField
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      Precision = 18
      Size = 3
    end
    object cds_SORawAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
    end
    object cds_SORawPercentPcsOfTotal: TFMTBCDField
      FieldName = 'PercentPcsOfTotal'
      Origin = 'PercentPcsOfTotal'
      Precision = 18
      Size = 5
    end
    object cds_SORawTrimAM1: TFMTBCDField
      FieldName = 'TrimAM1'
      Origin = 'TrimAM1'
      Precision = 18
      Size = 5
    end
    object cds_SORawTrimAM3: TFMTBCDField
      FieldName = 'TrimAM3'
      Origin = 'TrimAM3'
      Precision = 18
      Size = 5
    end
    object cds_SORawMainRawMtrl: TIntegerField
      FieldName = 'MainRawMtrl'
      Origin = 'MainRawMtrl'
    end
    object cds_SORawRealLPM: TFMTBCDField
      FieldName = 'RealLPM'
      Origin = 'RealLPM'
      Precision = 18
      Size = 3
    end
    object cds_SORawAntalKapSnitt: TIntegerField
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
    end
    object cds_SORawAntalLamellerUt: TIntegerField
      FieldName = 'AntalLamellerUt'
      Origin = 'AntalLamellerUt'
    end
    object cds_SORawaPcs: TIntegerField
      FieldName = 'aPcs'
      Origin = 'aPcs'
    end
    object cds_SORawaAM1: TFMTBCDField
      FieldName = 'aAM1'
      Origin = 'aAM1'
      Precision = 18
      Size = 3
    end
    object cds_SORawPricePerNM3: TFMTBCDField
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      Size = 15
    end
    object cds_SORawExcludeFromTotal: TIntegerField
      FieldName = 'ExcludeFromTotal'
      Origin = 'ExcludeFromTotal'
    end
    object cds_SORawLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_SORawPlannedOutputNoOfUnits: TFloatField
      FieldName = 'PlannedOutputNoOfUnits'
      Origin = 'PlannedOutputNoOfUnits'
    end
    object cds_SORawPlannedOutputNM3: TFMTBCDField
      FieldName = 'PlannedOutputNM3'
      Origin = 'PlannedOutputNM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawUsedNM3: TFMTBCDField
      FieldName = 'UsedNM3'
      Origin = 'UsedNM3'
      Precision = 18
      Size = 3
    end
    object cds_SORawOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object cds_SORawNoOfUnits: TFMTBCDField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      Precision = 18
      Size = 3
    end
    object cds_SORawVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object cds_SORawRowNo: TIntegerField
      FieldName = 'RowNo'
      Origin = 'RowNo'
    end
    object cds_SORawRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_SORawFeedSpeed: TFMTBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      Precision = 18
      Size = 3
    end
    object cds_SORawPeriod: TStringField
      FieldName = 'Period'
      Origin = 'Period'
      Size = 4
    end
    object cds_SORawAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_SORawNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object cds_SORawPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
      ReadOnly = True
    end
    object cds_SORawAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
    end
    object cds_SORawGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = []
    end
    object cds_SORawSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_SORawSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_SORawProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = []
    end
    object cds_SORawAT: TFloatField
      FieldName = 'AT'
      Origin = 'AT'
      ProviderFlags = []
    end
    object cds_SORawAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_SORawNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object cds_SORawNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object cds_SORawProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 150
    end
    object cds_SORawALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_SORawM1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'M1'
      ProviderFlags = []
      Calculated = True
    end
  end
  object cds_ProdInstruct: TFDQuery
    AfterInsert = cds_ProdInstructAfterInsert
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'ProdInstructIndex'
        Fields = 'ProdInstruNo'
      end>
    IndexName = 'ProdInstructIndex'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'vis_vida..ProdInstru'
    SQL.Strings = (
      'Select  P.* FROM dbo.ProdInstru P'
      
        'Inner Join dbo.SortingOrderRow sor on sor.ProdInstructNo = P.Pro' +
        'dInstruNo'
      'WHERE sor.SortingOrderNo = :SortingOrderNo')
    Left = 360
    Top = 120
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdInstructProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdInstructFOHCpercent: TFloatField
      FieldName = 'FOHCpercent'
      Origin = 'FOHCpercent'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructMiniBundleHeight: TIntegerField
      FieldName = 'MiniBundleHeight'
      Origin = 'MiniBundleHeight'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructMiniBundleWidth: TIntegerField
      FieldName = 'MiniBundleWidth'
      Origin = 'MiniBundleWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructMinNoOfSticks: TIntegerField
      FieldName = 'MinNoOfSticks'
      Origin = 'MinNoOfSticks'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructNoOfStraps: TIntegerField
      FieldName = 'NoOfStraps'
      Origin = 'NoOfStraps'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructCornerProtection: TStringField
      FieldName = 'CornerProtection'
      Origin = 'CornerProtection'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_ProdInstructPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_ProdInstructPackageWidthChange
    end
    object cds_ProdInstructPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_ProdInstructPackageHeightChange
    end
    object cds_ProdInstructStamp: TIntegerField
      FieldName = 'Stamp'
      Origin = 'Stamp'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructMiniBundle: TIntegerField
      FieldName = 'MiniBundle'
      Origin = 'MiniBundle'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructStressGrade: TIntegerField
      FieldName = 'StressGrade'
      Origin = 'StressGrade'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPackageCut: TIntegerField
      FieldName = 'PackageCut'
      Origin = 'PackageCut'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructExLog: TStringField
      FieldName = 'ExLog'
      Origin = 'ExLog'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cds_ProdInstructCreated: TSQLTimeStampField
      FieldName = 'Created'
      Origin = 'Created'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructModified: TSQLTimeStampField
      FieldName = 'Modified'
      Origin = 'Modified'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPackageTagLayout: TIntegerField
      FieldName = 'PackageTagLayout'
      Origin = 'PackageTagLayout'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPET_Tolerance: TStringField
      FieldName = 'PET_Tolerance'
      Origin = 'PET_Tolerance'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cds_ProdInstructBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructExtraID: TStringField
      FieldName = 'ExtraID'
      Origin = 'ExtraID'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
    end
    object cds_ProdInstructCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPackageType: TIntegerField
      FieldName = 'PackageType'
      Origin = 'PackageType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPressureTreated: TIntegerField
      FieldName = 'PressureTreated'
      Origin = 'PressureTreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPicture: TStringField
      FieldName = 'Picture'
      Origin = 'Picture'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_ProdInstructNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_ProdInstructShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPiecesPerMiniBundle: TIntegerField
      FieldName = 'PiecesPerMiniBundle'
      Origin = 'PiecesPerMiniBundle'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPackage_Size: TIntegerField
      FieldName = 'Package_Size'
      Origin = 'Package_Size'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructBILD: TBlobField
      FieldName = 'BILD'
      Origin = 'BILD'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructCornerProtectionNo: TIntegerField
      FieldName = 'CornerProtectionNo'
      Origin = 'CornerProtectionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructExternalNote: TMemoField
      FieldName = 'ExternalNote'
      Origin = 'ExternalNote'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_ProdInstructTruckSticksNo: TIntegerField
      FieldName = 'TruckSticksNo'
      Origin = 'TruckSticksNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructStrapTypeNo: TIntegerField
      FieldName = 'StrapTypeNo'
      Origin = 'StrapTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProdInstructPaperWrap: TStringField
      FieldKind = fkLookup
      FieldName = 'PaperWrap'
      LookupDataSet = dmsSystem.cdsPaperWraps
      LookupKeyFields = 'WrapTypeNo'
      LookupResultField = 'WrapType'
      KeyFields = 'WrapType'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_ProdInstructGradeStamp: TStringField
      FieldKind = fkLookup
      FieldName = 'GradeStamp'
      LookupDataSet = dmsSystem.cdsGradeStamps
      LookupKeyFields = 'GradeStampNo'
      LookupResultField = 'GradeStamp'
      KeyFields = 'Stamp'
      ProviderFlags = []
      Lookup = True
    end
    object cds_ProdInstructBarCode: TStringField
      FieldKind = fkLookup
      FieldName = 'BarCode'
      LookupDataSet = dmsSystem.cdsBarCodes
      LookupKeyFields = 'BarCodeNo'
      LookupResultField = 'BarCode'
      KeyFields = 'BarCodeID'
      ProviderFlags = []
      Lookup = True
    end
    object cds_ProdInstructCornProt: TStringField
      FieldKind = fkLookup
      FieldName = 'CornProt'
      LookupKeyFields = 'CornerProtectionNo'
      LookupResultField = 'CornerProtection'
      KeyFields = 'CornerProtectionNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_ProdInstructPkgSize: TStringField
      FieldKind = fkLookup
      FieldName = 'PkgSize'
      LookupKeyFields = 'PackageSizeNo'
      LookupResultField = 'PackageSizeName'
      KeyFields = 'Package_Size'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_ProdInstructIMP: TStringField
      FieldKind = fkLookup
      FieldName = 'IMP'
      LookupKeyFields = 'ProductCategoryNo'
      LookupResultField = 'ProductCategoryName'
      KeyFields = 'PressureTreated'
      ProviderFlags = []
      Lookup = True
    end
    object cds_ProdInstructPackageTypeName: TStringField
      FieldKind = fkLookup
      FieldName = 'PackageTypeName'
      LookupKeyFields = 'PackageTypeNo'
      LookupResultField = 'PackageTypeName'
      KeyFields = 'PackageType'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_ProdInstructTruckStro: TStringField
      FieldKind = fkLookup
      FieldName = 'TruckStro'
      LookupKeyFields = 'TruckSticksNo'
      LookupResultField = 'TruckSticks'
      KeyFields = 'TruckSticksNo'
      ProviderFlags = []
      Size = 35
      Lookup = True
    end
  end
  object cds_SOLayout: TFDQuery
    AfterInsert = cds_SOLayoutAfterInsert
    Filtered = True
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SL.* FROM dbo.SOSpecLayout SL'
      
        'Inner Join dbo.SortingOrderRow sor on sor.SortingOrderNo = SL.So' +
        'rtingOrderNo'
      #9#9#9#9#9#9#9'and sor.SortingOrderRowNo = SL.SortingOrderRowNo'
      'WHERE sor.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 120
    Top = 192
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SOLayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOLayoutAntalKopior: TIntegerField
      DisplayLabel = 'Antal kopior'
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLayoutSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOLayoutSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOLayoutLayout: TStringField
      FieldKind = fkLookup
      FieldName = 'Layout'
      LookupDataSet = dmsSystem.cds_PkgLayouts
      LookupKeyFields = 'PackageLogLayoutNo'
      LookupResultField = 'PackageLogLayoutName'
      KeyFields = 'LayoutNo'
      Lookup = True
    end
  end
  object cds_ProductLength: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select PLG.GroupName AS L'#228'ngdgrupp, PL.ProductLengthNo, PL.Actua' +
        'lLengthMM AS ALMM,'
      
        'PL.NominalLengthMM AS NLMM, PL.NominalLengthFeet AS Feet, PL.Act' +
        'ualLengthINCH AS Tum'
      'FROM dbo.ProductLength PL'
      
        'Left Outer Join dbo.ProductLengthGroupName PLG on PLG.GroupNo = ' +
        'PL.ProductLengthGroupNo'
      'WHERE PL.ActualLengthMM < 20000'
      'Order By PL.ActualLengthMM')
    Left = 608
    Top = 328
    object cds_ProductLengthLngdgrupp: TStringField
      FieldName = 'L'#228'ngdgrupp'
      Origin = '[L'#228'ngdgrupp]'
      FixedChar = True
    end
    object cds_ProductLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cds_ProductLengthNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cds_ProductLengthFeet: TFloatField
      FieldName = 'Feet'
      Origin = 'Feet'
    end
    object cds_ProductLengthTum: TStringField
      FieldName = 'Tum'
      Origin = 'Tum'
      FixedChar = True
      Size = 15
    end
  end
  object FD_genValue: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Create Table #PriceList'
      '(ProductNo int,'
      'ALMM float,'
      'NM3 float,'
      'Price float,'
      'NM3xPrice float)'
      ''
      'Insert into #PriceList'
      'Select distinct'
      'pt.ProductNo, -- ptd.ProductLengthNo, SSP.SupplierNo,'
      'pl.ActualLengthMM,'
      'ptd.m3Nominal,'
      '-- price'
      'Case WHEN SSP.Price > 0 then (SSP.Price'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      ' Else'
      'Case'
      
        'WHEN SSP.PriceListNo > 0 then dbo.VIS_GetPriceFloat_II( GetDate(' +
        '), ssp.PriceListNo, pt.ProductNo, ptd.ProductLengthNo, SSP.Suppl' +
        'ierNo )'
      'else'
      'Case'
      'WHEN OL.InternalPrice > 0 then (OL.InternalPrice'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      ' else'
      
        'Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPriceFloat_II( GetD' +
        'ate(), ol.PriceListNo, pt.ProductNo, ptd.ProductLengthNo, SSP.Su' +
        'pplierNo )'
      'END END END END AS Pris,'
      ''
      '-- nm3 x price'
      'ptd.m3Nominal'
      '*'
      'Case WHEN SSP.Price > 0 then (SSP.Price'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      ' Else'
      'Case'
      
        'WHEN SSP.PriceListNo > 0 then dbo.VIS_GetPriceFloat_II( GetDate(' +
        '), ssp.PriceListNo, pt.ProductNo, ptd.ProductLengthNo, SSP.Suppl' +
        'ierNo )'
      'else'
      'Case'
      'WHEN OL.InternalPrice > 0 then (OL.InternalPrice'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      ' else'
      
        'Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPriceFloat_II( GetD' +
        'ate(), ol.PriceListNo, pt.ProductNo, ptd.ProductLengthNo, SSP.Su' +
        'pplierNo )'
      'END END END END AS NMxPrice'
      ''
      
        '-- ssp.CustomerPrice, ssp.Price, ssp.PriceListNo, ssp.shippingpl' +
        'anno-- , lsp.LoadNo'
      'FROM dbo.SortingOrderUsedPkgs soup'
      
        'Inner Join dbo.SortingOrder so on so.SortingOrderNo = soup.Sorti' +
        'ngOrderNo'
      'Inner Join dbo.LoadDetail ld on ld.PackageNo = soup.PackageNo'
      'and ld.SupplierCode = soup.SupplierCode'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength PL on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = ld.Defsspno'
      
        'Left Outer JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SSP.Order' +
        'No'
      'AND OL.OrderLineNo = SSP.OrderLineNo'
      ''
      'where'
      'soup.SortingOrderNo = :SortingOrderNo'
      ''
      ''
      ''
      'Delete dbo.SORawPriceList where sortingorderno = :SortingOrderNo'
      ''
      'Insert into dbo.SORawPriceList'
      ' Select :SortingOrderNo, ProductNo, ALMM,'
      ' CASE WHEN SUM(NM3) > 0 THEN'
      '  SUM(NM3xPrice) / SUM(NM3)'
      '  END FROM #PriceList'
      ' group by productno, ALMM'
      ''
      'Delete #PriceList'
      ''
      ''
      'Insert into #PriceList'
      'Select distinct'
      '-- soup.PackageNo, soup.SupplierCode,'
      'pt.ProductNo, -- ptd.ProductLengthNo, SSP.SupplierNo,'
      'pl.ActualLengthMM,'
      'ptd.m3Nominal,'
      'sov.RawMtrlPricePerNM3,'
      'ptd.m3Nominal*sov.RawMtrlPricePerNM3'
      ''
      ''
      'FROM dbo.SortingOrderUsedPkgs soup'
      
        'Inner Join dbo.SortingOrder so on so.SortingOrderNo = soup.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.SortingOrderVerkParams sov on sov.VerkNo = so.Own' +
        'erNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = soup.Package' +
        'TypeNo'
      
        'Inner Join dbo.PackageTypeDetail ptd on ptd.PackageTypeNo = pt.P' +
        'ackageTypeNo'
      
        'Inner Join dbo.ProductLength PL on pl.ProductLengthNo = ptd.Prod' +
        'uctLengthNo'
      ''
      ''
      'where'
      'soup.SortingOrderNo = :SortingOrderNo'
      ''
      
        'and pt.ProductNo not in (Select spl.ProductNo From dbo.SORawPric' +
        'eList spl'
      'where'
      'spl.sortingorderno = :SortingOrderNo'
      'and spl.ALMM = pl.ActualLengthMM)'
      ''
      ''
      'Insert into dbo.SORawPriceList'
      
        ' Select :SortingOrderNo, ProductNo, ALMM, SUM(NM3xPrice) / SUM(N' +
        'M3) FROM #PriceList'
      ' group by productno, ALMM'
      ''
      'Drop Table #PriceList'
      ''
      
        'Update dbo.SortOrderRawSum Set PricePerNM3 = dbo.SORawPriceList.' +
        'PricePerNM3,'
      'ProductValue = dbo.SORawPriceList.PricePerNM3 * NM3'
      'FROM dbo.SortOrderRawSum'
      
        'Inner Join dbo.SORawPriceList on dbo.SORawPriceList.SortingOrder' +
        'No = dbo.SortOrderRawSum.SortingOrderNo'
      'and dbo.SORawPriceList.ProductNo = dbo.SortOrderRawSum.ProductNo'
      'and dbo.SORawPriceList.ALMM = dbo.SortOrderRawSum.ALMM'
      'WHERE'
      'dbo.SortOrderRawSum.SortingOrderNo = :SortingOrderNo'
      ''
      ''
      '-- Set price from SortingOrderVerkParams where missing'
      
        'Update dbo.SortOrderRawSum Set PricePerNM3 = sov.RawMtrlPricePer' +
        'NM3,'
      'ProductValue = sov.RawMtrlPricePerNM3 * NM3'
      'FROM dbo.SortOrderRawSum'
      
        'Inner Join dbo.SortingOrder so on so.SortingOrderNo = dbo.SortOr' +
        'derRawSum.SortingOrderNo'
      
        'Inner Join dbo.SortingOrderVerkParams sov on sov.VerkNo = so.Pro' +
        'ducerNo'
      ''
      'WHERE'
      'dbo.SortOrderRawSum.SortingOrderNo = :SortingOrderNo'
      'AND ((dbo.SortOrderRawSum.PricePerNM3 is null)'
      'or (dbo.SortOrderRawSum.PricePerNM3 = 0))'
      ''
      '-- Set price according to SortingOrderRawMtrl if present'
      'Update dbo.SortOrderRawSum Set PricePerNM3 = sor.PricePerNM3,'
      'ProductValue = sor.PricePerNM3 * NM3'
      'FROM dbo.SortOrderRawSum'
      
        'Inner Join dbo.SortingOrderRawMtrl  sor on sor.SortingOrderNo = ' +
        'dbo.SortOrderRawSum.SortingOrderNo'
      'and sor.RawMtrlNo = dbo.SortOrderRawSum.RawMtrlNo'
      ''
      'WHERE'
      'dbo.SortOrderRawSum.SortingOrderNo = :SortingOrderNo'
      'AND ((sor.PricePerNM3 is not null)'
      'and (sor.PricePerNM3 <> 0))'
      '')
    Left = 248
    Top = 528
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_GetCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select ProductValue * -1 AS ProductValue From dbo.SortingOrderOu' +
        'tPut'
      'Where SortingOrderNo = :SortingOrderNo'
      'and ProductNo = :ProductNo')
    Left = 248
    Top = 584
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_GetCostProductValue: TFMTBCDField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ReadOnly = True
      Precision = 20
      Size = 1
    end
  end
  object cds_PIP: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 416
    Top = 16
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
    object cds_PIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_LIP: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 472
    Top = 16
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
    object cds_LIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_RawPIP: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 536
    Top = 16
    object cds_RawPIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_RawPIPORT: TStringField
      FieldName = 'ORT'
      Origin = 'ORT'
      Size = 50
    end
    object cds_RawPIPOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
  end
  object cds_RawLIP: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 608
    Top = 16
    object cds_RawLIPLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_RawLIPLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      Size = 50
    end
    object cds_RawLIPPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object cds_FeedBack: TFDQuery
    AfterInsert = cds_FeedBackAfterInsert
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortingOrderFeedBack'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 800
    Top = 680
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_FeedBackSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_FeedBackFeedBackNo: TIntegerField
      FieldName = 'FeedBackNo'
      Origin = 'FeedBackNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_FeedBackNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      BlobType = ftMemo
    end
    object cds_FeedBackDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_FeedBackDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_FeedBackCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_FeedBackModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_PriceUnit: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select TemplateUnitNo, TemplateUnitName from dbo.PackUnit')
    Left = 696
    Top = 16
    object cds_PriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
      Origin = 'TemplateUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
  end
  object cds_ProdInLager: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct pr.ProductDisplayName, pr.ProductNo FROM '
      'dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'Inner Join dbo.Product pr on pr.ProductNo = pt.ProductNo'
      'WHERE PIP.PhysicalInventoryPointNo = :PIPNo'
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName')
    Left = 784
    Top = 16
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_ProdInLagerProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProdInLagerProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
  end
  object sq_ProdOnly: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pn.PackageNo, pn.SupplierCode AS LEVKOD,'
      'pt.productno,'
      'ptl.PcsPerLength,'
      'pt.Totalm3Actual AS AM3,'
      'pt.TotalNoOfPieces AS STYCK,'
      'pn.DateCreated,'
      
        '(Select Count(PackageTypeNo) From PackageTypeDetail WHERE Packag' +
        'eTypeNo = pt.PackageTypeNo) AS NOOFLENGTHS,'
      'pn.packagetypeno'
      'From dbo.packagenumber pn'
      
        'Inner Join dbo.packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      
        'Inner Join dbo.PackageTypeLengths ptl on ptl.packagetypeno = pn.' +
        'packagetypeno'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      'where'
      'pn.Status = 1'
      'AND pt.productno = :productno'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo')
    Left = 848
    Top = 16
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_ProdOnlyPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProdOnlyLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_ProdOnlyPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
    object sq_ProdOnlyAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sq_ProdOnlySTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object sq_ProdOnlyDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_ProdOnlyNOOFLENGTHS: TIntegerField
      FieldName = 'NOOFLENGTHS'
      Origin = 'NOOFLENGTHS'
      ReadOnly = True
    end
    object sq_ProdOnlyproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
    object sq_ProdOnlypackagetypeno: TIntegerField
      FieldName = 'packagetypeno'
      Origin = 'packagetypeno'
    end
  end
  object cds_LegoPris: TFDQuery
    AfterInsert = cds_LegoPrisAfterInsert
    BeforePost = cds_LegoPrisBeforePost
    MasterSource = ds_SOLegoCost
    MasterFields = 'ProductionUnitNo'
    DetailFields = 'ProductionUnitNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select LPL.*, Users.UserName FROM dbo.LegoPrisLista LPL'
      'Inner Join dbo.Users on Users.UserID = LPL.ModifiedUser'
      'WHERE LPL.ProductionUnitNo = :ProductionUnitNo')
    Left = 1096
    Top = 16
    ParamData = <
      item
        Name = 'ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 10043
      end>
    object cds_LegoPrisProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LegoPrisATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LegoPrisABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LegoPrisNoOfSplit: TIntegerField
      FieldName = 'NoOfSplit'
      Origin = 'NoOfSplit'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LegoPrisCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LegoPrisModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LegoPrisDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LegoPrisDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LegoPrisPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
    end
    object cds_LegoPrisPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
    end
    object cds_LegoPrisUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      Required = True
    end
  end
  object cds_LegoVerk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select C.ClientNo, C.ClientName FROM'
      'dbo.Client C'
      
        'Inner Join dbo.Client_LoadingLocation cl on cl.ClientNo = C.Clie' +
        'ntNo'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = C.ClientNo'
      ''
      'WHERE'
      'CR.RoleType = 6')
    Left = 32
    Top = 240
    object cds_LegoVerkClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LegoVerkClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_ProdLength: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.ProductLength'
      'WHERE ActualLengthMM < 20000'
      'Order By ActualLengthMM')
    Left = 32
    Top = 192
    object cds_ProdLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdLengthActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object cds_ProdLengthNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object cds_ProdLengthActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object cds_ProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_ProdLengthFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_ProdLengthCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProdLengthModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProdLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_ProdLengthSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_ProdLengthProductLengthGroupNo: TIntegerField
      FieldName = 'ProductLengthGroupNo'
      Origin = 'ProductLengthGroupNo'
    end
    object cds_ProdLengthAct: TIntegerField
      FieldName = 'Act'
      Origin = 'Act'
    end
  end
  object cds_ProductionUnit: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select pu.RegistrationPointNo AS ProductionUnitNo, rp.RegPointNa' +
        'me AS M'#196'TPUNKT,'
      'PU.ClientNo AS ProducerNo, '
      
        'isNull(pu.Cost,0)+ isnull(pu.CapitalCost,0) + isnull(pu.Overhead' +
        'Cost,0) AS Cost,'
      'isnull(pu.SalaryCost,0) AS LonPerTimme, rp.TypeOfUnit,'
      'isNull(LegoCostPerAM3,0) AS LegoCostPerAM3,'
      'pu.ProductionUnitNo AS ProdUnitNo'
      'FROM dbo.ProductionUnit pu'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'WHERE  PU.ClientNo = :ProducerNo'
      'Order By rp.RegPointName')
    Left = 296
    Top = 192
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_ProductionUnitProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_ProductionUnitMTPUNKT: TStringField
      FieldName = 'M'#196'TPUNKT'
      Origin = '[M'#196'TPUNKT]'
      FixedChar = True
      Size = 30
    end
    object cds_ProductionUnitProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_ProductionUnitTypeOfUnit: TIntegerField
      FieldName = 'TypeOfUnit'
      Origin = 'TypeOfUnit'
    end
    object cds_ProductionUnitProdUnitNo: TIntegerField
      FieldName = 'ProdUnitNo'
      Origin = 'ProdUnitNo'
      Required = True
    end
    object cds_ProductionUnitCost: TFloatField
      FieldName = 'Cost'
      Origin = 'Cost'
      ReadOnly = True
    end
    object cds_ProductionUnitLonPerTimme: TFloatField
      FieldName = 'LonPerTimme'
      Origin = 'LonPerTimme'
      ReadOnly = True
      Required = True
    end
    object cds_ProductionUnitLegoCostPerAM3: TFMTBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      ReadOnly = True
      Required = True
      Precision = 18
      Size = 1
    end
  end
  object cds_UrlLayout: TFDQuery
    AfterInsert = cds_UrlLayoutAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SODefSpecLayout'
      'WHERE VerkNo = :VerkNo')
    Left = 408
    Top = 192
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_UrlLayoutVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UrlLayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UrlLayoutAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
    end
    object cds_UrlLayoutLayout: TStringField
      FieldKind = fkLookup
      FieldName = 'Layout'
      LookupKeyFields = 'PackageLogLayoutNo'
      LookupResultField = 'PackageLogLayoutName'
      KeyFields = 'LayoutNo'
      Lookup = True
    end
  end
  object cds_AOMall: TFDQuery
    AfterInsert = cds_AOMallAfterInsert
    AfterPost = cds_AOMallAfterPost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SO.SortingOrderNo, SO.TemplateName'
      'FROM dbo.SortingOrder SO'
      'WHERE SO.Template = 1'
      'AND SO.TemplateUser = :UserID'
      'Order By SO.TemplateName')
    Left = 488
    Top = 192
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_AOMallSortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rordernr'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AOMallTemplateName: TStringField
      DisplayLabel = 'Mall'
      FieldName = 'TemplateName'
      Origin = 'TemplateName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cds_SOVerkParams: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortingOrderVerkParams'
      'WHERE VerkNo = :VerkNo')
    Left = 592
    Top = 192
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SOVerkParamsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOVerkParamsRawMtrlPricePerNM3: TBCDField
      FieldName = 'RawMtrlPricePerNM3'
      Origin = 'RawMtrlPricePerNM3'
      Precision = 18
      Size = 1
    end
    object cds_SOVerkParamsSawdustPriceFM3: TBCDField
      FieldName = 'SawdustPriceFM3'
      Origin = 'SawdustPriceFM3'
      Precision = 18
      Size = 1
    end
    object cds_SOVerkParamsAvkapPriceFM3: TBCDField
      FieldName = 'AvkapPriceFM3'
      Origin = 'AvkapPriceFM3'
      Precision = 18
      Size = 1
    end
    object cds_SOVerkParamsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      OnChange = cds_SOVerkParamsPIPNoChange
    end
    object cds_SOVerkParamsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_SOVerkParamsOrt: TStringField
      FieldKind = fkLookup
      FieldName = 'Ort'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      Size = 50
      Lookup = True
    end
    object cds_SOVerkParamsLagergrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Lagergrupp'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      Size = 50
      Lookup = True
    end
  end
  object cds_AO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'distinct SOR.SortingOrderNo AS AONr,'
      
        'Cast(pl.ProductLengthNo AS Varchar(10))+ Cast(Sor.SortingOrderRo' +
        'wNo AS Varchar(10)) AS AORadNr,'
      'rp.RegPointName AS Linje,'
      'p.ProductDisplayName AS Product,'
      'SOR.LengthDescription'#9'AS LengthDescription,'
      'PL.ActualLengthMM AS ALMM,'
      'SOR.PPP,'
      'SOR.NoOfUnits AS Paket,'
      'isnull(BC.BarCodeID,'#39#39') As BarCode,'
      'isnull(GS.GradeStampID,'#39#39') As GradeStamp,'
      'wt.WrapType,'
      'pin.PackageWidth,'
      'pin.PackageHeight,'
      'pin.NoOfStraps,'
      'SOR.Mark,'
      'SOR.SortOrder'
      ''
      'FROM dbo.SortingOrder SO'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = SO.Produc' +
        'tionUnitNo'
      
        'Inner Join dbo.SortingOrderRow SOR on SOR.SortingOrderNo = SO.So' +
        'rtingOrderNo'
      'Inner Join dbo.Product p on p.productno = SOR.Productno'
      
        'Inner Join dbo.ProductLength pl on Pl.ProductLengthNo = SOR.Prod' +
        'uctLengthNo'
      
        'Left Outer Join dbo.SupplierShippingPlan CSD on CSD.SupplierShip' +
        'PlanObjectNo = SOR.CSDNo'
      
        'Left Outer Join dbo.ProdInstru PIN ON PIN.ProdInstruNo = SOR.Pro' +
        'dInstructNo'
      'Left Outer Join dbo.Barcode BC ON BC.BarCodeNo = PIN.BarCodeID'
      'Left Outer Join dbo.GradeStamp GS ON GS.GradeStampNo = PIN.Stamp'
      'Left Outer Join dbo.Wraptype wt ON wt.WrapTypeNo = PIN.WrapType'
      ''
      'WHERE SO.SortingOrderNo = 43'
      'AND SOR.ExportRow = 1'
      ''
      'Order By SOR.SortOrder'
      '')
    Left = 680
    Top = 192
    object cds_AOAONr: TIntegerField
      FieldName = 'AONr'
      Origin = 'AONr'
      Required = True
    end
    object cds_AOAORadNr: TStringField
      FieldName = 'AORadNr'
      Origin = 'AORadNr'
      ReadOnly = True
    end
    object cds_AOLinje: TStringField
      FieldName = 'Linje'
      Origin = 'Linje'
      FixedChar = True
      Size = 30
    end
    object cds_AOProduct: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      Size = 100
    end
    object cds_AOLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_AOALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cds_AOPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
    end
    object cds_AOPaket: TBCDField
      FieldName = 'Paket'
      Origin = 'Paket'
      Precision = 18
      Size = 3
    end
    object cds_AOBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object cds_AOGradeStamp: TStringField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object cds_AOWrapType: TStringField
      FieldName = 'WrapType'
      Origin = 'WrapType'
      FixedChar = True
      Size = 15
    end
    object cds_AOPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_AOPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_AONoOfStraps: TIntegerField
      FieldName = 'NoOfStraps'
      Origin = 'NoOfStraps'
    end
    object cds_AOMark: TStringField
      FieldName = 'Mark'
      Origin = 'Mark'
      Size = 50
    end
    object cds_AOSortOrder: TIntegerField
      FieldName = 'SortOrder'
      Origin = 'SortOrder'
    end
  end
  object cds_Raw: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'distinct SOR.SortingOrderNo AS AONr,'
      'p.ProductDisplayName AS Product,'
      'SOR.LengthDescription'#9'AS LengthDescription,'
      'SOR.PlannedAM3 AS Volym'
      ''
      'FROM dbo.SortingOrder SO'
      
        'Inner Join dbo.SortingOrderRawMtrl SOR on SOR.SortingOrderNo = S' +
        'O.SortingOrderNo'
      'Inner Join dbo.Product p on p.productno = SOR.Productno'
      'WHERE SO.SortingOrderNo = 43'
      '')
    Left = 952
    Top = 200
    object cds_RawAONr: TIntegerField
      FieldName = 'AONr'
      Origin = 'AONr'
      Required = True
    end
    object cds_RawProduct: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      Size = 100
    end
    object cds_RawLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_RawVolym: TBCDField
      FieldName = 'Volym'
      Origin = 'Volym'
      Precision = 18
      Size = 3
    end
  end
  object cds_SOCngProd: TFDQuery
    AfterInsert = cds_SOCngProdAfterInsert
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortingOrderCngProd'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 880
    Top = 200
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SOCngProdSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOCngProdSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOCngProdGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOCngProdSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOCngProdIMPNo: TIntegerField
      FieldName = 'IMPNo'
      Origin = 'IMPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOCngProdNewProductNo: TIntegerField
      FieldName = 'NewProductNo'
      Origin = 'NewProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOCngProdKvalitet: TStringField
      FieldKind = fkLookup
      FieldName = 'Kvalitet'
      LookupDataSet = dmsSystem.cds_Grade_SV
      LookupKeyFields = 'GradeNo'
      LookupResultField = 'GradeName'
      KeyFields = 'GradeNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_SOCngProdTrslag: TStringField
      FieldKind = fkLookup
      FieldName = 'Tr'#228'slag'
      LookupDataSet = dmsSystem.cds_Species_SV
      LookupKeyFields = 'SpeciesNo'
      LookupResultField = 'SpeciesName'
      KeyFields = 'SpeciesNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_SOCngProdUtfrande: TStringField
      FieldKind = fkLookup
      FieldName = 'Utf'#246'rande'
      LookupDataSet = dmsSystem.cds_Surfacing_SV
      LookupKeyFields = 'SurfacingNo'
      LookupResultField = 'SurfacingName'
      KeyFields = 'SurfacingNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_SOCngProdImpregnering: TStringField
      FieldKind = fkLookup
      FieldName = 'Impregnering'
      LookupDataSet = dmsSystem.cds_ProdCatg
      LookupKeyFields = 'ProductCategoryNo'
      LookupResultField = 'ProductCategoryName'
      KeyFields = 'IMPNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object sq_SOMarkPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.SortingOrderMarkedPkgs(UserID, PackageNo, Suppli' +
        'erCode)'
      'Values(:UserID, :PackageNo, :SupplierCode)')
    Left = 1088
    Top = 488
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
  end
  object sq_SODELMarkPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrderMarkedPkgs'
      'WHERE UserID = :UserID')
    Left = 1088
    Top = 440
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cds_FindRaw: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select distinct p.ProductDisplayName + '#39' /L:'#39' + CAST(pl.ActualLe' +
        'ngthMM AS Varchar(7)) AS ProductDisplayName,'
      'sor.ProductNo, sor.ProductLengthNo, '
      'sor.LengthDescription, pl.ActualLengthMM AS ALMM'
      'FROM dbo.SortingOrder so'
      
        'Inner Join dbo.SortingOrderRawMtrl sor on sor.SortingOrderNo = s' +
        'o.SortingOrderNo'
      'Inner Join dbo.Product p on p.ProductNo = sor.ProductNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = sor.Prod' +
        'uctLengthNo'
      'WHERE'
      'so.ProducerNo = :ProducerNo'
      'AND so.ProductionUnitNo = :ProductionUnitNo'
      ''
      'and so.SortingOrderNo in (Select so2.SortingOrderNo'
      'FROM dbo.SortingOrder so2'
      
        'Inner Join dbo.SortingOrderRow sor2 on sor2.SortingOrderNo = so2' +
        '.SortingOrderNo'
      'WHERE'
      'so2.ProducerNo = :ProducerNo'
      'AND so2.ProductionUnitNo = :ProductionUnitNo'
      'AND sor2.ProductNo = :ProductNo'
      'AND sor2.Urlagg <> 1)'
      '')
    Left = 984
    Top = 440
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_FindRawProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 111
    end
    object cds_FindRawProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_FindRawProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_FindRawLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_FindRawALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object sq_INS_SplitPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        '  Insert into dbo.SortingOrderSplitPkgs(SortingOrderNo, PackageN' +
        'o, SupplierCode, PackageTypeNo, NewPackageNo, NewSupplierCode)'
      
        '  Select :SortingOrderNo, :OPkgNo, :OPrefix, :PackageTypeNo, :Ne' +
        'wPkgNo, :NewPrefix'
      '')
    Left = 984
    Top = 488
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'OPKGNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'OPREFIX'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'NEWPKGNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'NEWPREFIX'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
  end
  object cds_Verk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName'
      '')
    Left = 24
    Top = 336
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
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object sq_DelMall: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrder'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 192
    Top = 192
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cds_producer: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      '  AND  ((R.RoleType = 2) OR (R.RoleType = 9))'
      ''
      'Order by C.clientName')
    Left = 88
    Top = 336
    object cds_producerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_producerClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_producerSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_RegPoint: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName')
    Left = 168
    Top = 336
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_RegPointProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      FixedChar = True
      Size = 30
    end
    object cds_RegPointRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
  end
  object cds_LengthGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  Distinct GroupNo, GroupName '
      'FROM dbo.ProductLengthGroupName '
      'ORDER BY GroupName')
    Left = 248
    Top = 336
    object cds_LengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object cds_SOLegoCost: TFDQuery
    AfterInsert = cds_SOLegoCostAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pu.* from  '
      'dbo.ProductionUnit pu'
      
        'Inner Join dbo.Client_LoadingLocation cl on cl.ClientNo = pu.Cli' +
        'entNo'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = pu.ClientNo'
      ''
      'WHERE'
      'CR.RoleType = 6'
      '')
    Left = 432
    Top = 336
    object cds_SOLegoCostProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOLegoCostProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      Size = 50
    end
    object cds_SOLegoCostClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_SOLegoCostSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_SOLegoCostCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SOLegoCostModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_SOLegoCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SOLegoCostLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
    object cds_SOLegoCostRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
    end
    object cds_SOLegoCostOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
    end
    object cds_SOLegoCostSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_SOLegoCostDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      Origin = 'DIM_DIV'
    end
    object cds_SOLegoCostTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
      Origin = 'TerminalNo'
    end
    object cds_SOLegoCostPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
    end
    object cds_SOLegoCostLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
    end
    object cds_SOLegoCostProductionUnitCode: TStringField
      FieldName = 'ProductionUnitCode'
      Origin = 'ProductionUnitCode'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_SOLegoCostPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_SOLegoCostStoppOrsakFil: TStringField
      FieldName = 'StoppOrsakFil'
      Origin = 'StoppOrsakFil'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SOLegoCostStoppTidFil: TStringField
      FieldName = 'StoppTidFil'
      Origin = 'StoppTidFil'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SOLegoCostLegoverk: TStringField
      FieldKind = fkLookup
      FieldName = 'Legoverk'
      LookupDataSet = cds_LegoVerk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_SOLegoCostMtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = dmsContact.cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegistrationPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_SOLegoCostCost: TFloatField
      FieldName = 'Cost'
      Origin = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostCapitalCost: TFloatField
      FieldName = 'CapitalCost'
      Origin = 'CapitalCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostOverheadCost: TFloatField
      FieldName = 'OverheadCost'
      Origin = 'OverheadCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostSalaryCost: TFloatField
      FieldName = 'SalaryCost'
      Origin = 'SalaryCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOLegoCostLegoCostPerAM3: TBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 1
    end
  end
  object cds_Products: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName, '
      
        #9'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, ' +
        'pg.NominalWidthMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo, '
      
        '      pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthIN' +
        'CH'
      'FROM dbo.Product pd '
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo '
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo '
      #9#9#9#9'AND gd.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo '
      #9#9#9#9'AND sf.LanguageCode = 1'
      ''
      '')
    Left = 520
    Top = 336
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object cds_ProductsGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_ProductsSpeciesName: TStringField
      FieldName = 'SpeciesName'
      Origin = 'SpeciesName'
      Required = True
      Size = 30
    end
    object cds_ProductsSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      Required = True
      Size = 30
    end
    object cds_ProductsProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      Required = True
    end
    object cds_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_ProductsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object cds_ProductsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object cds_ProductsGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
    object cds_ProductsSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object cds_ProductsProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
    end
    object cds_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object cds_ProductsNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object cds_ProductsNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
  end
  object sq_GetProductNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo'
      'FROM dbo.Product pd'
      
        'INNER JOIN dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Product' +
        'GroupNo'
      'WHERE'
      'pd.GradeNo = :GradeNo'
      'AND pg.ProductCategoryNo = :ProductCategoryNo'
      'AND pg.SpeciesNo = :SpeciesNo'
      'AND pg.SurfacingNo = :SurfacingNo'
      'AND pg.ActualThicknessMM = :ATMM'
      'AND pg.ActualWidthMM = :AWMM'
      '')
    Left = 440
    Top = 480
    ParamData = <
      item
        Name = 'GRADENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTCATEGORYNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SPECIESNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SURFACINGNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'ATMM'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'AWMM'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetProductNoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetBiProductPrice: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortingOrderVerkParams'
      'WHERE VerkNo = :VerkNo')
    Left = 440
    Top = 544
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetBiProductPriceVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetBiProductPriceRawMtrlPricePerNM3: TBCDField
      FieldName = 'RawMtrlPricePerNM3'
      Origin = 'RawMtrlPricePerNM3'
      Precision = 18
      Size = 1
    end
    object sq_GetBiProductPriceSawdustPriceFM3: TBCDField
      FieldName = 'SawdustPriceFM3'
      Origin = 'SawdustPriceFM3'
      Precision = 18
      Size = 1
    end
    object sq_GetBiProductPriceAvkapPriceFM3: TBCDField
      FieldName = 'AvkapPriceFM3'
      Origin = 'AvkapPriceFM3'
      Precision = 18
      Size = 1
    end
    object sq_GetBiProductPricePIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object sq_GetBiProductPriceLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
  end
  object cds_NewPkgSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '      SELECT DISTINCT'
      #9'  PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM,'#9
      '      PL.ActualLengthMM,'
      '      SUM(PTD.m3Actual) AS AM3,'
      '      SUM(PTD.m3Nominal) AS NM3,'
      '      SUM(PTD.NoOfPieces) AS STYCK,'
      '      SUM(PTD.LinealMeterActualLength) AS AM1'
      ''
      ''
      ''
      '      FROM'
      '      dbo.SortingOrderNewPkgs SORP'
      
        '     LEFT OUTER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrder' +
        'No = SORP.SortingOrderNo'
      
        '                                    AND SOR.SortingOrderRowNo = ' +
        'SORP.SortingOrderRowNo'
      
        '     INNER JOIN dbo.PackageType P ON P.PackageTypeNo = SORP.Pack' +
        'ageTypeNo'
      
        #9'Inner Join dbo.PackageTypeDetail PTD on PTD.PackageTypeNo = P.P' +
        'ackageTypeNo'
      
        #9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD.Pro' +
        'ductLengthNo'
      
        '     Inner Join dbo.PackageNumber pn on pn.PackageNo = SORP.Pack' +
        'ageNo'
      
        '                                    AND pn.SupplierCode = SORP.S' +
        'upplierCode'
      ''
      
        '      INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo' +
        ' = p.PackageTypeNo'
      '      INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      
        #9'INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = PR.Produc' +
        'tGroupNo'
      ''
      '      WHERE'
      '      SORP.SortingOrderNo = :SortingOrderNo'
      #9
      #9'Group By PL.ActualLengthMM, PG.ActualThicknessMM,'
      #9'  PG.ActualWidthMM'
      '')
    Left = 248
    Top = 472
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_NewPkgSumActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object cds_NewPkgSumActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object cds_NewPkgSumActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object cds_NewPkgSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object cds_NewPkgSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object cds_NewPkgSumSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_NewPkgSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
    end
  end
  object sq_GetStoppTime: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Count(*) AS AntalStopp,'
      'CAST(SUM(ps.StoppTid)/60.0 AS Float) as TotalStoppTid'
      'from dbo.ProdStops ps'
      
        'Inner Join dbo.ProdStopCause psc on psc.StoppTidsNr = ps.StoppTi' +
        'dsNr'
      'AND psc.ProductionUnitNo = ps.ProductionUnitNo'
      
        'Inner Join dbo.ProductionUnit pu on pu.ProductionUnitNo = ps.Pro' +
        'ductionUnitNo'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'WHERE'
      'pu.RegistrationPointNo = :ProductionUnitNo'
      'AND pu.ClientNo = :ProducerNo'
      'AND ps.StoppStartade >= :StartDate'
      'AND ps.StoppStartade <= :EndDate'
      'AND psc.Kategori = :Kategori'
      
        '-- Group By psc.StoppTidsNamn, psc.Level, psc.GroupNo, psc.Kateg' +
        'ori'
      '')
    Left = 248
    Top = 680
    ParamData = <
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        FDDataType = dtDateTime
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        DataType = ftTimeStamp
        FDDataType = dtDateTime
        ParamType = ptInput
      end
      item
        Name = 'KATEGORI'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetStoppTimeAntalStopp: TIntegerField
      FieldName = 'AntalStopp'
      Origin = 'AntalStopp'
      ReadOnly = True
    end
    object sq_GetStoppTimeTotalStoppTid: TFloatField
      FieldName = 'TotalStoppTid'
      Origin = 'TotalStoppTid'
      ReadOnly = True
    end
  end
  object sq_GetSONoByLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SortingOrderNo from dbo.SortingOrderRow'
      'where CSDNo = :CSDNo')
    Left = 248
    Top = 632
    ParamData = <
      item
        Name = 'CSDNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetSONoByLOSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsBooking: TFDQuery
    CachedUpdates = True
    MasterSource = ds_SorOrdRow
    MasterFields = 'LONR'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'SSP.StartETDYearWeek AS Startvecka,'
      'SSP.EndETDYearWeek AS Slutvecka,'
      'C.CityName AS ShipTo,'
      'Dest.CityName AS Destination,'
      'SSP.LOText AS LOText,'
      'SSP.InternalNote AS Internnotering,'
      'SSP.Reference AS Referens,'
      'SSP.ObjectType,'
      '         Cr.CarrierName            ,           -- Char 50'
      '         Vg.ETD                    ,              -- DateTime'
      '         Bk.BookingNo'#9#9'            ,'
      '         Bk.ShippersShipDate'#9','
      '         Bk.ShippersShipTime'#9','
      '         Bk.ShippingCompanyBookingID,'
      '         Bk.SupplierReference'#9','
      '         Bk.PreliminaryRequestedPeriod'#9','
      ''
      '        SC.ClientName           ,'
      '        Bk.shippingplanno,'
      'BK.Panic_Note'
      ''
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      '  Inner Join dbo.City C on C.CityNo = SSP.ShipToInvPointNo'
      
        '  Left Outer Join dbo.City Dest on Dest.CityNo = SSP.Destination' +
        'No'
      
        '  Left Outer Join dbo.Booking  Bk on Bk.shippingplanno = SSP.shi' +
        'ppingplanno'
      ''
      ''
      
        '  left outer JOIN dbo.Voyage  Vg  ON   Bk.VoyageNo           = V' +
        'g.VoyageNo'
      
        '  LEFT OUTER JOIN dbo.Client  SC  ON   Bk.ShippingCompanyNo  = S' +
        'C.ClientNo'
      
        '  left outer JOIN dbo.Carrier Cr  ON   Vg.CarrierNo          = C' +
        'r.CarrierNo'
      ''
      ''
      'WHERE  SSP.SupplierShipPlanObjectNo =  :SSPNo')
    Left = 704
    Top = 336
    ParamData = <
      item
        Name = 'SSPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cdsBookingStartvecka: TIntegerField
      FieldName = 'Startvecka'
      Origin = 'Startvecka'
    end
    object cdsBookingSlutvecka: TIntegerField
      FieldName = 'Slutvecka'
      Origin = 'Slutvecka'
    end
    object cdsBookingShipTo: TStringField
      FieldName = 'ShipTo'
      Origin = 'ShipTo'
      Size = 50
    end
    object cdsBookingDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      Size = 50
    end
    object cdsBookingLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      BlobType = ftMemo
    end
    object cdsBookingInternnotering: TStringField
      FieldName = 'Internnotering'
      Origin = 'Internnotering'
    end
    object cdsBookingReferens: TStringField
      FieldName = 'Referens'
      Origin = 'Referens'
      Size = 50
    end
    object cdsBookingObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cdsBookingCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      FixedChar = True
      Size = 50
    end
    object cdsBookingETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
    end
    object cdsBookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
    end
    object cdsBookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object cdsBookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
    end
    object cdsBookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
    end
    object cdsBookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      Size = 50
    end
    object cdsBookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object cdsBookingClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsBookingshippingplanno: TIntegerField
      FieldName = 'shippingplanno'
      Origin = 'shippingplanno'
    end
    object cdsBookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      Size = 50
    end
  end
  object cds_PriceList: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select TemplateNo, PriceListName FROM'
      'dbo.PriceTemplateHeader')
    Left = 608
    Top = 376
    object cds_PriceListTemplateNo: TIntegerField
      FieldName = 'TemplateNo'
      Origin = 'TemplateNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PriceListPriceListName: TStringField
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      Required = True
      Size = 30
    end
  end
  object cds_LOinAO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct SSP.ShippingPlanNo AS LONR'
      'FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = SOR.CSDNo'
      'INNER JOIN      dbo.Product pd ON pd.ProductNo = SSP.ProductNo'
      ''
      'WHERE SOR.SortingOrderNo = :SortingOrderNo')
    Left = 792
    Top = 336
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_LOinAOLONR: TIntegerField
      FieldName = 'LONR'
      Origin = 'LONR'
    end
  end
  object cds_FindUrlagg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select distinct p.ProductDisplayName + '#39' /L:'#39' + CAST(pl.ActualLe' +
        'ngthMM AS Varchar(7))'
      '+ '#39' /PPP:'#39' + CAST(sor.PPP AS Varchar(5)) AS ProductDisplayName,'
      'sor.ProductNo, sor.ProductLengthNo, sor.PPP,'
      'sor.LengthDescription, pl.ActualLengthMM AS ALMM'
      'FROM dbo.SortingOrder so'
      
        'Inner Join dbo.SortingOrderRow sor on sor.SortingOrderNo = so.So' +
        'rtingOrderNo'
      'Inner Join dbo.Product p on p.ProductNo = sor.ProductNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = sor.Prod' +
        'uctLengthNo'
      'WHERE'
      'so.ProducerNo = :ProducerNo'
      'AND so.ProductionUnitNo = :ProductionUnitNo'
      'AND sor.Urlagg = 1'
      'and sor.ProductNo <> :ProductNo'
      'and so.SortingOrderNo in (Select so2.SortingOrderNo'
      'FROM dbo.SortingOrder so2'
      
        'Inner Join dbo.SortingOrderRow sor2 on sor2.SortingOrderNo = so2' +
        '.SortingOrderNo'
      'WHERE'
      'so2.ProducerNo = :ProducerNo'
      'AND so2.ProductionUnitNo = :ProductionUnitNo'
      'AND sor2.ProductNo = :ProductNo)')
    Left = 984
    Top = 336
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_FindUrlaggProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 122
    end
    object cds_FindUrlaggProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_FindUrlaggProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cds_FindUrlaggPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
    end
    object cds_FindUrlaggLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_FindUrlaggALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object sq_InsShift: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SOShift where SortingOrderNo = :SortingOrderNo'
      ''
      'Insert into dbo.SOShift'
      'Select :SortingOrderNo, ShiftNo, NoOfOperators'
      'FROM dbo.ShiftRegPoint'
      'WHERE ClientNo = :ClientNo'
      'AND RegPointNo = :RegPointNo')
    Left = 440
    Top = 608
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'REGPOINTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cds_SOShift: TFDQuery
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select sos.*, srp.ShiftName AS Skift FROM dbo.SOShift sos'
      'Inner Join dbo.Shift srp on srp.ShiftNo = sos.ShiftNo'
      'WHERE sos.SortingOrderNo = :SortingOrderNo')
    Left = 1088
    Top = 336
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SOShiftSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOShiftShiftNo: TIntegerField
      FieldName = 'ShiftNo'
      Origin = 'ShiftNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SOShiftNoOfOperators: TIntegerField
      DisplayLabel = 'Antal operat'#246'rer'
      FieldName = 'NoOfOperators'
      Origin = 'NoOfOperators'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SOShiftSkift: TStringField
      FieldName = 'Skift'
      Origin = 'Skift'
      ProviderFlags = []
    end
  end
  object sq_StdSOReport: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select sor.ReportName FROM dbo.SOUserReport sou'
      'Inner Join dbo.SOReports sor on sor.ReportNo = sou.ReportNo'
      'WHERE UserID = :UserID'
      'AND sou.StandardReport = 1')
    Left = 792
    Top = 440
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_StdSOReportReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 50
    end
  end
  object sq_MoveUsedPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.SortingOrderUsedPkgs'
      'Set SortingOrderNo = :SortingOrderNo'
      'WHERE'
      'PackageNo = :PackageNo'
      'And SupplierCode = :SupplierCode')
    Left = 792
    Top = 488
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
  end
  object sp_GetStartTime: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_CalcSOStartTime_II'
    Left = 40
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_GetStartTimeRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      ReadOnly = True
    end
    object sp_GetStartTimeSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      Required = True
    end
  end
  object sp_GetEndTime: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_CalcSOEndTime'
    Left = 40
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_GetEndTimeRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
      ReadOnly = True
    end
  end
  object sp_CopyAOtoTemplate: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_CopyAOtoTemplate'
    Left = 40
    Top = 680
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@TemplateName'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = '@Template'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@NewSortingOrderNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_CopyLOToAO: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_SortingOrderRow'
    Left = 40
    Top = 576
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SSPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@IsLegoOnLL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SSPNoLOL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewLoad: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.Vis_newLoad'
    Left = 40
    Top = 624
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@LoadID'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = '@FS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object FD_GenFinSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Delete dbo.SortOrderFinSum where SortingOrderNo = :SortingOrderN' +
        'o'
      ''
      'Insert dbo.SortOrderFinSum'
      ''
      'SELECT PR2.ProductDisplayName,'
      'SORP2.SortingOrderNo, '
      'P2.ProductNo,'
      'SORP2.SortingOrderRowNo,'
      ''
      ''
      'SUM(PTD2.NoOfPieces),'
      'SUM(PTD2.m3Actual),'
      'SUM(PTD2.m3Nominal),'
      'SUM(PTD2.LinealMeterActualLength),'
      ''
      'PG2.ActualThicknessMM,'
      'PG2.ActualWidthMM,'
      'PL.ActualLengthMM,'
      'PG2.NominalThicknessMM,'
      'PG2.NominalWidthMM,'
      'PL.NominalLengthMM,'
      ''
      'SOR.Price AS AvgPricePerAM3,'
      'SOR.Price * SUM(PTD2.m3Nominal) AS V'#228'rde,'
      '0,'
      'SOR.Urlagg,'
      'PG2.SurfacingNo,'
      '0,'
      '0,'
      'SOR.MCClassNo'
      ''
      'FROM'
      'dbo.SortingOrderNewPkgs SORP2'
      
        'INNER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrderNo = SORP2' +
        '.SortingOrderNo'
      
        '                                    AND SOR.SortingOrderRowNo = ' +
        'SORP2.SortingOrderRowNo'
      
        'INNER JOIN dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD2 ON PTD2.PackageTypeNo = P2' +
        '.PackageTypeNo'
      
        'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = PTD2.Pro' +
        'ductLengthNo'
      'INNER JOIN dbo.Product PR2 ON PR2.ProductNo = P2.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG2 ON PG2.ProductGroupNo = PR2.Prod' +
        'uctGroupNo'
      ''
      'WHERE'
      'SORP2.SortingOrderNo = :SortingOrderNo'
      ''
      'Group By PR2.ProductDisplayName,'
      'SORP2.SortingOrderNo,'
      'P2.ProductNo,'
      'SORP2.SortingOrderRowNo,'
      'P2.ProductNo,'
      'PG2.ActualThicknessMM,'
      'PG2.ActualWidthMM,'
      'PL.ActualLengthMM,'
      'PG2.NominalThicknessMM,'
      'PG2.NominalWidthMM,'
      'PL.NominalLengthMM,'
      'SOR.Price,'
      'SOR.Urlagg,'
      'PG2.SurfacingNo,'
      'SOR.MCClassNo'
      '')
    Left = 880
    Top = 336
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_SortOrderFinSum: TFDQuery
    OnCalcFields = FD_SortOrderFinSumCalcFields
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SortOrderFinSum'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 880
    Top = 384
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SortOrderFinSumProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object FD_SortOrderFinSumSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderFinSumProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderFinSumSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderFinSumPieces: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pieces'
      Origin = 'Pieces'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###'
    end
    object FD_SortOrderFinSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_SortOrderFinSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_SortOrderFinSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_SortOrderFinSumATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortOrderFinSumNTMM: TFloatField
      FieldName = 'NTMM'
      Origin = 'NTMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumNBMM: TFloatField
      FieldName = 'NBMM'
      Origin = 'NBMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumPricePerNM3: TFloatField
      DisplayLabel = 'Pris/NM3'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_SortOrderFinSumProductValue: TFloatField
      DisplayLabel = 'V'#228'rde'
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object FD_SortOrderFinSumAvrUrlaggPcs: TIntegerField
      DisplayLabel = 'St. avr'#228'knade url'#228'gg'
      FieldName = 'AvrUrlaggPcs'
      Origin = 'AvrUrlaggPcs'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###'
    end
    object FD_SortOrderFinSumUrlagg: TIntegerField
      FieldName = 'Urlagg'
      Origin = 'Urlagg'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object FD_SortOrderFinSumPcsAttAvrakna: TIntegerField
      DisplayLabel = 'St. url'#228'gg kvar att avr'#228'kna'
      FieldKind = fkCalculated
      FieldName = 'PcsAttAvrakna'
      DisplayFormat = '#,###,###'
      Calculated = True
    end
    object FD_SortOrderFinSumLameller: TIntegerField
      FieldName = 'Lameller'
      Origin = 'Lameller'
    end
    object FD_SortOrderFinSumHyvelLPM: TFloatField
      FieldName = 'HyvelLPM'
      Origin = 'HyvelLPM'
    end
    object FD_SortOrderFinSumMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
  end
  object FD_GenRawSum_III: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Declare @ExpectedPcsOut Float,'
      '@RealPcsOut Float'
      ''
      'SELECT @RealPcsOut ='
      'SUM(PTD2.NoOfPieces)'
      'FROM'
      'dbo.SortingOrderNewPkgs SORP2'
      
        'Inner Join dbo.SortingOrderRow SOR on SOR.SortingOrderNo = SORP2' +
        '.SortingOrderNo'
      
        '                      and SOR.SortingOrderRowNo = SORP2.SortingO' +
        'rderRowNo'
      
        'INNER JOIN dbo.PackageType P2 ON P2.PackageTypeNo = SORP2.Packag' +
        'eTypeNo'
      
        'INNER JOIN dbo.PackageTypeDetail PTD2 ON PTD2.PackageTypeNo = P2' +
        '.PackageTypeNo'
      'INNER JOIN dbo.Product PR2 ON PR2.ProductNo = P2.ProductNo'
      
        'INNER JOIN dbo.ProductGroup PG2 ON PG2.ProductGroupNo = PR2.Prod' +
        'uctGroupNo'
      'WHERE'
      'SORP2.SortingOrderNo = :SortingOrderNo'
      'AND SOR.MCClassNo <> 1'
      ''
      'Update dbo.SortOrderRawSum'
      'Set ExpectedPcsOut = (Pieces - UrlaggPcs) * Lameller'
      'WHERE SortingOrderNo = :SortingOrderNo'
      ''
      
        'Select @ExpectedPcsOut = SUM(ExpectedPcsOut) FROM SortOrderRawSu' +
        'm'
      'Where SortingOrderNo = :SortingOrderNo'
      ''
      'Update dbo.SortOrderRawSum'
      'Set KassPcs ='
      'PercentAdjPcs *'
      '(@ExpectedPcsOut - @RealPcsOut)'
      '/Lameller'
      'WHERE SortingOrderNo = :SortingOrderNo'
      ''
      'Update dbo.SortOrderRawSum'
      'Set KassPcs = 0'
      'WHERE SortingOrderNo = :SortingOrderNo'
      'AND KassPcs is null'
      ''
      ''
      'Update dbo.SortOrderRawSum'
      'Set KassAM3 = (ATMM/1000 * ABMM/1000 * ALMM/1000) * KassPcs,'
      'KassAM1 = ALMM/1000 * KassPcs'
      'WHERE SortingOrderNo = :SortingOrderNo'
      ''
      'Update dbo.SortOrderRawSum'
      
        'Set ADjustedAM3 = ATMM / 1000 * ABMM / 1000 * ALMM / 1000 * ADju' +
        'stedPieces,'
      
        'ADjustedNM3 = NTMM / 1000 * NBMM / 1000 * NLMM / 1000 * ADjusted' +
        'Pieces,'
      'ADjustedAM1 = ALMM / 1000 * ADjustedPieces'
      'WHERE SortingOrderNo = :SortingOrderNo'
      '')
    Left = 1088
    Top = 744
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_GetLPMHyvlat: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select SUM(HyvelLPM) AS HyvlatLPM FROM dbo.SortOrderFinSum'
      'WHERE SortingOrderNo = :SortingOrderNo')
    Left = 440
    Top = 672
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_GetLPMHyvlatHyvlatLPM: TFloatField
      FieldName = 'HyvlatLPM'
      Origin = 'HyvlatLPM'
      ReadOnly = True
    end
  end
  object FD_ProdTimeSeg: TFDQuery
    AfterInsert = FD_ProdTimeSegAfterInsert
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SOProductionTimeSegment'
      'Where SortingOrderNo = :SortingOrderNo'
      'Order By SegmentNo')
    Left = 544
    Top = 464
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_ProdTimeSegSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_ProdTimeSegSegmentNo: TIntegerField
      DisplayLabel = 'Segmentnr'
      FieldName = 'SegmentNo'
      Origin = 'SegmentNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_ProdTimeSegStartSegment: TSQLTimeStampField
      DisplayLabel = 'Start segment'
      FieldName = 'StartSegment'
      Origin = 'StartSegment'
      ProviderFlags = [pfInUpdate]
    end
    object FD_ProdTimeSegEndSegment: TSQLTimeStampField
      DisplayLabel = 'Slut segment'
      FieldName = 'EndSegment'
      Origin = 'EndSegment'
      ProviderFlags = [pfInUpdate]
    end
    object FD_ProdTimeSegPrevSortingOrderNo: TIntegerField
      DisplayLabel = 'F'#246'reg'#229'ende k'#246'rnr'
      FieldName = 'PrevSortingOrderNo'
      Origin = 'PrevSortingOrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object FD_ProdTimeSegProductionTime: TFMTBCDField
      FieldName = 'ProductionTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 1
    end
  end
  object FD_vis_PkgRegInOtherRunsBetweenDates: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgRegInOtherRunsBetweenDates'
    Left = 720
    Top = 840
    ParamData = <
      item
        Name = '@NextDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = '@PrevDate'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FD_vis_PkgRegInOtherRunsBetweenDatesSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      Required = True
    end
    object FD_vis_PkgRegInOtherRunsBetweenDatesDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ReadOnly = True
    end
  end
  object FD_DelProdTimeSeg: TFDQuery
    AfterInsert = FD_ProdTimeSegAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SOProductionTimeSegment'
      'Where SortingOrderNo = :SortingOrderNo')
    Left = 544
    Top = 568
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object ds_ProdTimeSeg: TDataSource
    DataSet = FD_ProdTimeSeg
    Left = 544
    Top = 512
  end
  object FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CheckIfAnyPkgRegInOtherRunsBetweenDates'
    Left = 984
    Top = 816
    ParamData = <
      item
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@ProductionUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDatesSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      Required = True
    end
  end
  object FD_SetTargetProduct: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.SortingOrderRow'
      'Set TargetProduct = 0'
      'WHERE SortingOrderNo = :SortingOrderNo'
      ''
      'Update dbo.SortingOrderRow'
      'Set TargetProduct = 1'
      'WHERE SortingOrderNo = :SortingOrderNo'
      'and dbo.SortingOrderRow.Urlagg = 0')
    Left = 968
    Top = 648
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_GenRawSum_IIb: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ' Update dbo.SortOrderRawSum Set PercentAdjPcs ='
      
        ' (CAST(ADjustedPieces AS Float) / CAST(:SumAdjPcs AS Float)) * 1' +
        '.0'
      ' WHERE dbo.SortOrderRawSum.SortingOrderNo = :SortingOrderNo')
    Left = 1088
    Top = 592
    ParamData = <
      item
        Name = 'SUMADJPCS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object FD_DeleteSortOrderRawSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Delete dbo.SortOrderRawSum where SortingOrderNo = :SortingOrderN' +
        'o')
    Left = 968
    Top = 712
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FD_getAdjPcs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SUM(sos.ADjustedPieces) AS FDjPcs'
      'from dbo.SortOrderRawSum sos'
      'WHERE sos.SortingOrderNo = :SortingOrderNo')
    Left = 1088
    Top = 640
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_getAdjPcsAdjPcs: TIntegerField
      FieldName = 'FDjPcs'
      Origin = 'FDjPcs'
      ReadOnly = True
    end
  end
  object sq_DelSortOrder: TFDQuery
    AfterInsert = cds_SortOrderAfterInsert
    BeforePost = cds_SortOrderBeforePost
    AfterScroll = cds_SortOrderAfterScroll
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrder'
      'WHERE SortingOrderNo = :SortingOrderNo'
      '')
    Left = 32
    Top = 120
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cds_VolResDtl: TFDQuery
    AfterInsert = cds_VolResDtlAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select vr.*,'
      'CAST(0.0 AS Float) AS SumWeeks,'
      'CAST(0.0 AS Float) AS Week1,'
      'CAST(0.0 AS Float) AS Week2,'
      'CAST(0.0 AS Float) AS Week3,'
      'CAST(0.0 AS Float) AS Week4,'
      'CAST(0.0 AS Float) AS Week5,'
      'CAST(0.0 AS Float) AS Week6,'
      'CAST(0.0 AS Float) AS Week7,'
      'CAST(0.0 AS Float) AS Week8,'
      'CAST(0.0 AS Float) AS Week9'
      'FROM dbo.VolResDtl vr'
      'WHERE vr.ClientNo = :ClientNo')
    Left = 144
    Top = 472
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VolResDtlReservationNo: TIntegerField
      FieldName = 'ReservationNo'
      Origin = 'ReservationNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_VolResDtlNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object cds_VolResDtlClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VolResDtlDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_VolResDtlCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_VolResDtlDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_VolResDtlModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_VolResDtlProdukt: TStringField
      FieldKind = fkLookup
      FieldName = 'Produkt'
      LookupKeyFields = 'ProductNo'
      LookupResultField = 'ProductDisplayName'
      KeyFields = 'ProductNo'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cds_VolResDtlSumWeeks: TFloatField
      FieldName = 'SumWeeks'
      Origin = 'SumWeeks'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek1: TFloatField
      FieldName = 'Week1'
      Origin = 'Week1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek2: TFloatField
      FieldName = 'Week2'
      Origin = 'Week2'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek3: TFloatField
      FieldName = 'Week3'
      Origin = 'Week3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek4: TFloatField
      FieldName = 'Week4'
      Origin = 'Week4'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek5: TFloatField
      FieldName = 'Week5'
      Origin = 'Week5'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek6: TFloatField
      FieldName = 'Week6'
      Origin = 'Week6'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek7: TFloatField
      FieldName = 'Week7'
      Origin = 'Week7'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek8: TFloatField
      FieldName = 'Week8'
      Origin = 'Week8'
      DisplayFormat = '#,###,###.0'
    end
    object cds_VolResDtlWeek9: TFloatField
      FieldName = 'Week9'
      Origin = 'Week9'
      DisplayFormat = '#,###,###.0'
    end
  end
  object ds_VolResDtl: TDataSource
    DataSet = cds_VolResDtl
    Left = 144
    Top = 536
  end
  object cds_SorOrdRowII: TFDQuery
    AfterInsert = cds_SorOrdRowAfterInsert
    BeforePost = cds_SorOrdRowBeforePost
    AfterPost = cds_SorOrdRowAfterPost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select SOR.MCClassNo, SOR.Urlagg, pg.ActualThicknessMM AS AT, pg' +
        '.ActualWidthMM AS AB'
      'FROM dbo.SortingOrderRow SOR'
      'INNER JOIN      dbo.Product pd ON pd.ProductNo = SOR.ProductNo'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'WHERE SOR.SortingOrderNo = :SortingOrderNo'
      'AND SOR.MCClassNo <> 1'
      '')
    Left = 128
    Top = 120
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SorOrdRowIIMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
    object cds_SorOrdRowIIUrlagg: TIntegerField
      FieldName = 'Urlagg'
      Origin = 'Urlagg'
    end
    object cds_SorOrdRowIIAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_SorOrdRowIIAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
  end
  object FDCopyTo: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 352
    Top = 736
  end
  object cds_ProdUtfall: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      'Select'
      'soup.SortingOrderNo,'
      'RP.RegPointName,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'CASE '
      'WHEN soup.ProductNo = -2 THEN '#39'Sp'#229'n/avkap'#39
      'WHEN soup.ProductNo = -1 THEN '#39'Kassation'#39
      'ELSE'
      'kv.GradeName '
      'END AS KV,'
      'soup.ProductNo,'
      '--soup.ProductDisplayName,'
      'SUM(soup.AM3) AS AM3,'
      'SUM(soup.AM1) AS AM1,'
      'SUM(soup.NM3) AS NM3,'
      'SUM(soup.Pcs) AS STYCK,'
      'SUM(soup.OutturnVolume) AS Utfall,'
      'SUM(soup.ProductValue) AS ProduktV'#228'rde,'
      ''
      'CASE WHEN SUM(soup.NM3) > 0 THEN'
      'SUM(soup.ProductValue) / SUM(soup.NM3)'
      'ELSE'
      ' CASE'
      ' WHEN soup.ProductNo < 1 THEN'
      '  (Select soup2.AvgPricePerAM3 from SortingOrderOutput soup2'
      #9'WHERE soup2.SortingOrderNo = soup.SortingOrderNo'
      #9#9'and soup2.ProductNo = soup.ProductNo)'
      ' ELSE'
      ' 0'
      'END'
      'END AS medelpris,'
      ''
      'SUM(soup.OutturnPrice) AS Prisutfall'
      ''
      'from dbo.SortingOrderOutput soup'
      
        'Inner Join dbo.SortingOrder SO on SO.SortingOrderNo = soup.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = SO.Produc' +
        'tionUnitNo'
      'Left Outer Join dbo.Product p '
      
        'Inner Join dbo.Grade kv on kv.Gradeno = p.Gradeno and kv.Languag' +
        'eCode = 1'
      
        'Inner Join dbo.Productgroup pg on pg.productgroupno = p.productg' +
        'roupno'
      'on p.productno = soup.productno'
      'WHERE SO.ProducerNo = :ProducerNo'
      
        'AND soup.SortingOrderNo IN (Select soup2.SortingOrderNo FROM dbo' +
        '.SortingOrderOutput soup2'
      
        'Inner Join dbo.SortingOrder SO2 on SO2.SortingOrderNo = soup2.So' +
        'rtingOrderNo'
      'WHERE SO2.ProducerNo = SO.ProducerNo'
      'AND soup2.productno = :productno)'
      'AND SO.Status = 4'
      
        'Group By soup.ProductNo, soup.SortingOrderNo, RP.RegPointName, k' +
        'v.GradeName,'
      'pg.ActualThicknessMM, pg.ActualWidthMM')
    Left = 784
    Top = 64
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProdUtfallProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdUtfallAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_ProdUtfallAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_ProdUtfallNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_ProdUtfallSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object cds_ProdUtfallUtfall: TFMTBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object cds_ProdUtfallProduktVrde: TFMTBCDField
      FieldName = 'ProduktV'#228'rde'
      Origin = '[ProduktV'#228'rde]'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object cds_ProdUtfallmedelpris: TFMTBCDField
      FieldName = 'medelpris'
      Origin = 'medelpris'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 6
    end
    object cds_ProdUtfallPrisutfall: TFMTBCDField
      DisplayLabel = '% av r'#229'vara'
      FieldName = 'Prisutfall'
      Origin = 'Prisutfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object cds_ProdUtfallSortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rorder'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProdUtfallRegPointName: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object cds_ProdUtfallAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_ProdUtfallAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_ProdUtfallKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Size = 30
    end
  end
  object ds_ProdUtfall: TDataSource
    DataSet = cds_ProdUtfall
    Left = 784
    Top = 128
  end
  object cds_SORawUtfall: TFDQuery
    CachedUpdates = True
    MasterSource = ds_ProdUtfall
    MasterFields = 'SortingOrderNo'
    DetailFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'Select SOR.*,'
      ''
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS AM3,'
      ''
      
        '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderUsedPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS NM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderUsedPkgs SO' +
        'RP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS PCS,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS AM1,'
      'P.GradeNo, PG.SpeciesNo, PG.SurfacingNo, PG.ProductCategoryNo,'
      'pg.ActualThicknessMM AS AT, pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'P.ProductDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM'
      ''
      'FROM dbo.SortingOrderRawMtrl SOR'
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.ProductLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 840
    Top = 80
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cds_SORawUtfallSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawUtfallRawMtrlNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawUtfallProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallMCClassNo: TIntegerField
      DisplayLabel = 'Delas f'#246're hyvling'
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallPlannedAM3: TBCDField
      DisplayLabel = 'AM3'
      FieldName = 'PlannedAM3'
      Origin = 'PlannedAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallPlannedPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PlannedPcs'
      Origin = 'PlannedPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallKassationAM3: TBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallAvgLength: TBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_SORawUtfallPlannedAM1: TBCDField
      DisplayLabel = 'AM1'
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallPercentPcsOfTotal: TFMTBCDField
      FieldName = 'PercentPcsOfTotal'
      Origin = 'PercentPcsOfTotal'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawUtfallKassationAM1: TBCDField
      FieldName = 'KassationAM1'
      Origin = 'KassationAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallTrimAM1: TFMTBCDField
      FieldName = 'TrimAM1'
      Origin = 'TrimAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawUtfallTrimAM3: TFMTBCDField
      FieldName = 'TrimAM3'
      Origin = 'TrimAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawUtfallMainRawMtrl: TIntegerField
      DisplayLabel = 'Huvudvara'
      FieldName = 'MainRawMtrl'
      Origin = 'MainRawMtrl'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallRealLPM: TBCDField
      FieldName = 'RealLPM'
      Origin = 'RealLPM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallAntalKapSnitt: TIntegerField
      DisplayLabel = 'Kapsnitt'
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallAntalLamellerUt: TIntegerField
      DisplayLabel = 'Lameller'
      FieldName = 'AntalLamellerUt'
      Origin = 'AntalLamellerUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallUrlaggsProcent: TBCDField
      DisplayLabel = 'Url'#228'gg %'
      FieldName = 'UrlaggsProcent'
      Origin = 'UrlaggsProcent'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object cds_SORawUtfallaPcs: TIntegerField
      FieldName = 'aPcs'
      Origin = 'aPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawUtfallaAM1: TBCDField
      FieldName = 'aAM1'
      Origin = 'aAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SORawUtfallNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SORawUtfallPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SORawUtfallAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SORawUtfallGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = []
    end
    object cds_SORawUtfallSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_SORawUtfallSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_SORawUtfallProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = []
    end
    object cds_SORawUtfallAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cds_SORawUtfallAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_SORawUtfallNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object cds_SORawUtfallNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object cds_SORawUtfallProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object cds_SORawUtfallPricePerNM3: TBCDField
      DisplayLabel = 'Pris/NM3'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      DisplayFormat = '#,###.00'
      Precision = 18
      Size = 3
    end
    object cds_SORawUtfallLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_SORawUtfallALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
  end
  object ds_SORawUtfall: TDataSource
    DataSet = cds_SORawUtfall
    Left = 838
    Top = 128
  end
  object FD_StoppSum: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'so.StoppTidsNamn, SUM(S.StoppTid) AS StoppTid,'
      'CASE WHEN 1 = :TimeUnit THEN'
      'CAST(Count(*) AS Float)'
      'else'
      'CAST(Count(*) AS Float) '
      'END'
      'AS StoppTidFloat'
      'FROM dbo.Stopps S'
      'Inner Join dbo.StoppOrsak so on so.StoppOrsakNr = S.StoppOrsakNr'
      'WHERE s.StoppStartade >= :StoppStart'
      'AND s.StoppStartade <= :StoppSlut'
      'AND ((S.StoppOrsakNr <> :VisaKortStopp) or (0 = :VisaKortStopp))'
      'AND So.Kategori = 1'
      'Group By so.StoppTidsNamn'
      'Order By Count(*) Desc')
    Left = 160
    Top = 712
    ParamData = <
      item
        Name = 'TIMEUNIT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STOPPSTART'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'STOPPSLUT'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FD_StoppSumStoppTidsNamn: TStringField
      FieldName = 'StoppTidsNamn'
      Origin = 'StoppTidsNamn'
    end
    object FD_StoppSumStoppTid: TIntegerField
      FieldName = 'StoppTid'
      Origin = 'StoppTid'
      ReadOnly = True
    end
    object FD_StoppSumStoppTidFloat: TFloatField
      FieldName = 'StoppTidFloat'
      Origin = 'StoppTidFloat'
      ReadOnly = True
    end
  end
  object FD_StoppSumAntal: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'so.StoppTidsNamn, SUM(S.StoppTid) AS StoppTid,'
      'CASE WHEN 1 = :TimeUnit THEN'
      'CAST(Count(*) AS Float)'
      'else'
      'CAST(Count(*) AS Float) '
      'END'
      'AS StoppTidFloat'
      'FROM dbo.Stopps S'
      'Inner Join dbo.StoppOrsak so on so.StoppOrsakNr = S.StoppOrsakNr'
      'WHERE s.StoppStartade >= :StoppStart'
      'AND s.StoppStartade <= :StoppSlut'
      'AND ((S.StoppOrsakNr <> :VisaKortStopp) or (0 = :VisaKortStopp))'
      'AND So.Kategori = 1'
      'Group By so.StoppTidsNamn'
      'Order By Count(*) Desc')
    Left = 160
    Top = 760
    ParamData = <
      item
        Name = 'TIMEUNIT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STOPPSTART'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'STOPPSLUT'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FD_StoppSumTid: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'so.StoppTidsNamn, SUM(S.StoppTid) AS StoppTid,'
      'CASE WHEN 1 = :TimeUnit THEN'
      'CAST(SUM(s.StoppTid)/60/60 AS Float)'
      'else'
      'CAST(SUM(s.StoppTid)/60 AS Float)'
      'END'
      'AS StoppTidFloat'
      'FROM dbo.Stopps S'
      'Inner Join dbo.StoppOrsak so on so.StoppOrsakNr = S.StoppOrsakNr'
      'WHERE s.StoppStartade >= :StoppStart'
      'AND s.StoppStartade <= :StoppSlut'
      'AND ((S.StoppOrsakNr <> :VisaKortStopp) or (0 = :VisaKortStopp))'
      'AND So.Kategori = 1'
      'Group By so.StoppTidsNamn'
      'Order By SUM(s.StoppTid) Desc')
    Left = 264
    Top = 768
    ParamData = <
      item
        Name = 'TIMEUNIT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STOPPSTART'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'STOPPSLUT'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VISAKORTSTOPP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_SortOrderRes: TFDQuery
    CachedUpdates = True
    MasterSource = ds_ProdUtfall
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SO.*, SO.RealProductionTime / 60 AS ProdTimeHour,'
      'SO.StopTime / 60 AS StopTimeHour,'
      'SO.StopTimeNotIncl / 60 AS StopTimeNotInclHour,'
      'SO.Postningstid / 60 AS PostTimeHour,'
      ''
      'SO.TotalValue / RawMtrlNM3 AS TotValPerNM3In,'
      'SO.TotalCost  / RawMtrlNM3 AS TotCostPerNM3In,'
      'SO.RawMtrlCost / RawMtrlNM3 AS RawMtrlCostPerNM3In,'
      'SO.ResultAO / RawMtrlNM3 AS ResultAOPerNM3In'
      'FROM dbo.SortingOrder SO'
      'WHERE SO.SortingOrderNo = :SortingOrderNo')
    Left = 696
    Top = 64
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SortOrderResProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_SortOrderResOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_SortOrderResProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
    end
    object cds_SortOrderResPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_SortOrderResLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_SortOrderResProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
    end
    object cds_SortOrderResStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_SortOrderResEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_SortOrderResPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderResStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_SortOrderResComments: TMemoField
      FieldName = 'Comments'
      Origin = 'Comments'
      BlobType = ftMemo
    end
    object cds_SortOrderResRealStartTime: TSQLTimeStampField
      FieldName = 'RealStartTime'
      Origin = 'RealStartTime'
    end
    object cds_SortOrderResRealEndTime: TSQLTimeStampField
      FieldName = 'RealEndTime'
      Origin = 'RealEndTime'
    end
    object cds_SortOrderResRealProductionTime: TBCDField
      FieldName = 'RealProductionTime'
      Origin = 'RealProductionTime'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderResStopTime: TIntegerField
      FieldName = 'StopTime'
      Origin = 'StopTime'
    end
    object cds_SortOrderResDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_SortOrderResCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_SortOrderResWeekNo: TStringField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      Size = 2
    end
    object cds_SortOrderResYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
    end
    object cds_SortOrderResPrioNo: TIntegerField
      FieldName = 'PrioNo'
      Origin = 'PrioNo'
    end
    object cds_SortOrderResYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
    object cds_SortOrderResPercentTrimloss: TBCDField
      FieldName = 'PercentTrimloss'
      Origin = 'PercentTrimloss'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResMCClassNo: TIntegerField
      DisplayLabel = 'Delas f'#246're hyvling'
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
    end
    object cds_SortOrderResMoveToLIPNo: TIntegerField
      FieldName = 'MoveToLIPNo'
      Origin = 'MoveToLIPNo'
    end
    object cds_SortOrderResChipsM3Solid: TBCDField
      FieldName = 'ChipsM3Solid'
      Origin = 'ChipsM3Solid'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResChipsValue: TBCDField
      FieldName = 'ChipsValue'
      Origin = 'ChipsValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResRawMtrlCost: TBCDField
      FieldName = 'RawMtrlCost'
      Origin = 'RawMtrlCost'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResRawMtrlAM3: TBCDField
      FieldName = 'RawMtrlAM3'
      Origin = 'RawMtrlAM3'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResProductionCost: TBCDField
      FieldName = 'ProductionCost'
      Origin = 'ProductionCost'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResProductionAM3: TBCDField
      FieldName = 'ProductionAM3'
      Origin = 'ProductionAM3'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResCostPerAM3: TBCDField
      FieldName = 'CostPerAM3'
      Origin = 'CostPerAM3'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResSawdustM3Solid: TBCDField
      FieldName = 'SawdustM3Solid'
      Origin = 'SawdustM3Solid'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResSawdustValue: TBCDField
      FieldName = 'SawdustValue'
      Origin = 'SawdustValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResShiftNo: TIntegerField
      FieldName = 'ShiftNo'
      Origin = 'ShiftNo'
    end
    object cds_SortOrderResTypeOfRunNo: TIntegerField
      FieldName = 'TypeOfRunNo'
      Origin = 'TypeOfRunNo'
    end
    object cds_SortOrderResResponsibleUser: TIntegerField
      FieldName = 'ResponsibleUser'
      Origin = 'ResponsibleUser'
    end
    object cds_SortOrderResAnsvarigSaljareNo: TIntegerField
      FieldName = 'AnsvarigSaljareNo'
      Origin = 'AnsvarigSaljareNo'
    end
    object cds_SortOrderResNoOfWorkers: TBCDField
      FieldName = 'NoOfWorkers'
      Origin = 'NoOfWorkers'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResNoOfWorkersPostning: TBCDField
      FieldName = 'NoOfWorkersPostning'
      Origin = 'NoOfWorkersPostning'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
    end
    object cds_SortOrderResAvkapAM3: TBCDField
      FieldName = 'AvkapAM3'
      Origin = 'AvkapAM3'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResAvkapLPM: TBCDField
      FieldName = 'AvkapLPM'
      Origin = 'AvkapLPM'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResKassationAM3: TBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResKassationLPM: TBCDField
      FieldName = 'KassationLPM'
      Origin = 'KassationLPM'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
    end
    object cds_SortOrderResAvkapValue: TBCDField
      FieldName = 'AvkapValue'
      Origin = 'AvkapValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResKassationValue: TBCDField
      FieldName = 'KassationValue'
      Origin = 'KassationValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
      Origin = 'SizeFormat'
    end
    object cds_SortOrderResLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
    end
    object cds_SortOrderResTotalSalaryCost: TBCDField
      FieldName = 'TotalSalaryCost'
      Origin = 'TotalSalaryCost'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResRawMtrlAM1: TBCDField
      FieldName = 'RawMtrlAM1'
      Origin = 'RawMtrlAM1'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResRawMtrlPcs: TIntegerField
      FieldName = 'RawMtrlPcs'
      Origin = 'RawMtrlPcs'
    end
    object cds_SortOrderResProductionAM1: TBCDField
      FieldName = 'ProductionAM1'
      Origin = 'ProductionAM1'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResProductionPcs: TIntegerField
      FieldName = 'ProductionPcs'
      Origin = 'ProductionPcs'
    end
    object cds_SortOrderResProductionValue: TBCDField
      FieldName = 'ProductionValue'
      Origin = 'ProductionValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAntalKapSnitt: TIntegerField
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
    end
    object cds_SortOrderResTotalValue: TBCDField
      FieldName = 'TotalValue'
      Origin = 'TotalValue'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResTotalAM3: TBCDField
      FieldName = 'TotalAM3'
      Origin = 'TotalAM3'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResTotalAM1: TBCDField
      FieldName = 'TotalAM1'
      Origin = 'TotalAM1'
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
      Origin = 'TotalPcs'
    end
    object cds_SortOrderResTotalCost: TBCDField
      FieldName = 'TotalCost'
      Origin = 'TotalCost'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResResultAO: TBCDField
      FieldName = 'ResultAO'
      Origin = 'ResultAO'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResCostPerAM1: TBCDField
      FieldName = 'CostPerAM1'
      Origin = 'CostPerAM1'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAvgRawMtrlPriceAM3: TBCDField
      FieldName = 'AvgRawMtrlPriceAM3'
      Origin = 'AvgRawMtrlPriceAM3'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAvgProductPriceAM3: TBCDField
      FieldName = 'AvgProductPriceAM3'
      Origin = 'AvgProductPriceAM3'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAvgProductPriceAM1: TBCDField
      FieldName = 'AvgProductPriceAM1'
      Origin = 'AvgProductPriceAM1'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAvgRawMtrlPriceAM1: TBCDField
      FieldName = 'AvgRawMtrlPriceAM1'
      Origin = 'AvgRawMtrlPriceAM1'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResEfficiencyFactor: TBCDField
      FieldName = 'EfficiencyFactor'
      Origin = 'EfficiencyFactor'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResStopTimeNotIncl: TIntegerField
      FieldName = 'StopTimeNotIncl'
      Origin = 'StopTimeNotIncl'
    end
    object cds_SortOrderResLego: TIntegerField
      FieldName = 'Lego'
      Origin = 'Lego'
    end
    object cds_SortOrderResLegoCostPerAM3: TBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderResRawPIPNo: TIntegerField
      FieldName = 'RawPIPNo'
      Origin = 'RawPIPNo'
    end
    object cds_SortOrderResRawLIPNo: TIntegerField
      FieldName = 'RawLIPNo'
      Origin = 'RawLIPNo'
    end
    object cds_SortOrderResRealLpmMinute: TBCDField
      FieldName = 'RealLpmMinute'
      Origin = 'RealLpmMinute'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderResSeqNo: TIntegerField
      FieldName = 'SeqNo'
      Origin = 'SeqNo'
    end
    object cds_SortOrderResHyvelInfo: TMemoField
      FieldName = 'HyvelInfo'
      Origin = 'HyvelInfo'
      BlobType = ftMemo
    end
    object cds_SortOrderResPrintRawMtrlPart: TIntegerField
      FieldName = 'PrintRawMtrlPart'
      Origin = 'PrintRawMtrlPart'
    end
    object cds_SortOrderResTemplate: TIntegerField
      FieldName = 'Template'
      Origin = 'Template'
    end
    object cds_SortOrderResTemplateName: TStringField
      FieldName = 'TemplateName'
      Origin = 'TemplateName'
      Size = 50
    end
    object cds_SortOrderResTemplateUser: TIntegerField
      FieldName = 'TemplateUser'
      Origin = 'TemplateUser'
    end
    object cds_SortOrderResAnsvarig: TStringField
      FieldKind = fkLookup
      FieldName = 'Ansvarig'
      LookupDataSet = dmsContact.cds_Users
      LookupKeyFields = 'UserID'
      LookupResultField = 'Namn'
      KeyFields = 'ResponsibleUser'
      Size = 32
      Lookup = True
    end
    object cds_SortOrderResAnsvarigSaljare: TStringField
      FieldKind = fkLookup
      FieldName = 'AnsvarigSaljare'
      LookupDataSet = dmsContact.cds_Users
      LookupKeyFields = 'UserID'
      LookupResultField = 'Namn'
      KeyFields = 'AnsvarigSaljareNo'
      Size = 32
      Lookup = True
    end
    object cds_SortOrderResTypeOfRunName: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeOfRunName'
      LookupDataSet = dmsContact.cds_TypeOfRun
      LookupKeyFields = 'TypeOfRunNo'
      LookupResultField = 'TypeOfRunName'
      KeyFields = 'TypeOfRunNo'
      Lookup = True
    end
    object cds_SortOrderResAvgProductPriceNM3: TBCDField
      FieldName = 'AvgProductPriceNM3'
      Origin = 'AvgProductPriceNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResAvgRawMtrlPriceNM3: TBCDField
      FieldName = 'AvgRawMtrlPriceNM3'
      Origin = 'AvgRawMtrlPriceNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResProductionNM3: TBCDField
      FieldName = 'ProductionNM3'
      Origin = 'ProductionNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResRawMtrlNM3: TBCDField
      FieldName = 'RawMtrlNM3'
      Origin = 'RawMtrlNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderResSalaryCostPerHour: TBCDField
      FieldName = 'SalaryCostPerHour'
      Origin = 'SalaryCostPerHour'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResEfficiencyFactorWOStopptime: TBCDField
      FieldName = 'EfficiencyFactorWOStopptime'
      Origin = 'EfficiencyFactorWOStopptime'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResCostPerNM3: TBCDField
      FieldName = 'CostPerNM3'
      Origin = 'CostPerNM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResProdTimeHour: TFMTBCDField
      FieldName = 'ProdTimeHour'
      Origin = 'ProdTimeHour'
      ProviderFlags = []
      DisplayFormat = '####.00'
      Precision = 23
      Size = 6
    end
    object cds_SortOrderResStopTimeHour: TIntegerField
      FieldName = 'StopTimeHour'
      Origin = 'StopTimeHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
    end
    object cds_SortOrderResStopTimeNotInclHour: TIntegerField
      FieldName = 'StopTimeNotInclHour'
      Origin = 'StopTimeNotInclHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
    end
    object cds_SortOrderResPostTimeHour: TFMTBCDField
      FieldName = 'PostTimeHour'
      Origin = 'PostTimeHour'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '####.00'
      Precision = 21
      Size = 6
    end
    object cds_SortOrderResManualProdTime: TIntegerField
      FieldName = 'ManualProdTime'
      Origin = 'ManualProdTime'
    end
    object cds_SortOrderResPreCalcEfficiencyFactor: TBCDField
      DisplayLabel = 'Kalkylerad verkningsgrad %'
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      Precision = 18
      Size = 2
    end
    object cds_SortOrderResSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = #168#161'3@0e'#209#10'(.='#11
      Required = True
    end
    object cds_SortOrderResTotValPerNM3In: TFMTBCDField
      FieldName = 'TotValPerNM3In'
      Origin = 'TotValPerNM3In'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
      Precision = 38
      Size = 19
    end
    object cds_SortOrderResTotCostPerNM3In: TFMTBCDField
      FieldName = 'TotCostPerNM3In'
      Origin = 'TotCostPerNM3In'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
      Precision = 38
      Size = 19
    end
    object cds_SortOrderResRawMtrlCostPerNM3In: TFMTBCDField
      FieldName = 'RawMtrlCostPerNM3In'
      Origin = 'RawMtrlCostPerNM3In'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
      Precision = 38
      Size = 19
    end
    object cds_SortOrderResResultAOPerNM3In: TFMTBCDField
      FieldName = 'ResultAOPerNM3In'
      Origin = 'ResultAOPerNM3In'
      ReadOnly = True
      DisplayFormat = '#,###,###.00'
      Precision = 38
      Size = 19
    end
  end
  object ds_SortOrderRes: TDataSource
    DataSet = cds_SortOrderRes
    Left = 696
    Top = 112
  end
  object cds_ProdUtfallRaw: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select'
      'soup.SortingOrderNo,'
      'RP.RegPointName,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'CASE '
      'WHEN soup.ProductNo = -2 THEN '#39'Sp'#229'n/avkap'#39
      'WHEN soup.ProductNo = -1 THEN '#39'Kassation'#39
      'ELSE'
      'kv.GradeName '
      'END AS KV,'
      'soup.ProductNo,'
      '--soup.ProductDisplayName,'
      'SUM(soup.AM3) AS AM3,'
      'SUM(soup.AM1) AS AM1,'
      'SUM(soup.NM3) AS NM3,'
      'SUM(soup.Pcs) AS STYCK,'
      'SUM(soup.OutturnVolume) AS Utfall,'
      'SUM(soup.ProductValue) AS ProduktV'#228'rde,'
      ''
      'CASE WHEN SUM(soup.NM3) > 0 THEN'
      'SUM(soup.ProductValue) / SUM(soup.NM3)'
      'ELSE'
      ' CASE'
      ' WHEN soup.ProductNo < 1 THEN'
      '  (Select soup2.AvgPricePerAM3 from SortingOrderOutput soup2'
      #9'WHERE soup2.SortingOrderNo = soup.SortingOrderNo'
      #9#9'and soup2.ProductNo = soup.ProductNo)'
      ' ELSE'
      ' 0'
      'END'
      'END AS medelpris,'
      ''
      'SUM(soup.OutturnPrice) AS Prisutfall'
      ''
      'from dbo.SortingOrderOutput soup'
      
        'Inner Join dbo.SortingOrder SO on SO.SortingOrderNo = soup.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = SO.Produc' +
        'tionUnitNo'
      'Left Outer Join dbo.Product p '
      
        'Inner Join dbo.Grade kv on kv.Gradeno = p.Gradeno and kv.Languag' +
        'eCode = 1'
      
        'Inner Join dbo.Productgroup pg on pg.productgroupno = p.productg' +
        'roupno'
      'on p.productno = soup.productno'
      'WHERE SO.ProducerNo = :ProducerNo'
      'AND SO.Status = 4'
      ''
      
        'AND soup.SortingOrderNo IN (Select sawraw2.SortingOrderNo FROM d' +
        'bo.SortOrderRawSum sawraw2'
      
        'Inner Join dbo.SortingOrder SO2 on SO2.SortingOrderNo = sawraw2.' +
        'SortingOrderNo'
      'WHERE SO2.ProducerNo = SO.ProducerNo'
      'AND sawraw2.productno = :productno)'
      ''
      
        'Group By soup.ProductNo, soup.SortingOrderNo, RP.RegPointName, k' +
        'v.GradeName,'
      'pg.ActualThicknessMM, pg.ActualWidthMM')
    Left = 784
    Top = 176
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProdUtfallFardig: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      'Select'
      'soup.SortingOrderNo,'
      'RP.RegPointName,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'CASE '
      'WHEN soup.ProductNo = -2 THEN '#39'Sp'#229'n/avkap'#39
      'WHEN soup.ProductNo = -1 THEN '#39'Kassation'#39
      'ELSE'
      'kv.GradeName '
      'END AS KV,'
      'soup.ProductNo,'
      '--soup.ProductDisplayName,'
      'SUM(soup.AM3) AS AM3,'
      'SUM(soup.AM1) AS AM1,'
      'SUM(soup.NM3) AS NM3,'
      'SUM(soup.Pcs) AS STYCK,'
      'SUM(soup.OutturnVolume) AS Utfall,'
      'SUM(soup.ProductValue) AS ProduktV'#228'rde,'
      ''
      'CASE WHEN SUM(soup.NM3) > 0 THEN'
      'SUM(soup.ProductValue) / SUM(soup.NM3)'
      'ELSE'
      ' CASE'
      ' WHEN soup.ProductNo < 1 THEN'
      '  (Select soup2.AvgPricePerAM3 from SortingOrderOutput soup2'
      #9'WHERE soup2.SortingOrderNo = soup.SortingOrderNo'
      #9#9'and soup2.ProductNo = soup.ProductNo)'
      ' ELSE'
      ' 0'
      'END'
      'END AS medelpris,'
      ''
      'SUM(soup.OutturnPrice) AS Prisutfall'
      ''
      'from dbo.SortingOrderOutput soup'
      
        'Inner Join dbo.SortingOrder SO on SO.SortingOrderNo = soup.Sorti' +
        'ngOrderNo'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = SO.Produc' +
        'tionUnitNo'
      'Left Outer Join dbo.Product p '
      
        'Inner Join dbo.Grade kv on kv.Gradeno = p.Gradeno and kv.Languag' +
        'eCode = 1'
      
        'Inner Join dbo.Productgroup pg on pg.productgroupno = p.productg' +
        'roupno'
      'on p.productno = soup.productno'
      'WHERE SO.ProducerNo = :ProducerNo'
      'AND SO.Status = 4'
      
        'AND soup.SortingOrderNo IN (Select soup2.SortingOrderNo FROM dbo' +
        '.SortingOrderOutput soup2'
      
        'Inner Join dbo.SortingOrder SO2 on SO2.SortingOrderNo = soup2.So' +
        'rtingOrderNo'
      'WHERE SO2.ProducerNo = SO.ProducerNo'
      'AND soup2.productno = :productno)'
      ''
      
        'Group By soup.ProductNo, soup.SortingOrderNo, RP.RegPointName, k' +
        'v.GradeName,'
      'pg.ActualThicknessMM, pg.ActualWidthMM')
    Left = 784
    Top = 224
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object IntegerField2: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'ProduktV'#228'rde'
      Origin = '[ProduktV'#228'rde]'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'medelpris'
      Origin = 'medelpris'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 6
    end
    object FMTBCDField7: TFMTBCDField
      DisplayLabel = '% av r'#229'vara'
      FieldName = 'Prisutfall'
      Origin = 'Prisutfall'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 1
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'K'#246'rorder'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'M'#228'tpunkt'
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object FloatField2: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object StringField2: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Size = 30
    end
  end
  object sp_stp_CopyAORow: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_CopyAORow'
    Left = 40
    Top = 736
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SortingOrderRowNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ProductLengthNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@CreatedUser'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LengthSpec'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object mCopyLengths: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 440
    Top = 736
    object mCopyLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mCopyLengthsLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      OnChange = mCopyLengthsLengthSpecChange
      Size = 15
    end
    object mCopyLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object dsCopyLengths: TDataSource
    DataSet = mCopyLengths
    Left = 438
    Top = 792
  end
  object cds_Scheduler: TFDQuery
    AfterInsert = cds_SchedulerAfterInsert
    BeforePost = cds_SchedulerBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT ST.*, usd.UserName'
      'FROM dbo.cxSchedulerTable ST'
      'Inner Join dbo.Users usd on usd.UserID = ST.UserID'
      'WHERE ST.ID = :ID')
    Left = 344
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SchedulerResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####.00'
    end
    object cds_SchedulerYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SchedulerYearWeekChange
      Size = 4
    end
    object cds_SchedulerID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SchedulerCaption: TStringField
      FieldName = 'Caption'
      Origin = 'Caption'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SchedulerTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SchedulerTaskStatusFieldChange
    end
    object cds_SchedulerMtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_ProductionUnit
      LookupKeyFields = 'ProductionUnitNo'
      LookupResultField = 'M'#196'TPUNKT'
      KeyFields = 'ResourceID'
      ProviderFlags = [pfInUpdate]
      Size = 30
      Lookup = True
    end
    object cds_SchedulerUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerUserName: TStringField
      FieldName = 'UserName'
      Origin = 'UserName'
      ProviderFlags = []
    end
    object cds_SchedulerFixedDate: TIntegerField
      FieldName = 'FixedDate'
      Origin = 'FixedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerLocationNo: TIntegerField
      FieldName = 'LocationNo'
      Origin = 'LocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerORT: TStringField
      FieldKind = fkLookup
      FieldName = 'ORT'
      LookupDataSet = cds_uapCity
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LocationNo'
      Size = 50
      Lookup = True
    end
    object cds_SchedulerTaskCompleteField: TIntegerField
      FieldName = 'TaskCompleteField'
      Origin = 'TaskCompleteField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerPostningstid: TFMTBCDField
      FieldName = 'Postningstid'
      Precision = 18
      Size = 3
    end
    object cds_SchedulerPreCalcEfficiencyFactor: TFMTBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerFeedSpeed: TFMTBCDField
      FieldName = 'FeedSpeed'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerPlannedProductionTime: TFMTBCDField
      FieldName = 'PlannedProductionTime'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerPlannedWorkingTime: TFMTBCDField
      FieldName = 'PlannedWorkingTime'
      Precision = 18
      Size = 2
    end
  end
  object ds_Scheduler: TDataSource
    DataSet = cds_Scheduler
    Left = 344
    Top = 64
  end
  object sp_CopyLOToAO_II: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache, evUnidirectional]
    FetchOptions.Unidirectional = True
    StoredProcName = 'dbo.stp_SortingOrderRowCX'
    Left = 144
    Top = 600
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_Raw: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_SortingOrderRawMtrlCX'
    Left = 144
    Top = 656
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BookingNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_SORawOLD: TFDQuery
    AfterInsert = cds_SORawAfterInsert
    BeforePost = cds_SORawBeforePost
    CachedUpdates = True
    MasterSource = ds_SortOrder
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SOR.*,'
      ''
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS AM3,'
      ''
      
        '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderUsedPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS NM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderUsedPkgs SO' +
        'RP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS PCS,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.SortingOrderNo'
      'AND PT.ProductNo = SOR.ProductNo) AS AM1,'
      'P.GradeNo, PG.SpeciesNo, PG.SurfacingNo, PG.ProductCategoryNo,'
      'pg.ActualThicknessMM AS AT, pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'P.ProductDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM'
      ''
      'FROM dbo.SortingOrderRawMtrl SOR'
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.ProductLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE SOR.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 264
    Top = 128
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object IntegerField4: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'Delas f'#246're hyvling'
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = [pfInUpdate]
    end
    object BCDField1: TBCDField
      DisplayLabel = 'AM3'
      FieldName = 'PlannedAM3'
      Origin = 'PlannedAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PlannedPcs'
      Origin = 'PlannedPcs'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField9: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
      ProviderFlags = [pfInUpdate]
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField10: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField11: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
      ProviderFlags = [pfInUpdate]
    end
    object BCDField2: TBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object BCDField3: TBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object StringField3: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object BCDField4: TBCDField
      DisplayLabel = 'AM1'
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object IntegerField12: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField13: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
      ProviderFlags = [pfInUpdate]
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'PercentPcsOfTotal'
      Origin = 'PercentPcsOfTotal'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object BCDField5: TBCDField
      FieldName = 'KassationAM1'
      Origin = 'KassationAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'TrimAM1'
      Origin = 'TrimAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'TrimAM3'
      Origin = 'TrimAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'Huvudvara'
      FieldName = 'MainRawMtrl'
      Origin = 'MainRawMtrl'
      ProviderFlags = [pfInUpdate]
    end
    object BCDField6: TBCDField
      FieldName = 'RealLPM'
      Origin = 'RealLPM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object IntegerField15: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField16: TIntegerField
      DisplayLabel = 'Kapsnitt'
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField17: TIntegerField
      DisplayLabel = 'Lameller'
      FieldName = 'AntalLamellerUt'
      Origin = 'AntalLamellerUt'
      ProviderFlags = [pfInUpdate]
    end
    object BCDField7: TBCDField
      DisplayLabel = 'Url'#228'gg %'
      FieldName = 'UrlaggsProcent'
      Origin = 'UrlaggsProcent'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object IntegerField18: TIntegerField
      FieldName = 'aPcs'
      Origin = 'aPcs'
      ProviderFlags = [pfInUpdate]
    end
    object BCDField8: TBCDField
      FieldName = 'aAM1'
      Origin = 'aAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object FloatField3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object FloatField4: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object IntegerField19: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      ReadOnly = True
    end
    object FloatField5: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object IntegerField20: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = []
    end
    object IntegerField21: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object IntegerField22: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object IntegerField23: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = []
    end
    object FloatField6: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object FloatField7: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object FloatField8: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object FloatField9: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object StringField4: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object BCDField9: TBCDField
      DisplayLabel = 'Pris/NM3'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      DisplayFormat = '#,###.00'
      Precision = 18
      Size = 3
    end
    object StringField5: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_SORawLengthSpecChange
      Size = 15
    end
    object FloatField10: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object IntegerField24: TIntegerField
      DisplayLabel = 'Exkl.utfall'
      FieldName = 'ExcludeFromTotal'
      Origin = 'ExcludeFromTotal'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_DeleteCX: TFDQuery
    AfterInsert = cds_SortOrderAfterInsert
    BeforePost = cds_SortOrderBeforePost
    AfterScroll = cds_SortOrderAfterScroll
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'delete dbo.RawMtrlBookedHdr FROM'
      'dbo.RawMtrlBookedHdr '
      
        'Inner Join dbo.RawMtrlBookedDtl on dbo.RawMtrlBookedDtl.BookingN' +
        'o = dbo.RawMtrlBookedHdr.BookingNo'
      
        'and dbo.RawMtrlBookedDtl.ProductNo = dbo.RawMtrlBookedHdr.Produc' +
        'tNo'
      
        'and dbo.RawMtrlBookedDtl.ProductLengthNo = dbo.RawMtrlBookedHdr.' +
        'ProductLengthNo'
      'and dbo.RawMtrlBookedDtl.sspNo = dbo.RawMtrlBookedHdr.sspNo'
      'WHERE'
      'dbo.RawMtrlBookedDtl.ID = :SortingOrderNo'
      
        'AND NOT EXISTS (Select rmh.BookingNo FROM dbo.RawMtrlBookedHdr r' +
        'mh'
      
        'Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = rmh.Booki' +
        'ngNo'
      'and rmd.ProductNo = rmh.ProductNo'
      'and rmd.ProductLengthNo = rmh.ProductLengthNo'
      'and rmd.sspNo = rmh.sspNo'
      'WHERE'
      'rmh.sspNo = dbo.RawMtrlBookedHdr.sspNo'
      'AND rmd.ID <> dbo.RawMtrlBookedDtl.ID)'
      ''
      'Delete dbo.RawMtrlBookedDtl'
      'WHERE ID = :SortingOrderNo'
      ''
      'Delete dbo.cxSchedulerTable'
      'WHERE ID = :SortingOrderNo'
      '')
    Left = 192
    Top = 248
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object sp_MergeSortingOrderRow: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MergeSortingOrderRow'
    Left = 40
    Top = 784
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SORNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_Dim: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT Distinct'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB'
      'FROM dbo.Product p'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'WHERE p.productno = :ProductNo'
      '')
    Left = 536
    Top = 800
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_DimNT: TFloatField
      FieldName = 'NT'
      Origin = 'NB'
    end
    object cds_DimNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_DimAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_DimAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
  end
  object sp_OrderList: TFDStoredProc
    Active = True
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_OrderList'
    Left = 536
    Top = 752
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end
      item
        Position = 2
        Name = '@CustomerNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_OrderListOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      Required = True
    end
    object sp_OrderListOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      Required = True
    end
  end
  object sp_SortingOrderRowCX_add: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_SortingOrderRowCX_add'
    Left = 528
    Top = 696
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Add_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_RawMtrlBookedLink: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * from dbo.RawMtrlBookedLink'
      'WHERE SortingOrderNo = :ID'
      'and BookingNo = :BookingNo'
      'and sspNo = :sspNo'
      'and SortingOrderRowNo = :SortingOrderRowNo')
    Left = 544
    Top = 624
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SSPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERROWNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_RawMtrlBookedLinkBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RawMtrlBookedLinksspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RawMtrlBookedLinkSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RawMtrlBookedLinkSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RawMtrlBookedLinkOldBookingNo: TIntegerField
      FieldName = 'OldBookingNo'
      Origin = 'OldBookingNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form'
      '')
    Left = 344
    Top = 400
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end>
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsProducer: TStringField
      FieldKind = fkLookup
      FieldName = 'Producer'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsOwner: TStringField
      FieldKind = fkLookup
      FieldName = 'Owner'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsProductionUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductionUnit'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
  end
  object sp_CopyLOToAO_II_Manual: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.stp_SortingOrderRowCX_M'
    Left = 160
    Top = 808
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_uapCity: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Cy.CityNo, Cy.CityName, uap.UserID'
      'FROM [dbo].[UserArrivalPoint] uap'
      '  inner join dbo.City cy on cy.CityNo = uap.PhyInvPointNameNo')
    Left = 480
    Top = 128
    object cds_uapCityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      Required = True
    end
    object cds_uapCityCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_uapCityUserID: TSmallintField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object siLangLinked_dmsSortOrder: TsiLangLinked
    Version = '7.8.1'
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
      'ListField')
    Left = 608
    Top = 432
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0042004300
      44004600690065006C0064003100010041004D00330001000100010001000D00
      0A004200430044004600690065006C006400320001004B006100730073006100
      740069006F006E0041004D00330001000100010001000D000A00420043004400
      4600690065006C006400330001004100760067004C0065006E00670074006800
      01004D006500640065006C006C00E4006E0067006400010001004D0065006400
      65006C006C00E4006E006700640001000D000A00420043004400460069006500
      6C0064003400010041004D00310001000100010001000D000A00420043004400
      4600690065006C006400350001004B006100730073006100740069006F006E00
      41004D00310001000100010001000D000A004200430044004600690065006C00
      6400360001005200650061006C004C0050004D0001000100010001000D000A00
      4200430044004600690065006C00640037000100550072006C00E40067006700
      2000250001000100010001000D000A004200430044004600690065006C006400
      38000100610041004D00310001000100010001000D000A004200430044004600
      690065006C0064003900010050007200690073002F004E004D00330001000100
      500072006900630065002F004E004D003300010001000D000A00630064007300
      5F0041004F0041004C004D004D00010041004C004D004D000100010001000100
      0D000A006300640073005F0041004F0041004F004E007200010041004F004E00
      720001000100010001000D000A006300640073005F0041004F0041004F005200
      610064004E007200010041004F005200610064004E0072000100010001000100
      0D000A006300640073005F0041004F0042006100720043006F00640065000100
      42006100720043006F00640065000100530074007200650063006B006B006F00
      6400010042006100720063006F00640065000100530074007200650063006B00
      6B006F00640001000D000A006300640073005F0041004F004700720061006400
      65005300740061006D0070000100470072006100640065005300740061006D00
      700001000100010001000D000A006300640073005F0041004F004C0065006E00
      6700740068004400650073006300720069007000740069006F006E0001004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      01000100010001000D000A006300640073005F0041004F004C0069006E006A00
      650001004C0069006E006A00650001000100010001000D000A00630064007300
      5F0041004F004D0061006C006C0053006F007200740069006E0067004F007200
      6400650072004E006F0001004B00F60072006F0072006400650072006E007200
      01000100520075006E0020006F00720064006500720020006E006F0001000100
      0D000A006300640073005F0041004F004D0061006C006C00540065006D007000
      6C006100740065004E0061006D00650001004D0061006C006C00010001005400
      65006D0070006C00610074006500010001000D000A006300640073005F004100
      4F004D00610072006B0001004D00610072006B0001004D00E40072006B006E00
      69006E006700010001004D00E40072006B006E0069006E00670001000D000A00
      6300640073005F0041004F004E006F004F006600530074007200610070007300
      01004E006F004F00660053007400720061007000730001000100010001000D00
      0A006300640073005F0041004F005000610063006B0061006700650048006500
      690067006800740001005000610063006B006100670065004800650069006700
      6800740001000100010001000D000A006300640073005F0041004F0050006100
      63006B006100670065005700690064007400680001005000610063006B006100
      670065005700690064007400680001000100010001000D000A00630064007300
      5F0041004F00500061006B00650074000100500061006B006500740001000100
      50006B0067000100500061006C006C006100720001000D000A00630064007300
      5F0041004F00500050005000010050005000500001000100010001000D000A00
      6300640073005F0041004F00500072006F006400750063007400010050007200
      6F00640075006300740001000100010001000D000A006300640073005F004100
      4F0053006F00720074004F007200640065007200010053006F00720074004F00
      720064006500720001000100010001000D000A006300640073005F0041004F00
      5700720061007000540079007000650001005700720061007000540079007000
      650001000100010001000D000A006300640073005F00440069006D0041004200
      0100410042000100010041005700010001000D000A006300640073005F004400
      69006D00410054000100410054000100010041005400010001000D000A006300
      640073005F00440069006D004E00420001004E004200010001004E0057000100
      01000D000A006300640073005F00440069006D004E00540001004E0054000100
      01004E005400010001000D000A006300640073005F0046006500650064004200
      610063006B004300720065006100740065006400550073006500720001004300
      7200650061007400650064005500730065007200010053006B00610070006100
      64002000610076000100010053006B0061007000610064002000610076000100
      0D000A006300640073005F0046006500650064004200610063006B0044006100
      7400650043007200650061007400650064000100440061007400650043007200
      6500610074006500640001000100010001000D000A006300640073005F004600
      6500650064004200610063006B0044006100740065004D006F00640069006600
      690065006400010044006100740065004D006F00640069006600690065006400
      01000100010001000D000A006300640073005F00460065006500640042006100
      63006B0046006500650064004200610063006B004E006F000100460065006500
      64004200610063006B004E006F0001000100010001000D000A00630064007300
      5F0046006500650064004200610063006B004D006F0064006900660069006500
      6400550073006500720001004D006F0064006900660069006500640055007300
      650072000100C4006E00640072006100640020006100760001000100C4006E00
      640072006100640020006100760001000D000A006300640073005F0046006500
      650064004200610063006B004E006F0074006500720069006E00670001004E00
      6F0074006500720069006E00670001004E006F00740065007200610001004E00
      6F007400650001004E006F00740065007200610001000D000A00630064007300
      5F0046006500650064004200610063006B0053006F007200740069006E006700
      4F0072006400650072004E006F00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A006300640073005F00
      460069006E00640052006100770041004C004D004D00010041004C004D004D00
      01000100010001000D000A006300640073005F00460069006E00640052006100
      77004C0065006E00670074006800440065007300630072006900700074006900
      6F006E0001004C0065006E006700740068004400650073006300720069007000
      740069006F006E0001000100010001000D000A006300640073005F0046006900
      6E006400520061007700500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065000100500072006F0064007500630074004400
      6900730070006C00610079004E0061006D00650001000100010001000D000A00
      6300640073005F00460069006E006400520061007700500072006F0064007500
      630074004C0065006E006700740068004E006F000100500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      6300640073005F00460069006E006400520061007700500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      010001000D000A006300640073005F00460069006E006400550072006C006100
      6700670041004C004D004D00010041004C004D004D0001000100010001000D00
      0A006300640073005F00460069006E006400550072006C006100670067004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      01004C0065006E00670074006800440065007300630072006900700074006900
      6F006E0001000100010001000D000A006300640073005F00460069006E006400
      550072006C006100670067005000500050000100500050005000010001000100
      01000D000A006300640073005F00460069006E006400550072006C0061006700
      6700500072006F00640075006300740044006900730070006C00610079004E00
      61006D0065000100500072006F00640075006300740044006900730070006C00
      610079004E0061006D00650001000100010001000D000A006300640073005F00
      460069006E006400550072006C00610067006700500072006F00640075006300
      74004C0065006E006700740068004E006F000100500072006F00640075006300
      74004C0065006E006700740068004E006F0001000100010001000D000A006300
      640073005F00460069006E006400550072006C00610067006700500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A006300640073005F004C00650067006F0050007200
      69007300410042004D004D000100410042004D004D0001000100010001000D00
      0A006300640073005F004C00650067006F005000720069007300410054004D00
      4D000100410054004D004D0001000100010001000D000A006300640073005F00
      4C00650067006F00500072006900730043007200650061007400650064005500
      7300650072000100430072006500610074006500640055007300650072000100
      53006B0061007000610064002000610076000100010053006B00610070006100
      640020006100760001000D000A006300640073005F004C00650067006F005000
      7200690073004400610074006500430072006500610074006500640001004400
      610074006500430072006500610074006500640001000100010001000D000A00
      6300640073005F004C00650067006F0050007200690073004400610074006500
      4D006F00640069006600690065006400010044006100740065004D006F006400
      6900660069006500640001000100010001000D000A006300640073005F004C00
      650067006F0050007200690073004D006F006400690066006900650064005500
      73006500720001004D006F006400690066006900650064005500730065007200
      0100C4006E00640072006100640020006100760001000100C4006E0064007200
      6100640020006100760001000D000A006300640073005F004C00650067006F00
      50007200690073004E006F004F006600530070006C006900740001004E006F00
      4F006600530070006C006900740001000100010001000D000A00630064007300
      5F004C00650067006F0050007200690073005000720069006300650001005000
      720069006300650001000100010001000D000A006300640073005F004C006500
      67006F0050007200690073005000720069006300650055006E00690074004E00
      6F0001005000720069006300650055006E00690074004E006F00010001000100
      01000D000A006300640073005F004C00650067006F0050007200690073005000
      72006F00640075006300740069006F006E0055006E00690074004E006F000100
      500072006F00640075006300740069006F006E0055006E00690074004E006F00
      01000100010001000D000A006300640073005F004C00650067006F0050007200
      6900730055007300650072004E0061006D006500010055007300650072004E00
      61006D00650001000100010001000D000A006300640073005F004C0065006700
      6F005600650072006B0043006C00690065006E0074004E0061006D0065000100
      43006C00690065006E0074004E0061006D00650001000100010001000D000A00
      6300640073005F004C00650067006F005600650072006B0043006C0069006500
      6E0074004E006F00010043006C00690065006E0074004E006F00010001000100
      01000D000A006300640073005F004C0065006E00670074006800470072006F00
      75007000470072006F00750070004E0061006D0065000100470072006F007500
      70004E0061006D00650001000100010001000D000A006300640073005F004C00
      65006E00670074006800470072006F0075007000470072006F00750070004E00
      6F000100470072006F00750070004E006F0001000100010001000D000A006300
      640073005F004C00490050004C00410047004500520047005200550050005000
      01004C0041004700450052004700520055005000500001000100530054004F00
      43004B002000470052004F0055005000010001000D000A006300640073005F00
      4C00490050004C00490050004E006F0001004C00490050004E006F0001000100
      010001000D000A006300640073005F004C00490050005000490050004E006F00
      01005000490050004E006F0001000100010001000D000A006300640073005F00
      4C004F0069006E0041004F004C004F004E00520001004C004F004E0052000100
      0100010001000D000A006300640073005F004E006500770050006B0067005300
      75006D00410063007400750061006C004C0065006E006700740068004D004D00
      0100410063007400750061006C004C0065006E006700740068004D004D000100
      0100010001000D000A006300640073005F004E006500770050006B0067005300
      75006D00410063007400750061006C0054006800690063006B006E0065007300
      73004D004D000100410063007400750061006C0054006800690063006B006E00
      6500730073004D004D0001000100010001000D000A006300640073005F004E00
      6500770050006B006700530075006D00410063007400750061006C0057006900
      6400740068004D004D000100410063007400750061006C005700690064007400
      68004D004D0001000100010001000D000A006300640073005F004E0065007700
      50006B006700530075006D0041004D003100010041004D003100010001000100
      01000D000A006300640073005F004E006500770050006B006700530075006D00
      41004D003300010041004D00330001000100010001000D000A00630064007300
      5F004E006500770050006B006700530075006D004E004D00330001004E004D00
      3300010001004E004D003300010001000D000A006300640073005F004E006500
      770050006B006700530075006D0053005400590043004B000100530054005900
      43004B000100010050004300530001005300C40043004B0001000D000A006300
      640073005F005000490050004F005200540001004F005200540001004F005200
      54000100430049005400590001004F005200540001000D000A00630064007300
      5F005000490050004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F0001000100010001000D000A006300640073005F00500049005000
      5000490050004E006F0001005000490050004E006F0001000100010001000D00
      0A006300640073005F00500072006900630065004C0069007300740050007200
      6900630065004C006900730074004E0061006D00650001005000720069006300
      65004C006900730074004E0061006D00650001000100010001000D000A006300
      640073005F00500072006900630065004C00690073007400540065006D007000
      6C006100740065004E006F000100540065006D0070006C006100740065004E00
      6F0001000100010001000D000A006300640073005F0050007200690063006500
      55006E0069007400540065006D0070006C0061007400650055006E0069007400
      4E0061006D0065000100540065006D0070006C0061007400650055006E006900
      74004E0061006D00650001000100010001000D000A006300640073005F005000
      720069006300650055006E0069007400540065006D0070006C00610074006500
      55006E00690074004E006F000100540065006D0070006C006100740065005500
      6E00690074004E006F0001000100010001000D000A006300640073005F005000
      72006F00640049006E004C006100670065007200500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065000100
      0100010001000D000A006300640073005F00500072006F00640049006E004C00
      6100670065007200500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F0001000100010001000D000A00630064007300
      5F00500072006F00640049006E00730074007200750063007400420061007200
      43006F0064006500010042006100720043006F00640065000100530074007200
      650063006B006B006F006400010042006100720063006F006400650001005300
      74007200650063006B006B006F00640001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740042006100720043006F00
      6400650049004400010042006100720043006F00640065004900440001000100
      010001000D000A006300640073005F00500072006F00640049006E0073007400
      7200750063007400420049004C0044000100420049004C004400010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      75006300740043006F0072006E0065007200500072006F007400650063007400
      69006F006E00010043006F0072006E0065007200500072006F00740065006300
      740069006F006E0001004800F60072006E0073006B0079006400640001000100
      4800F60072006E0073006B0079006400640001000D000A006300640073005F00
      500072006F00640049006E0073007400720075006300740043006F0072006E00
      65007200500072006F00740065006300740069006F006E004E006F0001004300
      6F0072006E0065007200500072006F00740065006300740069006F006E004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064004900
      6E0073007400720075006300740043006F0072006E00500072006F0074000100
      43006F0072006E00500072006F00740001000100010001000D000A0063006400
      73005F00500072006F00640049006E0073007400720075006300740043007200
      6500610074006500640001004300720065006100740065006400010053006B00
      61007000610064000100010053006B00610070006100640001000D000A006300
      640073005F00500072006F00640049006E007300740072007500630074004300
      7200650061007400650064005500730065007200010043007200650061007400
      650064005500730065007200010053006B006100700061006400200061007600
      0100010053006B00610070006100640020006100760001000D000A0063006400
      73005F00500072006F00640049006E0073007400720075006300740044006100
      7400650043007200650061007400650064000100440061007400650043007200
      6500610074006500640001000100010001000D000A006300640073005F005000
      72006F00640049006E00730074007200750063007400450078004C006F006700
      0100450078004C006F00670001000100010001000D000A006300640073005F00
      500072006F00640049006E007300740072007500630074004500780074006500
      72006E0061006C004E006F00740065000100450078007400650072006E006100
      6C004E006F007400650001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740045007800740072006100
      490044000100450078007400720061004900440001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      460069006E006700650072004A006F0069006E0074000100460069006E006700
      650072004A006F0069006E0074000100460069006E0067006500720073006B00
      610072007600610064000100460069006E006700650072006A006F0069006E00
      74000100460069006E0067006500720073006B00610072007600610064000100
      0D000A006300640073005F00500072006F00640049006E007300740072007500
      6300740046004F0048004300700065007200630065006E007400010046004F00
      48004300700065007200630065006E00740001000100010001000D000A006300
      640073005F00500072006F00640049006E007300740072007500630074004700
      72006100640065005300740061006D0070000100470072006100640065005300
      740061006D00700001000100010001000D000A006300640073005F0050007200
      6F00640049006E0073007400720075006300740049004D005000010049004D00
      5000010049006D0070007200650067006E006500720069006E00670001005400
      72006500610074006D0065006E007400010049006D0070007200650067006E00
      6500720069006E00670001000D000A006300640073005F00500072006F006400
      49006E007300740072007500630074004D0069006E006900420075006E006400
      6C00650001004D0069006E006900420075006E0064006C006500010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      7500630074004D0069006E006900420075006E0064006C006500480065006900
      67006800740001004D0069006E006900420075006E0064006C00650048006500
      690067006800740001000100010001000D000A006300640073005F0050007200
      6F00640049006E007300740072007500630074004D0069006E00690042007500
      6E0064006C0065005700690064007400680001004D0069006E00690042007500
      6E0064006C0065005700690064007400680001000100010001000D000A006300
      640073005F00500072006F00640049006E007300740072007500630074004D00
      69006E004E006F004F00660053007400690063006B00730001004D0069006E00
      4E006F004F00660053007400690063006B00730001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      4D006F0064006900660069006500640001004D006F0064006900660069006500
      64000100C4006E00640072006100640001000100C4006E006400720061006400
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      7500630074004D006F0064006900660069006500640055007300650072000100
      4D006F0064006900660069006500640055007300650072000100C4006E006400
      72006100640020006100760001000100C4006E00640072006100640020006100
      760001000D000A006300640073005F00500072006F00640049006E0073007400
      72007500630074004E006F004F00660053007400720061007000730001004E00
      6F004F00660053007400720061007000730001000100010001000D000A006300
      640073005F00500072006F00640049006E007300740072007500630074004E00
      6F007400650001004E006F007400650001004E006F0074006500720061000100
      01004E006F00740065007200610001000D000A006300640073005F0050007200
      6F00640049006E007300740072007500630074005000610063006B0061006700
      65005F00530069007A00650001005000610063006B006100670065005F005300
      69007A00650001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000610063006B00610067006500
      43007500740001005000610063006B0061006700650043007500740001000100
      010001000D000A006300640073005F00500072006F00640049006E0073007400
      72007500630074005000610063006B0061006700650048006500690067006800
      740001005000610063006B006100670065004800650069006700680074000100
      0100010001000D000A006300640073005F00500072006F00640049006E007300
      740072007500630074005000610063006B006100670065005400610067004C00
      610079006F007500740001005000610063006B00610067006500540061006700
      4C00610079006F007500740001000100010001000D000A006300640073005F00
      500072006F00640049006E007300740072007500630074005000610063006B00
      610067006500540079007000650001005000610063006B006100670065005400
      79007000650001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000610063006B00610067006500
      54007900700065004E0061006D00650001005000610063006B00610067006500
      54007900700065004E0061006D00650001000100010001000D000A0063006400
      73005F00500072006F00640049006E0073007400720075006300740050006100
      63006B006100670065005700690064007400680001005000610063006B006100
      670065005700690064007400680001000100010001000D000A00630064007300
      5F00500072006F00640049006E00730074007200750063007400500061007000
      6500720057007200610070000100500061007000650072005700720061007000
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      7300740072007500630074005000450054000100500045005400010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      7500630074005000450054005F0054006F006C006500720061006E0063006500
      01005000450054005F0054006F006C006500720061006E006300650001000100
      010001000D000A006300640073005F00500072006F00640049006E0073007400
      7200750063007400500069006300740075007200650001005000690063007400
      75007200650001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000690065006300650073005000
      650072004D0069006E006900420075006E0064006C0065000100500069006500
      6300650073005000650072004D0069006E006900420075006E0064006C006500
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      73007400720075006300740050006B006700530069007A006500010050006B00
      6700530069007A00650001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740050007200650073007300
      7500720065005400720065006100740065006400010050007200650073007300
      750072006500540072006500610074006500640001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      500072006F00640049006E0073007400720075004E006F000100500072006F00
      640049006E0073007400720075004E006F0001000100010001000D000A006300
      640073005F00500072006F00640049006E007300740072007500630074005300
      65007100750065006E00630065004E006F000100530065007100750065006E00
      630065004E006F0001000100010001000D000A006300640073005F0050007200
      6F00640049006E0073007400720075006300740053006800720069006E006B00
      5700720061007000010053006800720069006E006B0057007200610070000100
      0100010001000D000A006300640073005F00500072006F00640049006E007300
      740072007500630074005300740061006D00700001005300740061006D007000
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      7300740072007500630074005300740072006100700054007900700065004E00
      6F0001005300740072006100700054007900700065004E006F00010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      7500630074005300740072006500730073004700720061006400650001005300
      740072006500730073004700720061006400650001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      54007200750063006B0053007400690063006B0073004E006F00010054007200
      750063006B0053007400690063006B0073004E006F0001000100010001000D00
      0A006300640073005F00500072006F00640049006E0073007400720075006300
      740054007200750063006B005300740072006F00010054007200750063006B00
      5300740072006F0001000100010001000D000A006300640073005F0050007200
      6F00640049006E00730074007200750063007400570072006100700054007900
      7000650001005700720061007000540079007000650001000100010001000D00
      0A006300640073005F00500072006F0064004C0065006E006700740068004100
      63007400010041006300740001000100010001000D000A006300640073005F00
      500072006F0064004C0065006E00670074006800410063007400750061006C00
      4C0065006E0067007400680049004E0043004800010041006300740075006100
      6C004C0065006E0067007400680049004E004300480001000100010001000D00
      0A006300640073005F00500072006F0064004C0065006E006700740068004100
      63007400750061006C004C0065006E006700740068004D004D00010041006300
      7400750061006C004C0065006E006700740068004D004D000100010001000100
      0D000A006300640073005F00500072006F0064004C0065006E00670074006800
      4300720065006100740065006400550073006500720001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F00500072006F0064004C0065006E00670074006800440061007400
      6500430072006500610074006500640001004400610074006500430072006500
      610074006500640001000100010001000D000A006300640073005F0050007200
      6F0064004C0065006E00670074006800460069006E006700650072004A006F00
      69006E0074000100460069006E006700650072004A006F0069006E0074000100
      460069006E0067006500720073006B0061007200760061006400010046006900
      6E006700650072006A006F0069006E0074000100460069006E00670065007200
      73006B006100720076006100640001000D000A006300640073005F0050007200
      6F0064004C0065006E006700740068004D006F00640069006600690065006400
      550073006500720001004D006F00640069006600690065006400550073006500
      72000100C4006E00640072006100640020006100760001000100C4006E006400
      72006100640020006100760001000D000A006300640073005F00500072006F00
      64004C0065006E006700740068004E006F006D0069006E0061006C004C006500
      6E00670074006800460045004500540001004E006F006D0069006E0061006C00
      4C0065006E00670074006800460045004500540001000100010001000D000A00
      6300640073005F00500072006F0064004C0065006E006700740068004E006F00
      6D0069006E0061006C004C0065006E006700740068004D004D0001004E006F00
      6D0069006E0061006C004C0065006E006700740068004D004D00010001000100
      01000D000A006300640073005F00500072006F0064004C0065006E0067007400
      6800500045005400010050004500540001000100010001000D000A0063006400
      73005F00500072006F0064004C0065006E00670074006800500072006F006400
      7500630074004C0065006E00670074006800470072006F00750070004E006F00
      0100500072006F0064007500630074004C0065006E0067007400680047007200
      6F00750070004E006F0001000100010001000D000A006300640073005F005000
      72006F0064004C0065006E00670074006800500072006F006400750063007400
      4C0065006E006700740068004E006F000100500072006F006400750063007400
      4C0065006E006700740068004E006F0001000100010001000D000A0063006400
      73005F00500072006F0064004C0065006E006700740068005300650071007500
      65006E00630065004E006F000100530065007100750065006E00630065004E00
      6F0001000100010001000D000A006300640073005F00700072006F0064007500
      63006500720043006C00690065006E0074004E0061006D006500010043006C00
      690065006E0074004E0061006D00650001000100010001000D000A0063006400
      73005F00700072006F006400750063006500720043006C00690065006E007400
      4E006F00010043006C00690065006E0074004E006F0001000100010001000D00
      0A006300640073005F00700072006F0064007500630065007200530065006100
      7200630068004E0061006D00650001005300650061007200630068004E006100
      6D00650001000100010001000D000A006300640073005F00500072006F006400
      75006300740069006F006E0055006E006900740043006F007300740001004300
      6F007300740001004B006F00730074006E0061006400010001004B006F007300
      74006E006100640001000D000A006300640073005F00500072006F0064007500
      6300740069006F006E0055006E00690074004C006F006E005000650072005400
      69006D006D00650001004C006F006E00500065007200540069006D006D006500
      01000100010001000D000A006300640073005F00500072006F00640075006300
      740069006F006E0055006E00690074004D005400500055004E004B0054000100
      4D00C4005400500055004E004B005400010001004D0045004100530055005200
      450050004F0049004E005400010001000D000A006300640073005F0050007200
      6F00640075006300740069006F006E0055006E0069007400500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064007500
      6300740069006F006E0055006E0069007400500072006F006400750063007400
      69006F006E0055006E00690074004E006F000100500072006F00640075006300
      740069006F006E0055006E00690074004E006F0001000100010001000D000A00
      6300640073005F00500072006F00640075006300740069006F006E0055006E00
      69007400500072006F00640055006E00690074004E006F000100500072006F00
      640055006E00690074004E006F0001000100010001000D000A00630064007300
      5F00500072006F00640075006300740069006F006E0055006E00690074005400
      7900700065004F00660055006E0069007400010054007900700065004F006600
      55006E006900740001000100010001000D000A006300640073005F0050007200
      6F0064007500630074004C0065006E0067007400680041004C004D004D000100
      41004C004D004D0001000100010001000D000A006300640073005F0050007200
      6F0064007500630074004C0065006E0067007400680046006500650074000100
      460065006500740001000100010001000D000A006300640073005F0050007200
      6F0064007500630074004C0065006E006700740068004C006E00670064006700
      720075007000700001004C00E4006E0067006400670072007500700070000100
      01004C0065006E006700740068002000670072006F0075007000010001000D00
      0A006300640073005F00500072006F0064007500630074004C0065006E006700
      740068004E004C004D004D0001004E004C004D004D00010001004E004C004D00
      4D00010001000D000A006300640073005F00500072006F006400750063007400
      4C0065006E00670074006800500072006F0064007500630074004C0065006E00
      6700740068004E006F000100500072006F0064007500630074004C0065006E00
      6700740068004E006F0001000100010001000D000A006300640073005F005000
      72006F0064007500630074004C0065006E00670074006800540075006D000100
      540075006D000100010049006E0063006800010001000D000A00630064007300
      5F00500072006F0064007500630074007300410063007400750061006C005400
      6800690063006B006E006500730073004D004D00010041006300740075006100
      6C0054006800690063006B006E006500730073004D004D000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730041006300
      7400750061006C00570069006400740068004D004D0001004100630074007500
      61006C00570069006400740068004D004D0001000100010001000D000A006300
      640073005F00500072006F006400750063007400730047007200610064006500
      4E0061006D0065000100470072006100640065004E0061006D00650001000100
      010001000D000A006300640073005F00500072006F0064007500630074007300
      470072006100640065004E006F000100470072006100640065004E006F000100
      0100010001000D000A006300640073005F00500072006F006400750063007400
      73004E006F006D0069006E0061006C0054006800690063006B006E0065007300
      730049004E004300480001004E006F006D0069006E0061006C00540068006900
      63006B006E0065007300730049004E004300480001000100010001000D000A00
      6300640073005F00500072006F00640075006300740073004E006F006D006900
      6E0061006C0054006800690063006B006E006500730073004D004D0001004E00
      6F006D0069006E0061006C0054006800690063006B006E006500730073004D00
      4D0001000100010001000D000A006300640073005F00500072006F0064007500
      6300740073004E006F006D0069006E0061006C00570069006400740068004900
      4E004300480001004E006F006D0069006E0061006C0057006900640074006800
      49004E004300480001000100010001000D000A006300640073005F0050007200
      6F00640075006300740073004E006F006D0069006E0061006C00570069006400
      740068004D004D0001004E006F006D0069006E0061006C005700690064007400
      68004D004D0001000100010001000D000A006300640073005F00500072006F00
      64007500630074007300500072006F0064007500630074004300610074006500
      67006F00720079004E0061006D0065000100500072006F006400750063007400
      430061007400650067006F00720079004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730050007200
      6F006400750063007400430061007400650067006F00720079004E006F000100
      500072006F006400750063007400430061007400650067006F00720079004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064007500
      630074007300500072006F00640075006300740044006900730070006C006100
      79004E0061006D0065000100500072006F006400750063007400440069007300
      70006C00610079004E0061006D00650001000100010001000D000A0063006400
      73005F00500072006F0064007500630074007300500072006F00640075006300
      7400470072006F00750070004E006F000100500072006F006400750063007400
      470072006F00750070004E006F0001000100010001000D000A00630064007300
      5F00500072006F0064007500630074007300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730053007000
      650063006900650073004E0061006D0065000100530070006500630069006500
      73004E0061006D00650001000100010001000D000A006300640073005F005000
      72006F006400750063007400730053007000650063006900650073004E006F00
      010053007000650063006900650073004E006F0001000100010001000D000A00
      6300640073005F00500072006F00640075006300740073005300750072006600
      6100630069006E0067004E0061006D0065000100530075007200660061006300
      69006E0067004E0061006D00650001000100010001000D000A00630064007300
      5F00500072006F00640075006300740073005300750072006600610063006900
      6E0067004E006F00010053007500720066006100630069006E0067004E006F00
      01000100010001000D000A006300640073005F00500072006F00640055007400
      660061006C006C00410042000100410042000100010041005700010001000D00
      0A006300640073005F00500072006F00640055007400660061006C006C004100
      4D003100010041004D00310001000100010001000D000A006300640073005F00
      500072006F00640055007400660061006C006C0041004D003300010041004D00
      330001000100010001000D000A006300640073005F00500072006F0064005500
      7400660061006C006C0041005400010041005400010001004100540001000100
      0D000A006300640073005F00500072006F00640055007400660061006C006C00
      4B00560001004B00560001004B00760061006C00690074006500740001004700
      720061006400650001004B00760061006C00690074006500740001000D000A00
      6300640073005F00500072006F00640055007400660061006C006C006D006500
      640065006C00700072006900730001006D006500640065006C00700072006900
      730001000100010001000D000A006300640073005F00500072006F0064005500
      7400660061006C006C004E004D00330001004E004D003300010001004E004D00
      3300010001000D000A006300640073005F00500072006F006400550074006600
      61006C006C00500072006900730075007400660061006C006C00010025002000
      6100760020007200E500760061007200610001000100010001000D000A006300
      640073005F00500072006F00640055007400660061006C006C00500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A006300640073005F00500072006F00640055007400
      660061006C006C00500072006F00640075006B00740056007200640065000100
      500072006F00640075006B0074005600E4007200640065000100010001000100
      0D000A006300640073005F00500072006F00640055007400660061006C006C00
      52006500670050006F0069006E0074004E0061006D00650001004D00E4007400
      700075006E006B007400010001004D0065006100730075007200650070006F00
      69006E007400010001000D000A006300640073005F00500072006F0064005500
      7400660061006C006C0053006F007200740069006E0067004F00720064006500
      72004E006F0001004B00F60072006F0072006400650072000100010052007500
      6E0020006F007200640065007200010001000D000A006300640073005F005000
      72006F00640055007400660061006C006C0053005400590043004B0001005300
      5400590043004B000100010050004300530001005300C40043004B0001000D00
      0A006300640073005F00500072006F00640055007400660061006C006C005500
      7400660061006C006C00010055007400660061006C006C00010001004F007500
      740063006F006D006500010001000D000A006300640073005F00500072006F00
      700073004100670065006E0074004E006F0001004100670065006E0074004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4100750074006F0043006F006C00570069006400740068000100410075007400
      6F0043006F006C005700690064007400680001004100750074006F002E002000
      6B006F006C002E006200720065006400640001004100750074006F002E002000
      63006F006C002E007700690064007400680001004100750074006F002E002000
      6B006F006C002E006200720065006400640001000D000A006300640073005F00
      500072006F007000730042006100720043006F00640065004E006F0001004200
      6100720043006F00640065004E006F0001000100010001000D000A0063006400
      73005F00500072006F007000730042006F006F006B0069006E00670054007900
      700065004E006F00010042006F006F006B0069006E0067005400790070006500
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      730043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      730043006F0070007900500063007300010043006F0070007900500063007300
      01004B006F0070006900650072006100200073007400790063006B0001000100
      4B006F007000690065007200610020007300E40063006B0001000D000A006300
      640073005F00500072006F007000730043007500730074006F006D0065007200
      4E006F00010043007500730074006F006D00650072004E006F00010001000100
      01000D000A006300640073005F00500072006F007000730045006E0064005000
      6500720069006F006400010045006E00640050006500720069006F0064000100
      0100010001000D000A006300640073005F00500072006F007000730046006900
      6C007400650072004F0072006400650072004400610074006500010046006900
      6C007400650072004F0072006400650072004400610074006500010046006900
      6C007400650072004F00720064006500720044006100740075006D0001000100
      460069006C007400650072004F00720064006500720044006100740075006D00
      01000D000A006300640073005F00500072006F007000730046006F0072006D00
      010046006F0072006D00010046006F0072006D0075006C00E400720001000100
      46006F0072006D0075006C00E400720001000D000A006300640073005F005000
      72006F0070007300470072006100640065005300740061006D0070004E006F00
      0100470072006100640065005300740061006D0070004E006F00010001000100
      01000D000A006300640073005F00500072006F0070007300470072006F007500
      70004200790042006F0078000100470072006F00750070004200790042006F00
      780001000100010001000D000A006300640073005F00500072006F0070007300
      470072006F0075007000530075006D006D006100720079000100470072006F00
      75007000530075006D006D0061007200790001000100010001000D000A006300
      640073005F00500072006F007000730049006E007000750074004F0070007400
      69006F006E00010049006E007000750074004F007000740069006F006E000100
      49006E006D00610074006E0069006E006700730061006C007400650072006E00
      6100740069007600010049006E0070007500740020006F007000740069006F00
      6E007300010049006E006D00610074006E0069006E006700730061006C007400
      650072006E00610074006900760001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680046006F0072006D00610074004E00
      6F0001004C0065006E0067007400680046006F0072006D00610074004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004C00
      65006E00670074006800470072006F00750070004E006F0001004C0065006E00
      670074006800470072006F00750070004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068004F00
      7000740069006F006E0001004C0065006E006700740068004F00700074006900
      6F006E0001000100010001000D000A006300640073005F00500072006F007000
      73004C0065006E0067007400680056006F006C0055006E00690074004E006F00
      01004C0065006E0067007400680056006F006C0055006E00690074004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004C00
      490050004E006F0001004C00490050004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F0001004C006F00610064006900
      6E0067004C006F0063006100740069006F006E004E006F000100010001000100
      0D000A006300640073005F00500072006F00700073004C004F004F0062006A00
      650063007400540079007000650001004C004F004F0062006A00650063007400
      540079007000650001000100010001000D000A006300640073005F0050007200
      6F00700073004D00610072006B006500740052006500670069006F006E004E00
      6F0001004D00610072006B006500740052006500670069006F006E004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073004E00
      650077004900740065006D0052006F00770001004E0065007700490074006500
      6D0052006F00770001000100010001000D000A006300640073005F0050007200
      6F00700073004F00720064006500720054007900700065004E006F0001004F00
      720064006500720054007900700065004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004F0077006E006500720001004F00
      77006E006500720001000100010001000D000A006300640073005F0050007200
      6F00700073004F0077006E00650072004E006F0001004F0077006E0065007200
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73005000490050004E006F0001005000490050004E006F000100010001000100
      0D000A006300640073005F00500072006F0070007300500072006F0064007500
      6300650072000100500072006F00640075006300650072000100010001000100
      0D000A006300640073005F00500072006F0070007300500072006F0064007500
      6300650072004E006F000100500072006F00640075006300650072004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073005000
      72006F00640075006300740069006F006E0055006E0069007400010050007200
      6F00640075006300740069006F006E0055006E00690074000100010001000100
      0D000A006300640073005F00500072006F007000730052006500670044006100
      740065000100520065006700440061007400650001000100010001000D000A00
      6300640073005F00500072006F007000730052006500670050006F0069006E00
      74004E006F00010052006500670050006F0069006E0074004E006F0001000100
      010001000D000A006300640073005F00500072006F0070007300520075006E00
      4E006F000100520075006E004E006F0001004B00F60072004E00720001000100
      4B00F60072004E00720001000D000A006300640073005F00500072006F007000
      7300530061006C006500730050006500720073006F006E004E006F0001005300
      61006C006500730050006500720073006F006E004E006F000100010001000100
      0D000A006300640073005F00500072006F0070007300530061006C0065007300
      52006500670069006F006E004E006F000100530061006C006500730052006500
      670069006F006E004E006F0001000100010001000D000A006300640073005F00
      500072006F007000730053006800690070007000650072004E006F0001005300
      6800690070007000650072004E006F0001000100010001000D000A0063006400
      73005F00500072006F0070007300530068006F007700500072006F0064007500
      630074000100530068006F007700500072006F00640075006300740001000100
      010001000D000A006300640073005F00500072006F0070007300530074006100
      7200740050006500720069006F00640001005300740061007200740050006500
      720069006F00640001000100010001000D000A006300640073005F0050007200
      6F00700073005300740061007400750073000100530074006100740075007300
      01000100530074006100740075007300010001000D000A006300640073005F00
      500072006F007000730053007500700070006C0069006500720043006F006400
      6500010053007500700070006C0069006500720043006F006400650001004C00
      650076006500720061006E007400F600720073006B006F006400010053007500
      700070006C0069006500720063006F006400650001004C006500760065007200
      61006E007400F600720073006B006F00640001000D000A006300640073005F00
      500072006F007000730055007300650072004900440001005500730065007200
      4900440001000100010001000D000A006300640073005F00500072006F007000
      73005600650072006B004B0075006E0064004E006F0001005600650072006B00
      4B0075006E0064004E006F0001000100010001000D000A006300640073005F00
      500072006F00700073005600650072006B004E006F0001005600650072006B00
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      73005600650072006B0053007500700070006C006900650072004E006F000100
      5600650072006B0053007500700070006C006900650072004E006F0001000100
      010001000D000A006300640073005F00500072006F007000730056006F006C00
      75006D00650055006E00690074004E006F00010056006F006C0075006D006500
      55006E00690074004E006F0001000100010001000D000A006300640073005F00
      52006100770041004F004E007200010041004F004E0072000100010001000100
      0D000A006300640073005F005200610077004C0065006E006700740068004400
      650073006300720069007000740069006F006E0001004C0065006E0067007400
      68004400650073006300720069007000740069006F006E000100010001000100
      0D000A006300640073005F005200610077004C00490050004C00410047004500
      52004700520055005000500001004C0041004700450052004700520055005000
      500001000100530054004F0043004B002000470052004F005500500001000100
      0D000A006300640073005F005200610077004C00490050004C00490050004E00
      6F0001004C00490050004E006F0001000100010001000D000A00630064007300
      5F005200610077004C00490050005000490050004E006F000100500049005000
      4E006F0001000100010001000D000A006300640073005F005200610077004D00
      740072006C0042006F006F006B00650064004C0069006E006B0042006F006F00
      6B0069006E0067004E006F00010042006F006F006B0069006E0067004E006F00
      01000100010001000D000A006300640073005F005200610077004D0074007200
      6C0042006F006F006B00650064004C0069006E006B004F006C00640042006F00
      6F006B0069006E0067004E006F0001004F006C00640042006F006F006B006900
      6E0067004E006F0001000100010001000D000A006300640073005F0052006100
      77004D00740072006C0042006F006F006B00650064004C0069006E006B005300
      6F007200740069006E0067004F0072006400650072004E006F00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A006300640073005F005200610077004D00740072006C0042006F006F00
      6B00650064004C0069006E006B0053006F007200740069006E0067004F007200
      64006500720052006F0077004E006F00010053006F007200740069006E006700
      4F00720064006500720052006F0077004E006F0001000100010001000D000A00
      6300640073005F005200610077004D00740072006C0042006F006F006B006500
      64004C0069006E006B007300730070004E006F0001007300730070004E006F00
      01000100010001000D000A006300640073005F00520061007700500049005000
      4F005200540001004F005200540001004F005200540001004300490054005900
      01004F005200540001000D000A006300640073005F0052006100770050004900
      50004F0077006E00650072004E006F0001004F0077006E00650072004E006F00
      01000100010001000D000A006300640073005F00520061007700500049005000
      5000490050004E006F0001005000490050004E006F0001000100010001000D00
      0A006300640073005F00520061007700500072006F0064007500630074000100
      500072006F00640075006300740001000100010001000D000A00630064007300
      5F0052006100770056006F006C0079006D00010056006F006C0079006D000100
      010056006F006C0075006D006500010001000D000A006300640073005F005200
      6500670050006F0069006E007400500072006F00640075006300740069006F00
      6E0055006E00690074004E0061006D0065000100500072006F00640075006300
      740069006F006E0055006E00690074004E0061006D0065000100010001000100
      0D000A006300640073005F0052006500670050006F0069006E00740052006500
      670069007300740072006100740069006F006E0050006F0069006E0074004E00
      6F00010052006500670069007300740072006100740069006F006E0050006F00
      69006E0074004E006F0001000100010001000D000A006300640073005F005300
      630068006500640075006C006500720042006F006F006B0069006E0067004E00
      6F00010042006F006F006B0069006E0067004E006F0001000100010001000D00
      0A006300640073005F005300630068006500640075006C006500720043006100
      7000740069006F006E000100430061007000740069006F006E00010001000100
      01000D000A006300640073005F005300630068006500640075006C0065007200
      4400610074006500430072006500610074006500640001004400610074006500
      430072006500610074006500640001000100010001000D000A00630064007300
      5F005300630068006500640075006C0065007200440075007200610074006900
      6F006E0001004400750072006100740069006F006E0001000100010001000D00
      0A006300640073005F005300630068006500640075006C006500720046006900
      6E006900730068000100460069006E0069007300680001000100010001000D00
      0A006300640073005F005300630068006500640075006C006500720046006900
      7800650064004400610074006500010046006900780065006400440061007400
      650001000100010001000D000A006300640073005F0053006300680065006400
      75006C00650072004900440001004900440001000100010001000D000A006300
      640073005F005300630068006500640075006C00650072004C006F0063006100
      740069006F006E004E006F0001004C006F0063006100740069006F006E004E00
      6F0001000100010001000D000A006300640073005F0053006300680065006400
      75006C00650072004D007400700075006E006B00740001004D00E40074007000
      75006E006B007400010001004D0065006100730075007200650070006F006900
      6E007400010001000D000A006300640073005F00530063006800650064007500
      6C00650072004F005200540001004F005200540001004F005200540001004300
      49005400590001004F005200540001000D000A006300640073005F0053006300
      68006500640075006C00650072004F0077006E00650072004E006F0001004F00
      77006E00650072004E006F0001000100010001000D000A006300640073005F00
      5300630068006500640075006C00650072005200650073006F00750072006300
      65004900440001005200650073006F0075007200630065004900440001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      7200530074006100720074000100530074006100720074000100010053007400
      6100720074007300010001000D000A006300640073005F005300630068006500
      640075006C00650072005400610073006B0043006F006D0070006C0065007400
      65004600690065006C00640001005400610073006B0043006F006D0070006C00
      6500740065004600690065006C00640001000100010001000D000A0063006400
      73005F005300630068006500640075006C00650072005400610073006B005300
      740061007400750073004600690065006C00640001005400610073006B005300
      740061007400750073004600690065006C00640001000100010001000D000A00
      6300640073005F005300630068006500640075006C0065007200550073006500
      720049004400010055007300650072004900440001000100010001000D000A00
      6300640073005F005300630068006500640075006C0065007200550073006500
      72004E0061006D006500010055007300650072004E0061006D00650001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      72005700650065006B004E006F0001005700650065006B004E006F0001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      72005600650072006B004E006F0001005600650072006B004E006F0001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      720059006500610072004E006F00010059006500610072004E006F0001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      720059006500610072005700650065006B000100590065006100720057006500
      65006B0001000100010001000D000A006300640073005F0053004F0043006E00
      6700500072006F006400470072006100640065004E006F000100470072006100
      640065004E006F0001000100010001000D000A006300640073005F0053004F00
      43006E006700500072006F00640049004D0050004E006F00010049004D005000
      4E006F0001000100010001000D000A006300640073005F0053004F0043006E00
      6700500072006F00640049006D0070007200650067006E006500720069006E00
      6700010049006D0070007200650067006E006500720069006E00670001004900
      6D0070007200650067006E006500720069006E00670001005400720065006100
      74006D0065006E007400010049006D0070007200650067006E00650072006900
      6E00670001000D000A006300640073005F0053004F0043006E00670050007200
      6F0064004B00760061006C00690074006500740001004B00760061006C006900
      7400650074000100010047007200610064006500010001000D000A0063006400
      73005F0053004F0043006E006700500072006F0064004E006500770050007200
      6F0064007500630074004E006F0001004E0065007700500072006F0064007500
      630074004E006F0001000100010001000D000A006300640073005F0053004F00
      43006E006700500072006F00640053006F007200740069006E0067004F007200
      6400650072004E006F00010053006F007200740069006E0067004F0072006400
      650072004E006F0001000100010001000D000A006300640073005F0053004F00
      43006E006700500072006F00640053007000650063006900650073004E006F00
      010053007000650063006900650073004E006F0001000100010001000D000A00
      6300640073005F0053004F0043006E006700500072006F006400530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F0001000100010001000D000A006300640073005F0053004F00
      43006E006700500072006F0064005400720073006C0061006700010054007200
      E40073006C006100670001000100530070006500630069006500730001000100
      0D000A006300640073005F0053004F0043006E006700500072006F0064005500
      74006600720061006E00640065000100550074006600F600720061006E006400
      65000100010053007500720066006100630069006E006700010001000D000A00
      6300640073005F0053004F004C00610079006F007500740041006E0074006100
      6C004B006F00700069006F007200010041006E00740061006C0020006B006F00
      700069006F007200010001004E006F0020006F006600200063006F0070006900
      65007300010001000D000A006300640073005F0053004F004C00610079006F00
      750074004C00610079006F007500740001004C00610079006F00750074000100
      0100010001000D000A006300640073005F0053004F004C00610079006F007500
      74004C00610079006F00750074004E006F0001004C00610079006F0075007400
      4E006F0001000100010001000D000A006300640073005F0053004F004C006100
      79006F007500740053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F0053004F004C0061007900
      6F007500740053006F007200740069006E0067004F0072006400650072005200
      6F0077004E006F00010053006F007200740069006E0067004F00720064006500
      720052006F0077004E006F0001000100010001000D000A006300640073005F00
      53004F004C00650067006F0043006F0073007400430061007000690074006100
      6C0043006F007300740001004300610070006900740061006C0043006F007300
      740001000100010001000D000A006300640073005F0053004F004C0065006700
      6F0043006F007300740043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F0001000100010001000D000A006300640073005F00
      53004F004C00650067006F0043006F007300740043006F007300740001004300
      6F007300740001004B006F00730074006E0061006400010001004B006F007300
      74006E006100640001000D000A006300640073005F0053004F004C0065006700
      6F0043006F007300740043007200650061007400650064005500730065007200
      010043007200650061007400650064005500730065007200010053006B006100
      7000610064002000610076000100010053006B00610070006100640020006100
      760001000D000A006300640073005F0053004F004C00650067006F0043006F00
      7300740044006100740065004300720065006100740065006400010044006100
      74006500430072006500610074006500640001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F0073007400440049004D00
      5F004400490056000100440049004D005F004400490056000100010001000100
      0D000A006300640073005F0053004F004C00650067006F0043006F0073007400
      4C00650067006F0043006F007300740050006500720041004D00330001004C00
      650067006F0043006F007300740050006500720041004D003300010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      74004C00650067006F007600650072006B0001004C00650067006F0076006500
      72006B0001000100010001000D000A006300640073005F0053004F004C006500
      67006F0043006F00730074004C0049005000470072006F00750070004E006F00
      01004C0049005000470072006F00750070004E006F0001000100010001000D00
      0A006300640073005F0053004F004C00650067006F0043006F00730074004C00
      6F0067006900630061006C0049006E00760065006E0074006F00720079005000
      6F0069006E0074004E006F0001004C006F0067006900630061006C0049006E00
      760065006E0074006F007200790050006F0069006E0074004E006F0001000100
      010001000D000A006300640073005F0053004F004C00650067006F0043006F00
      730074004D006F00640069006600690065006400550073006500720001004D00
      6F0064006900660069006500640055007300650072000100C4006E0064007200
      6100640020006100760001000100C4006E006400720061006400200061007600
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      74004D007400700075006E006B00740001004D00E4007400700075006E006B00
      7400010001004D0065006100730075007200650070006F0069006E0074000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      74004F006E0053007400690063006B00730001004F006E005300740069006300
      6B00730001005000E5002000730074007200F600010001005000E50020007300
      74007200F60001000D000A006300640073005F0053004F004C00650067006F00
      43006F00730074004F00760065007200680065006100640043006F0073007400
      01004F00760065007200680065006100640043006F0073007400010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      740050006800790073006900630061006C0049006E00760065006E0074006F00
      7200790050006F0069006E0074004E006F000100500068007900730069006300
      61006C0049006E00760065006E0074006F007200790050006F0069006E007400
      4E006F0001000100010001000D000A006300640073005F0053004F004C006500
      67006F0043006F007300740050006B0067005000720065006600690078000100
      50006B00670050007200650066006900780001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F0073007400500072006F00
      640075006300740069006F006E0055006E006900740043006F00640065000100
      500072006F00640075006300740069006F006E0055006E006900740043006F00
      6400650001000100010001000D000A006300640073005F0053004F004C006500
      67006F0043006F0073007400500072006F00640075006300740069006F006E00
      55006E00690074004E0061006D0065000100500072006F006400750063007400
      69006F006E0055006E00690074004E0061006D00650001000100010001000D00
      0A006300640073005F0053004F004C00650067006F0043006F00730074005000
      72006F00640075006300740069006F006E0055006E00690074004E006F000100
      500072006F00640075006300740069006F006E0055006E00690074004E006F00
      01000100010001000D000A006300640073005F0053004F004C00650067006F00
      43006F007300740052006500670069007300740072006100740069006F006E00
      50006F0069006E0074004E006F00010052006500670069007300740072006100
      740069006F006E0050006F0069006E0074004E006F0001000100010001000D00
      0A006300640073005F0053004F004C00650067006F0043006F00730074005300
      61006C0061007200790043006F00730074000100530061006C00610072007900
      43006F007300740001000100010001000D000A006300640073005F0053004F00
      4C00650067006F0043006F0073007400530065007100750065006E0063006500
      4E006F000100530065007100750065006E00630065004E006F00010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      7400530074006F00700070004F007200730061006B00460069006C0001005300
      74006F00700070004F007200730061006B00460069006C000100010001000100
      0D000A006300640073005F0053004F004C00650067006F0043006F0073007400
      530074006F0070007000540069006400460069006C000100530074006F007000
      7000540069006400460069006C0001000100010001000D000A00630064007300
      5F0053004F004C00650067006F0043006F007300740053007500720066006100
      630069006E0067004E006F00010053007500720066006100630069006E006700
      4E006F0001000100010001000D000A006300640073005F0053004F004C006500
      67006F0043006F00730074005400650072006D0069006E0061006C004E006F00
      01005400650072006D0069006E0061006C004E006F0001000100010001000D00
      0A006300640073005F0053004F006F007500740070007500740041004D003100
      010041004D00310001000100010001000D000A006300640073005F0053004F00
      6F007500740070007500740041004D003300010041004D003300010001000100
      01000D000A006300640073005F0053004F006F00750074007000750074006D00
      6500640065006C00700072006900730001004D002D0070007200690073000100
      0100010001000D000A006300640073005F0053004F006F007500740070007500
      74004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F0053004F006F0075007400700075007400500072006900
      730075007400660061006C006C000100250020006100760020007200E5007600
      61007200610001000100010001000D000A006300640073005F0053004F006F00
      75007400700075007400500072006F0064007500630074004400690073007000
      6C00610079004E0061006D0065000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006300640073005F00
      53004F006F0075007400700075007400500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F0001000100010001000D00
      0A006300640073005F0053004F006F0075007400700075007400500072006F00
      640075006B007400560072006400650001005600E40072006400650001000100
      560061006C0075006500010001000D000A006300640073005F0053004F006F00
      7500740070007500740053005400590043004B00010053005400590043004B00
      0100010050004300530001005300C40043004B0001000D000A00630064007300
      5F0053004F006F007500740070007500740055007400660061006C006C000100
      55007400660061006C006C002000250001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C00610041004D00
      31000100610041004D00310001000100010001000D000A006300640073005F00
      53004F0052006100770055007400660061006C006C0041004200010041004200
      0100010041005700010001000D000A006300640073005F0053004F0052006100
      770055007400660061006C006C0041004C004D004D00010041004C004D004D00
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C0041004D003100010041004D0031000100010001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C0041004D003300010041004D00330001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C0041006E007400
      61006C004200690074006100720055007400010041006E00740061006C004200
      69007400610072005500740001000100010001000D000A006300640073005F00
      53004F0052006100770055007400660061006C006C0041006E00740061006C00
      4B006100700053006E0069007400740001004B006100700073006E0069007400
      740001000100430075007400740069006E006700200070006F00730069007400
      69006F006E007300010001000D000A006300640073005F0053004F0052006100
      770055007400660061006C006C0041006E00740061006C004C0061006D006500
      6C006C00650072005500740001004C0061006D0065006C006C00650072000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C00610050006300730001006100500063007300010001000100
      01000D000A006300640073005F0053004F005200610077005500740066006100
      6C006C00410054000100410054000100010041005400010001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C0041007600
      67004C0065006E0067007400680001004100760067004C0065006E0067007400
      680001004D006500640065006C006C00E4006E0067006400010001004D006500
      640065006C006C00E4006E006700640001000D000A006300640073005F005300
      4F0052006100770055007400660061006C006C00430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      7200010053006B0061007000610064002000610076000100010053006B006100
      70006100640020006100760001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C0044006100740065004300720065006100
      7400650064000100440061007400650043007200650061007400650064000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C00470072006100640065004E006F0001004700720061006400
      65004E006F0001000100010001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C004B006100730073006100740069006F00
      6E0041004D00310001004B006100730073006100740069006F006E0041004D00
      310001000100010001000D000A006300640073005F0053004F00520061007700
      55007400660061006C006C004B006100730073006100740069006F006E004100
      4D00330001004B006100730073006100740069006F006E0041004D0033000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C004B006100730073006100740069006F006E00530074007900
      63006B0001004B006100730073006100740069006F006E005300740079006300
      6B0001000100010001000D000A006300640073005F0053004F00520061007700
      55007400660061006C006C004C0065006E006700740068004400650073006300
      720069007000740069006F006E0001004C00E4006E0067006400620065007300
      6B007200690076006E0069006E006700010001004C0065006E00670068007400
      20006400650073006300720069007000740069006F006E00010001000D000A00
      6300640073005F0053004F0052006100770055007400660061006C006C004C00
      65006E00670074006800530070006500630001004C00E4006E00670064000100
      01004C0065006E00670074006800010001000D000A006300640073005F005300
      4F0052006100770055007400660061006C006C004D00610069006E0052006100
      77004D00740072006C0001004800750076007500640076006100720061000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C004D00430043006C006100730073004E006F00010044006500
      6C006100730020006600F6007200650020006800790076006C0069006E006700
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C004D006F00640069006600690065006400550073006500
      720001004D006F0064006900660069006500640055007300650072000100C400
      6E00640072006100640020006100760001000100C4006E006400720061006400
      20006100760001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C004E00420001004E004200010001004E00570001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F0053004F0052006100770055007400660061006C006C00
      4E00540001004E005400010001004E005400010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C005000430053000100
      53007400790063006B000100010050006300730001005300E40063006B000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C00500065007200630065006E0074005000630073004F00660054006F007400
      61006C000100500065007200630065006E0074005000630073004F0066005400
      6F00740061006C0001000100010001000D000A006300640073005F0053004F00
      52006100770055007400660061006C006C0050006C0061006E006E0065006400
      41004D003100010041004D00310001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C0050006C0061006E00
      6E006500640041004D003300010041004D00330001000100010001000D000A00
      6300640073005F0053004F0052006100770055007400660061006C006C005000
      6C0061006E006E0065006400500063007300010053007400790063006B000100
      010050006300730001005300E40063006B0001000D000A006300640073005F00
      53004F0052006100770055007400660061006C006C0050007200690063006500
      5000650072004E004D003300010050007200690073002F004E004D0033000100
      0100500072006900630065002F004E004D003300010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C00500072006F00
      6400750063007400430061007400650067006F00720079004E006F0001005000
      72006F006400750063007400430061007400650067006F00720079004E006F00
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C00500072006F0064007500630074004C0065006E006700
      740068004E006F000100500072006F0064007500630074004C0065006E006700
      740068004E006F0001000100010001000D000A006300640073005F0053004F00
      52006100770055007400660061006C006C00500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C00500072006F00640075006B0074000100500072006F00640075006B007400
      01000100500072006F006400750063007400010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C00500072006F006700
      720061006D004E006F000100500072006F006700720061006D004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C005200610077004D00740072006C004E006F00010052006100
      64006E007200010001004C0069006E0065004E006F00010001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C0052006500
      61006C004C0050004D0001005200650061006C004C0050004D00010001000100
      01000D000A006300640073005F0053004F005200610077005500740066006100
      6C006C0053006F007200740069006E0067004F0072006400650072004E006F00
      010053006F007200740069006E0067004F0072006400650072004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C0053007000650063006900650073004E006F00010053007000
      650063006900650073004E006F0001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C005300750072006600
      6100630069006E0067004E006F00010053007500720066006100630069006E00
      67004E006F0001000100010001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C005400720069006D0041004D0031000100
      5400720069006D0041004D00310001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C005400720069006D00
      41004D00330001005400720069006D0041004D00330001000100010001000D00
      0A006300640073005F0053004F0052006100770055007400660061006C006C00
      550072006C006100670067007300500072006F00630065006E00740001005500
      72006C00E400670067002000250001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700410042000100410042000100
      010041005700010001000D000A006300640073005F0053006F0072004F007200
      640052006F00770041004C004D004D00010041004C004D004D00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      41004D00310049006E00010041004D00310049006E0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770041006E00
      740061006C004200690074006100720055007400010041006E00740061006C00
      420069007400610072005500740001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770041006E00740061006C004B00
      6100700053006E00690074007400010041006E00740061006C004B0061007000
      53006E0069007400740001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770041007200740069006B0065006C004B00
      6F006400010041007200740069006B0065006C006B006F006400010001004100
      72007400690063006C006500200063006F0064006500010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004100540001004100
      54000100010041005400010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004300720065006100740065006400550073006500
      7200010043007200650061007400650064005500730065007200010053006B00
      61007000610064002000610076000100010053006B0061007000610064002000
      6100760001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004300530044004E006F0001004300530044004E006F00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      43007500730074006F006D006500720001004B0075006E006400010001004300
      7500730074006F006D0065007200010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770044006100740065004300720065006100
      7400650064000100440061007400650043007200650061007400650064000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770045006E00640050006B00670041006C006C006F007700650064000100
      53006C007500740070006B00740001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004500780063006C0075006400
      6500460072006F006D0054006F00740061006C0001004500780063006C007500
      64006500460072006F006D0054006F00740061006C0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770045007800
      70006F007200740052006F00770001004500780070006F007200740065007200
      6100010001004500780070006F0072007400010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700490049004100420001004100
      42000100010041005700010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004900490041005400010041005400010001004100
      5400010001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700490049004D00430043006C006100730073004E006F0001004D004300
      43006C006100730073004E006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770049004900550072006C006100
      670067000100550072006C0061006700670001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F00770049004D0050000100
      49004D005000010049006D0070007200650067006E006500720069006E006700
      0100540072006500610074006D0065006E007400010049006D00700072006500
      67006E006500720069006E00670001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004B00760061006C0069007400650074000100
      4B00760061006C00690074006500740001000100470072006100640065000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4C0061006700650072006700720075007000700001004C006100670065007200
      6700720075007000700001000100530074006F0063006B002000670072006F00
      75007000010001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077004C0061006E006700750061006700650063006F00640065000100
      4C0061006E006700750061006700650063006F00640065000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      01004C00E4006E00670064006200650073006B007200690076006E0069006E00
      6700010001004C0065006E006700680074002000640065007300630072006900
      7000740069006F006E00010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004C0065006E0067007400680046006F0072006D00
      6100740001004C0065006E0067007400680046006F0072006D00610074000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004C0065006E00670074006800530070006500630001004C00E4006E00
      67006400010001004C0065006E00670074006800010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004C006700670061007200
      650001004C00E4006700670061007200650001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004C00490050004E00
      6F0001004C00490050004E006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004C004F004E00520001004C00
      4F004E00520001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004D00610072006B0001004D00E40072006B006E00
      69006E006700010001004D00610072006B00010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004D00430043006C0061007300
      73004E006F0001004D00430043006C006100730073004E006F00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4D0052004B00450001004D00C40052004B00450001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F0077004E0042000100
      4E004200010001004E005700010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004E006F00740065004D00610072006B000100
      4E006F00740065004D00610072006B0001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004E006F00740065007200
      69006E00670001004E006F0074006500720069006E00670001004E006F007400
      65007200610001004E006F007400650001004E006F0074006500720061000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004E00
      6F00740065005300740061006D00700001004E006F0074006500530074006100
      6D00700001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F0077004E00540001004E005400010001004E00540001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      43005300010050004300530001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770050006300730049006E0001005000
      6300730049006E0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F00770050006B006700500072006500660069007800
      010050006B00740070007200650066006900780001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F00770050006C006100
      6E006E0065006400500063007300010053007400790063006B00010001005000
      6300730001005300E40063006B0001000D000A006300640073005F0053006F00
      72004F007200640052006F0077005000500050000100730074002F0070006B00
      740001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700500072006900630065004C006900730074004E006F000100
      500072006900630065004C006900730074004E006F0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      69006300650055006E00690074000100500072006900730065006E0068006500
      740001000100500072006900630065002000260075006E006900740001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      720069006F0001005000720069006F0001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770050007200690073004500
      6E006800650074000100500072006900730065006E0068006500740001000100
      500072006900630065002000260075006E0069007400010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077005000720069007300
      6C006900730074006100010050007200690073006C0069007300740061000100
      0100500072006900630065006C00690073007400010001000D000A0063006400
      73005F0053006F0072004F007200640052006F007700500072006F0064004100
      4D003100010041004D00310001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700500072006F00640041004D003300
      010041004D00330001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700500072006F00640049006E00730074007200
      7500630074004E006F000100500072006F00640049006E007300740072007500
      630074004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700500072006F0064004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A006300640073005F005300
      6F0072004F007200640052006F007700500072006F0064005000430053000100
      53007400790063006B000100010050006300730001005300E40063006B000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      72006F00640050004B0054000100500061006B00650074000100010050006B00
      67000100500061006C006C006100720001000D000A006300640073005F005300
      6F0072004F007200640052006F007700500072006F0064007500630074004C00
      65006E006700740068004E006F000100500072006F0064007500630074004C00
      65006E006700740068004E006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006F00640075006300
      74004E006F000100500072006F0064007500630074004E006F00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      500072006F00640075006B0074000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770052006500660043006F0070006900
      6500730001005200650066002E006B006F00700069006F007200010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      530069007A00650046006F0072006D00610074000100530069007A0065004600
      6F0072006D006100740001000100530069007A006500200066006F0072006D00
      61007400010001000D000A006300640073005F0053006F0072004F0072006400
      52006F00770053006F007200740069006E0067004F0072006400650072004E00
      6F0001004B00F60072006F00720064006500720001000100520075006E002000
      6F007200640065007200010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770053006F007200740069006E0067004F0072006400
      6500720052006F0077004E006F0001005200610064006E007200010001004C00
      69006E0065004E006F00010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770053006F00720074004F0072006400650072000100
      53006F00720074004F00720064006500720001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077005300700065006300
      6900650073004E006F00010053007000650063006900650073004E006F000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770053007400610063006B00650072004E006F0001005300740061006300
      6B00650072004E006F0001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770053007400610074007500730001005300
      7400610074007500730001000100530074006100740075007300010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770053007400
      690063006B005200650063006900700065000100530074007200F60072006500
      630065007000740001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F00770053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      7700540061007200670065007400500072006F00640075006300740001005400
      61007200670065007400500072006F0064007500630074000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005400
      720073006C0061006700010054007200E40073006C0061006700010001005300
      700065006300690065007300010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700550072006C00610067006700010055007200
      6C00E4006700670001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700550074006600720061006E00640065000100
      550074006600F600720061006E00640065000100010053007500720066006100
      630069006E006700010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770056006F006C0075006D00650046006F0072006D006100
      7400010056006F006C0075006D00650046006F0072006D006100740001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      770056006F006C0075006D00650055006E00690074004E006F00010056006F00
      6C0075006D00650055006E00690074004E006F0001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700560050005F00
      500072006F00640075006300740043006F006400650001005600500020005000
      72006F00640075006B0074006B006F00640001000100010001000D000A006300
      640073005F0053006F00720074004F00720064006500720041006E0073007600
      6100720069006700010041006E00730076006100720069006700010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      41006E00730076006100720069006700530061006C006A006100720065000100
      41006E00730076006100720069006700530061006C006A006100720065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720041006E00730076006100720069006700530061006C006A0061007200
      65004E006F00010041006E00730076006100720069006700530061006C006A00
      6100720065004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720041006E00740061006C00420069007400
      6100720055007400010041006E00740061006C00420069007400610072005500
      740001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720041006E00740061006C004B006100700053006E0069007400
      7400010041006E00740061006C004B006100700053006E006900740074000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720043006F006D006D0065006E0074007300010043006F006D006D006500
      6E007400730001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004300720065006100740065006400550073006500
      7200010043007200650061007400650064005500730065007200010053006B00
      61007000610064002000610076000100010053006B0061007000610064002000
      6100760001000D000A006300640073005F0053006F00720074004F0072006400
      6500720044006100740065004300720065006100740065006400010044006100
      74006500430072006500610074006500640001000100010001000D000A006300
      640073005F0053006F00720074004F00720064006500720045006E0064005400
      69006D006500010045006E006400540069006D00650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720048007900
      760065006C0049006E0066006F00010048007900760065006C0049006E006600
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004B006100730073006100740069006F006E00530074007900
      63006B0001004B006100730073006100740069006F006E005300740079006300
      6B0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C00650067006F0001004C00650067006F00010001004300
      6F006E0074007200610063007400200077006F0072006B00010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0065006E00
      67007400680046006F0072006D006100740001004C0065006E00670074006800
      46006F0072006D006100740001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00490050004E0061006D006500
      01004C00490050004E0061006D00650001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C00490050004E006F00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004D0061006E00750061006C005000
      72006F006400540069006D00650001004D0061006E00750061006C0050007200
      6F006400540069006D00650001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004D00430043006C00610073007300
      4E006F000100440065006C006100730020006600F60072006500200068007900
      76006C0069006E00670001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004D006F007600650054006F004C004900
      50004E006F0001004D006F007600650054006F004C00490050004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004F0077006E00650072004E006F0001004F0077006E00650072004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005000490050004E0061006D00650001005000490050004E00
      61006D00650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005000490050004E006F0001005000490050004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720050006F0073007400540069006D00650048006F0075007200
      010050006F0073007400540069006D00650048006F0075007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5000720069006E0074005200610077004D00740072006C005000610072007400
      01005000720069006E0074005200610077004D00740072006C00500061007200
      740001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005000720069006F004E006F0001005000720069006F004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200500072006F006400540069006D00650048006F0075007200
      0100500072006F006400540069006D00650048006F0075007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      500072006F00640075006300650072004E006F000100500072006F0064007500
      6300650072004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200500072006F0064007500630074006900
      6F006E005000630073000100500072006F00640075006300740069006F006E00
      50006300730001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200500072006F00640075006300740069006F006E00
      55006E00690074004E006F000100500072006F00640075006300740069006F00
      6E0055006E00690074004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072005200610077004C0069007000
      4E0061006D00650001005200610077004C00690070004E0061006D0065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200610077004C00490050004E006F0001005200610077004C004900
      50004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200610077004D00740072006C00500063007300
      01005200610077004D00740072006C0050006300730001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006100
      77005000490050004E0061006D00650001005200610077005000490050004E00
      61006D00650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200610077005000490050004E006F0001005200
      610077005000490050004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720052006500730041006E007300
      76006100720069006700010041006E0073007600610072006900670001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730041006E00730076006100720069006700530061006C006A00
      610072006500010041006E00730076006100720069006700530061006C006A00
      61007200650001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730041006E0073007600610072006900
      6700530061006C006A006100720065004E006F00010041006E00730076006100
      720069006700530061006C006A006100720065004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730041006E00740061006C00420069007400610072005500740001004100
      6E00740061006C00420069007400610072005500740001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730041006E00740061006C004B006100700053006E0069007400740001004100
      6E00740061006C004B006100700053006E006900740074000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300410076006700500072006F0064007500630074005000720069006300
      650041004D0031000100410076006700500072006F0064007500630074005000
      720069006300650041004D00310001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300410076006700
      500072006F0064007500630074005000720069006300650041004D0033000100
      410076006700500072006F006400750063007400500072006900630065004100
      4D00330001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200520065007300410076006700500072006F0064007500
      63007400500072006900630065004E004D003300010041007600670050007200
      6F006400750063007400500072006900630065004E004D003300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073004100760067005200610077004D00740072006C00500072006900
      6300650041004D00310001004100760067005200610077004D00740072006C00
      5000720069006300650041004D00310001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730041007600
      67005200610077004D00740072006C005000720069006300650041004D003300
      01004100760067005200610077004D00740072006C0050007200690063006500
      41004D00330001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004100760067005200610077004D00
      740072006C00500072006900630065004E004D00330001004100760067005200
      610077004D00740072006C00500072006900630065004E004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300410076006B006100700041004D0033000100410076006B00
      6100700041004D00330001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300410076006B0061007000
      4C0050004D000100410076006B00610070004C0050004D000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300410076006B0061007000560061006C00750065000100410076006B00
      61007000560061006C007500650001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300430068006900
      700073004D00330053006F006C00690064000100430068006900700073004D00
      330053006F006C006900640001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073004300680069007000
      7300560061006C0075006500010043006800690070007300560061006C007500
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730043006F006D006D0065006E00740073000100
      43006F006D006D0065006E007400730001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730043006F00
      7300740050006500720041004D003100010043006F0073007400500065007200
      41004D00310001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730043006F0073007400500065007200
      41004D003300010043006F007300740050006500720041004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730043006F00730074005000650072004E004D00330001004300
      6F00730074005000650072004E004D00330001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004300
      7200650061007400650064005500730065007200010043007200650061007400
      650064005500730065007200010053006B006100700061006400200061007600
      0100010053006B00610070006100640020006100760001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730044006100
      7400650043007200650061007400650064000100440061007400650043007200
      6500610074006500640001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730045006600660069006300
      690065006E006300790046006100630074006F00720001004500660066006900
      6300690065006E006300790046006100630074006F0072000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730045006600660069006300690065006E00630079004600610063007400
      6F00720057004F00530074006F0070007000740069006D006500010045006600
      660069006300690065006E006300790046006100630074006F00720057004F00
      530074006F0070007000740069006D00650001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004500
      6E006400540069006D006500010045006E006400540069006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300460065006500640053007000650065006400010046006500
      650064005300700065006500640001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300480079007600
      65006C0049006E0066006F00010048007900760065006C0049006E0066006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004B006100730073006100740069006F006E004100
      4D00330001004B006100730073006100740069006F006E0041004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004B006100730073006100740069006F006E004C005000
      4D0001004B006100730073006100740069006F006E004C0050004D0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004B006100730073006100740069006F006E00530074007900
      63006B0001004B006100730073006100740069006F006E005300740079006300
      6B0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073004B006100730073006100740069006F006E00
      560061006C007500650001004B006100730073006100740069006F006E005600
      61006C007500650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073004C00650067006F0001004C00
      650067006F000100010043006F006E0074007200610063007400200077006F00
      72006B00010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004C00650067006F0043006F007300740050006500
      720041004D00330001004C00650067006F0043006F0073007400500065007200
      41004D00330001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004C0065006E006700740068004600
      6F0072006D006100740001004C0065006E0067007400680046006F0072006D00
      6100740001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004C00490050004E006F0001004C004900
      50004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004D0061006E00750061006C005000
      72006F006400540069006D00650001004D0061006E00750061006C0050007200
      6F006400540069006D00650001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073004D00430043006C00
      6100730073004E006F000100440065006C006100730020006600F60072006500
      20006800790076006C0069006E00670001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072005200650073004D006F00
      7600650054006F004C00490050004E006F0001004D006F007600650054006F00
      4C00490050004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072005200650073004E006F004F0066005700
      6F0072006B0065007200730001004E006F004F00660057006F0072006B006500
      7200730001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004E006F004F00660057006F0072006B00
      65007200730050006F00730074006E0069006E00670001004E006F004F006600
      57006F0072006B0065007200730050006F00730074006E0069006E0067000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500065007200630065006E00
      74005400720069006D006C006F00730073000100500065007200630065006E00
      74005400720069006D006C006F007300730001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005000
      490050004E006F0001005000490050004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      50006C0061006E006E0065006400500072006F00640075006300740069006F00
      6E00540069006D006500010050006C0061006E006E0065006400500072006F00
      640075006300740069006F006E00540069006D00650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730070006F006E007300690062006C0065005500730065007200010052006500
      730070006F006E007300690062006C0065005500730065007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730050006F00730074006E0069006E00670073007400690064000100
      50006F00730074006E0069006E00670073007400690064000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730050006F0073007400540069006D00650048006F007500720001005000
      6F0073007400540069006D00650048006F007500720001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      7300500072006500430061006C00630045006600660069006300690065006E00
      6300790046006100630074006F00720001004B0061006C006B0079006C006500
      72006100640020007600650072006B006E0069006E0067007300670072006100
      64002000250001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073005000720069006E00740052006100
      77004D00740072006C00500061007200740001005000720069006E0074005200
      610077004D00740072006C00500061007200740001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5000720069006F004E006F0001005000720069006F004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300500072006F006400540069006D00650048006F00750072000100
      500072006F006400540069006D00650048006F00750072000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300500072006F00640075006300650072004E006F000100500072006F00
      640075006300650072004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300500072006F00
      640075006300740069006F006E0041004D0031000100500072006F0064007500
      6300740069006F006E0041004D00310001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050007200
      6F00640075006300740069006F006E0041004D0033000100500072006F006400
      75006300740069006F006E0041004D00330001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005000
      72006F00640075006300740069006F006E0043006F0073007400010050007200
      6F00640075006300740069006F006E0043006F00730074000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300500072006F00640075006300740069006F006E004E004D0033000100
      500072006F00640075006300740069006F006E004E004D003300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300500072006F00640075006300740069006F006E00500063007300
      0100500072006F00640075006300740069006F006E0050006300730001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300500072006F00640075006300740069006F006E0055006E00
      690074004E006F000100500072006F00640075006300740069006F006E005500
      6E00690074004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300500072006F0064007500
      6300740069006F006E00560061006C00750065000100500072006F0064007500
      6300740069006F006E00560061006C007500650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      500072006F006700720061006D004E006F000100500072006F00670072006100
      6D004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073005200610077004C00490050004E00
      6F0001005200610077004C00490050004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077004D00740072006C0041004D00310001005200610077004D007400
      72006C0041004D00310001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072005200650073005200610077004D007400
      72006C0041004D00330001005200610077004D00740072006C0041004D003300
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200610077004D00740072006C0043006F007300
      740001005200610077004D00740072006C0043006F0073007400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073005200610077004D00740072006C0043006F007300740050006500
      72004E004D00330049006E0001005200610077004D00740072006C0043006F00
      730074005000650072004E004D00330049006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077004D00740072006C004E004D00330001005200610077004D007400
      72006C004E004D00330001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072005200650073005200610077004D007400
      72006C0050006300730001005200610077004D00740072006C00500063007300
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200610077005000490050004E006F0001005200
      610077005000490050004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300520065006100
      6C0045006E006400540069006D00650001005200650061006C0045006E006400
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005200650061006C004C007000
      6D004D0069006E0075007400650001005200650061006C004C0070006D004D00
      69006E0075007400650001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072005200650073005200650061006C005000
      72006F00640075006300740069006F006E00540069006D006500010052006500
      61006C00500072006F00640075006300740069006F006E00540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200650061006C00530074006100720074005400
      69006D00650001005200650061006C0053007400610072007400540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730052006500730070006F006E00730069006200
      6C0065005500730065007200010052006500730070006F006E00730069006200
      6C006500550073006500720001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005200650073007500
      6C00740041004F00010052006500730075006C00740041004F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730052006500730075006C00740041004F005000650072004E004D00
      330049006E00010052006500730075006C00740041004F005000650072004E00
      4D00330049006E0001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300530061006C00610072007900
      43006F007300740050006500720048006F00750072000100530061006C006100
      7200790043006F007300740050006500720048006F0075007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730053006100770064007500730074004D00330053006F006C006900
      6400010053006100770064007500730074004D00330053006F006C0069006400
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005300610077006400750073007400560061006C00
      7500650001005300610077006400750073007400560061006C00750065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073005300650071004E006F0001005300650071004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300530068006900660074004E006F00010053006800
      6900660074004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300530069007A0065004600
      6F0072006D00610074000100530069007A00650046006F0072006D0061007400
      01000100530069007A006500200066006F0072006D0061007400010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730053006F007200740069006E0067004F0072006400650072004E006F000100
      53006F007200740069006E0067004F0072006400650072004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730053007400610072007400540069006D006500010053007400
      610072007400540069006D006500010053007400610072007400540069006400
      010001005300740061007200740054006900640001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300530074006100
      7400750073000100530074006100740075007300010001005300740061007400
      75007300010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300530074006F007000540069006D00650001005300
      74006F007000540069006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300530074006F00
      7000540069006D00650048006F00750072000100530074006F00700054006900
      6D00650048006F007500720001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300530074006F007000
      540069006D0065004E006F00740049006E0063006C000100530074006F007000
      540069006D0065004E006F00740049006E0063006C0001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      7300530074006F007000540069006D0065004E006F00740049006E0063006C00
      48006F00750072000100530074006F007000540069006D0065004E006F007400
      49006E0063006C0048006F007500720001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730054006500
      6D0070006C006100740065000100540065006D0070006C006100740065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200520065007300540065006D0070006C006100740065004E0061006D00
      65000100540065006D0070006C006100740065004E0061006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300540065006D0070006C006100740065005500730065007200
      0100540065006D0070006C006100740065005500730065007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730054006F00740061006C0041004D003100010054006F0074006100
      6C0041004D00310001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730054006F00740061006C004100
      4D003300010054006F00740061006C0041004D00330001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730054006F00740061006C0043006F0073007400010054006F00740061006C00
      43006F007300740001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730054006F00740061006C005000
      63007300010054006F00740061006C0050006300730001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730054006F00740061006C00530061006C0061007200790043006F0073007400
      010054006F00740061006C00530061006C0061007200790043006F0073007400
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720052006500730054006F00740061006C00560061006C0075006500
      010054006F00740061006C00560061006C007500650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730054006F00740043006F00730074005000650072004E004D00330049006E00
      010054006F00740043006F00730074005000650072004E004D00330049006E00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720052006500730054006F007400560061006C005000650072004E00
      4D00330049006E00010054006F007400560061006C005000650072004E004D00
      330049006E0001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730054007900700065004F0066005200
      75006E004E0061006D006500010054007900700065004F006600520075006E00
      4E0061006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730054007900700065004F006600
      520075006E004E006F00010054007900700065004F006600520075006E004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073005700650065006B004E006F00010057006500
      65006B004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730059006500610072004E006F00
      010059006500610072004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300590065006100
      72005700650065006B00010059006500610072005700650065006B0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005300650071004E006F0001005300650071004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005300
      68006900660074004E006F000100530068006900660074004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200530069007A00650046006F0072006D00610074000100530069007A006500
      46006F0072006D006100740001000100530069007A006500200066006F007200
      6D0061007400010001000D000A006300640073005F0053006F00720074004F00
      720064006500720053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720053007400610072007400540069006D006500010053007400
      610072007400540069006D006500010053007400610072007400540069006400
      010001005300740061007200740054006900640001000D000A00630064007300
      5F0053006F00720074004F007200640065007200530074006100740075007300
      0100530074006100740075007300010001005300740061007400750073000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      530074006F007000540069006D0065000100530074006F007000540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200530074006F007000540069006D00650048006F0075007200
      0100530074006F007000540069006D00650048006F0075007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      530074006F007000540069006D0065004E006F00740049006E0063006C000100
      530074006F007000540069006D0065004E006F00740049006E0063006C000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200530074006F007000540069006D0065004E006F00740049006E006300
      6C0048006F00750072000100530074006F007000540069006D0065004E006F00
      740049006E0063006C0048006F007500720001000100010001000D000A006300
      640073005F0053006F00720074004F007200640065007200540065006D007000
      6C006100740065000100540065006D0070006C00610074006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      540065006D0070006C006100740065004E0061006D0065000100540065006D00
      70006C006100740065004E0061006D00650001000100010001000D000A006300
      640073005F0053006F00720074004F007200640065007200540065006D007000
      6C0061007400650055007300650072000100540065006D0070006C0061007400
      6500550073006500720001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720054006F00740061006C00500063007300
      010054006F00740061006C0050006300730001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005400790070006500
      4F006600520075006E004E0061006D006500010054007900700065004F006600
      520075006E004E0061006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720054007900700065004F006600
      520075006E004E006F00010054007900700065004F006600520075006E004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200560050005F00500072006F00640075006300740043006F00
      640065005000720065006600690078000100560050005F00500072006F006400
      75006300740043006F0064006500500072006500660069007800010001000100
      01000D000A006300640073005F0053004F00530068006900660074004E006F00
      4F0066004F00700065007200610074006F0072007300010041006E0074006100
      6C0020006F0070006500720061007400F6007200650072000100010001000100
      0D000A006300640073005F0053004F0053006800690066007400530068006900
      660074004E006F000100530068006900660074004E006F000100010001000100
      0D000A006300640073005F0053004F005300680069006600740053006B006900
      66007400010053006B0069006600740001000100530068006900660074007300
      010001000D000A006300640073005F0053004F00530068006900660074005300
      6F007200740069006E0067004F0072006400650072004E006F00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A006300640073005F0053004F005600650072006B005000610072006100
      6D007300410076006B00610070005000720069006300650046004D0033000100
      410076006B00610070005000720069006300650046004D003300010001000100
      01000D000A006300640073005F0053004F005600650072006B00500061007200
      61006D0073004C0061006700650072006700720075007000700001004C006100
      6700650072006700720075007000700001000100530074006F0063006B002000
      670072006F0075007000010001000D000A006300640073005F0053004F005600
      650072006B0050006100720061006D0073004C00490050004E006F0001004C00
      490050004E006F0001000100010001000D000A006300640073005F0053004F00
      5600650072006B0050006100720061006D0073004F007200740001004F007200
      7400010001004300690074007900010001000D000A006300640073005F005300
      4F005600650072006B0050006100720061006D0073005000490050004E006F00
      01005000490050004E006F0001000100010001000D000A006300640073005F00
      53004F005600650072006B0050006100720061006D0073005200610077004D00
      740072006C00500072006900630065005000650072004E004D00330001005200
      610077004D00740072006C00500072006900630065005000650072004E004D00
      330001000100010001000D000A006300640073005F0053004F00560065007200
      6B0050006100720061006D007300530061007700640075007300740050007200
      69006300650046004D0033000100530061007700640075007300740050007200
      69006300650046004D00330001000100010001000D000A006300640073005F00
      53004F005600650072006B0050006100720061006D0073005600650072006B00
      4E006F0001005600650072006B004E006F0001000100010001000D000A006300
      640073005F00750061007000430069007400790043006900740079004E006100
      6D006500010043006900740079004E0061006D00650001000100010001000D00
      0A006300640073005F0075006100700043006900740079004300690074007900
      4E006F00010043006900740079004E006F0001000100010001000D000A006300
      640073005F007500610070004300690074007900550073006500720049004400
      010055007300650072004900440001000100010001000D000A00630064007300
      5F00550072006C004C00610079006F007500740041006E00740061006C004B00
      6F00700069006F007200010041006E00740061006C004B006F00700069006F00
      720001000100010001000D000A006300640073005F00550072006C004C006100
      79006F00750074004C00610079006F007500740001004C00610079006F007500
      740001000100010001000D000A006300640073005F00550072006C004C006100
      79006F00750074004C00610079006F00750074004E006F0001004C0061007900
      6F00750074004E006F0001000100010001000D000A006300640073005F005500
      72006C004C00610079006F00750074005600650072006B004E006F0001005600
      650072006B004E006F0001000100010001000D000A006300640073005F005600
      650072006B0043006C00690065006E0074004E0061006D006500010043006C00
      690065006E0074004E0061006D00650001000100010001000D000A0063006400
      73005F005600650072006B0043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F0001000100010001000D000A00630064007300
      5F005600650072006B005300650061007200630068004E0061006D0065000100
      5300650061007200630068004E0061006D00650001000100010001000D000A00
      6300640073005F0056006F006C00520065007300440074006C0041004D003300
      010041004D00330001000100010001000D000A006300640073005F0056006F00
      6C00520065007300440074006C0043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F0001000100010001000D000A0063006400
      73005F0056006F006C00520065007300440074006C0043007200650061007400
      6500640055007300650072000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A006300640073005F0056006F00
      6C00520065007300440074006C00440061007400650043007200650061007400
      6500640001004400610074006500430072006500610074006500640001000100
      010001000D000A006300640073005F0056006F006C0052006500730044007400
      6C0044006100740065004D006F00640069006600690065006400010044006100
      740065004D006F0064006900660069006500640001000100010001000D000A00
      6300640073005F0056006F006C00520065007300440074006C004C0065006E00
      670074006800530070006500630001004C0065006E0067007400680053007000
      6500630001000100010001000D000A006300640073005F0056006F006C005200
      65007300440074006C004D006F00640069006600690065006400550073006500
      720001004D006F0064006900660069006500640055007300650072000100C400
      6E00640072006100640020006100760001000100C4006E006400720061006400
      20006100760001000D000A006300640073005F0056006F006C00520065007300
      440074006C004E004D00330001004E004D003300010001004E004D0033000100
      01000D000A006300640073005F0056006F006C00520065007300440074006C00
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A006300640073005F0056006F006C005200650073004400
      74006C00500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A006300640073005F005600
      6F006C00520065007300440074006C00500072006F00640075006B0074000100
      500072006F00640075006B00740001000100500072006F006400750063007400
      010001000D000A006300640073005F0056006F006C0052006500730044007400
      6C005200650073006500720076006100740069006F006E004E006F0001005200
      650073006500720076006100740069006F006E004E006F000100010001000100
      0D000A006300640073005F0056006F006C00520065007300440074006C005300
      680069007000700069006E00670050006C0061006E004E006F00010053006800
      69007000700069006E00670050006C0061006E004E006F000100010001000100
      0D000A006300640073005F0056006F006C00520065007300440074006C005300
      75006D005700650065006B0073000100530075006D005700650065006B007300
      01000100010001000D000A006300640073005F0056006F006C00520065007300
      440074006C005700650065006B00310001005700650065006B00310001000100
      010001000D000A006300640073005F0056006F006C0052006500730044007400
      6C005700650065006B00320001005700650065006B0032000100010001000100
      0D000A006300640073005F0056006F006C00520065007300440074006C005700
      650065006B00330001005700650065006B00330001000100010001000D000A00
      6300640073005F0056006F006C00520065007300440074006C00570065006500
      6B00340001005700650065006B00340001000100010001000D000A0063006400
      73005F0056006F006C00520065007300440074006C005700650065006B003500
      01005700650065006B00350001000100010001000D000A006300640073005F00
      56006F006C00520065007300440074006C005700650065006B00360001005700
      650065006B00360001000100010001000D000A006300640073005F0056006F00
      6C00520065007300440074006C005700650065006B0037000100570065006500
      6B00370001000100010001000D000A006300640073005F0056006F006C005200
      65007300440074006C005700650065006B00380001005700650065006B003800
      01000100010001000D000A006300640073005F0056006F006C00520065007300
      440074006C005700650065006B00390001005700650065006B00390001000100
      010001000D000A006300640073005F0056006F006C0052006500730044007400
      6C0059006500610072005700650065006B000100590065006100720057006500
      65006B0001000100010001000D000A0063006400730042006F006F006B006900
      6E00670042006F006F006B0069006E0067004E006F00010042006F006F006B00
      69006E0067004E006F0001000100010001000D000A0063006400730042006F00
      6F006B0069006E00670043006100720072006900650072004E0061006D006500
      010043006100720072006900650072004E0061006D0065000100420065006600
      720061006B007400610072006500010043006100720072006900650072000100
      420065006600720061006B00740061007200650001000D000A00630064007300
      42006F006F006B0069006E00670043006C00690065006E0074004E0061006D00
      6500010043006C00690065006E0074004E0061006D0065000100010001000100
      0D000A0063006400730042006F006F006B0069006E0067004400650073007400
      69006E006100740069006F006E000100440065007300740069006E0061007400
      69006F006E0001000100010001000D000A0063006400730042006F006F006B00
      69006E0067004500540044000100450054004400010001004500540044000100
      01000D000A0063006400730042006F006F006B0069006E00670049006E007400
      650072006E006E006F0074006500720069006E006700010049006E0074006500
      72006E006E006F0074006500720069006E0067000100010049006E0074006500
      72006E0061006C0020006E006F0074006500010001000D000A00630064007300
      42006F006F006B0069006E0067004C004F00540065007800740001004C004F00
      540065007800740001000100010001000D000A0063006400730042006F006F00
      6B0069006E0067004F0062006A00650063007400540079007000650001004F00
      62006A00650063007400540079007000650001000100010001000D000A006300
      6400730042006F006F006B0069006E006700500061006E00690063005F004E00
      6F00740065000100500061006E00690063005F004E006F007400650001000100
      010001000D000A0063006400730042006F006F006B0069006E00670050007200
      65006C0069006D0069006E006100720079005200650071007500650073007400
      6500640050006500720069006F00640001005000720065006C0069006D006900
      6E00610072007900520065007100750065007300740065006400500065007200
      69006F00640001000100010001000D000A0063006400730042006F006F006B00
      69006E0067005200650066006500720065006E00730001005200650066006500
      720065006E007300010001005200650066006500720065006E00630065000100
      01000D000A0063006400730042006F006F006B0069006E006700530068006900
      7000700065007200730053006800690070004400610074006500010053006800
      6900700070006500720073005300680069007000440061007400650001000100
      010001000D000A0063006400730042006F006F006B0069006E00670053006800
      6900700070006500720073005300680069007000540069006D00650001005300
      68006900700070006500720073005300680069007000540069006D0065000100
      0100010001000D000A0063006400730042006F006F006B0069006E0067005300
      680069007000700069006E00670043006F006D00700061006E00790042006F00
      6F006B0069006E0067004900440001005300680069007000700069006E006700
      43006F006D00700061006E00790042006F006F006B0069006E00670049004400
      01000100010001000D000A0063006400730042006F006F006B0069006E006700
      7300680069007000700069006E00670070006C0061006E006E006F0001007300
      680069007000700069006E00670070006C0061006E006E006F00010001000100
      01000D000A0063006400730042006F006F006B0069006E006700530068006900
      700054006F000100530068006900700054006F0001000100010001000D000A00
      63006400730042006F006F006B0069006E00670053006C007500740076006500
      63006B006100010053006C00750074007600650063006B006100010001000100
      01000D000A0063006400730042006F006F006B0069006E006700530074006100
      720074007600650063006B006100010053007400610072007400760065006300
      6B00610001000100010001000D000A0063006400730042006F006F006B006900
      6E00670053007500700070006C00690065007200520065006600650072006500
      6E0063006500010053007500700070006C006900650072005200650066006500
      720065006E006300650001000100010001000D000A0046006C006F0061007400
      4600690065006C00640031000100410054000100010041005400010001000D00
      0A0046006C006F00610074004600690065006C00640031003000010041004C00
      4D004D0001000100010001000D000A0046006C006F0061007400460069006500
      6C00640032000100410042000100010041005700010001000D000A0046006C00
      6F00610074004600690065006C0064003300010041004D003300010001000100
      01000D000A0046006C006F00610074004600690065006C006400340001004E00
      4D003300010001004E004D003300010001000D000A0046006C006F0061007400
      4600690065006C0064003500010041004D00310001000100010001000D000A00
      46006C006F00610074004600690065006C006400360001004100540001000100
      41005400010001000D000A0046006C006F00610074004600690065006C006400
      37000100410042000100010041005700010001000D000A0046006C006F006100
      74004600690065006C006400380001004E005400010001004E00540001000100
      0D000A0046006C006F00610074004600690065006C006400390001004E004200
      010001004E005700010001000D000A0046004D00540042004300440046006900
      65006C0064003100010041004D00330001000100010001000D000A0046004D00
      54004200430044004600690065006C0064003100300001005400720069006D00
      41004D00330001000100010001000D000A0046004D0054004200430044004600
      690065006C0064003200010041004D00310001000100010001000D000A004600
      4D0054004200430044004600690065006C006400330001004E004D0033000100
      01004E004D003300010001000D000A0046004D00540042004300440046006900
      65006C0064003400010055007400660061006C006C00010001004F0075007400
      63006F006D006500010001000D000A0046004D00540042004300440046006900
      65006C00640035000100500072006F00640075006B0074005600E40072006400
      650001000100010001000D000A0046004D005400420043004400460069006500
      6C006400360001006D006500640065006C007000720069007300010001000100
      01000D000A0046004D0054004200430044004600690065006C00640037000100
      250020006100760020007200E500760061007200610001000100010001000D00
      0A0046004D0054004200430044004600690065006C0064003800010050006500
      7200630065006E0074005000630073004F00660054006F00740061006C000100
      0100010001000D000A0046004D0054004200430044004600690065006C006400
      390001005400720069006D0041004D00310001000100010001000D000A004900
      6E00740065006700650072004600690065006C00640031000100500072006F00
      64007500630074004E006F0001000100010001000D000A0049006E0074006500
      6700650072004600690065006C0064003100300001004D006F00640069006600
      69006500640055007300650072000100C4006E00640072006100640020006100
      760001000100C4006E00640072006100640020006100760001000D000A004900
      6E00740065006700650072004600690065006C0064003100310001004B006100
      730073006100740069006F006E0053007400790063006B000100010001000100
      0D000A0049006E00740065006700650072004600690065006C00640031003200
      010043007200650061007400650064005500730065007200010053006B006100
      7000610064002000610076000100010053006B00610070006100640020006100
      760001000D000A0049006E00740065006700650072004600690065006C006400
      31003300010041006E00740061006C0042006900740061007200550074000100
      0100010001000D000A0049006E00740065006700650072004600690065006C00
      6400310034000100480075007600750064007600610072006100010001000100
      01000D000A0049006E00740065006700650072004600690065006C0064003100
      35000100500072006F0064007500630074004C0065006E006700740068004E00
      6F0001000100010001000D000A0049006E007400650067006500720046006900
      65006C0064003100360001004B006100700073006E0069007400740001000100
      430075007400740069006E006700200070006F0073006900740069006F006E00
      7300010001000D000A0049006E00740065006700650072004600690065006C00
      64003100370001004C0061006D0065006C006C00650072000100010001000100
      0D000A0049006E00740065006700650072004600690065006C00640031003800
      0100610050006300730001000100010001000D000A0049006E00740065006700
      650072004600690065006C00640031003900010053007400790063006B000100
      010050006300730001005300E40063006B0001000D000A0049006E0074006500
      6700650072004600690065006C0064003200010053005400590043004B000100
      010050004300530001005300C40043004B0001000D000A0049006E0074006500
      6700650072004600690065006C00640032003000010047007200610064006500
      4E006F0001000100010001000D000A0049006E00740065006700650072004600
      690065006C00640032003100010053007000650063006900650073004E006F00
      01000100010001000D000A0049006E0074006500670065007200460069006500
      6C00640032003200010053007500720066006100630069006E0067004E006F00
      01000100010001000D000A0049006E0074006500670065007200460069006500
      6C006400320033000100500072006F0064007500630074004300610074006500
      67006F00720079004E006F0001000100010001000D000A0049006E0074006500
      6700650072004600690065006C006400320034000100450078006B006C002E00
      75007400660061006C006C0001000100010001000D000A0049006E0074006500
      6700650072004600690065006C006400330001004B00F60072006F0072006400
      6500720001000100520075006E0020006F007200640065007200010001000D00
      0A0049006E00740065006700650072004600690065006C006400340001005300
      6F007200740069006E0067004F0072006400650072004E006F00010001000100
      01000D000A0049006E00740065006700650072004600690065006C0064003500
      01005200610064006E007200010001004C0069006E0065004E006F0001000100
      0D000A0049006E00740065006700650072004600690065006C00640036000100
      500072006F0064007500630074004E006F0001000100010001000D000A004900
      6E00740065006700650072004600690065006C00640037000100440065006C00
      6100730020006600F6007200650020006800790076006C0069006E0067000100
      0100010001000D000A0049006E00740065006700650072004600690065006C00
      64003800010053007400790063006B000100010050006300730001005300E400
      63006B0001000D000A0049006E00740065006700650072004600690065006C00
      640039000100500072006F006700720061006D004E006F000100010001000100
      0D000A006D0043006F00700079004C0065006E00670074006800730041004C00
      4D004D00010041004C004D004D0001000100010001000D000A006D0043006F00
      700079004C0065006E0067007400680073004C0065006E006700740068005300
      70006500630001004C00E4006E0067006400010001004C0065006E0067007400
      6800010001000D000A006D0043006F00700079004C0065006E00670074006800
      7300500072006F0064007500630074004C0065006E006700740068004E006F00
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      01000100010001000D000A006D0074004C0065006E0067007400680046006F00
      72006D00610074004C0065006E0067007400680046006F0072006D0061007400
      01004C0065006E0067007400680046006F0072006D0061007400010001000100
      01000D000A006D0074004C0065006E0067007400680046006F0072006D006100
      74004C0065006E0067007400680046006F0072006D00610074004E006F000100
      4C0065006E0067007400680046006F0072006D00610074004E006F0001000100
      010001000D000A006D00740050006B0067004E006F0073004C00650076004B00
      6F00640001004C00650076004B006F00640001000100010001000D000A006D00
      740050006B0067004E006F0073005000610063006B006100670065004E006F00
      01005000610063006B006100670065004E006F0001000100010001000D000A00
      6D007400500072006F00700073004100750074006F0043006F006C0057006900
      64007400680001004100750074006F0043006F006C0057006900640074006800
      01004100750074006F002E0020006B006F006C002E0062007200650064006400
      01004100750074006F002E00200063006F006C002E0077006900640074006800
      01004100750074006F002E0020006B006F006C002E0062007200650064006400
      01000D000A006D007400500072006F007000730043006F007000790050006300
      7300010043006F007000790050006300730001004B006F007000690065007200
      6100200073007400790063006B00010001004B006F0070006900650072006100
      20007300E40063006B0001000D000A006D007400500072006F00700073004900
      6E007000750074004F007000740069006F006E00010049006E00700075007400
      4F007000740069006F006E00010049006E006D00610074006E0069006E006700
      730061006C007400650072006E006100740069007600010049006E0070007500
      740020006F007000740069006F006E007300010049006E006D00610074006E00
      69006E006700730061006C007400650072006E00610074006900760001000D00
      0A006D007400500072006F00700073004C0065006E0067007400680047007200
      6F007500700001004C0065006E00670074006800470072006F00750070000100
      0100010001000D000A006D007400500072006F00700073004C0065006E006700
      74006800470072006F00750070004E006F0001004C0065006E00670074006800
      470072006F00750070004E006F0001000100010001000D000A006D0074005000
      72006F00700073004C0065006E006700740068004F007000740069006F006E00
      01004C0065006E006700740068004F007000740069006F006E00010001000100
      01000D000A006D007400500072006F00700073004C00490050004E006F000100
      4C00490050004E006F0001000100010001000D000A006D007400500072006F00
      700073004E00650077004900740065006D0052006F00770001004E0065007700
      4900740065006D0052006F00770001000100010001000D000A006D0074005000
      72006F00700073004E006F004F00660054006F00700001004E006F004F006600
      54006F00700001000100010001000D000A006D007400500072006F0070007300
      4F0057004E004500520001004F0057004E004500520001000100010001000D00
      0A006D007400500072006F00700073004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F0001000100010001000D000A006D0074005000
      72006F00700073005000490050004E006F0001005000490050004E006F000100
      0100010001000D000A006D007400500072006F0070007300500052004F004400
      55004300450052000100500052004F0044005500430045005200010050005200
      4F0044005500430045004E00540001000100500052004F004400550043004500
      4E00540001000D000A006D007400500072006F0070007300500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F0001000100010001000D000A006D007400500072006F007000730052006500
      6700440061007400650001005200650067004400610074006500010001000100
      01000D000A006D007400500072006F007000730052004500470050004F004900
      4E005400010052004500470050004F0049004E00540001000100010001000D00
      0A006D007400500072006F007000730052006500670050006F0069006E007400
      4E006F00010052006500670050006F0069006E0074004E006F00010001000100
      01000D000A006D007400500072006F007000730052006F006C00650054007900
      70006500010052006F006C006500540079007000650001000100010001000D00
      0A006D007400500072006F0070007300520075006E004E006F00010052007500
      6E004E006F0001004B00F60072004E007200010001004B00F60072004E007200
      01000D000A006D007400500072006F007000730053007500700070006C006900
      6500720043006F0064006500010053007500700070006C006900650072004300
      6F006400650001004C00650076006500720061006E007400F600720073006B00
      6F006400010053007500700070006C0069006500720063006F00640065000100
      4C00650076006500720061006E007400F600720073006B006F00640001000D00
      0A006D007400500072006F0070007300540069006D00650055006E0069007400
      0100540069006D00650055006E006900740001000100010001000D000A006D00
      7400500072006F00700073005600650072006B004E006F000100560065007200
      6B004E006F0001000100010001000D000A006D007400500072006F0070007300
      56006900730061004B006F0072007400530074006F0070007000010056006900
      730061004B006F0072007400530074006F007000700001000100010001000D00
      0A006D0074005200610077004D00740072006C005200610077004D0074007200
      6C00500072006F0064007500630074004E006F0001005200610077004D007400
      72006C00500072006F0064007500630074004E006F0001000100010001000D00
      0A006D0074005200610077004D00740072006C00520061007700500072006F00
      640075006B0074000100520061007700500072006F00640075006B0074000100
      0100010001000D000A006D007400530069007A00650046006F0072006D006100
      7400530069007A00650046006F0072006D00610074000100530069007A006500
      46006F0072006D006100740001000100530069007A006500200066006F007200
      6D0061007400010001000D000A006D007400530069007A00650046006F007200
      6D0061007400530069007A00650046006F0072006D00610074004E006F000100
      530069007A00650046006F0072006D00610074004E006F000100010001000100
      0D000A006D007400550072006C00610067006700500072006F00640075006300
      7400550072006C00610067006700500072006F0064007500630074004E006F00
      0100550072006C00610067006700500072006F0064007500630074004E006F00
      01000100010001000D000A006D007400550072006C0061006700670050007200
      6F006400750063007400550072006C00610067006700500072006F0064007500
      6B0074000100550072006C00610067006700500072006F00640075006B007400
      01000100010001000D000A006D00740056006F006C0075006D00650046006F00
      72006D006100740056006F006C0075006D00650046006F0072006D0061007400
      010056006F006C0075006D00650046006F0072006D0061007400010001000100
      01000D000A006D00740056006F006C0075006D00650046006F0072006D006100
      740056006F006C0075006D00650046006F0072006D00610074004E006F000100
      56006F006C0075006D00650046006F0072006D00610074004E006F0001000100
      010001000D000A00730070005F0047006500740045006E006400540069006D00
      6500520065006700690073007400720065007200610064000100520065006700
      6900730074007200650072006100640001000100520065006700690073007400
      6500720065006400010001000D000A00730070005F0047006500740053007400
      610072007400540069006D006500520065006700690073007400720065007200
      6100640001005200650067006900730074007200650072006100640001000100
      5200650067006900730074006500720065006400010001000D000A0073007000
      5F0047006500740053007400610072007400540069006D00650053006F007200
      740069006E0067004F0072006400650072004E006F00010053006F0072007400
      69006E0067004F0072006400650072004E006F0001000100010001000D000A00
      730070005F004F0072006400650072004C006900730074004F00720064006500
      72004E006F0001004F0072006400650072004E006F0001000100010001000D00
      0A00730070005F004F0072006400650072004C006900730074004F0072006400
      650072004E006F00540065007800740001004F0072006400650072004E006F00
      540065007800740001000100010001000D000A00730071005F00470065007400
      42006900500072006F0064007500630074005000720069006300650041007600
      6B00610070005000720069006300650046004D0033000100410076006B006100
      70005000720069006300650046004D00330001000100010001000D000A007300
      71005F0047006500740042006900500072006F00640075006300740050007200
      6900630065004C00490050004E006F0001004C00490050004E006F0001000100
      010001000D000A00730071005F0047006500740042006900500072006F006400
      750063007400500072006900630065005000490050004E006F00010050004900
      50004E006F0001000100010001000D000A00730071005F004700650074004200
      6900500072006F00640075006300740050007200690063006500520061007700
      4D00740072006C00500072006900630065005000650072004E004D0033000100
      5200610077004D00740072006C00500072006900630065005000650072004E00
      4D00330001000100010001000D000A00730071005F0047006500740042006900
      500072006F006400750063007400500072006900630065005300610077006400
      7500730074005000720069006300650046004D00330001005300610077006400
      7500730074005000720069006300650046004D00330001000100010001000D00
      0A00730071005F0047006500740042006900500072006F006400750063007400
      500072006900630065005600650072006B004E006F0001005600650072006B00
      4E006F0001000100010001000D000A00730071005F0047006500740050007200
      6F0064007500630074004E006F00500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      730071005F0047006500740053004F004E006F00420079004C004F0053006F00
      7200740069006E0067004F0072006400650072004E006F00010053006F007200
      740069006E0067004F0072006400650072004E006F0001000100010001000D00
      0A00730071005F00470065007400530074006F0070007000540069006D006500
      41006E00740061006C00530074006F0070007000010041006E00740061006C00
      530074006F007000700001000100010001000D000A00730071005F0047006500
      7400530074006F0070007000540069006D00650054006F00740061006C005300
      74006F0070007000540069006400010054006F00740061006C00530074006F00
      7000700054006900640001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C00790041004D003300010041004D003300010001000100
      01000D000A00730071005F00500072006F0064004F006E006C00790044006100
      7400650043007200650061007400650064000100440061007400650043007200
      6500610074006500640001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C0079004C00450056004B004F00440001004C0045005600
      4B004F0044000100010053005500500050004C00490045005200200043004F00
      44004500010001000D000A00730071005F00500072006F0064004F006E006C00
      79004E004F004F0046004C0045004E00470054004800530001004E004F004F00
      46004C0045004E00470054004800530001000100010001000D000A0073007100
      5F00500072006F0064004F006E006C0079005000610063006B00610067006500
      4E006F0001005000610063006B006100670065004E006F000100010001000100
      0D000A00730071005F00500072006F0064004F006E006C007900700061006300
      6B0061006700650074007900700065006E006F0001007000610063006B006100
      6700650074007900700065006E006F0001000100010001000D000A0073007100
      5F00500072006F0064004F006E006C0079005000630073005000650072004C00
      65006E0067007400680001005000630073005000650072004C0065006E006700
      7400680001000100010001000D000A00730071005F00500072006F0064004F00
      6E006C007900700072006F0064007500630074006E006F000100700072006F00
      64007500630074006E006F0001000100010001000D000A00730071005F005000
      72006F0064004F006E006C00790053005400590043004B000100530054005900
      43004B000100010050004300530001005300C40043004B0001000D000A007300
      71005F0053007400640053004F005200650070006F0072007400520065007000
      6F00720074004E0061006D00650001005200650070006F00720074004E006100
      6D00650001000100010001000D000A00530051004C00540069006D0065005300
      740061006D0070004600690065006C0064003100010044006100740065004300
      72006500610074006500640001000100010001000D000A005300740072006900
      6E0067004600690065006C006400310001004D00E4007400700075006E006B00
      7400010001004D0065006100730075007200650070006F0069006E0074000100
      01000D000A0053007400720069006E0067004600690065006C00640032000100
      4B00560001004B00760061006C00690074006500740001004700720061006400
      650001004B00760061006C00690074006500740001000D000A00530074007200
      69006E0067004600690065006C006400330001004C00E4006E00670064006200
      650073006B007200690076006E0069006E006700010001004C0065006E006700
      6800740020006400650073006300720069007000740069006F006E0001000100
      0D000A0053007400720069006E0067004600690065006C006400340001005000
      72006F00640075006B00740001000100500072006F0064007500630074000100
      01000D000A0053007400720069006E0067004600690065006C00640035000100
      4C00E4006E0067006400010001004C0065006E00670074006800010001000D00
      0A00460044005F0053006F00720074004F007200640065007200520061007700
      530075006D0053006F007200740069006E0067004F0072006400650072004E00
      6F00010053006F007200740069006E0067004F0072006400650072004E006F00
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D00500072006F0064007500630074004E00
      6F000100500072006F0064007500630074004E006F0001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200520061007700
      530075006D005200610077004D00740072006C004E006F000100520061007700
      4D00740072006C004E006F0001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D0050006900
      6500630065007300010050006900650063006500730001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200520061007700
      530075006D0041004D003300010041004D00330001000100010001000D000A00
      460044005F0053006F00720074004F0072006400650072005200610077005300
      75006D004E004D00330001004E004D003300010001004E004D00330001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D0041004D003100010041004D00310001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200520061007700
      530075006D00550072006C006100670067005000630073000100550072006C00
      61006700670050006300730001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D004C006100
      6D0065006C006C006500720001004C0061006D0065006C006C00650072000100
      0100010001000D000A00460044005F0053006F00720074004F00720064006500
      7200520061007700530075006D004B006100700053006E006900740074000100
      4B006100700053006E0069007400740001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200520061007700530075006D00
      450078007000650063007400650064005000630073004F007500740001004500
      78007000650063007400650064005000630073004F0075007400010001000100
      01000D000A00460044005F0053006F00720074004F0072006400650072005200
      61007700530075006D00410054004D004D000100410054004D004D0001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      520061007700530075006D00410042004D004D000100410042004D004D000100
      0100010001000D000A00460044005F0053006F00720074004F00720064006500
      7200520061007700530075006D0041004C004D004D00010041004C004D004D00
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D00530069007A0065005000650072006300
      65006E0074004F00660054006F00740061006C000100530069007A0065005000
      65007200630065006E0074004F00660054006F00740061006C00010001000100
      01000D000A00460044005F0053006F00720074004F0072006400650072005200
      61007700530075006D004E0054004D004D0001004E0054004D004D0001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      520061007700530075006D004E0042004D004D0001004E0042004D004D000100
      0100010001000D000A00460044005F0053006F00720074004F00720064006500
      7200520061007700530075006D004E004C004D004D0001004E004C004D004D00
      010001004E004C004D004D00010001000D000A00460044005F0053006F007200
      74004F007200640065007200520061007700530075006D005000650072006300
      65006E007400410064006A005000630073000100500065007200630065006E00
      7400410064006A0050006300730001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200520061007700530075006D004B00
      61007300730050006300730001004B0061007300730050006300730001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      520061007700530075006D004B0061007300730041004D00330001004B006100
      7300730041004D00330001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200520061007700530075006D004B0061007300
      730041004D00310001004B0061007300730041004D0031000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D00500072006900630065005000650072004E004D0033000100
      500072006900630065005000650072004E004D00330001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200520061007700
      530075006D00500072006F006400750063007400560061006C00750065000100
      500072006F006400750063007400560061006C00750065000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D0050006300730041007400740041007600720061006B006E00
      6100010050006300730041007400740041007600720061006B006E0061000100
      0100010001000D000A00460044005F0053006F00720074004F00720064006500
      7200520061007700530075006D00410064006A00750073007400650064005000
      690065006300650073000100410064006A007500730074006500640050006900
      650063006500730001000100010001000D000A00460044005F0053006F007200
      74004F007200640065007200520061007700530075006D00410064006A007500
      730074006500640041004D0033000100410064006A0075007300740065006400
      41004D00330001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200520061007700530075006D00410064006A0075007300
      7400650064004E004D0033000100410064006A00750073007400650064004E00
      4D00330001000100010001000D000A00460044005F0053006F00720074004F00
      7200640065007200520061007700530075006D00410064006A00750073007400
      6500640041004D0031000100410064006A007500730074006500640041004D00
      310001000100010001000D000A00460044005F004E006500770050006B006700
      530075006D00410063007400750061006C004C0065006E006700740068004D00
      4D000100410063007400750061006C004C0065006E006700740068004D004D00
      01000100010001000D000A00460044005F004E006500770050006B0067005300
      75006D00410063007400750061006C0054006800690063006B006E0065007300
      73004D004D000100410063007400750061006C0054006800690063006B006E00
      6500730073004D004D0001000100010001000D000A00460044005F004E006500
      770050006B006700530075006D00410063007400750061006C00570069006400
      740068004D004D000100410063007400750061006C0057006900640074006800
      4D004D0001000100010001000D000A00460044005F004E006500770050006B00
      6700530075006D0041004D003300010041004D00330001000100010001000D00
      0A00460044005F004E006500770050006B006700530075006D004E004D003300
      01004E004D003300010001004E004D003300010001000D000A00460044005F00
      4E006500770050006B006700530075006D0053005400590043004B0001005300
      5400590043004B000100010050004300530001005300C40043004B0001000D00
      0A00460044005F004E006500770050006B006700530075006D0041004D003100
      010041004D00310001000100010001000D000A00460044005F004E0065007700
      50006B006700530075006D0053007500720066006100630069006E0067004E00
      6F00010053007500720066006100630069006E0067004E006F00010001000100
      01000D000A00460044005F004E006500770050006B006700530075006D005500
      72006C006100670067000100550072006C006100670067000100010001000100
      0D000A00460044005F004E006500770050006B006700530075006D004D004300
      43006C006100730073004E006F0001004D00430043006C006100730073004E00
      6F0001000100010001000D000A00460044005F00520061007700530075006D00
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065000100500072006F00640075006B00740001000100500072006F006400
      750063007400010001000D000A00460044005F00520061007700530075006D00
      53006F007200740069006E0067004F0072006400650072004E006F0001005300
      6F007200740069006E0067004F0072006400650072004E006F00010001000100
      01000D000A00460044005F00520061007700530075006D00500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A00460044005F00520061007700530075006D0052006100
      77004D00740072006C004E006F0001005200610077004D00740072006C004E00
      6F0001000100010001000D000A00460044005F00520061007700530075006D00
      53005400590043004B00010053007400790063006B0001000100500063007300
      01005300E40063006B0001000D000A00460044005F0052006100770053007500
      6D0041004D003300010041004D00330001000100010001000D000A0046004400
      5F00520061007700530075006D004E004D00330001004E004D00330001000100
      4E004D003300010001000D000A00460044005F00520061007700530075006D00
      41004D003100010041004D00310001000100010001000D000A00460044005F00
      520061007700530075006D00550072006C006100670067005000630073000100
      53007400790063006B002000750072006C00E400670067000100010001000100
      0D000A00460044005F00520061007700530075006D004C0061006D0065006C00
      6C006500720001004C0061006D0065006C006C00650072000100010001000100
      0D000A00460044005F00520061007700530075006D004B006100700053006E00
      69007400740001004B006100700073006E006900740074000100010043007500
      7400740069006E006700200070006F0073006900740069006F006E0073000100
      01000D000A00460044005F00520061007700530075006D004500780070006500
      63007400650064005000630073004F007500740001004600F60072007600E400
      6E00740061007400200073007400790063006B00200075007400010001000100
      01000D000A00460044005F00520061007700530075006D00410054004D004D00
      0100410054004D004D0001000100010001000D000A00460044005F0052006100
      7700530075006D00410042004D004D000100410042004D004D00010001000100
      01000D000A00460044005F00520061007700530075006D0041004C004D004D00
      010041004C004D004D0001000100010001000D000A00460044005F0052006100
      7700530075006D004E0054004D004D0001004E0054004D004D00010001000100
      01000D000A00460044005F00520061007700530075006D004E0042004D004D00
      01004E0042004D004D0001000100010001000D000A00460044005F0052006100
      7700530075006D004E004C004D004D0001004E004C004D004D00010001004E00
      4C004D004D00010001000D000A00460044005F00520061007700530075006D00
      530069007A006500500065007200630065006E0074004F00660054006F007400
      61006C000100530069007A006500500065007200630065006E0074004F006600
      54006F00740061006C0001000100010001000D000A00460044005F0052006100
      7700530075006D00500065007200630065006E007400410064006A0050006300
      73000100500065007200630065006E007400410064006A005000630073000100
      0100010001000D000A00460044005F00520061007700530075006D004B006100
      7300730050006300730001004B00610073007300500063007300010001000100
      01000D000A00460044005F00520061007700530075006D004B00610073007300
      41004D00330001004B0061007300730041004D00330001000100010001000D00
      0A00460044005F00520061007700530075006D004B0061007300730041004D00
      310001004B0061007300730041004D00310001000100010001000D000A004600
      44005F00520061007700530075006D0050007200690063006500500065007200
      4E004D0033000100500072006900730001000100500072006900630065000100
      01000D000A00460044005F00520061007700530075006D00500072006F006400
      750063007400560061006C007500650001005600E40072006400650001000100
      560061006C0075006500010001000D000A00460044005F005200610077005300
      75006D00410044006A0075007300740065006400500069006500630065007300
      0100410044006A00750073007400650064005000690065006300650073000100
      0100010001000D000A00460044005F00520061007700530075006D0041004400
      6A007500730074006500640041004D0033000100410044006A00750073007400
      6500640041004D00330001000100010001000D000A00460044005F0052006100
      7700530075006D00410044006A00750073007400650064004E004D0033000100
      410044006A00750073007400650064004E004D00330001000100010001000D00
      0A00460044005F00520061007700530075006D00410044006A00750073007400
      6500640041004D0031000100410044006A007500730074006500640041004D00
      310001000100010001000D000A00460044005F004E0065007700500072006F00
      640075006300740069006F006E0053006F007200740069006E0067004F007200
      6400650072004E006F00010053006F007200740069006E0067004F0072006400
      650072004E006F0001000100010001000D000A00460044005F004E0065007700
      500072006F00640075006300740069006F006E00500072006F00640075006B00
      74000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A00460044005F004E0065007700500072006F006400
      75006300740069006F006E00410063007400750061006C004C0065006E006700
      740068004D004D00010041004C004D004D0001000100010001000D000A004600
      44005F004E0065007700500072006F00640075006300740069006F006E004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      0100410054000100010041005400010001000D000A00460044005F004E006500
      7700500072006F00640075006300740069006F006E0041006300740075006100
      6C00570069006400740068004D004D0001004100420001000100410057000100
      01000D000A00460044005F004E0065007700500072006F006400750063007400
      69006F006E0041004D003300010041004D00330001000100010001000D000A00
      460044005F004E0065007700500072006F00640075006300740069006F006E00
      4E004D00330001004E004D003300010001004E004D003300010001000D000A00
      460044005F004E0065007700500072006F00640075006300740069006F006E00
      53005400590043004B00010053005400590043004B0001000100500043005300
      01005300C40043004B0001000D000A00460044005F004E006500770050007200
      6F00640075006300740069006F006E0041004D003100010041004D0031000100
      0100010001000D000A00460044005F004E0065007700500072006F0064007500
      6300740069006F006E0053007500720066006100630069006E0067004E006F00
      010053007500720066006100630069006E0067004E006F000100010001000100
      0D000A00460044005F004E0065007700500072006F0064007500630074006900
      6F006E00500072006F0064007500630074004E006F000100500072006F006400
      7500630074004E006F0001000100010001000D000A00460044005F004E006500
      7700500072006F00640075006300740069006F006E0056007200640065000100
      5600E40072006400650001000100560061006C0075006500010001000D000A00
      460044005F0047006500740043006F0073007400500072006F00640075006300
      7400560061006C00750065000100500072006F00640075006300740056006100
      6C007500650001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D00500072006F0064007500
      6B0074000100500072006F00640075006B00740001000100500072006F006400
      750063007400010001000D000A00460044005F0053006F00720074004F007200
      640065007200460069006E00530075006D0053006F007200740069006E006700
      4F0072006400650072004E006F00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200460069006E00530075006D0050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A00460044005F0053006F00720074004F007200
      640065007200460069006E00530075006D0053006F007200740069006E006700
      4F00720064006500720052006F0077004E006F00010053006F00720074006900
      6E0067004F00720064006500720052006F0077004E006F000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720046006900
      6E00530075006D00500069006500630065007300010053007400790063006B00
      0100010050006300730001005300E40063006B0001000D000A00460044005F00
      53006F00720074004F007200640065007200460069006E00530075006D004100
      4D003300010041004D00330001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200460069006E00530075006D004E004D00
      330001004E004D003300010001004E004D003300010001000D000A0046004400
      5F0053006F00720074004F007200640065007200460069006E00530075006D00
      41004D003100010041004D00310001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200460069006E00530075006D004100
      54004D004D000100410054004D004D0001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200460069006E00530075006D00
      410042004D004D000100410042004D004D0001000100010001000D000A004600
      44005F0053006F00720074004F007200640065007200460069006E0053007500
      6D0041004C004D004D00010041004C004D004D0001000100010001000D000A00
      460044005F0053006F00720074004F007200640065007200460069006E005300
      75006D004E0054004D004D0001004E0054004D004D0001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200460069006E00
      530075006D004E0042004D004D0001004E0042004D004D000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720046006900
      6E00530075006D004E004C004D004D0001004E004C004D004D00010001004E00
      4C004D004D00010001000D000A00460044005F0053006F00720074004F007200
      640065007200460069006E00530075006D005000720069006300650050006500
      72004E004D003300010050007200690073002F004E004D003300010001005000
      72006900630065002F004E004D003300010001000D000A00460044005F005300
      6F00720074004F007200640065007200460069006E00530075006D0050007200
      6F006400750063007400560061006C007500650001005600E400720064006500
      01000100560061006C0075006500010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D00410076007200
      550072006C006100670067005000630073000100530074002E00200061007600
      7200E4006B006E006100640065002000750072006C00E4006700670001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      460069006E00530075006D00550072006C006100670067000100550072006C00
      61006700670001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D0053007500720066006100
      630069006E0067004E006F00010053007500720066006100630069006E006700
      4E006F0001000100010001000D000A00460044005F0053006F00720074004F00
      7200640065007200460069006E00530075006D00500063007300410074007400
      41007600720061006B006E0061000100530074002E002000750072006C00E400
      6700670020006B0076006100720020006100740074002000610076007200E400
      6B006E00610001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D004C0061006D0065006C00
      6C006500720001004C0061006D0065006C006C00650072000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720046006900
      6E00530075006D0048007900760065006C004C0050004D000100480079007600
      65006C004C0050004D0001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D004D0043004300
      6C006100730073004E006F0001004D00430043006C006100730073004E006F00
      01000100010001000D000A00460044005F004700650074004C0050004D004800
      790076006C00610074004800790076006C00610074004C0050004D0001004800
      790076006C00610074004C0050004D0001000100010001000D000A0046004400
      5F00500072006F006400540069006D00650053006500670053006F0072007400
      69006E0067004F0072006400650072004E006F00010053006F00720074006900
      6E0067004F0072006400650072004E006F0001000100010001000D000A004600
      44005F00500072006F006400540069006D006500530065006700530065006700
      6D0065006E0074004E006F0001005300650067006D0065006E0074006E007200
      01000100010001000D000A00460044005F00500072006F006400540069006D00
      6500530065006700530074006100720074005300650067006D0065006E007400
      01005300740061007200740020007300650067006D0065006E00740001000100
      010001000D000A00460044005F00500072006F006400540069006D0065005300
      6500670045006E0064005300650067006D0065006E007400010053006C007500
      740020007300650067006D0065006E00740001000100010001000D000A004600
      44005F00500072006F006400540069006D006500530065006700500072006500
      760053006F007200740069006E0067004F0072006400650072004E006F000100
      4600F600720065006700E50065006E006400650020006B00F60072006E007200
      01000100010001000D000A00460044005F007600690073005F0050006B006700
      52006500670049006E004F007400680065007200520075006E00730042006500
      74007700650065006E004400610074006500730053006F007200740069006E00
      67004F0072006400650072004E006F00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00460044005F00
      7600690073005F0050006B00670052006500670049006E004F00740068006500
      7200520075006E0073004200650074007700650065006E004400610074006500
      7300440061007400650043007200650061007400650064000100440061007400
      6500430072006500610074006500640001000100010001000D000A0046004400
      5F007600690073005F0043006800650063006B004900660041006E0079005000
      6B00670052006500670049006E004F007400680065007200520075006E007300
      4200650074007700650065006E004400610074006500730053006F0072007400
      69006E0067004F0072006400650072004E006F00010053006F00720074006900
      6E0067004F0072006400650072004E006F0001000100010001000D000A004600
      44005F00670065007400410064006A00500063007300410064006A0050006300
      73000100460044006A0050006300730001000100010001000D000A0046004400
      5F00530074006F0070007000530075006D00530074006F007000700054006900
      640073004E0061006D006E000100530074006F00700070005400690064007300
      4E0061006D006E0001000100010001000D000A00460044005F00530074006F00
      70007000530075006D00530074006F0070007000540069006400010053007400
      6F007000700054006900640001000100010001000D000A00460044005F005300
      74006F0070007000530075006D00530074006F00700070005400690064004600
      6C006F00610074000100530074006F007000700054006900640046006C006F00
      6100740001000100010001000D000A00730071005F0047006500740050007200
      6F0064007500630074004400650073006300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A00730071005F00470065007400500072006F0064007500630074004400
      650073006300500072006F006400750063007400470072006F00750070004E00
      6F000100500072006F006400750063007400470072006F00750070004E006F00
      01000100010001000D000A00730071005F00470065007400500072006F006400
      7500630074004400650073006300500072006F00640075006300740044006900
      730070006C00610079004E0061006D0065000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A00730071005F00470065007400500072006F0064007500630074004400
      650073006300410063007400750061006C0054006800690063006B006E006500
      730073004D004D000100410063007400750061006C0054006800690063006B00
      6E006500730073004D004D0001000100010001000D000A00730071005F004700
      65007400500072006F0064007500630074004400650073006300410063007400
      750061006C00570069006400740068004D004D00010041006300740075006100
      6C00570069006400740068004D004D0001000100010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6D007400500072006F00700073002E00560065007200730069006F006E000100
      37002E00360033002E003000300020005300740061006E006400610072006400
      2000450064006900740069006F006E0001000100010001000D000A006D007400
      4C0065006E0067007400680046006F0072006D00610074002E00560065007200
      730069006F006E00010037002E00360033002E00300030002000530074006100
      6E0064006100720064002000450064006900740069006F006E00010001000100
      01000D000A006D00740056006F006C0075006D00650046006F0072006D006100
      74002E00560065007200730069006F006E00010037002E00360033002E003000
      300020005300740061006E006400610072006400200045006400690074006900
      6F006E0001000100010001000D000A006D007400530069007A00650046006F00
      72006D00610074002E00560065007200730069006F006E00010037002E003600
      33002E003000300020005300740061006E006400610072006400200045006400
      6900740069006F006E0001000100010001000D000A006D007400550072006C00
      610067006700500072006F0064007500630074002E0056006500720073006900
      6F006E00010037002E00360033002E003000300020005300740061006E006400
      6100720064002000450064006900740069006F006E0001000100010001000D00
      0A006D0074005200610077004D00740072006C002E0056006500720073006900
      6F006E00010037002E00360033002E003000300020005300740061006E006400
      6100720064002000450064006900740069006F006E0001000100010001000D00
      0A006D00740050006B0067004E006F0073002E00560065007200730069006F00
      6E00010037002E00360033002E003000300020005300740061006E0064006100
      720064002000450064006900740069006F006E0001000100010001000D000A00
      460044005F0053006F00720074004F0072006400650072005200610077005300
      75006D002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200520061007700530075006D0053006F007200
      740069006E0067004F0072006400650072004E006F002E004F00720069006700
      69006E00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A00460044005F0053006F00720074004F007200
      640065007200520061007700530075006D00500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200520061007700530075006D005200610077004D007400
      72006C004E006F002E004F0072006900670069006E0001005200610077004D00
      740072006C004E006F0001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200520061007700530075006D00500069006500
      6300650073002E004F0072006900670069006E00010050006900650063006500
      730001000100010001000D000A00460044005F0053006F00720074004F007200
      640065007200520061007700530075006D0041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200520061007700530075006D004E00
      4D0033002E004F0072006900670069006E0001004E004D003300010001004E00
      4D003300010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D0041004D0031002E004F00720069006700
      69006E00010041004D00310001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D0055007200
      6C006100670067005000630073002E004F0072006900670069006E0001005500
      72006C0061006700670050006300730001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200520061007700530075006D00
      4C0061006D0065006C006C00650072002E004F0072006900670069006E000100
      4C0061006D0065006C006C006500720001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200520061007700530075006D00
      4B006100700053006E006900740074002E004F0072006900670069006E000100
      4B006100700053006E0069007400740001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200520061007700530075006D00
      450078007000650063007400650064005000630073004F00750074002E004F00
      72006900670069006E0001004500780070006500630074006500640050006300
      73004F007500740001000100010001000D000A00460044005F0053006F007200
      74004F007200640065007200520061007700530075006D00410054004D004D00
      2E004F0072006900670069006E000100410054004D004D000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D00410042004D004D002E004F0072006900670069006E000100
      410042004D004D0001000100010001000D000A00460044005F0053006F007200
      74004F007200640065007200520061007700530075006D0041004C004D004D00
      2E004F0072006900670069006E00010041004C004D004D000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D00530069007A006500500065007200630065006E0074004F00
      660054006F00740061006C002E004F0072006900670069006E00010053006900
      7A006500500065007200630065006E0074004F00660054006F00740061006C00
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D004E0054004D004D002E004F0072006900
      670069006E0001004E0054004D004D0001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200520061007700530075006D00
      4E0042004D004D002E004F0072006900670069006E0001004E0042004D004D00
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D004E004C004D004D002E004F0072006900
      670069006E0001004E004C004D004D00010001004E004C004D004D0001000100
      0D000A00460044005F0053006F00720074004F00720064006500720052006100
      7700530075006D00500065007200630065006E007400410064006A0050006300
      73002E004F0072006900670069006E000100500065007200630065006E007400
      410064006A0050006300730001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D004B006100
      730073005000630073002E004F0072006900670069006E0001004B0061007300
      730050006300730001000100010001000D000A00460044005F0053006F007200
      74004F007200640065007200520061007700530075006D004B00610073007300
      41004D0033002E004F0072006900670069006E0001004B006100730073004100
      4D00330001000100010001000D000A00460044005F0053006F00720074004F00
      7200640065007200520061007700530075006D004B0061007300730041004D00
      31002E004F0072006900670069006E0001004B0061007300730041004D003100
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D0050007200690063006500500065007200
      4E004D0033002E004F0072006900670069006E00010050007200690063006500
      5000650072004E004D00330001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D0050007200
      6F006400750063007400560061006C00750065002E004F007200690067006900
      6E000100500072006F006400750063007400560061006C007500650001000100
      010001000D000A00460044005F0053006F00720074004F007200640065007200
      520061007700530075006D00410064006A007500730074006500640050006900
      65006300650073002E004F0072006900670069006E000100410064006A007500
      730074006500640050006900650063006500730001000100010001000D000A00
      460044005F0053006F00720074004F0072006400650072005200610077005300
      75006D00410064006A007500730074006500640041004D0033002E004F007200
      6900670069006E000100410064006A007500730074006500640041004D003300
      01000100010001000D000A00460044005F0053006F00720074004F0072006400
      65007200520061007700530075006D00410064006A0075007300740065006400
      4E004D0033002E004F0072006900670069006E000100410064006A0075007300
      7400650064004E004D00330001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200520061007700530075006D0041006400
      6A007500730074006500640041004D0031002E004F0072006900670069006E00
      0100410064006A007500730074006500640041004D0031000100010001000100
      0D000A00460044005F004E006500770050006B006700530075006D002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00460044005F004E006500770050006B006700
      530075006D00410063007400750061006C004C0065006E006700740068004D00
      4D002E004F0072006900670069006E000100410063007400750061006C004C00
      65006E006700740068004D004D0001000100010001000D000A00460044005F00
      4E006500770050006B006700530075006D00410063007400750061006C005400
      6800690063006B006E006500730073004D004D002E004F007200690067006900
      6E000100410063007400750061006C0054006800690063006B006E0065007300
      73004D004D0001000100010001000D000A00460044005F004E00650077005000
      6B006700530075006D00410063007400750061006C0057006900640074006800
      4D004D002E004F0072006900670069006E000100410063007400750061006C00
      570069006400740068004D004D0001000100010001000D000A00460044005F00
      4E006500770050006B006700530075006D0041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00460044005F00
      4E006500770050006B006700530075006D004E004D0033002E004F0072006900
      670069006E0001004E004D003300010001004E004D003300010001000D000A00
      460044005F004E006500770050006B006700530075006D005300540059004300
      4B002E004F0072006900670069006E00010053005400590043004B0001000100
      50004300530001005300C40043004B0001000D000A00460044005F004E006500
      770050006B006700530075006D0041004D0031002E004F007200690067006900
      6E00010041004D00310001000100010001000D000A00460044005F004E006500
      770050006B006700530075006D0053007500720066006100630069006E006700
      4E006F002E004F0072006900670069006E000100530075007200660061006300
      69006E0067004E006F0001000100010001000D000A00460044005F004E006500
      770050006B006700530075006D00550072006C006100670067002E004F007200
      6900670069006E000100550072006C0061006700670001000100010001000D00
      0A00460044005F004E006500770050006B006700530075006D004D0043004300
      6C006100730073004E006F002E004F0072006900670069006E0001004D004300
      43006C006100730073004E006F0001000100010001000D000A00460044005F00
      470065006E00520061007700530075006D002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00460044005F00520061007700530075006D002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00460044005F00520061007700530075006D00500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065002E00
      4F0072006900670069006E000100500072006F00640075006300740044006900
      730070006C00610079004E0061006D00650001000100010001000D000A004600
      44005F00520061007700530075006D0053006F007200740069006E0067004F00
      72006400650072004E006F002E004F0072006900670069006E00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A00460044005F00520061007700530075006D00500072006F0064007500
      630074004E006F002E004F0072006900670069006E000100500072006F006400
      7500630074004E006F0001000100010001000D000A00460044005F0052006100
      7700530075006D005200610077004D00740072006C004E006F002E004F007200
      6900670069006E0001005200610077004D00740072006C004E006F0001000100
      010001000D000A00460044005F00520061007700530075006D00530054005900
      43004B002E004F0072006900670069006E00010053005400590043004B000100
      010050004300530001005300C40043004B0001000D000A00460044005F005200
      61007700530075006D0041004D0033002E004F0072006900670069006E000100
      41004D00330001000100010001000D000A00460044005F005200610077005300
      75006D004E004D0033002E004F0072006900670069006E0001004E004D003300
      010001004E004D003300010001000D000A00460044005F005200610077005300
      75006D0041004D0031002E004F0072006900670069006E00010041004D003100
      01000100010001000D000A00460044005F00520061007700530075006D005500
      72006C006100670067005000630073002E004F0072006900670069006E000100
      550072006C0061006700670050006300730001000100010001000D000A004600
      44005F00520061007700530075006D004C0061006D0065006C006C0065007200
      2E004F0072006900670069006E0001004C0061006D0065006C006C0065007200
      01000100010001000D000A00460044005F00520061007700530075006D004B00
      6100700053006E006900740074002E004F0072006900670069006E0001004B00
      6100700053006E0069007400740001000100010001000D000A00460044005F00
      520061007700530075006D004500780070006500630074006500640050006300
      73004F00750074002E004F0072006900670069006E0001004500780070006500
      63007400650064005000630073004F007500740001000100010001000D000A00
      460044005F00520061007700530075006D00410054004D004D002E004F007200
      6900670069006E000100410054004D004D0001000100010001000D000A004600
      44005F00520061007700530075006D00410042004D004D002E004F0072006900
      670069006E000100410042004D004D0001000100010001000D000A0046004400
      5F00520061007700530075006D0041004C004D004D002E004F00720069006700
      69006E00010041004C004D004D0001000100010001000D000A00460044005F00
      520061007700530075006D004E0054004D004D002E004F007200690067006900
      6E0001004E0054004D004D0001000100010001000D000A00460044005F005200
      61007700530075006D004E0042004D004D002E004F0072006900670069006E00
      01004E0042004D004D0001000100010001000D000A00460044005F0052006100
      7700530075006D004E004C004D004D002E004F0072006900670069006E000100
      4E004C004D004D00010001004E004C004D004D00010001000D000A0046004400
      5F00520061007700530075006D00530069007A00650050006500720063006500
      6E0074004F00660054006F00740061006C002E004F0072006900670069006E00
      0100530069007A006500500065007200630065006E0074004F00660054006F00
      740061006C0001000100010001000D000A00460044005F005200610077005300
      75006D00500065007200630065006E007400410064006A005000630073002E00
      4F0072006900670069006E000100500065007200630065006E00740041006400
      6A0050006300730001000100010001000D000A00460044005F00520061007700
      530075006D004B006100730073005000630073002E004F007200690067006900
      6E0001004B0061007300730050006300730001000100010001000D000A004600
      44005F00520061007700530075006D004B0061007300730041004D0033002E00
      4F0072006900670069006E0001004B0061007300730041004D00330001000100
      010001000D000A00460044005F00520061007700530075006D004B0061007300
      730041004D0031002E004F0072006900670069006E0001004B00610073007300
      41004D00310001000100010001000D000A00460044005F005200610077005300
      75006D00500072006900630065005000650072004E004D0033002E004F007200
      6900670069006E000100500072006900630065005000650072004E004D003300
      01000100010001000D000A00460044005F00520061007700530075006D005000
      72006F006400750063007400560061006C00750065002E004F00720069006700
      69006E000100500072006F006400750063007400560061006C00750065000100
      0100010001000D000A00460044005F00520061007700530075006D0041004400
      6A00750073007400650064005000690065006300650073002E004F0072006900
      670069006E000100410044006A00750073007400650064005000690065006300
      6500730001000100010001000D000A00460044005F0052006100770053007500
      6D00410044006A007500730074006500640041004D0033002E004F0072006900
      670069006E000100410044006A007500730074006500640041004D0033000100
      0100010001000D000A00460044005F00520061007700530075006D0041004400
      6A00750073007400650064004E004D0033002E004F0072006900670069006E00
      0100410044006A00750073007400650064004E004D0033000100010001000100
      0D000A00460044005F00520061007700530075006D00410044006A0075007300
      74006500640041004D0031002E004F0072006900670069006E00010041004400
      6A007500730074006500640041004D00310001000100010001000D000A004600
      44005F004E0065007700500072006F00640075006300740069006F006E002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00460044005F004E006500770050007200
      6F00640075006300740069006F006E0053006F007200740069006E0067004F00
      72006400650072004E006F002E004F0072006900670069006E00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A00460044005F004E0065007700500072006F0064007500630074006900
      6F006E00500072006F00640075006B0074002E004F0072006900670069006E00
      0100500072006F00640075006B00740001000100500072006F00640075006300
      7400010001000D000A00460044005F004E0065007700500072006F0064007500
      6300740069006F006E00410063007400750061006C004C0065006E0067007400
      68004D004D002E004F0072006900670069006E00010041006300740075006100
      6C004C0065006E006700740068004D004D0001000100010001000D000A004600
      44005F004E0065007700500072006F00640075006300740069006F006E004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      2E004F0072006900670069006E000100410063007400750061006C0054006800
      690063006B006E006500730073004D004D0001000100010001000D000A004600
      44005F004E0065007700500072006F00640075006300740069006F006E004100
      63007400750061006C00570069006400740068004D004D002E004F0072006900
      670069006E000100410063007400750061006C00570069006400740068004D00
      4D0001000100010001000D000A00460044005F004E0065007700500072006F00
      640075006300740069006F006E0041004D0033002E004F007200690067006900
      6E00010041004D00330001000100010001000D000A00460044005F004E006500
      7700500072006F00640075006300740069006F006E004E004D0033002E004F00
      72006900670069006E0001004E004D003300010001004E004D00330001000100
      0D000A00460044005F004E0065007700500072006F0064007500630074006900
      6F006E0053005400590043004B002E004F0072006900670069006E0001005300
      5400590043004B000100010050004300530001005300C40043004B0001000D00
      0A00460044005F004E0065007700500072006F00640075006300740069006F00
      6E0041004D0031002E004F0072006900670069006E00010041004D0031000100
      0100010001000D000A00460044005F004E0065007700500072006F0064007500
      6300740069006F006E0053007500720066006100630069006E0067004E006F00
      2E004F0072006900670069006E00010053007500720066006100630069006E00
      67004E006F0001000100010001000D000A00460044005F004E00650077005000
      72006F00640075006300740069006F006E00500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A00460044005F004E00650077005000
      72006F00640075006300740069006F006E0056007200640065002E004F007200
      6900670069006E0001005B005600E4007200640065005D000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720053006F007200740069006E0067004F00720064006500
      72004E006F002E004F0072006900670069006E00010053006F00720074006900
      6E0067004F0072006400650072004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005000490050004E00
      6F002E004F0072006900670069006E0001005000490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C00490050004E006F002E004F0072006900670069006E0001004C004900
      50004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720053007400610072007400540069006D0065002E00
      4F0072006900670069006E00010053007400610072007400540069006D006500
      0100530074006100720074005400690064000100010053007400610072007400
      54006900640001000D000A006300640073005F0053006F00720074004F007200
      64006500720045006E006400540069006D0065002E004F007200690067006900
      6E00010045006E006400540069006D00650001000100010001000D000A006300
      640073005F0053006F00720074004F00720064006500720043006F006D006D00
      65006E00740073002E004F0072006900670069006E00010043006F006D006D00
      65006E007400730001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200530074006F007000540069006D0065002E00
      4F0072006900670069006E000100530074006F007000540069006D0065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200440061007400650043007200650061007400650064002E004F007200
      6900670069006E00010044006100740065004300720065006100740065006400
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200430072006500610074006500640055007300650072002E004F00
      72006900670069006E0001004300720065006100740065006400550073006500
      7200010053006B0061007000610064002000610076000100010053006B006100
      70006100640020006100760001000D000A006300640073005F0053006F007200
      74004F0072006400650072005000720069006F004E006F002E004F0072006900
      670069006E0001005000720069006F004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004D0043004300
      6C006100730073004E006F002E004F0072006900670069006E0001004D004300
      43006C006100730073004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004D006F007600650054006F00
      4C00490050004E006F002E004F0072006900670069006E0001004D006F007600
      650054006F004C00490050004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720053006800690066007400
      4E006F002E004F0072006900670069006E000100530068006900660074004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720054007900700065004F006600520075006E004E006F002E00
      4F0072006900670069006E00010054007900700065004F006600520075006E00
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730070006F006E007300690062006C006500
      55007300650072002E004F0072006900670069006E0001005200650073007000
      6F006E007300690062006C006500550073006500720001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720041006E00
      730076006100720069006700530061006C006A006100720065004E006F002E00
      4F0072006900670069006E00010041006E007300760061007200690067005300
      61006C006A006100720065004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720041006E00740061006C00
      42006900740061007200550074002E004F0072006900670069006E0001004100
      6E00740061006C00420069007400610072005500740001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004B006100
      730073006100740069006F006E0053007400790063006B002E004F0072006900
      670069006E0001004B006100730073006100740069006F006E00530074007900
      63006B0001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200530069007A00650046006F0072006D00610074002E00
      4F0072006900670069006E000100530069007A00650046006F0072006D006100
      740001000100530069007A006500200066006F0072006D006100740001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      65006E0067007400680046006F0072006D00610074002E004F00720069006700
      69006E0001004C0065006E0067007400680046006F0072006D00610074000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200610077004D00740072006C005000630073002E004F0072006900
      670069006E0001005200610077004D00740072006C0050006300730001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200500072006F00640075006300740069006F006E005000630073002E004F00
      72006900670069006E000100500072006F00640075006300740069006F006E00
      50006300730001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720041006E00740061006C004B006100700053006E00
      6900740074002E004F0072006900670069006E00010041006E00740061006C00
      4B006100700053006E0069007400740001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720054006F00740061006C00
      5000630073002E004F0072006900670069006E00010054006F00740061006C00
      50006300730001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200530074006F007000540069006D0065004E006F00
      740049006E0063006C002E004F0072006900670069006E000100530074006F00
      7000540069006D0065004E006F00740049006E0063006C000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      650067006F002E004F0072006900670069006E0001004C00650067006F000100
      010043006F006E0074007200610063007400200077006F0072006B0001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      610077005000490050004E006F002E004F0072006900670069006E0001005200
      610077005000490050004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072005200610077004C0049005000
      4E006F002E004F0072006900670069006E0001005200610077004C0049005000
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005300650071004E006F002E004F007200690067006900
      6E0001005300650071004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720048007900760065006C004900
      6E0066006F002E004F0072006900670069006E00010048007900760065006C00
      49006E0066006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005000720069006E0074005200610077004D00
      740072006C0050006100720074002E004F0072006900670069006E0001005000
      720069006E0074005200610077004D00740072006C0050006100720074000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200540065006D0070006C006100740065002E004F007200690067006900
      6E000100540065006D0070006C0061007400650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200540065006D00
      70006C006100740065004E0061006D0065002E004F0072006900670069006E00
      0100540065006D0070006C006100740065004E0061006D006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      540065006D0070006C0061007400650055007300650072002E004F0072006900
      670069006E000100540065006D0070006C006100740065005500730065007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200500072006F006400540069006D00650048006F00750072002E00
      4F0072006900670069006E000100500072006F006400540069006D0065004800
      6F007500720001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200530074006F007000540069006D00650048006F00
      750072002E004F0072006900670069006E000100530074006F00700054006900
      6D00650048006F007500720001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200530074006F007000540069006D00
      65004E006F00740049006E0063006C0048006F00750072002E004F0072006900
      670069006E000100530074006F007000540069006D0065004E006F0074004900
      6E0063006C0048006F007500720001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720050006F007300740054006900
      6D00650048006F00750072002E004F0072006900670069006E00010050006F00
      73007400540069006D00650048006F007500720001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004D0061006E00
      750061006C00500072006F006400540069006D0065002E004F00720069006700
      69006E0001004D0061006E00750061006C00500072006F006400540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200500072006F00640075006300650072004E006F002E004F00
      72006900670069006E000100500072006F00640075006300650072004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004F0077006E00650072004E006F002E004F007200690067006900
      6E0001004F0077006E00650072004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F007200640065007200500072006F006400
      75006300740069006F006E0055006E00690074004E006F002E004F0072006900
      670069006E000100500072006F00640075006300740069006F006E0055006E00
      690074004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005300740061007400750073002E004F007200
      6900670069006E00010053007400610074007500730001000100530074006100
      740075007300010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200560050005F00500072006F00640075006300740043006F00
      640065005000720065006600690078002E004F0072006900670069006E000100
      560050005F00500072006F00640075006300740043006F006400650050007200
      650066006900780001000100010001000D000A00460044005F00470065006E00
      520061007700530075006D005F00490049002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00460044005F00470065006E0053004F006F0075007400700075007400
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A006300640073005F0053004F006F00
      750074007000750074002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0063006400
      73005F0053004F006F0075007400700075007400500072006F00640075006300
      74004E006F002E004F0072006900670069006E000100500072006F0064007500
      630074004E006F0001000100010001000D000A006300640073005F0053004F00
      6F0075007400700075007400500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065002E004F0072006900670069006E000100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D00650001000100010001000D000A006300640073005F0053004F006F007500
      740070007500740053005400590043004B002E004F0072006900670069006E00
      010053005400590043004B000100010050004300530001005300C40043004B00
      01000D000A006300640073005F0053004F006F00750074007000750074004100
      4D0033002E004F0072006900670069006E00010041004D003300010001000100
      01000D000A006300640073005F0053004F006F00750074007000750074004100
      4D0031002E004F0072006900670069006E00010041004D003100010001000100
      01000D000A006300640073005F0053004F006F00750074007000750074004E00
      4D0033002E004F0072006900670069006E0001004E004D003300010001004E00
      4D003300010001000D000A006300640073005F0053004F006F00750074007000
      7500740055007400660061006C006C002E004F0072006900670069006E000100
      55007400660061006C006C00010001004F007500740063006F006D0065000100
      01000D000A006300640073005F0053004F006F00750074007000750074005000
      72006F00640075006B00740056007200640065002E004F007200690067006900
      6E0001005B00500072006F00640075006B0074005600E4007200640065005D00
      01000100010001000D000A006300640073005F0053004F006F00750074007000
      750074006D006500640065006C0070007200690073002E004F00720069006700
      69006E0001006D006500640065006C0070007200690073000100010001000100
      0D000A006300640073005F0053004F006F007500740070007500740050007200
      6900730075007400660061006C006C002E004F0072006900670069006E000100
      500072006900730075007400660061006C006C0001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F0077002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F00770053006F007200740069006E0067004F0072006400650072004E00
      6F002E004F0072006900670069006E00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770053006F007200740069006E00
      67004F00720064006500720052006F0077004E006F002E004F00720069006700
      69006E00010053006F007200740069006E0067004F0072006400650072005200
      6F0077004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004300530044004E006F002E004F0072006900
      670069006E0001004300530044004E006F0001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F007700500072006F006400
      7500630074004E006F002E004F0072006900670069006E000100500072006F00
      64007500630074004E006F0001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F0077004D00430043006C00610073007300
      4E006F002E004F0072006900670069006E0001004D00430043006C0061007300
      73004E006F0001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F0064007500630074004C0065006E00
      6700740068004E006F002E004F0072006900670069006E000100500072006F00
      64007500630074004C0065006E006700740068004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      2E004F0072006900670069006E0001004C0065006E0067007400680044006500
      73006300720069007000740069006F006E0001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F00770056006F006C007500
      6D00650055006E00690074004E006F002E004F0072006900670069006E000100
      56006F006C0075006D00650055006E00690074004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004400
      61007400650043007200650061007400650064002E004F007200690067006900
      6E00010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      430072006500610074006500640055007300650072002E004F00720069006700
      69006E0001004300720065006100740065006400550073006500720001005300
      6B0061007000610064002000610076000100010053006B006100700061006400
      20006100760001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077005000500050002E004F0072006900670069006E00010050005000
      500001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700500072006F00640049006E00730074007200750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640049006E00
      7300740072007500630074004E006F0001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770050006300730049006E00
      2E004F0072006900670069006E00010050006300730049006E00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      41004D00310049006E002E004F0072006900670069006E00010041004D003100
      49006E0001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F007700540061007200670065007400500072006F0064007500
      630074002E004F0072006900670069006E000100540061007200670065007400
      500072006F00640075006300740001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006900630065005500
      6E00690074002E004F0072006900670069006E00010050007200690063006500
      55006E006900740001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077005000720069006F002E004F00720069006700
      69006E0001005000720069006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700530074006100740075007300
      2E004F0072006900670069006E00010053007400610074007500730001000100
      530074006100740075007300010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004D00610072006B002E004F00720069006700
      69006E0001004D00610072006B0001004D00E40072006B006E0069006E006700
      010001004D00E40072006B006E0069006E00670001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770043007500730074006F006D00
      650072002E004F0072006900670069006E00010043007500730074006F006D00
      6500720001004B0075006E006400010001004B0075006E00640001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700450078007000
      6F007200740052006F0077002E004F0072006900670069006E00010045007800
      70006F007200740052006F00770001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006900630065004C00
      6900730074004E006F002E004F0072006900670069006E000100500072006900
      630065004C006900730074004E006F0001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770053006F00720074004F00
      72006400650072002E004F0072006900670069006E00010053006F0072007400
      4F00720064006500720001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F0077004E006F00740065004D00610072006B00
      2E004F0072006900670069006E0001004E006F00740065004D00610072006B00
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077004E006F00740065005300740061006D0070002E004F0072006900
      670069006E0001004E006F00740065005300740061006D007000010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4C00490050004E006F002E004F0072006900670069006E0001004C0049005000
      4E006F0001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F0077005000430053002E004F0072006900670069006E000100
      50004300530001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004C0061006E006700750061006700650063006F00
      640065002E004F0072006900670069006E0001004C0061006E00670075006100
      6700650063006F006400650001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700530069007A00650046006F007200
      6D00610074002E004F0072006900670069006E000100530069007A0065004600
      6F0072006D006100740001000100530069007A006500200066006F0072006D00
      61007400010001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077004C0065006E0067007400680046006F0072006D00610074002E00
      4F0072006900670069006E0001004C0065006E0067007400680046006F007200
      6D006100740001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770056006F006C0075006D00650046006F0072006D00
      610074002E004F0072006900670069006E00010056006F006C0075006D006500
      46006F0072006D006100740001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700550072006C006100670067002E00
      4F0072006900670069006E000100550072006C00610067006700010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      45006E00640050006B00670041006C006C006F007700650064002E004F007200
      6900670069006E00010045006E00640050006B00670041006C006C006F007700
      6500640001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770050006B0067005000720065006600690078002E004F00
      72006900670069006E00010050006B0067005000720065006600690078000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004E006F0074006500720069006E0067002E004F007200690067006900
      6E0001004E006F0074006500720069006E00670001004E006F00740065007200
      610001004E006F007400650001004E006F00740065007200610001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700530074006900
      63006B005200650063006900700065002E004F0072006900670069006E000100
      53007400690063006B0052006500630069007000650001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770052006500
      660043006F0070006900650073002E004F0072006900670069006E0001005200
      6500660043006F00700069006500730001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770053007400610063006B00
      650072004E006F002E004F0072006900670069006E0001005300740061006300
      6B00650072004E006F0001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770041006E00740061006C00420069007400
      61007200550074002E004F0072006900670069006E00010041006E0074006100
      6C00420069007400610072005500740001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770041006E00740061006C00
      4B006100700053006E006900740074002E004F0072006900670069006E000100
      41006E00740061006C004B006100700053006E00690074007400010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      41007200740069006B0065006C004B006F0064002E004F007200690067006900
      6E00010041007200740069006B0065006C004B006F0064000100410072007400
      69006B0065006C006B006F0064000100410072007400690063006C0065002000
      63006F0064006500010041007200740069006B0065006C006B006F0064000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      72006F00640041004D0031002E004F0072006900670069006E00010050007200
      6F00640041004D00310001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F007700500072006F00640041004D0033002E00
      4F0072006900670069006E000100500072006F00640041004D00330001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      7700500072006F0064005000430053002E004F0072006900670069006E000100
      500072006F00640050004300530001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006F00640050004B00
      54002E004F0072006900670069006E000100500072006F00640050004B005400
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700500072006F0064004E004D0033002E004F007200690067006900
      6E000100500072006F0064004E004D00330001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004C0065006E006700
      7400680053007000650063002E004F0072006900670069006E0001004C006500
      6E00670074006800530070006500630001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004D0052004B0045002E00
      4F0072006900670069006E0001005B004D00C40052004B0045005D0001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      7700500072006F00640075006B0074002E004F0072006900670069006E000100
      500072006F00640075006B00740001000100500072006F006400750063007400
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      770053007500720066006100630069006E0067004E006F002E004F0072006900
      670069006E00010053007500720066006100630069006E0067004E006F000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770053007000650063006900650073004E006F002E004F00720069006700
      69006E00010053007000650063006900650073004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004C00
      4F004E0052002E004F0072006900670069006E0001004C004F004E0052000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770041004C004D004D002E004F0072006900670069006E00010041004C00
      4D004D0001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F0077004B00760061006C0069007400650074002E004F007200
      6900670069006E0001004B00760061006C006900740065007400010001004700
      7200610064006500010001000D000A006300640073005F0053006F0072004F00
      7200640052006F0077005400720073006C00610067002E004F00720069006700
      69006E0001005B0054007200E40073006C00610067005D000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005500
      74006600720061006E00640065002E004F0072006900670069006E0001005B00
      550074006600F600720061006E00640065005D0001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F00770049004D005000
      2E004F0072006900670069006E00010049004D005000010049006D0070007200
      650067006E006500720069006E0067000100540072006500610074006D006500
      6E007400010049006D0070007200650067006E006500720069006E0067000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004100
      54002E004F0072006900670069006E0001005B00410054005D00010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      410042002E004F0072006900670069006E000100410042000100010041005700
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004E0054002E004F0072006900670069006E0001004E005400010001004E00
      5400010001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004E0042002E004F0072006900670069006E0001004E00420001000100
      4E005700010001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077004500780063006C00750064006500460072006F006D0054006F00
      740061006C002E004F0072006900670069006E0001004500780063006C007500
      64006500460072006F006D0054006F00740061006C0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770056005000
      5F00500072006F00640075006300740043006F00640065002E004F0072006900
      670069006E000100560050005F00500072006F00640075006300740043006F00
      6400650001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770050006C0061006E006E00650064005000630073002E00
      4F0072006900670069006E00010050006C0061006E006E006500640050006300
      730001000100010001000D000A006300640073005F0053004F00520061007700
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F00500072006F00640049006E007300740072007500
      63007400500072006F00640049006E0073007400720075004E006F002E004F00
      72006900670069006E000100500072006F00640049006E007300740072007500
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      49006E0073007400720075006300740046004F00480043007000650072006300
      65006E0074002E004F0072006900670069006E00010046004F00480043007000
      65007200630065006E00740001000100010001000D000A006300640073005F00
      500072006F00640049006E007300740072007500630074004D0069006E006900
      420075006E0064006C0065004800650069006700680074002E004F0072006900
      670069006E0001004D0069006E006900420075006E0064006C00650048006500
      690067006800740001000100010001000D000A006300640073005F0050007200
      6F00640049006E007300740072007500630074004D0069006E00690042007500
      6E0064006C006500570069006400740068002E004F0072006900670069006E00
      01004D0069006E006900420075006E0064006C00650057006900640074006800
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      7300740072007500630074004D0069006E004E006F004F006600530074006900
      63006B0073002E004F0072006900670069006E0001004D0069006E004E006F00
      4F00660053007400690063006B00730001000100010001000D000A0063006400
      73005F00500072006F00640049006E007300740072007500630074004E006F00
      4F0066005300740072006100700073002E004F0072006900670069006E000100
      4E006F004F00660053007400720061007000730001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      43006F0072006E0065007200500072006F00740065006300740069006F006E00
      2E004F0072006900670069006E00010043006F0072006E006500720050007200
      6F00740065006300740069006F006E0001004800F60072006E0073006B007900
      64006400010001004800F60072006E0073006B0079006400640001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      5000610063006B00610067006500570069006400740068002E004F0072006900
      670069006E0001005000610063006B0061006700650057006900640074006800
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      7300740072007500630074005000610063006B00610067006500480065006900
      6700680074002E004F0072006900670069006E0001005000610063006B006100
      6700650048006500690067006800740001000100010001000D000A0063006400
      73005F00500072006F00640049006E0073007400720075006300740053007400
      61006D0070002E004F0072006900670069006E0001005300740061006D007000
      01000100010001000D000A006300640073005F00500072006F00640049006E00
      7300740072007500630074005000450054002E004F0072006900670069006E00
      010050004500540001000100010001000D000A006300640073005F0050007200
      6F00640049006E007300740072007500630074004D0069006E00690042007500
      6E0064006C0065002E004F0072006900670069006E0001004D0069006E006900
      420075006E0064006C00650001000100010001000D000A006300640073005F00
      500072006F00640049006E007300740072007500630074005300740072006500
      73007300470072006100640065002E004F0072006900670069006E0001005300
      740072006500730073004700720061006400650001000100010001000D000A00
      6300640073005F00500072006F00640049006E00730074007200750063007400
      460069006E006700650072004A006F0069006E0074002E004F00720069006700
      69006E000100460069006E006700650072004A006F0069006E00740001004600
      69006E0067006500720073006B00610072007600610064000100460069006E00
      6700650072006A006F0069006E0074000100460069006E006700650072007300
      6B006100720076006100640001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000610063006B00610067006500
      4300750074002E004F0072006900670069006E0001005000610063006B006100
      6700650043007500740001000100010001000D000A006300640073005F005000
      72006F00640049006E00730074007200750063007400450078004C006F006700
      2E004F0072006900670069006E000100450078004C006F006700010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      75006300740043007200650061007400650064002E004F007200690067006900
      6E0001004300720065006100740065006400010053006B006100700061006400
      0100010053006B00610070006100640001000D000A006300640073005F005000
      72006F00640049006E007300740072007500630074004D006F00640069006600
      6900650064002E004F0072006900670069006E0001004D006F00640069006600
      6900650064000100C4006E00640072006100640001000100C4006E0064007200
      6100640001000D000A006300640073005F00500072006F00640049006E007300
      740072007500630074005000610063006B006100670065005400610067004C00
      610079006F00750074002E004F0072006900670069006E000100500061006300
      6B006100670065005400610067004C00610079006F0075007400010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      7500630074005000450054005F0054006F006C006500720061006E0063006500
      2E004F0072006900670069006E0001005000450054005F0054006F006C006500
      720061006E006300650001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740042006100720043006F00
      64006500490044002E004F0072006900670069006E0001004200610072004300
      6F00640065004900440001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740045007800740072006100
      490044002E004F0072006900670069006E000100450078007400720061004900
      440001000100010001000D000A006300640073005F00500072006F0064004900
      6E00730074007200750063007400430072006500610074006500640055007300
      650072002E004F0072006900670069006E000100430072006500610074006500
      64005500730065007200010053006B0061007000610064002000610076000100
      010053006B00610070006100640020006100760001000D000A00630064007300
      5F00500072006F00640049006E007300740072007500630074004D006F006400
      6900660069006500640055007300650072002E004F0072006900670069006E00
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F00500072006F00640049006E007300
      7400720075006300740044006100740065004300720065006100740065006400
      2E004F0072006900670069006E00010044006100740065004300720065006100
      74006500640001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000610063006B00610067006500
      54007900700065002E004F0072006900670069006E0001005000610063006B00
      610067006500540079007000650001000100010001000D000A00630064007300
      5F00500072006F00640049006E00730074007200750063007400570072006100
      700054007900700065002E004F0072006900670069006E000100570072006100
      7000540079007000650001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740050007200650073007300
      75007200650054007200650061007400650064002E004F007200690067006900
      6E00010050007200650073007300750072006500540072006500610074006500
      640001000100010001000D000A006300640073005F00500072006F0064004900
      6E00730074007200750063007400530065007100750065006E00630065004E00
      6F002E004F0072006900670069006E000100530065007100750065006E006300
      65004E006F0001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000690063007400750072006500
      2E004F0072006900670069006E00010050006900630074007500720065000100
      0100010001000D000A006300640073005F00500072006F00640049006E007300
      740072007500630074004E006F00740065002E004F0072006900670069006E00
      01004E006F007400650001004E006F007400650072006100010001004E006F00
      740065007200610001000D000A006300640073005F00500072006F0064004900
      6E0073007400720075006300740053006800720069006E006B00570072006100
      70002E004F0072006900670069006E00010053006800720069006E006B005700
      72006100700001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005000690065006300650073005000
      650072004D0069006E006900420075006E0064006C0065002E004F0072006900
      670069006E0001005000690065006300650073005000650072004D0069006E00
      6900420075006E0064006C00650001000100010001000D000A00630064007300
      5F00500072006F00640049006E00730074007200750063007400500061006300
      6B006100670065005F00530069007A0065002E004F0072006900670069006E00
      01005000610063006B006100670065005F00530069007A006500010001000100
      01000D000A006300640073005F00500072006F00640049006E00730074007200
      750063007400420049004C0044002E004F0072006900670069006E0001004200
      49004C00440001000100010001000D000A006300640073005F00500072006F00
      640049006E0073007400720075006300740043006F0072006E00650072005000
      72006F00740065006300740069006F006E004E006F002E004F00720069006700
      69006E00010043006F0072006E0065007200500072006F007400650063007400
      69006F006E004E006F0001000100010001000D000A006300640073005F005000
      72006F00640049006E0073007400720075006300740045007800740065007200
      6E0061006C004E006F00740065002E004F0072006900670069006E0001004500
      78007400650072006E0061006C004E006F007400650001000100010001000D00
      0A006300640073005F00500072006F00640049006E0073007400720075006300
      740054007200750063006B0053007400690063006B0073004E006F002E004F00
      72006900670069006E00010054007200750063006B0053007400690063006B00
      73004E006F0001000100010001000D000A006300640073005F00500072006F00
      640049006E007300740072007500630074005300740072006100700054007900
      700065004E006F002E004F0072006900670069006E0001005300740072006100
      700054007900700065004E006F0001000100010001000D000A00630064007300
      5F0053004F004C00610079006F00750074002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F0053004F004C00610079006F00750074004C006100
      79006F00750074004E006F002E004F0072006900670069006E0001004C006100
      79006F00750074004E006F0001000100010001000D000A006300640073005F00
      53004F004C00610079006F007500740041006E00740061006C004B006F007000
      69006F0072002E004F0072006900670069006E00010041006E00740061006C00
      4B006F00700069006F00720001000100010001000D000A006300640073005F00
      53004F004C00610079006F007500740053006F007200740069006E0067004F00
      72006400650072004E006F002E004F0072006900670069006E00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A006300640073005F0053004F004C00610079006F007500740053006F00
      7200740069006E0067004F00720064006500720052006F0077004E006F002E00
      4F0072006900670069006E00010053006F007200740069006E0067004F007200
      64006500720052006F0077004E006F0001000100010001000D000A0063006400
      73005F00500072006F0064007500630074004C0065006E006700740068002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F00500072006F006400
      7500630074004C0065006E006700740068004C006E0067006400670072007500
      700070002E004F0072006900670069006E0001005B004C00E4006E0067006400
      670072007500700070005D0001000100010001000D000A006300640073005F00
      500072006F0064007500630074004C0065006E00670074006800500072006F00
      64007500630074004C0065006E006700740068004E006F002E004F0072006900
      670069006E000100500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A006300640073005F00500072006F00
      64007500630074004C0065006E0067007400680041004C004D004D002E004F00
      72006900670069006E00010041004C004D004D0001000100010001000D000A00
      6300640073005F00500072006F0064007500630074004C0065006E0067007400
      68004E004C004D004D002E004F0072006900670069006E0001004E004C004D00
      4D00010001004E004C004D004D00010001000D000A006300640073005F005000
      72006F0064007500630074004C0065006E006700740068004600650065007400
      2E004F0072006900670069006E00010046006500650074000100010001000100
      0D000A006300640073005F00500072006F0064007500630074004C0065006E00
      670074006800540075006D002E004F0072006900670069006E00010054007500
      6D000100010049006E0063006800010001000D000A00460044005F0067006500
      6E00560061006C00750065002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A004600
      44005F0047006500740043006F00730074002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00460044005F0047006500740043006F0073007400500072006F006400
      750063007400560061006C00750065002E004F0072006900670069006E000100
      500072006F006400750063007400560061006C00750065000100010001000100
      0D000A006300640073005F005000490050002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F005000490050005000490050004E006F002E004F00
      72006900670069006E0001005000490050004E006F0001000100010001000D00
      0A006300640073005F005000490050004F00520054002E004F00720069006700
      69006E0001004F005200540001004F0052005400010043004900540059000100
      4F005200540001000D000A006300640073005F005000490050004F0077006E00
      650072004E006F002E004F0072006900670069006E0001004F0077006E006500
      72004E006F0001000100010001000D000A006300640073005F004C0049005000
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A006300640073005F004C0049005000
      4C00490050004E006F002E004F0072006900670069006E0001004C0049005000
      4E006F0001000100010001000D000A006300640073005F004C00490050004C00
      4100470045005200470052005500500050002E004F0072006900670069006E00
      01004C0041004700450052004700520055005000500001000100530054004F00
      43004B002000470052004F0055005000010001000D000A006300640073005F00
      4C00490050005000490050004E006F002E004F0072006900670069006E000100
      5000490050004E006F0001000100010001000D000A006300640073005F005200
      610077005000490050002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0063006400
      73005F005200610077005000490050005000490050004E006F002E004F007200
      6900670069006E0001005000490050004E006F0001000100010001000D000A00
      6300640073005F005200610077005000490050004F00520054002E004F007200
      6900670069006E0001004F005200540001004F00520054000100430049005400
      590001004F005200540001000D000A006300640073005F005200610077005000
      490050004F0077006E00650072004E006F002E004F0072006900670069006E00
      01004F0077006E00650072004E006F0001000100010001000D000A0063006400
      73005F005200610077004C00490050002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A006300640073005F005200610077004C00490050004C00490050004E006F00
      2E004F0072006900670069006E0001004C00490050004E006F00010001000100
      01000D000A006300640073005F005200610077004C00490050004C0041004700
      45005200470052005500500050002E004F0072006900670069006E0001004C00
      41004700450052004700520055005000500001000100530054004F0043004B00
      2000470052004F0055005000010001000D000A006300640073005F0052006100
      77004C00490050005000490050004E006F002E004F0072006900670069006E00
      01005000490050004E006F0001000100010001000D000A006300640073005F00
      46006500650064004200610063006B002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A006300640073005F0046006500650064004200610063006B0053006F007200
      740069006E0067004F0072006400650072004E006F002E004F00720069006700
      69006E00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F0046006500650064004200
      610063006B0046006500650064004200610063006B004E006F002E004F007200
      6900670069006E00010046006500650064004200610063006B004E006F000100
      0100010001000D000A006300640073005F004600650065006400420061006300
      6B004E006F0074006500720069006E0067002E004F0072006900670069006E00
      01004E006F0074006500720069006E00670001004E006F007400650072006100
      01004E006F007400650001004E006F00740065007200610001000D000A006300
      640073005F0046006500650064004200610063006B0044006100740065004300
      7200650061007400650064002E004F0072006900670069006E00010044006100
      74006500430072006500610074006500640001000100010001000D000A006300
      640073005F0046006500650064004200610063006B0044006100740065004D00
      6F006400690066006900650064002E004F0072006900670069006E0001004400
      6100740065004D006F0064006900660069006500640001000100010001000D00
      0A006300640073005F0046006500650064004200610063006B00430072006500
      610074006500640055007300650072002E004F0072006900670069006E000100
      43007200650061007400650064005500730065007200010053006B0061007000
      610064002000610076000100010053006B006100700061006400200061007600
      01000D000A006300640073005F0046006500650064004200610063006B004D00
      6F0064006900660069006500640055007300650072002E004F00720069006700
      69006E0001004D006F0064006900660069006500640055007300650072000100
      C4006E00640072006100640020006100760001000100C4006E00640072006100
      640020006100760001000D000A006300640073005F0050007200690063006500
      55006E00690074002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F005000720069006300650055006E0069007400540065006D0070006C006100
      7400650055006E00690074004E006F002E004F0072006900670069006E000100
      540065006D0070006C0061007400650055006E00690074004E006F0001000100
      010001000D000A006300640073005F005000720069006300650055006E006900
      7400540065006D0070006C0061007400650055006E00690074004E0061006D00
      65002E004F0072006900670069006E000100540065006D0070006C0061007400
      650055006E00690074004E0061006D00650001000100010001000D000A006300
      640073005F00500072006F00640049006E004C0061006700650072002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A006300640073005F00500072006F0064004900
      6E004C006100670065007200500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065002E004F0072006900670069006E000100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D00650001000100010001000D000A006300640073005F00500072006F006400
      49006E004C006100670065007200500072006F0064007500630074004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074004E00
      6F0001000100010001000D000A00730071005F00500072006F0064004F006E00
      6C0079002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C0079005000610063006B006100670065004E006F002E00
      4F0072006900670069006E0001005000610063006B006100670065004E006F00
      01000100010001000D000A00730071005F00500072006F0064004F006E006C00
      79004C00450056004B004F0044002E004F0072006900670069006E0001004C00
      450056004B004F0044000100010053005500500050004C004900450052002000
      43004F0044004500010001000D000A00730071005F00500072006F0064004F00
      6E006C0079005000630073005000650072004C0065006E006700740068002E00
      4F0072006900670069006E0001005000630073005000650072004C0065006E00
      67007400680001000100010001000D000A00730071005F00500072006F006400
      4F006E006C00790041004D0033002E004F0072006900670069006E0001004100
      4D00330001000100010001000D000A00730071005F00500072006F0064004F00
      6E006C00790053005400590043004B002E004F0072006900670069006E000100
      53005400590043004B000100010050004300530001005300C40043004B000100
      0D000A00730071005F00500072006F0064004F006E006C007900440061007400
      650043007200650061007400650064002E004F0072006900670069006E000100
      4400610074006500430072006500610074006500640001000100010001000D00
      0A00730071005F00500072006F0064004F006E006C0079004E004F004F004600
      4C0045004E0047005400480053002E004F0072006900670069006E0001004E00
      4F004F0046004C0045004E00470054004800530001000100010001000D000A00
      730071005F00500072006F0064004F006E006C007900700072006F0064007500
      630074006E006F002E004F0072006900670069006E000100700072006F006400
      7500630074006E006F0001000100010001000D000A00730071005F0050007200
      6F0064004F006E006C0079007000610063006B00610067006500740079007000
      65006E006F002E004F0072006900670069006E0001007000610063006B006100
      6700650074007900700065006E006F0001000100010001000D000A0063006400
      73005F004C00650067006F0050007200690073002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F004C00650067006F0050007200690073002E00
      440065007400610069006C004600690065006C00640073000100500072006F00
      640075006300740069006F006E0055006E00690074004E006F00010001000100
      01000D000A006300640073005F004C00650067006F0050007200690073005000
      72006F00640075006300740069006F006E0055006E00690074004E006F002E00
      4F0072006900670069006E000100500072006F00640075006300740069006F00
      6E0055006E00690074004E006F0001000100010001000D000A00630064007300
      5F004C00650067006F005000720069007300410054004D004D002E004F007200
      6900670069006E000100410054004D004D0001000100010001000D000A006300
      640073005F004C00650067006F005000720069007300410042004D004D002E00
      4F0072006900670069006E000100410042004D004D0001000100010001000D00
      0A006300640073005F004C00650067006F0050007200690073004E006F004F00
      6600530070006C00690074002E004F0072006900670069006E0001004E006F00
      4F006600530070006C006900740001000100010001000D000A00630064007300
      5F004C00650067006F0050007200690073004300720065006100740065006400
      55007300650072002E004F0072006900670069006E0001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F004C00650067006F0050007200690073004D006F00640069006600
      69006500640055007300650072002E004F0072006900670069006E0001004D00
      6F0064006900660069006500640055007300650072000100C4006E0064007200
      6100640020006100760001000100C4006E006400720061006400200061007600
      01000D000A006300640073005F004C00650067006F0050007200690073004400
      61007400650043007200650061007400650064002E004F007200690067006900
      6E00010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F004C00650067006F0050007200690073004400
      6100740065004D006F006400690066006900650064002E004F00720069006700
      69006E00010044006100740065004D006F006400690066006900650064000100
      0100010001000D000A006300640073005F004C00650067006F00500072006900
      7300500072006900630065002E004F0072006900670069006E00010050007200
      69006300650001000100010001000D000A006300640073005F004C0065006700
      6F0050007200690073005000720069006300650055006E00690074004E006F00
      2E004F0072006900670069006E0001005000720069006300650055006E006900
      74004E006F0001000100010001000D000A006300640073005F004C0065006700
      6F00500072006900730055007300650072004E0061006D0065002E004F007200
      6900670069006E00010055007300650072004E0061006D006500010001000100
      01000D000A006300640073005F004C00650067006F005600650072006B002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F004C00650067006F00
      5600650072006B0043006C00690065006E0074004E006F002E004F0072006900
      670069006E00010043006C00690065006E0074004E006F000100010001000100
      0D000A006300640073005F004C00650067006F005600650072006B0043006C00
      690065006E0074004E0061006D0065002E004F0072006900670069006E000100
      43006C00690065006E0074004E0061006D00650001000100010001000D000A00
      6300640073005F00500072006F0064004C0065006E006700740068002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A006300640073005F00500072006F0064004C00
      65006E00670074006800500072006F0064007500630074004C0065006E006700
      740068004E006F002E004F0072006900670069006E000100500072006F006400
      7500630074004C0065006E006700740068004E006F0001000100010001000D00
      0A006300640073005F00500072006F0064004C0065006E006700740068004100
      63007400750061006C004C0065006E006700740068004D004D002E004F007200
      6900670069006E000100410063007400750061006C004C0065006E0067007400
      68004D004D0001000100010001000D000A006300640073005F00500072006F00
      64004C0065006E006700740068004E006F006D0069006E0061006C004C006500
      6E006700740068004D004D002E004F0072006900670069006E0001004E006F00
      6D0069006E0061006C004C0065006E006700740068004D004D00010001000100
      01000D000A006300640073005F00500072006F0064004C0065006E0067007400
      68004E006F006D0069006E0061006C004C0065006E0067007400680046004500
      450054002E004F0072006900670069006E0001004E006F006D0069006E006100
      6C004C0065006E00670074006800460045004500540001000100010001000D00
      0A006300640073005F00500072006F0064004C0065006E006700740068004100
      63007400750061006C004C0065006E0067007400680049004E00430048002E00
      4F0072006900670069006E000100410063007400750061006C004C0065006E00
      67007400680049004E004300480001000100010001000D000A00630064007300
      5F00500072006F0064004C0065006E006700740068005000450054002E004F00
      72006900670069006E00010050004500540001000100010001000D000A006300
      640073005F00500072006F0064004C0065006E00670074006800460069006E00
      6700650072004A006F0069006E0074002E004F0072006900670069006E000100
      460069006E006700650072004A006F0069006E0074000100460069006E006700
      6500720073006B00610072007600610064000100460069006E00670065007200
      6A006F0069006E0074000100460069006E0067006500720073006B0061007200
      76006100640001000D000A006300640073005F00500072006F0064004C006500
      6E00670074006800430072006500610074006500640055007300650072002E00
      4F0072006900670069006E000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A006300640073005F0050007200
      6F0064004C0065006E006700740068004D006F00640069006600690065006400
      55007300650072002E004F0072006900670069006E0001004D006F0064006900
      660069006500640055007300650072000100C4006E0064007200610064002000
      6100760001000100C4006E00640072006100640020006100760001000D000A00
      6300640073005F00500072006F0064004C0065006E0067007400680044006100
      7400650043007200650061007400650064002E004F0072006900670069006E00
      0100440061007400650043007200650061007400650064000100010001000100
      0D000A006300640073005F00500072006F0064004C0065006E00670074006800
      530065007100750065006E00630065004E006F002E004F007200690067006900
      6E000100530065007100750065006E00630065004E006F000100010001000100
      0D000A006300640073005F00500072006F0064004C0065006E00670074006800
      500072006F0064007500630074004C0065006E00670074006800470072006F00
      750070004E006F002E004F0072006900670069006E000100500072006F006400
      7500630074004C0065006E00670074006800470072006F00750070004E006F00
      01000100010001000D000A006300640073005F00500072006F0064004C006500
      6E006700740068004100630074002E004F0072006900670069006E0001004100
      6300740001000100010001000D000A006300640073005F00500072006F006400
      75006300740069006F006E0055006E00690074002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F00500072006F00640075006300740069006F00
      6E0055006E0069007400500072006F00640075006300740069006F006E005500
      6E00690074004E006F002E004F0072006900670069006E000100500072006F00
      640075006300740069006F006E0055006E00690074004E006F00010001000100
      01000D000A006300640073005F00500072006F00640075006300740069006F00
      6E0055006E00690074004D005400500055004E004B0054002E004F0072006900
      670069006E0001005B004D00C4005400500055004E004B0054005D0001000100
      010001000D000A006300640073005F00500072006F0064007500630074006900
      6F006E0055006E0069007400500072006F00640075006300650072004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630065007200
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      75006300740069006F006E0055006E006900740054007900700065004F006600
      55006E00690074002E004F0072006900670069006E0001005400790070006500
      4F00660055006E006900740001000100010001000D000A006300640073005F00
      500072006F00640075006300740069006F006E0055006E006900740050007200
      6F00640055006E00690074004E006F002E004F0072006900670069006E000100
      500072006F00640055006E00690074004E006F0001000100010001000D000A00
      6300640073005F00500072006F00640075006300740069006F006E0055006E00
      6900740043006F00730074002E004F0072006900670069006E00010043006F00
      7300740001004B006F00730074006E0061006400010001004B006F0073007400
      6E006100640001000D000A006300640073005F00500072006F00640075006300
      740069006F006E0055006E00690074004C006F006E0050006500720054006900
      6D006D0065002E004F0072006900670069006E0001004C006F006E0050006500
      7200540069006D006D00650001000100010001000D000A006300640073005F00
      550072006C004C00610079006F00750074002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F00550072006C004C00610079006F00750074005600
      650072006B004E006F002E004F0072006900670069006E000100560065007200
      6B004E006F0001000100010001000D000A006300640073005F00550072006C00
      4C00610079006F00750074004C00610079006F00750074004E006F002E004F00
      72006900670069006E0001004C00610079006F00750074004E006F0001000100
      010001000D000A006300640073005F00550072006C004C00610079006F007500
      740041006E00740061006C004B006F00700069006F0072002E004F0072006900
      670069006E00010041006E00740061006C004B006F00700069006F0072000100
      0100010001000D000A006300640073005F0041004F004D0061006C006C002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F0041004F004D006100
      6C006C0053006F007200740069006E0067004F0072006400650072004E006F00
      2E004F0072006900670069006E00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A006300640073005F00
      41004F004D0061006C006C00540065006D0070006C006100740065004E006100
      6D0065002E004F0072006900670069006E000100540065006D0070006C006100
      740065004E0061006D00650001000100010001000D000A006300640073005F00
      53004F005600650072006B0050006100720061006D0073002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A006300640073005F0053004F005600650072006B005000
      6100720061006D0073005600650072006B004E006F002E004F00720069006700
      69006E0001005600650072006B004E006F0001000100010001000D000A006300
      640073005F0053004F005600650072006B0050006100720061006D0073005200
      610077004D00740072006C00500072006900630065005000650072004E004D00
      33002E004F0072006900670069006E0001005200610077004D00740072006C00
      500072006900630065005000650072004E004D00330001000100010001000D00
      0A006300640073005F0053004F005600650072006B0050006100720061006D00
      730053006100770064007500730074005000720069006300650046004D003300
      2E004F0072006900670069006E00010053006100770064007500730074005000
      720069006300650046004D00330001000100010001000D000A00630064007300
      5F0053004F005600650072006B0050006100720061006D007300410076006B00
      610070005000720069006300650046004D0033002E004F007200690067006900
      6E000100410076006B00610070005000720069006300650046004D0033000100
      0100010001000D000A006300640073005F0053004F005600650072006B005000
      6100720061006D0073005000490050004E006F002E004F007200690067006900
      6E0001005000490050004E006F0001000100010001000D000A00630064007300
      5F0053004F005600650072006B0050006100720061006D0073004C0049005000
      4E006F002E004F0072006900670069006E0001004C00490050004E006F000100
      0100010001000D000A006300640073005F0041004F002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F0041004F0041004F004E0072002E004F00
      72006900670069006E00010041004F004E00720001000100010001000D000A00
      6300640073005F0041004F0041004F005200610064004E0072002E004F007200
      6900670069006E00010041004F005200610064004E0072000100010001000100
      0D000A006300640073005F0041004F004C0069006E006A0065002E004F007200
      6900670069006E0001004C0069006E006A00650001000100010001000D000A00
      6300640073005F0041004F00500072006F0064007500630074002E004F007200
      6900670069006E000100500072006F0064007500630074000100010001000100
      0D000A006300640073005F0041004F004C0065006E0067007400680044006500
      73006300720069007000740069006F006E002E004F0072006900670069006E00
      01004C0065006E00670074006800440065007300630072006900700074006900
      6F006E0001000100010001000D000A006300640073005F0041004F0041004C00
      4D004D002E004F0072006900670069006E00010041004C004D004D0001000100
      010001000D000A006300640073005F0041004F005000500050002E004F007200
      6900670069006E00010050005000500001000100010001000D000A0063006400
      73005F0041004F00500061006B00650074002E004F0072006900670069006E00
      0100500061006B00650074000100010050006B0067000100500061006C006C00
      6100720001000D000A006300640073005F0041004F0042006100720043006F00
      640065002E004F0072006900670069006E00010042006100720043006F006400
      65000100530074007200650063006B006B006F00640001004200610072006300
      6F00640065000100530074007200650063006B006B006F00640001000D000A00
      6300640073005F0041004F00470072006100640065005300740061006D007000
      2E004F0072006900670069006E00010047007200610064006500530074006100
      6D00700001000100010001000D000A006300640073005F0041004F0057007200
      6100700054007900700065002E004F0072006900670069006E00010057007200
      61007000540079007000650001000100010001000D000A006300640073005F00
      41004F005000610063006B00610067006500570069006400740068002E004F00
      72006900670069006E0001005000610063006B00610067006500570069006400
      7400680001000100010001000D000A006300640073005F0041004F0050006100
      63006B006100670065004800650069006700680074002E004F00720069006700
      69006E0001005000610063006B00610067006500480065006900670068007400
      01000100010001000D000A006300640073005F0041004F004E006F004F006600
      5300740072006100700073002E004F0072006900670069006E0001004E006F00
      4F00660053007400720061007000730001000100010001000D000A0063006400
      73005F0041004F004D00610072006B002E004F0072006900670069006E000100
      4D00610072006B0001004D00E40072006B006E0069006E006700010001004D00
      E40072006B006E0069006E00670001000D000A006300640073005F0041004F00
      53006F00720074004F0072006400650072002E004F0072006900670069006E00
      010053006F00720074004F00720064006500720001000100010001000D000A00
      6300640073005F005200610077002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F0052006100770041004F004E0072002E004F00720069006700
      69006E00010041004F004E00720001000100010001000D000A00630064007300
      5F00520061007700500072006F0064007500630074002E004F00720069006700
      69006E000100500072006F00640075006300740001000100010001000D000A00
      6300640073005F005200610077004C0065006E00670074006800440065007300
      6300720069007000740069006F006E002E004F0072006900670069006E000100
      4C0065006E006700740068004400650073006300720069007000740069006F00
      6E0001000100010001000D000A006300640073005F0052006100770056006F00
      6C0079006D002E004F0072006900670069006E00010056006F006C0079006D00
      0100010056006F006C0075006D006500010001000D000A006300640073005F00
      53004F0043006E006700500072006F0064002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F0053004F0043006E006700500072006F0064005300
      6F007200740069006E0067004F0072006400650072004E006F002E004F007200
      6900670069006E00010053006F007200740069006E0067004F00720064006500
      72004E006F0001000100010001000D000A006300640073005F0053004F004300
      6E006700500072006F00640053007000650063006900650073004E006F002E00
      4F0072006900670069006E00010053007000650063006900650073004E006F00
      01000100010001000D000A006300640073005F0053004F0043006E0067005000
      72006F006400470072006100640065004E006F002E004F007200690067006900
      6E000100470072006100640065004E006F0001000100010001000D000A006300
      640073005F0053004F0043006E006700500072006F0064005300750072006600
      6100630069006E0067004E006F002E004F0072006900670069006E0001005300
      7500720066006100630069006E0067004E006F0001000100010001000D000A00
      6300640073005F0053004F0043006E006700500072006F00640049004D005000
      4E006F002E004F0072006900670069006E00010049004D0050004E006F000100
      0100010001000D000A006300640073005F0053004F0043006E00670050007200
      6F0064004E0065007700500072006F0064007500630074004E006F002E004F00
      72006900670069006E0001004E0065007700500072006F006400750063007400
      4E006F0001000100010001000D000A00730071005F0053004F004D0061007200
      6B0050006B00670073002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0073007100
      5F0053004F00440045004C004D00610072006B0050006B00670073002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A006300640073005F00460069006E0064005200
      610077002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A006300640073005F004600
      69006E006400520061007700500072006F006400750063007400440069007300
      70006C00610079004E0061006D0065002E004F0072006900670069006E000100
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D00650001000100010001000D000A006300640073005F00460069006E006400
      520061007700500072006F0064007500630074004E006F002E004F0072006900
      670069006E000100500072006F0064007500630074004E006F00010001000100
      01000D000A006300640073005F00460069006E00640052006100770050007200
      6F0064007500630074004C0065006E006700740068004E006F002E004F007200
      6900670069006E000100500072006F0064007500630074004C0065006E006700
      740068004E006F0001000100010001000D000A006300640073005F0046006900
      6E0064005200610077004C0065006E0067007400680044006500730063007200
      69007000740069006F006E002E004F0072006900670069006E0001004C006500
      6E006700740068004400650073006300720069007000740069006F006E000100
      0100010001000D000A006300640073005F00460069006E006400520061007700
      41004C004D004D002E004F0072006900670069006E00010041004C004D004D00
      01000100010001000D000A00730071005F0049004E0053005F00530070006C00
      6900740050006B0067002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0063006400
      73005F005600650072006B002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      640073005F005600650072006B0043006C00690065006E0074004E006F002E00
      4F0072006900670069006E00010043006C00690065006E0074004E006F000100
      0100010001000D000A006300640073005F005600650072006B0043006C006900
      65006E0074004E0061006D0065002E004F0072006900670069006E0001004300
      6C00690065006E0074004E0061006D00650001000100010001000D000A006300
      640073005F005600650072006B005300650061007200630068004E0061006D00
      65002E004F0072006900670069006E0001005300650061007200630068004E00
      61006D00650001000100010001000D000A00730071005F00440065006C004D00
      61006C006C002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A006300640073005F00
      700072006F00640075006300650072002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A006300640073005F00700072006F006400750063006500720043006C006900
      65006E0074004E006F002E004F0072006900670069006E00010043006C006900
      65006E0074004E006F0001000100010001000D000A006300640073005F007000
      72006F006400750063006500720043006C00690065006E0074004E0061006D00
      65002E004F0072006900670069006E00010043006C00690065006E0074004E00
      61006D00650001000100010001000D000A006300640073005F00700072006F00
      640075006300650072005300650061007200630068004E0061006D0065002E00
      4F0072006900670069006E0001005300650061007200630068004E0061006D00
      650001000100010001000D000A006300640073005F0052006500670050006F00
      69006E0074002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A006300640073005F00
      52006500670050006F0069006E007400500072006F0064007500630074006900
      6F006E0055006E00690074004E0061006D0065002E004F007200690067006900
      6E000100500072006F00640075006300740069006F006E0055006E0069007400
      4E0061006D00650001000100010001000D000A006300640073005F0052006500
      670050006F0069006E0074005200650067006900730074007200610074006900
      6F006E0050006F0069006E0074004E006F002E004F0072006900670069006E00
      010052006500670069007300740072006100740069006F006E0050006F006900
      6E0074004E006F0001000100010001000D000A006300640073005F004C006500
      6E00670074006800470072006F00750070002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F004C0065006E00670074006800470072006F007500
      7000470072006F00750070004E006F002E004F0072006900670069006E000100
      470072006F00750070004E006F0001000100010001000D000A00630064007300
      5F004C0065006E00670074006800470072006F0075007000470072006F007500
      70004E0061006D0065002E004F0072006900670069006E000100470072006F00
      750070004E0061006D00650001000100010001000D000A006300640073005F00
      53004F004C00650067006F0043006F00730074002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      7400500072006F00640075006300740069006F006E0055006E00690074004E00
      6F002E004F0072006900670069006E000100500072006F006400750063007400
      69006F006E0055006E00690074004E006F0001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F0073007400500072006F00
      640075006300740069006F006E0055006E00690074004E0061006D0065002E00
      4F0072006900670069006E000100500072006F00640075006300740069006F00
      6E0055006E00690074004E0061006D00650001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F007300740043006C006900
      65006E0074004E006F002E004F0072006900670069006E00010043006C006900
      65006E0074004E006F0001000100010001000D000A006300640073005F005300
      4F004C00650067006F0043006F0073007400530065007100750065006E006300
      65004E006F002E004F0072006900670069006E00010053006500710075006500
      6E00630065004E006F0001000100010001000D000A006300640073005F005300
      4F004C00650067006F0043006F00730074004300720065006100740065006400
      55007300650072002E004F0072006900670069006E0001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F0053004F004C00650067006F0043006F00730074004D006F006400
      6900660069006500640055007300650072002E004F0072006900670069006E00
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F0053004F004C00650067006F004300
      6F0073007400440061007400650043007200650061007400650064002E004F00
      72006900670069006E0001004400610074006500430072006500610074006500
      640001000100010001000D000A006300640073005F0053004F004C0065006700
      6F0043006F00730074004C006F0067006900630061006C0049006E0076006500
      6E0074006F007200790050006F0069006E0074004E006F002E004F0072006900
      670069006E0001004C006F0067006900630061006C0049006E00760065006E00
      74006F007200790050006F0069006E0074004E006F0001000100010001000D00
      0A006300640073005F0053004F004C00650067006F0043006F00730074005200
      6500670069007300740072006100740069006F006E0050006F0069006E007400
      4E006F002E004F0072006900670069006E000100520065006700690073007400
      72006100740069006F006E0050006F0069006E0074004E006F00010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      74004F006E0053007400690063006B0073002E004F0072006900670069006E00
      01004F006E0053007400690063006B00730001005000E5002000730074007200
      F600010001005000E5002000730074007200F60001000D000A00630064007300
      5F0053004F004C00650067006F0043006F007300740053007500720066006100
      630069006E0067004E006F002E004F0072006900670069006E00010053007500
      720066006100630069006E0067004E006F0001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F0073007400440049004D00
      5F004400490056002E004F0072006900670069006E000100440049004D005F00
      44004900560001000100010001000D000A006300640073005F0053004F004C00
      650067006F0043006F00730074005400650072006D0069006E0061006C004E00
      6F002E004F0072006900670069006E0001005400650072006D0069006E006100
      6C004E006F0001000100010001000D000A006300640073005F0053004F004C00
      650067006F0043006F007300740050006800790073006900630061006C004900
      6E00760065006E0074006F007200790050006F0069006E0074004E006F002E00
      4F0072006900670069006E00010050006800790073006900630061006C004900
      6E00760065006E0074006F007200790050006F0069006E0074004E006F000100
      0100010001000D000A006300640073005F0053004F004C00650067006F004300
      6F00730074004C0049005000470072006F00750070004E006F002E004F007200
      6900670069006E0001004C0049005000470072006F00750070004E006F000100
      0100010001000D000A006300640073005F0053004F004C00650067006F004300
      6F0073007400500072006F00640075006300740069006F006E0055006E006900
      740043006F00640065002E004F0072006900670069006E000100500072006F00
      640075006300740069006F006E0055006E006900740043006F00640065000100
      0100010001000D000A006300640073005F0053004F004C00650067006F004300
      6F007300740050006B0067005000720065006600690078002E004F0072006900
      670069006E00010050006B006700500072006500660069007800010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      7400530074006F00700070004F007200730061006B00460069006C002E004F00
      72006900670069006E000100530074006F00700070004F007200730061006B00
      460069006C0001000100010001000D000A006300640073005F0053004F004C00
      650067006F0043006F0073007400530074006F00700070005400690064004600
      69006C002E004F0072006900670069006E000100530074006F00700070005400
      69006400460069006C0001000100010001000D000A006300640073005F005300
      4F004C00650067006F0043006F007300740043006F00730074002E004F007200
      6900670069006E00010043006F007300740001004B006F00730074006E006100
      6400010001004B006F00730074006E006100640001000D000A00630064007300
      5F0053004F004C00650067006F0043006F007300740043006100700069007400
      61006C0043006F00730074002E004F0072006900670069006E00010043006100
      70006900740061006C0043006F007300740001000100010001000D000A006300
      640073005F0053004F004C00650067006F0043006F00730074004F0076006500
      7200680065006100640043006F00730074002E004F0072006900670069006E00
      01004F00760065007200680065006100640043006F0073007400010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      7400530061006C0061007200790043006F00730074002E004F00720069006700
      69006E000100530061006C0061007200790043006F0073007400010001000100
      01000D000A006300640073005F0053004F004C00650067006F0043006F007300
      74004C00650067006F0043006F007300740050006500720041004D0033002E00
      4F0072006900670069006E0001004C00650067006F0043006F00730074005000
      6500720041004D00330001000100010001000D000A006300640073005F005000
      72006F00640075006300740073002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F00500072006F0064007500630074007300500072006F006400
      7500630074004E006F002E004F0072006900670069006E000100500072006F00
      64007500630074004E006F0001000100010001000D000A006300640073005F00
      500072006F0064007500630074007300500072006F0064007500630074004700
      72006F00750070004E006F002E004F0072006900670069006E00010050007200
      6F006400750063007400470072006F00750070004E006F000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730047007200
      6100640065004E0061006D0065002E004F0072006900670069006E0001004700
      72006100640065004E0061006D00650001000100010001000D000A0063006400
      73005F00500072006F0064007500630074007300530070006500630069006500
      73004E0061006D0065002E004F0072006900670069006E000100530070006500
      63006900650073004E0061006D00650001000100010001000D000A0063006400
      73005F00500072006F0064007500630074007300530075007200660061006300
      69006E0067004E0061006D0065002E004F0072006900670069006E0001005300
      7500720066006100630069006E0067004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730050007200
      6F006400750063007400430061007400650067006F00720079004E0061006D00
      65002E004F0072006900670069006E000100500072006F006400750063007400
      430061007400650067006F00720079004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F006400750063007400730041006300
      7400750061006C0054006800690063006B006E006500730073004D004D002E00
      4F0072006900670069006E000100410063007400750061006C00540068006900
      63006B006E006500730073004D004D0001000100010001000D000A0063006400
      73005F00500072006F0064007500630074007300410063007400750061006C00
      570069006400740068004D004D002E004F0072006900670069006E0001004100
      63007400750061006C00570069006400740068004D004D000100010001000100
      0D000A006300640073005F00500072006F00640075006300740073004E006F00
      6D0069006E0061006C0054006800690063006B006E006500730073004D004D00
      2E004F0072006900670069006E0001004E006F006D0069006E0061006C005400
      6800690063006B006E006500730073004D004D0001000100010001000D000A00
      6300640073005F00500072006F00640075006300740073004E006F006D006900
      6E0061006C00570069006400740068004D004D002E004F007200690067006900
      6E0001004E006F006D0069006E0061006C00570069006400740068004D004D00
      01000100010001000D000A006300640073005F00500072006F00640075006300
      74007300500072006F00640075006300740044006900730070006C0061007900
      4E0061006D0065002E004F0072006900670069006E000100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001000100
      010001000D000A006300640073005F00500072006F0064007500630074007300
      470072006100640065004E006F002E004F0072006900670069006E0001004700
      72006100640065004E006F0001000100010001000D000A006300640073005F00
      500072006F006400750063007400730053007000650063006900650073004E00
      6F002E004F0072006900670069006E0001005300700065006300690065007300
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      7500630074007300500072006F00640075006300740043006100740065006700
      6F00720079004E006F002E004F0072006900670069006E000100500072006F00
      6400750063007400430061007400650067006F00720079004E006F0001000100
      010001000D000A006300640073005F00500072006F0064007500630074007300
      53007500720066006100630069006E0067004E006F002E004F00720069006700
      69006E00010053007500720066006100630069006E0067004E006F0001000100
      010001000D000A006300640073005F00500072006F0064007500630074007300
      4E006F006D0069006E0061006C0054006800690063006B006E00650073007300
      49004E00430048002E004F0072006900670069006E0001004E006F006D006900
      6E0061006C0054006800690063006B006E0065007300730049004E0043004800
      01000100010001000D000A006300640073005F00500072006F00640075006300
      740073004E006F006D0069006E0061006C005700690064007400680049004E00
      430048002E004F0072006900670069006E0001004E006F006D0069006E006100
      6C005700690064007400680049004E004300480001000100010001000D000A00
      730071005F00470065007400500072006F0064007500630074004E006F002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730071005F0047006500740050007200
      6F0064007500630074004E006F00500072006F0064007500630074004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074004E00
      6F0001000100010001000D000A00730071005F00470065007400420069005000
      72006F006400750063007400500072006900630065002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730071005F0047006500740042006900500072006F006400
      750063007400500072006900630065005600650072006B004E006F002E004F00
      72006900670069006E0001005600650072006B004E006F000100010001000100
      0D000A00730071005F0047006500740042006900500072006F00640075006300
      7400500072006900630065005200610077004D00740072006C00500072006900
      630065005000650072004E004D0033002E004F0072006900670069006E000100
      5200610077004D00740072006C00500072006900630065005000650072004E00
      4D00330001000100010001000D000A00730071005F0047006500740042006900
      500072006F006400750063007400500072006900630065005300610077006400
      7500730074005000720069006300650046004D0033002E004F00720069006700
      69006E0001005300610077006400750073007400500072006900630065004600
      4D00330001000100010001000D000A00730071005F0047006500740042006900
      500072006F00640075006300740050007200690063006500410076006B006100
      70005000720069006300650046004D0033002E004F0072006900670069006E00
      0100410076006B00610070005000720069006300650046004D00330001000100
      010001000D000A00730071005F0047006500740042006900500072006F006400
      750063007400500072006900630065005000490050004E006F002E004F007200
      6900670069006E0001005000490050004E006F0001000100010001000D000A00
      730071005F0047006500740042006900500072006F0064007500630074005000
      72006900630065004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      4E006500770050006B006700530075006D002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F004E006500770050006B006700530075006D004100
      63007400750061006C0054006800690063006B006E006500730073004D004D00
      2E004F0072006900670069006E000100410063007400750061006C0054006800
      690063006B006E006500730073004D004D0001000100010001000D000A006300
      640073005F004E006500770050006B006700530075006D004100630074007500
      61006C00570069006400740068004D004D002E004F0072006900670069006E00
      0100410063007400750061006C00570069006400740068004D004D0001000100
      010001000D000A006300640073005F004E006500770050006B00670053007500
      6D00410063007400750061006C004C0065006E006700740068004D004D002E00
      4F0072006900670069006E000100410063007400750061006C004C0065006E00
      6700740068004D004D0001000100010001000D000A006300640073005F004E00
      6500770050006B006700530075006D0041004D0033002E004F00720069006700
      69006E00010041004D00330001000100010001000D000A006300640073005F00
      4E006500770050006B006700530075006D004E004D0033002E004F0072006900
      670069006E0001004E004D003300010001004E004D003300010001000D000A00
      6300640073005F004E006500770050006B006700530075006D00530054005900
      43004B002E004F0072006900670069006E00010053005400590043004B000100
      010050004300530001005300C40043004B0001000D000A006300640073005F00
      4E006500770050006B006700530075006D0041004D0031002E004F0072006900
      670069006E00010041004D00310001000100010001000D000A00730071005F00
      470065007400530074006F0070007000540069006D0065002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730071005F00470065007400530074006F0070007000
      540069006D00650041006E00740061006C00530074006F00700070002E004F00
      72006900670069006E00010041006E00740061006C00530074006F0070007000
      01000100010001000D000A00730071005F00470065007400530074006F007000
      7000540069006D00650054006F00740061006C00530074006F00700070005400
      690064002E004F0072006900670069006E00010054006F00740061006C005300
      74006F007000700054006900640001000100010001000D000A00730071005F00
      47006500740053004F004E006F00420079004C004F002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730071005F0047006500740053004F004E006F0042007900
      4C004F0053006F007200740069006E0067004F0072006400650072004E006F00
      2E004F0072006900670069006E00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A006300640073004200
      6F006F006B0069006E0067002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      6400730042006F006F006B0069006E0067005300740061007200740076006500
      63006B0061002E004F0072006900670069006E00010053007400610072007400
      7600650063006B00610001000100010001000D000A0063006400730042006F00
      6F006B0069006E00670053006C00750074007600650063006B0061002E004F00
      72006900670069006E00010053006C00750074007600650063006B0061000100
      0100010001000D000A0063006400730042006F006F006B0069006E0067005300
      68006900700054006F002E004F0072006900670069006E000100530068006900
      700054006F0001000100010001000D000A0063006400730042006F006F006B00
      69006E006700440065007300740069006E006100740069006F006E002E004F00
      72006900670069006E000100440065007300740069006E006100740069006F00
      6E0001000100010001000D000A0063006400730042006F006F006B0069006E00
      67004C004F0054006500780074002E004F0072006900670069006E0001004C00
      4F00540065007800740001000100010001000D000A0063006400730042006F00
      6F006B0069006E00670049006E007400650072006E006E006F00740065007200
      69006E0067002E004F0072006900670069006E00010049006E00740065007200
      6E006E006F0074006500720069006E0067000100010049006E00740065007200
      6E0061006C0020006E006F0074006500010001000D000A006300640073004200
      6F006F006B0069006E0067005200650066006500720065006E0073002E004F00
      72006900670069006E0001005200650066006500720065006E00730001000100
      5200650066006500720065006E0063006500010001000D000A00630064007300
      42006F006F006B0069006E0067004F0062006A00650063007400540079007000
      65002E004F0072006900670069006E0001004F0062006A006500630074005400
      79007000650001000100010001000D000A0063006400730042006F006F006B00
      69006E00670043006100720072006900650072004E0061006D0065002E004F00
      72006900670069006E00010043006100720072006900650072004E0061006D00
      65000100420065006600720061006B0074006100720065000100430061007200
      72006900650072000100420065006600720061006B0074006100720065000100
      0D000A0063006400730042006F006F006B0069006E0067004500540044002E00
      4F0072006900670069006E000100450054004400010001004500540044000100
      01000D000A0063006400730042006F006F006B0069006E00670042006F006F00
      6B0069006E0067004E006F002E004F0072006900670069006E00010042006F00
      6F006B0069006E0067004E006F0001000100010001000D000A00630064007300
      42006F006F006B0069006E006700530068006900700070006500720073005300
      68006900700044006100740065002E004F0072006900670069006E0001005300
      6800690070007000650072007300530068006900700044006100740065000100
      0100010001000D000A0063006400730042006F006F006B0069006E0067005300
      68006900700070006500720073005300680069007000540069006D0065002E00
      4F0072006900670069006E000100530068006900700070006500720073005300
      680069007000540069006D00650001000100010001000D000A00630064007300
      42006F006F006B0069006E0067005300680069007000700069006E0067004300
      6F006D00700061006E00790042006F006F006B0069006E006700490044002E00
      4F0072006900670069006E0001005300680069007000700069006E0067004300
      6F006D00700061006E00790042006F006F006B0069006E006700490044000100
      0100010001000D000A0063006400730042006F006F006B0069006E0067005300
      7500700070006C006900650072005200650066006500720065006E0063006500
      2E004F0072006900670069006E00010053007500700070006C00690065007200
      5200650066006500720065006E006300650001000100010001000D000A006300
      6400730042006F006F006B0069006E0067005000720065006C0069006D006900
      6E00610072007900520065007100750065007300740065006400500065007200
      69006F0064002E004F0072006900670069006E0001005000720065006C006900
      6D0069006E006100720079005200650071007500650073007400650064005000
      6500720069006F00640001000100010001000D000A0063006400730042006F00
      6F006B0069006E00670043006C00690065006E0074004E0061006D0065002E00
      4F0072006900670069006E00010043006C00690065006E0074004E0061006D00
      650001000100010001000D000A0063006400730042006F006F006B0069006E00
      67007300680069007000700069006E00670070006C0061006E006E006F002E00
      4F0072006900670069006E0001007300680069007000700069006E0067007000
      6C0061006E006E006F0001000100010001000D000A0063006400730042006F00
      6F006B0069006E006700500061006E00690063005F004E006F00740065002E00
      4F0072006900670069006E000100500061006E00690063005F004E006F007400
      650001000100010001000D000A006300640073005F0050007200690063006500
      4C006900730074002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F00500072006900630065004C00690073007400540065006D0070006C006100
      740065004E006F002E004F0072006900670069006E000100540065006D007000
      6C006100740065004E006F0001000100010001000D000A006300640073005F00
      500072006900630065004C00690073007400500072006900630065004C006900
      730074004E0061006D0065002E004F0072006900670069006E00010050007200
      6900630065004C006900730074004E0061006D00650001000100010001000D00
      0A006300640073005F004C004F0069006E0041004F002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F004C004F0069006E0041004F004C004F00
      4E0052002E004F0072006900670069006E0001004C004F004E00520001000100
      010001000D000A006300640073005F00460069006E006400550072006C006100
      670067002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A006300640073005F004600
      69006E006400550072006C00610067006700500072006F006400750063007400
      44006900730070006C00610079004E0061006D0065002E004F00720069006700
      69006E000100500072006F00640075006300740044006900730070006C006100
      79004E0061006D00650001000100010001000D000A006300640073005F004600
      69006E006400550072006C00610067006700500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A006300640073005F00460069006E00
      6400550072006C00610067006700500072006F0064007500630074004C006500
      6E006700740068004E006F002E004F0072006900670069006E00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      01000D000A006300640073005F00460069006E006400550072006C0061006700
      67005000500050002E004F0072006900670069006E0001005000500050000100
      0100010001000D000A006300640073005F00460069006E006400550072006C00
      6100670067004C0065006E006700740068004400650073006300720069007000
      740069006F006E002E004F0072006900670069006E0001004C0065006E006700
      740068004400650073006300720069007000740069006F006E00010001000100
      01000D000A006300640073005F00460069006E006400550072006C0061006700
      670041004C004D004D002E004F0072006900670069006E00010041004C004D00
      4D0001000100010001000D000A00730071005F0049006E007300530068006900
      660074002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A006300640073005F005300
      4F00530068006900660074002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      640073005F0053004F005300680069006600740053006F007200740069006E00
      67004F0072006400650072004E006F002E004F0072006900670069006E000100
      53006F007200740069006E0067004F0072006400650072004E006F0001000100
      010001000D000A006300640073005F0053004F00530068006900660074005300
      68006900660074004E006F002E004F0072006900670069006E00010053006800
      6900660074004E006F0001000100010001000D000A006300640073005F005300
      4F00530068006900660074004E006F004F0066004F0070006500720061007400
      6F00720073002E004F0072006900670069006E0001004E006F004F0066004F00
      700065007200610074006F007200730001000100010001000D000A0063006400
      73005F0053004F005300680069006600740053006B006900660074002E004F00
      72006900670069006E00010053006B0069006600740001000100530068006900
      660074007300010001000D000A00730071005F0053007400640053004F005200
      650070006F00720074002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0073007100
      5F0053007400640053004F005200650070006F00720074005200650070006F00
      720074004E0061006D0065002E004F0072006900670069006E00010052006500
      70006F00720074004E0061006D00650001000100010001000D000A0073007100
      5F004D006F0076006500550073006500640050006B00670073002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730070005F004700650074005300740061007200
      7400540069006D0065002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0073007000
      5F0047006500740053007400610072007400540069006D0065002E0053007400
      6F00720065006400500072006F0063004E0061006D0065000100640062006F00
      2E007600690073005F00430061006C00630053004F0053007400610072007400
      540069006D0065005F004900490001000100010001000D000A00730070005F00
      47006500740053007400610072007400540069006D0065005200650067006900
      73007400720065007200610064002E004F0072006900670069006E0001005200
      6500670069007300740072006500720061006400010001005200650067006900
      730074006500720065006400010001000D000A00730070005F00470065007400
      53007400610072007400540069006D00650053006F007200740069006E006700
      4F0072006400650072004E006F002E004F0072006900670069006E0001005300
      6F007200740069006E0067004F0072006400650072004E006F00010001000100
      01000D000A00730070005F0047006500740045006E006400540069006D006500
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00730070005F004700650074004500
      6E006400540069006D0065002E00530074006F00720065006400500072006F00
      63004E0061006D0065000100640062006F002E007600690073005F0043006100
      6C00630053004F0045006E006400540069006D00650001000100010001000D00
      0A00730070005F0047006500740045006E006400540069006D00650052006500
      6700690073007400720065007200610064002E004F0072006900670069006E00
      0100520065006700690073007400720065007200610064000100010052006500
      67006900730074006500720065006400010001000D000A00730070005F004300
      6F007000790041004F0074006F00540065006D0070006C006100740065002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730070005F0043006F00700079004100
      4F0074006F00540065006D0070006C006100740065002E00530074006F007200
      65006400500072006F0063004E0061006D0065000100640062006F002E007300
      740070005F0043006F007000790041004F0074006F00540065006D0070006C00
      61007400650001000100010001000D000A00730070005F0043006F0070007900
      4C004F0054006F0041004F002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F0043006F00700079004C004F0054006F0041004F002E00530074006F00
      720065006400500072006F0063004E0061006D0065000100640062006F002E00
      7300740070005F0053006F007200740069006E0067004F007200640065007200
      52006F00770001000100010001000D000A00730070005F004E00650077004C00
      6F00610064002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730070005F004E00
      650077004C006F00610064002E00530074006F00720065006400500072006F00
      63004E0061006D0065000100640062006F002E005600690073005F006E006500
      77004C006F006100640001000100010001000D000A00460044005F0047006500
      6E00460069006E00530075006D002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      460044005F0053006F00720074004F007200640065007200460069006E005300
      75006D002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D00500072006F00
      640075006B0074002E004F0072006900670069006E000100500072006F006400
      75006B00740001000100500072006F006400750063007400010001000D000A00
      460044005F0053006F00720074004F007200640065007200460069006E005300
      75006D0053006F007200740069006E0067004F0072006400650072004E006F00
      2E004F0072006900670069006E00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200460069006E00530075006D0050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0046004400
      5F0053006F00720074004F007200640065007200460069006E00530075006D00
      53006F007200740069006E0067004F00720064006500720052006F0077004E00
      6F002E004F0072006900670069006E00010053006F007200740069006E006700
      4F00720064006500720052006F0077004E006F0001000100010001000D000A00
      460044005F0053006F00720074004F007200640065007200460069006E005300
      75006D005000690065006300650073002E004F0072006900670069006E000100
      50006900650063006500730001000100010001000D000A00460044005F005300
      6F00720074004F007200640065007200460069006E00530075006D0041004D00
      33002E004F0072006900670069006E00010041004D0033000100010001000100
      0D000A00460044005F0053006F00720074004F00720064006500720046006900
      6E00530075006D004E004D0033002E004F0072006900670069006E0001004E00
      4D003300010001004E004D003300010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D0041004D003100
      2E004F0072006900670069006E00010041004D00310001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200460069006E00
      530075006D00410054004D004D002E004F0072006900670069006E0001004100
      54004D004D0001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D00410042004D004D002E00
      4F0072006900670069006E000100410042004D004D0001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200460069006E00
      530075006D0041004C004D004D002E004F0072006900670069006E0001004100
      4C004D004D0001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D004E0054004D004D002E00
      4F0072006900670069006E0001004E0054004D004D0001000100010001000D00
      0A00460044005F0053006F00720074004F007200640065007200460069006E00
      530075006D004E0042004D004D002E004F0072006900670069006E0001004E00
      42004D004D0001000100010001000D000A00460044005F0053006F0072007400
      4F007200640065007200460069006E00530075006D004E004C004D004D002E00
      4F0072006900670069006E0001004E004C004D004D00010001004E004C004D00
      4D00010001000D000A00460044005F0053006F00720074004F00720064006500
      7200460069006E00530075006D00500072006900630065005000650072004E00
      4D0033002E004F0072006900670069006E000100500072006900630065005000
      650072004E004D00330001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D00500072006F00
      6400750063007400560061006C00750065002E004F0072006900670069006E00
      0100500072006F006400750063007400560061006C0075006500010001000100
      01000D000A00460044005F0053006F00720074004F0072006400650072004600
      69006E00530075006D00410076007200550072006C0061006700670050006300
      73002E004F0072006900670069006E000100410076007200550072006C006100
      6700670050006300730001000100010001000D000A00460044005F0053006F00
      720074004F007200640065007200460069006E00530075006D00550072006C00
      6100670067002E004F0072006900670069006E000100550072006C0061006700
      670001000100010001000D000A00460044005F0053006F00720074004F007200
      640065007200460069006E00530075006D005300750072006600610063006900
      6E0067004E006F002E004F0072006900670069006E0001005300750072006600
      6100630069006E0067004E006F0001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200460069006E00530075006D004C00
      61006D0065006C006C00650072002E004F0072006900670069006E0001004C00
      61006D0065006C006C006500720001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200460069006E00530075006D004800
      7900760065006C004C0050004D002E004F0072006900670069006E0001004800
      7900760065006C004C0050004D0001000100010001000D000A00460044005F00
      53006F00720074004F007200640065007200460069006E00530075006D004D00
      430043006C006100730073004E006F002E004F0072006900670069006E000100
      4D00430043006C006100730073004E006F0001000100010001000D000A004600
      44005F00470065006E00520061007700530075006D005F004900490049002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00460044005F004700650074004C005000
      4D004800790076006C00610074002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      460044005F004700650074004C0050004D004800790076006C00610074004800
      790076006C00610074004C0050004D002E004F0072006900670069006E000100
      4800790076006C00610074004C0050004D0001000100010001000D000A004600
      44005F00500072006F006400540069006D0065005300650067002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00460044005F00500072006F006400540069006D00
      650053006500670053006F007200740069006E0067004F007200640065007200
      4E006F002E004F0072006900670069006E00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0046004400
      5F00500072006F006400540069006D0065005300650067005300650067006D00
      65006E0074004E006F002E004F0072006900670069006E000100530065006700
      6D0065006E0074004E006F0001000100010001000D000A00460044005F005000
      72006F006400540069006D006500530065006700530074006100720074005300
      650067006D0065006E0074002E004F0072006900670069006E00010053007400
      6100720074005300650067006D0065006E00740001000100010001000D000A00
      460044005F00500072006F006400540069006D00650053006500670045006E00
      64005300650067006D0065006E0074002E004F0072006900670069006E000100
      45006E0064005300650067006D0065006E00740001000100010001000D000A00
      460044005F00500072006F006400540069006D00650053006500670050007200
      6500760053006F007200740069006E0067004F0072006400650072004E006F00
      2E004F0072006900670069006E000100500072006500760053006F0072007400
      69006E0067004F0072006400650072004E006F0001000100010001000D000A00
      460044005F007600690073005F0050006B00670052006500670049006E004F00
      7400680065007200520075006E0073004200650074007700650065006E004400
      61007400650073002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00460044005F00
      7600690073005F0050006B00670052006500670049006E004F00740068006500
      7200520075006E0073004200650074007700650065006E004400610074006500
      73002E00530074006F00720065006400500072006F0063004E0061006D006500
      0100640062006F002E007600690073005F0050006B0067005200650067004900
      6E004F007400680065007200520075006E007300420065007400770065006500
      6E004400610074006500730001000100010001000D000A00460044005F007600
      690073005F0050006B00670052006500670049006E004F007400680065007200
      520075006E0073004200650074007700650065006E0044006100740065007300
      53006F007200740069006E0067004F0072006400650072004E006F002E004F00
      72006900670069006E00010053006F007200740069006E0067004F0072006400
      650072004E006F0001000100010001000D000A00460044005F00760069007300
      5F0050006B00670052006500670049006E004F00740068006500720052007500
      6E0073004200650074007700650065006E004400610074006500730044006100
      7400650043007200650061007400650064002E004F0072006900670069006E00
      0100440061007400650043007200650061007400650064000100010001000100
      0D000A00460044005F00440065006C00500072006F006400540069006D006500
      5300650067002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00460044005F007600
      690073005F0043006800650063006B004900660041006E00790050006B006700
      52006500670049006E004F007400680065007200520075006E00730042006500
      74007700650065006E00440061007400650073002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00460044005F007600690073005F0043006800650063006B004900
      660041006E00790050006B00670052006500670049006E004F00740068006500
      7200520075006E0073004200650074007700650065006E004400610074006500
      73002E00530074006F00720065006400500072006F0063004E0061006D006500
      0100640062006F002E007600690073005F0043006800650063006B0049006600
      41006E00790050006B00670052006500670049006E004F007400680065007200
      520075006E0073004200650074007700650065006E0044006100740065007300
      01000100010001000D000A00460044005F007600690073005F00430068006500
      63006B004900660041006E00790050006B00670052006500670049006E004F00
      7400680065007200520075006E0073004200650074007700650065006E004400
      610074006500730053006F007200740069006E0067004F007200640065007200
      4E006F002E004F0072006900670069006E00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0046004400
      5F00530065007400540061007200670065007400500072006F00640075006300
      74002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00460044005F00470065006E00
      520061007700530075006D005F004900490062002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00460044005F00440065006C0065007400650053006F0072007400
      4F007200640065007200520061007700530075006D002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00460044005F00670065007400410064006A00500063007300
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00460044005F006700650074004100
      64006A00500063007300410064006A005000630073002E004F00720069006700
      69006E000100460044006A0050006300730001000100010001000D000A007300
      71005F00440065006C0053006F00720074004F0072006400650072002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A006300640073005F0056006F006C0052006500
      7300440074006C002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F0056006F006C00520065007300440074006C00520065007300650072007600
      6100740069006F006E004E006F002E004F0072006900670069006E0001005200
      650073006500720076006100740069006F006E004E006F000100010001000100
      0D000A006300640073005F0056006F006C00520065007300440074006C005000
      72006F0064007500630074004E006F002E004F0072006900670069006E000100
      500072006F0064007500630074004E006F0001000100010001000D000A006300
      640073005F0056006F006C00520065007300440074006C00500072006F006400
      7500630074004C0065006E006700740068004E006F002E004F00720069006700
      69006E000100500072006F0064007500630074004C0065006E00670074006800
      4E006F0001000100010001000D000A006300640073005F0056006F006C005200
      65007300440074006C004C0065006E0067007400680053007000650063002E00
      4F0072006900670069006E0001004C0065006E00670074006800530070006500
      630001000100010001000D000A006300640073005F0056006F006C0052006500
      7300440074006C004E004D0033002E004F0072006900670069006E0001004E00
      4D003300010001004E004D003300010001000D000A006300640073005F005600
      6F006C00520065007300440074006C0041004D0033002E004F00720069006700
      69006E00010041004D00330001000100010001000D000A006300640073005F00
      56006F006C00520065007300440074006C005900650061007200570065006500
      6B002E004F0072006900670069006E0001005900650061007200570065006500
      6B0001000100010001000D000A006300640073005F0056006F006C0052006500
      7300440074006C0043006C00690065006E0074004E006F002E004F0072006900
      670069006E00010043006C00690065006E0074004E006F000100010001000100
      0D000A006300640073005F0056006F006C00520065007300440074006C005300
      680069007000700069006E00670050006C0061006E004E006F002E004F007200
      6900670069006E0001005300680069007000700069006E00670050006C006100
      6E004E006F0001000100010001000D000A006300640073005F0056006F006C00
      520065007300440074006C004400610074006500430072006500610074006500
      64002E004F0072006900670069006E0001004400610074006500430072006500
      610074006500640001000100010001000D000A006300640073005F0056006F00
      6C00520065007300440074006C00430072006500610074006500640055007300
      650072002E004F0072006900670069006E000100430072006500610074006500
      64005500730065007200010053006B0061007000610064002000610076000100
      010053006B00610070006100640020006100760001000D000A00630064007300
      5F0056006F006C00520065007300440074006C0044006100740065004D006F00
      6400690066006900650064002E004F0072006900670069006E00010044006100
      740065004D006F0064006900660069006500640001000100010001000D000A00
      6300640073005F0056006F006C00520065007300440074006C004D006F006400
      6900660069006500640055007300650072002E004F0072006900670069006E00
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F0056006F006C005200650073004400
      74006C00530075006D005700650065006B0073002E004F007200690067006900
      6E000100530075006D005700650065006B00730001000100010001000D000A00
      6300640073005F0056006F006C00520065007300440074006C00570065006500
      6B0031002E004F0072006900670069006E0001005700650065006B0031000100
      0100010001000D000A006300640073005F0056006F006C005200650073004400
      74006C005700650065006B0032002E004F0072006900670069006E0001005700
      650065006B00320001000100010001000D000A006300640073005F0056006F00
      6C00520065007300440074006C005700650065006B0033002E004F0072006900
      670069006E0001005700650065006B00330001000100010001000D000A006300
      640073005F0056006F006C00520065007300440074006C005700650065006B00
      34002E004F0072006900670069006E0001005700650065006B00340001000100
      010001000D000A006300640073005F0056006F006C0052006500730044007400
      6C005700650065006B0035002E004F0072006900670069006E00010057006500
      65006B00350001000100010001000D000A006300640073005F0056006F006C00
      520065007300440074006C005700650065006B0036002E004F00720069006700
      69006E0001005700650065006B00360001000100010001000D000A0063006400
      73005F0056006F006C00520065007300440074006C005700650065006B003700
      2E004F0072006900670069006E0001005700650065006B003700010001000100
      01000D000A006300640073005F0056006F006C00520065007300440074006C00
      5700650065006B0038002E004F0072006900670069006E000100570065006500
      6B00380001000100010001000D000A006300640073005F0056006F006C005200
      65007300440074006C005700650065006B0039002E004F007200690067006900
      6E0001005700650065006B00390001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700490049002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700490049004D00430043006C006100730073004E006F002E004F007200
      6900670069006E0001004D00430043006C006100730073004E006F0001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      770049004900550072006C006100670067002E004F0072006900670069006E00
      0100550072006C0061006700670001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770049004900410054002E004F00
      72006900670069006E0001005B00410054005D0001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700490049004100
      42002E004F0072006900670069006E0001004100420001000100410057000100
      01000D000A006300640073005F00500072006F00640055007400660061006C00
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A006300640073005F0050007200
      6F00640055007400660061006C006C00500072006F0064007500630074004E00
      6F002E004F0072006900670069006E000100500072006F006400750063007400
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      55007400660061006C006C0041004D0033002E004F0072006900670069006E00
      010041004D00330001000100010001000D000A006300640073005F0050007200
      6F00640055007400660061006C006C0041004D0031002E004F00720069006700
      69006E00010041004D00310001000100010001000D000A006300640073005F00
      500072006F00640055007400660061006C006C004E004D0033002E004F007200
      6900670069006E0001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F00500072006F00640055007400660061006C006C005300
      5400590043004B002E004F0072006900670069006E0001005300540059004300
      4B000100010050004300530001005300C40043004B0001000D000A0063006400
      73005F00500072006F00640055007400660061006C006C005500740066006100
      6C006C002E004F0072006900670069006E00010055007400660061006C006C00
      010001004F007500740063006F006D006500010001000D000A00630064007300
      5F00500072006F00640055007400660061006C006C00500072006F0064007500
      6B00740056007200640065002E004F0072006900670069006E0001005B005000
      72006F00640075006B0074005600E4007200640065005D000100010001000100
      0D000A006300640073005F00500072006F00640055007400660061006C006C00
      6D006500640065006C0070007200690073002E004F0072006900670069006E00
      01006D006500640065006C00700072006900730001000100010001000D000A00
      6300640073005F00500072006F00640055007400660061006C006C0050007200
      6900730075007400660061006C006C002E004F0072006900670069006E000100
      500072006900730075007400660061006C006C0001000100010001000D000A00
      6300640073005F00500072006F00640055007400660061006C006C0053006F00
      7200740069006E0067004F0072006400650072004E006F002E004F0072006900
      670069006E00010053006F007200740069006E0067004F007200640065007200
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      55007400660061006C006C0052006500670050006F0069006E0074004E006100
      6D0065002E004F0072006900670069006E00010052006500670050006F006900
      6E0074004E0061006D00650001000100010001000D000A006300640073005F00
      500072006F00640055007400660061006C006C00410054002E004F0072006900
      670069006E0001005B00410054005D0001000100010001000D000A0063006400
      73005F00500072006F00640055007400660061006C006C00410042002E004F00
      72006900670069006E000100410042000100010041005700010001000D000A00
      6300640073005F00500072006F00640055007400660061006C006C004B005600
      2E004F0072006900670069006E0001004B00560001004B00760061006C006900
      74006500740001004700720061006400650001004B00760061006C0069007400
      6500740001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C002E00440065007400
      610069006C004600690065006C0064007300010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C0053006F007200
      740069006E0067004F0072006400650072004E006F002E004F00720069006700
      69006E00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F0053004F00520061007700
      55007400660061006C006C005200610077004D00740072006C004E006F002E00
      4F0072006900670069006E0001005200610077004D00740072006C004E006F00
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C00500072006F0064007500630074004E006F002E004F00
      72006900670069006E000100500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C004D00430043006C006100730073004E006F002E004F007200
      6900670069006E0001004D00430043006C006100730073004E006F0001000100
      010001000D000A006300640073005F0053004F00520061007700550074006600
      61006C006C0050006C0061006E006E006500640041004D0033002E004F007200
      6900670069006E00010050006C0061006E006E006500640041004D0033000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C0050006C0061006E006E00650064005000630073002E004F00
      72006900670069006E00010050006C0061006E006E0065006400500063007300
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C00500072006F006700720061006D004E006F002E004F00
      72006900670069006E000100500072006F006700720061006D004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C00440061007400650043007200650061007400650064002E00
      4F0072006900670069006E000100440061007400650043007200650061007400
      6500640001000100010001000D000A006300640073005F0053004F0052006100
      770055007400660061006C006C004D006F006400690066006900650064005500
      7300650072002E004F0072006900670069006E0001004D006F00640069006600
      69006500640055007300650072000100C4006E00640072006100640020006100
      760001000100C4006E00640072006100640020006100760001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C004B006100
      730073006100740069006F006E0053007400790063006B002E004F0072006900
      670069006E0001004B006100730073006100740069006F006E00530074007900
      63006B0001000100010001000D000A006300640073005F0053004F0052006100
      770055007400660061006C006C004B006100730073006100740069006F006E00
      41004D0033002E004F0072006900670069006E0001004B006100730073006100
      740069006F006E0041004D00330001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C004100760067004C00
      65006E006700740068002E004F0072006900670069006E000100410076006700
      4C0065006E0067007400680001004D006500640065006C006C00E4006E006700
      6400010001004D006500640065006C006C00E4006E006700640001000D000A00
      6300640073005F0053004F0052006100770055007400660061006C006C004C00
      65006E006700740068004400650073006300720069007000740069006F006E00
      2E004F0072006900670069006E0001004C0065006E0067007400680044006500
      73006300720069007000740069006F006E0001000100010001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C0050006C00
      61006E006E006500640041004D0031002E004F0072006900670069006E000100
      50006C0061006E006E006500640041004D00310001000100010001000D000A00
      6300640073005F0053004F0052006100770055007400660061006C006C004300
      72006500610074006500640055007300650072002E004F007200690067006900
      6E00010043007200650061007400650064005500730065007200010053006B00
      61007000610064002000610076000100010053006B0061007000610064002000
      6100760001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C0041006E00740061006C004200690074006100720055007400
      2E004F0072006900670069006E00010041006E00740061006C00420069007400
      610072005500740001000100010001000D000A006300640073005F0053004F00
      52006100770055007400660061006C006C00500065007200630065006E007400
      5000630073004F00660054006F00740061006C002E004F007200690067006900
      6E000100500065007200630065006E0074005000630073004F00660054006F00
      740061006C0001000100010001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C004B006100730073006100740069006F00
      6E0041004D0031002E004F0072006900670069006E0001004B00610073007300
      6100740069006F006E0041004D00310001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C00540072006900
      6D0041004D0031002E004F0072006900670069006E0001005400720069006D00
      41004D00310001000100010001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C005400720069006D0041004D0033002E00
      4F0072006900670069006E0001005400720069006D0041004D00330001000100
      010001000D000A006300640073005F0053004F00520061007700550074006600
      61006C006C004D00610069006E005200610077004D00740072006C002E004F00
      72006900670069006E0001004D00610069006E005200610077004D0074007200
      6C0001000100010001000D000A006300640073005F0053004F00520061007700
      55007400660061006C006C005200650061006C004C0050004D002E004F007200
      6900670069006E0001005200650061006C004C0050004D000100010001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C00500072006F0064007500630074004C0065006E006700740068004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074004C00
      65006E006700740068004E006F0001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C0041006E0074006100
      6C004B006100700053006E006900740074002E004F0072006900670069006E00
      010041006E00740061006C004B006100700053006E0069007400740001000100
      010001000D000A006300640073005F0053004F00520061007700550074006600
      61006C006C0041006E00740061006C004C0061006D0065006C006C0065007200
      550074002E004F0072006900670069006E00010041006E00740061006C004C00
      61006D0065006C006C00650072005500740001000100010001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C0055007200
      6C006100670067007300500072006F00630065006E0074002E004F0072006900
      670069006E000100550072006C006100670067007300500072006F0063006500
      6E00740001000100010001000D000A006300640073005F0053004F0052006100
      770055007400660061006C006C0061005000630073002E004F00720069006700
      69006E000100610050006300730001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C00610041004D003100
      2E004F0072006900670069006E000100610041004D0031000100010001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C0041004D0033002E004F0072006900670069006E00010041004D0033000100
      0100010001000D000A006300640073005F0053004F0052006100770055007400
      660061006C006C004E004D0033002E004F0072006900670069006E0001004E00
      4D003300010001004E004D003300010001000D000A006300640073005F005300
      4F0052006100770055007400660061006C006C005000430053002E004F007200
      6900670069006E00010050004300530001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C0041004D003100
      2E004F0072006900670069006E00010041004D00310001000100010001000D00
      0A006300640073005F0053004F0052006100770055007400660061006C006C00
      470072006100640065004E006F002E004F0072006900670069006E0001004700
      72006100640065004E006F0001000100010001000D000A006300640073005F00
      53004F0052006100770055007400660061006C006C0053007000650063006900
      650073004E006F002E004F0072006900670069006E0001005300700065006300
      6900650073004E006F0001000100010001000D000A006300640073005F005300
      4F0052006100770055007400660061006C006C00530075007200660061006300
      69006E0067004E006F002E004F0072006900670069006E000100530075007200
      66006100630069006E0067004E006F0001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C00500072006F00
      6400750063007400430061007400650067006F00720079004E006F002E004F00
      72006900670069006E000100500072006F006400750063007400430061007400
      650067006F00720079004E006F0001000100010001000D000A00630064007300
      5F0053004F0052006100770055007400660061006C006C00410054002E004F00
      72006900670069006E0001005B00410054005D0001000100010001000D000A00
      6300640073005F0053004F0052006100770055007400660061006C006C004100
      42002E004F0072006900670069006E0001004100420001000100410057000100
      01000D000A006300640073005F0053004F005200610077005500740066006100
      6C006C004E0054002E004F0072006900670069006E0001004E00540001000100
      4E005400010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C004E0042002E004F0072006900670069006E0001004E00
      4200010001004E005700010001000D000A006300640073005F0053004F005200
      6100770055007400660061006C006C00500072006F00640075006B0074002E00
      4F0072006900670069006E000100500072006F00640075006B00740001000100
      500072006F006400750063007400010001000D000A006300640073005F005300
      4F0052006100770055007400660061006C006C00500072006900630065005000
      650072004E004D0033002E004F0072006900670069006E000100500072006900
      630065005000650072004E004D00330001000100010001000D000A0063006400
      73005F0053004F0052006100770055007400660061006C006C004C0065006E00
      67007400680053007000650063002E004F0072006900670069006E0001004C00
      65006E00670074006800530070006500630001000100010001000D000A006300
      640073005F0053004F0052006100770055007400660061006C006C0041004C00
      4D004D002E004F0072006900670069006E00010041004C004D004D0001000100
      010001000D000A00460044005F00530074006F0070007000530075006D002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00460044005F00530074006F0070007000
      530075006D00530074006F007000700054006900640073004E0061006D006E00
      2E004F0072006900670069006E000100530074006F0070007000540069006400
      73004E0061006D006E0001000100010001000D000A00460044005F0053007400
      6F0070007000530075006D00530074006F00700070005400690064002E004F00
      72006900670069006E000100530074006F007000700054006900640001000100
      010001000D000A00460044005F00530074006F0070007000530075006D005300
      74006F007000700054006900640046006C006F00610074002E004F0072006900
      670069006E000100530074006F007000700054006900640046006C006F006100
      740001000100010001000D000A00460044005F00530074006F00700070005300
      75006D0041006E00740061006C002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      460044005F00530074006F0070007000530075006D005400690064002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      500072006F00640075006300650072004E006F002E004F007200690067006900
      6E000100500072006F00640075006300650072004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073004F0077006E00650072004E006F002E004F0072006900670069006E00
      01004F0077006E00650072004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050007200
      6F00640075006300740069006F006E0055006E00690074004E006F002E004F00
      72006900670069006E000100500072006F00640075006300740069006F006E00
      55006E00690074004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005000490050004E00
      6F002E004F0072006900670069006E0001005000490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300500072006F006700
      720061006D004E006F002E004F0072006900670069006E000100500072006F00
      6700720061006D004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005300740061007200
      7400540069006D0065002E004F0072006900670069006E000100530074006100
      72007400540069006D0065000100530074006100720074005400690064000100
      01005300740061007200740054006900640001000D000A006300640073005F00
      53006F00720074004F00720064006500720052006500730045006E0064005400
      69006D0065002E004F0072006900670069006E00010045006E00640054006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730050006C0061006E006E00650064005000
      72006F00640075006300740069006F006E00540069006D0065002E004F007200
      6900670069006E00010050006C0061006E006E0065006400500072006F006400
      75006300740069006F006E00540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5300740061007400750073002E004F0072006900670069006E00010053007400
      610074007500730001000100530074006100740075007300010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      43006F006D006D0065006E00740073002E004F0072006900670069006E000100
      43006F006D006D0065006E007400730001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730052006500
      61006C0053007400610072007400540069006D0065002E004F00720069006700
      69006E0001005200650061006C0053007400610072007400540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200650061006C0045006E006400540069006D00
      65002E004F0072006900670069006E0001005200650061006C0045006E006400
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005200650061006C0050007200
      6F00640075006300740069006F006E00540069006D0065002E004F0072006900
      670069006E0001005200650061006C00500072006F0064007500630074006900
      6F006E00540069006D00650001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300530074006F007000
      540069006D0065002E004F0072006900670069006E000100530074006F007000
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300440061007400650043007200
      650061007400650064002E004F0072006900670069006E000100440061007400
      6500430072006500610074006500640001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730043007200
      6500610074006500640055007300650072002E004F0072006900670069006E00
      010043007200650061007400650064005500730065007200010053006B006100
      7000610064002000610076000100010053006B00610070006100640020006100
      760001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073005700650065006B004E006F002E004F007200690067006900
      6E0001005700650065006B004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730059006500
      610072004E006F002E004F0072006900670069006E0001005900650061007200
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073005000720069006F004E006F002E004F00
      72006900670069006E0001005000720069006F004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730059006500610072005700650065006B002E004F007200690067006900
      6E00010059006500610072005700650065006B0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      500065007200630065006E0074005400720069006D006C006F00730073002E00
      4F0072006900670069006E000100500065007200630065006E00740054007200
      69006D006C006F007300730001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073004D00430043006C00
      6100730073004E006F002E004F0072006900670069006E0001004D0043004300
      6C006100730073004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073004D006F0076006500
      54006F004C00490050004E006F002E004F0072006900670069006E0001004D00
      6F007600650054006F004C00490050004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      430068006900700073004D00330053006F006C00690064002E004F0072006900
      670069006E000100430068006900700073004D00330053006F006C0069006400
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720052006500730043006800690070007300560061006C0075006500
      2E004F0072006900670069006E00010043006800690070007300560061006C00
      7500650001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073005200610077004D00740072006C004300
      6F00730074002E004F0072006900670069006E0001005200610077004D007400
      72006C0043006F007300740001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005200610077004D00
      740072006C0041004D0033002E004F0072006900670069006E00010052006100
      77004D00740072006C0041004D00330001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050007200
      6F00640075006300740069006F006E0043006F00730074002E004F0072006900
      670069006E000100500072006F00640075006300740069006F006E0043006F00
      7300740001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200520065007300500072006F0064007500630074006900
      6F006E0041004D0033002E004F0072006900670069006E000100500072006F00
      640075006300740069006F006E0041004D00330001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      43006F007300740050006500720041004D0033002E004F007200690067006900
      6E00010043006F007300740050006500720041004D0033000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730053006100770064007500730074004D00330053006F006C0069006400
      2E004F0072006900670069006E00010053006100770064007500730074004D00
      330053006F006C006900640001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005300610077006400
      750073007400560061006C00750065002E004F0072006900670069006E000100
      5300610077006400750073007400560061006C00750065000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300530068006900660074004E006F002E004F0072006900670069006E00
      0100530068006900660074004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730054007900
      700065004F006600520075006E004E006F002E004F0072006900670069006E00
      010054007900700065004F006600520075006E004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730052006500730070006F006E007300690062006C006500550073006500
      72002E004F0072006900670069006E00010052006500730070006F006E007300
      690062006C006500550073006500720001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730041006E00
      730076006100720069006700530061006C006A006100720065004E006F002E00
      4F0072006900670069006E00010041006E007300760061007200690067005300
      61006C006A006100720065004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072005200650073004E006F00
      4F00660057006F0072006B006500720073002E004F0072006900670069006E00
      01004E006F004F00660057006F0072006B006500720073000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730050006F00730074006E0069006E00670073007400690064002E004F00
      72006900670069006E00010050006F00730074006E0069006E00670073007400
      6900640001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004E006F004F00660057006F0072006B00
      65007200730050006F00730074006E0069006E0067002E004F00720069006700
      69006E0001004E006F004F00660057006F0072006B0065007200730050006F00
      730074006E0069006E00670001000100010001000D000A006300640073005F00
      53006F00720074004F00720064006500720052006500730041006E0074006100
      6C0042006900740061007200550074002E004F0072006900670069006E000100
      41006E00740061006C0042006900740061007200550074000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300410076006B006100700041004D0033002E004F007200690067006900
      6E000100410076006B006100700041004D00330001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      410076006B00610070004C0050004D002E004F0072006900670069006E000100
      410076006B00610070004C0050004D0001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072005200650073004B006100
      730073006100740069006F006E0041004D0033002E004F007200690067006900
      6E0001004B006100730073006100740069006F006E0041004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004B006100730073006100740069006F006E004C0050004D00
      2E004F0072006900670069006E0001004B006100730073006100740069006F00
      6E004C0050004D0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073004B0061007300730061007400
      69006F006E0053007400790063006B002E004F0072006900670069006E000100
      4B006100730073006100740069006F006E0053007400790063006B0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300410076006B0061007000560061006C00750065002E004F00
      72006900670069006E000100410076006B0061007000560061006C0075006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004B006100730073006100740069006F006E005600
      61006C00750065002E004F0072006900670069006E0001004B00610073007300
      6100740069006F006E00560061006C007500650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      530069007A00650046006F0072006D00610074002E004F007200690067006900
      6E000100530069007A00650046006F0072006D00610074000100010053006900
      7A006500200066006F0072006D0061007400010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072005200650073004C0065006E00
      67007400680046006F0072006D00610074002E004F0072006900670069006E00
      01004C0065006E0067007400680046006F0072006D0061007400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730054006F00740061006C00530061006C0061007200790043006F00
      730074002E004F0072006900670069006E00010054006F00740061006C005300
      61006C0061007200790043006F007300740001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004600
      650065006400530070006500650064002E004F0072006900670069006E000100
      46006500650064005300700065006500640001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005200
      610077004D00740072006C0041004D0031002E004F0072006900670069006E00
      01005200610077004D00740072006C0041004D00310001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73005200610077004D00740072006C005000630073002E004F00720069006700
      69006E0001005200610077004D00740072006C00500063007300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300500072006F00640075006300740069006F006E0041004D003100
      2E004F0072006900670069006E000100500072006F0064007500630074006900
      6F006E0041004D00310001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300500072006F0064007500
      6300740069006F006E005000630073002E004F0072006900670069006E000100
      500072006F00640075006300740069006F006E00500063007300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300500072006F00640075006300740069006F006E00560061006C00
      750065002E004F0072006900670069006E000100500072006F00640075006300
      740069006F006E00560061006C007500650001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004100
      6E00740061006C004B006100700053006E006900740074002E004F0072006900
      670069006E00010041006E00740061006C004B006100700053006E0069007400
      740001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730054006F00740061006C00560061006C007500
      65002E004F0072006900670069006E00010054006F00740061006C0056006100
      6C007500650001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730054006F00740061006C0041004D00
      33002E004F0072006900670069006E00010054006F00740061006C0041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730054006F00740061006C0041004D0031002E00
      4F0072006900670069006E00010054006F00740061006C0041004D0031000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730054006F00740061006C005000630073002E004F007200
      6900670069006E00010054006F00740061006C00500063007300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730054006F00740061006C0043006F00730074002E004F0072006900
      670069006E00010054006F00740061006C0043006F0073007400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730052006500730075006C00740041004F002E004F00720069006700
      69006E00010052006500730075006C00740041004F0001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730043006F007300740050006500720041004D0031002E004F00720069006700
      69006E00010043006F007300740050006500720041004D003100010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073004100760067005200610077004D00740072006C00500072006900
      6300650041004D0033002E004F0072006900670069006E000100410076006700
      5200610077004D00740072006C005000720069006300650041004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200520065007300410076006700500072006F0064007500630074005000
      720069006300650041004D0033002E004F0072006900670069006E0001004100
      76006700500072006F0064007500630074005000720069006300650041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300410076006700500072006F00640075006300
      74005000720069006300650041004D0031002E004F0072006900670069006E00
      0100410076006700500072006F00640075006300740050007200690063006500
      41004D00310001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004100760067005200610077004D00
      740072006C005000720069006300650041004D0031002E004F00720069006700
      69006E0001004100760067005200610077004D00740072006C00500072006900
      6300650041004D00310001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730045006600660069006300
      690065006E006300790046006100630074006F0072002E004F00720069006700
      69006E00010045006600660069006300690065006E0063007900460061006300
      74006F00720001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200520065007300530074006F007000540069006D00
      65004E006F00740049006E0063006C002E004F0072006900670069006E000100
      530074006F007000540069006D0065004E006F00740049006E0063006C000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004C00650067006F002E004F0072006900670069006E00
      01004C00650067006F000100010043006F006E00740072006100630074002000
      77006F0072006B00010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004C00650067006F0043006F0073007400
      50006500720041004D0033002E004F0072006900670069006E0001004C006500
      67006F0043006F007300740050006500720041004D0033000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073005200610077005000490050004E006F002E004F007200690067006900
      6E0001005200610077005000490050004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077004C00490050004E006F002E004F0072006900670069006E000100
      5200610077004C00490050004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730052006500
      61006C004C0070006D004D0069006E007500740065002E004F00720069006700
      69006E0001005200650061006C004C0070006D004D0069006E00750074006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005300650071004E006F002E004F00720069006700
      69006E0001005300650071004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730048007900
      760065006C0049006E0066006F002E004F0072006900670069006E0001004800
      7900760065006C0049006E0066006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050007200
      69006E0074005200610077004D00740072006C0050006100720074002E004F00
      72006900670069006E0001005000720069006E0074005200610077004D007400
      72006C00500061007200740001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300540065006D007000
      6C006100740065002E004F0072006900670069006E000100540065006D007000
      6C0061007400650001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300540065006D0070006C006100
      740065004E0061006D0065002E004F0072006900670069006E00010054006500
      6D0070006C006100740065004E0061006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      540065006D0070006C0061007400650055007300650072002E004F0072006900
      670069006E000100540065006D0070006C006100740065005500730065007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300410076006700500072006F006400750063007400
      500072006900630065004E004D0033002E004F0072006900670069006E000100
      410076006700500072006F006400750063007400500072006900630065004E00
      4D00330001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004100760067005200610077004D007400
      72006C00500072006900630065004E004D0033002E004F007200690067006900
      6E0001004100760067005200610077004D00740072006C005000720069006300
      65004E004D00330001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00640075006300
      740069006F006E004E004D0033002E004F0072006900670069006E0001005000
      72006F00640075006300740069006F006E004E004D0033000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073005200610077004D00740072006C004E004D0033002E004F0072006900
      670069006E0001005200610077004D00740072006C004E004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300530061006C0061007200790043006F007300740050006500
      720048006F00750072002E004F0072006900670069006E000100530061006C00
      61007200790043006F007300740050006500720048006F007500720001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730045006600660069006300690065006E006300790046006100
      630074006F00720057004F00530074006F0070007000740069006D0065002E00
      4F0072006900670069006E00010045006600660069006300690065006E006300
      790046006100630074006F00720057004F00530074006F007000700074006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730043006F00730074005000650072004E00
      4D0033002E004F0072006900670069006E00010043006F007300740050006500
      72004E004D00330001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00640054006900
      6D00650048006F00750072002E004F0072006900670069006E00010050007200
      6F006400540069006D00650048006F007500720001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      530074006F007000540069006D00650048006F00750072002E004F0072006900
      670069006E000100530074006F007000540069006D00650048006F0075007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300530074006F007000540069006D0065004E006F00
      740049006E0063006C0048006F00750072002E004F0072006900670069006E00
      0100530074006F007000540069006D0065004E006F00740049006E0063006C00
      48006F007500720001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730050006F007300740054006900
      6D00650048006F00750072002E004F0072006900670069006E00010050006F00
      73007400540069006D00650048006F007500720001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      4D0061006E00750061006C00500072006F006400540069006D0065002E004F00
      72006900670069006E0001004D0061006E00750061006C00500072006F006400
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006500430061006C00
      630045006600660069006300690065006E006300790046006100630074006F00
      72002E004F0072006900670069006E000100500072006500430061006C006300
      45006600660069006300690065006E006300790046006100630074006F007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720052006500730053006F007200740069006E0067004F0072006400
      650072004E006F002E004F0072006900670069006E000100A800A10033004000
      30006500D1001A0028002E003D000B0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730054006F00
      7400560061006C005000650072004E004D00330049006E002E004F0072006900
      670069006E00010054006F007400560061006C005000650072004E004D003300
      49006E0001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730054006F00740043006F00730074005000
      650072004E004D00330049006E002E004F0072006900670069006E0001005400
      6F00740043006F00730074005000650072004E004D00330049006E0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073005200610077004D00740072006C0043006F00730074005000
      650072004E004D00330049006E002E004F0072006900670069006E0001005200
      610077004D00740072006C0043006F00730074005000650072004E004D003300
      49006E0001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730052006500730075006C00740041004F00
      5000650072004E004D00330049006E002E004F0072006900670069006E000100
      52006500730075006C00740041004F005000650072004E004D00330049006E00
      01000100010001000D000A006300640073005F00500072006F00640055007400
      660061006C006C005200610077002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F00500072006F00640055007400660061006C006C0046006100
      72006400690067002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A0049006E007400
      65006700650072004600690065006C00640031002E004F007200690067006900
      6E000100500072006F0064007500630074004E006F0001000100010001000D00
      0A0046004D0054004200430044004600690065006C00640031002E004F007200
      6900670069006E00010041004D00330001000100010001000D000A0046004D00
      54004200430044004600690065006C00640032002E004F007200690067006900
      6E00010041004D00310001000100010001000D000A0046004D00540042004300
      44004600690065006C00640033002E004F0072006900670069006E0001004E00
      4D00330001000100010001000D000A0049006E00740065006700650072004600
      690065006C00640032002E004F0072006900670069006E000100530054005900
      43004B0001000100010001000D000A0046004D00540042004300440046006900
      65006C00640034002E004F0072006900670069006E0001005500740066006100
      6C006C0001000100010001000D000A0046004D00540042004300440046006900
      65006C00640035002E004F0072006900670069006E0001005B00500072006F00
      640075006B0074005600E4007200640065005D0001000100010001000D000A00
      46004D0054004200430044004600690065006C00640036002E004F0072006900
      670069006E0001006D006500640065006C007000720069007300010001000100
      01000D000A0046004D0054004200430044004600690065006C00640037002E00
      4F0072006900670069006E000100500072006900730075007400660061006C00
      6C0001000100010001000D000A0049006E007400650067006500720046006900
      65006C00640033002E004F0072006900670069006E00010053006F0072007400
      69006E0067004F0072006400650072004E006F0001000100010001000D000A00
      53007400720069006E0067004600690065006C00640031002E004F0072006900
      670069006E00010052006500670050006F0069006E0074004E0061006D006500
      01000100010001000D000A0046006C006F00610074004600690065006C006400
      31002E004F0072006900670069006E0001005B00410054005D00010001000100
      01000D000A0046006C006F00610074004600690065006C00640032002E004F00
      72006900670069006E0001004100420001000100010001000D000A0053007400
      720069006E0067004600690065006C00640032002E004F007200690067006900
      6E0001004B00560001000100010001000D000A00730070005F00730074007000
      5F0043006F007000790041004F0052006F0077002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730070005F007300740070005F0043006F007000790041004F00
      52006F0077002E00530074006F00720065006400500072006F0063004E006100
      6D0065000100640062006F002E007300740070005F0043006F00700079004100
      4F0052006F00770001000100010001000D000A006300640073005F0053006300
      68006500640075006C00650072002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F005300630068006500640075006C0065007200520065007300
      6F007500720063006500490044002E004F0072006900670069006E0001005200
      650073006F0075007200630065004900440001000100010001000D000A006300
      640073005F005300630068006500640075006C00650072005300740061007200
      74002E004F0072006900670069006E0001005300740061007200740001000100
      010001000D000A006300640073005F005300630068006500640075006C006500
      72004400750072006100740069006F006E002E004F0072006900670069006E00
      01004400750072006100740069006F006E0001000100010001000D000A006300
      640073005F005300630068006500640075006C00650072005900650061007200
      5700650065006B002E004F0072006900670069006E0001005900650061007200
      5700650065006B0001000100010001000D000A006300640073005F0053006300
      68006500640075006C0065007200490044002E004F0072006900670069006E00
      01004900440001000100010001000D000A006300640073005F00530063006800
      6500640075006C0065007200430061007000740069006F006E002E004F007200
      6900670069006E000100430061007000740069006F006E000100010001000100
      0D000A006300640073005F005300630068006500640075006C00650072005400
      610073006B005300740061007400750073004600690065006C0064002E004F00
      72006900670069006E0001005400610073006B00530074006100740075007300
      4600690065006C00640001000100010001000D000A006300640073005F005300
      630068006500640075006C00650072005500730065007200490044002E004F00
      72006900670069006E0001005500730065007200490044000100010001000100
      0D000A006300640073005F005300630068006500640075006C00650072005600
      650072006B004E006F002E004F0072006900670069006E000100560065007200
      6B004E006F0001000100010001000D000A006300640073005F00530063006800
      6500640075006C006500720042006F006F006B0069006E0067004E006F002E00
      4F0072006900670069006E00010042006F006F006B0069006E0067004E006F00
      01000100010001000D000A006300640073005F00530063006800650064007500
      6C0065007200440061007400650043007200650061007400650064002E004F00
      72006900670069006E0001004400610074006500430072006500610074006500
      640001000100010001000D000A006300640073005F0053006300680065006400
      75006C006500720055007300650072004E0061006D0065002E004F0072006900
      670069006E00010055007300650072004E0061006D0065000100010001000100
      0D000A006300640073005F005300630068006500640075006C00650072004600
      690078006500640044006100740065002E004F0072006900670069006E000100
      46006900780065006400440061007400650001000100010001000D000A006300
      640073005F005300630068006500640075006C00650072004F0077006E006500
      72004E006F002E004F0072006900670069006E0001004F0077006E0065007200
      4E006F0001000100010001000D000A006300640073005F005300630068006500
      640075006C0065007200460069006E006900730068002E004F00720069006700
      69006E000100460069006E0069007300680001000100010001000D000A006300
      640073005F005300630068006500640075006C00650072005700650065006B00
      4E006F002E004F0072006900670069006E0001005700650065006B004E006F00
      01000100010001000D000A006300640073005F00530063006800650064007500
      6C006500720059006500610072004E006F002E004F0072006900670069006E00
      010059006500610072004E006F0001000100010001000D000A00630064007300
      5F005300630068006500640075006C00650072004C006F006300610074006900
      6F006E004E006F002E004F0072006900670069006E0001004C006F0063006100
      740069006F006E004E006F0001000100010001000D000A006300640073005F00
      5300630068006500640075006C00650072005400610073006B0043006F006D00
      70006C006500740065004600690065006C0064002E004F007200690067006900
      6E0001005400610073006B0043006F006D0070006C0065007400650046006900
      65006C00640001000100010001000D000A00730070005F0043006F0070007900
      4C004F0054006F0041004F005F00490049002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00730070005F0043006F00700079004C004F0054006F0041004F005F00
      490049002E00530074006F00720065006400500072006F0063004E0061006D00
      65000100640062006F002E007300740070005F0053006F007200740069006E00
      67004F00720064006500720052006F0077004300580001000100010001000D00
      0A00730070005F005200610077002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      730070005F005200610077002E00530074006F00720065006400500072006F00
      63004E0061006D0065000100640062006F002E007300740070005F0053006F00
      7200740069006E0067004F0072006400650072005200610077004D0074007200
      6C004300580001000100010001000D000A006300640073005F0053004F005200
      610077004F004C0044002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0049006E00
      740065006700650072004600690065006C00640034002E004F00720069006700
      69006E00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A0049006E007400650067006500720046006900
      65006C00640035002E004F0072006900670069006E0001005200610077004D00
      740072006C004E006F0001000100010001000D000A0049006E00740065006700
      650072004600690065006C00640036002E004F0072006900670069006E000100
      500072006F0064007500630074004E006F0001000100010001000D000A004900
      6E00740065006700650072004600690065006C00640037002E004F0072006900
      670069006E0001004D00430043006C006100730073004E006F00010001000100
      01000D000A004200430044004600690065006C00640031002E004F0072006900
      670069006E00010050006C0061006E006E006500640041004D00330001000100
      010001000D000A0049006E00740065006700650072004600690065006C006400
      38002E004F0072006900670069006E00010050006C0061006E006E0065006400
      50006300730001000100010001000D000A0049006E0074006500670065007200
      4600690065006C00640039002E004F0072006900670069006E00010050007200
      6F006700720061006D004E006F0001000100010001000D000A00530051004C00
      540069006D0065005300740061006D0070004600690065006C00640031002E00
      4F0072006900670069006E000100440061007400650043007200650061007400
      6500640001000100010001000D000A0049006E00740065006700650072004600
      690065006C006400310030002E004F0072006900670069006E0001004D006F00
      640069006600690065006400550073006500720001000100010001000D000A00
      49006E00740065006700650072004600690065006C006400310031002E004F00
      72006900670069006E0001004B006100730073006100740069006F006E005300
      7400790063006B0001000100010001000D000A00420043004400460069006500
      6C00640032002E004F0072006900670069006E0001004B006100730073006100
      740069006F006E0041004D00330001000100010001000D000A00420043004400
      4600690065006C00640033002E004F0072006900670069006E00010041007600
      67004C0065006E0067007400680001000100010001000D000A00530074007200
      69006E0067004600690065006C00640033002E004F0072006900670069006E00
      01004C0065006E00670074006800440065007300630072006900700074006900
      6F006E0001000100010001000D000A004200430044004600690065006C006400
      34002E004F0072006900670069006E00010050006C0061006E006E0065006400
      41004D00310001000100010001000D000A0049006E0074006500670065007200
      4600690065006C006400310032002E004F0072006900670069006E0001004300
      720065006100740065006400550073006500720001000100010001000D000A00
      49006E00740065006700650072004600690065006C006400310033002E004F00
      72006900670069006E00010041006E00740061006C0042006900740061007200
      5500740001000100010001000D000A0046004D00540042004300440046006900
      65006C00640038002E004F0072006900670069006E0001005000650072006300
      65006E0074005000630073004F00660054006F00740061006C00010001000100
      01000D000A004200430044004600690065006C00640035002E004F0072006900
      670069006E0001004B006100730073006100740069006F006E0041004D003100
      01000100010001000D000A0046004D0054004200430044004600690065006C00
      640039002E004F0072006900670069006E0001005400720069006D0041004D00
      310001000100010001000D000A0046004D005400420043004400460069006500
      6C006400310030002E004F0072006900670069006E0001005400720069006D00
      41004D00330001000100010001000D000A0049006E0074006500670065007200
      4600690065006C006400310034002E004F0072006900670069006E0001004D00
      610069006E005200610077004D00740072006C0001000100010001000D000A00
      4200430044004600690065006C00640036002E004F0072006900670069006E00
      01005200650061006C004C0050004D0001000100010001000D000A0049006E00
      740065006700650072004600690065006C006400310035002E004F0072006900
      670069006E000100500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A0049006E0074006500670065007200
      4600690065006C006400310036002E004F0072006900670069006E0001004100
      6E00740061006C004B006100700053006E006900740074000100010001000100
      0D000A0049006E00740065006700650072004600690065006C00640031003700
      2E004F0072006900670069006E00010041006E00740061006C004C0061006D00
      65006C006C00650072005500740001000100010001000D000A00420043004400
      4600690065006C00640037002E004F0072006900670069006E00010055007200
      6C006100670067007300500072006F00630065006E0074000100010001000100
      0D000A0049006E00740065006700650072004600690065006C00640031003800
      2E004F0072006900670069006E00010061005000630073000100010001000100
      0D000A004200430044004600690065006C00640038002E004F00720069006700
      69006E000100610041004D00310001000100010001000D000A0046006C006F00
      610074004600690065006C00640033002E004F0072006900670069006E000100
      41004D00330001000100010001000D000A0046006C006F006100740046006900
      65006C00640034002E004F0072006900670069006E0001004E004D0033000100
      0100010001000D000A0049006E00740065006700650072004600690065006C00
      6400310039002E004F0072006900670069006E00010050004300530001000100
      010001000D000A0046006C006F00610074004600690065006C00640035002E00
      4F0072006900670069006E00010041004D00310001000100010001000D000A00
      49006E00740065006700650072004600690065006C006400320030002E004F00
      72006900670069006E000100470072006100640065004E006F00010001000100
      01000D000A0049006E00740065006700650072004600690065006C0064003200
      31002E004F0072006900670069006E0001005300700065006300690065007300
      4E006F0001000100010001000D000A0049006E00740065006700650072004600
      690065006C006400320032002E004F0072006900670069006E00010053007500
      720066006100630069006E0067004E006F0001000100010001000D000A004900
      6E00740065006700650072004600690065006C006400320033002E004F007200
      6900670069006E000100500072006F0064007500630074004300610074006500
      67006F00720079004E006F0001000100010001000D000A0046006C006F006100
      74004600690065006C00640036002E004F0072006900670069006E0001005B00
      410054005D0001000100010001000D000A0046006C006F006100740046006900
      65006C00640037002E004F0072006900670069006E0001004100420001000100
      010001000D000A0046006C006F00610074004600690065006C00640038002E00
      4F0072006900670069006E0001004E00540001000100010001000D000A004600
      6C006F00610074004600690065006C00640039002E004F007200690067006900
      6E0001004E00420001000100010001000D000A0053007400720069006E006700
      4600690065006C00640034002E004F0072006900670069006E00010050007200
      6F00640075006B00740001000100010001000D000A0042004300440046006900
      65006C00640039002E004F0072006900670069006E0001005000720069006300
      65005000650072004E004D00330001000100010001000D000A00530074007200
      69006E0067004600690065006C00640035002E004F0072006900670069006E00
      01004C0065006E00670074006800530070006500630001000100010001000D00
      0A0046006C006F00610074004600690065006C006400310030002E004F007200
      6900670069006E00010041004C004D004D0001000100010001000D000A004900
      6E00740065006700650072004600690065006C006400320034002E004F007200
      6900670069006E0001004500780063006C00750064006500460072006F006D00
      54006F00740061006C0001000100010001000D000A00730071005F0044006500
      6C00650074006500430058002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F004D00650072006700650053006F007200740069006E0067004F007200
      64006500720052006F0077002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F004D00650072006700650053006F007200740069006E0067004F007200
      64006500720052006F0077002E00530074006F00720065006400500072006F00
      63004E0061006D0065000100640062006F002E007600690073005F004D006500
      72006700650053006F007200740069006E0067004F0072006400650072005200
      6F00770001000100010001000D000A006300640073005F00440069006D002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F00440069006D004E00
      54002E004F0072006900670069006E0001004E00420001000100010001000D00
      0A006300640073005F00440069006D004E0042002E004F007200690067006900
      6E0001004E00420001000100010001000D000A006300640073005F0044006900
      6D00410054002E004F0072006900670069006E0001005B00410054005D000100
      0100010001000D000A006300640073005F00440069006D00410042002E004F00
      72006900670069006E0001004100420001000100010001000D000A0073007000
      5F004F0072006400650072004C006900730074002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730070005F004F0072006400650072004C006900730074002E00
      530074006F00720065006400500072006F0063004E0061006D00650001006400
      62006F002E007600690073005F004F0072006400650072004C00690073007400
      01000100010001000D000A00730070005F004F0072006400650072004C006900
      730074004F0072006400650072004E006F0054006500780074002E004F007200
      6900670069006E0001004F0072006400650072004E006F005400650078007400
      01000100010001000D000A00730070005F004F0072006400650072004C006900
      730074004F0072006400650072004E006F002E004F0072006900670069006E00
      01004F0072006400650072004E006F0001000100010001000D000A0073007000
      5F0053006F007200740069006E0067004F00720064006500720052006F007700
      430058005F006100640064002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F0053006F007200740069006E0067004F00720064006500720052006F00
      7700430058005F006100640064002E00530074006F0072006500640050007200
      6F0063004E0061006D0065000100640062006F002E007300740070005F005300
      6F007200740069006E0067004F00720064006500720052006F00770043005800
      5F0061006400640001000100010001000D000A006300640073005F0052006100
      77004D00740072006C0042006F006F006B00650064004C0069006E006B002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F005200610077004D00
      740072006C0042006F006F006B00650064004C0069006E006B0042006F006F00
      6B0069006E0067004E006F002E004F0072006900670069006E00010042006F00
      6F006B0069006E0067004E006F0001000100010001000D000A00630064007300
      5F005200610077004D00740072006C0042006F006F006B00650064004C006900
      6E006B007300730070004E006F002E004F0072006900670069006E0001007300
      730070004E006F0001000100010001000D000A006300640073005F0052006100
      77004D00740072006C0042006F006F006B00650064004C0069006E006B005300
      6F007200740069006E0067004F0072006400650072004E006F002E004F007200
      6900670069006E00010053006F007200740069006E0067004F00720064006500
      72004E006F0001000100010001000D000A006300640073005F00520061007700
      4D00740072006C0042006F006F006B00650064004C0069006E006B0053006F00
      7200740069006E0067004F00720064006500720052006F0077004E006F002E00
      4F0072006900670069006E00010053006F007200740069006E0067004F007200
      64006500720052006F0077004E006F0001000100010001000D000A0063006400
      73005F005200610077004D00740072006C0042006F006F006B00650064004C00
      69006E006B004F006C00640042006F006F006B0069006E0067004E006F002E00
      4F0072006900670069006E0001004F006C00640042006F006F006B0069006E00
      67004E006F0001000100010001000D000A006300640073005F00500072006F00
      700073002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A006300640073005F005000
      72006F00700073005600650072006B004E006F002E004F007200690067006900
      6E0001005600650072006B004E006F0001000100010001000D000A0063006400
      73005F00500072006F00700073004F0077006E00650072004E006F002E004F00
      72006900670069006E0001004F0077006E00650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005000490050004E00
      6F002E004F0072006900670069006E0001005000490050004E006F0001000100
      010001000D000A006300640073005F00500072006F00700073004C0049005000
      4E006F002E004F0072006900670069006E0001004C00490050004E006F000100
      0100010001000D000A006300640073005F00500072006F007000730049006E00
      7000750074004F007000740069006F006E002E004F0072006900670069006E00
      010049006E007000750074004F007000740069006F006E000100010001000100
      0D000A006300640073005F00500072006F007000730052006500670050006F00
      69006E0074004E006F002E004F0072006900670069006E000100520065006700
      50006F0069006E0074004E006F0001000100010001000D000A00630064007300
      5F00500072006F007000730052006500670044006100740065002E004F007200
      6900670069006E00010052006500670044006100740065000100010001000100
      0D000A006300640073005F00500072006F007000730043006F00700079005000
      630073002E004F0072006900670069006E00010043006F007000790050006300
      730001000100010001000D000A006300640073005F00500072006F0070007300
      520075006E004E006F002E004F0072006900670069006E000100520075006E00
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      7300500072006F00640075006300650072004E006F002E004F00720069006700
      69006E000100500072006F00640075006300650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073004100750074006F00
      43006F006C00570069006400740068002E004F0072006900670069006E000100
      4100750074006F0043006F006C00570069006400740068000100010001000100
      0D000A006300640073005F00500072006F007000730053007500700070006C00
      69006500720043006F00640065002E004F0072006900670069006E0001005300
      7500700070006C0069006500720043006F006400650001000100010001000D00
      0A006300640073005F00500072006F00700073004C0065006E00670074006800
      4F007000740069006F006E002E004F0072006900670069006E0001004C006500
      6E006700740068004F007000740069006F006E0001000100010001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068004700
      72006F00750070004E006F002E004F0072006900670069006E0001004C006500
      6E00670074006800470072006F00750070004E006F0001000100010001000D00
      0A006300640073005F00500072006F00700073004E0065007700490074006500
      6D0052006F0077002E004F0072006900670069006E0001004E00650077004900
      740065006D0052006F00770001000100010001000D000A006300640073005F00
      500072006F0070007300530061006C006500730052006500670069006F006E00
      4E006F002E004F0072006900670069006E000100530061006C00650073005200
      6500670069006F006E004E006F0001000100010001000D000A00630064007300
      5F00500072006F00700073004D00610072006B00650074005200650067006900
      6F006E004E006F002E004F0072006900670069006E0001004D00610072006B00
      6500740052006500670069006F006E004E006F0001000100010001000D000A00
      6300640073005F00500072006F00700073004F00720064006500720054007900
      700065004E006F002E004F0072006900670069006E0001004F00720064006500
      720054007900700065004E006F0001000100010001000D000A00630064007300
      5F00500072006F00700073005300740061007400750073002E004F0072006900
      670069006E00010053007400610074007500730001000100010001000D000A00
      6300640073005F00500072006F0070007300460069006C007400650072004F00
      720064006500720044006100740065002E004F0072006900670069006E000100
      460069006C007400650072004F00720064006500720044006100740065000100
      0100010001000D000A006300640073005F00500072006F007000730053007400
      61007200740050006500720069006F0064002E004F0072006900670069006E00
      01005300740061007200740050006500720069006F0064000100010001000100
      0D000A006300640073005F00500072006F007000730045006E00640050006500
      720069006F0064002E004F0072006900670069006E00010045006E0064005000
      6500720069006F00640001000100010001000D000A006300640073005F005000
      72006F007000730043006C00690065006E0074004E006F002E004F0072006900
      670069006E00010043006C00690065006E0074004E006F000100010001000100
      0D000A006300640073005F00500072006F0070007300530061006C0065007300
      50006500720073006F006E004E006F002E004F0072006900670069006E000100
      530061006C006500730050006500720073006F006E004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005600650072006B00
      53007500700070006C006900650072004E006F002E004F007200690067006900
      6E0001005600650072006B0053007500700070006C006900650072004E006F00
      01000100010001000D000A006300640073005F00500072006F00700073005600
      650072006B004B0075006E0064004E006F002E004F0072006900670069006E00
      01005600650072006B004B0075006E0064004E006F0001000100010001000D00
      0A006300640073005F00500072006F00700073004C004F004F0062006A006500
      6300740054007900700065002E004F0072006900670069006E0001004C004F00
      4F0062006A00650063007400540079007000650001000100010001000D000A00
      6300640073005F00500072006F007000730042006100720043006F0064006500
      4E006F002E004F0072006900670069006E00010042006100720043006F006400
      65004E006F0001000100010001000D000A006300640073005F00500072006F00
      70007300470072006100640065005300740061006D0070004E006F002E004F00
      72006900670069006E000100470072006100640065005300740061006D007000
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      730056006F006C0075006D00650055006E00690074004E006F002E004F007200
      6900670069006E00010056006F006C0075006D00650055006E00690074004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4C0065006E0067007400680046006F0072006D00610074004E006F002E004F00
      72006900670069006E0001004C0065006E0067007400680046006F0072006D00
      610074004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680056006F006C0055006E0069007400
      4E006F002E004F0072006900670069006E0001004C0065006E00670074006800
      56006F006C0055006E00690074004E006F0001000100010001000D000A006300
      640073005F00500072006F0070007300470072006F0075007000420079004200
      6F0078002E004F0072006900670069006E000100470072006F00750070004200
      790042006F00780001000100010001000D000A006300640073005F0050007200
      6F0070007300470072006F0075007000530075006D006D006100720079002E00
      4F0072006900670069006E000100470072006F0075007000530075006D006D00
      61007200790001000100010001000D000A006300640073005F00500072006F00
      700073004100670065006E0074004E006F002E004F0072006900670069006E00
      01004100670065006E0074004E006F0001000100010001000D000A0063006400
      73005F00500072006F00700073004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F002E004F0072006900670069006E000100
      4C006F006100640069006E0067004C006F0063006100740069006F006E004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      53006800690070007000650072004E006F002E004F0072006900670069006E00
      010053006800690070007000650072004E006F0001000100010001000D000A00
      6300640073005F00500072006F007000730042006F006F006B0069006E006700
      54007900700065004E006F002E004F0072006900670069006E00010042006F00
      6F006B0069006E00670054007900700065004E006F0001000100010001000D00
      0A006300640073005F00500072006F007000730043007500730074006F006D00
      650072004E006F002E004F0072006900670069006E0001004300750073007400
      6F006D00650072004E006F0001000100010001000D000A006300640073005F00
      500072006F0070007300530068006F007700500072006F006400750063007400
      2E004F0072006900670069006E000100530068006F007700500072006F006400
      75006300740001000100010001000D000A006300640073005F00500072006F00
      700073005500730065007200490044002E004F0072006900670069006E000100
      55007300650072004900440001000100010001000D000A006300640073005F00
      500072006F007000730046006F0072006D002E004F0072006900670069006E00
      010046006F0072006D0001000100010001000D000A006300640073005F005000
      72006F00700073004E0061006D0065002E004F0072006900670069006E000100
      4E0061006D00650001000100010001000D000A00730070005F0043006F007000
      79004C004F0054006F0041004F005F00490049005F004D0061006E0075006100
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00730070005F0043006F007000
      79004C004F0054006F0041004F005F00490049005F004D0061006E0075006100
      6C002E00530074006F00720065006400500072006F0063004E0061006D006500
      0100640062006F002E007300740070005F0053006F007200740069006E006700
      4F00720064006500720052006F007700430058005F004D000100010001000100
      0D000A006300640073005F0075006100700043006900740079002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A006300640073005F00750061007000430069007400
      790043006900740079004E006F002E004F0072006900670069006E0001004300
      6900740079004E006F0001000100010001000D000A006300640073005F007500
      61007000430069007400790043006900740079004E0061006D0065002E004F00
      72006900670069006E00010043006900740079004E0061006D00650001000100
      010001000D000A006300640073005F0075006100700043006900740079005500
      730065007200490044002E004F0072006900670069006E000100550073006500
      72004900440001000100010001000D000A00730071005F004700650074005000
      72006F00640075006300740044006500730063002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730071005F00470065007400500072006F006400750063007400
      4400650073006300500072006F0064007500630074004E006F002E004F007200
      6900670069006E000100500072006F0064007500630074004E006F0001000100
      010001000D000A00730071005F00470065007400500072006F00640075006300
      74004400650073006300500072006F006400750063007400470072006F007500
      70004E006F002E004F0072006900670069006E000100500072006F0064007500
      63007400470072006F00750070004E006F0001000100010001000D000A007300
      71005F00470065007400500072006F0064007500630074004400650073006300
      500072006F00640075006300740044006900730070006C00610079004E006100
      6D0065002E004F0072006900670069006E000100500072006F00640075006300
      740044006900730070006C00610079004E0061006D0065000100010001000100
      0D000A00730071005F00470065007400500072006F0064007500630074004400
      650073006300410063007400750061006C0054006800690063006B006E006500
      730073004D004D002E004F0072006900670069006E0001004100630074007500
      61006C0054006800690063006B006E006500730073004D004D00010001000100
      01000D000A00730071005F00470065007400500072006F006400750063007400
      4400650073006300410063007400750061006C00570069006400740068004D00
      4D002E004F0072006900670069006E000100410063007400750061006C005700
      69006400740068004D004D0001000100010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A006300640073005F0053006F0072004F007200640052006F007700
      2E0049006E00640065007800650073005B0030005D002E004600690065006C00
      64007300010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064004900
      6E007300740072007500630074002E0049006E00640065007800650073005B00
      30005D002E004600690065006C00640073000100500072006F00640049006E00
      73007400720075004E006F0001000100010001000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00}
  end
  object sq_GetProductDesc: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo, pg.ProductGroupNo, gd.GradeName,'
      '      sc.SpeciesName, sf.SurfacingName, pc.ProductCategoryName,'
      
        #9'pg.ActualThicknessMM, pg.ActualWidthMM, pg.NominalThicknessMM, ' +
        'pg.NominalWidthMM,'
      
        '      pd.ProductDisplayName, pd.GradeNo, pg.SpeciesNo, pg.Produc' +
        'tCategoryNo,'
      
        '      pg.SurfacingNo, pg.NominalThicknessINCH, pg.NominalWidthIN' +
        'CH'
      'FROM dbo.Product pd'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      ''
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      #9#9#9#9'AND pc.LanguageCode = 1'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pd.ProductNo = :ProductNo'
      ' '
      ' '
      '')
    Left = 672
    Top = 592
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetProductDescProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_GetProductDescProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_GetProductDescProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object sq_GetProductDescActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_GetProductDescActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
  end
  object cds_PIPNoLIPNo_from_SOR: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select TOP 1 LIP.PhysicalInventoryPointNo AS PIPNo,sor.LIPNo '
      'FROM dbo.SortingOrderRow sor'
      
        'JOIN dbo.LogicalInventoryPoint LIP ON LIP.LogicalInventoryPointN' +
        'o=sor.LIPNo '
      'where sor.sortingorderNo=:SORNo')
    Left = 672
    Top = 656
    ParamData = <
      item
        Name = 'SORNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 97516
      end>
  end
  object cds_getPkgArticleNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'DECLARE @LIPNo int'
      
        'select TOP 1 @LIPNo = sor.LIPNo FROM dbo.SortingOrderRow sor JOI' +
        'N dbo.LogicalInventoryPoint LIP ON LIP.LogicalInventoryPointNo=s' +
        'or.LIPNo WHERE sor.SortingOrderNo=:SortingOrderNo'
      
        'SELECT PN.PkgArticleNo, PN.status AS LagerStatus FROM dbo.Packag' +
        'eNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND LIP.LogicalInventoryPointNo = @LIPNo'
      'AND PN.SupplierCode = :SupplierCode'
      ''
      '')
    Left = 672
    Top = 720
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 97516
      end
      item
        Name = 'PACKAGENO'
        DataType = ftString
        ParamType = ptInput
        Value = '999000'
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
        Value = 'VEP'
      end>
  end
  object cds_GetActivePackage: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT TOP 1 PackageNo FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      'WHERE PN.PkgArticleNo = :PkgArticleNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND PN.Status = 1'
      'AND LIP.CanAddToLoad = 1'
      'ORDER BY PackageNo '
      ''
      '')
    Left = 672
    Top = 768
    ParamData = <
      item
        Name = 'PKGARTICLENO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
