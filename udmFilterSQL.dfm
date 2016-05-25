object dmFilterSQL: TdmFilterSQL
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 334
  Width = 720
  object sqFilterData: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT PN.PositionID, PG.ActualThicknessMM, PG.ActualWi' +
        'dthMM, '
      'PG.NominalThicknessMM, PG.NominalWidthMM'
      
        ',G.GradeName, G.GradeCode, S.SurfacingName, S.SurfacingCode, SP.' +
        'SpeciesName, SP.SpeciesCode, VG.VarugruppNamn, VG.VarugruppNo'
      
        ',IMP.ProductCategoryName AS PC, LS.LengthDesc, PN.REFERENCE, PN.' +
        'BL_NO AS Info1'
      ',PN.Info2 '
      'FROM dbo.PackageNumber PN'
      'JOIN dbo.PackageType PT ON PT.PackageTypeNo = PN.PackageTypeNo'
      'JOIN dbo.Product P ON P.ProductNo = PT.ProductNo'
      'JOIN dbo.ProductGroup PG ON PG.ProductGroupNo = P.ProductGroupNo'
      'JOIN dbo.LengthSpec LS ON LS.LengthSpecNo = PT.LengthSpecNo'
      
        'JOIN dbo.Grade G ON G.GradeNo = P.GradeNo AND G.LanguageCode=:La' +
        'nguageCode'
      
        'JOIN dbo.Surfacing S ON S.SurfacingNo = PG.SurfacingNo AND S.Lan' +
        'guageCode=:LanguageCode'
      
        'JOIN dbo.Species SP ON SP.SpeciesNo = PG.SpeciesNo AND SP.Langua' +
        'geCode=:LanguageCode'
      
        'LEFT OUTER JOIN dbo.VaruGrupp VG ON VG.VarugruppNo = P.Varugrupp' +
        'No AND VG.LanguageCode=:LanguageCode'
      
        'JOIN dbo.ProductCategory IMP ON IMP.ProductCategoryNo = PG.Produ' +
        'ctCategoryNo AND IMP.LanguageCode=:LanguageCode'
      'LEFT OUTER Join dbo.LoadDetail LD '
      'LEFT join dbo.Invoiced_Load inl on inl.LoadNo = LD.LoadNo'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = csd.OrderNo'
      'on LD.PackageNo = PN.PackageNo'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      
        'Inner Join dbo.Area Ar on Ar.PIPNo = LIP.PhysicalInventoryPointN' +
        'o'
      'WHERE PN.PositionID IN (145,146)')
    Left = 152
    Top = 8
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
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
      
        'declare @Alternativ int = 1 -- LAGRADE PAKET, (2)=EJ FAKTURERADE' +
        ' & EJ LAGRADE PAKET, (3)=EJ FAKTURERADE + LAGRADE PAKET '
      'select '
      'cy.CityName AS City, '
      'LIP.LogicalInventoryName, '
      '--Count(str(PN.PackageNo)+PN.SupplierCode) AS Paket, '
      'pt.TotalNoOfPieces AS pcs, '
      'pt.Totalm3Actual AS AM3, '
      'pt.Totalm3Nominal AS NM3,'
      ''
      'pg.ActualThicknessMM AS AT,'
      'pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      'dbo.getMaxlengthOfPackage(PN.PackageNo) AS AL,'
      ''
      
        'CAST(pg.ActualThicknessMM as varchar(6)) + '#39'x'#39' + cast(pg.ActualW' +
        'idthMM as varchar(6)) AS dim,'
      ''
      'SPE.SpeciesName AS TS,'
      'imp.ProductCategoryName AS PC,'
      'Gr.GradeName AS KV,'
      'SUR.SurfacingName AS UT,'
      'lip.LogicalInventoryPointNo AS LIPNo, '
      'pip.PhysicalInventoryPointNo AS PIPNo,'
      'va.VarugruppNamn,'
      'pn.REFERENCE, '
      'pn.BL_NO AS Info1,  '
      'pn.Info2,'
      'ar.AreaName,'
      'Posi.PositionName'
      ',PN.StoredDate'
      ',pde.ProductDisplayName AS Product'
      ',PN.PackageNo'
      ',PN.SupplierCode'
      ',PN.DateCreated'
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
      'on LD.PackageNo = PN.PackageNo'
      ''
      ''
      
        'Left Outer Join dbo.CertificationWood cw on cw.CertNo = IsNull(p' +
        'n.CertNo,3)'
      
        'Left join [dbo].[PackageSize] ps on ps.PackageSizeNo = pn.Packag' +
        'e_Size'
      'and ps.LanguageCode = 1'
      
        'inner join dbo.Packagetype pt on pt.packagetypeno = pn.packagety' +
        'peno'
      ''
      
        'Inner Join dbo.LengthSpec LS ON LS.LengthSpecNo = pt.LengthSpecN' +
        'o'
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
      'AND va.LanguageCode = :LanguageCode'
      
        'Inner Join dbo.ProductCategory imp ON imp.ProductCategoryNo = pg' +
        '.ProductCategoryNo'
      'AND imp.LanguageCode = :LanguageCode'
      'Inner Join dbo.Species SPE ON SPE.SpeciesNo = pg.SpeciesNo'
      'AND SPE.LanguageCode = :LanguageCode'
      'Inner Join dbo.Surfacing SUR ON SUR.SurfacingNo = pg.SurfacingNo'
      'AND SUR.LanguageCode = :LanguageCode'
      'Inner Join dbo.Grade   Gr ON Gr.GradeNo = p.GradeNo'
      'AND Gr.LanguageCode = :LanguageCode'
      ''
      'WHERE '
      'PIP.OwnerNo = 830'
      'and LIP.LogicalInventoryPointNo=10721'
      'and PN.DateCreated > DATEADD(year,-1,GETDATE())'
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
      'Order by PN.DateCreated'
      '')
    Left = 276
    Top = 13
    ParamData = <
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object cds_PositionViewCity: TStringField
      FieldName = 'City'
      Origin = 'City'
      Size = 50
    end
    object cds_PositionViewLogicalInventoryName: TStringField
      FieldName = 'LogicalInventoryName'
      Origin = 'LogicalInventoryName'
      Size = 50
    end
    object cds_PositionViewpcs: TIntegerField
      FieldName = 'pcs'
      Origin = 'pcs'
    end
    object cds_PositionViewAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_PositionViewNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_PositionViewAT: TFloatField
      FieldName = 'AT'
      Origin = 'AT'
    end
    object cds_PositionViewAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cds_PositionViewNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cds_PositionViewNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cds_PositionViewAL: TFloatField
      FieldName = 'AL'
      Origin = 'AL'
      ReadOnly = True
    end
    object cds_PositionViewdim: TStringField
      FieldName = 'dim'
      Origin = 'dim'
      ReadOnly = True
      Size = 13
    end
    object cds_PositionViewTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cds_PositionViewPC: TStringField
      FieldName = 'PC'
      Origin = 'PC'
      Required = True
      Size = 40
    end
    object cds_PositionViewKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cds_PositionViewUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cds_PositionViewLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      Required = True
    end
    object cds_PositionViewPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      Required = True
    end
    object cds_PositionViewVarugruppNamn: TStringField
      FieldName = 'VarugruppNamn'
      Origin = 'VarugruppNamn'
      Size = 35
    end
    object cds_PositionViewREFERENCE: TStringField
      FieldName = 'REFERENCE'
      Origin = 'REFERENCE'
      Size = 30
    end
    object cds_PositionViewInfo1: TStringField
      FieldName = 'Info1'
      Origin = 'Info1'
      Size = 30
    end
    object cds_PositionViewInfo2: TStringField
      FieldName = 'Info2'
      Origin = 'Info2'
      Size = 30
    end
    object cds_PositionViewAreaName: TStringField
      FieldName = 'AreaName'
      Origin = 'AreaName'
      Size = 50
    end
    object cds_PositionViewPositionName: TStringField
      FieldName = 'PositionName'
      Origin = 'PositionName'
      Size = 50
    end
    object cds_PositionViewStoredDate: TSQLTimeStampField
      FieldName = 'StoredDate'
      Origin = 'StoredDate'
    end
    object cds_PositionViewProduct: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      Size = 150
    end
    object cds_PositionViewPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PositionViewSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object PkgUpdateSQL1: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO PackageNumber'
      '(PackageNo, SupplierCode, REFERENCE, Info2, '
      '  StoredDate)'
      
        'VALUES (:NEW_PackageNo, :NEW_SupplierCode, :NEW_REFERENCE, :NEW_' +
        'Info2, '
      '  :NEW_StoredDate)')
    ModifySQL.Strings = (
      'UPDATE PackageNumber'
      
        'SET PackageNo = :NEW_PackageNo, SupplierCode = :NEW_SupplierCode' +
        ', '
      
        '  REFERENCE = :NEW_REFERENCE, Info2 = :NEW_Info2, StoredDate = :' +
        'NEW_StoredDate'
      
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
      '  CertNo, LOid, PositionID, StoredDate, RowGroupNo, MyPositionID'
      'FROM PackageNumber'
      'WHERE PackageNo = :PackageNo AND SupplierCode = :SupplierCode')
    Left = 280
    Top = 136
  end
end
