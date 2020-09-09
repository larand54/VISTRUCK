object dm_PkgWorkOrder: Tdm_PkgWorkOrder
  OldCreateOrder = False
  Height = 738
  Width = 1022
  object ds_NewPkgs: TDataSource
    DataSet = cds_NewPkgs
    Left = 152
    Top = 72
  end
  object ds_PkgInfo: TDataSource
    DataSet = sq_PkgInfo
    Left = 248
    Top = 64
  end
  object ds_UsedPkgs: TDataSource
    DataSet = cds_UsedPkgs
    Left = 56
    Top = 72
  end
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 360
    Top = 56
  end
  object mtLoadPackages: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PRODUCT'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'M3_NET'
        DataType = ftFloat
      end
      item
        Name = 'PCS'
        DataType = ftInteger
      end
      item
        Name = 'M3_NOM'
        DataType = ftFloat
      end
      item
        Name = 'KVM'
        DataType = ftFloat
      end
      item
        Name = 'LOPM'
        DataType = ftFloat
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'INVENTORY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ON_STICKS'
        DataType = ftInteger
      end
      item
        Name = 'PCS_PER_LENGTH'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OWNER'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
      end
      item
        Name = 'LOG_INVENTORY_NO'
        DataType = ftInteger
      end
      item
        Name = 'BAR_CODE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BARCODE_ID'
        DataType = ftInteger
      end
      item
        Name = 'GRADE_STAMP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GRADESTAMPNO'
        DataType = ftInteger
      end
      item
        Name = 'WRAP_TYPE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'WRAPTYPENO'
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
      end
      item
        Name = 'Old_PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'MCClassNo'
        DataType = ftInteger
      end
      item
        Name = 'ExLog'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TypeOfLog'
        DataType = ftInteger
      end
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'PIP'
        DataType = ftInteger
      end
      item
        Name = 'PcsPerBundle'
        DataType = ftInteger
      end
      item
        Name = 'BundlesPerPkg'
        DataType = ftInteger
      end
      item
        Name = 'OldLIPNo'
        DataType = ftInteger
      end
      item
        Name = 'OLDMCClassNo'
        DataType = ftInteger
      end
      item
        Name = 'NTMM'
        DataType = ftFloat
      end
      item
        Name = 'NBMM'
        DataType = ftFloat
      end
      item
        Name = 'SpeciesNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeNo'
        DataType = ftInteger
      end
      item
        Name = 'IMPNo'
        DataType = ftInteger
      end
      item
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        DataType = ftFloat
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end>
    IndexName = 'mtLoadPackagesIndex6'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex5'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'mtLoadPackagesIndex6'
        Fields = 'LoadDetailNo'
      end>
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
    Left = 360
    Top = 8
    object mtLoadPackagesPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesM3_NET: TFloatField
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesKVM: TFloatField
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object mtLoadPackagesON_STICKS: TIntegerField
      FieldName = 'ON_STICKS'
    end
    object mtLoadPackagesPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object mtLoadPackagesOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object mtLoadPackagesOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object mtLoadPackagesLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object mtLoadPackagesBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Size = 15
    end
    object mtLoadPackagesWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
    end
    object mtLoadPackagesSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object mtLoadPackagesOld_PackageTypeNo: TIntegerField
      FieldName = 'Old_PackageTypeNo'
    end
    object mtLoadPackagesMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
    end
    object mtLoadPackagesExLog: TStringField
      FieldName = 'ExLog'
      Size = 2
    end
    object mtLoadPackagesTypeOfLog: TIntegerField
      FieldName = 'TypeOfLog'
    end
    object mtLoadPackagesProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtLoadPackagesPIP: TIntegerField
      FieldName = 'PIP'
    end
    object mtLoadPackagesPcsPerBundle: TIntegerField
      FieldName = 'PcsPerBundle'
    end
    object mtLoadPackagesBundlesPerPkg: TIntegerField
      FieldName = 'BundlesPerPkg'
    end
    object mtLoadPackagesOldLIPNo: TIntegerField
      FieldName = 'OldLIPNo'
    end
    object mtLoadPackagesOLDMCClassNo: TIntegerField
      FieldName = 'OLDMCClassNo'
    end
    object mtLoadPackagesNTMM: TFloatField
      FieldName = 'NTMM'
    end
    object mtLoadPackagesNBMM: TFloatField
      FieldName = 'NBMM'
    end
    object mtLoadPackagesAT: TFloatField
      FieldName = 'AT'
    end
    object mtLoadPackagesAB: TFloatField
      FieldName = 'AB'
    end
    object mtLoadPackagesSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtLoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLoadPackagesIMPNo: TIntegerField
      FieldName = 'IMPNo'
    end
    object mtLoadPackagesGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesOLDProductNo: TIntegerField
      FieldName = 'OLDProductNo'
    end
  end
  object dsLengthGroup: TDataSource
    DataSet = cdsLengthGroup
    OnDataChange = dsLengthGroupDataChange
    Left = 936
    Top = 80
  end
  object dsProdLength: TDataSource
    DataSet = cdsProdLength
    Left = 840
    Top = 80
  end
  object cds_UsedPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUKT,'
      'ptl.pcsperlength '#9#9'    AS '#9'ANTPERL'#196'NGD,'
      'SORP.PackageNo'#9#9#9'    AS'#9'PAKETNR,'
      'SORP.SUPPLIERCODE'#9#9#9'  AS '#9'LEVKOD,'
      'P.Totalm3Actual'#9#9#9'    AS '#9'AM3,'
      'P.Totalm3Nominal'#9#9#9'  AS '#9'NM3,'
      'P.TotalNoOfPieces'#9#9#9'  AS'#9'STYCK,'
      'P.TotalMFBMNominal   '#9'  AS  MFBM,'
      'IsNull(P.PackageTypeNo,0) AS PackageTypeNo,'
      'SORP.OldLipNo AS LIPNo,'
      'PR.ProductNo,'
      'P.TotalLinealMeterActualLength AS AM1,'
      
        '      '#9'(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail' +
        ' PD'
      
        '      '#9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = P' +
        'D.ProductLengthNo'
      
        '      '#9'WHERE PD.PackageTypeNo = SORP.PackageTypeNo) AS MAXLENGTH' +
        ','
      'IsNull(Split.PackageNo,0) AS OldPackageNo,'
      'Split.SupplierCode AS OldSupplierCode,'
      'IsNull(Split.PackageTypeNo,0) AS OldPackageTypeNo,'
      'SORP.DateCreated AS Registrerad,'
      'SORP.SortingOrderNo,'
      'SORP.PkgNoInvCount AS AvRegPktNr,'
      'SORP.PrefixInvCount AS AvRegPrefix'
      'FROM'
      'dbo.SortingOrderUsedPkgs SORP'
      ''
      'LEFT OUTER JOIN dbo.PackageType P'#9#9
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'ON '#9'P.PackageTypeNo = SORP.PackageTypeNo'
      
        'LEFT OUTER JOIN dbo.SortingOrderSplitPkgs Split on Split.NewPack' +
        'ageNo = SORP.PackageNo'
      
        '                                    AND Split.NewSupplierCode = ' +
        'SORP.SupplierCode'
      'WHERE'
      'SORP.SortingOrderNo = :SortingOrderNo'
      'AND SORP.DateCreated >= :StartDate')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object cds_UsedPkgsPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'PRODUKT'
      Size = 100
    end
    object cds_UsedPkgsANTPERLNGD: TStringField
      DisplayLabel = 'St/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_UsedPkgsPAKETNR: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PAKETNR'
      Origin = 'PAKETNR'
      Required = True
    end
    object cds_UsedPkgsLEVKOD: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'LEVKOD'
      Origin = 'LEVKOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_UsedPkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_UsedPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ReadOnly = True
      Required = True
    end
    object cds_UsedPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_UsedPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_UsedPkgsAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsMAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_UsedPkgsOldPackageNo: TIntegerField
      FieldName = 'OldPackageNo'
      Origin = 'OldPackageNo'
      ReadOnly = True
      Required = True
    end
    object cds_UsedPkgsOldSupplierCode: TStringField
      FieldName = 'OldSupplierCode'
      Origin = 'OldSupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_UsedPkgsOldPackageTypeNo: TIntegerField
      FieldName = 'OldPackageTypeNo'
      Origin = 'OldPackageTypeNo'
      ReadOnly = True
      Required = True
    end
    object cds_UsedPkgsRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
    end
    object cds_UsedPkgsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UsedPkgsAvRegPktNr: TIntegerField
      FieldName = 'AvRegPktNr'
      Origin = 'AvRegPktNr'
    end
    object cds_UsedPkgsAvRegPrefix: TStringField
      FieldName = 'AvRegPrefix'
      Origin = 'AvRegPrefix'
      FixedChar = True
      Size = 3
    end
  end
  object sq_InsSortUsedPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'INSERT'
      ''
      'INTO     dbo.SortingOrderUsedPkgs'
      '         ('
      '            SortingOrderNo,'
      '            PackageNo,'
      '            SupplierCode,'
      '            DateCreated,'
      '            CreatedUser,'
      #9'PackageTypeNo'
      '                     )'
      ''
      'VALUES   ('
      '            :SortingOrderNo,'
      '            :PackageNo,'
      '            :SupplierCode,'
      '            :DateCreated,'
      '            :CreatedUser,'
      #9':PackageTypeNo'
      '                     )'
      ''
      ''
      '')
    Left = 48
    Top = 152
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
      end
      item
        Name = 'DATECREATED'
        DataType = ftTimeStamp
        FDDataType = dtDateTime
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object sq_DelSortUSedPkgs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.SortingOrderUsedPkgs'
      'WHERE'
      'SortingOrderNo = :SortingOrderNo'
      'AND PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    Left = 48
    Top = 200
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
  object cds_NewPkgs: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '      SELECT DISTINCT'
      '      PR.ProductDisplayName AS PRODUKT,'
      '      ptl.pcsperlength AS ANTPERL'#196'NGD,'
      '      SORP.PackageNo,'
      '      SORP.SUPPLIERCODE,'
      '      SORP.SortingOrderNo,'
      '      SORP.SortingOrderRowNo,'
      '      P.Totalm3Actual AS AM3,'
      '      P.Totalm3Nominal AS NM3,'
      '      P.TotalNoOfPieces AS STYCK,'
      '      P.TotalMFBMNominal             AS      MFBM,'
      '      P.PackageTypeNo,'
      '      SORP.OldLipNo AS LIPNo,'
      '      SORP.Status,'
      '      SORP.OLDLIPNo,'
      '      SORP.OLDMCClassNo,'
      '      P.TotalLinealMeterActualLength AS AM1,'
      
        '      '#9'(Select Max(PL.ActualLengthMM) FROM dbo.PackageTypeDetail' +
        ' PD'
      
        '      '#9'INNER JOIN dbo.ProductLength PL ON PL.ProductLengthNo = P' +
        'D.ProductLengthNo'
      
        '      '#9'WHERE PD.PackageTypeNo = SORP.PackageTypeNo) AS MAXLENGTH' +
        ','
      ''
      
        '      '#9'(Select Max(PD.ProductLengthNo) FROM dbo.PackageTypeDetai' +
        'l PD'
      
        '      '#9'WHERE PD.PackageTypeNo = SORP.PackageTypeNo) AS MAXProduc' +
        'tLengthNo,'
      ''
      '--     '#9'CASE'
      '--'#9'WHEN SOR.PriceUnit = 2 THEN P.TotalNoOfPieces '#9'* SOR.Price'
      '--'#9'WHEN SOR.PriceUnit = 3 THEN P.Totalm3Actual '#9'* SOR.Price'
      '--'#9'WHEN SOR.PriceUnit = 4 THEN P.Totalm3Nominal '#9'* SOR.Price'
      
        '--'#9'WHEN SOR.PriceUnit = 8 THEN P.TotalSQMofActualWidth * SOR.Pri' +
        'ce'
      
        '--'#9'WHEN SOR.PriceUnit = 9 THEN P.TotalLinealMeterActualLength * ' +
        'SOR.Price'
      '--'#9'END AS VaruVarde,'
      '  SORP.Price_SEKPerNM3 * P.Totalm3Nominal AS VaruVarde,'
      ''
      #9'SOR.Price AS Pris,'
      '  SORP.Price_SEKPerNM3,'
      '  SOR.PriceListNo,'
      '  SOR.ProductNo,'
      '  PN.Status AS PkgStatus,'
      '  PN.DateCreated AS Registrerad,'
      '  pg.ActualThicknessMM AS ATMM,'
      '  pg.ActualWidthMM  AS ABMM,'
      '  SOR.MCClassNo AS Ej_Hyvlat'
      ''
      '      FROM'
      '      dbo.SortingOrderNewPkgs SORP'
      
        '     LEFT OUTER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrder' +
        'No = SORP.SortingOrderNo'
      
        '                                    AND SOR.SortingOrderRowNo = ' +
        'SORP.SortingOrderRowNo'
      
        '     INNER JOIN dbo.PackageType P ON P.PackageTypeNo = SORP.Pack' +
        'ageTypeNo'
      ''
      
        '     Inner Join dbo.PackageNumber pn on pn.PackageNo = SORP.Pack' +
        'ageNo'
      
        '                                    AND pn.SupplierCode = SORP.S' +
        'upplierCode'
      ''
      
        '      INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo' +
        ' = p.PackageTypeNo'
      '      INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      
        '      INNER JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = PR.P' +
        'roductGroupNo'
      
        '      Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.Logic' +
        'alInventoryPointNo = SORP.OldLIPNo'
      
        '      Left Outer Join dbo.PhysicalInventoryPoint PIP on PIP.Phys' +
        'icalInventoryPointNo = LIP.PhysicalInventoryPointNo'
      '      WHERE'
      '      SORP.SortingOrderNo = :SortingOrderNo'
      ''
      '      Order By PN.DateCreated')
    Left = 152
    Top = 24
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_NewPkgsPRODUKT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUKT'
      Origin = 'Registrerad'
      Size = 100
    end
    object cds_NewPkgsANTPERLNGD: TStringField
      DisplayLabel = 'St/l'#228'ngd'
      FieldName = 'ANTPERL'#196'NGD'
      Origin = '[ANTPERL'#196'NGD]'
      Size = 255
    end
    object cds_NewPkgsPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_NewPkgsSUPPLIERCODE: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SUPPLIERCODE'
      Origin = 'SUPPLIERCODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_NewPkgsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_NewPkgsSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_NewPkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_NewPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_NewPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_NewPkgsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_NewPkgsOLDLIPNo: TIntegerField
      FieldName = 'OLDLIPNo'
      Origin = 'OLDLIPNo'
    end
    object cds_NewPkgsOLDMCClassNo: TIntegerField
      FieldName = 'OLDMCClassNo'
      Origin = 'OLDMCClassNo'
    end
    object cds_NewPkgsAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsMAXLENGTH: TFloatField
      FieldName = 'MAXLENGTH'
      Origin = 'MAXLENGTH'
      ReadOnly = True
    end
    object cds_NewPkgsMAXProductLengthNo: TIntegerField
      FieldName = 'MAXProductLengthNo'
      Origin = 'MAXProductLengthNo'
      ReadOnly = True
    end
    object cds_NewPkgsVaruVarde: TFloatField
      DisplayLabel = 'Varuv'#228'rde'
      FieldName = 'VaruVarde'
      Origin = 'VaruVarde'
      ReadOnly = True
    end
    object cds_NewPkgsPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
    end
    object cds_NewPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cds_NewPkgsPkgStatus: TIntegerField
      FieldName = 'PkgStatus'
      Origin = 'PkgStatus'
    end
    object cds_NewPkgsRegistrerad: TSQLTimeStampField
      FieldName = 'Registrerad'
      Origin = 'Registrerad'
    end
    object cds_NewPkgsATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
    end
    object cds_NewPkgsABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
    end
    object cds_NewPkgsEj_Hyvlat: TIntegerField
      FieldName = 'Ej_Hyvlat'
      Origin = 'Ej_Hyvlat'
    end
    object cds_NewPkgsPris: TFMTBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      Precision = 18
      Size = 2
    end
    object cds_NewPkgsPrice_SEKPerNM3: TFMTBCDField
      FieldName = 'Price_SEKPerNM3'
      Origin = 'Price_SEKPerNM3'
      Precision = 18
      Size = 1
    end
  end
  object sq_InsSortNewPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'INSERT'
      ''
      'INTO     dbo.SortingOrderNewPkgs'
      '         ('
      '            SortingOrderNo,'
      '            SortingOrderRowNo,'
      '            PackageNo,'
      '            SupplierCode,'
      '            Status,'
      '            OLDLIPNo,'
      '            OLDMCClassNo,'
      '            DateCreated,'
      '            CreatedUser,'
      '            PackageTypeNo'
      ''
      '         )'
      ''
      'VALUES   ('
      '            :SortingOrderNo,'
      '            :SortingOrderRowNo,'
      '            :PackageNo,'
      '            :SupplierCode,'
      '            :Status,'
      '            :OLDLIPNo,'
      '            :OLDMCClassNo,'
      '            :DateCreated,'
      '            :CreatedUser,'
      '            :PackageTypeNo'
      '                     )')
    Left = 152
    Top = 152
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERROWNO'
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
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'OLDLIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'OLDMCCLASSNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'DATECREATED'
        DataType = ftDateTime
        FDDataType = dtDateTime
        ParamType = ptInput
      end
      item
        Name = 'CREATEDUSER'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object sq_DelSortNewPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'DELETE'
      '   dbo.SortingOrderNewPkgs'
      'WHERE'
      ' SortingOrderNo = :SortingOrderNo'
      'AND   PackageNo = :PackageNo'
      'AND SupplierCode = :SupplierCode')
    Left = 152
    Top = 200
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
  object sq_VaruVardeAO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select '
      ' SUM(CASE'
      #9' WHEN SOR.PriceUnit = 2 THEN P.TotalNoOfPieces * SOR.Price'
      #9'WHEN SOR.PriceUnit = 3 THEN P.Totalm3Actual '#9'* SOR.Price'
      #9'WHEN SOR.PriceUnit = 4 THEN P.Totalm3Nominal '#9'* SOR.Price'
      #9'WHEN SOR.PriceUnit = 8 THEN P.TotalSQMofActualWidth * SOR.Price'
      
        #9'WHEN SOR.PriceUnit = 9 THEN P.TotalLinealMeterActualLength * SO' +
        'R.Price'
      #9'END ) AS VaruVarde'
      ''
      ''
      'FROM dbo.SortingOrderNewPkgs soup'
      
        'INNER JOIN dbo.SortingOrderRow SOR on SOR.SortingOrderNo = soup.' +
        'SortingOrderNo'
      #9#9#9#9'AND SOR.SortingOrderRowNo = soup.SortingOrderRowNo'
      
        'Inner Join dbo.PackageType p on p.PackageTypeNo = soup.PackageTy' +
        'peNo'
      ''
      'WHERE soup.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 48
    Top = 256
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_VaruVardeAOVaruVarde: TFloatField
      FieldName = 'VaruVarde'
      Origin = 'VaruVarde'
      ReadOnly = True
    end
  end
  object FD_GetSOOutPut: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select SUM(AM3) AS AM3, SUM(PCS) AS Styck, SUM(NM3) AS NM3, SUM(' +
        'AM1) AS AM1,'
      'SUM(ProductValue) AS ProductValue'
      'from dbo.SortingOrderOutput'
      'where SortingOrderNo = :SortingOrderNo'
      'AND ProductNo = :ProductNo')
    Left = 336
    Top = 504
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
    object FD_GetSOOutPutAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetSOOutPutStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ReadOnly = True
    end
    object FD_GetSOOutPutNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetSOOutPutAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetSOOutPutProductValue: TFMTBCDField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ReadOnly = True
      Precision = 38
      Size = 1
    end
  end
  object FD_SORawSum: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select SUM(AM3) AS AM3, SUM(Pieces) AS Styck, SUM(NM3) AS NM3, S' +
        'UM(AM1) AS AM1,'
      'SUM(ProductValue) AS ProductValue from dbo.SortOrderRawSum'
      'where SortingOrderNo = :SortingOrderNo')
    Left = 376
    Top = 368
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SORawSumAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object FD_SORawSumStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ReadOnly = True
    end
    object FD_SORawSumNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object FD_SORawSumAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
    end
    object FD_SORawSumProductValue: TFloatField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ReadOnly = True
    end
  end
  object FD_GetProductValue: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select SUM(AM3) AS AM3, SUM(PCS) AS Styck, SUM(NM3) AS NM3, SUM(' +
        'AM1) AS AM1,'
      'SUM(ProductValue) AS ProductValue'
      'from dbo.SortingOrderOutput'
      'where SortingOrderNo = :SortingOrderNo'
      'AND ProductNo > 0')
    Left = 336
    Top = 560
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_GetProductValueAM3: TFMTBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetProductValueStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ReadOnly = True
    end
    object FD_GetProductValueNM3: TFMTBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetProductValueAM1: TFMTBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object FD_GetProductValueProductValue: TFMTBCDField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ReadOnly = True
      Precision = 38
      Size = 1
    end
  end
  object sq_PkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'PR.ProductDisplayName'#9#9'AS'#9'PRODUKT,'
      'ptl.pcsperlength '#9#9'AS '#9'ANTPERL'#196'NGD,'
      'PN.PackageNo'#9#9#9'AS'#9'PAKETNR,'
      'PN.SUPPLIERCODE'#9#9#9'AS '#9'LEVKOD,'
      'P.TotalAM3'#9#9#9'AS '#9'AM3,'
      'P.TotalNM3'#9#9#9'AS '#9'NM3,'
      'P.TotalPcs'#9#9#9'AS'#9'STYCK,'
      'P.TotalMFBM              '#9'AS      MFBM,'
      'P.PackageTypeNo,'
      'PN.LIPNo'
      ''
      ''
      'FROM'
      'dbo.PackageNumber pn'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = PN.PackageTy' +
        'peNo'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'Inner Join dbo.LIP on LIP.LIPNo = pn.LIPNo'
      'Inner Join dbo.PIP on PIP.PIPNo = LIP.PIPNo'
      'WHERE'
      'pn.packageno = :packageno'
      'AND pn.SupplierCode = :SupplierCode'
      'AND PIP.PIPNo = :PIPNo')
    Left = 248
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
      end
      item
        Name = 'PIPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object sq_DEL_SplitPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      '  Delete dbo.SortingOrderSplitPkgs'
      '  WHERE SortingOrderNo = :SortingOrderNo'
      '  AND NewPackageNo = :NewPkgNo'
      '  AND NewSupplierCode = :NewPrefix')
    Left = 360
    Top = 160
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
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
  object sq_OneUniquePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'                AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'              AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal               AS M3_NOM,'
      '      '#9'PT.TotalSQMofActualWidth        AS KVM,'
      #9'      PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      '        Cy.CityName                     AS INVENTORY,'
      '        PT.OnSticks                     AS ONSTICKS,'
      '        PTL.PcsPerLength                AS PCS_PER_LENGTH,'
      '        C.ClientName                    AS OWNER,'
      '        PIP.OwnerNo                     AS OWNERNO,'
      '        PN.LogicalInventoryPointNo      AS LOG_INVENTORY_NO,'
      '        BC.BARCODE                      AS BAR_CODE,'
      '        PT.BarCodeID                    AS BARCODE_ID,'
      '        GS.GradeStamp                   AS GRADE_STAMP,'
      '        PT.GradeStamp                   AS GRADESTAMPNO,'
      '        PT.PackageHeight                AS PKG_HEIGHT,'
      '        PT.PackageWidth                 AS PKGWIDTH,'
      '        PT.MiniBundled                  AS MINI_BUNDLE,'
      '        PT.ShrinkWrap                   AS SHRINK_WRAP,'
      '        WT.WrapType                     AS WRAP_TYPE,'
      '        PT.WrapType                     AS WRAPTYPENO,'
      '        PN.SupplierNo                   AS SUPPLIERNO,'
      '        PN.PackageTypeNo'#9'              AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        0                               AS MCClassNo,'
      '        '#39#39'                              AS ExLog,'
      '        0                               AS TypeOfLog,'
      '        pr.productgroupno,'
      '        0                               AS PcsPerBundle,'
      '        0                               AS BundlesPerPkg,'
      '        PN.LogicalInventoryPointNo      AS OLDLIPNo,'
      '        0                               AS OLDMCClassNo,'
      '        PG.NominalThicknessMM           AS NTMM,'
      '        PG.NominalWidthMM               AS NBMM,'
      '        PG.ActualThicknessMM            AS ATMM,'
      '        PG.ActualWidthMM                AS ABMM,'
      '        PG.SpeciesNo,'
      '        PG.SurfacingNo,'
      '        PG.ProductCategoryNo            AS IMPNo,'
      '        Pr.GradeNo'
      ''
      ''
      'FROM  dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      
        '        Inner Join dbo.LogicalInventoryPoint LIP ON LIP.LogicalI' +
        'nventoryPointNo = PN.LogicalInventoryPointNo'
      
        '        Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.Physica' +
        'lInventoryPointNo = LIP.PhysicalInventoryPointNo'
      
        '        Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNa' +
        'meNo'
      '        Inner Join dbo.Client C ON C.ClientNo = PIP.OwnerNo'
      
        '        LEFT OUTER JOIN DBO.BARCODE BC ON BC.BarCodeNo = PT.BarC' +
        'odeID'
      
        '        LEFT OUTER JOIN DBO.GRADESTAMP GS ON GS.GradeStampNo = P' +
        'T.GradeStamp'
      
        '        LEFT OUTER JOIN DBO.WrapType WT ON WT.WrapTypeNo = PT.Wr' +
        'apType'
      ''
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND PN.Status = :Status'
      'AND PIP.OwnerNo = :OwnerNo')
    Left = 360
    Top = 112
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
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_OneUniquePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 100
    end
    object sq_OneUniquePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
      Origin = 'PACKAGENO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_OneUniquePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sq_OneUniquePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object sq_OneUniquePkgPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
    end
    object sq_OneUniquePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object sq_OneUniquePkgKVM: TFloatField
      FieldName = 'KVM'
      Origin = 'KVM'
    end
    object sq_OneUniquePkgLOPM: TFloatField
      FieldName = 'LOPM'
      Origin = 'LOPM'
    end
    object sq_OneUniquePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
      Origin = 'PRODUCTNO'
    end
    object sq_OneUniquePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
    object sq_OneUniquePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Origin = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgOWNER: TStringField
      FieldName = 'OWNER'
      Origin = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
      Origin = 'OWNERNO'
    end
    object sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
      Origin = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Origin = 'BAR_CODE'
      FixedChar = True
    end
    object sq_OneUniquePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
      Origin = 'BARCODE_ID'
    end
    object sq_OneUniquePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
      Origin = 'GRADE_STAMP'
      FixedChar = True
    end
    object sq_OneUniquePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
      Origin = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgWRAP_TYPE: TStringField
      FieldName = 'WRAP_TYPE'
      Origin = 'WRAP_TYPE'
      FixedChar = True
      Size = 15
    end
    object sq_OneUniquePkgWRAPTYPENO: TIntegerField
      FieldName = 'WRAPTYPENO'
      Origin = 'WRAPTYPENO'
    end
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ReadOnly = True
      Required = True
    end
    object sq_OneUniquePkgExLog: TStringField
      FieldName = 'ExLog'
      Origin = 'ExLog'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sq_OneUniquePkgTypeOfLog: TIntegerField
      FieldName = 'TypeOfLog'
      Origin = 'TypeOfLog'
      ReadOnly = True
      Required = True
    end
    object sq_OneUniquePkgproductgroupno: TIntegerField
      FieldName = 'productgroupno'
      Origin = 'productgroupno'
      Required = True
    end
    object sq_OneUniquePkgPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
    end
    object sq_OneUniquePkgPcsPerBundle: TIntegerField
      FieldName = 'PcsPerBundle'
      Origin = 'PcsPerBundle'
      ReadOnly = True
      Required = True
    end
    object sq_OneUniquePkgBundlesPerPkg: TIntegerField
      FieldName = 'BundlesPerPkg'
      Origin = 'BundlesPerPkg'
      ReadOnly = True
      Required = True
    end
    object sq_OneUniquePkgOLDLIPNo: TIntegerField
      FieldName = 'OLDLIPNo'
      Origin = 'OLDLIPNo'
    end
    object sq_OneUniquePkgOLDMCClassNo: TIntegerField
      FieldName = 'OLDMCClassNo'
      Origin = 'OLDMCClassNo'
      ReadOnly = True
      Required = True
    end
    object sq_OneUniquePkgNTMM: TFloatField
      FieldName = 'NTMM'
      Origin = 'NTMM'
    end
    object sq_OneUniquePkgNBMM: TFloatField
      FieldName = 'NBMM'
      Origin = 'NBMM'
    end
    object sq_OneUniquePkgATMM: TFloatField
      FieldName = 'ATMM'
      Origin = 'ATMM'
    end
    object sq_OneUniquePkgABMM: TFloatField
      FieldName = 'ABMM'
      Origin = 'ABMM'
    end
    object sq_OneUniquePkgSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
    end
    object sq_OneUniquePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_OneUniquePkgIMPNo: TIntegerField
      FieldName = 'IMPNo'
      Origin = 'IMPNo'
    end
    object sq_OneUniquePkgGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      Required = True
    end
  end
  object sq_ReinstateSplitPkg: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.PackageNumber'
      'Set PackageTypeNo = dbo.SortingOrderSplitPkgs.PackageTypeNo,'
      'Status = 0'
      'FROM dbo.SortingOrderSplitPkgs '
      
        'Inner Join dbo.PackageNumber on dbo.PackageNumber.PackageNo = db' +
        'o.SortingOrderSplitPkgs.PackageNo'
      
        #9#9#9#9#9#9#9'AND dbo.PackageNumber.SupplierCode = dbo.SortingOrderSpli' +
        'tPkgs.SupplierCode '
      'Where '
      'dbo.SortingOrderSplitPkgs.NewPackageNo = :NewPackageNo'
      'AND dbo.SortingOrderSplitPkgs.NewSupplierCode = :NewSupplierCode'
      'AND dbo.SortingOrderSplitPkgs.SortingOrderNo = :SortingOrderNo'
      '')
    Left = 672
    Top = 464
    ParamData = <
      item
        Name = 'NEWPACKAGENO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'NEWSUPPLIERCODE'
        DataType = ftString
        FDDataType = dtByteString
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object cdsProdLength: TFDQuery
    CachedUpdates = True
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
      'AND PL.ActualLengthMM > 0.1')
    Left = 840
    Top = 24
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cdsProdLengthAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthAM1: TBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
      Precision = 1
      Size = 1
    end
    object cdsProdLengthGroupNo: TIntegerField
      FieldName = 'GroupNo'
      Origin = 'GroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdLengthSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cdsProdLengthproductLengthno: TIntegerField
      FieldName = 'productLengthno'
      Origin = 'productLengthno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
    object cdsProdLengthNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      ReadOnly = True
    end
    object cdsProdLengthFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
    end
    object cdsProdLengthTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      FixedChar = True
      Size = 15
    end
    object cdsProdLengthPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cdsProdLengthFJ: TIntegerField
      FieldName = 'FJ'
      Origin = 'FJ'
    end
  end
  object cdsLengthGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select GroupNo, GroupName FROM dbo.ProductLengthGroupName')
    Left = 936
    Top = 24
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
  object sq_PkgInLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.ShippingPlanNo AS LO'
      'FROM'
      'dbo.Loaddetail LD'
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode')
    Left = 64
    Top = 472
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
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
      Origin = 'LO'
      Required = True
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
  end
  object sqTotUsed: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SUM(P.Totalm3Actual)'#9#9'  '#9'AS '#9'AM3,'
      'SUM(P.Totalm3Nominal)'#9'  '#9#9'AS '#9'NM3,'
      'SUM(P.TotalNoOfPieces) '#9#9#9'AS'#9'STYCK,'
      'SUM(P.TotalMFBMNominal)    '#9'AS  MFBM,'
      'SUM(P.TotalLinealMeterActualLength)      AS  M1AL'
      ''
      ''
      'FROM'
      'dbo.SortingOrderUsedPkgs SORP'
      ''
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = SORP.Package' +
        'TypeNo'
      ''
      ''
      'WHERE'
      'SORP.SortingOrderNo = :SortingOrderNo')
    Left = 256
    Top = 288
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sqTotUsedAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object sqTotUsedNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object sqTotUsedSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object sqTotUsedMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
    end
    object sqTotUsedM1AL: TFloatField
      FieldName = 'M1AL'
      Origin = 'M1AL'
      ReadOnly = True
    end
  end
  object sqTotProd: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SUM(P.Totalm3Actual)'#9#9'  '#9'AS '#9'AM3,'
      'SUM(P.Totalm3Nominal)'#9'  '#9#9'AS '#9'NM3,'
      'SUM(P.TotalNoOfPieces) '#9#9#9'AS'#9'STYCK,'
      'SUM(P.TotalMFBMNominal)    '#9'AS  MFBM,'
      'SUM(P.TotalLinealMeterActualLength)      AS  M1AL'
      ''
      ''
      'FROM'
      'dbo.SortingOrderNewPkgs SORP'
      
        'INNER JOIN dbo.PackageType P'#9#9'ON '#9'P.PackageTypeNo = SORP.Package' +
        'TypeNo'
      ''
      ''
      'WHERE'
      'SORP.SortingOrderNo = :SortingOrderNo')
    Left = 256
    Top = 344
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sqTotProdAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object sqTotProdNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object sqTotProdSTYCK: TIntegerField
      FieldName = 'STYCK'
      Origin = 'STYCK'
      ReadOnly = True
    end
    object sqTotProdMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
    end
    object sqTotProdM1AL: TFloatField
      FieldName = 'M1AL'
      Origin = 'M1AL'
      ReadOnly = True
    end
  end
  object sq_PkgCosts: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select svp.SortingOrderNo,'
      '-1 * SUM(svp.ProductValue) AS KOSTNAD'
      'FROM  dbo.SortOrderRawSum svp'
      'WHERE svp.SortingOrderNo = :SortingOrderNo'
      'GROUP BY svp.SortingOrderNo')
    Left = 256
    Top = 400
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_PkgCostsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_PkgCostsKOSTNAD: TFloatField
      FieldName = 'KOSTNAD'
      Origin = 'KOSTNAD'
      ReadOnly = True
    end
  end
  object sp_DeletePackage: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_DelPkgFromSystem_II'
    Left = 512
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
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@ShiftNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgInfo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.wm_1PkgInfo'
    Left = 512
    Top = 64
  end
  object sp_RegretDeReg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.Vis_CnclAvreg'
    Left = 512
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
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LIPNo'
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
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_RemovePackageFromInventory: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_AvRegPkg_1a'
    Left = 512
    Top = 160
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
      end
      item
        Position = 4
        Name = '@RegistrationPointNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LogicalInventoryPointNo'
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
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@MatPunktAgareNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@ShiftTeamNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_AvregPareg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_AvregPareg'
    Left = 512
    Top = 224
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
        Name = '@LIPNo'
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
  object sp_RgrAvregPareg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_RgrAvregPareg'
    Left = 512
    Top = 280
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
        Name = '@LIPNo'
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
      end>
  end
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_Populate_One_PackageTypeLengths'
    Left = 512
    Top = 336
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
  object sp_PackageTypes: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_PkgType'
    Left = 672
    Top = 16
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
    Left = 672
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
    Left = 672
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
    Left = 672
    Top = 160
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
  object sp_NewSplitPkg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_SONewSplitPkg'
    Left = 672
    Top = 224
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
      end>
  end
  object sp_PackageTotals: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_PackageTotals'
    Left = 672
    Top = 280
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
  object sp_SOUpdOldSplit: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_SOUpdOldSplit'
    Left = 672
    Top = 336
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
      end
      item
        Position = 12
        Name = '@RunNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_OnePackageNo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_OnePackageNo'
    Left = 672
    Top = 384
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
  object sq_GetPriceOfPriceList: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      ''
      
        'Select dbo.VIS_GetPriceFloat_II( :LoadedDate, :PriceListNo, :Pro' +
        'ductNo, :ProductLengthNo, :SupplierNo)')
    Left = 832
    Top = 264
    ParamData = <
      item
        Name = 'LOADEDDATE'
        DataType = ftDateTime
        FDDataType = dtDateTime
        ParamType = ptInput
      end
      item
        Name = 'PRICELISTNO'
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
        Name = 'PRODUCTLENGTHNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object sq_GetPriceOfPriceListUnnamed1: TFloatField
      FieldName = 'Unnamed1'
      Origin = 'Unnamed1'
      ReadOnly = True
    end
  end
  object FD_insMissingRawMtrl: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      #9'declare @RawMtrlNo int,'
      #9#9#9'@SortingOrderNo int'
      'declare @AutoInc int'
      #9
      ''
      #9'SET @RawMtrlNo = 0'
      ''
      'Declare @SortingOrderRawMtrl TABLE ('
      #9'[SortingOrderNo] [int] NOT NULL,'
      #9'[RawMtrlNo] [int] NOT NULL,'
      #9'[ProductNo] [int] NULL,'
      #9'[MCClassNo] [int] NULL,'
      #9'[PlannedAM3] [decimal](18, 3) NULL,'
      #9'[PlannedPcs] [int] NULL,'
      #9'[ProgramNo] [int] NULL,'
      #9'[DateCreated] [datetime] NULL,'
      #9'[ModifiedUser] [int] NULL,'
      #9'[KassationStyck] [int] NULL,'
      #9'[KassationAM3] [decimal](18, 3) NULL,'
      #9'[AvgLength] [decimal](18, 3) NULL,'
      
        #9'[LengthDescription] [varchar](100) COLLATE SQL_Latin1_General_C' +
        'P1_CI_AS NULL,'
      #9'[PlannedAM1] [decimal](18, 3) NULL,'
      #9'[CreatedUser] [int] NULL,'
      #9'[AntalBitarUt] [int] NULL,'
      #9'[PercentPcsOfTotal] [decimal](18, 5) NULL,'
      #9'[KassationAM1] [decimal](18, 3) NULL,'
      #9'[TrimAM1] [decimal](18, 5) NULL,'
      #9'[TrimAM3] [decimal](18, 5) NULL,'
      #9'[MainRawMtrl] [int] NULL,'
      #9'[RealLPM] [decimal](18, 3) NULL,'
      #9'[ProductLengthNo] [int] NULL,'
      #9'[AntalKapSnitt] [int] NULL,'
      #9'[AntalLamellerUt] [int] NULL,'
      #9'[UrlaggsProcent] [decimal](18, 2) NULL,'
      #9'[aPcs] [int] NULL,'
      #9'[aAM1] [decimal](18, 3) NULL,'
      #9'AUTOINC int identity(1, 1))'
      ''
      ''
      'Insert into @SortingOrderRawMtrl'
      ''
      'Select distinct sop.SortingOrderNo, '
      '@RawMtrlNo,'
      'pt.ProductNo,'
      'null,'
      'null,'
      'null,'
      'null,'
      'GetDate(), '
      '8,'
      '0, --KassationStyck'
      '0,'
      'null,'
      #39#39','
      '0,'
      '8, --CreatedUser'
      '0,'
      '0,--PercentPcsOfTotal'
      '0,'
      '0,'
      '0, --TrimAM3'
      '1, --MainRawMtrl'
      '0, --RealLPM'
      '453, --ProductLengthNo'
      '0,'
      '1,'
      '0,--UrlaggsProcent'
      '0,'
      '0'
      'from dbo.SortingOrderUsedPkgs sop'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = sop.PackageT' +
        'ypeNo'
      'where sop.SortingOrderNo = :SortingOrderNo'
      'and pt.ProductNo not in (Select som.ProductNo'
      'FROM dbo.SortingOrderRawMtrl som'
      'WHERE som.SortingOrderNo = sop.SortingOrderNo)'
      ''
      
        'Select @SortingOrderNo = SortingOrderNo FROM dbo.SortingOrder wh' +
        'ere SortingOrderNo = :SortingOrderNo'
      ''
      ''
      #9'select @AutoInc=Min(AutoInc) from @SortingOrderRawMtrl'
      #9'while @AutoInc is not null'
      #9'begin'
      
        #9' exec vida_GetSecondNo '#39'SortingOrderRawMtrl'#39', @SortingOrderNo, ' +
        '@RawMtrlNo OutPut'
      ''
      ''
      #9#9'update @SortingOrderRawMtrl'
      #9#9#9'set '#9'RawMtrlNo = @RawMtrlNo'
      #9#9#9'where AutoInc = @AutoInc'
      ''
      ''
      ''
      ''
      
        #9#9'select @AutoInc=Min(AutoInc) from @SortingOrderRawMtrl where A' +
        'utoInc > @AutoInc'
      #9'end'
      ''
      ''
      'INSERT INTO [vis_vida].[dbo].[SortingOrderRawMtrl]'
      '           ([SortingOrderNo]'
      '           ,[RawMtrlNo]'
      '           ,[ProductNo]'
      '           ,[MCClassNo]'
      '           ,[PlannedAM3]'
      '           ,[PlannedPcs]'
      '           ,[ProgramNo]'
      '           ,[DateCreated]'
      '           ,[ModifiedUser]'
      '           ,[KassationStyck]'
      '           ,[KassationAM3]'
      '           ,[AvgLength]'
      '           ,[LengthDescription]'
      '           ,[PlannedAM1]'
      '           ,[CreatedUser]'
      '           ,[AntalBitarUt]'
      '           ,[PercentPcsOfTotal]'
      '           ,[KassationAM1]'
      '           ,[TrimAM1]'
      '           ,[TrimAM3]'
      '           ,[MainRawMtrl]'
      '           ,[RealLPM]'
      '           ,[ProductLengthNo]'
      '           ,[AntalKapSnitt]'
      '           ,[AntalLamellerUt]'
      '           ,[UrlaggsProcent]'
      '           ,[aPcs]'
      '           ,[aAM1])'
      ''
      'Select SortingOrderNo,'
      'RawMtrlNo,'
      'ProductNo,'
      'MCClassNo,'
      'PlannedAM3,'
      'PlannedPcs,'
      'ProgramNo,'
      'DateCreated,'
      'ModifiedUser,'
      'KassationStyck,'
      'KassationAM3,'
      'AvgLength,'
      'LengthDescription,'
      'PlannedAM1,'
      'CreatedUser,'
      'AntalBitarUt,'
      'PercentPcsOfTotal,'
      'KassationAM1,'
      'TrimAM1,'
      'TrimAM3,'
      'MainRawMtrl,'
      'RealLPM,'
      'ProductLengthNo,'
      'AntalKapSnitt,'
      'AntalLamellerUt,'
      'UrlaggsProcent,'
      'aPcs,'
      'aAM1'
      ''
      'from @SortingOrderRawMtrl'
      'where ProductNo not in (Select som.ProductNo'
      'FROM dbo.SortingOrderRawMtrl som'
      'WHERE som.SortingOrderNo = @SortingOrderNo)'
      ''
      ''
      ''
      ''
      '-- Select * from @SortingOrderRawMtrl')
    Left = 520
    Top = 488
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
  object FD_SORawSumNoOmSort: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SUM(dbo.SortOrderRawSum.AM3) AS AM3,'
      'SUM(dbo.SortOrderRawSum.Pieces) AS Styck,'
      'SUM(dbo.SortOrderRawSum.NM3) AS NM3,'
      'SUM(dbo.SortOrderRawSum.AM1) AS AM1,'
      'SUM(dbo.SortOrderRawSum.ProductValue) AS ProductValue'
      'FROM dbo.SortOrderRawSum'
      
        'Inner Join dbo.SortingOrderRawMtrl sorm on sorm.SortingOrderNo =' +
        ' dbo.SortOrderRawSum.SortingOrderNo'
      'and sorm.RawMtrlNo = dbo.SortOrderRawSum.RawMtrlNo'
      'where dbo.SortOrderRawSum.SortingOrderNo = :SortingOrderNo'
      'and (sorm.ExcludeFromTotal = 0'
      'or sorm.ExcludeFromTotal is null)')
    Left = 376
    Top = 424
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object FD_SORawSumNoOmSortAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ReadOnly = True
    end
    object FD_SORawSumNoOmSortStyck: TIntegerField
      FieldName = 'Styck'
      Origin = 'Styck'
      ReadOnly = True
    end
    object FD_SORawSumNoOmSortNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object FD_SORawSumNoOmSortAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ReadOnly = True
    end
    object FD_SORawSumNoOmSortProductValue: TFloatField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ReadOnly = True
    end
  end
  object siLangLinked_dm_PkgWorkOrder: TsiLangLinked
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
    Left = 520
    Top = 576
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F004E006500770050006B0067007300410042004D004D00010041004200
      4D004D0001000100010001000D000A006300640073005F004E00650077005000
      6B006700730041004D003100010041004D00310001000100010001000D000A00
      6300640073005F004E006500770050006B006700730041004D00330001004100
      4D00330001000100010001000D000A006300640073005F004E00650077005000
      6B006700730041004E0054005000450052004C004E0047004400010053007400
      2F006C00E4006E0067006400010053007400790063006B002F006C00E4006E00
      6700640001005000630073002F006C0065006E00670074006800010053007400
      790063006B002F006C00E4006E006700640001000D000A006300640073005F00
      4E006500770050006B0067007300410054004D004D000100410054004D004D00
      01000100010001000D000A006300640073005F004E006500770050006B006700
      730045006A005F004800790076006C0061007400010045006A005F0048007900
      76006C006100740001000100010001000D000A006300640073005F004E006500
      770050006B00670073004C00490050004E006F0001004C00490050004E006F00
      01000100010001000D000A006300640073005F004E006500770050006B006700
      73004D00410058004C0045004E0047005400480001004D00410058004C004500
      4E0047005400480001000100010001000D000A006300640073005F004E006500
      770050006B00670073004D0041005800500072006F0064007500630074004C00
      65006E006700740068004E006F0001004D0041005800500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      6300640073005F004E006500770050006B00670073004D00460042004D000100
      4D00460042004D00010001004D00460042004D00010001000D000A0063006400
      73005F004E006500770050006B00670073004E004D00330001004E004D003300
      010001004E004D003300010001000D000A006300640073005F004E0065007700
      50006B00670073004F004C0044004C00490050004E006F0001004F004C004400
      4C00490050004E006F0001000100010001000D000A006300640073005F004E00
      6500770050006B00670073004F004C0044004D00430043006C00610073007300
      4E006F0001004F004C0044004D00430043006C006100730073004E006F000100
      0100010001000D000A006300640073005F004E006500770050006B0067007300
      5000610063006B006100670065004E006F000100500061006B00650074006E00
      72000100500061006B00650074004E007200010050006B0067004E006F000100
      500061006C006C004E00720001000D000A006300640073005F004E0065007700
      50006B00670073005000610063006B0061006700650054007900700065004E00
      6F0001005000610063006B0061006700650054007900700065004E006F000100
      0100010001000D000A006300640073005F004E006500770050006B0067007300
      50006B006700530074006100740075007300010050006B006700530074006100
      74007500730001000100010001000D000A006300640073005F004E0065007700
      50006B0067007300500072006900630065004C006900730074004E006F000100
      500072006900630065004C006900730074004E006F0001000100010001000D00
      0A006300640073005F004E006500770050006B0067007300500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F004E006500770050006B0067007300
      500052004F00440055004B0054000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006300640073005F00
      4E006500770050006B0067007300520065006700690073007400720065007200
      6100640001005200650067006900730074007200650072006100640001000100
      5200650067006900730074006500720065006400010001000D000A0063006400
      73005F004E006500770050006B006700730053006F007200740069006E006700
      4F0072006400650072004E006F00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A006300640073005F00
      4E006500770050006B006700730053006F007200740069006E0067004F007200
      64006500720052006F0077004E006F00010053006F007200740069006E006700
      4F00720064006500720052006F0077004E006F0001000100010001000D000A00
      6300640073005F004E006500770050006B006700730053007400610074007500
      7300010053007400610074007500730001000100530074006100740075007300
      010001000D000A006300640073005F004E006500770050006B00670073005300
      5400590043004B00010053007400790063006B00010001005000630073000100
      5300E40063006B0001000D000A006300640073005F004E006500770050006B00
      6700730053005500500050004C0049004500520043004F004400450001005000
      7200650066006900780001000100500072006500660069007800010001000D00
      0A006300640073005F004E006500770050006B00670073005600610072007500
      56006100720064006500010056006100720075007600E4007200640065000100
      0100560061006C0075006500200077006900740068006F007500740020006600
      720065006900670068007400010001000D000A006300640073005F0055007300
      6500640050006B006700730041004D003100010041004D003100010001000100
      01000D000A006300640073005F00550073006500640050006B00670073004100
      4D003300010041004D00330001000100010001000D000A006300640073005F00
      550073006500640050006B006700730041004E0054005000450052004C004E00
      470044000100530074002F006C00E4006E006700640001005300740079006300
      6B002F006C00E4006E006700640001005000630073002F006C0065006E006700
      74006800010053007400790063006B002F006C00E4006E006700640001000D00
      0A006300640073005F00550073006500640050006B0067007300410076005200
      6500670050006B0074004E00720001004100760052006500670050006B007400
      4E00720001000100010001000D000A006300640073005F005500730065006400
      50006B0067007300410076005200650067005000720065006600690078000100
      4100760052006500670050007200650066006900780001000100010001000D00
      0A006300640073005F00550073006500640050006B00670073004C0045005600
      4B004F0044000100500072006500660069007800010001005000720065006600
      69007800010001000D000A006300640073005F00550073006500640050006B00
      670073004C00490050004E006F0001004C00490050004E006F00010001000100
      01000D000A006300640073005F00550073006500640050006B00670073004D00
      410058004C0045004E0047005400480001004D00410058004C0045004E004700
      5400480001000100010001000D000A006300640073005F005500730065006400
      50006B00670073004D00460042004D0001004D00460042004D00010001004D00
      460042004D00010001000D000A006300640073005F0055007300650064005000
      6B00670073004E004D00330001004E004D003300010001004E004D0033000100
      01000D000A006300640073005F00550073006500640050006B00670073004F00
      6C0064005000610063006B006100670065004E006F0001004F006C0064005000
      610063006B006100670065004E006F0001000100010001000D000A0063006400
      73005F00550073006500640050006B00670073004F006C006400500061006300
      6B0061006700650054007900700065004E006F0001004F006C00640050006100
      63006B0061006700650054007900700065004E006F0001000100010001000D00
      0A006300640073005F00550073006500640050006B00670073004F006C006400
      53007500700070006C0069006500720043006F006400650001004F006C006400
      53007500700070006C0069006500720043006F00640065000100010001000100
      0D000A006300640073005F00550073006500640050006B006700730050006100
      63006B0061006700650054007900700065004E006F0001005000610063006B00
      61006700650054007900700065004E006F0001000100010001000D000A006300
      640073005F00550073006500640050006B0067007300500041004B0045005400
      4E0052000100500061006B00650074006E0072000100500061006B0065007400
      4E007200010050006B0067004E006F000100500061006C006C004E0072000100
      0D000A006300640073005F00550073006500640050006B006700730050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A006300640073005F0055007300650064005000
      6B0067007300500052004F00440055004B0054000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006300
      640073005F00550073006500640050006B006700730052006500670069007300
      7400720065007200610064000100520065006700690073007400720065007200
      6100640001000100520065006700690073007400650072006500640001000100
      0D000A006300640073005F00550073006500640050006B006700730053006F00
      7200740069006E0067004F0072006400650072004E006F00010053006F007200
      740069006E0067004F0072006400650072004E006F0001000100010001000D00
      0A006300640073005F00550073006500640050006B0067007300530054005900
      43004B00010053007400790063006B000100010050006300730001005300E400
      63006B0001000D000A006300640073004C0065006E0067007400680047007200
      6F0075007000470072006F00750070004E0061006D0065000100470072006F00
      750070004E0061006D00650001000100010001000D000A006300640073004C00
      65006E00670074006800470072006F0075007000470072006F00750070004E00
      6F000100470072006F00750070004E006F0001000100010001000D000A006300
      64007300500072006F0064004C0065006E0067007400680041004C004D004D00
      010041004C004D004D0001000100010001000D000A0063006400730050007200
      6F0064004C0065006E0067007400680041004D003100010041004D0031000100
      0100010001000D000A00630064007300500072006F0064004C0065006E006700
      7400680041004D003300010041004D00330001000100010001000D000A006300
      64007300500072006F0064004C0065006E0067007400680046004A0001004600
      4A0001000100010001000D000A00630064007300500072006F0064004C006500
      6E0067007400680046004F005400010046004F0054000100010046004F004F00
      5400010001000D000A00630064007300500072006F0064004C0065006E006700
      74006800470072006F00750070004E006F000100470072006F00750070004E00
      6F0001000100010001000D000A00630064007300500072006F0064004C006500
      6E006700740068004E004C004D004D0001004E004C004D004D00010001004E00
      4C004D004D00010001000D000A00630064007300500072006F0064004C006500
      6E00670074006800500045005400010050004500540001000100010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680070007200
      6F0064007500630074004C0065006E006700740068006E006F00010070007200
      6F0064007500630074004C0065006E006700740068006E006F00010001000100
      01000D000A00630064007300500072006F0064004C0065006E00670074006800
      53005400590043004B00010053005400590043004B0001000100500043005300
      01005300C40043004B0001000D000A00630064007300500072006F0064004C00
      65006E00670074006800540055004D000100540055004D000100010049004E00
      43004800010001000D000A006D0074004C006F00610064005000610063006B00
      6100670065007300410042000100410042000100010041005700010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004100
      54000100410054000100010041005400010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073004200410052005F0043004F00
      4400450001004200410052005F0043004F004400450001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004200
      4100520043004F00440045005F0049004400010042004100520043004F004400
      45005F004900440001000100010001000D000A006D0074004C006F0061006400
      5000610063006B006100670065007300420075006E0064006C00650073005000
      6500720050006B0067000100420075006E0064006C0065007300500065007200
      50006B00670001000100010001000D000A006D0074004C006F00610064005000
      610063006B006100670065007300450078004C006F0067000100450078004C00
      6F00670001000100010001000D000A006D0074004C006F006100640050006100
      63006B006100670065007300470052004100440045005F005300540041004D00
      50000100470052004100440045005F005300540041004D005000010001000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      7300470072006100640065004E006F000100470072006100640065004E006F00
      01000100010001000D000A006D0074004C006F00610064005000610063006B00
      6100670065007300470052004100440045005300540041004D0050004E004F00
      0100470052004100440045005300540041004D0050004E004F00010001000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      730049004D0050004E006F00010049004D0050004E006F000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      49004E00560045004E0054004F0052005900010049004E00560045004E005400
      4F0052005900010049004E00560045004E0054004500520049004E0047000100
      010049004E00560045004E0054004500520049004E00470001000D000A006D00
      74004C006F00610064005000610063006B0061006700650073004B0056004D00
      01004B0056004D00010001004D003200010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073004C006F006100640044006500
      7400610069006C004E006F0001004C006F006100640044006500740061006900
      6C004E006F0001000100010001000D000A006D0074004C006F00610064005000
      610063006B0061006700650073004C004F0047005F0049004E00560045004E00
      54004F00520059005F004E004F0001004C004F0047005F0049004E0056004500
      4E0054004F00520059005F004E004F0001000100010001000D000A006D007400
      4C006F00610064005000610063006B0061006700650073004C004F0050004D00
      01004C004F0050004D0001000100010001000D000A006D0074004C006F006100
      64005000610063006B0061006700650073004D0033005F004E00450054000100
      4D0033005F004E004500540001000100010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073004D0033005F004E004F004D00
      01004D0033005F004E004F004D0001000100010001000D000A006D0074004C00
      6F00610064005000610063006B0061006700650073004D00430043006C006100
      730073004E006F0001004D00430043006C006100730073004E006F0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      650073004E0042004D004D0001004E0042004D004D0001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004E00
      54004D004D0001004E0054004D004D0001000100010001000D000A006D007400
      4C006F00610064005000610063006B0061006700650073004F006C0064005F00
      5000610063006B0061006700650054007900700065004E006F0001004F006C00
      64005F005000610063006B0061006700650054007900700065004E006F000100
      0100010001000D000A006D0074004C006F00610064005000610063006B006100
      6700650073004F006C0064004C00490050004E006F0001004F006C0064004C00
      490050004E006F0001000100010001000D000A006D0074004C006F0061006400
      5000610063006B0061006700650073004F004C0044004D00430043006C006100
      730073004E006F0001004F004C0044004D00430043006C006100730073004E00
      6F0001000100010001000D000A006D0074004C006F0061006400500061006300
      6B0061006700650073004F004C004400500072006F0064007500630074004E00
      6F0001004F004C004400500072006F0064007500630074004E006F0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      650073004F004E005F0053005400490043004B00530001004F004E005F005300
      5400490043004B00530001000100010001000D000A006D0074004C006F006100
      64005000610063006B0061006700650073004F0057004E004500520001004F00
      57004E004500520001000100010001000D000A006D0074004C006F0061006400
      5000610063006B0061006700650073004F0057004E00450052004E004F000100
      4F0057004E00450052004E004F0001000100010001000D000A006D0074004C00
      6F00610064005000610063006B0061006700650073005000410043004B004100
      470045004E004F0001005000410043004B004100470045004E004F0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      650073005000410043004B0041004700450054005900500045004E004F000100
      5000410043004B0041004700450054005900500045004E004F00010001000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      7300500043005300010050004300530001000100010001000D000A006D007400
      4C006F00610064005000610063006B0061006700650073005000430053005F00
      5000450052005F004C0045004E0047005400480001005000430053005F005000
      450052005F004C0045004E0047005400480001000100010001000D000A006D00
      74004C006F00610064005000610063006B006100670065007300500063007300
      500065007200420075006E0064006C0065000100500063007300500065007200
      420075006E0064006C00650001000100010001000D000A006D0074004C006F00
      610064005000610063006B006100670065007300500049005000010050004900
      500001000100010001000D000A006D0074004C006F0061006400500061006300
      6B006100670065007300500052004F0044005500430054000100500052004F00
      440055004300540001000100010001000D000A006D0074004C006F0061006400
      5000610063006B006100670065007300500072006F0064007500630074004700
      72006F00750070004E006F000100500072006F00640075006300740047007200
      6F00750070004E006F0001000100010001000D000A006D0074004C006F006100
      64005000610063006B006100670065007300500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      53007000650063006900650073004E006F000100530070006500630069006500
      73004E006F0001000100010001000D000A006D0074004C006F00610064005000
      610063006B00610067006500730053005500500050005F0043004F0044004500
      010053005500500050005F0043004F004400450001000100010001000D000A00
      6D0074004C006F00610064005000610063006B00610067006500730053005500
      500050004C004900450052004E004F00010053005500500050004C0049004500
      52004E004F0001000100010001000D000A006D0074004C006F00610064005000
      610063006B00610067006500730053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      6500730054007900700065004F0066004C006F00670001005400790070006500
      4F0066004C006F00670001000100010001000D000A006D0074004C006F006100
      64005000610063006B00610067006500730057005200410050005F0054005900
      50004500010057005200410050005F0054005900500045000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      570052004100500054005900500045004E004F00010057005200410050005400
      5900500045004E004F0001000100010001000D000A00730071005F0047006500
      7400500072006900630065004F006600500072006900630065004C0069007300
      740055006E006E0061006D00650064003100010055006E006E0061006D006500
      6400310001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700410042004D004D000100410042004D004D00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B006700410054004D004D000100410054004D004D0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004200410052005F0043004F004400450001004200410052005F00
      43004F004400450001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B00670042004100520043004F0044004500
      5F0049004400010042004100520043004F00440045005F004900440001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700420075006E0064006C006500730050006500720050006B006700
      0100420075006E0064006C006500730050006500720050006B00670001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700450078004C006F0067000100450078004C006F00670001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700470052004100440045005F005300540041004D00500001004700
      52004100440045005F005300540041004D00500001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004700
      72006100640065004E006F000100470072006100640065004E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700470052004100440045005300540041004D0050004E004F000100
      470052004100440045005300540041004D0050004E004F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      670049004D0050004E006F00010049004D0050004E006F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      670049004E00560045004E0054004F0052005900010049004E00560045004E00
      54004F0052005900010049004E00560045004E0054004500520049004E004700
      0100010049004E00560045004E0054004500520049004E00470001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004B00
      56004D0001004B0056004D00010001004D003200010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B0067004C004F004700
      5F0049004E00560045004E0054004F00520059005F004E004F0001004C004F00
      47005F0049004E00560045004E0054004F00520059005F004E004F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004C004F0050004D0001004C004F0050004D000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004D0033005F004E004500540001004D0033005F004E004500540001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004D0033005F004E004F004D0001004D0033005F004E004F004D00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004D00430043006C006100730073004E006F0001004D00
      430043006C006100730073004E006F0001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B0067004E0042004D00
      4D0001004E0042004D004D0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004E0054004D004D000100
      4E0054004D004D0001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067004F004C0044005F00500041004300
      4B0041004700450054005900500045004E004F0001004F004C0044005F005000
      410043004B0041004700450054005900500045004E004F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004F004C0044004C00490050004E006F0001004F004C0044004C0049005000
      4E006F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B0067004F004C0044004D00430043006C0061007300
      73004E006F0001004F004C0044004D00430043006C006100730073004E006F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004F004E0053005400490043004B00530001004F004E00
      53005400490043004B00530001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004F0057004E0045005200
      01004F0057004E004500520001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004F0057004E0045005200
      4E004F0001004F0057004E00450052004E004F0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067005000
      410043004B004100470045004E004F0001005000410043004B00410047004500
      4E004F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B0067005000410043004B0041004700450054005900
      500045004E004F0001005000410043004B004100470045005400590050004500
      4E004F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700500043005300010050004300530001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067005000430053005F005000450052005F004C0045004E0047005400
      480001005000430053005F005000450052005F004C0045004E00470054004800
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B006700500063007300500065007200420075006E0064006C00
      65000100500063007300500065007200420075006E0064006C00650001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700500049005000010050004900500001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067005000
      52004F0044005500430054000100500052004F00440055004300540001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700700072006F006400750063007400670072006F00750070006E00
      6F000100700072006F006400750063007400670072006F00750070006E006F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B006700500052004F0044005500430054004E004F0001005000
      52004F0044005500430054004E004F0001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700530070006500
      63006900650073004E006F00010053007000650063006900650073004E006F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B00670053005500500050005F0043004F004400450001005300
      5500500050005F0043004F004400450001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700530055005000
      50004C004900450052004E004F00010053005500500050004C00490045005200
      4E004F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B00670053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B00670054007900700065004F0066004C006F0067000100540079007000
      65004F0066004C006F00670001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B00670057005200410050005F00
      5400590050004500010057005200410050005F00540059005000450001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700570052004100500054005900500045004E004F00010057005200
      4100500054005900500045004E004F0001000100010001000D000A0073007100
      5F0050006B00670043006F007300740073004B004F00530054004E0041004400
      01004B004F00530054004E004100440001000100010001000D000A0073007100
      5F0050006B00670043006F0073007400730053006F007200740069006E006700
      4F0072006400650072004E006F00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A00730071005F005000
      6B00670049006E004C006F00610064004C006100730074004E00720001004C00
      6100730074004E00720001000100010001000D000A00730071005F0050006B00
      670049006E004C006F00610064004C004F0001004C004F00010001004C004F00
      010001000D000A00730071005F00560061007200750056006100720064006500
      41004F0056006100720075005600610072006400650001005600610072007500
      5600610072006400650001000100010001000D000A007300710054006F007400
      500072006F00640041004D003300010041004D00330001000100010001000D00
      0A007300710054006F007400500072006F0064004D00310041004C0001004D00
      310041004C0001000100010001000D000A007300710054006F00740050007200
      6F0064004D00460042004D0001004D00460042004D00010001004D0046004200
      4D00010001000D000A007300710054006F007400500072006F0064004E004D00
      330001004E004D003300010001004E004D003300010001000D000A0073007100
      54006F007400500072006F00640053005400590043004B000100530054005900
      43004B000100010050004300530001005300C40043004B0001000D000A007300
      710054006F007400550073006500640041004D003300010041004D0033000100
      0100010001000D000A007300710054006F00740055007300650064004D003100
      41004C0001004D00310041004C0001000100010001000D000A00730071005400
      6F00740055007300650064004D00460042004D0001004D00460042004D000100
      01004D00460042004D00010001000D000A007300710054006F00740055007300
      650064004E004D00330001004E004D003300010001004E004D00330001000100
      0D000A007300710054006F007400550073006500640053005400590043004B00
      010053005400590043004B000100010050004300530001005300C40043004B00
      01000D000A00460044005F0047006500740053004F004F007500740050007500
      740041004D003300010041004D00330001000100010001000D000A0046004400
      5F0047006500740053004F004F00750074005000750074005300740079006300
      6B00010053007400790063006B000100010050006300730001005300E4006300
      6B0001000D000A00460044005F0047006500740053004F004F00750074005000
      750074004E004D00330001004E004D003300010001004E004D00330001000100
      0D000A00460044005F0047006500740053004F004F0075007400500075007400
      41004D003100010041004D00310001000100010001000D000A00460044005F00
      47006500740053004F004F0075007400500075007400500072006F0064007500
      63007400560061006C00750065000100500072006F0064007500630074005600
      61006C007500650001000100010001000D000A00460044005F0053004F005200
      61007700530075006D0041004D003300010041004D0033000100010001000100
      0D000A00460044005F0053004F00520061007700530075006D00530074007900
      63006B00010053007400790063006B000100010050006300730001005300E400
      63006B0001000D000A00460044005F0053004F00520061007700530075006D00
      4E004D00330001004E004D003300010001004E004D003300010001000D000A00
      460044005F0053004F00520061007700530075006D0041004D00310001004100
      4D00310001000100010001000D000A00460044005F0053004F00520061007700
      530075006D00500072006F006400750063007400560061006C00750065000100
      500072006F006400750063007400560061006C00750065000100010001000100
      0D000A00460044005F00470065007400500072006F0064007500630074005600
      61006C007500650041004D003300010041004D00330001000100010001000D00
      0A00460044005F00470065007400500072006F00640075006300740056006100
      6C007500650053007400790063006B00010053007400790063006B0001000100
      50006300730001005300E40063006B0001000D000A00460044005F0047006500
      7400500072006F006400750063007400560061006C00750065004E004D003300
      01004E004D003300010001004E004D003300010001000D000A00460044005F00
      470065007400500072006F006400750063007400560061006C00750065004100
      4D003100010041004D00310001000100010001000D000A00460044005F004700
      65007400500072006F006400750063007400560061006C007500650050007200
      6F006400750063007400560061006C00750065000100500072006F0064007500
      63007400560061006C007500650001000100010001000D000A00460044005F00
      53004F00520061007700530075006D004E006F004F006D0053006F0072007400
      41004D003300010041004D00330001000100010001000D000A00460044005F00
      53004F00520061007700530075006D004E006F004F006D0053006F0072007400
      53007400790063006B00010053007400790063006B0001000100500063007300
      01005300E40063006B0001000D000A00460044005F0053004F00520061007700
      530075006D004E006F004F006D0053006F00720074004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A00460044005F0053004F00
      520061007700530075006D004E006F004F006D0053006F007200740041004D00
      3100010041004D00310001000100010001000D000A00460044005F0053004F00
      520061007700530075006D004E006F004F006D0053006F007200740050007200
      6F006400750063007400560061006C00750065000100500072006F0064007500
      63007400560061006C007500650001000100010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006300
      640073005F004E006500770050006B00670073002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F004E006500770050006B006700730041004200
      4D004D002E004F0072006900670069006E000100410042004D004D0001000100
      010001000D000A006300640073005F004E006500770050006B00670073004100
      4D0031002E004F0072006900670069006E00010041004D003100010001000100
      01000D000A006300640073005F004E006500770050006B006700730041004D00
      33002E004F0072006900670069006E00010041004D0033000100010001000100
      0D000A006300640073005F004E006500770050006B006700730041004E005400
      5000450052004C004E00470044002E004F0072006900670069006E0001005B00
      41004E0054005000450052004C00C4004E00470044005D000100010001000100
      0D000A006300640073005F004E006500770050006B0067007300410054004D00
      4D002E004F0072006900670069006E000100410054004D004D00010001000100
      01000D000A006300640073005F004E006500770050006B006700730045006A00
      5F004800790076006C00610074002E004F0072006900670069006E0001004500
      6A005F004800790076006C006100740001000100010001000D000A0063006400
      73005F004E006500770050006B00670073004C00490050004E006F002E004F00
      72006900670069006E0001004C00490050004E006F0001000100010001000D00
      0A006300640073005F004E006500770050006B00670073004D00410058004C00
      45004E004700540048002E004F0072006900670069006E0001004D0041005800
      4C0045004E0047005400480001000100010001000D000A006300640073005F00
      4E006500770050006B00670073004D0041005800500072006F00640075006300
      74004C0065006E006700740068004E006F002E004F0072006900670069006E00
      01004D0041005800500072006F0064007500630074004C0065006E0067007400
      68004E006F0001000100010001000D000A006300640073005F004E0065007700
      50006B00670073004D00460042004D002E004F0072006900670069006E000100
      4D00460042004D00010001004D00460042004D00010001000D000A0063006400
      73005F004E006500770050006B00670073004E004D0033002E004F0072006900
      670069006E0001004E004D003300010001004E004D003300010001000D000A00
      6300640073005F004E006500770050006B00670073004F004C0044004C004900
      50004E006F002E004F0072006900670069006E0001004F004C0044004C004900
      50004E006F0001000100010001000D000A006300640073005F004E0065007700
      50006B00670073004F004C0044004D00430043006C006100730073004E006F00
      2E004F0072006900670069006E0001004F004C0044004D00430043006C006100
      730073004E006F0001000100010001000D000A006300640073005F004E006500
      770050006B00670073005000610063006B006100670065004E006F002E004F00
      72006900670069006E0001005000610063006B006100670065004E006F000100
      0100010001000D000A006300640073005F004E006500770050006B0067007300
      5000610063006B0061006700650054007900700065004E006F002E004F007200
      6900670069006E0001005000610063006B006100670065005400790070006500
      4E006F0001000100010001000D000A006300640073005F004E00650077005000
      6B006700730050006B0067005300740061007400750073002E004F0072006900
      670069006E00010050006B006700530074006100740075007300010001000100
      01000D000A006300640073005F004E006500770050006B006700730050007200
      6900630065004C006900730074004E006F002E004F0072006900670069006E00
      0100500072006900630065004C006900730074004E006F000100010001000100
      0D000A006300640073005F004E006500770050006B0067007300500072006F00
      64007500630074004E006F002E004F0072006900670069006E00010050007200
      6F0064007500630074004E006F0001000100010001000D000A00630064007300
      5F004E006500770050006B0067007300500052004F00440055004B0054002E00
      4F0072006900670069006E000100520065006700690073007400720065007200
      6100640001000100520065006700690073007400650072006500640001000100
      0D000A006300640073005F004E006500770050006B0067007300520065006700
      690073007400720065007200610064002E004F0072006900670069006E000100
      5200650067006900730074007200650072006100640001000100520065006700
      6900730074006500720065006400010001000D000A006300640073005F004E00
      6500770050006B006700730053006F007200740069006E0067004F0072006400
      650072004E006F002E004F0072006900670069006E00010053006F0072007400
      69006E0067004F0072006400650072004E006F0001000100010001000D000A00
      6300640073005F004E006500770050006B006700730053006F00720074006900
      6E0067004F00720064006500720052006F0077004E006F002E004F0072006900
      670069006E00010053006F007200740069006E0067004F007200640065007200
      52006F0077004E006F0001000100010001000D000A006300640073005F004E00
      6500770050006B00670073005300740061007400750073002E004F0072006900
      670069006E000100530074006100740075007300010001005300740061007400
      75007300010001000D000A006300640073005F004E006500770050006B006700
      730053005400590043004B002E004F0072006900670069006E00010053005400
      590043004B000100010050004300530001005300C40043004B0001000D000A00
      6300640073005F004E006500770050006B006700730053005500500050004C00
      49004500520043004F00440045002E004F0072006900670069006E0001005300
      5500500050004C0049004500520043004F004400450001004C00450056004500
      520041004E005400D600520053004B004F004400010001004C00450056004500
      520041004E005400D600520053004B004F00440001000D000A00630064007300
      5F004E006500770050006B006700730056006100720075005600610072006400
      65002E004F0072006900670069006E0001005600610072007500560061007200
      6400650001000100010001000D000A006300640073005F005500730065006400
      50006B00670073002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      5F00550073006500640050006B006700730041004D0031002E004F0072006900
      670069006E00010041004D00310001000100010001000D000A00630064007300
      5F00550073006500640050006B006700730041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00630064007300
      5F00550073006500640050006B006700730041004E0054005000450052004C00
      4E00470044002E004F0072006900670069006E0001005B0041004E0054005000
      450052004C00C4004E00470044005D0001000100010001000D000A0063006400
      73005F00550073006500640050006B0067007300410076005200650067005000
      6B0074004E0072002E004F0072006900670069006E0001004100760052006500
      670050006B0074004E00720001000100010001000D000A006300640073005F00
      550073006500640050006B006700730041007600520065006700500072006500
      6600690078002E004F0072006900670069006E00010041007600520065006700
      50007200650066006900780001000100010001000D000A006300640073005F00
      550073006500640050006B00670073004C00450056004B004F0044002E004F00
      72006900670069006E0001004C00450056004B004F0044000100010053005500
      500050004C00490045005200200043004F0044004500010001000D000A006300
      640073005F00550073006500640050006B00670073004C00490050004E006F00
      2E004F0072006900670069006E0001004C00490050004E006F00010001000100
      01000D000A006300640073005F00550073006500640050006B00670073004D00
      410058004C0045004E004700540048002E004F0072006900670069006E000100
      4D00410058004C0045004E0047005400480001000100010001000D000A006300
      640073005F00550073006500640050006B00670073004D00460042004D002E00
      4F0072006900670069006E0001004D00460042004D00010001004D0046004200
      4D00010001000D000A006300640073005F00550073006500640050006B006700
      73004E004D0033002E004F0072006900670069006E0001004E004D0033000100
      01004E004D003300010001000D000A006300640073005F005500730065006400
      50006B00670073004F006C0064005000610063006B006100670065004E006F00
      2E004F0072006900670069006E0001004F006C0064005000610063006B006100
      670065004E006F0001000100010001000D000A006300640073005F0055007300
      6500640050006B00670073004F006C0064005000610063006B00610067006500
      54007900700065004E006F002E004F0072006900670069006E0001004F006C00
      64005000610063006B0061006700650054007900700065004E006F0001000100
      010001000D000A006300640073005F00550073006500640050006B0067007300
      4F006C00640053007500700070006C0069006500720043006F00640065002E00
      4F0072006900670069006E0001004F006C00640053007500700070006C006900
      6500720043006F006400650001000100010001000D000A006300640073005F00
      550073006500640050006B00670073005000610063006B006100670065005400
      7900700065004E006F002E004F0072006900670069006E000100500061006300
      6B0061006700650054007900700065004E006F0001000100010001000D000A00
      6300640073005F00550073006500640050006B0067007300500041004B004500
      54004E0052002E004F0072006900670069006E000100500041004B0045005400
      4E0052000100010050004B00470020004E004F000100500041004C004C004E00
      520001000D000A006300640073005F00550073006500640050006B0067007300
      500072006F0064007500630074004E006F002E004F0072006900670069006E00
      0100500072006F0064007500630074004E006F0001000100010001000D000A00
      6300640073005F00550073006500640050006B0067007300500052004F004400
      55004B0054002E004F0072006900670069006E000100500052004F0044005500
      4B0054000100500052004F00440055004B0054000100500052004F0044005500
      430054000100500052004F00440055004B00540001000D000A00630064007300
      5F00550073006500640050006B00670073005200650067006900730074007200
      65007200610064002E004F0072006900670069006E0001005200650067006900
      7300740072006500720061006400010001005200650067006900730074006500
      720065006400010001000D000A006300640073005F0055007300650064005000
      6B006700730053006F007200740069006E0067004F0072006400650072004E00
      6F002E004F0072006900670069006E00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00630064007300
      5F00550073006500640050006B006700730053005400590043004B002E004F00
      72006900670069006E00010053005400590043004B0001000100500043005300
      01005300C40043004B0001000D000A006300640073004C0065006E0067007400
      6800470072006F00750070002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      640073004C0065006E00670074006800470072006F0075007000470072006F00
      750070004E0061006D0065002E004F0072006900670069006E00010047007200
      6F00750070004E0061006D00650001000100010001000D000A00630064007300
      4C0065006E00670074006800470072006F0075007000470072006F0075007000
      4E006F002E004F0072006900670069006E000100470072006F00750070004E00
      6F0001000100010001000D000A00630064007300500072006F0064004C006500
      6E006700740068002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00630064007300
      500072006F0064004C0065006E0067007400680041004C004D004D002E004F00
      72006900670069006E00010041004C004D004D0001000100010001000D000A00
      630064007300500072006F0064004C0065006E0067007400680041004D003100
      2E004F0072006900670069006E00010041004D00310001000100010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680041004D00
      33002E004F0072006900670069006E00010041004D0033000100010001000100
      0D000A00630064007300500072006F0064004C0065006E006700740068004600
      4A002E004F0072006900670069006E00010046004A0001000100010001000D00
      0A00630064007300500072006F0064004C0065006E0067007400680046004F00
      54002E004F0072006900670069006E00010046004F0054000100010046004F00
      4F005400010001000D000A00630064007300500072006F0064004C0065006E00
      670074006800470072006F00750070004E006F002E004F007200690067006900
      6E000100470072006F00750070004E006F0001000100010001000D000A006300
      64007300500072006F0064004C0065006E006700740068004E004C004D004D00
      2E004F0072006900670069006E0001004E004C004D004D00010001004E004C00
      4D004D00010001000D000A00630064007300500072006F0064004C0065006E00
      6700740068005000450054002E004F0072006900670069006E00010050004500
      540001000100010001000D000A00630064007300500072006F0064004C006500
      6E00670074006800700072006F0064007500630074004C0065006E0067007400
      68006E006F002E004F0072006900670069006E000100700072006F0064007500
      630074004C0065006E006700740068006E006F0001000100010001000D000A00
      630064007300500072006F0064004C0065006E00670074006800530054005900
      43004B002E004F0072006900670069006E00010053005400590043004B000100
      010050004300530001005300C40043004B0001000D000A006300640073005000
      72006F0064004C0065006E00670074006800540055004D002E004F0072006900
      670069006E000100540055004D000100010049004E0043004800010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073002E00
      560065007200730069006F006E00010037002E00360033002E00300030002000
      5300740061006E0064006100720064002000450064006900740069006F006E00
      01000100010001000D000A00730070005F004100760072006500670050006100
      7200650067002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730070005F004100
      7600720065006700500061007200650067002E00530074006F00720065006400
      500072006F0063004E0061006D00650001007600690073005F00760069006400
      61002E00640062006F002E007600690073005F00410076007200650067005000
      610072006500670001000100010001000D000A00730070005F00440065006C00
      6500740065005000610063006B006100670065002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730070005F00440065006C006500740065005000610063006B00
      6100670065002E00530074006F00720065006400500072006F0063004E006100
      6D00650001007600690073005F0076006900640061002E00640062006F002E00
      76006900640061005F00440065006C0050006B006700460072006F006D005300
      79007300740065006D005F004900490001000100010001000D000A0073007000
      5F004E00650077005000610063006B0061006700650044006500740061006900
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00730070005F004E0065007700
      5000610063006B00610067006500440065007400610069006C002E0053007400
      6F00720065006400500072006F0063004E0061006D0065000100760069007300
      5F0076006900640061002E00640062006F002E0076006900640061005F004E00
      650077005000610063006B00610067006500440065007400610069006C000100
      0100010001000D000A00730070005F004E00650077005000610063006B006100
      6700650054007900700065002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      70005F004E00650077005000610063006B006100670065005400790070006500
      2E00530074006F00720065006400500072006F0063004E0061006D0065000100
      7600690073005F0076006900640061002E00640062006F002E00760069007300
      5F004E006500770050006B006700540079007000650001000100010001000D00
      0A00730070005F004E0065007700530070006C006900740050006B0067002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730070005F004E006500770053007000
      6C006900740050006B0067002E00530074006F00720065006400500072006F00
      63004E0061006D00650001007600690073005F0076006900640061002E006400
      62006F002E007600690073005F0053004F004E0065007700530070006C006900
      740050006B00670001000100010001000D000A00730070005F004F006E006500
      5000610063006B006100670065004E006F002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00730070005F004F006E0065005000610063006B006100670065004E00
      6F002E00530074006F00720065006400500072006F0063004E0061006D006500
      01007600690073005F0076006900640061002E00640062006F002E0076006900
      640061005F004F006E0065005000610063006B006100670065004E006F000100
      0100010001000D000A00730070005F005000610063006B006100670065005400
      6F00740061006C0073002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0073007000
      5F005000610063006B0061006700650054006F00740061006C0073002E005300
      74006F00720065006400500072006F0063004E0061006D006500010076006900
      73005F0076006900640061002E00640062006F002E0076006900640061005F00
      5000610063006B0061006700650054006F00740061006C007300010001000100
      01000D000A00730070005F005000610063006B00610067006500540079007000
      6500440065007400610069006C002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      730070005F005000610063006B00610067006500540079007000650044006500
      7400610069006C002E00530074006F00720065006400500072006F0063004E00
      61006D00650001007600690073005F0076006900640061002E00640062006F00
      2E0076006900640061005F005000610063006B00610067006500540079007000
      6500440065007400610069006C0001000100010001000D000A00730070005F00
      5000610063006B00610067006500540079007000650073002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730070005F005000610063006B006100670065005400
      79007000650073002E00530074006F00720065006400500072006F0063004E00
      61006D0065000100640062006F002E007600690073005F0050006B0067005400
      79007000650001000100010001000D000A00730070005F0050006B0067004900
      6E0066006F002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730070005F005000
      6B00670049006E0066006F002E00530074006F00720065006400500072006F00
      63004E0061006D00650001007600690073005F0076006900640061002E006400
      62006F002E0077006D005F00310050006B00670049006E0066006F0001000100
      010001000D000A00730070005F0050006F00700075006C006100740065005F00
      4F006E0065005F0050006B00670054007900700065004C0065006E0067007400
      680073002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730070005F0050006F00
      700075006C006100740065005F004F006E0065005F0050006B00670054007900
      700065004C0065006E0067007400680073002E00530074006F00720065006400
      500072006F0063004E0061006D00650001007600690073005F00760069006400
      61002E00640062006F002E0076006900640061005F0050006F00700075006C00
      6100740065005F004F006E0065005F005000610063006B006100670065005400
      7900700065004C0065006E00670074006800730001000100010001000D000A00
      730070005F00520065006700720065007400440065005200650067002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730070005F00520065006700720065007400
      440065005200650067002E00530074006F00720065006400500072006F006300
      4E0061006D00650001007600690073005F0076006900640061002E0064006200
      6F002E005600690073005F0043006E0063006C00410076007200650067000100
      0100010001000D000A00730070005F00520065006D006F007600650050006100
      63006B00610067006500460072006F006D0049006E00760065006E0074006F00
      720079002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730070005F0052006500
      6D006F00760065005000610063006B00610067006500460072006F006D004900
      6E00760065006E0074006F00720079002E00530074006F007200650064005000
      72006F0063004E0061006D00650001007600690073005F007600690064006100
      2E00640062006F002E007600690073005F004100760052006500670050006B00
      67005F003100610001000100010001000D000A00730070005F00520067007200
      41007600720065006700500061007200650067002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730070005F005200670072004100760072006500670050006100
      7200650067002E00530074006F00720065006400500072006F0063004E006100
      6D00650001007600690073005F0076006900640061002E00640062006F002E00
      7600690073005F00520067007200410076007200650067005000610072006500
      670001000100010001000D000A00730070005F0053004F005500700064004F00
      6C006400530070006C00690074002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      730070005F0053004F005500700064004F006C006400530070006C0069007400
      2E00530074006F00720065006400500072006F0063004E0061006D0065000100
      7600690073005F0076006900640061002E00640062006F002E00760069007300
      5F0053004F005500700064004F006C006400530070006C006900740001000100
      010001000D000A00730071005F00440045004C005F00530070006C0069007400
      50006B0067002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730071005F004400
      65006C0053006F00720074004E006500770050006B0067002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730071005F00440065006C0053006F00720074005500
      53006500640050006B00670073002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      730071005F00470065007400500072006900630065004F006600500072006900
      630065004C006900730074002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      71005F00470065007400500072006900630065004F0066005000720069006300
      65004C0069007300740055006E006E0061006D006500640031002E004F007200
      6900670069006E00010055006E006E0061006D00650064003100010001000100
      01000D000A00730071005F0049006E00730053006F00720074004E0065007700
      50006B0067002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730071005F004900
      6E00730053006F0072007400550073006500640050006B00670073002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B0067002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A007300
      71005F004F006E00650055006E00690071007500650050006B00670041004200
      4D004D002E004F0072006900670069006E000100410042004D004D0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700410054004D004D002E004F0072006900670069006E0001004100
      54004D004D0001000100010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B0067004200410052005F0043004F0044004500
      2E004F0072006900670069006E0001004200410052005F0043004F0044004500
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B00670042004100520043004F00440045005F00490044002E00
      4F0072006900670069006E00010042004100520043004F00440045005F004900
      440001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B006700420075006E0064006C0065007300500065007200
      50006B0067002E004F0072006900670069006E000100420075006E0064006C00
      6500730050006500720050006B00670001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700450078004C00
      6F0067002E004F0072006900670069006E000100450078004C006F0067000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B006700470052004100440045005F005300540041004D0050002E00
      4F0072006900670069006E000100470052004100440045005F00530054004100
      4D00500001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700470072006100640065004E006F002E004F00
      72006900670069006E000100470072006100640065004E006F00010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B006700470052004100440045005300540041004D0050004E004F002E004F00
      72006900670069006E000100470052004100440045005300540041004D005000
      4E004F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B00670049004D0050004E006F002E004F0072006900
      670069006E00010049004D0050004E006F0001000100010001000D000A007300
      71005F004F006E00650055006E00690071007500650050006B00670049004E00
      560045004E0054004F00520059002E004F0072006900670069006E0001004900
      4E00560045004E0054004F0052005900010049004E00560045004E0054004500
      520049004E0047000100010049004E00560045004E0054004500520049004E00
      470001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004B0056004D002E004F0072006900670069006E0001004B005600
      4D00010001004D003200010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B0067004C004F0047005F0049004E0056004500
      4E0054004F00520059005F004E004F002E004F0072006900670069006E000100
      4C004F0047005F0049004E00560045004E0054004F00520059005F004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004C004F0050004D002E004F0072006900670069006E00
      01004C004F0050004D0001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B0067004D0033005F004E0045005400
      2E004F0072006900670069006E0001004D0033005F004E004500540001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004D0033005F004E004F004D002E004F0072006900670069006E00
      01004D0033005F004E004F004D0001000100010001000D000A00730071005F00
      4F006E00650055006E00690071007500650050006B0067004D00430043006C00
      6100730073004E006F002E004F0072006900670069006E0001004D0043004300
      6C006100730073004E006F0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004E0042004D004D002E00
      4F0072006900670069006E0001004E0042004D004D0001000100010001000D00
      0A00730071005F004F006E00650055006E00690071007500650050006B006700
      4E0054004D004D002E004F0072006900670069006E0001004E0054004D004D00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004F004C0044005F005000410043004B00410047004500
      54005900500045004E004F002E004F0072006900670069006E0001004F004C00
      44005F005000410043004B0041004700450054005900500045004E004F000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B0067004F004C0044004C00490050004E006F002E004F0072006900
      670069006E0001004F004C0044004C00490050004E006F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004F004C0044004D00430043006C006100730073004E006F002E004F007200
      6900670069006E0001004F004C0044004D00430043006C006100730073004E00
      6F0001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B0067004F004E0053005400490043004B0053002E004F00
      72006900670069006E0001004F004E0053005400490043004B00530001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004F0057004E00450052002E004F0072006900670069006E000100
      4F0057004E004500520001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B0067004F0057004E00450052004E00
      4F002E004F0072006900670069006E0001004F0057004E00450052004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067005000410043004B004100470045004E004F002E004F00
      72006900670069006E0001005000410043004B004100470045004E004F000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B0067005000410043004B0041004700450054005900500045004E00
      4F002E004F0072006900670069006E0001005000410043004B00410047004500
      54005900500045004E004F0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067005000430053002E004F00
      72006900670069006E00010050004300530001000100010001000D000A007300
      71005F004F006E00650055006E00690071007500650050006B00670050004300
      53005F005000450052005F004C0045004E004700540048002E004F0072006900
      670069006E0001005000430053005F005000450052005F004C0045004E004700
      5400480001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700500063007300500065007200420075006E00
      64006C0065002E004F0072006900670069006E00010050006300730050006500
      7200420075006E0064006C00650001000100010001000D000A00730071005F00
      4F006E00650055006E00690071007500650050006B0067005000490050002E00
      4F0072006900670069006E00010050004900500001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067005000
      52004F0044005500430054002E004F0072006900670069006E00010050005200
      4F00440055004300540001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B006700700072006F00640075006300
      7400670072006F00750070006E006F002E004F0072006900670069006E000100
      700072006F006400750063007400670072006F00750070006E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700500052004F0044005500430054004E004F002E004F0072006900
      670069006E000100500052004F0044005500430054004E004F00010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B00670053007000650063006900650073004E006F002E004F00720069006700
      69006E00010053007000650063006900650073004E006F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      670053005500500050005F0043004F00440045002E004F007200690067006900
      6E00010053005500500050005F0043004F004400450001000100010001000D00
      0A00730071005F004F006E00650055006E00690071007500650050006B006700
      53005500500050004C004900450052004E004F002E004F007200690067006900
      6E00010053005500500050004C004900450052004E004F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      670053007500720066006100630069006E0067004E006F002E004F0072006900
      670069006E00010053007500720066006100630069006E0067004E006F000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B00670054007900700065004F0066004C006F0067002E004F007200
      6900670069006E00010054007900700065004F0066004C006F00670001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B00670057005200410050005F0054005900500045002E004F0072006900
      670069006E00010057005200410050005F005400590050004500010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B006700570052004100500054005900500045004E004F002E004F0072006900
      670069006E000100570052004100500054005900500045004E004F0001000100
      010001000D000A00730071005F0050006B00670043006F007300740073002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A00730071005F0050006B00670043006F00
      7300740073004B004F00530054004E00410044002E004F007200690067006900
      6E0001004B004F00530054004E004100440001000100010001000D000A007300
      71005F0050006B00670043006F0073007400730053006F007200740069006E00
      67004F0072006400650072004E006F002E004F0072006900670069006E000100
      53006F007200740069006E0067004F0072006400650072004E006F0001000100
      010001000D000A00730071005F0050006B00670049006E0066006F002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730071005F0050006B00670049006E004C00
      6F00610064002E0043006F006E006E0065006300740069006F006E004E006100
      6D006500010056004900530001000100010001000D000A00730071005F005000
      6B00670049006E004C006F00610064004C006100730074004E0072002E004F00
      72006900670069006E0001004C004F00010001004C004F00010001000D000A00
      730071005F0050006B00670049006E004C006F00610064004C004F002E004F00
      72006900670069006E0001004C004F00010001004C004F00010001000D000A00
      730071005F005200650069006E0073007400610074006500530070006C006900
      740050006B0067002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00730071005F00
      56006100720075005600610072006400650041004F002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730071005F00560061007200750056006100720064006500
      41004F005600610072007500560061007200640065002E004F00720069006700
      69006E0001005600610072007500560061007200640065000100010001000100
      0D000A007300710054006F007400500072006F0064002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A007300710054006F007400500072006F00640041004D003300
      2E004F0072006900670069006E00010041004D00330001000100010001000D00
      0A007300710054006F007400500072006F0064004D00310041004C002E004F00
      72006900670069006E0001004D00310041004C0001000100010001000D000A00
      7300710054006F007400500072006F0064004D00460042004D002E004F007200
      6900670069006E0001004D00460042004D00010001004D00460042004D000100
      01000D000A007300710054006F007400500072006F0064004E004D0033002E00
      4F0072006900670069006E0001004E004D003300010001004E004D0033000100
      01000D000A007300710054006F007400500072006F0064005300540059004300
      4B002E004F0072006900670069006E00010053005400590043004B0001000100
      50004300530001005300C40043004B0001000D000A007300710054006F007400
      55007300650064002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00730071005400
      6F007400550073006500640041004D0033002E004F0072006900670069006E00
      010041004D00330001000100010001000D000A007300710054006F0074005500
      7300650064004D00310041004C002E004F0072006900670069006E0001004D00
      310041004C0001000100010001000D000A007300710054006F00740055007300
      650064004D00460042004D002E004F0072006900670069006E0001004D004600
      42004D00010001004D00460042004D00010001000D000A007300710054006F00
      740055007300650064004E004D0033002E004F0072006900670069006E000100
      4E004D003300010001004E004D003300010001000D000A007300710054006F00
      7400550073006500640053005400590043004B002E004F007200690067006900
      6E00010053005400590043004B000100010050004300530001005300C4004300
      4B0001000D000A00460044005F0047006500740053004F004F00750074005000
      750074002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00460044005F0047006500
      740053004F004F007500740050007500740041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00460044005F00
      47006500740053004F004F007500740050007500740053007400790063006B00
      2E004F0072006900670069006E00010053007400790063006B00010001005000
      6300730001005300E40063006B0001000D000A00460044005F00470065007400
      53004F004F00750074005000750074004E004D0033002E004F00720069006700
      69006E0001004E004D003300010001004E004D003300010001000D000A004600
      44005F0047006500740053004F004F007500740050007500740041004D003100
      2E004F0072006900670069006E00010041004D00310001000100010001000D00
      0A00460044005F0047006500740053004F004F00750074005000750074005000
      72006F006400750063007400560061006C00750065002E004F00720069006700
      69006E000100500072006F006400750063007400560061006C00750065000100
      0100010001000D000A00460044005F0053004F00520061007700530075006D00
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00460044005F0053004F0052006100
      7700530075006D0041004D0033002E004F0072006900670069006E0001004100
      4D00330001000100010001000D000A00460044005F0053004F00520061007700
      530075006D0053007400790063006B002E004F0072006900670069006E000100
      53007400790063006B000100010050006300730001005300E40063006B000100
      0D000A00460044005F0053004F00520061007700530075006D004E004D003300
      2E004F0072006900670069006E0001004E004D003300010001004E004D003300
      010001000D000A00460044005F0053004F00520061007700530075006D004100
      4D0031002E004F0072006900670069006E00010041004D003100010001000100
      01000D000A00460044005F0053004F00520061007700530075006D0050007200
      6F006400750063007400560061006C00750065002E004F007200690067006900
      6E000100500072006F006400750063007400560061006C007500650001000100
      010001000D000A00460044005F00470065007400500072006F00640075006300
      7400560061006C00750065002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A004600
      44005F00470065007400500072006F006400750063007400560061006C007500
      650041004D0033002E004F0072006900670069006E00010041004D0033000100
      0100010001000D000A00460044005F00470065007400500072006F0064007500
      63007400560061006C007500650053007400790063006B002E004F0072006900
      670069006E00010053007400790063006B000100010050006300730001005300
      E40063006B0001000D000A00460044005F00470065007400500072006F006400
      750063007400560061006C00750065004E004D0033002E004F00720069006700
      69006E0001004E004D003300010001004E004D003300010001000D000A004600
      44005F00470065007400500072006F006400750063007400560061006C007500
      650041004D0031002E004F0072006900670069006E00010041004D0031000100
      0100010001000D000A00460044005F00470065007400500072006F0064007500
      63007400560061006C0075006500500072006F00640075006300740056006100
      6C00750065002E004F0072006900670069006E000100500072006F0064007500
      63007400560061006C007500650001000100010001000D000A00460044005F00
      69006E0073004D0069007300730069006E0067005200610077004D0074007200
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00460044005F0053004F005200
      61007700530075006D004E006F004F006D0053006F00720074002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00460044005F0053004F0052006100770053007500
      6D004E006F004F006D0053006F007200740041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00460044005F00
      53004F00520061007700530075006D004E006F004F006D0053006F0072007400
      53007400790063006B002E004F0072006900670069006E000100530074007900
      63006B000100010050006300730001005300E40063006B0001000D000A004600
      44005F0053004F00520061007700530075006D004E006F004F006D0053006F00
      720074004E004D0033002E004F0072006900670069006E0001004E004D003300
      010001004E004D003300010001000D000A00460044005F0053004F0052006100
      7700530075006D004E006F004F006D0053006F007200740041004D0031002E00
      4F0072006900670069006E00010041004D00310001000100010001000D000A00
      460044005F0053004F00520061007700530075006D004E006F004F006D005300
      6F0072007400500072006F006400750063007400560061006C00750065002E00
      4F0072006900670069006E000100500072006F00640075006300740056006100
      6C007500650001000100010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      6D0074004C006F00610064005000610063006B0061006700650073002E004900
      6E0064006500780044006500660073005B0030005D002E004600690065006C00
      6400730001005000410043004B004100470045004E004F003B00530055005000
      50005F0043004F004400450001000100010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073002E0049006E00640065007800
      44006500660073005B0031005D002E004600690065006C006400730001004C00
      6F0061006400440065007400610069006C004E006F0001000100010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A00}
  end
end
