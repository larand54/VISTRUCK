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
    DataSet = cds_PositionView_Invoiced
    Left = 276
    Top = 69
  end
  object cds_PositionView_Invoiced: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'declare @LanguageCode int = 1'
      'select cy.CityName AS City, '
      'LIP.LogicalInventoryName, '
      'Count(str(PackageNo)+suppliercode) AS Paket, '
      ''
      'sum(pt.TotalNoOfPieces) AS pcs, '
      'sum(pt.Totalm3Actual) AS AM3, '
      'sum(pt.Totalm3Nominal) AS NM3,'
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
      ',PN.StoredDate,'
      'pde.ProductDisplayName AS Product,'
      'PN.PackageNo AS PN'
      ''
      ''
      ''
      'from dbo.PackageNumber pn'
      'Left outer join dbo.Position posi '
      'inner join dbo.Area ar on ar.AreaID = posi.AreaID'
      'on posi.PositionID = pn.PositionID '
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
      '(PIP.Owner=830)'
      'AND (pn.Status = 1)'
      'AND (LIP.LogicalInventoryPointNo IN (10718))'
      'and '
      'Group by cy.CityName, LIP.LogicalInventoryName, '
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pg.NominalThicknessMM,'
      'pg.NominalWidthMM,'
      'dbo.getMaxlengthOfPackage(PN.PackageNo),'
      ''
      
        'CAST(pg.ActualThicknessMM as varchar(6)) + '#39'x'#39' + cast(pg.ActualW' +
        'idthMM as varchar(6)),'
      ''
      'SPE.SpeciesName,'
      'imp.ProductCategoryName,'
      'Gr.GradeName,'
      'SUR.SurfacingName,'
      'lip.LogicalInventoryPointNo, '
      'pip.PhysicalInventoryPointNo,'
      'va.VarugruppNamn,'
      'pn.REFERENCE, '
      'pn.BL_NO,  '
      'pn.Info2,'
      'ar.AreaName,'
      'Posi.PositionName,'
      'PN.StoredDate,'
      'pde.ProductDisplayName,'
      'PN.PackageNo'
      '')
    Left = 276
    Top = 13
  end
  object cds_PositionView_not_Invoiced: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'declare @LanguageCode int = 1'
      'select cy.CityName AS City, '
      'LIP.LogicalInventoryName, '
      'Count(str(PackageNo)+suppliercode) AS Paket, '
      ''
      'sum(pt.TotalNoOfPieces) AS pcs, '
      'sum(pt.Totalm3Actual) AS AM3, '
      'sum(pt.Totalm3Nominal) AS NM3,'
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
      ',PN.StoredDate,'
      'pde.ProductDisplayName AS Product,'
      'PN.PackageNo AS PN'
      ''
      ''
      ''
      'from dbo.PackageNumber pn'
      'Left outer join dbo.Position posi '
      'inner join dbo.Area ar on ar.AreaID = posi.AreaID'
      'on posi.PositionID = pn.PositionID '
      ''
      ''
      'Inner Join dbo.LoadDetail LD on LD.PackageNo = PN.PackageNo'
      'LEFT join dbo.Invoiced_Load inl on inl.LoadNo = LD.LoadNo'
      
        'Inner Join dbo.CustomerShippingPlanDetails csd on csd.CustShipPl' +
        'anDetailObjectNo = LD.DefaultCustShipObjectNo'
      'Inner Join dbo.Orders oh on oh.OrderNo = csd.OrderNo'
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
      'PIP.OwnerNo = 830'
      'and pn.[Status] = 1'
      
        'AND NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos WHERE nos.Inter' +
        'nalInvoiceNo = inl.InternalInvoiceNo)'
      ''
      'Group by cy.CityName, LIP.LogicalInventoryName, '
      'pg.ActualThicknessMM,'
      'pg.ActualWidthMM,'
      'pg.NominalThicknessMM,'
      'pg.NominalWidthMM,'
      'dbo.getMaxlengthOfPackage(PN.PackageNo),'
      ''
      
        'CAST(pg.ActualThicknessMM as varchar(6)) + '#39'x'#39' + cast(pg.ActualW' +
        'idthMM as varchar(6)),'
      ''
      'SPE.SpeciesName,'
      'imp.ProductCategoryName,'
      'Gr.GradeName,'
      'SUR.SurfacingName,'
      'lip.LogicalInventoryPointNo, '
      'pip.PhysicalInventoryPointNo,'
      'va.VarugruppNamn,'
      'pn.REFERENCE, '
      'pn.BL_NO,  '
      'pn.Info2,'
      'ar.AreaName,'
      'Posi.PositionName,'
      'PN.StoredDate,'
      'pde.ProductDisplayName,'
      'PN.PackageNo'
      '')
    Left = 460
    Top = 13
  end
end
