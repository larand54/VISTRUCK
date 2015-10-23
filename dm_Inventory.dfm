object dmInventory: TdmInventory
  OldCreateOrder = False
  Height = 967
  Width = 1269
  object ds_LengthGroup: TDataSource
    DataSet = cds_LengthGroup
    Left = 504
    Top = 192
  end
  object ds_ProductLengthInGroup: TDataSource
    DataSet = cds_ProductLengthInGroup
    Left = 656
    Top = 112
  end
  object sq_Specie: TFDQuery
    SQL.Strings = (
      'Select  s.speciescode, S.SpeciesNo,'
      'CASE WHEN s.speciescode is null then'
      'S.speciesName'
      'ELSE'
      'S.speciescode+'#39' - '#39'+S.speciesName'
      'END AS speciesName'
      'From dbo.Species S'
      'where S.LanguageCode = 1'
      'AND S.SpeciesNo > 0'
      'Order by S.speciescode')
    Left = 432
    Top = 16
    object sq_Speciespeciescode: TStringField
      FieldName = 'speciescode'
      Origin = 'speciescode'
      Size = 5
    end
    object sq_SpecieSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SpeciespeciesName: TStringField
      FieldName = 'speciesName'
      Origin = 'speciesName'
      ReadOnly = True
      Size = 38
    end
  end
  object sq_grade: TFDQuery
    SQL.Strings = (
      'Select '
      'CASE WHEN g.gradecode is null then'
      'G.GradeName'
      'ELSE'
      'g.gradecode+'#39' - '#39'+G.GradeName'
      'END AS GradeName,'
      'G.GradeNo, g.gradecode'
      'From dbo.Grade G'
      'where g.LanguageCode = 1'
      'AND G.GradeNo > 0'
      'Order by g.gradecode , G.GradeName')
    Left = 432
    Top = 72
    object sq_gradeGradeName: TStringField
      FieldName = 'GradeName'
      Origin = 'GradeName'
      ReadOnly = True
      Size = 38
    end
    object sq_gradeGradeNo: TIntegerField
      FieldName = 'GradeNo'
      Origin = 'GradeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_gradegradecode: TStringField
      FieldName = 'gradecode'
      Origin = 'gradecode'
      Size = 5
    end
  end
  object sq_Surfacing: TFDQuery
    SQL.Strings = (
      'Select  s.Surfacingcode, S.SurfacingNo,'
      'CASE WHEN s.Surfacingcode is null then'
      'S.SurfacingName'
      'ELSE'
      'S.Surfacingcode+'#39' - '#39'+S.SurfacingName'
      'END AS SurfacingName'
      ''
      'From dbo.Surfacing S'
      'where S.LanguageCode = 1'
      'AND S.SurfacingNo > 0'
      'Order by S.Surfacingcode, S.SurfacingName')
    Left = 504
    Top = 16
    object sq_SurfacingSurfacingcode: TStringField
      FieldName = 'Surfacingcode'
      Origin = 'SurfacingName'
      Size = 5
    end
    object sq_SurfacingSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_SurfacingSurfacingName: TStringField
      FieldName = 'SurfacingName'
      Origin = 'SurfacingName'
      ReadOnly = True
      Size = 38
    end
  end
  object cds_PC: TFDQuery
    SQL.Strings = (
      'Select  s.ImpCode, S.ProductCategoryNo,'
      'CASE WHEN s.ImpCode is null then'
      'S.ProductCategoryName'
      'ELSE'
      'S.ImpCode+'#39' - '#39'+S.ProductCategoryName'
      'END AS ProductCategoryName'
      'From dbo.ProductCategory S'
      'where S.LanguageCode = 1'
      'AND S.ProductCategoryNo > 0'
      'Order by S.ImpCode')
    Left = 504
    Top = 72
    object cds_PCImpCode: TStringField
      FieldName = 'ImpCode'
      Origin = 'ImpCode'
      Size = 5
    end
    object cds_PCProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
      Origin = 'ProductCategoryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PCProductCategoryName: TStringField
      FieldName = 'ProductCategoryName'
      Origin = 'ProductCategoryName'
      ReadOnly = True
      Size = 28
    end
  end
  object cds_LengthGroup: TFDQuery
    SQL.Strings = (
      
        'SELECT distinct PG.GroupNo, GroupName, Count(PLG.ProductLengthNo' +
        ') AS NoOfLengths'
      'FROM dbo.ProductLengthGroupName  PG'
      
        'Inner Join dbo.ProductLengthGroup PLG ON PLG.GroupNo = PG.GroupN' +
        'o'
      'WHERE PG.Changed = 0'
      'GROUP BY PG.GroupNo, GroupName'
      'ORDER BY GroupName'
      '')
    Left = 504
    Top = 144
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
    object cds_LengthGroupNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
      Origin = 'NoOfLengths'
      ReadOnly = True
    end
  end
  object sq_AT: TFDQuery
    SQL.Strings = (
      'Select Distinct ActualThicknessMM AS AT FROM dbo.ProductGroup'
      'Order By ActualThicknessMM')
    Left = 368
    Top = 16
    object sq_ATAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
  end
  object sq_AB: TFDQuery
    SQL.Strings = (
      'Select Distinct ActualWidthMM AS AB FROM dbo.ProductGroup'
      'Order By ActualWidthMM')
    Left = 368
    Top = 72
    object sq_ABAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
  end
  object sq_AL: TFDQuery
    SQL.Strings = (
      'SELECT Distinct'
      'PL.ActualLengthMM AS AL'
      'FROM dbo.ProductLength pl'
      'WHERE pl.act = 1'
      ''
      'ORDER BY  PL.ActualLengthMM')
    Left = 568
    Top = 16
    object sq_ALAL: TFloatField
      FieldName = 'AL'
      Origin = 'AL'
      Required = True
    end
  end
  object sq_GroupLengths: TFDQuery
    SQL.Strings = (
      'SELECT distinct pl.ActualLengthMM'
      'FROM dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = plg.Prod' +
        'uctLengthNo'
      'WHERE PLG.GroupNo = :GroupNo'
      'ORDER BY pl.ActualLengthMM'
      '')
    Left = 656
    Top = 16
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GroupLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      Required = True
    end
  end
  object cds_ProductLengthInGroup: TFDQuery
    SQL.Strings = (
      'SELECT ActualLengthMM AS ALMM,'
      'NominalLengthMM AS NLMM,'
      'NominalLengthFEET AS FOT,'
      'ActualLengthINCH AS TUM'
      'FROM dbo.ProductLengthGroup PLG'
      
        'Inner Join dbo.ProductLength PL ON PL.ProductLengthNo = PLG.Prod' +
        'uctLengthNo'
      'WHERE GroupNo = :GroupNo'
      'ORDER BY ActualLengthMM'
      '')
    Left = 656
    Top = 64
    ParamData = <
      item
        Name = 'GROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ProductLengthInGroupALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cds_ProductLengthInGroupNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
    end
    object cds_ProductLengthInGroupFOT: TFloatField
      FieldName = 'FOT'
      Origin = 'FOT'
    end
    object cds_ProductLengthInGroupTUM: TStringField
      FieldName = 'TUM'
      Origin = 'TUM'
      FixedChar = True
      Size = 15
    end
  end
  object cds_BookingHdr: TFDQuery
    AfterInsert = cds_BookingHdrAfterInsert
    BeforePost = cds_BookingHdrBeforePost
    OnCalcFields = cds_BookingHdrCalcFields
    SQL.Strings = (
      'SELECT Distinct'
      'RBH.*,'
      'p.productDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM,'
      'ssp.LengthDescription AS L'#228'ngdbeskrivning,'
      'ssp.ShippingPlanNo AS LONr,'
      'IsNull(C.ClientName,'#39'Lager'#39') AS Kund,'
      ''
      '(Select SUM(rmd.BookedNM3) FROM dbo.RawMtrlBookedDtl rmd'
      'WHERE rmd.BookingNo = rbh.BookingNo'
      'and rmd.ProductNo = rbh.ProductNo'
      'and rmd.ProductLengthNo = rbh.ProductLengthNo'
      'and rmd.sspNo = rbh.sspNo'
      'and rmd.Status = 1) AS BokadNM3,'
      ''
      '(Select  sum(PlannedOutputNM3) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.BookingNo = rbh.BookingNo'
      'and rmt.ProductNo = rbh.ProductNo'
      'and rmt.ProductLengthNo = rbh.ProductLengthNo'
      'and rmt.sspno = rbh.sspno'
      'and rmt.Status = 1) AS NM3PlanFardig,'
      ''
      '1/(pg.NominalThicknessMM/1000) * 1/(pg.NominalWidthMM/1000)'
      
        '* (Select sum(rmt.PlannedOutputNM3) From dbo.RawMtrlBookedDtl rm' +
        't'
      'Where rmt.BookingNo = rbh.BookingNo'
      'and rmt.ProductNo = rbh.ProductNo'
      'and rmt.ProductLengthNo = rbh.ProductLengthNo'
      'and rmt.sspno = rbh.sspno'
      'and rmt.Status = 1) AS M1,'
      ''
      '(Select SUM(d.BookedNM3) from dbo.RawMtrlBookedDtl d'
      'WHERE d.BookingNo = rbh.BookingNo'
      'and d.sspNo = RBH.sspNo'
      'and d.ID = cx.ID'
      'and d.Status = 1) AS BookedByID,'
      ''
      'pg.ActualThicknessMM AS [AT],'
      'pg.ActualWidthMM AS AB'
      ''
      'FROM dbo.RawMtrlBookedHdr RBH'
      
        'Inner Join dbo.cxSchedulerTable cx on cx.BookingNo = RBh.Booking' +
        'No'
      
        'Left Outer Join dbo.SupplierShippingPlan ssp on ssp.SupplierShip' +
        'PlanObjectNo = RBH.sspNo'
      'Left Outer Join dbo.CustomerShippingPlanDetails CSD'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = CSH.CustomerNo'
      
        'on CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObject' +
        'No'
      ''
      'Inner Join dbo.Product p on p.productno = RBH.ProductNo'
      
        'Inner Join dbo.Productgroup pg on pg.productgroupno = p.productg' +
        'roupno'
      
        'Inner Join dbo.Productlength pl on pl.ProductLengthNo = RBH.Prod' +
        'uctLengthNo'
      ''
      'WHERE cx.ID = :ID'
      '')
    Left = 808
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_BookingHdrBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingHdrsspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_BookingHdrUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_BookingHdrProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingHdrProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingHdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object cds_BookingHdrALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_BookingHdrLngdbeskrivning: TStringField
      FieldName = 'L'#228'ngdbeskrivning'
      Origin = '[L'#228'ngdbeskrivning]'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cds_BookingHdrNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingHdrAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingHdrSortingOrderNo: TIntegerField
      DisplayLabel = 'K'#246'rordernr'
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = []
    end
    object cds_BookingHdrLONr: TIntegerField
      FieldName = 'LONr'
      Origin = 'LONr'
      ProviderFlags = []
    end
    object cds_BookingHdrKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object cds_BookingHdrStartWeek: TStringField
      DisplayLabel = 'Fom vecka'
      FieldName = 'StartWeek'
      Origin = 'StartWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_BookingHdrEndWeek: TStringField
      DisplayLabel = 'Tom vecka'
      FieldName = 'EndWeek'
      Origin = 'EndWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_BookingHdrBokadNM3: TFMTBCDField
      DisplayLabel = 'Bokad NM3'
      FieldName = 'BokadNM3'
      Origin = 'BokadNM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_BookingHdrNM3PlanFardig: TFMTBCDField
      DisplayLabel = 'Tot.f'#228'rdigvara NM3'
      FieldName = 'NM3PlanFardig'
      Origin = 'NM3PlanFardig'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_BookingHdrM1: TFloatField
      FieldName = 'M1'
      Origin = 'M1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,###,###.0'
    end
    object cds_BookingHdrRestNM3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RestNM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
      Calculated = True
    end
    object cds_BookingHdrNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
    end
    object cds_BookingHdrPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrBookedByID: TFMTBCDField
      DisplayLabel = 'Bokat'
      FieldName = 'BookedByID'
      Origin = 'BookedByID'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_BookingHdrAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cds_BookingHdrAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_BookingHdrUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'Unit'
      LookupDataSet = dmsContact.cds_volunit
      LookupKeyFields = 'VolumeUnit_No'
      LookupResultField = 'VolumeUnitName'
      KeyFields = 'VolumeUnitNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_BookingHdrSortingOrderRowNo: TIntegerField
      FieldName = 'SortingOrderRowNo'
      Origin = 'SortingOrderRowNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingHdrPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_BookingHdr: TDataSource
    DataSet = cds_BookingHdr
    OnDataChange = ds_BookingHdrDataChange
    Left = 808
    Top = 72
  end
  object cds_BookingDtl: TFDQuery
    OnCalcFields = cds_BookingDtlCalcFields
    OnPostError = cds_BookingDtlPostError
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvLockMode]
    SQL.Strings = (
      'SELECT Distinct'
      'RB.*,'
      'p.productDisplayName AS Produkt,'
      'usd.UserName,'
      'pg.ActualThicknessMM AS [AT],'
      'pg.ActualWidthMM AS AB,'
      ''
      'pg.NominalThicknessMM AS NT,'
      'pg.NominalWidthMM AS NB,'
      ''
      'lgh.Note AS Lager'
      'FROM dbo.RawMtrlBookedDtl RB'
      'Inner Join dbo.Product p on p.productno = RB.BookedProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'Inner Join dbo.Users usd on usd.UserID = rb.CreatedUser'
      
        'Inner Join dbo.LIPGroupHdr lgh on lgh.LipGroupNo = RB.BookedLipG' +
        'roupNo'
      'WHERE RB.ID = :ID'
      '')
    Left = 904
    Top = 24
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_BookingDtlBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlBookedProductNo: TIntegerField
      FieldName = 'BookedProductNo'
      Origin = 'BookedProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlBookedNM3: TBCDField
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlDateCreated: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object cds_BookingDtlProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_BookingDtlUtfallChange
      Precision = 18
      Size = 2
    end
    object cds_BookingDtlBookedALMM: TFloatField
      FieldName = 'BookedALMM'
      Origin = 'BookedALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlBookedAM3: TBCDField
      FieldName = 'BookedAM3'
      Origin = 'BookedAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlUserName: TStringField
      DisplayLabel = 'Reg.av'
      FieldName = 'UserName'
      Origin = 'UserName'
      ProviderFlags = []
    end
    object cds_BookingDtlPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_BookingDtlStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlUsedAM3: TBCDField
      FieldName = 'UsedAM3'
      Origin = 'UsedAM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlPlannedOutputAM3: TBCDField
      FieldName = 'PlannedOutputAM3'
      Origin = 'PlannedOutputAM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlPkgFormat: TIntegerField
      FieldName = 'PkgFormat'
      Origin = 'PkgFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object cds_BookingDtlNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object cds_BookingDtlBookedLIPGroupNo: TIntegerField
      FieldName = 'BookedLIPGroupNo'
      Origin = 'BookedLIPGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ProviderFlags = []
      Size = 50
    end
    object cds_BookingDtlID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_BookingDtlsspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingDtlM1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'M1'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
      Calculated = True
    end
    object cds_BookingDtlBookedProductLengthNo: TIntegerField
      FieldName = 'BookedProductLengthNo'
      Origin = 'BookedProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlMainRawMtrl: TIntegerField
      FieldName = 'MainRawMtrl'
      Origin = 'MainRawMtrl'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlAntalLamellerUt: TIntegerField
      FieldName = 'AntalLamellerUt'
      Origin = 'AntalLamellerUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_BookingDtlPlannedOutputNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'PlannedOutputNoOfUnits'
      Origin = 'PlannedOutputNoOfUnits'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_BookingDtlPlannedOutputNoOfUnitsChange
      DisplayFormat = '#,###,###.0'
    end
    object cds_BookingDtlMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingDtlPlannedOutputNM3: TBCDField
      FieldName = 'PlannedOutputNM3'
      Origin = 'PlannedOutputNM3'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_BookingDtlPlannedOutputNM3Change
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cds_BookingDtlAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cds_BookingDtlUsedNM3: TBCDField
      FieldName = 'UsedNM3'
      Origin = 'UsedNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_BookingDtlPlannedAM1: TBCDField
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
  end
  object ds_BookingDtl: TDataSource
    DataSet = cds_BookingDtl
    Left = 904
    Top = 72
  end
  object cds_BookingMaster: TFDQuery
    AfterInsert = cds_BookingHdrAfterInsert
    AfterScroll = cds_BookingMasterAfterScroll
    SQL.Strings = (
      'SELECT RBM.*,'
      'usd.UserName'
      'FROM dbo.RawMtrlBookedMaster RBM'
      'Inner Join dbo.Users usd on usd.UserID = rbm.CreatedUser'
      'WHERE RBM.BookingNo = :BookingNo'
      '')
    Left = 808
    Top = 128
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_BookingMasterBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_BookingMasterYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_BookingMasterNotering: TMemoField
      FieldName = 'Notering'
      Origin = 'Notering'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cds_BookingMasterDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingMasterCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingMasterStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingMasterClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_BookingMasterClientNoChange
    end
    object cds_BookingMasterUserName: TStringField
      DisplayLabel = 'Registrerad av'
      FieldName = 'UserName'
      Origin = 'UserName'
      ProviderFlags = []
      Required = True
    end
    object cds_BookingMasterProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_BookingMasterPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 1
    end
    object cds_BookingMasterOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_BookingMaster: TDataSource
    DataSet = cds_BookingMaster
    Left = 808
    Top = 176
  end
  object cds_VolResDtl: TFDQuery
    AfterInsert = cds_BookingHdrAfterInsert
    SQL.Strings = (
      'SELECT *'
      'FROM dbo.VolResDtl vrd'
      'WHERE vrd.UserID = :UserID')
    Left = 808
    Top = 248
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VolResDtlUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlALMM: TIntegerField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlLagerTotal: TBCDField
      FieldName = 'LagerTotal'
      Origin = 'LagerTotal'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlPrevWeek: TBCDField
      FieldName = 'PrevWeek'
      Origin = 'PrevWeek'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlPostWeek: TBCDField
      FieldName = 'PostWeek'
      Origin = 'PostWeek'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek1: TBCDField
      FieldName = 'Week1'
      Origin = 'Week1'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek2: TBCDField
      FieldName = 'Week2'
      Origin = 'Week2'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek3: TBCDField
      FieldName = 'Week3'
      Origin = 'Week3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek4: TBCDField
      FieldName = 'Week4'
      Origin = 'Week4'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek5: TBCDField
      FieldName = 'Week5'
      Origin = 'Week5'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek6: TBCDField
      FieldName = 'Week6'
      Origin = 'Week6'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek7: TBCDField
      FieldName = 'Week7'
      Origin = 'Week7'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek8: TBCDField
      FieldName = 'Week8'
      Origin = 'Week8'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek9: TBCDField
      FieldName = 'Week9'
      Origin = 'Week9'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlWeek10: TBCDField
      FieldName = 'Week10'
      Origin = 'Week10'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_VolResDtlInvGrouping: TIntegerField
      FieldName = 'InvGrouping'
      Origin = 'InvGrouping'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VolResDtlInvGroupName: TStringField
      DisplayLabel = 'Lager'
      FieldName = 'InvGroupName'
      Origin = 'InvGroupName'
      Size = 10
    end
  end
  object ds_VolResDtl: TDataSource
    DataSet = cds_VolResDtl
    Left = 808
    Top = 296
  end
  object sp_PeriodBooking: TFDStoredProc
    StoredProcName = 'dbo.vis_PeriodBooking_II'
    Left = 808
    Top = 360
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
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ALMM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@InvGrouping'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@NoOfLengths'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_GetCurrentSD: TFDStoredProc
    StoredProcName = 'dbo.vis_GetCurrentSD'
    Left = 808
    Top = 416
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
        Name = '@ALMM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@InvGrouping'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@SD'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInputOutput
      end>
  end
  object sp_GetVolPerLG: TFDStoredProc
    StoredProcName = 'dbo.vis_GetVolPerLG_II'
    Left = 808
    Top = 472
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
        Name = '@ALMM'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@InvGrouping'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@NoOfLengths'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_GetVolPerLGNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object sp_GetVolPerLGLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      Size = 50
    end
  end
  object ds_GetVolPerLG: TDataSource
    DataSet = sp_GetVolPerLG
    Left = 808
    Top = 520
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 912
    Top = 296
  end
  object cds_ProductionUnit: TFDQuery
    CachedUpdates = True
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
    Left = 912
    Top = 248
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
    object cds_ProductionUnitLegoCostPerAM3: TBCDField
      FieldName = 'LegoCostPerAM3'
      Origin = 'LegoCostPerAM3'
      ReadOnly = True
      Required = True
      Precision = 18
      Size = 1
    end
  end
  object cds_OtherBookings: TFDQuery
    OnUpdateRecord = cds_OtherBookingsUpdateRecord
    SQL.Strings = (
      'SELECT p.productDisplayName AS Produkt,'
      'cx.YearWeek,'
      'IsNull(C.ClientName, '#39'Lager'#39') AS Kund,'
      'ssp.ShippingPlanNo AS LONr,'
      'ssp.LengthDescription AS LO_L'#228'ngdbesk,'
      'bd.BookedAM3,'
      'usd.UserName AS RegAv,'
      'bd.DateCreated,'
      'BD.BookingNo,'
      'BD.ID,'
      'BD.ProductNo,'
      'BD.ProductLengthNo,'
      'BD.BookedProductNo,'
      'BD.BookedALMM,'
      'BD.BookedLIPGroupNo,'
      'BD.sspNo,'
      'BD.Status,'
      'BD.PIPNo,'
      'BD.CreatedUser,'
      'BD.Utfall,'
      'BD.UsedNM3,'
      'BD.UsedAM3,'
      'BD.PlannedOutputNM3,'
      'BD.PlannedOutputAM3,'
      'BD.PkgFormat,'
      'BD.BookedNM3,'
      'cx.OrgYearWeek'
      ''
      'FROM dbo.RawMtrlBookedHdr RBH'
      
        'Inner Join dbo.RawMtrlBookedMaster RBM on rbm.BookingNo = RBH.Bo' +
        'okingNo'
      
        'Inner Join dbo.RawMtrlBookedDtl BD on BD.BookingNo = RBH.Booking' +
        'No'
      'and BD.ProductNo = RBH.ProductNo'
      '-- and BD.ProductLengthNo = RBH.ProductLengthNo'
      'and BD.sspNo = RBH.sspNo'
      'inner Join dbo.cxSchedulerTable cx on cx.ID = BD.ID'
      
        'Left Outer Join dbo.SupplierShippingPlan ssp on ssp.SupplierShip' +
        'PlanObjectNo = RBH.sspNo'
      'Left Outer Join dbo.CustomerShippingPlanDetails CSD'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = CSH.CustomerNo'
      
        'on CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObject' +
        'No'
      ''
      'Inner Join dbo.Product p on p.productno = RBH.ProductNo'
      
        'Inner Join dbo.Productlength pl on pl.ProductLengthNo = RBH.Prod' +
        'uctLengthNo'
      ''
      'Inner Join dbo.Users usd on usd.UserID = bd.CreatedUser'
      'WHERE'
      'bd.BookedProductNo = :ProductNo'
      'AND ((cx.YearWeek = :YearWeek) or ('#39'0'#39' = :YearWeek))'
      'and bd.BookedALMM = :BookedALMM'
      'and bd.BookedLIPGroupNo = :BookedLIPGroupNo'
      'and bd.Status = 1')
    Left = 912
    Top = 360
    ParamData = <
      item
        Name = 'PRODUCTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'YEARWEEK'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'YEARWEEK'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'BOOKEDALMM'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'BOOKEDLIPGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_OtherBookingsProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
    object cds_OtherBookingsYearWeek: TStringField
      DisplayLabel = 'Vecka'
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = []
      Size = 4
    end
    object cds_OtherBookingsKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object cds_OtherBookingsLONr: TIntegerField
      FieldName = 'LONr'
      Origin = 'LONr'
      ProviderFlags = []
    end
    object cds_OtherBookingsLO_Lngdbesk: TStringField
      DisplayLabel = 'L'#228'ngdbesk(LO)'
      FieldName = 'LO_L'#228'ngdbesk'
      Origin = '[LO_L'#228'ngdbesk]'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cds_OtherBookingsRegAv: TStringField
      DisplayLabel = 'Reg.av'
      FieldName = 'RegAv'
      Origin = 'RegAv'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsBookedProductNo: TIntegerField
      FieldName = 'BookedProductNo'
      Origin = 'BookedProductNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsBookedALMM: TFloatField
      FieldName = 'BookedALMM'
      Origin = 'BookedALMM'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsBookedLIPGroupNo: TIntegerField
      FieldName = 'BookedLIPGroupNo'
      Origin = 'BookedLIPGroupNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingssspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ProviderFlags = []
      Required = True
    end
    object cds_OtherBookingsDateCreated: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_OtherBookingsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = []
    end
    object cds_OtherBookingsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
    object cds_OtherBookingsCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_OtherBookingsUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object cds_OtherBookingsPkgFormat: TIntegerField
      FieldName = 'PkgFormat'
      Origin = 'PkgFormat'
      ProviderFlags = []
    end
    object cds_OtherBookingsBookedAM3: TBCDField
      FieldName = 'BookedAM3'
      Origin = 'BookedAM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_OtherBookingsUsedAM3: TBCDField
      FieldName = 'UsedAM3'
      Origin = 'UsedAM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_OtherBookingsPlannedOutputAM3: TBCDField
      FieldName = 'PlannedOutputAM3'
      Origin = 'PlannedOutputAM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_OtherBookingsBookedNM3: TBCDField
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cds_OtherBookingsOrgYearWeek: TStringField
      DisplayLabel = 'Urs.vecka'
      FieldName = 'OrgYearWeek'
      Origin = 'OrgYearWeek'
      Size = 9
    end
  end
  object ds_OtherBookings: TDataSource
    DataSet = cds_OtherBookings
    Left = 912
    Top = 408
  end
  object cds_Scheduler: TFDQuery
    BeforePost = cds_SchedulerBeforePost
    SQL.Strings = (
      'SELECT ST.*, usd.UserName'
      'FROM dbo.cxSchedulerTable ST'
      'Inner Join dbo.Users usd on usd.UserID = ST.UserID'
      'WHERE ST.ID = :ID')
    Left = 912
    Top = 464
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
      DisplayFormat = '###.00'
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
    end
    object cds_SchedulerMtpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#228'tpunkt'
      LookupDataSet = cds_ProductionUnit
      LookupKeyFields = 'ProductionUnitNo'
      LookupResultField = 'M'#196'TPUNKT'
      KeyFields = 'ResourceID'
      ProviderFlags = []
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
    object cds_SchedulerPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 3
    end
    object cds_SchedulerPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '####.00'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object cds_SchedulerPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
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
    object cds_SchedulerFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerEventType: TIntegerField
      FieldName = 'EventType'
      Origin = 'EventType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerLabelColor: TIntegerField
      FieldName = 'LabelColor'
      Origin = 'LabelColor'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerOptions: TIntegerField
      FieldName = 'Options'
      Origin = 'Options'
    end
    object cds_SchedulerState: TIntegerField
      FieldName = 'State'
      Origin = 'State'
    end
    object cds_SchedulerProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
    end
    object cds_SchedulerLocationNo: TIntegerField
      FieldName = 'LocationNo'
      Origin = 'LocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SchedulerLOBuffertNo: TIntegerField
      FieldName = 'LOBuffertNo'
      Origin = 'LOBuffertNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_Scheduler: TDataSource
    DataSet = cds_Scheduler
    Left = 912
    Top = 520
  end
  object sq_PopulateTabs: TFDQuery
    ConnectionName = 'VIS_VIDA'
    SQL.Strings = (
      'Select st.ID, st.YearWeek from dbo.RawMtrlBookedMaster rmm'
      
        'Inner Join dbo.cxSchedulerTable st on st.BookingNo = rmm.Booking' +
        'No'
      'WHERE rmm.BookingNo =:BookingNo')
    Left = 808
    Top = 584
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PopulateTabsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object sq_PopulateTabsYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
  end
  object upd_OtherBookings: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO dbo.rawmtrlbookeddtl'
      '(bookingno, productno, productlengthno, bookedproductno, '
      '  bookedalmm, bookednm3, pipno, datecreated, '
      '  createduser, utfall, bookedam3, status, '
      '  usedam3, plannedoutputam3, pkgformat, bookedlipgroupno, '
      '  id, sspno)'
      
        'VALUES (:NEW_BookingNo, :NEW_ProductNo, :NEW_ProductLengthNo, :N' +
        'EW_BookedProductNo, '
      
        '  :NEW_BookedALMM, :NEW_BookedNM3, :NEW_PIPNo, :NEW_DateCreated,' +
        ' '
      '  :NEW_CreatedUser, :NEW_Utfall, :NEW_BookedAM3, :NEW_Status, '
      
        '  :NEW_UsedAM3, :NEW_PlannedOutputAM3, :NEW_PkgFormat, :NEW_Book' +
        'edLIPGroupNo, '
      '  :NEW_ID, :NEW_sspNo)')
    ModifySQL.Strings = (
      'UPDATE dbo.rawmtrlbookeddtl'
      
        'SET bookingno = :NEW_BookingNo, productno = :NEW_ProductNo, prod' +
        'uctlengthno = :NEW_ProductLengthNo, '
      
        '  bookedproductno = :NEW_BookedProductNo, bookedalmm = :NEW_Book' +
        'edALMM, '
      
        '  bookednm3 = :NEW_BookedNM3, pipno = :NEW_PIPNo, datecreated = ' +
        ':NEW_DateCreated, '
      
        '  createduser = :NEW_CreatedUser, utfall = :NEW_Utfall, bookedam' +
        '3 = :NEW_BookedAM3, '
      
        '  status = :NEW_Status, usedam3 = :NEW_UsedAM3, plannedoutputam3' +
        ' = :NEW_PlannedOutputAM3, '
      
        '  pkgformat = :NEW_PkgFormat, bookedlipgroupno = :NEW_BookedLIPG' +
        'roupNo, '
      '  id = :NEW_ID, sspno = :NEW_sspNo'
      
        'WHERE bookingno = :OLD_BookingNo AND productno = :OLD_ProductNo ' +
        'AND '
      
        '  productlengthno = :OLD_ProductLengthNo AND bookedproductno = :' +
        'OLD_BookedProductNo AND '
      
        '  bookedalmm = :OLD_BookedALMM AND bookedlipgroupno = :OLD_Booke' +
        'dLIPGroupNo AND '
      '  id = :OLD_ID AND sspno = :OLD_sspNo')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.rawmtrlbookeddtl'
      
        'WHERE bookingno = :OLD_BookingNo AND productno = :OLD_ProductNo ' +
        'AND '
      
        '  productlengthno = :OLD_ProductLengthNo AND bookedproductno = :' +
        'OLD_BookedProductNo AND '
      
        '  bookedalmm = :OLD_BookedALMM AND bookedlipgroupno = :OLD_Booke' +
        'dLIPGroupNo AND '
      '  id = :OLD_ID AND sspno = :OLD_sspNo')
    LockSQL.Strings = (
      
        'SELECT bookingno, productno, productlengthno, bookedproductno, b' +
        'ookedalmm, '
      
        '  bookednm3, pipno, datecreated, createduser, utfall, bookedam3,' +
        ' '
      
        '  status, usedam3, plannedoutputam3, pkgformat, bookedlipgroupno' +
        ', '
      '  id, sspno'
      'FROM dbo.rawmtrlbookeddtl'
      
        'WHERE bookingno = :OLD_BookingNo AND productno = :OLD_ProductNo ' +
        'AND '
      
        '  productlengthno = :OLD_ProductLengthNo AND bookedproductno = :' +
        'OLD_BookedProductNo AND '
      
        '  bookedalmm = :OLD_BookedALMM AND bookedlipgroupno = :OLD_Booke' +
        'dLIPGroupNo AND '
      '  id = :OLD_ID AND sspno = :OLD_sspNo')
    FetchRowSQL.Strings = (
      
        'SELECT bookingno, productno, productlengthno, bookedproductno, b' +
        'ookedalmm, '
      
        '  bookednm3, pipno, datecreated, createduser, utfall, bookedam3,' +
        ' '
      
        '  status, usedam3, plannedoutputam3, pkgformat, bookedlipgroupno' +
        ', '
      '  id, sspno'
      'FROM dbo.rawmtrlbookeddtl'
      
        'WHERE bookingno = :BookingNo AND productno = :ProductNo AND prod' +
        'uctlengthno = :ProductLengthNo AND '
      
        '  bookedproductno = :BookedProductNo AND bookedalmm = :BookedALM' +
        'M AND '
      
        '  bookedlipgroupno = :BookedLIPGroupNo AND id = :ID AND sspno = ' +
        ':sspNo')
    Left = 1016
    Top = 360
  end
  object upd_cxSchedulerTable: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO dbo.cxschedulertable'
      '(yearweek)'
      'VALUES (:NEW_YearWeek)')
    ModifySQL.Strings = (
      'UPDATE dbo.cxschedulertable'
      'SET yearweek = :NEW_YearWeek'
      'WHERE id = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.cxschedulertable'
      'WHERE id = :OLD_ID')
    LockSQL.Strings = (
      
        'SELECT actualstart, actualfinish, caption, eventtype, finish, id' +
        ', labelcolor, '
      
        '  location, message, options, parentid, recurrenceindex, recurre' +
        'nceinfo, '
      
        '  reminderdate, reminderminutesbeforestart, reminderresourcesdat' +
        'a, '
      '  resourceid, start, state, taskcompletefield, taskindexfield, '
      
        '  tasklinksfield, taskstatusfield, lono, flashfield, productionu' +
        'nitno, '
      
        '  userid, duration, seqno, fixeddate, infotext, nm3in, yearweek,' +
        ' '
      '  verkno, bookingno'
      'FROM dbo.cxschedulertable'
      'WHERE id = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT actualstart, actualfinish, caption, eventtype, finish, id' +
        ', labelcolor, '
      
        '  location, message, options, parentid, recurrenceindex, recurre' +
        'nceinfo, '
      
        '  reminderdate, reminderminutesbeforestart, reminderresourcesdat' +
        'a, '
      '  resourceid, start, state, taskcompletefield, taskindexfield, '
      
        '  tasklinksfield, taskstatusfield, lono, flashfield, productionu' +
        'nitno, '
      
        '  userid, duration, seqno, fixeddate, infotext, nm3in, yearweek,' +
        ' '
      '  verkno, bookingno'
      'FROM dbo.cxschedulertable'
      'WHERE id = :ID')
    Left = 912
    Top = 584
  end
  object cds_Dim: TFDQuery
    OnCalcFields = cds_BookingDtlCalcFields
    OnPostError = cds_BookingDtlPostError
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
    Left = 904
    Top = 128
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
  object cds_BookHdrLink: TFDQuery
    SQL.Strings = (
      'Select * from dbo.RawMtrlBookedLink rml'
      'WHERE rml.BookingNo =:BookingNo')
    Left = 808
    Top = 656
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
  end
  object sp_MergeBookings: TFDStoredProc
    StoredProcName = 'dbo.vis_MergeBookings'
    Left = 912
    Top = 648
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
        Name = '@NewID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@OldID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object mt_temp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 224
    Top = 16
    object mt_tempsspNo: TIntegerField
      FieldName = 'sspNo'
    end
  end
  object cds_Products: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT pd.ProductNo,'
      '      pd.ProductDisplayName'
      'FROM dbo.Product pd')
    Left = 368
    Top = 144
    object cds_ProductsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductsProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      Size = 100
    end
  end
  object cds_fAT: TFDQuery
    SQL.Strings = (
      'Select * FROM dbo.fAT'
      'WHERE UserID = :UserID')
    Left = 432
    Top = 144
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_fATAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cds_fATUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
    end
  end
  object cds_GetDimensions: TFDQuery
    OnCalcFields = cds_BookingDtlCalcFields
    OnPostError = cds_BookingDtlPostError
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    UpdateOptions.AssignedValues = [uvLockMode]
    SQL.Strings = (
      'Select (SELECT Top 1 pg.ActualThicknessMM'
      'FROM dbo.RawMtrlBookedDtl RB'
      'Inner Join dbo.Product p on p.productno = RB.BookedProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'WHERE RB.BookingNo = :BookingNo'
      'Order By pg.ActualThicknessMM) AS FirstAT,'
      ''
      '(SELECT Top 1 pg.ActualThicknessMM'
      'FROM dbo.RawMtrlBookedDtl RB'
      'Inner Join dbo.Product p on p.productno = RB.BookedProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'WHERE RB.BookingNo = :BookingNo'
      'Order By pg.ActualThicknessMM DESC) AS LastAT,'
      ''
      '(SELECT Top 1 pg.ActualWidthMM'
      'FROM dbo.RawMtrlBookedDtl RB'
      'Inner Join dbo.Product p on p.productno = RB.BookedProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'WHERE RB.BookingNo = :BookingNo'
      'Order By pg.ActualWidthMM) AS FirstAB,'
      ''
      '(SELECT Top 1 pg.ActualWidthMM'
      'FROM dbo.RawMtrlBookedDtl RB'
      'Inner Join dbo.Product p on p.productno = RB.BookedProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.productGroupno = p.ProductG' +
        'roupNo'
      'WHERE RB.BookingNo = :BookingNo'
      'Order By pg.ActualWidthMM DESC) AS LastAB')
    Left = 904
    Top = 176
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetDimensionsFirstAT: TFloatField
      FieldName = 'FirstAT'
      Origin = 'LastAB'
      ReadOnly = True
    end
    object cds_GetDimensionsLastAT: TFloatField
      FieldName = 'LastAT'
      Origin = 'LastAT'
      ReadOnly = True
    end
    object cds_GetDimensionsFirstAB: TFloatField
      FieldName = 'FirstAB'
      Origin = 'FirstAB'
      ReadOnly = True
    end
    object cds_GetDimensionsLastAB: TFloatField
      FieldName = 'LastAB'
      Origin = 'LastAB'
      ReadOnly = True
    end
  end
  object cds_DeleteBookingGroup: TFDQuery
    AfterInsert = cds_BookingHdrAfterInsert
    AfterScroll = cds_BookingMasterAfterScroll
    SQL.Strings = (
      'DELETE dbo.RawMtrlBookedMaster'
      'WHERE BookingNo = :BookingNo'
      ''
      'DELETE dbo.RawMtrlBookedHdr'
      'WHERE BookingNo = :BookingNo'
      ''
      'DELETE dbo.RawMtrlBookedDtl'
      'WHERE BookingNo = :BookingNo'
      ''
      'DELETE dbo.cxSchedulerTable'
      'WHERE BookingNo = :BookingNo'
      '')
    Left = 808
    Top = 728
    ParamData = <
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'BOOKINGNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsSawmillLoadOrders: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Name = 'cdsSawmillLoadOrdersLONo'
        Fields = 'LONumber'
      end
      item
        Active = True
        Selected = True
        Name = 'indexSupplierShipPlanObjectNo'
        Fields = 'SupplierShipPlanObjectNo'
      end>
    IndexName = 'indexSupplierShipPlanObjectNo'
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.SupplierShippingPlan'
    UpdateOptions.KeyFields = 'SupplierShipPlanObjectNo'
    UpdateObject = upd_SawMillLoadOrders
    SQL.Strings = (
      'SELECT distinct'
      
        'OL.OrderLineDescription                     AS KONTRAKTSBESKRIVN' +
        'ING,'
      'bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod               AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,'
      'SP.ShippingPlanNo                           AS LONumber,'
      'SP.PackageCode                              AS PackageCode,'
      'SP.ProductDescription                       AS Product,'
      'SP.LengthDescription                        AS Length,'
      'IsNull(SP.StartETDYearWeek,-1)              AS FromWeek,'
      'IsNull(SP.EndETDYearWeek,-1)                AS ToWeek,'
      'SP.NoOfUnits                                AS Volume,'
      'SP.SupplierShipPlanObjectNo,'
      'SP.ShowInGrid,'
      'Od.OrderNoText                              AS OrderNoText,'
      'UN.VolumeUnitName                           AS UnitName,'
      'Cy.CityName                                 AS Destination,'
      'CL.ClientName                               AS ClientName,'
      ''
      'CASE'
      'when mr.MarketRegionName is not null then mr.MarketRegionName'
      
        'When mrIOH.MarketRegionName Is Not null then mrIOH.MarketRegionN' +
        'ame'
      'When mrIOH.MarketRegionName Is null then '#39'Saknas'#39
      'End'
      'AS MARKNAD,'
      ''
      'CASE'
      'when mr.MarketRegionNo is not null then mr.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is Not null then mrIOH.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is null then -1'
      'End'
      'AS MarketNo,'
      ''
      ''
      'CSD.Reference                               AS Reference,'
      'SP.SupplierNo                               AS Supplier,'
      'CH.CustomerNo                               AS CHCustomerNo,'
      'SP.CustomerNo                               AS SPCustomerNO,'
      'SP.CustomerPrice,'
      'SP.CustomerShowInGrid,'
      'SUPP.ClientName'#9#9#9#9'                      AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'                      AS LOCAL_CUST,'
      'SP.ObjectType,'
      'CASE WHEN OD.OrderType = 1 then 1'#9'ELSE 0'#9'END AS ORDERTYPE,'
      'ShipTo.CityName                             AS SHIPTO,'
      'Loading.CityName                            AS LOADING,'
      'IsNull(SP.Delivery_WeekNo,-1)               AS Delivery_WeekNo,'
      'CH.CustomerNo                               AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo,'
      ''
      'BC.BarCode,'
      'CH.Reference                                AS REFERENS,'
      'SP.DateCreated                              AS SKAPAD,'
      'pli.NT,'
      'pli.NB,'
      'pli.AT,'
      'pli.AB,'
      'pli.TT,'
      'pli.TB,'
      'pli.TS,'
      'pli.UT,'
      'pli.KV,'
      'pli.PK,'
      'SP.lengthtyp                                AS INTL'#196'NGD,'
      'SP.Reference                                AS RADREFERENS,'
      #39'123456789012345678901234567890'#39'            AS Pris,'
      'SP.ProductGroupNo,'
      #39'******************************'#39'            AS  PriceListName,'
      
        'SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo,' +
        ' PIS.ProdInstruNo, sp.ProductNo, sp.ProductLengthNo,'
      'Od.LanguageCode AS LanguageCode,'
      'PL.ActualLengthMM AS ALMM,'
      'SP.SequenceNo,'
      'SP.OrderLineNo,'
      'SP.OrderNo,'
      'SP.ModifiedUser,'
      ''
      'SP.ActualM3Net AS Order_AM3,'
      'SP.LengthSpec,'
      ''
      'CASE WHEN (pli.NT * pli.NB) > 0 THEN'
      'SP.ActualM3Net * ((pli.NT * pli.NB) / (pli.AT * pli.AB))'
      'ELSE'
      'SP.ActualM3Net'
      'END AS NM3,'
      
        'SP.VolumeUnitNo, dsp.Paket, SP.AcceptedBySupplier, pli.Surfacing' +
        'No, SP.OrderBy'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP    ON  SP.LoadingLo' +
        'cationNo       = CLL.PhyInvPointNameNo'
      
        'Left Outer Join dbo.DelPerSSPNo dsp on dsp.SSPNO = SP.SupplierSh' +
        'ipPlanObjectNo'
      
        'LEFT outer join dbo.InternalOrderHead ioh on ioh.ShippingPlanNo ' +
        '= SP.ShippingPlanNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mrIOH             ON mrIOH.Mark' +
        'etRegionNo = ioh.MarketRegionNo'
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.Produ' +
        'ctLengthNo'
      
        'INNER JOIN dbo.PRODLIST_II pli                  ON pli.ProductNo' +
        ' = sp.ProductNo'
      
        'Left Outer Join dbo.Users USR'#9#9#9'              ON USR.UserID = SP' +
        '.ModifiedUser'
      
        'LEFT OUTER JOIN dbo.OrderLine    OL             ON  OL.OrderNo =' +
        ' SP.OrderNo'
      'AND OL.OrderLineNo = SP.OrderLineNo'
      
        'INNER JOIN dbo.Client                     SUPP  ON  SUPP.ClientN' +
        'o            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST  ON  CUST.ClientN' +
        'o            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY         Shipto         ON ShipTo.CityNo' +
        ' '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY        Loading         ON Loading.CityN' +
        'o '#9'           = SP.LoadingLocationNo'
      
        'LEFT OUTER JOIN dbo.Orders                 Od   ON  SP.OrderNo  ' +
        '               = Od.OrderNo'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.Shipp' +
        'ingPlanNo          = CH.ShippingPlanNo      -- LARS'
      
        'LEFT OUTER JOIN dbo.Client                     CL   ON  CH.Custo' +
        'merNo              = CL.ClientNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr ON mr.MarketRegionNo = cl.Ma' +
        'rketRegionNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.Cus' +
        'tShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      --' +
        ' LARS'
      'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address '#9#9'             ST_ADR     ON ST_ADR.Addre' +
        'ssNo'#9'     = ST.AddressNo'
      
        'INNER JOIN dbo.CITY                     CY         ON CY.CityNo ' +
        #9'           = ST_ADR.CityNo'
      
        'INNER JOIN dbo.Country'#9#9'               ST_AdrCtry'#9'ON ST_AdrCtry.' +
        'CountryNo  = ST_ADR.CountryNo'
      'ON'#9'ST.ShippingPlanNo'#9'   = CSD.ShippingPlanNo'
      'AND'#9'ST.Reference'#9#9'     = CSD.Reference'
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      'Left Outer Join dbo.ProdInstru PIS'
      'Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID'
      'ON PIS.ProdInstruNo = SP.ProdInstructNo'
      ''
      'WHERE  CLL.ClientNo       =   741'
      'AND SP.ShippingPlanStatus <>  0'
      'AND SP.ObjectType         =   2'
      'AND OD.OrderType          =   0'
      'AND SP.ShippingPlanStatus <>  4'
      'AND SP.ShippingPlanNo     = -1'
      ''
      'UNION'
      ''
      'SELECT distinct'
      '-- NYTT'
      #39'NA'#39' AS KONTRAKTSBESKRIVNING,'
      'bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,'
      'SP.ShippingPlanNo                           AS LONumber,'
      'SP.PackageCode                              AS PackageCode,'
      'SP.ProductDescription                       AS Product,'
      'SP.LengthDescription                        AS Length,'
      
        'IsNull(SP.StartETDYearWeek,-1)              AS FromWeek,        ' +
        ' -- Integer'
      
        'IsNull(SP.EndETDYearWeek,-1)                AS ToWeek,          ' +
        ' -- Integer'
      
        'SP.NoOfUnits                                AS Volume,          ' +
        ' -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      
        #39#39'                                          AS OrderNoText,     ' +
        '     -- VarChar 20'
      
        'UN.VolumeUnitName                           AS UnitName,        ' +
        ' -- VarChar 10'
      
        #39#39'                                          AS Destination,     ' +
        ' -- VarChar 50'
      
        'CL.ClientName                               AS ClientName,      ' +
        ' -- LARS VarChar 80'
      ''
      'CASE'
      'when mr.MarketRegionName is not null then mr.MarketRegionName'
      
        'When mrIOH.MarketRegionName Is Not null then mrIOH.MarketRegionN' +
        'ame'
      'When mrIOH.MarketRegionName Is null then '#39'Saknas'#39
      'End'
      'AS MARKNAD,'
      ''
      'CASE'
      'when mr.MarketRegionNo is not null then mr.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is Not null then mrIOH.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is null then -1'
      'End'
      'AS MarketNo,'
      ''
      
        #39#39'                                          AS Reference,       ' +
        '-- LARS'
      
        'SP.SupplierNo                               AS Supplier,        ' +
        '-- Integer'
      ''
      
        'CH.CustomerNo                               AS CHCustomerNo,    ' +
        '-- Integer'
      
        'SP.CustomerNo                               AS SPCustomerNO,    ' +
        '-- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'                      AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'                      AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      '0                                           AS ORDERTYPE,'
      
        'ShipTo.CityName                             AS SHIPTO,      -- V' +
        'arChar 50'
      'Loading.CityName                            AS LOADING,'
      'ISNULL(SP.Delivery_WeekNo,-1)               AS Delivery_WeekNo,'
      '-1                                          AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo,'
      ''
      'BC.BarCode,'
      'CH.Reference                                AS REFERENS,'
      'SP.DateCreated                              AS SKAPAD,'
      'pli.NT,'
      'pli.NB,'
      'pli.AT,'
      'pli.AB,'
      'pli.TT,'
      'pli.TB,'
      'pli.TS,'
      'pli.UT,'
      'pli.KV,'
      'pli.PK,'
      'SP.lengthtyp                                AS INTL'#196'NGD,'
      'SP.Reference                                AS RADREFERENS,'
      #39'123456789012345678901234567890'#39'            AS Pris,'
      'SP.ProductGroupNo,'
      #39'******************************'#39'            AS  PriceListName,'
      
        'SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo,' +
        ' PIS.ProdInstruNo, sp.ProductNo, sp.ProductLengthNo,'
      '1 AS LanguageCode,'
      'PL.ActualLengthMM AS ALMM,'
      'SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser,'
      ''
      'SP.ActualM3Net AS Order_AM3,'
      'SP.LengthSpec,'
      ''
      'CASE WHEN (pli.NT * pli.NB) > 0 THEN'
      'SP.ActualM3Net * ((pli.NT * pli.NB) / (pli.AT * pli.AB))'
      'ELSE'
      'SP.ActualM3Net'
      'END AS NM3,'
      
        'SP.VolumeUnitNo, dsp.Paket, SP.AcceptedBySupplier, pli.Surfacing' +
        'No, SP.OrderBy'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP    ON  SP.LoadingLo' +
        'cationNo       = CLL.PhyInvPointNameNo'
      
        'Left Outer Join dbo.DelPerSSPNo dsp on dsp.SSPNo = SP.SupplierSh' +
        'ipPlanObjectNo'
      ''
      
        'LEFT outer join dbo.InternalOrderHead ioh on ioh.ShippingPlanNo ' +
        '= SP.ShippingPlanNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mrIOH             ON mrIOH.Mark' +
        'etRegionNo = ioh.MarketRegionNo'
      ''
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.Produ' +
        'ctLengthNo'
      
        'INNER JOIN dbo.PRODLIST_II pli                  ON pli.ProductNo' +
        ' = sp.ProductNo'
      '--NYTT'
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH'
      
        'Inner JOIN dbo.Client                     CL    ON  CL.ClientNo ' +
        '= CH.CustomerNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr             ON mr.MarketRegi' +
        'onNo = cl.MarketRegionNo'
      '  ON  CH.ShippingPlanNo          = SP.LO_No'
      ''
      
        'Left Outer Join dbo.Users USR'#9#9#9'              ON USR.UserID = SP' +
        '.ModifiedUser'
      
        'INNER JOIN dbo.Client                     SUPP  ON  SUPP.ClientN' +
        'o            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST  ON  CUST.ClientN' +
        'o            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY         Shipto         ON ShipTo.CityNo' +
        ' '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY         Loading        ON Loading.CityN' +
        'o '#9'           = SP.LoadingLocationNo'
      
        'INNER JOIN dbo.UnitName                   UN    ON  SP.VolumeUni' +
        'tNo            = UN.VolumeUnit_No'
      
        'Left Outer Join dbo.Booking Bk                  On BK.ShippingPl' +
        'anNo = SP.ShippingPlanNo'
      'Left Outer Join dbo.ProdInstru PIS'
      
        'Inner Join dbo.Barcode BC                       ON BC.BarCodeNo ' +
        '= PIS.BarCodeID'
      '  ON PIS.ProdInstruNo = SP.ProdInstructNo'
      ''
      'WHERE  CLL.ClientNo       =  741'
      'AND SP.ShippingPlanStatus <>  0'
      'AND SP.ObjectType         <   2'
      'AND SP.ShippingPlanStatus <>  4'
      '-- AND SP.ShippingPlanNo  = 37746'
      'AND SP.ShippingPlanNo     = -1'
      'order by SP.OrderBy'
      ''
      '')
    Left = 48
    Top = 72
    object cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField
      DisplayLabel = 'Kontraktsbeskrivning'
      FieldName = 'KONTRAKTSBESKRIVNING'
      Origin = 'KONTRAKTSBESKRIVNING'
      ProviderFlags = []
      Size = 100
    end
    object cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersREADYDATE: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersINITIALS: TStringField
      DisplayLabel = 'Initialer'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersLONumber: TIntegerField
      DisplayLabel = 'LO#'
      FieldName = 'LONumber'
      Origin = 'LONumber'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersPackageCode: TStringField
      DisplayLabel = 'S'#246'knamn'
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object cdsSawmillLoadOrdersProduct: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'Product'
      Origin = 'Product'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersLength: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'Length'
      Origin = 'Length'
      ProviderFlags = []
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersFromWeek: TIntegerField
      DisplayLabel = 'Fom.vecka'
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersToWeek: TIntegerField
      DisplayLabel = 'Tom.vecka'
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersVolume: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'Volume'
      Origin = 'Volume'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField
      DisplayLabel = 'LO ID'
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object cdsSawmillLoadOrdersShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersOrderNoText: TStringField
      DisplayLabel = 'Kontrakt'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersUnitName: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object cdsSawmillLoadOrdersDestination: TStringField
      DisplayLabel = 'Slutdestination'
      FieldName = 'Destination'
      Origin = 'Destination'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersClientName: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cdsSawmillLoadOrdersMARKNAD: TStringField
      DisplayLabel = 'Marknad'
      FieldName = 'MARKNAD'
      Origin = 'MARKNAD'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object cdsSawmillLoadOrdersReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersSupplier: TIntegerField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersCHCustomerNo: TIntegerField
      FieldName = 'CHCustomerNo'
      Origin = 'CHCustomerNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersSPCustomerNO: TIntegerField
      FieldName = 'SPCustomerNO'
      Origin = 'SPCustomerNO'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersCustomerPrice: TFloatField
      DisplayLabel = 'Kpris'
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField
      DisplayLabel = 'CSG'
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersSUPP_NAME: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'SUPP_NAME'
      Origin = 'SUPP_NAME'
      ProviderFlags = []
      Size = 80
    end
    object cdsSawmillLoadOrdersLOCAL_CUST: TStringField
      DisplayLabel = 'Internkund'
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      ProviderFlags = []
      Size = 80
    end
    object cdsSawmillLoadOrdersObjectType: TIntegerField
      DisplayLabel = 'LO typ'
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersORDERTYPE: TIntegerField
      DisplayLabel = 'Ordertyp'
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersSHIPTO: TStringField
      DisplayLabel = 'Lev.till'
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersLOADING: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'LOADING'
      Origin = 'LOADING'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersCSH_CustomerNo: TIntegerField
      FieldName = 'CSH_CustomerNo'
      Origin = 'CSH_CustomerNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersBarCode: TStringField
      DisplayLabel = 'Streckkod'
      FieldName = 'BarCode'
      Origin = 'BarCode'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsSawmillLoadOrdersREFERENS: TStringField
      DisplayLabel = 'Referens'
      FieldName = 'REFERENS'
      Origin = 'REFERENS'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersSKAPAD: TSQLTimeStampField
      DisplayLabel = 'Skapad'
      FieldName = 'SKAPAD'
      Origin = 'SKAPAD'
      ProviderFlags = []
      DisplayFormat = 'YY/MM/DD'
    end
    object cdsSawmillLoadOrdersNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersTT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersTB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cdsSawmillLoadOrdersPK: TStringField
      DisplayLabel = 'IMP'
      FieldName = 'PK'
      Origin = 'PK'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersINTLNGD: TStringField
      DisplayLabel = 'Int.l'#228'ngd'
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersRADREFERENS: TStringField
      DisplayLabel = 'Kontaktsrad.ref'
      FieldName = 'RADREFERENS'
      Origin = 'RADREFERENS'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersPris: TStringField
      DisplayLabel = 'Internpris'
      FieldName = 'Pris'
      Origin = 'Pris'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersPriceListName: TStringField
      DisplayLabel = 'Prislista'
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      ProviderFlags = []
      Size = 30
    end
    object cdsSawmillLoadOrdersPcsPerPkg: TIntegerField
      DisplayLabel = 'PPP'
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersPackageWidth: TIntegerField
      DisplayLabel = 'Paketbredd'
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersPackageHeight: TIntegerField
      DisplayLabel = 'Paketh'#246'jd'
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField
      DisplayLabel = 'Variantnr'
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersOrder_AM3: TFloatField
      FieldName = 'Order_AM3'
      Origin = 'Order_AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Size = 15
    end
    object cdsSawmillLoadOrdersNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersMarketNo: TIntegerField
      FieldName = 'MarketNo'
      Origin = 'MarketNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersPaket: TIntegerField
      DisplayLabel = 'Lev. paket'
      FieldName = 'Paket'
      Origin = 'Paket'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsrcSawmillLoadOrders: TDataSource
    DataSet = cdsSawmillLoadOrders
    Left = 48
    Top = 128
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 158
    Top = 64
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 158
    Top = 168
  end
  object cds_PIP: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1')
    Left = 160
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
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1')
    Left = 160
    Top = 120
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
  object ds_LOBuffertParams: TDataSource
    DataSet = cds_LOBuffertParams
    Left = 48
    Top = 488
  end
  object cds_LOBuffertParams: TFDQuery
    AfterInsert = cds_LOBuffertParamsAfterInsert
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.LOBuffertParams'
      'WHERE VerkNo = :VerkNo')
    Left = 48
    Top = 432
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LOBuffertParamsLOBuffertNo: TIntegerField
      FieldName = 'LOBuffertNo'
      Origin = 'LOBuffertNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOBuffertParamsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertParamsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertParamsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertParamsLOBuffertName: TStringField
      FieldName = 'LOBuffertName'
      Origin = 'LOBuffertName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_LOBuffertParamsPIP: TStringField
      FieldKind = fkLookup
      FieldName = 'PIP'
      LookupDataSet = cds_PIP
      LookupKeyFields = 'PIPNo'
      LookupResultField = 'ORT'
      KeyFields = 'PIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_LOBuffertParamsLIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LIP'
      LookupDataSet = cds_LIP
      LookupKeyFields = 'LIPNo'
      LookupResultField = 'LAGERGRUPP'
      KeyFields = 'LIPNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_LOBuffertParamsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_LOBuffertParamsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertParamsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertParamsMarket: TStringField
      FieldKind = fkLookup
      FieldName = 'Market'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 302
    Top = 64
  end
  object cds_producer: TFDQuery
    CachedUpdates = True
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
    Left = 304
    Top = 16
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
  object cds_LOBuffert: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LOB.*, PT.Totalm3Nominal AS NM3,'
      'PT.Totalm3Actual AS AM3,'
      '(Select TOP 1 PTD.ProductLengthNo FROM'
      'dbo.PackageTypeDetail PTD'
      'WHERE PTD.PackageTypeNo = LOB.PackageTypeNo) AS ProductLengthNo,'
      '(Select TOP 1 PL.ActualLengthMM FROM'
      'dbo.PackageTypeDetail PTD'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = PTD.Prod' +
        'uctLengthNo'
      'WHERE PTD.PackageTypeNo = LOB.PackageTypeNo) AS ALMM,'
      'PT.TotalNoOfPieces AS PPP'
      'FROM dbo.LOBuffert LOB'
      
        'Inner Join dbo.PackageType PT on PT.PackageTypeNo = LOB.PackageT' +
        'ypeNo'
      'WHERE LOB.LOBuffertNo = :LOBuffertNo')
    Left = 48
    Top = 248
    ParamData = <
      item
        Name = 'LOBUFFERTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LOBuffertLOBuffertNo: TIntegerField
      FieldName = 'LOBuffertNo'
      Origin = 'LOBuffertNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOBuffertPackageTypeNo: TIntegerField
      DisplayLabel = 'Artikelnr'
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOBuffertProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cds_LOBuffertProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngdspec'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cds_LOBuffertInventory: TFloatField
      DisplayLabel = 'Lager'
      FieldName = 'Inventory'
      Origin = 'Inventory'
    end
    object cds_LOBuffertOnOrder: TFloatField
      DisplayLabel = 'Order'
      FieldName = 'OnOrder'
      Origin = 'OnOrder'
    end
    object cds_LOBuffertRest: TFloatField
      DisplayLabel = 'Att leverera'
      FieldName = 'Rest'
      Origin = 'Rest'
    end
    object cds_LOBuffertDelivered: TFloatField
      DisplayLabel = 'Levererat'
      FieldName = 'Delivered'
      Origin = 'Delivered'
    end
    object cds_LOBuffertArrivals: TFloatField
      DisplayLabel = 'Ankommande'
      FieldName = 'Arrivals'
      Origin = 'Arrivals'
    end
    object cds_LOBuffertInquiry: TFloatField
      DisplayLabel = 'F'#246'rfr'#229'gan'
      FieldName = 'Inquiry'
      Origin = 'Inquiry'
    end
    object cds_LOBuffertAvailable: TFloatField
      DisplayLabel = 'Tillg'#228'ngligt nu'
      FieldName = 'Available'
      Origin = 'Available'
      ProviderFlags = [pfInUpdate]
    end
    object cds_LOBuffertBooked: TFloatField
      FieldName = 'Booked'
      Origin = 'Booked'
    end
    object cds_LOBuffertPeriod1: TFloatField
      FieldName = 'Period1'
      Origin = 'Period1'
    end
    object cds_LOBuffertPeriod2: TFloatField
      FieldName = 'Period2'
      Origin = 'Period2'
    end
    object cds_LOBuffertPeriod3: TFloatField
      FieldName = 'Period3'
      Origin = 'Period3'
    end
    object cds_LOBuffertPeriod4: TFloatField
      FieldName = 'Period4'
      Origin = 'Period4'
    end
    object cds_LOBuffertPeriod5: TFloatField
      FieldName = 'Period5'
      Origin = 'Period5'
    end
    object cds_LOBuffertPeriod6: TFloatField
      FieldName = 'Period6'
      Origin = 'Period6'
    end
    object cds_LOBuffertPeriod7: TFloatField
      FieldName = 'Period7'
      Origin = 'Period7'
    end
    object cds_LOBuffertPeriod8: TFloatField
      FieldName = 'Period8'
      Origin = 'Period8'
    end
    object cds_LOBuffertPeriod9: TFloatField
      FieldName = 'Period9'
      Origin = 'Period9'
    end
    object cds_LOBuffertPeriod10: TFloatField
      FieldName = 'Period10'
      Origin = 'Period10'
    end
    object cds_LOBuffertNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object cds_LOBuffertProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ReadOnly = True
    end
    object cds_LOBuffertAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object cds_LOBuffertPPP: TIntegerField
      FieldName = 'PPP'
      Origin = 'PPP'
    end
    object cds_LOBuffertALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
    end
  end
  object ds_LOBuffert: TDataSource
    DataSet = cds_LOBuffert
    Left = 48
    Top = 304
  end
  object sp_LOBUffertStep1: TFDStoredProc
    StoredProcName = 'dbo.vis_LOBUffertStep1'
    Left = 48
    Top = 360
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsLOLayer1: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Index_ShowInGrid'
        Fields = 'ShowInGrid'
      end>
    IndexName = 'Index_ShowInGrid'
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      
        'OL.OrderLineDescription                     AS KONTRAKTSBESKRIVN' +
        'ING,'
      'bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod               AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,'
      'SP.ShippingPlanNo                           AS LONumber,'
      'SP.PackageCode                              AS PackageCode,'
      'SP.ProductDescription                       AS Product,'
      'SP.LengthDescription                        AS Length,'
      'IsNull(SP.StartETDYearWeek,-1)              AS FromWeek,'
      'IsNull(SP.EndETDYearWeek,-1)                AS ToWeek,'
      'SP.NoOfUnits                                AS Volume,'
      'SP.SupplierShipPlanObjectNo                 AS sspno,'
      'SP.ShowInGrid,'
      'Od.OrderNoText                              AS OrderNoText,'
      'UN.VolumeUnitName                           AS UnitName,'
      'Cy.CityName                                 AS Destination,'
      'CL.ClientName                               AS ClientName,'
      ''
      'CASE'
      'when mr.MarketRegionName is not null then mr.MarketRegionName'
      
        'When mrIOH.MarketRegionName Is Not null then mrIOH.MarketRegionN' +
        'ame'
      'When mrIOH.MarketRegionName Is null then '#39'Saknas'#39
      'End'
      'AS MARKNAD,'
      ''
      'CASE'
      'when mr.MarketRegionNo is not null then mr.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is Not null then mrIOH.MarketRegionNo'
      'When mrIOH.MarketRegionNo Is null then -1'
      'End'
      'AS MarketNo,'
      ''
      ''
      'CSD.Reference                               AS Reference,'
      'SP.SupplierNo                               AS Supplier,'
      'CH.CustomerNo                               AS CHCustomerNo,'
      'SP.CustomerNo                               AS SPCustomerNO,'
      'SP.CustomerPrice,'
      'SP.CustomerShowInGrid,'
      'SUPP.ClientName'#9#9#9#9'                      AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'                      AS LOCAL_CUST,'
      'SP.ObjectType,'
      'CASE WHEN OD.OrderType = 1 then 1'#9'ELSE 0'#9'END AS ORDERTYPE,'
      'ShipTo.CityName                             AS SHIPTO,'
      'Loading.CityName                            AS LOADING,'
      'IsNull(SP.Delivery_WeekNo,-1)               AS Delivery_WeekNo,'
      'CH.CustomerNo                               AS CSH_CustomerNo,'
      'SP.ShipToInvPointNo,'
      'SP.LoadingLocationNo,'
      ''
      'BC.BarCode,'
      'CH.Reference                                AS REFERENS,'
      'SP.DateCreated                              AS SKAPAD,'
      'pli.NT,'
      'pli.NB,'
      'pli.AT,'
      'pli.AB,'
      'pli.TT,'
      'pli.TB,'
      'pli.TS,'
      'pli.UT,'
      'pli.KV,'
      'pli.PK,'
      'SP.lengthtyp                                AS INTL'#196'NGD,'
      'SP.Reference                                AS RADREFERENS,'
      #39'123456789012345678901234567890'#39'            AS Pris,'
      'SP.ProductGroupNo,'
      #39'******************************'#39'            AS  PriceListName,'
      
        'SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo,' +
        ' PIS.ProdInstruNo, sp.ProductNo, sp.ProductLengthNo,'
      'Od.LanguageCode AS LanguageCode,'
      'PL.ActualLengthMM AS ALMM,'
      'SP.SequenceNo,'
      'SP.OrderLineNo,'
      'SP.OrderNo,'
      'SP.ModifiedUser,'
      ''
      'SP.ActualM3Net AS Order_AM3,'
      'SP.LengthSpec,'
      ''
      'CASE WHEN (pli.NT * pli.NB) > 0 THEN'
      'SP.ActualM3Net * ((pli.NT * pli.NB) / (pli.AT * pli.AB))'
      'ELSE'
      'SP.ActualM3Net'
      'END AS NM3,'
      ''
      'SP.VolumeUnitNo,'
      'pli.SurfacingNo'
      ''
      'FROM dbo.SupplierShippingPlan SP'
      
        'LEFT outer join dbo.InternalOrderHead ioh on ioh.ShippingPlanNo ' +
        '= SP.ShippingPlanNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mrIOH             ON mrIOH.Mark' +
        'etRegionNo = ioh.MarketRegionNo'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.Produ' +
        'ctLengthNo'
      
        'INNER JOIN dbo.PRODLIST_II pli                  ON pli.ProductNo' +
        ' = sp.ProductNo'
      
        'Left Outer Join dbo.Users USR'#9#9#9'              ON USR.UserID = SP' +
        '.ModifiedUser'
      
        'LEFT OUTER JOIN dbo.OrderLine    OL             ON  OL.OrderNo =' +
        ' SP.OrderNo'
      'AND OL.OrderLineNo = SP.OrderLineNo'
      
        'INNER JOIN dbo.Client                     SUPP  ON  SUPP.ClientN' +
        'o            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST  ON  CUST.ClientN' +
        'o            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY         Shipto         ON ShipTo.CityNo' +
        ' '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY        Loading         ON Loading.CityN' +
        'o '#9'           = SP.LoadingLocationNo'
      
        'LEFT OUTER JOIN dbo.Orders                 Od   ON  SP.OrderNo  ' +
        '               = Od.OrderNo'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.Shipp' +
        'ingPlanNo          = CH.ShippingPlanNo      -- LARS'
      
        'LEFT OUTER JOIN dbo.Client                     CL   ON  CH.Custo' +
        'merNo              = CL.ClientNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr ON mr.MarketRegionNo = cl.Ma' +
        'rketRegionNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'LEFT OUTER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.Cus' +
        'tShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      --' +
        ' LARS'
      'LEFT OUTER JOIN ShippingPlan_ShippingAddress ST'
      
        'INNER JOIN dbo.Address '#9#9'             ST_ADR     ON ST_ADR.Addre' +
        'ssNo'#9'     = ST.AddressNo'
      
        'INNER JOIN dbo.CITY                     CY         ON CY.CityNo ' +
        #9'           = ST_ADR.CityNo'
      
        'INNER JOIN dbo.Country'#9#9'               ST_AdrCtry'#9'ON ST_AdrCtry.' +
        'CountryNo  = ST_ADR.CountryNo'
      'ON'#9'ST.ShippingPlanNo'#9'   = CSD.ShippingPlanNo'
      'AND'#9'ST.Reference'#9#9'     = CSD.Reference'
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      'Left Outer Join dbo.ProdInstru PIS'
      'Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID'
      'ON PIS.ProdInstruNo = SP.ProdInstructNo'
      ''
      'WHERE SP.Delivery_WeekNo = :LOBuffertNo'
      'and sp.objecttype = 3'
      ''
      'Order By SP.SupplierShipPlanObjectNo'
      '')
    Left = 160
    Top = 240
    ParamData = <
      item
        Name = 'LOBUFFERTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsLOLayer1KONTRAKTSBESKRIVNING: TStringField
      DisplayLabel = 'Kontraktsbeskrivning'
      FieldName = 'KONTRAKTSBESKRIVNING'
      Origin = 'KONTRAKTSBESKRIVNING'
      Size = 150
    end
    object cdsLOLayer1ShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object cdsLOLayer1READYDATE: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      Size = 30
    end
    object cdsLOLayer1INITIALS: TStringField
      DisplayLabel = 'Reg.av'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      FixedChar = True
      Size = 3
    end
    object cdsLOLayer1ShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
    object cdsLOLayer1LONumber: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'LONumber'
      Origin = 'LONumber'
    end
    object cdsLOLayer1PackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      FixedChar = True
      Size = 10
    end
    object cdsLOLayer1Product: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'Product'
      Origin = 'Product'
      FixedChar = True
      Size = 100
    end
    object cdsLOLayer1Length: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'Length'
      Origin = 'Length'
      FixedChar = True
      Size = 100
    end
    object cdsLOLayer1FromWeek: TIntegerField
      DisplayLabel = 'FOM vecka'
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ReadOnly = True
      Required = True
    end
    object cdsLOLayer1ToWeek: TIntegerField
      DisplayLabel = 'TOM vecka'
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ReadOnly = True
      Required = True
    end
    object cdsLOLayer1Volume: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'Volume'
      Origin = 'Volume'
    end
    object cdsLOLayer1sspno: TIntegerField
      FieldName = 'sspno'
      Origin = 'sspno'
      Required = True
    end
    object cdsLOLayer1ShowInGrid: TIntegerField
      DisplayLabel = 'MasterKey'
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
    end
    object cdsLOLayer1OrderNoText: TStringField
      DisplayLabel = 'Order'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
    end
    object cdsLOLayer1UnitName: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'UnitName'
      Origin = 'UnitName'
      Required = True
      Size = 10
    end
    object cdsLOLayer1Destination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      Size = 50
    end
    object cdsLOLayer1ClientName: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cdsLOLayer1MARKNAD: TStringField
      DisplayLabel = 'Marknad'
      FieldName = 'MARKNAD'
      Origin = 'MARKNAD'
      ReadOnly = True
      Size = 10
    end
    object cdsLOLayer1MarketNo: TIntegerField
      FieldName = 'MarketNo'
      Origin = 'MarketNo'
      ReadOnly = True
    end
    object cdsLOLayer1Reference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object cdsLOLayer1Supplier: TIntegerField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      Required = True
    end
    object cdsLOLayer1CHCustomerNo: TIntegerField
      FieldName = 'CHCustomerNo'
      Origin = 'CHCustomerNo'
    end
    object cdsLOLayer1SPCustomerNO: TIntegerField
      FieldName = 'SPCustomerNO'
      Origin = 'SPCustomerNO'
    end
    object cdsLOLayer1CustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
    end
    object cdsLOLayer1CustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
    end
    object cdsLOLayer1SUPP_NAME: TStringField
      FieldName = 'SUPP_NAME'
      Origin = 'SUPP_NAME'
      Size = 80
    end
    object cdsLOLayer1LOCAL_CUST: TStringField
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      Size = 80
    end
    object cdsLOLayer1ObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object cdsLOLayer1ORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object cdsLOLayer1SHIPTO: TStringField
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      Size = 50
    end
    object cdsLOLayer1LOADING: TStringField
      FieldName = 'LOADING'
      Origin = 'LOADING'
      Size = 50
    end
    object cdsLOLayer1Delivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ReadOnly = True
      Required = True
    end
    object cdsLOLayer1CSH_CustomerNo: TIntegerField
      FieldName = 'CSH_CustomerNo'
      Origin = 'CSH_CustomerNo'
    end
    object cdsLOLayer1ShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object cdsLOLayer1LoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object cdsLOLayer1BarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      FixedChar = True
    end
    object cdsLOLayer1REFERENS: TStringField
      FieldName = 'REFERENS'
      Origin = 'REFERENS'
      Size = 30
    end
    object cdsLOLayer1SKAPAD: TSQLTimeStampField
      DisplayLabel = 'Registrerad'
      FieldName = 'SKAPAD'
      Origin = 'SKAPAD'
    end
    object cdsLOLayer1NT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object cdsLOLayer1NB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object cdsLOLayer1AT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object cdsLOLayer1AB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object cdsLOLayer1TT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
    end
    object cdsLOLayer1TB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
    end
    object cdsLOLayer1TS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object cdsLOLayer1UT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object cdsLOLayer1KV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsLOLayer1PK: TStringField
      FieldName = 'PK'
      Origin = 'PK'
      Size = 40
    end
    object cdsLOLayer1INTLNGD: TStringField
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
    end
    object cdsLOLayer1RADREFERENS: TStringField
      FieldName = 'RADREFERENS'
      Origin = 'RADREFERENS'
      Size = 50
    end
    object cdsLOLayer1Pris: TStringField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsLOLayer1ProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
    end
    object cdsLOLayer1PriceListName: TStringField
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object cdsLOLayer1PcsPerPkg: TIntegerField
      DisplayLabel = 'PPP'
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object cdsLOLayer1PackageWidth: TIntegerField
      DisplayLabel = 'Paketbredd'
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cdsLOLayer1PackageHeight: TIntegerField
      DisplayLabel = 'Paketh'#246'jd'
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cdsLOLayer1PkgCodePPNo: TIntegerField
      DisplayLabel = 'ArtikelNr'
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
    object cdsLOLayer1ProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
    end
    object cdsLOLayer1ProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object cdsLOLayer1ProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object cdsLOLayer1LanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object cdsLOLayer1ALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cdsLOLayer1SequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cdsLOLayer1OrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object cdsLOLayer1OrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object cdsLOLayer1ModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsLOLayer1Order_AM3: TFloatField
      FieldName = 'Order_AM3'
      Origin = 'Order_AM3'
    end
    object cdsLOLayer1LengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsLOLayer1NM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsLOLayer1VolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = []
    end
    object cdsLOLayer1SurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
  end
  object dsLOLayer: TDataSource
    DataSet = cdsLOLayer1
    Left = 160
    Top = 296
  end
  object FDmLOLayer: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 48
    Top = 696
    object FDmLOLayerALMM: TFloatField
      FieldName = 'ALMM'
    end
    object FDmLOLayerProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object FDmLOLayerPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object FDmLOLayersALMM: TStringField
      FieldName = 'sALMM'
      Size = 10
    end
    object FDmLOLayerNoOfPcs: TIntegerField
      FieldName = 'NoOfPcs'
    end
    object FDmLOLayerProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object FDmLOLayersspNo: TIntegerField
      FieldName = 'sspNo'
    end
    object FDmLOLayerPcsPerLength: TStringField
      FieldName = 'PcsPerLength'
      Size = 100
    end
    object FDmLOLayerNomThick: TFloatField
      FieldName = 'NomThick'
    end
    object FDmLOLayerSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object FDmLOLayerNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
    end
    object FDmLOLayerLengthDesc: TStringField
      FieldName = 'LengthDesc'
      Size = 100
    end
    object FDmLOLayerAM3: TFloatField
      FieldName = 'AM3'
    end
    object FDmLOLayerNM3: TFloatField
      FieldName = 'NM3'
    end
    object FDmLOLayerVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
    end
    object FDmLOLayerLONo: TIntegerField
      FieldName = 'LONo'
    end
    object FDmLOLayerLOBuffertNo: TIntegerField
      FieldName = 'LOBuffertNo'
    end
  end
  object dsadmLOLayer: TDataSource
    DataSet = FDmLOLayer
    Left = 48
    Top = 752
  end
  object sp_CrePkgType: TFDStoredProc
    StoredProcName = 'dbo.vis_CrePkgType'
    Left = 152
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
        Name = '@NewProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PcsPerLength'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end
      item
        Position = 4
        Name = '@ProductLengthNo'
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@NewPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object sp_insLOLayer2: TFDStoredProc
    StoredProcName = 'dbo.vis_insLOLayer2'
    Left = 152
    Top = 752
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OldsspNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NoOfUnits'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@LengthDescription'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 5
        Name = '@AM3'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@VolumeUnitNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@ProductLengthNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@PcsPerPkg'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@PackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = '@LengthStr'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 12
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object upd_SawMillLoadOrders: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO dbo.suppliershippingplan'
      
        '(suppliershipplanobjectno, shippingplanstatus, acceptedbysupplie' +
        'r, '
      '  modifieduser, pcsperpkg, lengthspec, orderby)'
      
        'VALUES (:new_suppliershipplanobjectno, :new_shippingplanstatus, ' +
        ':new_acceptedbysupplier, '
      
        '  :new_modifieduser, :new_pcsperpkg, :new_lengthspec, :new_order' +
        'by)')
    ModifySQL.Strings = (
      'UPDATE dbo.suppliershippingplan'
      
        'SET suppliershipplanobjectno = :new_suppliershipplanobjectno, sh' +
        'ippingplanstatus = :new_shippingplanstatus, '
      
        '  acceptedbysupplier = :new_acceptedbysupplier, modifieduser = :' +
        'new_modifieduser, '
      '  pcsperpkg = :new_pcsperpkg, lengthspec = :new_lengthspec, '
      '  orderby = :new_orderby'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    LockSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby'
      'FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    FetchRowSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby'
      'FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :suppliershipplanobjectno')
    Left = 48
    Top = 16
  end
  object sp_LOLevelOne: TFDStoredProc
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'LOLevelOneIndexOrderNo'
        Fields = 'OrderNo'
      end>
    IndexName = 'LOLevelOneIndexOrderNo'
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.InternalOrderHead'
    UpdateOptions.KeyFields = 'OrderNo'
    StoredProcName = 'dbo.vis_LOLevelOne'
    Left = 432
    Top = 712
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LOLevelOneShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOnePreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sp_LOLevelOneStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object sp_LOLevelOneMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      ProviderFlags = []
      Size = 80
    end
    object sp_LOLevelOneInternDestination: TStringField
      FieldName = 'InternDestination'
      Origin = 'InternDestination'
      ProviderFlags = []
      Size = 50
    end
    object sp_LOLevelOneLaststalle: TStringField
      FieldName = 'Laststalle'
      Origin = 'Laststalle'
      ProviderFlags = []
      Size = 50
    end
    object sp_LOLevelOneDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneKundreferens: TStringField
      FieldName = 'Kundreferens'
      Origin = 'Kundreferens'
      ProviderFlags = []
      Size = 30
    end
    object sp_LOLevelOneOrderType: TIntegerField
      DisplayLabel = 'Sortering'
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneMiniText: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'MiniText'
      Origin = 'MiniText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sp_LOLevelOneInternKund: TStringField
      FieldName = 'InternKund'
      Origin = 'InternKund'
      ProviderFlags = []
      Size = 80
    end
    object sp_LOLevelOneOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_LOLevelOneCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object sp_LOLevelOneDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      Origin = 'ProductDisplayFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneDefaultLIPNo: TIntegerField
      FieldName = 'DefaultLIPNo'
      Origin = 'DefaultLIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOnePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneVatExempt: TIntegerField
      FieldName = 'VatExempt'
      Origin = 'VatExempt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneAutoPkgCode: TIntegerField
      FieldName = 'AutoPkgCode'
      Origin = 'AutoPkgCode'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneMiniTextFS: TIntegerField
      FieldName = 'MiniTextFS'
      Origin = 'MiniTextFS'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneMiniTextLO: TIntegerField
      FieldName = 'MiniTextLO'
      Origin = 'MiniTextLO'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOnePeriod: TIntegerField
      FieldName = 'Period'
      Origin = 'Period'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelOneObjecttype: TIntegerField
      FieldName = 'Objecttype'
      Origin = 'Objecttype'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LOLevelOne: TDataSource
    DataSet = sp_LOLevelOne
    Left = 432
    Top = 760
  end
  object sp_LOLevelTwo: TFDStoredProc
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_LOLevelTwo'
    Left = 536
    Top = 712
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LOLevelTwoKontraktsbeskrivning: TStringField
      FieldName = 'Kontraktsbeskrivning'
      Origin = 'Kontraktsbeskrivning'
      Size = 150
    end
    object sp_LOLevelTwoShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object sp_LOLevelTwoPreliminaryRequestedPeriod: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object sp_LOLevelTwoRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      FixedChar = True
      Size = 3
    end
    object sp_LOLevelTwoShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
    object sp_LOLevelTwoShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sp_LOLevelTwoPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      FixedChar = True
      Size = 10
    end
    object sp_LOLevelTwoProductDescription: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      FixedChar = True
      Size = 100
    end
    object sp_LOLevelTwoLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      FixedChar = True
      Size = 100
    end
    object sp_LOLevelTwoFom_vecka: TIntegerField
      DisplayLabel = 'Fom vecka'
      FieldName = 'Fom_vecka'
      Origin = 'Fom_vecka'
      ReadOnly = True
      Required = True
    end
    object sp_LOLevelTwoTom_vecka: TIntegerField
      DisplayLabel = 'Tom vecka'
      FieldName = 'Tom_vecka'
      Origin = 'Tom_vecka'
      ReadOnly = True
      Required = True
    end
    object sp_LOLevelTwoNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
    end
    object sp_LOLevelTwoSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      Required = True
    end
    object sp_LOLevelTwoShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
    end
    object sp_LOLevelTwoOrderNoText: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
    end
    object sp_LOLevelTwoUnitName: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'UnitName'
      Origin = 'UnitName'
      Required = True
      Size = 10
    end
    object sp_LOLevelTwoSlutDestination: TStringField
      DisplayLabel = 'Slutdestination'
      FieldName = 'SlutDestination'
      Origin = 'SlutDestination'
      Size = 50
    end
    object sp_LOLevelTwoKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object sp_LOLevelTwoMarknad: TStringField
      FieldName = 'Marknad'
      Origin = 'Marknad'
      ReadOnly = True
      Size = 10
    end
    object sp_LOLevelTwoMarketNo: TIntegerField
      FieldName = 'MarketNo'
      Origin = 'MarketNo'
      ReadOnly = True
    end
    object sp_LOLevelTwoReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object sp_LOLevelTwoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sp_LOLevelTwoCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sp_LOLevelTwoInternCustomerNo: TIntegerField
      FieldName = 'InternCustomerNo'
      Origin = 'InternCustomerNo'
    end
    object sp_LOLevelTwoCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
    end
    object sp_LOLevelTwoCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
    end
    object sp_LOLevelTwoVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sp_LOLevelTwoInternKund: TStringField
      FieldName = 'InternKund'
      Origin = 'InternKund'
      Size = 80
    end
    object sp_LOLevelTwoObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object sp_LOLevelTwoKontraktstyp: TIntegerField
      FieldName = 'Kontraktstyp'
      Origin = 'Kontraktstyp'
      ReadOnly = True
      Required = True
    end
    object sp_LOLevelTwoInternDestination: TStringField
      FieldName = 'InternDestination'
      Origin = 'InternDestination'
      Size = 50
    end
    object sp_LOLevelTwoLaststalle: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'Laststalle'
      Origin = 'Laststalle'
      Size = 50
    end
    object sp_LOLevelTwoDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
    end
    object sp_LOLevelTwoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object sp_LOLevelTwoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object sp_LOLevelTwoBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      FixedChar = True
    end
    object sp_LOLevelTwoKundreferens: TStringField
      FieldName = 'Kundreferens'
      Origin = 'Kundreferens'
      Size = 30
    end
    object sp_LOLevelTwoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sp_LOLevelTwoNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object sp_LOLevelTwoNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object sp_LOLevelTwoAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sp_LOLevelTwoAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sp_LOLevelTwoTT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
    end
    object sp_LOLevelTwoTB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
    end
    object sp_LOLevelTwoTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object sp_LOLevelTwoUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object sp_LOLevelTwoKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sp_LOLevelTwoPK: TStringField
      FieldName = 'PK'
      Origin = 'PK'
      Size = 40
    end
    object sp_LOLevelTwoINTLNGD: TStringField
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
    end
    object sp_LOLevelTwoRadreferens: TStringField
      FieldName = 'Radreferens'
      Origin = 'Radreferens'
      Size = 50
    end
    object sp_LOLevelTwoPris: TStringField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Size = 32
    end
    object sp_LOLevelTwoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
    end
    object sp_LOLevelTwoPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object sp_LOLevelTwoPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object sp_LOLevelTwoPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object sp_LOLevelTwoPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
    object sp_LOLevelTwoProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
    end
    object sp_LOLevelTwoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sp_LOLevelTwoProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object sp_LOLevelTwoLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object sp_LOLevelTwoALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object sp_LOLevelTwoSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sp_LOLevelTwoOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object sp_LOLevelTwoOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object sp_LOLevelTwoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sp_LOLevelTwoAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sp_LOLevelTwoLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      Size = 15
    end
    object sp_LOLevelTwoNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sp_LOLevelTwoVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object sp_LOLevelTwoPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
    end
    object sp_LOLevelTwoAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
    end
    object sp_LOLevelTwoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sp_LOLevelTwoOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
    end
  end
  object ds_LOLevelTwo: TDataSource
    DataSet = sp_LOLevelTwo
    Left = 536
    Top = 760
  end
  object sp_LOLevelThree: TFDStoredProc
    UpdateOptions.UpdateTableName = 'dbo.suppliershippingplan'
    UpdateOptions.KeyFields = 'SupplierShipPlanObjectNo'
    StoredProcName = 'dbo.vis_LOLevelThree'
    Left = 640
    Top = 712
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LOLevelThreeSupplierShipPlanObjectNo: TIntegerField
      DisplayLabel = 'Keyno'
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_LOLevelThreeCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeProductDescription: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_LOLevelThreeLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_LOLevelThreeAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sp_LOLevelThreeMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sp_LOLevelThreeFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sp_LOLevelThreeLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePkgCodePPNo: TIntegerField
      DisplayLabel = 'Artikelnr'
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sp_LOLevelThreeOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeNM3ext: TFloatField
      FieldName = 'NM3ext'
      Origin = 'NM3ext'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeNM3int: TFloatField
      FieldName = 'NM3int'
      Origin = 'NM3int'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOLevelThreeUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object sp_LOLevelThreeALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object sp_LOLevelThreeSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object sp_LOLevelThreeRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sp_LOLevelThreeAvailPeriod: TFloatField
      DisplayLabel = 'Period'
      FieldName = 'AvailPeriod'
      Origin = 'AvailPeriod'
      ProviderFlags = []
      ReadOnly = True
    end
    object sp_LOLevelThreeAvailNetto: TFloatField
      DisplayLabel = 'Netto'
      FieldName = 'AvailNetto'
      Origin = 'AvailNetto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_LOLevelThree: TDataSource
    DataSet = sp_LOLevelThree
    Left = 640
    Top = 760
  end
  object sp_InsIntLOHdr: TFDStoredProc
    StoredProcName = 'dbo.vis_InsIntLOHdr'
    Left = 152
    Top = 640
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@VerkNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_LOEjBokade: TFDStoredProc
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'PK_Index'
        Fields = 'SupplierShipPlanObjectNo'
      end>
    IndexName = 'PK_Index'
    StoredProcName = 'dbo.vis_LOEjBokade'
    Left = 248
    Top = 640
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
        Name = '@VerkNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_LOEjBokadeKONTRAKTSBESKRIVNING: TStringField
      FieldName = 'KONTRAKTSBESKRIVNING'
      Origin = 'KONTRAKTSBESKRIVNING'
      ReadOnly = True
      Size = 150
    end
    object sp_LOEjBokadeShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ReadOnly = True
    end
    object sp_LOEjBokadeREADYDATE: TStringField
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ReadOnly = True
      Size = 30
    end
    object sp_LOEjBokadeINITIALS: TStringField
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object sp_LOEjBokadeShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ReadOnly = True
    end
    object sp_LOEjBokadeLONumber: TIntegerField
      FieldName = 'LONumber'
      Origin = 'LONumber'
      ReadOnly = True
    end
    object sp_LOEjBokadePackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object sp_LOEjBokadeProduct: TStringField
      FieldName = 'Product'
      Origin = 'Product'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object sp_LOEjBokadeLength: TStringField
      FieldName = 'Length'
      Origin = 'Length'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object sp_LOEjBokadeFromWeek: TIntegerField
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeToWeek: TIntegerField
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
      ReadOnly = True
    end
    object sp_LOEjBokadeSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ReadOnly = True
    end
    object sp_LOEjBokadeOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ReadOnly = True
    end
    object sp_LOEjBokadeUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object sp_LOEjBokadeDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ReadOnly = True
      Size = 50
    end
    object sp_LOEjBokadeClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ReadOnly = True
      Size = 80
    end
    object sp_LOEjBokadeMARKNAD: TStringField
      FieldName = 'MARKNAD'
      Origin = 'MARKNAD'
      ReadOnly = True
      Size = 10
    end
    object sp_LOEjBokadeMarketNo: TIntegerField
      FieldName = 'MarketNo'
      Origin = 'MarketNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ReadOnly = True
      Size = 30
    end
    object sp_LOEjBokadeSupplier: TIntegerField
      FieldName = 'Supplier'
      Origin = 'Supplier'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeCHCustomerNo: TIntegerField
      FieldName = 'CHCustomerNo'
      Origin = 'CHCustomerNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeSPCustomerNO: TIntegerField
      FieldName = 'SPCustomerNO'
      Origin = 'SPCustomerNO'
      ReadOnly = True
    end
    object sp_LOEjBokadeCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ReadOnly = True
    end
    object sp_LOEjBokadeCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ReadOnly = True
    end
    object sp_LOEjBokadeSUPP_NAME: TStringField
      FieldName = 'SUPP_NAME'
      Origin = 'SUPP_NAME'
      ReadOnly = True
      Size = 80
    end
    object sp_LOEjBokadeLOCAL_CUST: TStringField
      FieldName = 'LOCAL_CUST'
      Origin = 'LOCAL_CUST'
      ReadOnly = True
      Size = 80
    end
    object sp_LOEjBokadeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ReadOnly = True
    end
    object sp_LOEjBokadeORDERTYPE: TIntegerField
      FieldName = 'ORDERTYPE'
      Origin = 'ORDERTYPE'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeSHIPTO: TStringField
      FieldName = 'SHIPTO'
      Origin = 'SHIPTO'
      ReadOnly = True
      Size = 50
    end
    object sp_LOEjBokadeLOADING: TStringField
      FieldName = 'LOADING'
      Origin = 'LOADING'
      ReadOnly = True
      Size = 50
    end
    object sp_LOEjBokadeDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeCSH_CustomerNo: TIntegerField
      FieldName = 'CSH_CustomerNo'
      Origin = 'CSH_CustomerNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      ReadOnly = True
      FixedChar = True
    end
    object sp_LOEjBokadeREFERENS: TStringField
      FieldName = 'REFERENS'
      Origin = 'REFERENS'
      ReadOnly = True
      Size = 30
    end
    object sp_LOEjBokadeSKAPAD: TSQLTimeStampField
      FieldName = 'SKAPAD'
      Origin = 'SKAPAD'
      ReadOnly = True
    end
    object sp_LOEjBokadeNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
      ReadOnly = True
    end
    object sp_LOEjBokadeNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
      ReadOnly = True
    end
    object sp_LOEjBokadeAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
      ReadOnly = True
    end
    object sp_LOEjBokadeAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
      ReadOnly = True
    end
    object sp_LOEjBokadeTT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
      ReadOnly = True
    end
    object sp_LOEjBokadeTB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
      ReadOnly = True
    end
    object sp_LOEjBokadeTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object sp_LOEjBokadeUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object sp_LOEjBokadeKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 30
    end
    object sp_LOEjBokadePK: TStringField
      FieldName = 'PK'
      Origin = 'PK'
      ReadOnly = True
      Size = 40
    end
    object sp_LOEjBokadeINTLNGD: TStringField
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
      ReadOnly = True
    end
    object sp_LOEjBokadeRADREFERENS: TStringField
      FieldName = 'RADREFERENS'
      Origin = 'RADREFERENS'
      ReadOnly = True
      Size = 50
    end
    object sp_LOEjBokadePris: TStringField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Size = 32
    end
    object sp_LOEjBokadeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ReadOnly = True
    end
    object sp_LOEjBokadePriceListName: TStringField
      FieldName = 'PriceListName'
      Origin = 'PriceListName'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object sp_LOEjBokadePcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ReadOnly = True
    end
    object sp_LOEjBokadePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ReadOnly = True
    end
    object sp_LOEjBokadePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ReadOnly = True
    end
    object sp_LOEjBokadePkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ReadOnly = True
    end
    object sp_LOEjBokadeALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ReadOnly = True
      Required = True
    end
    object sp_LOEjBokadeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ReadOnly = True
    end
    object sp_LOEjBokadeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ReadOnly = True
    end
    object sp_LOEjBokadeOrder_AM3: TFloatField
      FieldName = 'Order_AM3'
      Origin = 'Order_AM3'
      ReadOnly = True
    end
    object sp_LOEjBokadeLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ReadOnly = True
      Size = 15
    end
    object sp_LOEjBokadeNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ReadOnly = True
    end
    object sp_LOEjBokadeVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ReadOnly = True
    end
    object sp_LOEjBokadePaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
      ReadOnly = True
    end
    object sp_LOEjBokadeAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sp_LOEjBokadeSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object sp_LOEjBokadeOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_LOEjBokade: TDataSource
    DataSet = sp_LOEjBokade
    Left = 248
    Top = 696
  end
  object upd_LOLevelOne: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO VIS_VIDA.dbo.internalorderhead'
      '(orderno, shippingplanno, customerno, destinationno, '
      '  defaultshiptoinvpointno, status, ordernotext, '
      '  defaultdeliverytermsno, defaultpaymenttermsno, '
      '  defaultcurrencyno, ordernote, ordertype, '
      '  productdisplayformat, defaultvolumeunitno, voyageno, '
      
        '  defaultpriceunitno, def_startetdyearweek, def_startetayearweek' +
        ', '
      '  salesregionno, lengthformat, languagecode, '
      '  sequenceno, createduser, modifieduser, datecreated, '
      '  lo_no, defaultlipno, marketregionno, pricelistno, '
      
        '  vatexempt, internkundfrakt, supplierno, def_loadinglocationno,' +
        ' '
      '  autopkgcode, minitext, minitextfs, minitextlo, '
      '  period, objecttype)'
      
        'VALUES (:new_orderno, :new_shippingplanno, :new_customerno, :new' +
        '_destinationno, '
      '  :new_defaultshiptoinvpointno, :new_status, :new_ordernotext, '
      '  :new_defaultdeliverytermsno, :new_defaultpaymenttermsno, '
      '  :new_defaultcurrencyno, :new_ordertype, '
      
        '  :new_productdisplayformat, :new_defaultvolumeunitno, :new_voya' +
        'geno, '
      
        '  :new_defaultpriceunitno, :new_def_startetdyearweek, :new_def_s' +
        'tartetayearweek, '
      '  :new_salesregionno, :new_lengthformat, :new_languagecode, '
      
        '  :new_sequenceno, :new_createduser, :new_modifieduser, :new_dat' +
        'ecreated, '
      
        '  :new_lo_no, :new_defaultlipno, :new_marketregionno, :new_price' +
        'listno, '
      
        '  :new_vatexempt, :new_internkundfrakt, :new_supplierno, :new_de' +
        'f_loadinglocationno, '
      
        '  :new_autopkgcode, :new_minitext, :new_minitextfs, :new_minitex' +
        'tlo, '
      '  :new_period, :new_objecttype)')
    ModifySQL.Strings = (
      'UPDATE VIS_VIDA.dbo.internalorderhead'
      
        'SET orderno = :new_orderno, shippingplanno = :new_shippingplanno' +
        ', '
      
        '  customerno = :new_customerno, destinationno = :new_destination' +
        'no, '
      '  defaultshiptoinvpointno = :new_defaultshiptoinvpointno, '
      
        '  status = :new_status, ordernotext = :new_ordernotext, defaultd' +
        'eliverytermsno = :new_defaultdeliverytermsno, '
      
        '  defaultpaymenttermsno = :new_defaultpaymenttermsno, defaultcur' +
        'rencyno = :new_defaultcurrencyno, '
      '  ordertype = :new_ordertype, '
      
        '  productdisplayformat = :new_productdisplayformat, defaultvolum' +
        'eunitno = :new_defaultvolumeunitno, '
      
        '  voyageno = :new_voyageno, defaultpriceunitno = :new_defaultpri' +
        'ceunitno, '
      
        '  def_startetdyearweek = :new_def_startetdyearweek, def_starteta' +
        'yearweek = :new_def_startetayearweek, '
      
        '  salesregionno = :new_salesregionno, lengthformat = :new_length' +
        'format, '
      
        '  languagecode = :new_languagecode, sequenceno = :new_sequenceno' +
        ', '
      
        '  createduser = :new_createduser, modifieduser = :new_modifiedus' +
        'er, '
      
        '  datecreated = :new_datecreated, lo_no = :new_lo_no, defaultlip' +
        'no = :new_defaultlipno, '
      
        '  marketregionno = :new_marketregionno, pricelistno = :new_price' +
        'listno, '
      
        '  vatexempt = :new_vatexempt, internkundfrakt = :new_internkundf' +
        'rakt, '
      
        '  supplierno = :new_supplierno, def_loadinglocationno = :new_def' +
        '_loadinglocationno, '
      '  autopkgcode = :new_autopkgcode, minitext = :new_minitext, '
      '  minitextfs = :new_minitextfs, minitextlo = :new_minitextlo, '
      '  period = :new_period, objecttype = :new_objecttype'
      'WHERE orderno = :old_orderno')
    DeleteSQL.Strings = (
      'DELETE FROM VIS_VIDA.dbo.internalorderhead'
      'WHERE orderno = :old_orderno')
    LockSQL.Strings = (
      
        'SELECT orderno, shippingplanno, customerno, destinationno, defau' +
        'ltshiptoinvpointno, '
      
        '  status, ordernotext, defaultdeliverytermsno, defaultpaymentter' +
        'msno, '
      '  defaultcurrencyno, ordertype, productdisplayformat, '
      
        '  defaultvolumeunitno, voyageno, defaultpriceunitno, def_startet' +
        'dyearweek, '
      
        '  def_startetayearweek, salesregionno, lengthformat, languagecod' +
        'e, '
      '  sequenceno, createduser, modifieduser, datecreated, lo_no, '
      
        '  defaultlipno, marketregionno, pricelistno, vatexempt, internku' +
        'ndfrakt, '
      '  supplierno, def_loadinglocationno, autopkgcode, minitext, '
      '  minitextfs, minitextlo, period, objecttype'
      'FROM VIS_VIDA.dbo.internalorderhead'
      'WHERE orderno = :old_orderno')
    FetchRowSQL.Strings = (
      
        'SELECT orderno, shippingplanno, customerno, destinationno, defau' +
        'ltshiptoinvpointno, '
      
        '  status, ordernotext, defaultdeliverytermsno, defaultpaymentter' +
        'msno, '
      '  defaultcurrencyno, ordertype, productdisplayformat, '
      
        '  defaultvolumeunitno, voyageno, defaultpriceunitno, def_startet' +
        'dyearweek, '
      
        '  def_startetayearweek, salesregionno, lengthformat, languagecod' +
        'e, '
      '  sequenceno, createduser, modifieduser, datecreated, lo_no, '
      
        '  defaultlipno, marketregionno, pricelistno, vatexempt, internku' +
        'ndfrakt, '
      '  supplierno, def_loadinglocationno, autopkgcode, minitext, '
      '  minitextfs, minitextlo, period, objecttype'
      'FROM VIS_VIDA.dbo.internalorderhead'
      'WHERE orderno = :orderno')
    Left = 432
    Top = 664
  end
  object upd_LOLevelThree: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO VIS_VIDA.dbo.suppliershippingplan'
      '(suppliershipplanobjectno, custshipplandetailobjectno, '
      '  shiptype, objecttype, orderno, orderlineno, '
      '  shippingplanno, supplierno, loadinglocationno, '
      '  deliverytermsno, paymenttermsno, price, currencyno, '
      '  noofunits, priceunitno, volumeunitno, destinationno, '
      '  shippingplanstatus, startetdyearweek, endetdyearweek, '
      '  internalnote, productdescription, lengthdescription, '
      '  acceptedbysupplier, productlengthno, productgroupno, '
      '  actualm3net, shiptoinvpointno, productno, '
      '  lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, '
      '  createduser, modifieduser, datecreated, partnerno, '
      '  prodinstructno, showingrid, pcsperpkg, customerno, '
      '  customerprice, customershowingrid, lo_no, '
      '  delivery_weekno, datemodified, lengthtyp, '
      '  reference, lipno, pkgcodeppno, pricelistno, '
      '  internkundfrakt, packagewidth, packageheight, '
      '  lengthspec, orderby, nm3ext, nm3int)'
      
        'VALUES (:new_suppliershipplanobjectno, :new_custshipplandetailob' +
        'jectno, '
      
        '  :new_shiptype, :new_objecttype, :new_orderno, :new_orderlineno' +
        ', '
      '  :new_shippingplanno, :new_supplierno, :new_loadinglocationno, '
      
        '  :new_deliverytermsno, :new_paymenttermsno, :new_price, :new_cu' +
        'rrencyno, '
      
        '  :new_noofunits, :new_priceunitno, :new_volumeunitno, :new_dest' +
        'inationno, '
      
        '  :new_shippingplanstatus, :new_startetdyearweek, :new_endetdyea' +
        'rweek, '
      
        '  :new_internalnote, :new_productdescription, :new_lengthdescrip' +
        'tion, '
      
        '  :new_acceptedbysupplier, :new_productlengthno, :new_productgro' +
        'upno, '
      '  :new_actualm3net, :new_shiptoinvpointno, :new_productno, '
      '  :new_lotext, :new_minactuallengthmm, :new_maxactuallengthmm, '
      
        '  :new_packagecode, :new_freightorderbyclientno, :new_sequenceno' +
        ', '
      
        '  :new_createduser, :new_modifieduser, :new_datecreated, :new_pa' +
        'rtnerno, '
      
        '  :new_prodinstructno, :new_showingrid, :new_pcsperpkg, :new_cus' +
        'tomerno, '
      '  :new_customerprice, :new_customershowingrid, :new_lo_no, '
      '  :new_delivery_weekno, :new_datemodified, :new_lengthtyp, '
      
        '  :new_reference, :new_lipno, :new_pkgcodeppno, :new_pricelistno' +
        ', '
      '  :new_internkundfrakt, :new_packagewidth, :new_packageheight, '
      '  :new_lengthspec, :new_orderby, :new_nm3ext, :new_nm3int)')
    ModifySQL.Strings = (
      'UPDATE VIS_VIDA.dbo.suppliershippingplan'
      
        'SET suppliershipplanobjectno = :new_suppliershipplanobjectno, cu' +
        'stshipplandetailobjectno = :new_custshipplandetailobjectno, '
      '  shiptype = :new_shiptype, objecttype = :new_objecttype, '
      '  orderno = :new_orderno, orderlineno = :new_orderlineno, '
      
        '  shippingplanno = :new_shippingplanno, supplierno = :new_suppli' +
        'erno, '
      
        '  loadinglocationno = :new_loadinglocationno, deliverytermsno = ' +
        ':new_deliverytermsno, '
      '  paymenttermsno = :new_paymenttermsno, price = :new_price, '
      '  currencyno = :new_currencyno, noofunits = :new_noofunits, '
      
        '  priceunitno = :new_priceunitno, volumeunitno = :new_volumeunit' +
        'no, '
      
        '  destinationno = :new_destinationno, shippingplanstatus = :new_' +
        'shippingplanstatus, '
      
        '  startetdyearweek = :new_startetdyearweek, endetdyearweek = :ne' +
        'w_endetdyearweek, '
      
        '  internalnote = :new_internalnote, productdescription = :new_pr' +
        'oductdescription, '
      
        '  lengthdescription = :new_lengthdescription, acceptedbysupplier' +
        ' = :new_acceptedbysupplier, '
      
        '  productlengthno = :new_productlengthno, productgroupno = :new_' +
        'productgroupno, '
      
        '  actualm3net = :new_actualm3net, shiptoinvpointno = :new_shipto' +
        'invpointno, '
      
        '  productno = :new_productno, lotext = :new_lotext, minactuallen' +
        'gthmm = :new_minactuallengthmm, '
      
        '  maxactuallengthmm = :new_maxactuallengthmm, packagecode = :new' +
        '_packagecode, '
      
        '  freightorderbyclientno = :new_freightorderbyclientno, sequence' +
        'no = :new_sequenceno, '
      
        '  createduser = :new_createduser, modifieduser = :new_modifiedus' +
        'er, '
      '  datecreated = :new_datecreated, partnerno = :new_partnerno, '
      
        '  prodinstructno = :new_prodinstructno, showingrid = :new_showin' +
        'grid, '
      '  pcsperpkg = :new_pcsperpkg, customerno = :new_customerno, '
      
        '  customerprice = :new_customerprice, customershowingrid = :new_' +
        'customershowingrid, '
      '  lo_no = :new_lo_no, delivery_weekno = :new_delivery_weekno, '
      '  datemodified = :new_datemodified, lengthtyp = :new_lengthtyp, '
      
        '  reference = :new_reference, lipno = :new_lipno, pkgcodeppno = ' +
        ':new_pkgcodeppno, '
      
        '  pricelistno = :new_pricelistno, internkundfrakt = :new_internk' +
        'undfrakt, '
      
        '  packagewidth = :new_packagewidth, packageheight = :new_package' +
        'height, '
      
        '  lengthspec = :new_lengthspec, orderby = :new_orderby, nm3ext =' +
        ' :new_nm3ext, '
      '  nm3int = :new_nm3int'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    DeleteSQL.Strings = (
      'DELETE FROM VIS_VIDA.dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    LockSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby, nm3ext, nm3int'
      'FROM VIS_VIDA.dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    FetchRowSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby, nm3ext, nm3int'
      'FROM VIS_VIDA.dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :suppliershipplanobjectno')
    Left = 640
    Top = 664
  end
  object sp_InqLevelOne: TFDStoredProc
    UpdateOptions.UpdateTableName = 'dbo.InternalOrderHead'
    UpdateOptions.KeyFields = 'OrderNo'
    StoredProcName = 'dbo.vis_InqLevelOne'
    Left = 432
    Top = 520
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_InqLevelOneOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_InqLevelOneObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_InqLevelOneDef_StartETDYearWeek: TIntegerField
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      ProviderFlags = []
      Size = 80
    end
    object sp_InqLevelOneInternDestination: TStringField
      FieldName = 'InternDestination'
      Origin = 'InternDestination'
      ProviderFlags = []
      Size = 50
    end
    object sp_InqLevelOneLaststalle: TStringField
      FieldName = 'Laststalle'
      Origin = 'Laststalle'
      ProviderFlags = []
      Size = 50
    end
    object sp_InqLevelOneDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOnePeriod: TIntegerField
      FieldName = 'Period'
      Origin = 'Period'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelOneVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
    end
    object sp_InqLevelOneKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'CustomerNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object sp_InqLevelOneMiniText: TStringField
      FieldName = 'MiniText'
      Origin = 'MiniText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object ds_InqLevelOne: TDataSource
    DataSet = sp_InqLevelOne
    Left = 432
    Top = 568
  end
  object sp_InqLevelTwo: TFDStoredProc
    UpdateOptions.UpdateTableName = 'dbo.SupplierShippingPlan'
    UpdateOptions.KeyFields = 'SupplierShipPlanObjectNo'
    UpdateObject = upd_InqLevelTwo
    StoredProcName = 'dbo.vis_InqLevelTwo'
    Left = 536
    Top = 520
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_InqLevelTwoSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_InqLevelTwoCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_InqLevelTwoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sp_InqLevelTwoDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_InqLevelTwoLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_InqLevelTwoAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sp_InqLevelTwoMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sp_InqLevelTwoFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sp_InqLevelTwoLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sp_InqLevelTwoOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoNM3ext: TFloatField
      FieldName = 'NM3ext'
      Origin = 'NM3ext'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoNM3int: TFloatField
      FieldName = 'NM3int'
      Origin = 'NM3int'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelTwoUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object sp_InqLevelTwoALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object sp_InqLevelTwoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object sp_InqLevelTwoRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
  end
  object ds_InqLevelTwo: TDataSource
    DataSet = sp_InqLevelTwo
    Left = 536
    Top = 568
  end
  object sp_InqLevelThree: TFDStoredProc
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'Index_ShowInGrid'
        Fields = 'ShowInGrid'
      end>
    IndexName = 'Index_ShowInGrid'
    UpdateOptions.UpdateTableName = 'dbo.SupplierShippingPlan'
    UpdateOptions.KeyFields = 'SupplierShipPlanObjectNo'
    StoredProcName = 'dbo.vis_InqLevelThree'
    Left = 640
    Top = 520
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
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_InqLevelThreeSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_InqLevelThreeCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeNoOfUnits: TFloatField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_InqLevelThreeLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_InqLevelThreeAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sp_InqLevelThreeMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sp_InqLevelThreeFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sp_InqLevelThreeLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeLengthSpec: TStringField
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sp_InqLevelThreeOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeNM3ext: TFloatField
      FieldName = 'NM3ext'
      Origin = 'NM3ext'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeNM3int: TFloatField
      FieldName = 'NM3int'
      Origin = 'NM3int'
      ProviderFlags = [pfInUpdate]
    end
    object sp_InqLevelThreeUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object sp_InqLevelThreeALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object sp_InqLevelThreeSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object sp_InqLevelThreeRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sp_InqLevelThreeAvailPeriod: TFloatField
      DisplayLabel = 'Tillg'#229'ng perioden'
      FieldName = 'AvailPeriod'
      Origin = 'AvailPeriod'
      ProviderFlags = []
    end
    object sp_InqLevelThreeAvailNetto: TFloatField
      DisplayLabel = 'Tillg'#229'ng totalt'
      FieldName = 'AvailNetto'
      Origin = 'AvailNetto'
      ProviderFlags = []
    end
    object sp_InqLevelThreeINQPeriod: TFloatField
      DisplayLabel = 'F'#246'rfr'#229'g. period'
      FieldName = 'INQPeriod'
      Origin = 'INQPeriod'
      ProviderFlags = []
    end
    object sp_InqLevelThreeINQTotal: TFloatField
      DisplayLabel = 'F'#246'rfr'#229'g. totalt'
      FieldName = 'INQTotal'
      Origin = 'INQTotal'
      ProviderFlags = []
    end
  end
  object ds_InqLevelThree: TDataSource
    DataSet = sp_InqLevelThree
    Left = 640
    Top = 568
  end
  object upd_InqLevelTwo: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO dbo.suppliershippingplan'
      '(suppliershipplanobjectno, custshipplandetailobjectno, '
      '  shiptype, objecttype, orderno, orderlineno, '
      '  shippingplanno, supplierno, loadinglocationno, '
      '  deliverytermsno, paymenttermsno, price, currencyno, '
      '  noofunits, priceunitno, volumeunitno, destinationno, '
      '  shippingplanstatus, startetdyearweek, endetdyearweek, '
      '  internalnote, productdescription, lengthdescription, '
      '  acceptedbysupplier, productlengthno, productgroupno, '
      '  actualm3net, shiptoinvpointno, productno, '
      '  lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, '
      '  createduser, modifieduser, datecreated, partnerno, '
      '  prodinstructno, showingrid, pcsperpkg, customerno, '
      '  customerprice, customershowingrid, lo_no, '
      '  delivery_weekno, datemodified, lengthtyp, '
      '  reference, lipno, pkgcodeppno, pricelistno, '
      '  internkundfrakt, packagewidth, packageheight, '
      '  lengthspec, orderby, nm3ext, nm3int)'
      
        'VALUES (:new_suppliershipplanobjectno, :new_custshipplandetailob' +
        'jectno, '
      
        '  :new_shiptype, :new_objecttype, :new_orderno, :new_orderlineno' +
        ', '
      '  :new_shippingplanno, :new_supplierno, :new_loadinglocationno, '
      
        '  :new_deliverytermsno, :new_paymenttermsno, :new_price, :new_cu' +
        'rrencyno, '
      
        '  :new_noofunits, :new_priceunitno, :new_volumeunitno, :new_dest' +
        'inationno, '
      
        '  :new_shippingplanstatus, :new_startetdyearweek, :new_endetdyea' +
        'rweek, '
      
        '  :new_internalnote, :new_productdescription, :new_lengthdescrip' +
        'tion, '
      
        '  :new_acceptedbysupplier, :new_productlengthno, :new_productgro' +
        'upno, '
      '  :new_actualm3net, :new_shiptoinvpointno, :new_productno, '
      '  :new_lotext, :new_minactuallengthmm, :new_maxactuallengthmm, '
      
        '  :new_packagecode, :new_freightorderbyclientno, :new_sequenceno' +
        ', '
      
        '  :new_createduser, :new_modifieduser, :new_datecreated, :new_pa' +
        'rtnerno, '
      
        '  :new_prodinstructno, :new_showingrid, :new_pcsperpkg, :new_cus' +
        'tomerno, '
      '  :new_customerprice, :new_customershowingrid, :new_lo_no, '
      '  :new_delivery_weekno, :new_datemodified, :new_lengthtyp, '
      
        '  :new_reference, :new_lipno, :new_pkgcodeppno, :new_pricelistno' +
        ', '
      '  :new_internkundfrakt, :new_packagewidth, :new_packageheight, '
      '  :new_lengthspec, :new_orderby, :new_nm3ext, :new_nm3int)')
    ModifySQL.Strings = (
      'UPDATE dbo.suppliershippingplan'
      
        'SET suppliershipplanobjectno = :new_suppliershipplanobjectno, cu' +
        'stshipplandetailobjectno = :new_custshipplandetailobjectno, '
      '  shiptype = :new_shiptype, objecttype = :new_objecttype, '
      '  orderno = :new_orderno, orderlineno = :new_orderlineno, '
      
        '  shippingplanno = :new_shippingplanno, supplierno = :new_suppli' +
        'erno, '
      
        '  loadinglocationno = :new_loadinglocationno, deliverytermsno = ' +
        ':new_deliverytermsno, '
      '  paymenttermsno = :new_paymenttermsno, price = :new_price, '
      '  currencyno = :new_currencyno, noofunits = :new_noofunits, '
      
        '  priceunitno = :new_priceunitno, volumeunitno = :new_volumeunit' +
        'no, '
      
        '  destinationno = :new_destinationno, shippingplanstatus = :new_' +
        'shippingplanstatus, '
      
        '  startetdyearweek = :new_startetdyearweek, endetdyearweek = :ne' +
        'w_endetdyearweek, '
      
        '  internalnote = :new_internalnote, productdescription = :new_pr' +
        'oductdescription, '
      
        '  lengthdescription = :new_lengthdescription, acceptedbysupplier' +
        ' = :new_acceptedbysupplier, '
      
        '  productlengthno = :new_productlengthno, productgroupno = :new_' +
        'productgroupno, '
      
        '  actualm3net = :new_actualm3net, shiptoinvpointno = :new_shipto' +
        'invpointno, '
      
        '  productno = :new_productno, lotext = :new_lotext, minactuallen' +
        'gthmm = :new_minactuallengthmm, '
      
        '  maxactuallengthmm = :new_maxactuallengthmm, packagecode = :new' +
        '_packagecode, '
      
        '  freightorderbyclientno = :new_freightorderbyclientno, sequence' +
        'no = :new_sequenceno, '
      
        '  createduser = :new_createduser, modifieduser = :new_modifiedus' +
        'er, '
      '  datecreated = :new_datecreated, partnerno = :new_partnerno, '
      
        '  prodinstructno = :new_prodinstructno, showingrid = :new_showin' +
        'grid, '
      '  pcsperpkg = :new_pcsperpkg, customerno = :new_customerno, '
      
        '  customerprice = :new_customerprice, customershowingrid = :new_' +
        'customershowingrid, '
      '  lo_no = :new_lo_no, delivery_weekno = :new_delivery_weekno, '
      '  datemodified = :new_datemodified, lengthtyp = :new_lengthtyp, '
      
        '  reference = :new_reference, lipno = :new_lipno, pkgcodeppno = ' +
        ':new_pkgcodeppno, '
      
        '  pricelistno = :new_pricelistno, internkundfrakt = :new_internk' +
        'undfrakt, '
      
        '  packagewidth = :new_packagewidth, packageheight = :new_package' +
        'height, '
      
        '  lengthspec = :new_lengthspec, orderby = :new_orderby, nm3ext =' +
        ' :new_nm3ext, '
      '  nm3int = :new_nm3int'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    DeleteSQL.Strings = (
      'DELETE FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    LockSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby, nm3ext, nm3int'
      'FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :old_suppliershipplanobjectno')
    FetchRowSQL.Strings = (
      
        'SELECT suppliershipplanobjectno, custshipplandetailobjectno, shi' +
        'ptype, '
      '  objecttype, orderno, orderlineno, shippingplanno, supplierno, '
      '  loadinglocationno, deliverytermsno, paymenttermsno, price, '
      
        '  currencyno, noofunits, priceunitno, volumeunitno, destinationn' +
        'o, '
      
        '  shippingplanstatus, startetdyearweek, endetdyearweek, internal' +
        'note, '
      '  productdescription, lengthdescription, acceptedbysupplier, '
      
        '  productlengthno, productgroupno, actualm3net, shiptoinvpointno' +
        ', '
      '  productno, lotext, minactuallengthmm, maxactuallengthmm, '
      '  packagecode, freightorderbyclientno, sequenceno, createduser, '
      
        '  modifieduser, datecreated, partnerno, prodinstructno, showingr' +
        'id, '
      '  pcsperpkg, customerno, customerprice, customershowingrid, '
      '  lo_no, delivery_weekno, datemodified, lengthtyp, reference, '
      
        '  lipno, pkgcodeppno, pricelistno, internkundfrakt, packagewidth' +
        ', '
      '  packageheight, lengthspec, orderby, nm3ext, nm3int'
      'FROM dbo.suppliershippingplan'
      'WHERE suppliershipplanobjectno = :suppliershipplanobjectno')
    Left = 536
    Top = 464
  end
  object sp_UtlastLevelOne: TFDStoredProc
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.InternalOrderHead'
    UpdateOptions.KeyFields = 'OrderNo'
    StoredProcName = 'dbo.vis_UtlevLevelOne'
    Left = 432
    Top = 344
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_UtlastLevelOneShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOnePreliminaryRequestedPeriod: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sp_UtlastLevelOneStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDef_StartETDYearWeek: TIntegerField
      DisplayLabel = 'Fom vecka'
      FieldName = 'Def_StartETDYearWeek'
      Origin = 'Def_StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDef_StartETAYearWeek: TIntegerField
      FieldName = 'Def_StartETAYearWeek'
      Origin = 'Def_StartETAYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object sp_UtlastLevelOneMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      ProviderFlags = []
      Size = 80
    end
    object sp_UtlastLevelOneInternDestination: TStringField
      FieldName = 'InternDestination'
      Origin = 'InternDestination'
      ProviderFlags = []
      Size = 50
    end
    object sp_UtlastLevelOneLaststalle: TStringField
      FieldName = 'Laststalle'
      Origin = 'Laststalle'
      ProviderFlags = []
      Size = 50
    end
    object sp_UtlastLevelOneDefaultShipToInvPointNo: TIntegerField
      FieldName = 'DefaultShipToInvPointNo'
      Origin = 'DefaultShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDef_LoadingLocationNo: TIntegerField
      FieldName = 'Def_LoadingLocationNo'
      Origin = 'Def_LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneKundreferens: TStringField
      FieldName = 'Kundreferens'
      Origin = 'Kundreferens'
      ProviderFlags = []
      Size = 30
    end
    object sp_UtlastLevelOneOrderType: TIntegerField
      DisplayLabel = 'Sortering'
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneMiniText: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'MiniText'
      Origin = 'MiniText'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object sp_UtlastLevelOneInternKund: TStringField
      FieldName = 'InternKund'
      Origin = 'InternKund'
      ProviderFlags = []
      Size = 80
    end
    object sp_UtlastLevelOneOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_UtlastLevelOneCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneOrderNoText: TStringField
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object sp_UtlastLevelOneDefaultDeliveryTermsNo: TIntegerField
      FieldName = 'DefaultDeliveryTermsNo'
      Origin = 'DefaultDeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDefaultPaymentTermsNo: TIntegerField
      FieldName = 'DefaultPaymentTermsNo'
      Origin = 'DefaultPaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDefaultCurrencyNo: TIntegerField
      FieldName = 'DefaultCurrencyNo'
      Origin = 'DefaultCurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneProductDisplayFormat: TIntegerField
      FieldName = 'ProductDisplayFormat'
      Origin = 'ProductDisplayFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDefaultVolumeUnitNo: TIntegerField
      FieldName = 'DefaultVolumeUnitNo'
      Origin = 'DefaultVolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneVoyageNo: TIntegerField
      DisplayLabel = 'LOBuffertNo'
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDefaultPriceUnitNo: TIntegerField
      FieldName = 'DefaultPriceUnitNo'
      Origin = 'DefaultPriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      Origin = 'LengthFormat'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneDefaultLIPNo: TIntegerField
      FieldName = 'DefaultLIPNo'
      Origin = 'DefaultLIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOnePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneVatExempt: TIntegerField
      FieldName = 'VatExempt'
      Origin = 'VatExempt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneAutoPkgCode: TIntegerField
      FieldName = 'AutoPkgCode'
      Origin = 'AutoPkgCode'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneMiniTextFS: TIntegerField
      FieldName = 'MiniTextFS'
      Origin = 'MiniTextFS'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneMiniTextLO: TIntegerField
      FieldName = 'MiniTextLO'
      Origin = 'MiniTextLO'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOnePeriod: TIntegerField
      FieldName = 'Period'
      Origin = 'Period'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelOneObjecttype: TIntegerField
      FieldName = 'Objecttype'
      Origin = 'Objecttype'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_UtlastLevelOne: TDataSource
    DataSet = sp_UtlastLevelOne
    Left = 432
    Top = 392
  end
  object sp_UtlastLevelTwo: TFDStoredProc
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_UtlastLevelTwo'
    Left = 536
    Top = 344
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_UtlastLevelTwoKontraktsbeskrivning: TStringField
      FieldName = 'Kontraktsbeskrivning'
      Origin = 'Kontraktsbeskrivning'
      Size = 150
    end
    object sp_UtlastLevelTwoShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
    end
    object sp_UtlastLevelTwoPreliminaryRequestedPeriod: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      Size = 30
    end
    object sp_UtlastLevelTwoRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      FixedChar = True
      Size = 3
    end
    object sp_UtlastLevelTwoShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
    end
    object sp_UtlastLevelTwoShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sp_UtlastLevelTwoProductDescription: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      FixedChar = True
      Size = 100
    end
    object sp_UtlastLevelTwoPackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      FixedChar = True
      Size = 10
    end
    object sp_UtlastLevelTwoLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      FixedChar = True
      Size = 100
    end
    object sp_UtlastLevelTwoFom_vecka: TIntegerField
      DisplayLabel = 'Fom vecka'
      FieldName = 'Fom_vecka'
      Origin = 'Fom_vecka'
      ReadOnly = True
      Required = True
    end
    object sp_UtlastLevelTwoTom_vecka: TIntegerField
      DisplayLabel = 'Tom vecka'
      FieldName = 'Tom_vecka'
      Origin = 'Tom_vecka'
      ReadOnly = True
      Required = True
    end
    object sp_UtlastLevelTwoNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
    end
    object sp_UtlastLevelTwoSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      Required = True
    end
    object sp_UtlastLevelTwoShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
    end
    object sp_UtlastLevelTwoOrderNoText: TStringField
      DisplayLabel = 'Ordernr'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
    end
    object sp_UtlastLevelTwoUnitName: TStringField
      DisplayLabel = 'Enhet'
      FieldName = 'UnitName'
      Origin = 'UnitName'
      Required = True
      Size = 10
    end
    object sp_UtlastLevelTwoSlutDestination: TStringField
      DisplayLabel = 'Slutdestination'
      FieldName = 'SlutDestination'
      Origin = 'SlutDestination'
      Size = 50
    end
    object sp_UtlastLevelTwoKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      Size = 80
    end
    object sp_UtlastLevelTwoMarknad: TStringField
      FieldName = 'Marknad'
      Origin = 'Marknad'
      ReadOnly = True
      Size = 10
    end
    object sp_UtlastLevelTwoMarketNo: TIntegerField
      FieldName = 'MarketNo'
      Origin = 'MarketNo'
      ReadOnly = True
    end
    object sp_UtlastLevelTwoReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
    object sp_UtlastLevelTwoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sp_UtlastLevelTwoCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
    object sp_UtlastLevelTwoInternCustomerNo: TIntegerField
      FieldName = 'InternCustomerNo'
      Origin = 'InternCustomerNo'
    end
    object sp_UtlastLevelTwoCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
    end
    object sp_UtlastLevelTwoCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
    end
    object sp_UtlastLevelTwoVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sp_UtlastLevelTwoInternKund: TStringField
      FieldName = 'InternKund'
      Origin = 'InternKund'
      Size = 80
    end
    object sp_UtlastLevelTwoObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
    end
    object sp_UtlastLevelTwoKontraktstyp: TIntegerField
      FieldName = 'Kontraktstyp'
      Origin = 'Kontraktstyp'
      ReadOnly = True
      Required = True
    end
    object sp_UtlastLevelTwoInternDestination: TStringField
      FieldName = 'InternDestination'
      Origin = 'InternDestination'
      Size = 50
    end
    object sp_UtlastLevelTwoLaststalle: TStringField
      DisplayLabel = 'Lastst'#228'lle'
      FieldName = 'Laststalle'
      Origin = 'Laststalle'
      Size = 50
    end
    object sp_UtlastLevelTwoDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
    end
    object sp_UtlastLevelTwoShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
    end
    object sp_UtlastLevelTwoLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
    object sp_UtlastLevelTwoBarCode: TStringField
      FieldName = 'BarCode'
      Origin = 'BarCode'
      FixedChar = True
    end
    object sp_UtlastLevelTwoKundreferens: TStringField
      FieldName = 'Kundreferens'
      Origin = 'Kundreferens'
      Size = 30
    end
    object sp_UtlastLevelTwoDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sp_UtlastLevelTwoNT: TFloatField
      FieldName = 'NT'
      Origin = 'NT'
    end
    object sp_UtlastLevelTwoNB: TFloatField
      FieldName = 'NB'
      Origin = 'NB'
    end
    object sp_UtlastLevelTwoAT: TFloatField
      FieldName = 'AT'
      Origin = '[AT]'
    end
    object sp_UtlastLevelTwoAB: TFloatField
      FieldName = 'AB'
      Origin = 'AB'
    end
    object sp_UtlastLevelTwoTT: TStringField
      FieldName = 'TT'
      Origin = 'TT'
    end
    object sp_UtlastLevelTwoTB: TStringField
      FieldName = 'TB'
      Origin = 'TB'
    end
    object sp_UtlastLevelTwoTS: TStringField
      FieldName = 'TS'
      Origin = 'TS'
      Required = True
      Size = 30
    end
    object sp_UtlastLevelTwoUT: TStringField
      FieldName = 'UT'
      Origin = 'UT'
      Required = True
      Size = 30
    end
    object sp_UtlastLevelTwoKV: TStringField
      FieldName = 'KV'
      Origin = 'KV'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sp_UtlastLevelTwoPK: TStringField
      FieldName = 'PK'
      Origin = 'PK'
      Size = 40
    end
    object sp_UtlastLevelTwoINTLNGD: TStringField
      FieldName = 'INTL'#196'NGD'
      Origin = '[INTL'#196'NGD]'
    end
    object sp_UtlastLevelTwoRadreferens: TStringField
      FieldName = 'Radreferens'
      Origin = 'Radreferens'
      Size = 50
    end
    object sp_UtlastLevelTwoPris: TStringField
      FieldName = 'Pris'
      Origin = 'Pris'
      ReadOnly = True
      Size = 32
    end
    object sp_UtlastLevelTwoProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
    end
    object sp_UtlastLevelTwoPcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
    end
    object sp_UtlastLevelTwoPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object sp_UtlastLevelTwoPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object sp_UtlastLevelTwoPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
    end
    object sp_UtlastLevelTwoProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
    end
    object sp_UtlastLevelTwoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
    end
    object sp_UtlastLevelTwoProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
    end
    object sp_UtlastLevelTwoLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object sp_UtlastLevelTwoALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object sp_UtlastLevelTwoSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object sp_UtlastLevelTwoOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
    end
    object sp_UtlastLevelTwoOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
    end
    object sp_UtlastLevelTwoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sp_UtlastLevelTwoAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
    end
    object sp_UtlastLevelTwoLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      Size = 15
    end
    object sp_UtlastLevelTwoNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
    end
    object sp_UtlastLevelTwoVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
    end
    object sp_UtlastLevelTwoPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
    end
    object sp_UtlastLevelTwoAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
    end
    object sp_UtlastLevelTwoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
    end
    object sp_UtlastLevelTwoOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
    end
  end
  object ds_UtlastLevelTwo: TDataSource
    DataSet = sp_UtlastLevelTwo
    Left = 536
    Top = 392
  end
  object sp_UtlastLevelThree: TFDStoredProc
    UpdateOptions.UpdateTableName = 'dbo.suppliershippingplan'
    UpdateOptions.KeyFields = 'SupplierShipPlanObjectNo'
    StoredProcName = 'dbo.vis_UtlastLevelThree'
    Left = 640
    Top = 344
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LOBuffertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_UtlastLevelThreeSupplierShipPlanObjectNo: TIntegerField
      DisplayLabel = 'Keyno'
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sp_UtlastLevelThreeCustShipPlanDetailObjectNo: TIntegerField
      FieldName = 'CustShipPlanDetailObjectNo'
      Origin = 'CustShipPlanDetailObjectNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeShipType: TIntegerField
      FieldName = 'ShipType'
      Origin = 'ShipType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeObjectType: TIntegerField
      FieldName = 'ObjectType'
      Origin = 'ObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeDeliveryTermsNo: TIntegerField
      FieldName = 'DeliveryTermsNo'
      Origin = 'DeliveryTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePrice: TFloatField
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeNoOfUnits: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePriceUnitNo: TIntegerField
      FieldName = 'PriceUnitNo'
      Origin = 'PriceUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeDestinationNo: TIntegerField
      FieldName = 'DestinationNo'
      Origin = 'DestinationNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeShippingPlanStatus: TIntegerField
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeStartETDYearWeek: TIntegerField
      FieldName = 'StartETDYearWeek'
      Origin = 'StartETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeEndETDYearWeek: TIntegerField
      FieldName = 'EndETDYearWeek'
      Origin = 'EndETDYearWeek'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeInternalNote: TStringField
      FieldName = 'InternalNote'
      Origin = 'InternalNote'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeProductDescription: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDescription'
      Origin = 'ProductDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_UtlastLevelThreeLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 100
    end
    object sp_UtlastLevelThreeAcceptedBySupplier: TIntegerField
      FieldName = 'AcceptedBySupplier'
      Origin = 'AcceptedBySupplier'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
      Origin = 'ProductGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeActualM3Net: TFloatField
      FieldName = 'ActualM3Net'
      Origin = 'ActualM3Net'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeShipToInvPointNo: TIntegerField
      FieldName = 'ShipToInvPointNo'
      Origin = 'ShipToInvPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object sp_UtlastLevelThreeMinActualLengthMM: TFloatField
      FieldName = 'MinActualLengthMM'
      Origin = 'MinActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeMaxActualLengthMM: TFloatField
      FieldName = 'MaxActualLengthMM'
      Origin = 'MaxActualLengthMM'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePackageCode: TStringField
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object sp_UtlastLevelThreeFreightOrderByClientNo: TIntegerField
      FieldName = 'FreightOrderByClientNo'
      Origin = 'FreightOrderByClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePartnerNo: TIntegerField
      FieldName = 'PartnerNo'
      Origin = 'PartnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeProdInstructNo: TIntegerField
      FieldName = 'ProdInstructNo'
      Origin = 'ProdInstructNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeShowInGrid: TIntegerField
      FieldName = 'ShowInGrid'
      Origin = 'ShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePcsPerPkg: TIntegerField
      FieldName = 'PcsPerPkg'
      Origin = 'PcsPerPkg'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeCustomerPrice: TFloatField
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeCustomerShowInGrid: TIntegerField
      FieldName = 'CustomerShowInGrid'
      Origin = 'CustomerShowInGrid'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeLO_No: TIntegerField
      FieldName = 'LO_No'
      Origin = 'LO_No'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeDelivery_WeekNo: TIntegerField
      FieldName = 'Delivery_WeekNo'
      Origin = 'Delivery_WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeLengthTyp: TStringField
      FieldName = 'LengthTyp'
      Origin = 'LengthTyp'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sp_UtlastLevelThreeLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePkgCodePPNo: TIntegerField
      DisplayLabel = 'Artikelnr'
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePriceListNo: TIntegerField
      FieldName = 'PriceListNo'
      Origin = 'PriceListNo'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeInternKundFrakt: TFloatField
      FieldName = 'InternKundFrakt'
      Origin = 'InternKundFrakt'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreePackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sp_UtlastLevelThreeOrderBy: TFloatField
      FieldName = 'OrderBy'
      Origin = 'OrderBy'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeNM3ext: TFloatField
      FieldName = 'NM3ext'
      Origin = 'NM3ext'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeNM3int: TFloatField
      FieldName = 'NM3int'
      Origin = 'NM3int'
      ProviderFlags = [pfInUpdate]
    end
    object sp_UtlastLevelThreeUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object sp_UtlastLevelThreeALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object sp_UtlastLevelThreeSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object sp_UtlastLevelThreeRegAv: TStringField
      FieldName = 'RegAv'
      Origin = 'RegAv'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object sp_UtlastLevelThreeAvailPeriod: TFloatField
      DisplayLabel = 'Period'
      FieldName = 'AvailPeriod'
      Origin = 'AvailPeriod'
      ProviderFlags = []
      ReadOnly = True
    end
    object sp_UtlastLevelThreeAvailNetto: TFloatField
      DisplayLabel = 'Netto'
      FieldName = 'AvailNetto'
      Origin = 'AvailNetto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ds_UtlastLevelThree: TDataSource
    DataSet = sp_UtlastLevelThree
    Left = 640
    Top = 392
  end
  object sp_invpiv: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    StoredProcName = 'dbo.Vis_Lager_v4'
    Left = 216
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 3
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PivotUnit'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@LanguageCode'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@AT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@AB'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@Ref'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@BL'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 10
        Name = '@Info2'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object ds_invpiv: TDataSource
    DataSet = sp_invpiv
    Left = 216
    Top = 584
  end
  object sp_invpivPkgDtl: TFDStoredProc
    OnUpdateRecord = sp_invpivPkgDtlUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateObject = upd_invpivPkgDtl
    StoredProcName = 'dbo.Vis_LagerDTL_v3'
    Left = 216
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@PivotUnit'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@ALMM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@LP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@CertNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@LanguageCode'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = '@Ref'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 11
        Name = '@BL'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 12
        Name = '@Info2'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 13
        Name = '@InventorySource'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_invpivPkgDtl: TDataSource
    DataSet = sp_invpivPkgDtl
    Left = 216
    Top = 480
  end
  object sp_invpivPkg: TFDStoredProc
    OnUpdateRecord = sp_invpivPkgUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateOptions.UpdateTableName = 'dbo.PackageNumber'
    UpdateOptions.KeyFields = 'PackageNo;SupplierCode'
    UpdateObject = upd_invpivPkg
    StoredProcName = 'dbo.Vis_LagerPKT_v1'
    Left = 320
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@LIPNo'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 3
        Name = '@OwnerNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@PivotUnit'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@AT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@AB'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Position = 7
        Name = '@Ref'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 8
        Name = '@BL'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 9
        Name = '@Info2'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object ds_invpivPkg: TDataSource
    DataSet = sp_invpivPkg
    Left = 320
    Top = 480
  end
  object upd_invpivPkg: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'VIS'
    ModifySQL.Strings = (
      'UPDATE dbo.packagenumber'
      'SET reference = :new_reference, '
      '  bl_no = :new_bl_no'
      
        'WHERE packageno = :old_packageno AND suppliercode = :old_supplie' +
        'rcode')
    DeleteSQL.Strings = (
      'DELETE FROM packagenumber'
      
        'WHERE packageno = :old_packageno AND suppliercode = :old_supplie' +
        'rcode')
    LockSQL.Strings = (
      'SELECT packageno, packagetypeno, suppliercode, reference, '
      '  bl_no'
      'FROM packagenumber'
      
        'WHERE packageno = :old_packageno AND suppliercode = :old_supplie' +
        'rcode')
    Left = 320
    Top = 376
  end
  object upd_invpivPkgDtl: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'VIS'
    InsertSQL.Strings = (
      'INSERT INTO PackageNumber'
      '(PackageNo, PackageTypeNo, SupplierCode, DateCreated, '
      '  REFERENCE, BL_NO, PkgArticleNo, Info2, '
      '  Package_Size, CertNo)'
      
        'VALUES (:NEW_PackageNo, :NEW_PackageTypeNo, :NEW_SupplierCode, :' +
        'NEW_DateCreated, '
      '  :NEW_REFERENCE, :NEW_BL_NO, :NEW_PkgArticleNo, :NEW_Info2, '
      '  :NEW_Package_Size, :NEW_CertNo)')
    ModifySQL.Strings = (
      'UPDATE PackageNumber'
      
        'SET PackageNo = :NEW_PackageNo, PackageTypeNo = :NEW_PackageType' +
        'No, '
      
        '  SupplierCode = :NEW_SupplierCode, DateCreated = :NEW_DateCreat' +
        'ed, '
      
        '  REFERENCE = :NEW_REFERENCE, BL_NO = :NEW_BL_NO, PkgArticleNo =' +
        ' :NEW_PkgArticleNo, '
      
        '  Info2 = :NEW_Info2, Package_Size = :NEW_Package_Size, CertNo =' +
        ' :NEW_CertNo'
      
        'WHERE PackageNo = :OLD_PackageNo AND SupplierCode = :OLD_Supplie' +
        'rCode')
    DeleteSQL.Strings = (
      'DELETE FROM PackageNumber'
      
        'WHERE PackageNo = :OLD_PackageNo AND SupplierCode = :OLD_Supplie' +
        'rCode')
    LockSQL.Strings = (
      
        'SELECT PackageNo, PackageTypeNo, SupplierCode, LogicalInventoryP' +
        'ointNo, '
      '  SupplierNo, Status, SequenceNo, CreatedUser, ModifiedUser, '
      '  DateCreated, Original_Price, Original_In_Date, Update_Price, '
      '  Update_Price_Date, CreatedOfPkgStr, AvgLengthType, REFERENCE, '
      '  BL_NO, PkgArticleNo, RegPointType, Info2, Package_Size, '
      '  CertNo'
      'FROM PackageNumber'
      
        'WHERE PackageNo = :OLD_PackageNo AND SupplierCode = :OLD_Supplie' +
        'rCode')
    FetchRowSQL.Strings = (
      
        'SELECT PackageNo, PackageTypeNo, SupplierCode, LogicalInventoryP' +
        'ointNo, '
      '  SupplierNo, Status, SequenceNo, CreatedUser, ModifiedUser, '
      '  DateCreated, Original_Price, Original_In_Date, Update_Price, '
      '  Update_Price_Date, CreatedOfPkgStr, AvgLengthType, REFERENCE, '
      '  BL_NO, PkgArticleNo, RegPointType, Info2, Package_Size, '
      '  CertNo'
      'FROM PackageNumber'
      'WHERE PackageNo = :PackageNo AND SupplierCode = :SupplierCode')
    Left = 216
    Top = 368
  end
  object FDStoredProc1: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_invpivPkgDtl_II'
    Left = 360
    Top = 264
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
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
        Value = 10714
      end
      item
        Position = 3
        Name = '@PivotUnit'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Position = 4
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12340
      end
      item
        Position = 5
        Name = '@ALMM'
        DataType = ftInteger
        ParamType = ptInput
        Value = 36000
      end
      item
        Position = 6
        Name = '@LP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end
      item
        Position = 7
        Name = '@RPT'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
  end
  object FDStoredProc2: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_invpivPkgDtl_v2'
    Left = 504
    Top = 280
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
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
        Value = 10714
      end
      item
        Position = 3
        Name = '@PivotUnit'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Position = 4
        Name = '@ProductNo'
        DataType = ftInteger
        ParamType = ptInput
        Value = 12340
      end
      item
        Position = 5
        Name = '@ALMM'
        DataType = ftInteger
        ParamType = ptInput
        Value = 36000
      end
      item
        Position = 6
        Name = '@LP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Position = 7
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
        Value = 11
      end
      item
        Position = 8
        Name = '@CertNo'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object sp_CngArtNoByPkgSize: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CngArtNoByPkgSize'
    Left = 1032
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
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Package_Size'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CngCert: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_CngCert'
    Left = 1032
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
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@CertNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object mtSelectedPkgNo: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'PAKETNR'
        DataType = ftInteger
      end
      item
        Name = 'LEVKOD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'STYCKPERL'#196'NGD'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'AM3'
        DataType = ftFloat
      end
      item
        Name = 'STYCK'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRERAT'
        DataType = ftTimeStamp
      end
      item
        Name = 'ProductNo'
        DataType = ftInteger
      end
      item
        Name = 'MARKERAD'
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
    BeforePost = mtSelectedPkgNoBeforePost
    Left = 912
    Top = 712
    object mtSelectedPkgNoPAKETNR: TIntegerField
      FieldName = 'PAKETNR'
    end
    object mtSelectedPkgNoLEVKOD: TStringField
      FieldName = 'LEVKOD'
      Size = 3
    end
    object mtSelectedPkgNoSTYCKPERLNGD: TStringField
      FieldName = 'STYCKPERL'#196'NGD'
      Size = 255
    end
    object mtSelectedPkgNoAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '###,###,###.000'
    end
    object mtSelectedPkgNoSTYCK: TIntegerField
      FieldName = 'STYCK'
    end
    object mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField
      FieldName = 'REGISTRERAT'
    end
    object mtSelectedPkgNoMaxlangd: TFloatField
      FieldName = 'Maxlangd'
    end
    object mtSelectedPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtSelectedPkgNoMARKERAD: TIntegerField
      FieldName = 'MARKERAD'
    end
  end
  object cds_KilnChargeRows: TFDQuery
    AfterInsert = cds_KilnChargeRowsAfterInsert
    AfterPost = cds_KilnChargeRowsAfterPost
    BeforeDelete = cds_KilnChargeRowsBeforeDelete
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_KilnChargeRowsIndexRowNo'
        Fields = 'RowNo'
      end>
    IndexName = 'cds_KilnChargeRowsIndexRowNo'
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select kcr.*, P.ProductDisplayName,'
      
        '[dbo].[vida_LengthDescription]( pt.PackageTypeNo ) AS PcsPerLeng' +
        'th'
      'FROM dbo.KilnChargeRows kcr'
      'inner join dbo.PackageNumber pn on pn.PackageNo = kcr.PackageNo'
      'and pn.SupplierCode = kcr.SupplierCode'
      
        'inner join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      'inner join dbo.Product P on P.ProductNo = pt.ProductNo'
      'WHERE KilnChargeNo = :KilnChargeNo'
      'AND VagnNo = :VagnNo'
      'Order By kcr.RowNo')
    Left = 1032
    Top = 440
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeRowsKilnChargeNo: TIntegerField
      DisplayLabel = 'Torksatsnr'
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowsPackageNo: TIntegerField
      DisplayLabel = 'Paketnr'
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeRowsSupplierCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_KilnChargeRowsNoOfPkgs: TIntegerField
      FieldName = 'NoOfPkgs'
      Origin = 'NoOfPkgs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsDateCreated: TSQLTimeStampField
      DisplayLabel = 'Inmatad'
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsCreatedUser: TIntegerField
      DisplayLabel = 'Inmatad av'
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsVagnNo: TIntegerField
      DisplayLabel = 'Vagnnr'
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsRowNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'RowNo'
      Origin = 'RowNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_KilnChargeRowsProductDisplayName: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ProviderFlags = []
      Size = 150
    end
    object cds_KilnChargeRowsPcsPerLength: TStringField
      DisplayLabel = 'St/l'#228'ngd'
      FieldName = 'PcsPerLength'
      Origin = 'PcsPerLength'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object cds_KilnChargeHdr: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select KCH.*, KP.Kiln_PIPNo, KP.[BeforeKiln_LIPNo], KP.[Kiln_LIP' +
        'No], KP.[AfterKiln_LIPNo],'
      'K.NoOfVagnar, K.NoOfVagnarBefore'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner Join dbo.KilnProps KP on KP.ClientNo = KCH.ClientNo'
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      'WHERE KilnChargeNo = :KilnChargeNo')
    Left = 1144
    Top = 544
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnChargeHdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_KilnChargeHdrKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnChargeHdrKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_KilnChargeHdrStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_KilnChargeHdrEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_KilnChargeHdrPlannedDuration: TFloatField
      FieldName = 'PlannedDuration'
      Origin = 'PlannedDuration'
    end
    object cds_KilnChargeHdrCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
    end
    object cds_KilnChargeHdrCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnChargeHdrStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_KilnChargeHdrNote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField
      FieldName = 'BeforeKiln_LIPNo'
      Origin = 'BeforeKiln_LIPNo'
    end
    object cds_KilnChargeHdrKiln_LIPNo: TIntegerField
      FieldName = 'Kiln_LIPNo'
      Origin = 'Kiln_LIPNo'
    end
    object cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField
      FieldName = 'AfterKiln_LIPNo'
      Origin = 'AfterKiln_LIPNo'
    end
    object cds_KilnChargeHdrKiln_PIPNo: TIntegerField
      FieldName = 'Kiln_PIPNo'
      Origin = 'Kiln_PIPNo'
    end
    object cds_KilnChargeHdrNoOfVagnar: TIntegerField
      FieldName = 'NoOfVagnar'
      Origin = 'NoOfVagnar'
    end
    object cds_KilnChargeHdrNoOfVagnarBefore: TIntegerField
      FieldName = 'NoOfVagnarBefore'
      Origin = 'NoOfVagnarBefore'
    end
  end
  object ds_KilnChargeRows: TDataSource
    DataSet = cds_KilnChargeRows
    Left = 1032
    Top = 488
  end
  object sq_PkgExistInInventory: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo'
      'FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      'AND LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND PN.Status = 1')
    Left = 1032
    Top = 608
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
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_PkgExistInInventoryPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_SelectProgressKiln: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select KP.KilnName + '#39' - '#39' + KCH.Info + '#39'  ['#39' + CAST(ISNULL(KCH.' +
        'KilnChargeNo,'#39'-'#39') AS varchar(6)) + '#39']'#39' AS KilnName , KCH.*, KP.*'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner Join dbo.Kilns KP on KP.KilnNo = KCH.KilnNo'
      'WHERE KP.ClientNo = :ClientNo '
      'and KP.TypeOfKiln = 2'
      
        'Order By KP.KilnName, KCH.Info, CAST(KCH.KilnChargeNo AS varchar' +
        '(6))')
    Left = 1144
    Top = 440
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SelectProgressKilnClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
    object cds_SelectProgressKilnKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SelectProgressKilnKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
    end
    object cds_SelectProgressKilnKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      ReadOnly = True
      Size = 93
    end
  end
  object cds_KilnVagn: TFDQuery
    AfterInsert = cds_KilnVagnAfterInsert
    BeforePost = cds_KilnVagnBeforePost
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.KilnVagn'
      'WHERE KilnChargeNo = :KilnChargeNo'
      'AND VagnNo = :VagnNo')
    Left = 1144
    Top = 488
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_KilnVagnKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnVagnVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_KilnVagnInDate: TSQLTimeStampField
      FieldName = 'InDate'
      Origin = 'InDate'
    end
    object cds_KilnVagnOutDate: TSQLTimeStampField
      FieldName = 'OutDate'
      Origin = 'OutDate'
    end
    object cds_KilnVagnVagnStatus: TIntegerField
      FieldName = 'VagnStatus'
      Origin = 'VagnStatus'
    end
    object cds_KilnVagnCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_KilnVagnDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object ds_KilnChargeHdr: TDataSource
    DataSet = cds_KilnChargeHdr
    Left = 1144
    Top = 600
  end
  object sc_GetProductNoByPackageNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT pt.productno'
      'FROM  dbo.PackageNumber PN'
      
        'INNER JOIN dbo.PackageType  PT ON   PT.PackageTypeNo = PN.Packag' +
        'eTypeNo'
      'WHERE     PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode'
      '')
    Left = 1168
    Top = 832
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
      end>
    object sc_GetProductNoByPackageNoproductno: TIntegerField
      FieldName = 'productno'
      Origin = 'productno'
    end
  end
  object cds_GetSistaVagnNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT     Max(kv.VagnNo) AS SistaVagnNo'
      'FROM       dbo.KilnVagn kv'
      
        'Inner join dbo.KilnChargeHdr kch on kch.KilnChargeNo = kv.KilnCh' +
        'argeNo'
      ''
      'WHERE kch.KilnNo = :KilnNo')
    Left = 1056
    Top = 784
    ParamData = <
      item
        Name = 'KILNNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetSistaVagnNoSistaVagnNo: TIntegerField
      FieldName = 'SistaVagnNo'
      Origin = 'SistaVagnNo'
      ReadOnly = True
    end
  end
  object cds_Vagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select distinct top 10 kv.VagnNo'
      'FROM dbo.KilnChargeHdr KCH'
      'inner join dbo.KilnVagn kv on kv.KilnChargeNo = kch.KilnChargeNo'
      'WHERE'
      'KCH.KilnChargeNo = :KilnChargeNo'
      'order by kv.VagnNo desc')
    Left = 1056
    Top = 832
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VagnarVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      Required = True
    end
  end
  object cds_AntalVagnarPerStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'SELECT     Count(*) AS AntalVagnar'
      'FROM       dbo.KilnVagn kv'
      
        'Inner join dbo.KilnChargeHdr kch on kch.KilnChargeNo = kv.KilnCh' +
        'argeNo'
      ''
      'WHERE kch.KilnChargeNo = :KilnChargeNo'
      'and kv.VagnStatus = :VagnStatus')
    Left = 928
    Top = 832
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AntalVagnarPerStatusAntalVagnar: TIntegerField
      FieldName = 'AntalVagnar'
      Origin = 'AntalVagnar'
      ReadOnly = True
    end
  end
  object cds_GetAntalVagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select K.[ClientNo]'
      '      ,K.[KilnNo]'
      '      ,K.[KilnName]'
      '      ,K.[NoOfVagnar]'
      '      ,K.[NoOfVagnarBefore]'
      'FROM dbo.KilnChargeHdr KCH'
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      '  WHERE KCH.KilnChargeNo = :KilnChargeNo ')
    Left = 928
    Top = 784
    ParamData = <
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetAntalVagnarClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAntalVagnarKilnNo: TIntegerField
      FieldName = 'KilnNo'
      Origin = 'KilnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_GetAntalVagnarKilnName: TStringField
      FieldName = 'KilnName'
      Origin = 'KilnName'
      Size = 30
    end
    object cds_GetAntalVagnarNoOfVagnar: TIntegerField
      FieldName = 'NoOfVagnar'
      Origin = 'NoOfVagnar'
    end
  end
  object cds_KilnVagnar: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'Select distinct '#39'Radnr '#39' + CAST(kcr.RowNo AS Varchar(2)) AS Rad,' +
        ' kcr.RowNo'
      ',CAST('#39#39' AS VARCHAR(30)) AS L1'
      ',CAST('#39#39' AS VARCHAR(30)) AS L2'
      ',CAST('#39#39' AS VARCHAR(30)) AS L3'
      ',CAST('#39#39' AS VARCHAR(30)) AS L4'
      ',CAST('#39#39' AS VARCHAR(30)) AS L5'
      ',CAST('#39#39' AS VARCHAR(30)) AS L6'
      ',CAST('#39#39' AS VARCHAR(30)) AS L7'
      ',CAST('#39#39' AS VARCHAR(30)) AS L8'
      ',CAST('#39#39' AS VARCHAR(30)) AS L9'
      ',CAST('#39#39' AS VARCHAR(30)) AS L10'
      ',CAST('#39#39' AS VARCHAR(30)) AS L11'
      ',CAST('#39#39' AS VARCHAR(30)) AS L12'
      ',CAST('#39#39' AS VARCHAR(30)) AS L13'
      ',CAST('#39#39' AS VARCHAR(30)) AS L14'
      ',CAST('#39#39' AS VARCHAR(30)) AS L15'
      ',CAST('#39#39' AS VARCHAR(30)) AS L16'
      ',CAST('#39#39' AS VARCHAR(30)) AS L17'
      ',CAST('#39#39' AS VARCHAR(30)) AS L18'
      ',CAST('#39#39' AS VARCHAR(30)) AS L19'
      ',CAST('#39#39' AS VARCHAR(30)) AS L20'
      ',CAST('#39#39' AS VARCHAR(30)) AS L21'
      ',CAST('#39#39' AS VARCHAR(30)) AS L22'
      ',CAST('#39#39' AS VARCHAR(30)) AS L23'
      ',CAST('#39#39' AS VARCHAR(30)) AS L24'
      ',CAST('#39#39' AS VARCHAR(30)) AS L25'
      ',CAST('#39#39' AS VARCHAR(30)) AS L26'
      ',CAST('#39#39' AS VARCHAR(30)) AS L27'
      ',CAST('#39#39' AS VARCHAR(30)) AS L28'
      ',CAST('#39#39' AS VARCHAR(30)) AS L29'
      ',CAST('#39#39' AS VARCHAR(30)) AS L30'
      ',CAST('#39#39' AS VARCHAR(30)) AS L31'
      ',CAST('#39#39' AS VARCHAR(30)) AS L32'
      ',CAST('#39#39' AS VARCHAR(30)) AS L33'
      ',CAST('#39#39' AS VARCHAR(30)) AS L34'
      ',CAST('#39#39' AS VARCHAR(30)) AS L35'
      ',CAST('#39#39' AS VARCHAR(30)) AS L36'
      ',CAST('#39#39' AS VARCHAR(30)) AS L37'
      ',CAST('#39#39' AS VARCHAR(30)) AS L38'
      ',CAST('#39#39' AS VARCHAR(30)) AS L39'
      ',CAST('#39#39' AS VARCHAR(30)) AS L40'
      ',CAST('#39#39' AS VARCHAR(30)) AS L41'
      ',CAST('#39#39' AS VARCHAR(30)) AS L42'
      ',CAST('#39#39' AS VARCHAR(30)) AS L43'
      ',CAST('#39#39' AS VARCHAR(30)) AS L44'
      ',CAST('#39#39' AS VARCHAR(30)) AS L45'
      ''
      'FROM  dbo.KilnChargeHdr KCH'
      ''
      'Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo'
      
        'Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.Kiln' +
        'ChargeNo'
      'inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno'
      'and pn.SupplierCode = kcr.SupplierCode'
      ''
      'inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo'
      'and kv.VagnNo = kcr.VagnNo'
      ''
      
        'Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTy' +
        'peNo'
      
        'inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn' +
        '.PackageTypeNo'
      ''
      ''
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      ''
      
        'Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.Product' +
        'GroupNo'
      ''
      ''
      'WHERE'
      'KCH.KilnChargeNo = 35'
      'AND pn.PackageNo IS NOT NULL'
      ''
      'GROUP BY kcr.RowNo'
      ''
      'order by kcr.RowNo desc')
    Left = 808
    Top = 784
    object cds_KilnVagnarRad: TStringField
      FieldName = 'Rad'
      Origin = 'Rad'
      ReadOnly = True
      Size = 8
    end
    object cds_KilnVagnarRowNo: TIntegerField
      FieldName = 'RowNo'
      Origin = 'RowNo'
    end
    object cds_KilnVagnarL1: TStringField
      FieldName = 'L1'
      Origin = 'L1'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL2: TStringField
      FieldName = 'L2'
      Origin = 'L2'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL3: TStringField
      FieldName = 'L3'
      Origin = 'L3'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL4: TStringField
      FieldName = 'L4'
      Origin = 'L4'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL5: TStringField
      FieldName = 'L5'
      Origin = 'L5'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL6: TStringField
      FieldName = 'L6'
      Origin = 'L6'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL7: TStringField
      FieldName = 'L7'
      Origin = 'L7'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL8: TStringField
      FieldName = 'L8'
      Origin = 'L8'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL9: TStringField
      FieldName = 'L9'
      Origin = 'L9'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL10: TStringField
      FieldName = 'L10'
      Origin = 'L10'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL11: TStringField
      FieldName = 'L11'
      Origin = 'L11'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL12: TStringField
      FieldName = 'L12'
      Origin = 'L12'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL13: TStringField
      FieldName = 'L13'
      Origin = 'L13'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL14: TStringField
      FieldName = 'L14'
      Origin = 'L14'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL15: TStringField
      FieldName = 'L15'
      Origin = 'L15'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL16: TStringField
      FieldName = 'L16'
      Origin = 'L16'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL17: TStringField
      FieldName = 'L17'
      Origin = 'L17'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL18: TStringField
      FieldName = 'L18'
      Origin = 'L18'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL19: TStringField
      FieldName = 'L19'
      Origin = 'L19'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL20: TStringField
      FieldName = 'L20'
      Origin = 'L20'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL21: TStringField
      FieldName = 'L21'
      Origin = 'L21'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL22: TStringField
      FieldName = 'L22'
      Origin = 'L22'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL23: TStringField
      FieldName = 'L23'
      Origin = 'L23'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL24: TStringField
      FieldName = 'L24'
      Origin = 'L24'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL25: TStringField
      FieldName = 'L25'
      Origin = 'L25'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL26: TStringField
      FieldName = 'L26'
      Origin = 'L26'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL27: TStringField
      FieldName = 'L27'
      Origin = 'L27'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL28: TStringField
      FieldName = 'L28'
      Origin = 'L28'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL29: TStringField
      FieldName = 'L29'
      Origin = 'L29'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL30: TStringField
      FieldName = 'L30'
      Origin = 'L30'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL31: TStringField
      FieldName = 'L31'
      Origin = 'L31'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL32: TStringField
      FieldName = 'L32'
      Origin = 'L32'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL33: TStringField
      FieldName = 'L33'
      Origin = 'L33'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL34: TStringField
      FieldName = 'L34'
      Origin = 'L34'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL35: TStringField
      FieldName = 'L35'
      Origin = 'L35'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL36: TStringField
      FieldName = 'L36'
      Origin = 'L36'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL37: TStringField
      FieldName = 'L37'
      Origin = 'L37'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL38: TStringField
      FieldName = 'L38'
      Origin = 'L38'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL39: TStringField
      FieldName = 'L39'
      Origin = 'L39'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL40: TStringField
      FieldName = 'L40'
      Origin = 'L40'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL41: TStringField
      FieldName = 'L41'
      Origin = 'L41'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL42: TStringField
      FieldName = 'L42'
      Origin = 'L42'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL43: TStringField
      FieldName = 'L43'
      Origin = 'L43'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL44: TStringField
      FieldName = 'L44'
      Origin = 'L44'
      ReadOnly = True
      Size = 30
    end
    object cds_KilnVagnarL45: TStringField
      FieldName = 'L45'
      Origin = 'L45'
      ReadOnly = True
      Size = 30
    end
  end
  object ds_KilnVagnar: TDataSource
    DataSet = cds_KilnVagnar
    Left = 808
    Top = 840
  end
  object sp_MoveVagn: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MoveVagn'
    Left = 688
    Top = 848
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@KilnChargeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@VagnNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@MoveToLIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@NewVagnStatus'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_VagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.KilnVagn'
      'WHERE VagnNo = :VagnNo'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1138
    Top = 360
    ParamData = <
      item
        Name = 'VAGNNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_VagnStatusKilnChargeNo: TIntegerField
      FieldName = 'KilnChargeNo'
      Origin = 'KilnChargeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_VagnStatusInDate: TSQLTimeStampField
      FieldName = 'InDate'
      Origin = 'InDate'
    end
    object cds_VagnStatusOutDate: TSQLTimeStampField
      FieldName = 'OutDate'
      Origin = 'OutDate'
    end
    object cds_VagnStatusVagnStatus: TIntegerField
      FieldName = 'VagnStatus'
      Origin = 'VagnStatus'
    end
    object cds_VagnStatusDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_VagnStatusCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
  end
  object cds_GetFirstVagnNoPerVagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select MAX(kv.VagnNo) AS VagnNo FROM dbo.KilnVagn kv'
      'WHERE kv.VagnStatus = :VagnStatus'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1141
    Top = 304
    ParamData = <
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetFirstVagnNoPerVagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object cds_GetLastVagnNoPerVagnStatus: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select MIN(kv.VagnNo) AS VagnNo FROM dbo.KilnVagn kv'
      'WHERE kv.VagnStatus = :VagnStatus'
      'AND KilnChargeNo = :KilnChargeNo')
    Left = 1141
    Top = 248
    ParamData = <
      item
        Name = 'VAGNSTATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'KILNCHARGENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_GetLastVagnNoPerVagnStatusVagnNo: TIntegerField
      FieldName = 'VagnNo'
      Origin = 'VagnNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object sp_MovePackage: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_MovePackage'
    Left = 1048
    Top = 896
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@NewLocation'
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SupplierCode'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 6
        Name = '@KilnChargeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PkgExistInLIP: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PkgExistInLIP'
    Left = 1160
    Top = 24
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
        Name = '@PackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@LIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
