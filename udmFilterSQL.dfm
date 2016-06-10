object dmFilterSQL: TdmFilterSQL
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 334
  Width = 720
  object sqFilterData: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'DECLARE @LanguageCode int = 1'
      'DECLARE @Source int = 0'
      'SET @LanguageCode = :LanguageCode'
      'SET @Source = :Source'
      
        'SELECT DISTINCT  PN. PositionID, PG.ActualThicknessMM, PG.Actual' +
        'WidthMM, '
      'PG.NominalThicknessMM, PG.NominalWidthMM'
      
        ',GR.GradeName, GR.GradeCode, SUR.SurfacingName, SUR.SurfacingCod' +
        'e, SPE.SpeciesName, SPE.SpeciesCode, VA.VarugruppNamn, VA.Varugr' +
        'uppNo'
      
        ',IMP.ProductCategoryName AS PC, isnull(PN.REFERENCE,'#39'NULL'#39') AS R' +
        'EFERENCE, isnull(PN.BL_NO, '#39'NULL'#39') AS Info1'
      ',isnull(PN.Info2,'#39'NULL'#39') AS Info2'
      ',dbo.getMaxlengthOfPackage(PN.PackageNo, PN.SupplierCode) AS AL'
      ''
      'FROM dbo.PackageNumber PN'
      'Left outer join dbo.Position posi '
      'inner join dbo.Area ar on ar.AreaID = posi.AreaID'
      'on posi.PositionID = pn.PositionID '
      ''
      'LEFT OUTER Join dbo.LoadDetail LD '
      'LEFT join dbo.Invoiced_Load inl on inl.LoadNo = LD.LoadNo'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = csd.OrderNo'
      
        'on LD.PackageNo = PN.PackageNo AND LD.SupplierCode = PN.Supplier' +
        'Code AND @Source > 0'
      ''
      
        'inner join dbo.Packagetypedetail ptd on ptd.packagetypeno = pn.p' +
        'ackagetypeno'
      
        'inner join dbo.PackageType pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'Left join dbo.ProductDesc pde on pde.ProductNo = pt.ProductNo'
      'AND pde.LanguageID = @LanguageCode'
      
        'inner join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = p.Varugrupp' +
        'No'
      'AND va.LanguageCode = @LanguageCode'
      
        'Inner Join dbo.ProductCategory imp ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      'AND imp.LanguageCode = @LanguageCode'
      'Inner Join dbo.Species SPE ON SPE.SpeciesNo = pg.SpeciesNo'
      'AND SPE.LanguageCode = @LanguageCode'
      'Inner Join dbo.Surfacing SUR ON SUR.SurfacingNo = pg.SurfacingNo'
      'AND SUR.LanguageCode = @LanguageCode'
      'Inner Join dbo.Grade   Gr ON Gr.GradeNo = p.GradeNo'
      'AND Gr.LanguageCode = @LanguageCode'
      'WHERE'
      '(PN.STATUS = 1)'
      'AND (PIP.OwnerNo IN (76))')
    Left = 152
    Top = 8
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'SOURCE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object ds_PositionView: TDataSource
    DataSet = cds_PositionView
    Left = 276
    Top = 69
  end
  object cds_PositionView: TFDQuery
    OnUpdateRecord = cds_PositionViewUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.PackageNumber'
    UpdateObject = PkgUpdateSQL1
    SQL.Strings = (
      'declare @LanguageCode int = 1'
      
        'declare @Source int = 1 -- LAGRADE PAKET, (2)=EJ FAKTURERADE & E' +
        'J LAGRADE PAKET, (3)=EJ FAKTURERADE + LAGRADE PAKET '
      'SET @LanguageCode = :LanguageCode'
      'SET @Source = :Source'
      'select '
      'cy.CityName AS City, '
      'LIP.LogicalInventoryName, '
      'COUNT(pn.PackageNo) as Paket,'
      'sum(ptd.NoOfPieces) AS PCS,'
      'sum(ptd.m3Actual) AS AM3,'
      'sum(ptd.m3Nominal) AS NM3,'
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      'dbo.getMaxlengthOfPackage(PN.PackageNo, PN.SupplierCode) AS AL,'
      ''
      
        'CAST(pg.ActualThicknessMM as varchar(6)) + '#39'x'#39' + cast(pg.ActualW' +
        'idthMM as varchar(6)) AS dim,'
      ''
      'SPE.SpeciesName AS TS,'
      'imp.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'va.VarugruppNamn,'
      'pn.REFERENCE, '
      'isnull(pn.BL_NO,'#39#39') AS BL_NO,  '
      'isnull(pn.Info2,'#39#39') AS Info2,'
      'ar.AreaName,'
      'Posi.PositionName'
      ',PN.StoredDate'
      ',pde.ProductDisplayName AS Product'
      ',PN.PackageNo'
      ',PN.SupplierCode'
      '--,PN.DateCreated'
      ''
      ''
      ''
      'from dbo.PackageNumber pn'
      'Left outer join dbo.Position posi '
      'inner join dbo.Area ar on ar.AreaID = posi.AreaID'
      'on posi.PositionID = pn.PositionID '
      ''
      ''
      'LEFT OUTER Join dbo.LoadDetail LD '
      'LEFT join dbo.Invoiced_Load inl on inl.LoadNo = LD.LoadNo'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = csd.OrderNo'
      
        'on LD.PackageNo = PN.PackageNo AND LD.SupplierCode = PN.Supplier' +
        'Code AND @Source > 1'
      ''
      ''
      
        'Left Outer Join dbo.CertificationWood cw on cw.CertNo = IsNull(p' +
        'n.CertNo,3)'
      
        'Left join [dbo].[PackageSize] ps on ps.PackageSizeNo = pn.Packag' +
        'e_Size'
      'and ps.LanguageCode = 1'
      
        'inner join dbo.Packagetypedetail ptd on ptd.packagetypeno = pn.p' +
        'ackagetypeno'
      
        'inner join dbo.PackageType pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      'inner join dbo.Product p on p.ProductNo = pt.ProductNo'
      'Left join dbo.ProductDesc pde on pde.ProductNo = pt.ProductNo'
      'AND pde.LanguageID = @LanguageCode'
      
        'inner join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = pn.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City cy on cy.CityNo = PIP.PhyInvPointNameNo'
      ''
      
        'Left Outer Join dbo.Varugrupp va on va.VarugruppNo = p.Varugrupp' +
        'No'
      'AND va.LanguageCode = @LanguageCode'
      
        'Inner Join dbo.ProductCategory imp ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      'AND imp.LanguageCode = @LanguageCode'
      'Inner Join dbo.Species SPE ON SPE.SpeciesNo = pg.SpeciesNo'
      'AND SPE.LanguageCode = @LanguageCode'
      'Inner Join dbo.Surfacing SUR ON SUR.SurfacingNo = pg.SurfacingNo'
      'AND SUR.LanguageCode = @LanguageCode'
      'Inner Join dbo.Grade   Gr ON Gr.GradeNo = p.GradeNo'
      'AND Gr.LanguageCode = @LanguageCode'
      ''
      'WHERE '
      '(PN.STATUS = 1)'
      ''
      'AND (PIP.OwnerNo IN (76))'
      'AND (LIP.LogicalInventoryPointNo IN (10435))'
      '--and (@Source>0 AND OH.ORDERTYPE = 0)'
      '--  EJ FAKTURERADE OCH EJ LAGRADE'
      '--  ============================='
      '--and pn.[Status] = 0 --1460 rader'
      
        '--AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Int' +
        'ernalInvoiceNo = inl.InternalInvoiceNo)'
      ''
      '--and pn.Status=1 -- 24 rader (2750 - 2726)'
      
        '--AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Int' +
        'ernalInvoiceNo = inl.InternalInvoiceNo)'
      ''
      '--and pn.Status=1 -- 2726 rader (169952 - 172678)'
      
        '--AND EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Interna' +
        'lInvoiceNo = inl.InternalInvoiceNo)'
      ''
      '--and pn.Status=0 --169952 rader'
      
        '--AND EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Interna' +
        'lInvoiceNo = inl.InternalInvoiceNo)'
      ''
      '--  LAGRADE PAKET'
      '--  ============='
      'and pn.Status=1 -- 2750 rader'
      ''
      '--172678 rader'
      
        '--AND EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Interna' +
        'lInvoiceNo = inl.InternalInvoiceNo)'
      ''
      '-- 1484 rader'
      
        '--AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Int' +
        'ernalInvoiceNo = inl.InternalInvoiceNo)'
      ''
      ''
      '--and pn.Status not in (0)'
      ''
      '-- LAGER + OFAKTURERADE PAKET'
      '-- ============================='
      '--and (pn.Status=1 -- 4182 rader'
      
        '--OR not EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Inte' +
        'rnalInvoiceNo = inl.InternalInvoiceNo))'
      'Group by'
      'cy.CityName,'
      'LIP.LogicalInventoryName, '
      
        'CAST(pg.ActualThicknessMM as varchar(6)) + '#39'x'#39' + cast(pg.ActualW' +
        'idthMM as varchar(6))'
      ','
      'SPE.SpeciesName'
      ','
      'imp.ProductCategoryName'
      ','
      'Gr.GradeName'
      ','
      'SUR.SurfacingName'
      ''
      ','
      'pg.ActualThicknessMM'
      ','
      'pg.ActualWidthMM'
      ','
      'pg.NominalThicknessMM'
      ','
      'pg.NominalWidthMM'
      ','
      'dbo.getMaxLengthOfPackage(PN.PackageNo, PN.SupplierCode)'
      ','
      'va.VarugruppNamn'
      ','
      'pn.REFERENCE'
      ','
      'pn.BL_NO'
      ','
      'pn.Info2'
      ','
      'ar.AreaName'
      ','
      'Posi.PositionName'
      ','
      'PN.StoredDate'
      ','
      'PDE.ProductDisplayName'
      ',PN.PackageNo'
      ',PN.SupplierCode'
      '--,PN.DateCreated'
      '--Order by PN.DateCreated'
      '')
    Left = 276
    Top = 13
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'SOURCE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object PkgUpdateSQL1: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PackageNumber'
      '(PackageNo, SupplierCode, REFERENCE, BL_NO, '
      '  Info2)'
      
        'VALUES (:NEW_PackageNo, :NEW_SupplierCode, :NEW_REFERENCE, :NEW_' +
        'BL_NO, '
      '  :NEW_Info2)')
    ModifySQL.Strings = (
      'UPDATE PackageNumber'
      
        'SET PackageNo = :NEW_PackageNo, SupplierCode = :NEW_SupplierCode' +
        ', '
      
        '  REFERENCE = :NEW_REFERENCE, BL_NO = :NEW_BL_NO, Info2 = :NEW_I' +
        'nfo2'
      
        'WHERE PackageNo = :OLD_PackageNo AND SupplierCode = :OLD_Supplie' +
        'rCode')
    DeleteSQL.Strings = (
      'DELETE FROM PackageNumber'
      
        'WHERE PackageNo = :OLD_PackageNo AND SupplierCode = :OLD_Supplie' +
        'rCode')
    FetchRowSQL.Strings = (
      
        'SELECT PackageNo, PackageTypeNo, SupplierCode, LogicalInventoryP' +
        'ointNo, '
      '  SupplierNo, Status, SequenceNo, CreatedUser, ModifiedUser, '
      '  DateCreated, Original_Price, Original_In_Date, Update_Price, '
      '  Update_Price_Date, CreatedOfPkgStr, AvgLengthType, REFERENCE, '
      '  BL_NO, RegPointType, Info2, PkgArticleNo, Package_Size, '
      '  CertNo, LOid, PositionID, StoredDate'
      'FROM PackageNumber'
      'WHERE PackageNo = :PackageNo AND SupplierCode = :SupplierCode')
    Left = 280
    Top = 136
  end
  object mtSelectedPackages: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PackageNo'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SupplierCode'
        Attributes = [faRequired]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BL_NO'
        Attributes = [faReadonly, faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Info2'
        Attributes = [faReadonly, faRequired]
        DataType = ftString
        Size = 30
      end>
    IndexFieldNames = 'PackageNo;SupplierCode'
    IndexName = 'mtSelectedPackagesIndex2'
    IndexDefs = <
      item
        Name = 'mtSelectedPackagesIndex2'
        Fields = 'PackageNo;SupplierCode'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = True
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 464
    Top = 32
    object mtSelectedPackagesPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Required = True
    end
    object mtSelectedPackagesSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Required = True
      FixedChar = True
      Size = 3
    end
    object mtSelectedPackagesREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Size = 30
    end
    object mtSelectedPackagesBL_NO: TStringField
      FieldName = 'BL_NO'
      Required = True
      Size = 30
    end
    object mtSelectedPackagesInfo2: TStringField
      FieldName = 'Info2'
      Required = True
      Size = 30
    end
  end
end
