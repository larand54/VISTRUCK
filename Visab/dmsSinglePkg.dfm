object dm_SinglePkg: Tdm_SinglePkg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 442
  Width = 960
  object mtSinglePkg: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'PRODUCTDESCRIPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ACT_THICK'
        DataType = ftFloat
      end
      item
        Name = 'ACT_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
      end
      item
        Name = 'NOM_THICK'
        DataType = ftFloat
      end
      item
        Name = 'NOM_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'GradeStampNo'
        DataType = ftInteger
      end
      item
        Name = 'BarcodeID'
        DataType = ftInteger
      end
      item
        Name = 'OwnerNo'
        DataType = ftInteger
      end
      item
        Name = 'VerkNo'
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
        Name = 'RegDate'
        DataType = ftDateTime
      end
      item
        Name = 'RegPointNo'
        DataType = ftInteger
      end
      item
        Name = 'INCH_THICK'
        DataType = ftFloat
      end
      item
        Name = 'INCH_WIDTH'
        DataType = ftFloat
      end
      item
        Name = 'TotalPcs'
        DataType = ftInteger
      end
      item
        Name = 'PackageNo'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'Saved'
        DataType = ftBoolean
      end
      item
        Name = 'InputOptionNo'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'Operation'
        DataType = ftInteger
      end
      item
        Name = 'OldPackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'IC_grpno'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductNo'
    IndexName = 'mtProd_RecordsIndex3'
    IndexDefs = <
      item
        Name = 'mtProd_RecordsIndex3'
        Fields = 'ProductNo'
      end>
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
    AfterInsert = mtSinglePkgAfterInsert
    Left = 24
    Top = 168
    object mtSinglePkgProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSinglePkgPRODUCTDESCRIPTION: TStringField
      FieldName = 'PRODUCTDESCRIPTION'
      Size = 100
    end
    object mtSinglePkgACT_THICK: TFloatField
      FieldName = 'ACT_THICK'
    end
    object mtSinglePkgACT_WIDTH: TFloatField
      FieldName = 'ACT_WIDTH'
    end
    object mtSinglePkgPRODUCTGROUPNO: TIntegerField
      FieldName = 'PRODUCTGROUPNO'
    end
    object mtSinglePkgNOM_THICK: TFloatField
      FieldName = 'NOM_THICK'
    end
    object mtSinglePkgNOM_WIDTH: TFloatField
      FieldName = 'NOM_WIDTH'
    end
    object mtSinglePkgGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtSinglePkgBarcodeID: TIntegerField
      FieldName = 'BarcodeID'
    end
    object mtSinglePkgOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object mtSinglePkgVerkNo: TIntegerField
      FieldName = 'VerkNo'
    end
    object mtSinglePkgPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object mtSinglePkgLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object mtSinglePkgRegDate: TDateTimeField
      FieldName = 'RegDate'
    end
    object mtSinglePkgRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtSinglePkgINCH_THICK: TFloatField
      FieldName = 'INCH_THICK'
    end
    object mtSinglePkgINCH_WIDTH: TFloatField
      FieldName = 'INCH_WIDTH'
    end
    object mtSinglePkgTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
    end
    object mtSinglePkgPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object mtSinglePkgSUPPLIERCODE: TStringField
      FieldName = 'SUPPLIERCODE'
      Size = 3
    end
    object mtSinglePkgAM3: TFloatField
      FieldName = 'AM3'
    end
    object mtSinglePkgSaved: TBooleanField
      FieldName = 'Saved'
    end
    object mtSinglePkgInputOptionNo: TIntegerField
      FieldName = 'InputOptionNo'
    end
    object mtSinglePkgStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtSinglePkgOperation: TIntegerField
      FieldName = 'Operation'
    end
    object mtSinglePkgOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
    end
    object mtSinglePkgIC_grpno: TIntegerField
      FieldName = 'IC_grpno'
    end
    object mtSinglePkgCallingFormType: TIntegerField
      FieldName = 'CallingFormType'
    end
    object mtSinglePkgProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      OnChange = mtSinglePkgProducerNoChange
    end
    object mtSinglePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object dsSinglePkg: TDataSource
    DataSet = mtSinglePkg
    Left = 24
    Top = 216
  end
  object dsLengthGroup: TDataSource
    DataSet = cdsLengthGroup
    OnDataChange = dsLengthGroupDataChange
    Left = 424
    Top = 184
  end
  object dsProdLength: TDataSource
    DataSet = cdsProdLength
    Left = 336
    Top = 184
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 16
    Top = 64
  end
  object ds_RegPoints: TDataSource
    DataSet = cds_RegPoints
    Left = 336
    Top = 64
  end
  object mtInputOptions: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'InputOptionNo'
        DataType = ftInteger
      end
      item
        Name = 'InputOption'
        DataType = ftString
        Size = 20
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
    Left = 25
    Top = 269
    object mtInputOptionsInputOptionNo: TIntegerField
      FieldName = 'InputOptionNo'
    end
    object mtInputOptionsInputOption: TStringField
      FieldName = 'InputOption'
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
      end
      item
        Name = 'NoOfPieces'
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
    Left = 24
    Top = 320
    object mtLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLengthsNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mtLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object ds_Leverant: TDataSource
    DataSet = cds_Leverant
    Left = 88
    Top = 64
  end
  object sq_Products: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'pt.PackageTypeNo,'
      'pt.TotalNoOfPieces,'
      'pt.BarCodeID,'
      'pt.GradeStamp,'
      'pd.ProductNo, pg.ProductGroupNo,'
      'pg.ActualThicknessMM, pg.ActualWidthMM,'
      'pg.NominalThicknessMM, pg.NominalWidthMM,'
      'pd.ProductDisplayName,'
      'pg.NominalThicknessINCH, pg.NominalWidthINCH,'
      'PIP.OwnerNo,'
      'PIP.PhysicalInventoryPointNo,'
      'LIP.LogicalInventoryPointNo,'
      'pg.SurfacingNo'
      'FROM dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Inner Join dbo.PackageType pt on pt.packagetypeno = pn.packagety' +
        'peno'
      'Inner Join dbo.Product pd on pd.productno = pt.productno'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      'INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      #9#9#9#9'AND gd.LanguageCode = 1'
      
        'INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCatego' +
        'ryNo = pc.ProductCategoryNo'
      'INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      #9#9#9#9'AND sc.LanguageCode = 1'
      
        'INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfacin' +
        'gNo'
      #9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE pn.PackageNo = :PackageNo'
      'AND  pn.SupplierCode = :SupplierCode'
      ' '
      '')
    Left = 160
    Top = 16
    ParamData = <
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
    object sq_ProductsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object sq_ProductsTotalNoOfPieces: TIntegerField
      FieldName = 'TotalNoOfPieces'
      Origin = 'TotalNoOfPieces'
    end
    object sq_ProductsBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object sq_ProductsGradeStamp: TIntegerField
      FieldName = 'GradeStamp'
      Origin = 'GradeStamp'
    end
    object sq_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object sq_ProductsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      Required = True
    end
    object sq_ProductsActualThicknessMM: TFloatField
      FieldName = 'ActualThicknessMM'
      Origin = 'ActualThicknessMM'
    end
    object sq_ProductsActualWidthMM: TFloatField
      FieldName = 'ActualWidthMM'
      Origin = 'ActualWidthMM'
    end
    object sq_ProductsNominalThicknessMM: TFloatField
      FieldName = 'NominalThicknessMM'
      Origin = 'NominalThicknessMM'
    end
    object sq_ProductsNominalWidthMM: TFloatField
      FieldName = 'NominalWidthMM'
      Origin = 'NominalWidthMM'
    end
    object sq_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
    object sq_ProductsNominalThicknessINCH: TStringField
      FieldName = 'NominalThicknessINCH'
      Origin = 'NominalThicknessINCH'
    end
    object sq_ProductsNominalWidthINCH: TStringField
      FieldName = 'NominalWidthINCH'
      Origin = 'NominalWidthINCH'
    end
    object sq_ProductsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object sq_ProductsPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      Required = True
    end
    object sq_ProductsLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      Required = True
    end
    object sq_ProductsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
  end
  object sq_pcsPerlength: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PcsPerLength '
      'FROM '
      'dbo.PackageTypeLengths'
      'WHERE PackageTypeNo = :PackageTypeNo')
    Left = 160
    Top = 72
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_pcsPerlengthPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      Size = 255
    end
  end
  object cds_Verk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select Distinct C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  ((R.RoleType = 6) or ( R.RoleType = 9))'
      ''
      'Order by C.clientName')
    Left = 16
    Top = 16
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
  object cds_Leverant: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select Distinct C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  R.RoleType = 2'
      ''
      'Order by C.clientName')
    Left = 88
    Top = 16
    object cds_LeverantClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LeverantClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_ProductGroupLength: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_ProductGroupLengthIndex1'
        Fields = 'ProductGroupNo;ProductLengthNo'
      end>
    IndexName = 'cds_ProductGroupLengthIndex1'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM'
      'dbo.ProductGroupLengths')
    Left = 440
    Top = 16
    object cds_ProductGroupLengthProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductGroupLengthCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_ProductGroupLengthModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_ProductGroupLengthDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_RegPoints: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT RP.RegPointNo, RP.RegPointName'
      'FROM ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      'WHERE'
      ' PU.ClientNo = :ClientNo'
      'ORDER BY RP.RegPointName')
    Left = 336
    Top = 16
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      Required = True
    end
    object cds_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      FixedChar = True
      Size = 30
    end
  end
  object cdsProdLength: TFDQuery
    BeforePost = cdsProdLengthBeforePost
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsProdLengthIndex2'
        Fields = 'ALMM'
      end>
    IndexName = 'cdsProdLengthIndex2'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      '0.0 AS AM3,'
      '0.0 AS AM1,'
      'GroupNo AS GroupNo,'
      '0 AS STYCK,'
      'PL.productLengthno,'
      'PL.ActualLengthMM'#9'AS ALMM,'
      'PL.NominalLengthMM'#9'AS NLMM,'
      'PL.NominalLengthFEET'#9'AS FOT,'
      'PL.ActualLengthINCH'#9'AS TUM,'
      'PL.PET'#9#9#9'AS PET,'
      'PL.FingerJoint'#9#9'AS FJ'
      'from dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE GroupNo = :GroupNo'
      'AND PL.ActualLengthMM > 0.1'
      ''
      'Union'
      ''
      'Select'
      '0.0 AS AM3,'
      '0.0 AS AM1,'
      '-1 AS GroupNo,'
      '0 AS STYCK,'
      'PL.productLengthno,'
      'PL.ActualLengthMM'#9'AS ALMM,'
      'PL.NominalLengthMM'#9'AS NLMM,'
      'PL.NominalLengthFEET'#9'AS FOT,'
      'PL.ActualLengthINCH'#9'AS TUM,'
      'PL.PET'#9#9#9'AS PET,'
      'PL.FingerJoint'#9#9'AS FJ'
      'from dbo.ProductGroupLengths PLG'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE ProductGroupNo = :ProductGroupNo'
      'AND PL.ActualLengthMM > 0.1'
      '')
    Left = 336
    Top = 136
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTGROUPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cdsProdLengthAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthAM1: TBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Required = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthproductLengthno: TIntegerField
      FieldName = 'productLengthno'
      Origin = 'productLengthno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ReadOnly = True
      Required = True
    end
    object cdsProdLengthFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
      ReadOnly = True
    end
    object cdsProdLengthTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object cdsProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
      ReadOnly = True
    end
    object cdsProdLengthFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
      ReadOnly = True
    end
  end
  object cdsLengthGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select GroupNo, GroupName FROM dbo.ProductLengthGroupName')
    Left = 424
    Top = 136
    object cdsLengthGroupGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLengthGroupGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'GroupName'
      FixedChar = True
    end
  end
  object sq_PkgTypeLength: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ptd.ProductLengthNo, ptd.NoOfPieces,'
      'PL.ActualLengthMM AS ALMM'
      'FROM dbo.PackageTypeDetail ptd'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo '
      'WHERE ptd.PackageTypeNo = :PackageTypeNo'
      ' ')
    Left = 440
    Top = 72
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_PkgTypeLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PkgTypeLengthNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
      Origin = 'NoOfPieces'
    end
    object sq_PkgTypeLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
  end
  object sp_PackageTypes: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_PkgType'
    Left = 576
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@TotalPieces'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypeDetail: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_PackageTypeDetail'
    Left = 576
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageType: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_NewPkgType'
    Left = 576
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@BarCodeID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@GradeStamp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@TotalNoOfPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@ProdInstruNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageDetail: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_NewPackageDetail'
    Left = 576
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ProductLengthNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@NoOfPieces'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTotals: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_PackageTotals'
    Left = 576
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PkgNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_NewPackageNo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_NewPkgNoInvt'
    Left = 576
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@CreatedOfPkgStr'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@ProducerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_changePkgInventering: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_changePkgInventering'
    Left = 576
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@LogicalInventoryPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OLD_PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgInfo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_OnePackage_Info'
    Left = 720
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Origin = 'CREATED'
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Origin = 'CREATED_BY'
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Origin = 'PKG_STATUS'
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
  end
  object sp_OnePackageNo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_OnePackageNo'
    Left = 720
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
  end
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_Populate_One_PackageTypeLengths'
    Left = 720
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_ProdLength: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_ProdLengthIndex1'
        Fields = 'ActualLengthMM;NominalLengthMM'
      end>
    IndexName = 'cds_ProdLengthIndex1'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.ProductLength')
    Left = 248
    Top = 16
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
  end
  object siLangLinked_dm_SinglePkg: TsiLangLinked
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
    Left = 416
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F004C00650076006500720061006E00740043006C00690065006E007400
      4E0061006D006500010043006C00690065006E0074004E0061006D0065000100
      0100010001000D000A006300640073005F004C00650076006500720061006E00
      740043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F0001000100010001000D000A006300640073005F00500072006F006400
      4C0065006E00670074006800410063007400750061006C004C0065006E006700
      7400680049004E00430048000100410063007400750061006C004C0065006E00
      67007400680049004E004300480001000100010001000D000A00630064007300
      5F00500072006F0064004C0065006E0067007400680041006300740075006100
      6C004C0065006E006700740068004D004D000100410063007400750061006C00
      4C0065006E006700740068004D004D0001000100010001000D000A0063006400
      73005F00500072006F0064004C0065006E006700740068004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      730065007200010053006B006100700061006400200061007600010001005300
      6B00610070006100640020006100760001000D000A006300640073005F005000
      72006F0064004C0065006E006700740068004400610074006500430072006500
      6100740065006400010044006100740065004300720065006100740065006400
      01000100010001000D000A006300640073005F00500072006F0064004C006500
      6E00670074006800460069006E006700650072004A006F0069006E0074000100
      460069006E006700650072004A006F0069006E0074000100460069006E006700
      6500720073006B00610072007600610064000100460069006E00670065007200
      6A006F0069006E0074000100460069006E0067006500720073006B0061007200
      76006100640001000D000A006300640073005F00500072006F0064004C006500
      6E006700740068004D006F006400690066006900650064005500730065007200
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F00500072006F0064004C0065006E00
      6700740068004E006F006D0069006E0061006C004C0065006E00670074006800
      460045004500540001004E006F006D0069006E0061006C004C0065006E006700
      74006800460045004500540001000100010001000D000A006300640073005F00
      500072006F0064004C0065006E006700740068004E006F006D0069006E006100
      6C004C0065006E006700740068004D004D0001004E006F006D0069006E006100
      6C004C0065006E006700740068004D004D0001000100010001000D000A006300
      640073005F00500072006F0064004C0065006E00670074006800500045005400
      010050004500540001000100010001000D000A006300640073005F0050007200
      6F0064004C0065006E00670074006800500072006F0064007500630074004C00
      65006E006700740068004E006F000100500072006F0064007500630074004C00
      65006E006700740068004E006F0001000100010001000D000A00630064007300
      5F00500072006F0064004C0065006E0067007400680053006500710075006500
      6E00630065004E006F000100530065007100750065006E00630065004E006F00
      01000100010001000D000A006300640073005F00500072006F00640075006300
      7400470072006F00750070004C0065006E006700740068004300720065006100
      7400650064005500730065007200010043007200650061007400650064005500
      730065007200010053006B006100700061006400200061007600010001005300
      6B00610070006100640020006100760001000D000A006300640073005F005000
      72006F006400750063007400470072006F00750070004C0065006E0067007400
      6800440061007400650043007200650061007400650064000100440061007400
      6500430072006500610074006500640001000100010001000D000A0063006400
      73005F00500072006F006400750063007400470072006F00750070004C006500
      6E006700740068004D006F006400690066006900650064005500730065007200
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F00500072006F006400750063007400
      470072006F00750070004C0065006E00670074006800500072006F0064007500
      63007400470072006F00750070004E006F000100500072006F00640075006300
      7400470072006F00750070004E006F0001000100010001000D000A0063006400
      73005F00500072006F006400750063007400470072006F00750070004C006500
      6E00670074006800500072006F0064007500630074004C0065006E0067007400
      68004E006F000100500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A006300640073005F00520065006700
      50006F0069006E007400730052006500670050006F0069006E0074004E006100
      6D006500010052006500670050006F0069006E0074004E0061006D0065000100
      0100010001000D000A006300640073005F0052006500670050006F0069006E00
      7400730052006500670050006F0069006E0074004E006F000100520065006700
      50006F0069006E0074004E006F0001000100010001000D000A00630064007300
      5F005600650072006B0043006C00690065006E0074004E0061006D0065000100
      43006C00690065006E0074004E0061006D00650001000100010001000D000A00
      6300640073005F005600650072006B0043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F0001000100010001000D000A006300
      640073004C0065006E00670074006800470072006F0075007000470072006F00
      750070004E0061006D0065000100470072006F00750070004E0061006D006500
      01000100010001000D000A006300640073004C0065006E006700740068004700
      72006F0075007000470072006F00750070004E006F000100470072006F007500
      70004E006F0001000100010001000D000A00630064007300500072006F006400
      4C0065006E0067007400680041004C004D004D00010041004C004D004D000100
      0100010001000D000A00630064007300500072006F0064004C0065006E006700
      7400680041004D003100010041004D00310001000100010001000D000A006300
      64007300500072006F0064004C0065006E0067007400680041004D0033000100
      41004D00330001000100010001000D000A00630064007300500072006F006400
      4C0065006E0067007400680046004A00010046004A0001000100010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680046004F00
      5400010046004F0054000100010046004F004F005400010001000D000A006300
      64007300500072006F0064004C0065006E00670074006800470072006F007500
      70004E006F000100470072006F00750070004E006F0001000100010001000D00
      0A00630064007300500072006F0064004C0065006E006700740068004E004C00
      4D004D0001004E004C004D004D00010001004E004C004D004D00010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680050004500
      5400010050004500540001000100010001000D000A0063006400730050007200
      6F0064004C0065006E00670074006800700072006F0064007500630074004C00
      65006E006700740068006E006F000100700072006F0064007500630074004C00
      65006E006700740068006E006F0001000100010001000D000A00630064007300
      500072006F0064004C0065006E0067007400680053005400590043004B000100
      53005400590043004B000100010050004300530001005300C40043004B000100
      0D000A00630064007300500072006F0064004C0065006E006700740068005400
      55004D000100540055004D000100010049004E0043004800010001000D000A00
      6D00740049006E007000750074004F007000740069006F006E00730049006E00
      7000750074004F007000740069006F006E00010049006E007000750074004F00
      7000740069006F006E00010049006E006D00610074006E0069006E0067007300
      61006C007400650072006E006100740069007600010049006E00700075007400
      20006F007000740069006F006E007300010049006E006D00610074006E006900
      6E006700730061006C007400650072006E00610074006900760001000D000A00
      6D00740049006E007000750074004F007000740069006F006E00730049006E00
      7000750074004F007000740069006F006E004E006F00010049006E0070007500
      74004F007000740069006F006E004E006F0001000100010001000D000A006D00
      74004C0065006E00670074006800730041004C004D004D00010041004C004D00
      4D0001000100010001000D000A006D0074004C0065006E006700740068007300
      4E006F004F00660050006900650063006500730001004E006F004F0066005000
      6900650063006500730001000100010001000D000A006D0074004C0065006E00
      6700740068007300500072006F0064007500630074004C0065006E0067007400
      68004E006F000100500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A006D007400530069006E0067006C00
      650050006B0067004100430054005F0054004800490043004B00010041004300
      54005F0054004800490043004B0001000100010001000D000A006D0074005300
      69006E0067006C00650050006B0067004100430054005F005700490044005400
      480001004100430054005F005700490044005400480001000100010001000D00
      0A006D007400530069006E0067006C00650050006B00670041004D0033000100
      41004D00330001000100010001000D000A006D007400530069006E0067006C00
      650050006B00670042006100720063006F006400650049004400010042006100
      720063006F00640065004900440001000100010001000D000A006D0074005300
      69006E0067006C00650050006B006700430061006C006C0069006E0067004600
      6F0072006D0054007900700065000100430061006C006C0069006E0067004600
      6F0072006D00540079007000650001000100010001000D000A006D0074005300
      69006E0067006C00650050006B00670047007200610064006500530074006100
      6D0070004E006F000100470072006100640065005300740061006D0070004E00
      6F0001000100010001000D000A006D007400530069006E0067006C0065005000
      6B006700490043005F006700720070006E006F000100490043005F0067007200
      70006E006F0001000100010001000D000A006D007400530069006E0067006C00
      650050006B00670049004E00430048005F0054004800490043004B0001004900
      4E00430048005F0054004800490043004B0001000100010001000D000A006D00
      7400530069006E0067006C00650050006B00670049004E00430048005F005700
      4900440054004800010049004E00430048005F00570049004400540048000100
      0100010001000D000A006D007400530069006E0067006C00650050006B006700
      49006E007000750074004F007000740069006F006E004E006F00010049006E00
      7000750074004F007000740069006F006E004E006F0001000100010001000D00
      0A006D007400530069006E0067006C00650050006B0067004C00490050004E00
      6F0001004C00490050004E006F0001000100010001000D000A006D0074005300
      69006E0067006C00650050006B0067004E004F004D005F005400480049004300
      4B0001004E004F004D005F0054004800490043004B0001000100010001000D00
      0A006D007400530069006E0067006C00650050006B0067004E004F004D005F00
      5700490044005400480001004E004F004D005F00570049004400540048000100
      0100010001000D000A006D007400530069006E0067006C00650050006B006700
      4F006C0064005000610063006B0061006700650054007900700065004E006F00
      01004F006C0064005000610063006B0061006700650054007900700065004E00
      6F0001000100010001000D000A006D007400530069006E0067006C0065005000
      6B0067004F007000650072006100740069006F006E0001004F00700065007200
      6100740069006F006E00010001004F007000650072006100740069006F006E00
      010001000D000A006D007400530069006E0067006C00650050006B0067004F00
      77006E00650072004E006F0001004F0077006E00650072004E006F0001000100
      010001000D000A006D007400530069006E0067006C00650050006B0067005000
      610063006B006100670065004E006F0001005000610063006B00610067006500
      4E006F0001000100010001000D000A006D007400530069006E0067006C006500
      50006B0067005000490050004E006F0001005000490050004E006F0001000100
      010001000D000A006D007400530069006E0067006C00650050006B0067005000
      72006F00640075006300650072004E006F000100500072006F00640075006300
      650072004E006F0001000100010001000D000A006D007400530069006E006700
      6C00650050006B006700500052004F0044005500430054004400450053004300
      520049005000540049004F004E000100500052004F0044005500430054004400
      450053004300520049005000540049004F004E0001000100010001000D000A00
      6D007400530069006E0067006C00650050006B006700500052004F0044005500
      43005400470052004F00550050004E004F000100500052004F00440055004300
      5400470052004F00550050004E004F0001000100010001000D000A006D007400
      530069006E0067006C00650050006B006700500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006D007400530069006E0067006C00650050006B006700520065006700
      4400610074006500010052006500670044006100740065000100010001000100
      0D000A006D007400530069006E0067006C00650050006B006700520065006700
      50006F0069006E0074004E006F00010052006500670050006F0069006E007400
      4E006F0001000100010001000D000A006D007400530069006E0067006C006500
      50006B0067005300610076006500640001005300610076006500640001000100
      010001000D000A006D007400530069006E0067006C00650050006B0067005300
      7400610074007500730001005300740061007400750073000100010053007400
      6100740075007300010001000D000A006D007400530069006E0067006C006500
      50006B00670053005500500050004C0049004500520043004F00440045000100
      53005500500050004C0049004500520043004F004400450001004C0045005600
      4500520041004E005400D600520053004B004F004400010001004C0045005600
      4500520041004E005400D600520053004B004F00440001000D000A006D007400
      530069006E0067006C00650050006B0067005300750072006600610063006900
      6E0067004E006F00010053007500720066006100630069006E0067004E006F00
      01000100010001000D000A006D007400530069006E0067006C00650050006B00
      670054006F00740061006C00500063007300010054006F00740061006C005000
      6300730001000100010001000D000A006D007400530069006E0067006C006500
      50006B0067005600650072006B004E006F0001005600650072006B004E006F00
      01000100010001000D000A00730070005F0050006B00670049006E0066006F00
      4300520045004100540045004400010043005200450041005400450044000100
      0100010001000D000A00730070005F0050006B00670049006E0066006F004300
      5200450041005400450044005F00420059000100430052004500410054004500
      44005F004200590001000100010001000D000A00730070005F0050006B006700
      49006E0066006F0049004E00560045004E0054004F0052005900010049004E00
      560045004E0054004F0052005900010049004E00560045004E00540045005200
      49004E0047000100010049004E00560045004E0054004500520049004E004700
      01000D000A00730070005F0050006B00670049006E0066006F004F0057004E00
      4500520001004F0057004E004500520001000100010001000D000A0073007000
      5F0050006B00670049006E0066006F0050004B0047005F005300540041005400
      55005300010050004B0047005F00530054004100540055005300010001000100
      01000D000A00730071005F007000630073005000650072006C0065006E006700
      740068005000630073005000650072004C0065006E0067007400680001005000
      630073005000650072004C0065006E0067007400680001000100010001000D00
      0A00730071005F0050006B00670054007900700065004C0065006E0067007400
      680041004C004D004D00010041004C004D004D0001000100010001000D000A00
      730071005F0050006B00670054007900700065004C0065006E00670074006800
      4E006F004F00660050006900650063006500730001004E006F004F0066005000
      6900650063006500730001000100010001000D000A00730071005F0050006B00
      670054007900700065004C0065006E00670074006800500072006F0064007500
      630074004C0065006E006700740068004E006F000100500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      730071005F00500072006F006400750063007400730041006300740075006100
      6C0054006800690063006B006E006500730073004D004D000100410063007400
      750061006C0054006800690063006B006E006500730073004D004D0001000100
      010001000D000A00730071005F00500072006F00640075006300740073004100
      63007400750061006C00570069006400740068004D004D000100410063007400
      750061006C00570069006400740068004D004D0001000100010001000D000A00
      730071005F00500072006F006400750063007400730042006100720043006F00
      6400650049004400010042006100720043006F00640065004900440001000100
      010001000D000A00730071005F00500072006F00640075006300740073004700
      72006100640065005300740061006D0070000100470072006100640065005300
      740061006D00700001000100010001000D000A00730071005F00500072006F00
      640075006300740073004C006F0067006900630061006C0049006E0076006500
      6E0074006F007200790050006F0069006E0074004E006F0001004C006F006700
      6900630061006C0049006E00760065006E0074006F007200790050006F006900
      6E0074004E006F0001000100010001000D000A00730071005F00500072006F00
      640075006300740073004E006F006D0069006E0061006C005400680069006300
      6B006E0065007300730049004E004300480001004E006F006D0069006E006100
      6C0054006800690063006B006E0065007300730049004E004300480001000100
      010001000D000A00730071005F00500072006F00640075006300740073004E00
      6F006D0069006E0061006C0054006800690063006B006E006500730073004D00
      4D0001004E006F006D0069006E0061006C0054006800690063006B006E006500
      730073004D004D0001000100010001000D000A00730071005F00500072006F00
      640075006300740073004E006F006D0069006E0061006C005700690064007400
      680049004E004300480001004E006F006D0069006E0061006C00570069006400
      7400680049004E004300480001000100010001000D000A00730071005F005000
      72006F00640075006300740073004E006F006D0069006E0061006C0057006900
      6400740068004D004D0001004E006F006D0069006E0061006C00570069006400
      740068004D004D0001000100010001000D000A00730071005F00500072006F00
      640075006300740073004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F0001000100010001000D000A00730071005F00500072006F00
      640075006300740073005000610063006B006100670065005400790070006500
      4E006F0001005000610063006B0061006700650054007900700065004E006F00
      01000100010001000D000A00730071005F00500072006F006400750063007400
      730050006800790073006900630061006C0049006E00760065006E0074006F00
      7200790050006F0069006E0074004E006F000100500068007900730069006300
      61006C0049006E00760065006E0074006F007200790050006F0069006E007400
      4E006F0001000100010001000D000A00730071005F00500072006F0064007500
      630074007300500072006F00640075006300740044006900730070006C006100
      79004E0061006D0065000100500072006F006400750063007400440069007300
      70006C00610079004E0061006D00650001000100010001000D000A0073007100
      5F00500072006F0064007500630074007300500072006F006400750063007400
      470072006F00750070004E006F000100500072006F0064007500630074004700
      72006F00750070004E006F0001000100010001000D000A00730071005F005000
      72006F0064007500630074007300500072006F0064007500630074004E006F00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      730071005F00500072006F006400750063007400730053007500720066006100
      630069006E0067004E006F00010053007500720066006100630069006E006700
      4E006F0001000100010001000D000A00730071005F00500072006F0064007500
      63007400730054006F00740061006C004E006F004F0066005000690065006300
      65007300010054006F00740061006C004E006F004F0066005000690065006300
      6500730001000100010001000D000A007300740046006F006E00740073005F00
      55006E00690063006F00640065000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A006D007400530069006E006700
      6C00650050006B0067002E0049006E006400650078004600690065006C006400
      4E0061006D00650073000100500072006F0064007500630074004E006F000100
      0100010001000D000A006D007400530069006E0067006C00650050006B006700
      2E00560065007200730069006F006E00010037002E00360033002E0030003000
      20005300740061006E0064006100720064002000450064006900740069006F00
      6E0001000100010001000D000A006D00740049006E007000750074004F007000
      740069006F006E0073002E00560065007200730069006F006E00010037002E00
      360033002E003000300020005300740061006E00640061007200640020004500
      64006900740069006F006E0001000100010001000D000A006D0074004C006500
      6E0067007400680073002E00560065007200730069006F006E00010037002E00
      360033002E003000300020005300740061006E00640061007200640020004500
      64006900740069006F006E0001000100010001000D000A00730071005F005000
      72006F00640075006300740073002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      730071005F00500072006F00640075006300740073005000610063006B006100
      6700650054007900700065004E006F002E004F0072006900670069006E000100
      5000610063006B0061006700650054007900700065004E006F00010001000100
      01000D000A00730071005F00500072006F006400750063007400730054006F00
      740061006C004E006F004F0066005000690065006300650073002E004F007200
      6900670069006E00010054006F00740061006C004E006F004F00660050006900
      650063006500730001000100010001000D000A00730071005F00500072006F00
      6400750063007400730042006100720043006F0064006500490044002E004F00
      72006900670069006E00010042006100720043006F0064006500490044000100
      0100010001000D000A00730071005F00500072006F0064007500630074007300
      470072006100640065005300740061006D0070002E004F007200690067006900
      6E000100470072006100640065005300740061006D0070000100010001000100
      0D000A00730071005F00500072006F0064007500630074007300500072006F00
      64007500630074004E006F002E004F0072006900670069006E00010050007200
      6F0064007500630074004E006F0001000100010001000D000A00730071005F00
      500072006F0064007500630074007300500072006F0064007500630074004700
      72006F00750070004E006F002E004F0072006900670069006E00010050007200
      6F006400750063007400470072006F00750070004E006F000100010001000100
      0D000A00730071005F00500072006F0064007500630074007300410063007400
      750061006C0054006800690063006B006E006500730073004D004D002E004F00
      72006900670069006E000100410063007400750061006C005400680069006300
      6B006E006500730073004D004D0001000100010001000D000A00730071005F00
      500072006F0064007500630074007300410063007400750061006C0057006900
      6400740068004D004D002E004F0072006900670069006E000100410063007400
      750061006C00570069006400740068004D004D0001000100010001000D000A00
      730071005F00500072006F00640075006300740073004E006F006D0069006E00
      61006C0054006800690063006B006E006500730073004D004D002E004F007200
      6900670069006E0001004E006F006D0069006E0061006C005400680069006300
      6B006E006500730073004D004D0001000100010001000D000A00730071005F00
      500072006F00640075006300740073004E006F006D0069006E0061006C005700
      69006400740068004D004D002E004F0072006900670069006E0001004E006F00
      6D0069006E0061006C00570069006400740068004D004D000100010001000100
      0D000A00730071005F00500072006F0064007500630074007300500072006F00
      640075006300740044006900730070006C00610079004E0061006D0065002E00
      4F0072006900670069006E000100500072006F00640075006300740044006900
      730070006C00610079004E0061006D00650001000100010001000D000A007300
      71005F00500072006F00640075006300740073004E006F006D0069006E006100
      6C0054006800690063006B006E0065007300730049004E00430048002E004F00
      72006900670069006E0001004E006F006D0069006E0061006C00540068006900
      63006B006E0065007300730049004E004300480001000100010001000D000A00
      730071005F00500072006F00640075006300740073004E006F006D0069006E00
      61006C005700690064007400680049004E00430048002E004F00720069006700
      69006E0001004E006F006D0069006E0061006C00570069006400740068004900
      4E004300480001000100010001000D000A00730071005F00500072006F006400
      75006300740073004F0077006E00650072004E006F002E004F00720069006700
      69006E0001004F0077006E00650072004E006F0001000100010001000D000A00
      730071005F00500072006F006400750063007400730050006800790073006900
      630061006C0049006E00760065006E0074006F007200790050006F0069006E00
      74004E006F002E004F0072006900670069006E00010050006800790073006900
      630061006C0049006E00760065006E0074006F007200790050006F0069006E00
      74004E006F0001000100010001000D000A00730071005F00500072006F006400
      75006300740073004C006F0067006900630061006C0049006E00760065006E00
      74006F007200790050006F0069006E0074004E006F002E004F00720069006700
      69006E0001004C006F0067006900630061006C0049006E00760065006E007400
      6F007200790050006F0069006E0074004E006F0001000100010001000D000A00
      730071005F00500072006F006400750063007400730053007500720066006100
      630069006E0067004E006F002E004F0072006900670069006E00010053007500
      720066006100630069006E0067004E006F0001000100010001000D000A007300
      71005F007000630073005000650072006C0065006E006700740068002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730071005F00700063007300500065007200
      6C0065006E006700740068005000630073005000650072004C0065006E006700
      740068002E004F0072006900670069006E000100500063007300500065007200
      4C0065006E0067007400680001000100010001000D000A006300640073005F00
      5600650072006B002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F005600650072006B0043006C00690065006E0074004E006F002E004F007200
      6900670069006E00010043006C00690065006E0074004E006F00010001000100
      01000D000A006300640073005F005600650072006B0043006C00690065006E00
      74004E0061006D0065002E004F0072006900670069006E00010043006C006900
      65006E0074004E0061006D00650001000100010001000D000A00630064007300
      5F004C00650076006500720061006E0074002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A006300640073005F004C00650076006500720061006E00740043006C00
      690065006E0074004E006F002E004F0072006900670069006E00010043006C00
      690065006E0074004E006F0001000100010001000D000A006300640073005F00
      4C00650076006500720061006E00740043006C00690065006E0074004E006100
      6D0065002E004F0072006900670069006E00010043006C00690065006E007400
      4E0061006D00650001000100010001000D000A006300640073005F0050007200
      6F006400750063007400470072006F00750070004C0065006E00670074006800
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A006300640073005F00500072006F00
      6400750063007400470072006F00750070004C0065006E006700740068005000
      72006F006400750063007400470072006F00750070004E006F002E004F007200
      6900670069006E000100500072006F006400750063007400470072006F007500
      70004E006F0001000100010001000D000A006300640073005F00500072006F00
      6400750063007400470072006F00750070004C0065006E006700740068005000
      72006F0064007500630074004C0065006E006700740068004E006F002E004F00
      72006900670069006E000100500072006F0064007500630074004C0065006E00
      6700740068004E006F0001000100010001000D000A006300640073005F005000
      72006F006400750063007400470072006F00750070004C0065006E0067007400
      6800430072006500610074006500640055007300650072002E004F0072006900
      670069006E000100430072006500610074006500640055007300650072000100
      53006B0061007000610064002000610076000100010053006B00610070006100
      640020006100760001000D000A006300640073005F00500072006F0064007500
      63007400470072006F00750070004C0065006E006700740068004D006F006400
      6900660069006500640055007300650072002E004F0072006900670069006E00
      01004D006F0064006900660069006500640055007300650072000100C4006E00
      640072006100640020006100760001000100C4006E0064007200610064002000
      6100760001000D000A006300640073005F00500072006F006400750063007400
      470072006F00750070004C0065006E0067007400680044006100740065004300
      7200650061007400650064002E004F0072006900670069006E00010044006100
      74006500430072006500610074006500640001000100010001000D000A006300
      640073005F0052006500670050006F0069006E00740073002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A006300640073005F0052006500670050006F0069006E00
      7400730052006500670050006F0069006E0074004E006F002E004F0072006900
      670069006E00010052006500670050006F0069006E0074004E006F0001000100
      010001000D000A006300640073005F0052006500670050006F0069006E007400
      730052006500670050006F0069006E0074004E0061006D0065002E004F007200
      6900670069006E00010052006500670050006F0069006E0074004E0061006D00
      650001000100010001000D000A00630064007300500072006F0064004C006500
      6E006700740068002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      500072006F0064004C0065006E0067007400680041004D0033002E004F007200
      6900670069006E00010041004D00330001000100010001000D000A0063006400
      7300500072006F0064004C0065006E0067007400680041004D0031002E004F00
      72006900670069006E00010041004D00310001000100010001000D000A006300
      64007300500072006F0064004C0065006E00670074006800470072006F007500
      70004E006F002E004F0072006900670069006E000100470072006F0075007000
      4E006F0001000100010001000D000A00630064007300500072006F0064004C00
      65006E0067007400680053005400590043004B002E004F007200690067006900
      6E00010053005400590043004B000100010050004300530001005300C4004300
      4B0001000D000A00630064007300500072006F0064004C0065006E0067007400
      6800700072006F0064007500630074004C0065006E006700740068006E006F00
      2E004F0072006900670069006E000100700072006F0064007500630074004C00
      65006E006700740068006E006F0001000100010001000D000A00630064007300
      500072006F0064004C0065006E0067007400680041004C004D004D002E004F00
      72006900670069006E00010041004C004D004D0001000100010001000D000A00
      630064007300500072006F0064004C0065006E006700740068004E004C004D00
      4D002E004F0072006900670069006E0001004E004C004D004D00010001004E00
      4C004D004D00010001000D000A00630064007300500072006F0064004C006500
      6E0067007400680046004F0054002E004F0072006900670069006E0001004600
      4F0054000100010046004F004F005400010001000D000A006300640073005000
      72006F0064004C0065006E00670074006800540055004D002E004F0072006900
      670069006E000100540055004D000100010049004E0043004800010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680050004500
      54002E004F0072006900670069006E0001005000450054000100010001000100
      0D000A00630064007300500072006F0064004C0065006E006700740068004600
      4A002E004F0072006900670069006E00010046004A0001000100010001000D00
      0A006300640073004C0065006E00670074006800470072006F00750070002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073004C0065006E0067007400
      6800470072006F0075007000470072006F00750070004E006F002E004F007200
      6900670069006E000100470072006F00750070004E006F000100010001000100
      0D000A006300640073004C0065006E00670074006800470072006F0075007000
      470072006F00750070004E0061006D0065002E004F0072006900670069006E00
      0100470072006F00750070004E0061006D00650001000100010001000D000A00
      730071005F0050006B00670054007900700065004C0065006E00670074006800
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00730071005F0050006B0067005400
      7900700065004C0065006E00670074006800500072006F006400750063007400
      4C0065006E006700740068004E006F002E004F0072006900670069006E000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A00730071005F0050006B00670054007900700065004C00
      65006E006700740068004E006F004F0066005000690065006300650073002E00
      4F0072006900670069006E0001004E006F004F00660050006900650063006500
      730001000100010001000D000A00730071005F0050006B006700540079007000
      65004C0065006E0067007400680041004C004D004D002E004F00720069006700
      69006E00010041004C004D004D0001000100010001000D000A00730070005F00
      5000610063006B00610067006500540079007000650073002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730070005F005000610063006B006100670065005400
      79007000650073002E00530074006F00720065006400500072006F0063004E00
      61006D00650001007600690073005F0076006900640061002E00640062006F00
      2E007600690073005F0050006B00670054007900700065000100010001000100
      0D000A00730070005F005000610063006B006100670065005400790070006500
      440065007400610069006C002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F005000610063006B006100670065005400790070006500440065007400
      610069006C002E00530074006F00720065006400500072006F0063004E006100
      6D00650001007600690073005F0076006900640061002E00640062006F002E00
      76006900640061005F005000610063006B006100670065005400790070006500
      440065007400610069006C0001000100010001000D000A00730070005F004E00
      650077005000610063006B0061006700650054007900700065002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730070005F004E00650077005000610063006B00
      61006700650054007900700065002E00530074006F0072006500640050007200
      6F0063004E0061006D00650001007600690073005F0076006900640061002E00
      640062006F002E007600690073005F004E006500770050006B00670054007900
      7000650001000100010001000D000A00730070005F004E006500770050006100
      63006B00610067006500440065007400610069006C002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730070005F004E00650077005000610063006B0061006700
      6500440065007400610069006C002E00530074006F0072006500640050007200
      6F0063004E0061006D00650001007600690073005F0076006900640061002E00
      640062006F002E0076006900640061005F004E00650077005000610063006B00
      610067006500440065007400610069006C0001000100010001000D000A007300
      70005F005000610063006B0061006700650054006F00740061006C0073002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730070005F005000610063006B006100
      6700650054006F00740061006C0073002E00530074006F007200650064005000
      72006F0063004E0061006D00650001007600690073005F007600690064006100
      2E00640062006F002E0076006900640061005F005000610063006B0061006700
      650054006F00740061006C00730001000100010001000D000A00730070005F00
      4E00650077005000610063006B006100670065004E006F002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730070005F004E00650077005000610063006B006100
      670065004E006F002E00530074006F00720065006400500072006F0063004E00
      61006D00650001007600690073005F0076006900640061002E00640062006F00
      2E0076006900640061005F004E006500770050006B0067004E006F0049006E00
      7600740001000100010001000D000A00730070005F006300680061006E006700
      650050006B00670049006E00760065006E0074006500720069006E0067002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730070005F006300680061006E006700
      650050006B00670049006E00760065006E0074006500720069006E0067002E00
      530074006F00720065006400500072006F0063004E0061006D00650001007600
      690073005F0076006900640061002E00640062006F002E007600690064006100
      5F006300680061006E006700650050006B00670049006E00760065006E007400
      6500720069006E00670001000100010001000D000A00730070005F0050006B00
      670049006E0066006F002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0073007000
      5F0050006B00670049006E0066006F002E00530074006F007200650064005000
      72006F0063004E0061006D00650001007600690073005F007600690064006100
      2E00640062006F002E0076006900640061005F004F006E006500500061006300
      6B006100670065005F0049006E0066006F0001000100010001000D000A007300
      70005F0050006B00670049006E0066006F004300520045004100540045004400
      2E004F0072006900670069006E00010043005200450041005400450044000100
      0100010001000D000A00730070005F0050006B00670049006E0066006F004300
      5200450041005400450044005F00420059002E004F0072006900670069006E00
      010043005200450041005400450044005F004200590001000100010001000D00
      0A00730070005F0050006B00670049006E0066006F004F0057004E0045005200
      2E004F0072006900670069006E0001004F0057004E0045005200010001000100
      01000D000A00730070005F0050006B00670049006E0066006F0050004B004700
      5F005300540041005400550053002E004F0072006900670069006E0001005000
      4B0047005F0053005400410054005500530001000100010001000D000A007300
      70005F0050006B00670049006E0066006F0049004E00560045004E0054004F00
      520059002E004F0072006900670069006E00010049004E00560045004E005400
      4F0052005900010049004E00560045004E0054004500520049004E0047000100
      010049004E00560045004E0054004500520049004E00470001000D000A007300
      70005F004F006E0065005000610063006B006100670065004E006F002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730070005F004F006E006500500061006300
      6B006100670065004E006F002E00530074006F00720065006400500072006F00
      63004E0061006D00650001007600690073005F0076006900640061002E006400
      62006F002E0076006900640061005F004F006E0065005000610063006B006100
      670065004E006F0001000100010001000D000A00730070005F0050006F007000
      75006C006100740065005F004F006E0065005F0050006B006700540079007000
      65004C0065006E0067007400680073002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A00730070005F0050006F00700075006C006100740065005F004F006E006500
      5F0050006B00670054007900700065004C0065006E0067007400680073002E00
      530074006F00720065006400500072006F0063004E0061006D00650001007600
      690073005F0076006900640061002E00640062006F002E007600690064006100
      5F0050006F00700075006C006100740065005F004F006E0065005F0050006100
      63006B0061006700650054007900700065004C0065006E006700740068007300
      01000100010001000D000A006300640073005F00500072006F0064004C006500
      6E006700740068002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F00500072006F0064004C0065006E00670074006800500072006F0064007500
      630074004C0065006E006700740068004E006F002E004F007200690067006900
      6E000100500072006F0064007500630074004C0065006E006700740068004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064004C00
      65006E00670074006800410063007400750061006C004C0065006E0067007400
      68004D004D002E004F0072006900670069006E00010041006300740075006100
      6C004C0065006E006700740068004D004D0001000100010001000D000A006300
      640073005F00500072006F0064004C0065006E006700740068004E006F006D00
      69006E0061006C004C0065006E006700740068004D004D002E004F0072006900
      670069006E0001004E006F006D0069006E0061006C004C0065006E0067007400
      68004D004D0001000100010001000D000A006300640073005F00500072006F00
      64004C0065006E006700740068004E006F006D0069006E0061006C004C006500
      6E0067007400680046004500450054002E004F0072006900670069006E000100
      4E006F006D0069006E0061006C004C0065006E00670074006800460045004500
      540001000100010001000D000A006300640073005F00500072006F0064004C00
      65006E00670074006800410063007400750061006C004C0065006E0067007400
      680049004E00430048002E004F0072006900670069006E000100410063007400
      750061006C004C0065006E0067007400680049004E0043004800010001000100
      01000D000A006300640073005F00500072006F0064004C0065006E0067007400
      68005000450054002E004F0072006900670069006E0001005000450054000100
      0100010001000D000A006300640073005F00500072006F0064004C0065006E00
      670074006800460069006E006700650072004A006F0069006E0074002E004F00
      72006900670069006E000100460069006E006700650072004A006F0069006E00
      74000100460069006E0067006500720073006B00610072007600610064000100
      460069006E006700650072006A006F0069006E0074000100460069006E006700
      6500720073006B006100720076006100640001000D000A006300640073005F00
      500072006F0064004C0065006E00670074006800430072006500610074006500
      640055007300650072002E004F0072006900670069006E000100430072006500
      61007400650064005500730065007200010053006B0061007000610064002000
      610076000100010053006B00610070006100640020006100760001000D000A00
      6300640073005F00500072006F0064004C0065006E006700740068004D006F00
      64006900660069006500640055007300650072002E004F007200690067006900
      6E0001004D006F0064006900660069006500640055007300650072000100C400
      6E00640072006100640020006100760001000100C4006E006400720061006400
      20006100760001000D000A006300640073005F00500072006F0064004C006500
      6E00670074006800440061007400650043007200650061007400650064002E00
      4F0072006900670069006E000100440061007400650043007200650061007400
      6500640001000100010001000D000A006300640073005F00500072006F006400
      4C0065006E00670074006800530065007100750065006E00630065004E006F00
      2E004F0072006900670069006E000100530065007100750065006E0063006500
      4E006F0001000100010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006300
      640073005F00500072006F0064004C0065006E006700740068002E0049006E00
      640065007800650073005B0030005D002E004600690065006C00640073000100
      410063007400750061006C004C0065006E006700740068004D004D003B004E00
      6F006D0069006E0061006C004C0065006E006700740068004D004D0001000100
      010001000D000A006300640073005F00500072006F0064007500630074004700
      72006F00750070004C0065006E006700740068002E0049006E00640065007800
      650073005B0030005D002E004600690065006C00640073000100500072006F00
      6400750063007400470072006F00750070004E006F003B00500072006F006400
      7500630074004C0065006E006700740068004E006F0001000100010001000D00
      0A00630064007300500072006F0064004C0065006E006700740068002E004900
      6E00640065007800650073005B0030005D002E004600690065006C0064007300
      010041004C004D004D0001000100010001000D000A006D007400530069006E00
      67006C00650050006B0067002E0049006E006400650078004400650066007300
      5B0030005D002E004600690065006C00640073000100500072006F0064007500
      630074004E006F0001000100010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A00}
  end
end
