object dmPkgs: TdmPkgs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 289
  Top = 132
  Height = 596
  Width = 1104
  object ds_LoadPackages: TDataSource
    DataSet = mtLoadPackages
    Left = 48
    Top = 72
  end
  object sp_DeletePackage: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_DeletePackage'
    Left = 192
    Top = 416
  end
  object mtPackages: TkbmMemTable
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
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    BeforePost = mtPackagesBeforePost
    Left = 136
    Top = 24
  end
  object dsmtPackages: TDataSource
    DataSet = mtPackages
    Left = 136
    Top = 72
  end
  object sq_ProductLengths2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH , PL.PET , PL.FingerJoint'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      ''
      ''
      'Where PL.ActualLengthMM < 20000')
    Left = 816
    Top = 352
    object sq_ProductLengths2ProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object sq_ProductLengths2ActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_ProductLengths2NominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
    end
    object sq_ProductLengths2NominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
    end
    object sq_ProductLengths2ActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Size = 15
    end
    object sq_ProductLengths2PET: TIntegerField
      FieldName = 'PET'
    end
    object sq_ProductLengths2FingerJoint: TIntegerField
      FieldName = 'FingerJoint'
    end
  end
  object mtProdSpecificLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductGroupNo'
        DataType = ftInteger
      end
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductGroupNo'
    IndexName = 'mtProdSpecificLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtProdSpecificLengthsIndex1'
        Fields = 'ProductGroupNo'
      end
      item
        Name = 'mtProdSpecificLengthsIndex2'
        Fields = 'ProductGroupNo;ProductLengthNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 240
    Top = 72
    object mtProdSpecificLengthsProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProdSpecificLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object sp_ProdLeng: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ProductGroupNo'
        ParamType = ptInput
      end>
    StoredProcName = 'VIDA_ProdLeng'
    Left = 480
    Top = 384
    object sp_ProdLengProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object mtStandardLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'ProductLengthNo'
    IndexName = 'mtStandardLengthsIndex1'
    IndexDefs = <
      item
        Name = 'mtStandardLengthsIndex1'
        Fields = 'ProductLengthNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 352
    Top = 472
    object mtStandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object sp_StandardLengths: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'LengthGroupNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_StandardLengths'
    Left = 480
    Top = 432
    object sp_StandardLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Required = True
    end
  end
  object sq_OnePkgDetailData: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'First_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Last_PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PG.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
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
      'WHERE     PN.PackageNo >= :First_PackageNo'
      'AND PN.PackageNo <= :Last_PackageNo'
      'AND PN.Status = 1'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      'Order by PN.PackageNo'
      ' '
      ' ')
    Left = 48
    Top = 192
    object sq_OnePkgDetailDataPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgDetailDataPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgDetailDataM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgDetailDataPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgDetailDataM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgDetailDataKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgDetailDataLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgDetailDataPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OnePkgDetailDataINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgDetailDataOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OnePkgDetailDataOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgDetailDataBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OnePkgDetailDataBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OnePkgDetailDataGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OnePkgDetailDataSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_OnePkgDetailDataSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object sp_PkgInfo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_OnePackage_Info'
    Left = 480
    Top = 320
    object sp_PkgInfoCREATED: TSQLTimeStampField
      FieldName = 'CREATED'
      Required = True
    end
    object sp_PkgInfoCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Required = True
    end
    object sp_PkgInfoOWNER: TStringField
      FieldName = 'OWNER'
      Required = True
      Size = 80
    end
    object sp_PkgInfoPKG_STATUS: TIntegerField
      FieldName = 'PKG_STATUS'
      Required = True
    end
    object sp_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Required = True
      Size = 50
    end
  end
  object sp_ChangePkg: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_ChangePackage_II'
    Left = 616
    Top = 144
  end
  object sq_GetPkgsByLONo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProductNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      ''
      ''
      'LS.LoadNo,'
      'SSP.SupplierNo,'
      'LS.ShippingPlanNo,'
      'LD.PackageNo,'
      'LD.SupplierCode,'
      'SSP.CustomerNo,'
      'Supp.ClientName AS SUPPLIER,'
      'LocCust.ClientName AS LOC_CUST,'
      'SSP.ObjectType,'
      '-1 AS Avrop_CustomerNo,'
      'SSP.LoadingLocationNo,'
      'SSP.ShipToInvPointNo,'
      'Loading.CityName AS LOADING_LOCATION,'
      'ShipTo.CityName AS SHIP_TO,'
      '        PG.SurfacingNo'
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo '
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
        '        INNER JOIN dbo.ProductGroup PG  ON PG.ProductGroupNo    ' +
        ' = Pr.ProductGroupNo'
      ''
      
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
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      'AND PT.ProductNo = :ProductNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )'
      ' '
      ' ')
    Left = 48
    Top = 144
    object sq_GetPkgsByLONoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_GetPkgsByLONoPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_GetPkgsByLONoM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_GetPkgsByLONoPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_GetPkgsByLONoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_GetPkgsByLONoKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_GetPkgsByLONoLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_GetPkgsByLONoPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_GetPkgsByLONoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_GetPkgsByLONoOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_GetPkgsByLONoOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_GetPkgsByLONoBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_GetPkgsByLONoBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_GetPkgsByLONoGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_GetPkgsByLONoSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_GetPkgsByLONoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
  end
  object sq_OneUniquePkg1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status,'
      '        PG.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
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
      'AND ((PN.Status = 1) or (PN.Status = :Status))'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)'
      ' '
      ' '
      ' ')
    Left = 952
    Top = 352
    object sq_OneUniquePkg1PRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OneUniquePkg1PACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OneUniquePkg1PACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkg1SUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OneUniquePkg1M3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OneUniquePkg1PCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OneUniquePkg1M3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OneUniquePkg1KVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OneUniquePkg1LOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OneUniquePkg1PRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OneUniquePkg1INVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkg1PCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkg1OWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkg1OWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OneUniquePkg1LOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkg1BAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OneUniquePkg1BARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OneUniquePkg1GRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OneUniquePkg1GRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkg1SUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OneUniquePkg1OLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkg1SurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_OneUniquePkg1PIP: TIntegerField
      FieldName = 'PIP'
    end
    object sq_OneUniquePkg1Status: TIntegerField
      FieldName = 'Status'
    end
  end
  object sp_RemovePackageFromInventory: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TerminalNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_RemovePkgFromInventory_VI'
    Left = 192
    Top = 368
  end
  object sq_Prod_In_LO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LONo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PT.ProductNo                    AS PRODUCTNO'
      ''
      ''
      ''
      'FROM dbo.LoadShippingPlan LS'
      
        '        Inner Join dbo.Loads L                          ON      ' +
        'L.LoadNo = LS.LoadNo'
      
        '        Inner Join dbo.LoadDetail LD             ON LD.LoadNo = ' +
        'LS.LoadNo'
      #9#9#9#9#9'AND LD.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      
        '        Inner Join dbo.SupplierShippingPlan SSP '#9'ON '#9'SSP.Shippin' +
        'gPlanNo = LS.ShippingPlanNo'
      '        '#9#9#9#9#9#9'AND '#9'SSP.SupplierNo = L.SupplierNo'
      
        '                                                        AND SSP.' +
        'LoadingLocationNo = LS.LoadingLocationNo'
      
        '                                                        AND SSP.' +
        'ShipToInvPointNo = LS.ShipToInvPointNo'
      ''
      
        #9'Inner Join dbo.City'#9'Loading'#9#9'ON Loading.CityNo = SSP.LoadingLoc' +
        'ationNo'
      
        #9'Inner Join dbo.City'#9'ShipTo'#9#9'ON ShipTo.CityNo = SSP.ShipToInvPoi' +
        'ntNo'
      ''
      
        #9'Inner Join dbo.Client'#9#9'Supp '#9'ON  '#9'Supp.ClientNo'#9'= SSP.SupplierN' +
        'o'
      
        #9'Inner Join dbo.Client'#9#9'LocCust'#9'ON  '#9'LocCust.ClientNo'#9'= SSP.Cust' +
        'omerNo'
      ''
      
        '        INNER JOIN dbo.PackageNumber             PN ON PN.Packag' +
        'eNo = LD.PackageNo'
      #9#9#9#9#9#9#9'AND PN.SupplierCode = LD.SupplierCode'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      ''
      
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
      'WHERE'
      'LS.ShippingPlanNo = :LONo'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND LD.PackageNo IN'
      '(Select PN.PackageNo'
      ' From  dbo.PackageNumber PN'
      'WHERE'
      'PN.Status = 1'
      'AND PN.SupplierCode = LD.SupplierCode'
      ''
      ' )')
    Left = 160
    Top = 144
  end
  object dsp_Prod_In_LO: TDataSetProvider
    DataSet = sq_Prod_In_LO
    Left = 160
    Top = 192
  end
  object cds_Prod_In_LO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Prod_In_LO'
    ReadOnly = True
    Left = 160
    Top = 248
    object cds_Prod_In_LOPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object cds_Prod_In_LOPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
  end
  object ds_Prod_In_LO: TDataSource
    DataSet = cds_Prod_In_LO
    Left = 160
    Top = 296
  end
  object sp_Del_PkgProd: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    StoredProcName = 'Vida_Del_PkgProd'
    Left = 616
    Top = 200
  end
  object sp_updateFelReg: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_updateFelReg_II'
    Left = 616
    Top = 256
  end
  object sp_MovePkg: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_MovePkg'
    Left = 616
    Top = 320
  end
  object sq_PkgInLoad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT LD.LoadNo AS LastNr, LD.ShippingPlanNo AS LO'
      'FROM '
      'dbo.Loaddetail LD '
      'where LD.PackageNo = :PackageNo'
      'AND LD.SupplierCode = :SupplierCode')
    Left = 48
    Top = 328
    object sq_PkgInLoadLastNr: TIntegerField
      FieldName = 'LastNr'
    end
    object sq_PkgInLoadLO: TIntegerField
      FieldName = 'LO'
    end
  end
  object sp_PaRegPaket: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_PaRegistreraPaket'
    Left = 192
    Top = 464
  end
  object sq_OnePkg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserCompanyLoggedIn'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
        '        INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = P' +
        'N.PackageTypeNo'
      
        '        Inner Join dbo.PackageTypeLengths PTL ON PTL.PackageType' +
        'No = PT.PackageTypeNo'
      
        '        INNER JOIN dbo.Product      Pr  ON Pr.ProductNo     = Pt' +
        '.ProductNo'
      
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
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in '
      '(Select PhyInvPointNameNo from '
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)')
    Left = 48
    Top = 384
    object sq_OnePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OnePkgPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OnePkgPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OnePkgSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OnePkgM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OnePkgPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OnePkgM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OnePkgKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OnePkgLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OnePkgPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OnePkgINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OnePkgPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OnePkgOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OnePkgOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OnePkgLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OnePkgBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OnePkgBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OnePkgGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OnePkgGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OnePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OnePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
  end
  object sp_changePkgInventering: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_changePkgInventering'
    Left = 616
    Top = 376
  end
  object sp_NewPackageNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CreatedOfPkgStr'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OwnerNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ProducerNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_NewPackageNo_II'
    Left = 472
    Top = 152
  end
  object sp_OnePackageNo: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_OnePackageNo'
    Left = 48
    Top = 448
  end
  object sq_PkgNoAvail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select PackageNo, SupplierCode, PackageTypeNo from dbo.PackageNu' +
        'mber '
      'where PackageTypeNo = :PackageTypeNo'
      'and LogicalInventoryPointNo = :LogicalInventoryPointNo'
      'and Status = 1'
      'Order by DateCreated')
    Left = 352
    Top = 24
    object sq_PkgNoAvailPackageNo: TIntegerField
      FieldName = 'PackageNo'
    end
    object sq_PkgNoAvailSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Size = 3
    end
    object sq_PkgNoAvailPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
  end
  object sp_ExtMovePkg: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NewLogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OldLogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OLD_PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'OldSupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NewSupplierNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_ExtMovePkg'
    Left = 616
    Top = 432
  end
  object sq_PkgAvReg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT     RP.RegPointName, PP.ProductionDate'
      'FROM         Package_Production pp'
      
        'Inner Join dbo.RegistrationPoint RP on RP.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'WHERE PP.PackageNo = :PackageNo'
      'AND PP.SupplierCode = :SupplierCode'
      'AND RP.SequenceNo = 1'
      'AND pp.Operation = 3'
      'AND pp.SupplierNo = :SupplierNo')
    Left = 240
    Top = 144
    object sq_PkgAvRegRegPointName: TStringField
      FieldName = 'RegPointName'
      FixedChar = True
      Size = 30
    end
    object sq_PkgAvRegProductionDate: TSQLTimeStampField
      FieldName = 'ProductionDate'
    end
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
        Name = 'SUPPLIERNO'
        DataType = ftInteger
      end
      item
        Name = 'Old_PackageTypeNo'
        DataType = ftInteger
      end
      item
        Name = 'SurfacingNo'
        DataType = ftInteger
      end
      item
        Name = 'PIP'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'ACTTHICK'
        DataType = ftFloat
      end
      item
        Name = 'ACTWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'NOMTHICK'
        DataType = ftFloat
      end
      item
        Name = 'NOMWIDTH'
        DataType = ftFloat
      end
      item
        Name = 'ROWNO'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'StatusText'
        DataType = ftString
        Size = 50
      end>
    IndexFieldNames = 'ROWNO'
    IndexName = 'mtLoadPackagesIndex6'
    IndexDefs = <
      item
        Name = 'mtLoadPackagesIndex5'
        Fields = 'PACKAGENO;SUPP_CODE'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'mtLoadPackagesIndex6'
        Fields = 'ROWNO'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = mtLoadPackagesAfterInsert
    Left = 48
    Top = 24
    object mtLoadPackagesPRODUCT: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'PRODUCT'
      Size = 100
    end
    object mtLoadPackagesPACKAGENO: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PACKAGENO'
    end
    object mtLoadPackagesPACKAGETYPENO: TIntegerField
      DisplayLabel = 'PackageTypeNo'
      FieldName = 'PACKAGETYPENO'
    end
    object mtLoadPackagesSUPP_CODE: TStringField
      DisplayLabel = 'Lev.kod'
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object mtLoadPackagesM3_NET: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'M3_NET'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
    end
    object mtLoadPackagesM3_NOM: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'M3_NOM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesKVM: TFloatField
      DisplayLabel = 'M2'
      FieldName = 'KVM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesLOPM: TFloatField
      DisplayLabel = 'LPM'
      FieldName = 'LOPM'
      DisplayFormat = '#######.000'
    end
    object mtLoadPackagesProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtLoadPackagesINVENTORY: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'INVENTORY'
      Size = 50
    end
    object mtLoadPackagesPCS_PER_LENGTH: TStringField
      DisplayLabel = 'Styck/l'#228'ngd'
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object mtLoadPackagesOWNER: TStringField
      DisplayLabel = #196'gare'
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
      DisplayLabel = 'Barcode'
      FieldName = 'BAR_CODE'
    end
    object mtLoadPackagesBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object mtLoadPackagesGRADE_STAMP: TStringField
      DisplayLabel = 'Gradestamp'
      FieldName = 'GRADE_STAMP'
    end
    object mtLoadPackagesGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object mtLoadPackagesSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object mtLoadPackagesOld_PackageTypeNo: TIntegerField
      FieldName = 'Old_PackageTypeNo'
    end
    object mtLoadPackagesSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtLoadPackagesPIP: TIntegerField
      FieldName = 'PIP'
    end
    object mtLoadPackagesLoadDetailNo: TIntegerField
      FieldName = 'LoadDetailNo'
    end
    object mtLoadPackagesACTTHICK: TFloatField
      FieldName = 'ACTTHICK'
    end
    object mtLoadPackagesACTWIDTH: TFloatField
      FieldName = 'ACTWIDTH'
    end
    object mtLoadPackagesNOMTHICK: TFloatField
      FieldName = 'NOMTHICK'
    end
    object mtLoadPackagesNOMWIDTH: TFloatField
      FieldName = 'NOMWIDTH'
    end
    object mtLoadPackagesROWNO: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'ROWNO'
    end
    object mtLoadPackagesStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtLoadPackagesStatusText: TStringField
      FieldName = 'StatusText'
      Size = 50
    end
    object mtLoadPackagesInvNr: TIntegerField
      FieldName = 'InvNr'
    end
  end
  object sq_PkgStatus: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ClientNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT  pn.SupplierCode, LIPGH.LIPGroupNo, LIPGH.InvenType, LIPG' +
        '.LIPNo,'
      '(Select LIPG2.LIPNo from dbo.LIPGroup LIPG2'
      'WHERE'
      ' LIPG2.LIPGroupNo = LIPGH.LIPGroupNo'
      'AND LIPG2.AvReg = 1 ) AS AvReg,'
      'pn.LogicalInventoryPointNo AS PkgRealLIPNo'
      ''
      'FROM  dbo.PackageNumber pn'
      
        'Left Outer Join dbo.LIPGroup LIPG on LIPG.LIPNo = PN.LogicalInve' +
        'ntoryPointNo'
      
        'Left Outer Join dbo.LIPGroupHdr LIPGH on LIPGH.LIPGroupNo = LIPG' +
        '.LIPGroupNo'
      'AND LIPGH.ClientNo = :ClientNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    Left = 344
    Top = 216
    object sq_PkgStatusSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object sq_PkgStatusLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
    end
    object sq_PkgStatusInvenType: TIntegerField
      FieldName = 'InvenType'
    end
    object sq_PkgStatusLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object sq_PkgStatusAvReg: TIntegerField
      FieldName = 'AvReg'
    end
    object sq_PkgStatusPkgRealLIPNo: TIntegerField
      FieldName = 'PkgRealLIPNo'
    end
  end
  object dsp_PkgStatus: TDataSetProvider
    DataSet = sq_PkgStatus
    Left = 344
    Top = 264
  end
  object cds_PkgStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_PkgStatus'
    Left = 344
    Top = 312
    object cds_PkgStatusSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
      Size = 3
    end
    object cds_PkgStatusLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
    end
    object cds_PkgStatusInvenType: TIntegerField
      FieldName = 'InvenType'
    end
    object cds_PkgStatusLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object cds_PkgStatusAvReg: TIntegerField
      FieldName = 'AvReg'
    end
    object cds_PkgStatusPkgRealLIPNo: TIntegerField
      FieldName = 'PkgRealLIPNo'
    end
  end
  object sp_VardaBortPaket: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_Removepkg'
    Left = 344
    Top = 368
  end
  object mtPcsPerLength: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'ALMM'
    IndexName = 'mtPcsPerLengthIndex2'
    IndexDefs = <
      item
        Name = 'mtPcsPerLengthIndex1'
        Fields = 'ALMM'
      end
      item
        Name = 'mtPcsPerLengthIndex2'
        Fields = 'ProductLengthNo'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.50'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 336
    Top = 136
    object mtPcsPerLengthProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtPcsPerLengthProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtPcsPerLengthNoOfPieces: TIntegerField
      FieldName = 'NoOfPieces'
    end
    object mtPcsPerLengthUserID: TIntegerField
      FieldName = 'UserID'
    end
    object mtPcsPerLengthALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object sq_OneUniquePkgExt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Status'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status,'
      '        PG.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
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
      ' '
      ' ')
    Left = 736
    Top = 224
    object sq_OneUniquePkgExtPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Size = 100
    end
    object sq_OneUniquePkgExtPACKAGENO: TIntegerField
      FieldName = 'PACKAGENO'
    end
    object sq_OneUniquePkgExtPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
    end
    object sq_OneUniquePkgExtSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Size = 3
    end
    object sq_OneUniquePkgExtM3_NET: TFloatField
      FieldName = 'M3_NET'
    end
    object sq_OneUniquePkgExtPCS: TIntegerField
      FieldName = 'PCS'
    end
    object sq_OneUniquePkgExtM3_NOM: TFloatField
      FieldName = 'M3_NOM'
    end
    object sq_OneUniquePkgExtKVM: TFloatField
      FieldName = 'KVM'
    end
    object sq_OneUniquePkgExtLOPM: TFloatField
      FieldName = 'LOPM'
    end
    object sq_OneUniquePkgExtPRODUCTNO: TIntegerField
      FieldName = 'PRODUCTNO'
    end
    object sq_OneUniquePkgExtINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Size = 50
    end
    object sq_OneUniquePkgExtPCS_PER_LENGTH: TStringField
      FieldName = 'PCS_PER_LENGTH'
      Size = 255
    end
    object sq_OneUniquePkgExtOWNER: TStringField
      FieldName = 'OWNER'
      Size = 80
    end
    object sq_OneUniquePkgExtOWNERNO: TIntegerField
      FieldName = 'OWNERNO'
    end
    object sq_OneUniquePkgExtLOG_INVENTORY_NO: TIntegerField
      FieldName = 'LOG_INVENTORY_NO'
    end
    object sq_OneUniquePkgExtBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
    end
    object sq_OneUniquePkgExtBARCODE_ID: TIntegerField
      FieldName = 'BARCODE_ID'
    end
    object sq_OneUniquePkgExtGRADE_STAMP: TStringField
      FieldName = 'GRADE_STAMP'
    end
    object sq_OneUniquePkgExtGRADESTAMPNO: TIntegerField
      FieldName = 'GRADESTAMPNO'
    end
    object sq_OneUniquePkgExtSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgExtOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgExtSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object sq_OneUniquePkgExtPIP: TIntegerField
      FieldName = 'PIP'
    end
    object sq_OneUniquePkgExtStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object sp_AktiveraPktExt: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PackageNo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SupplierCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegistrationPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PackageTypeNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'LogicalInventoryPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UserID'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DateCreated'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MatPunktAgareNo'
        ParamType = ptInput
      end>
    StoredProcName = 'vis_AktiveraPktExt'
    Left = 192
    Top = 512
  end
  object FDsp_vida_ChgPkgVard: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_ChgPkgVard'
    Left = 824
    Top = 24
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
        Name = '@DateCreated'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object FDsp_vis_PkgType_II: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_PkgType_II'
    Left = 952
    Top = 24
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
      end
      item
        Position = 6
        Name = '@PcsPerLength'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end>
  end
  object FDsp_vis_NewPkgType: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vis_NewPkgType'
    Left = 952
    Top = 80
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
  object FDsp_vida_NewPackageDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_NewPackageDetail'
    Left = 952
    Top = 128
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
  object FDsp_vida_Populate_One_PackageTypeLengths: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 952
    Top = 192
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
  object FDsp_vida_PackageTotals: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PackageTotals'
    Left = 952
    Top = 256
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
  object sq_OneUniquePkg: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT distinct'
      '        PR.ProductDisplayName           AS PRODUCT,'
      '        PN.PackageNo'#9#9'        AS PACKAGENO,'
      '        PN.PackageTypeNo'#9'        AS PACKAGETYPENO,'
      '        PN.SupplierCode'#9'                AS SUPP_CODE,'
      '        PT.Totalm3Actual                AS  M3_NET,'
      '        PT.TotalNoOfPieces              AS  PCS,'
      '        PT.Totalm3Nominal'#9#9'AS M3_NOM,'
      #9'PT.TotalSQMofActualWidth'#9'AS KVM,'
      #9'PT.TotalLinealMeterActualLength AS LOPM,'
      '        PT.ProductNo                    AS PRODUCTNO,'
      
        '        Cy.CityName+'#39'/'#39'+LIP.LogicalInventoryName                ' +
        '     AS INVENTORY,'
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
      '        PN.PackageTypeNo'#9'        AS OLD_PACKAGETYPENO,'
      '        PIP.PhysicalInventoryPointNo    AS PIP,'
      '        PN.Status,'
      '        PG.SurfacingNo'
      ''
      ''
      ''
      ''
      'FROM       dbo.PackageNumber             PN'
      
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
      'AND ((PN.Status = 1) or (PN.Status = :Status))'
      'AND PIP.OwnerNo = :OwnerNo'
      ''
      'AND PIP.PhyInvPointNameNo in'
      '(Select PhyInvPointNameNo from'
      'PHYSICALINVENTORYPOINT'
      'where OwnerNo = :UserCompanyLoggedIn)')
    Left = 952
    Top = 416
    ParamData = <
      item
        Name = 'PACKAGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDIN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OneUniquePkgPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 150
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
      ReadOnly = True
      Size = 101
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
    object sq_OneUniquePkgSUPPLIERNO: TIntegerField
      FieldName = 'SUPPLIERNO'
      Origin = 'SUPPLIERNO'
    end
    object sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField
      FieldName = 'OLD_PACKAGETYPENO'
      Origin = 'OLD_PACKAGETYPENO'
    end
    object sq_OneUniquePkgSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sq_OneUniquePkgPIP: TIntegerField
      FieldName = 'PIP'
      Origin = 'PIP'
      Required = True
    end
    object sq_OneUniquePkgPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object sq_OneUniquePkgPKGWIDTH: TIntegerField
      FieldName = 'PKGWIDTH'
      Origin = 'PKGWIDTH'
    end
    object sq_OneUniquePkgMINI_BUNDLE: TIntegerField
      FieldName = 'MINI_BUNDLE'
      Origin = 'MINI_BUNDLE'
    end
    object sq_OneUniquePkgSHRINK_WRAP: TIntegerField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
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
    object sq_OneUniquePkgStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object sq_OneUniquePkgONSTICKS: TIntegerField
      FieldName = 'ONSTICKS'
      Origin = 'ONSTICKS'
    end
  end
  object sq_ProductLengths: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.Nomina' +
        'lLengthMM, PL.NominalLengthFEET ,'
      'PL.ActualLengthINCH , PL.PET , PL.FingerJoint'
      
        'FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL O' +
        'N PL.ProductLengthNo = PGL.ProductLengthNo'
      ''
      ''
      'Where PL.ActualLengthMM < 20000')
    Left = 816
    Top = 416
    object sq_ProductLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ProductLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
    object sq_ProductLengthsNominalLengthMM: TFloatField
      FieldName = 'NominalLengthMM'
      Origin = 'NominalLengthMM'
      Required = True
    end
    object sq_ProductLengthsNominalLengthFEET: TFloatField
      FieldName = 'NominalLengthFEET'
      Origin = 'NominalLengthFEET'
    end
    object sq_ProductLengthsActualLengthINCH: TStringField
      FieldName = 'ActualLengthINCH'
      Origin = 'ActualLengthINCH'
      FixedChar = True
      Size = 15
    end
    object sq_ProductLengthsPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object sq_ProductLengthsFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
  end
  object FDsp_vida_PackageTypeDetail: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 680
    Top = 24
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
end
