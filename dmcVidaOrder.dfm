object dmcOrder: TdmcOrder
  Height = 739
  Width = 1224
  PixelsPerInch = 96
  object dsrcSawmillLoadOrders: TDataSource
    DataSet = cdsSawmillLoadOrders
    OnDataChange = dsrcSawmillLoadOrdersDataChange
    Left = 56
    Top = 80
  end
  object dsrcLoadsForLO: TDataSource
    DataSet = cdsLoadsForLO
    Left = 320
    Top = 80
  end
  object dsrcBooking: TDataSource
    DataSet = cdsBooking
    Left = 168
    Top = 80
  end
  object ds_PPNo: TDataSource
    DataSet = cds_PPNo
    Left = 242
    Top = 80
  end
  object ds_ELOLengths: TDataSource
    DataSet = cds_ELOLengths
    Left = 1040
    Top = 72
  end
  object ds_ELOLayout: TDataSource
    DataSet = cds_ELOLayout
    Left = 384
    Top = 256
  end
  object ds_LOLengths: TDataSource
    DataSet = cds_LOLengths
    Left = 680
    Top = 72
  end
  object ds_OLLayout: TDataSource
    DataSet = cds_OLLayout
    Left = 504
    Top = 257
  end
  object ds_PI_ELO: TDataSource
    DataSet = cds_PI_ELO
    Left = 184
    Top = 264
  end
  object mtProduct: TkbmMemTable
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
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 75
    Top = 336
    object mtProductProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object mtProductGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
    end
    object mtProductBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
    end
    object mtProductTotalPcs: TIntegerField
      FieldName = 'TotalPcs'
    end
    object mtProductProductGroupNo: TIntegerField
      FieldName = 'ProductGroupNo'
    end
    object mtProductAT: TFloatField
      FieldName = 'AT'
    end
    object mtProductAB: TFloatField
      FieldName = 'AB'
    end
    object mtProductSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object mtProductSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object mtProductGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object mtProductNT: TFloatField
      FieldName = 'NT'
    end
    object mtProductNB: TFloatField
      FieldName = 'NB'
    end
    object mtProductProductCategoryNo: TIntegerField
      FieldName = 'ProductCategoryNo'
    end
    object mtProductMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
    end
    object mtProductTagNo: TIntegerField
      FieldName = 'TagNo'
    end
    object mtProductActive: TIntegerField
      FieldName = 'Active'
    end
    object mtProductSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
    end
    object mtProductLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
    end
    object mtProductVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
    end
    object mtProductLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
    end
    object mtProductALMM: TFloatField
      FieldName = 'ALMM'
    end
  end
  object mtPkgLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end
      item
        Name = 'Pieces'
        DataType = ftInteger
      end
      item
        Name = 'PackageCodeNo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PackageMainCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LengthDescription'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    AfterInsert = mtPkgLengthsAfterInsert
    Left = 75
    Top = 392
    object mtPkgLengthsProductLengthNo: TIntegerField
      DisplayLabel = 'PLNR'
      FieldName = 'ProductLengthNo'
    end
    object mtPkgLengthsPieces: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pieces'
    end
    object mtPkgLengthsPackageCodeNo: TStringField
      DisplayLabel = 'Kortakoden'
      FieldName = 'PackageCodeNo'
      Size = 40
    end
    object mtPkgLengthsPackageMainCode: TStringField
      DisplayLabel = 'Externakoden'
      FieldName = 'PackageMainCode'
    end
    object mtPkgLengthsLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbesk.'
      FieldName = 'LengthDescription'
      Size = 100
    end
    object mtPkgLengthsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object mtPkgLengthsALMM: TFloatField
      FieldName = 'ALMM'
    end
    object mtPkgLengthsNLMM: TFloatField
      FieldName = 'NLMM'
    end
    object mtPkgLengthsPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
    end
    object mtPkgLengthsStatus: TIntegerField
      FieldName = 'Status'
    end
    object mtPkgLengthsProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
    end
    object mtPkgLengthsFOT: TFloatField
      FieldName = 'FOT'
    end
    object mtPkgLengthsTUM: TStringField
      FieldName = 'TUM'
      Size = 15
    end
  end
  object ds_ZeroGroup: TDataSource
    DataSet = cds_ZeroGroup
    Left = 779
    Top = 72
  end
  object ds_PkgCodeO: TDataSource
    DataSet = cds_PkgCodeO
    Left = 603
    Top = 256
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
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.95.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 536
    Top = 480
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
    object mtPropsLengthGrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'LengthGrupp'
      LookupDataSet = dmsSystem.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'LengthGroupNo'
      Lookup = True
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 536
    Top = 528
  end
  object ds_LOListHH: TDataSource
    DataSet = cds_LOListHH
    Left = 712
    Top = 304
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    Left = 72
    Top = 584
  end
  object cdsSawmillLoadOrders: TFDQuery
    BeforePost = cdsSawmillLoadOrdersBeforePost
    BeforeScroll = cdsSawmillLoadOrdersBeforeScroll
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cdsSawmillLoadOrdersLONo'
        Fields = 'LONumber'
      end
      item
        Active = True
        Name = 'indexSupplierShipPlanObjectNo'
        Fields = 'SupplierShipPlanObjectNo'
      end>
    IndexName = 'cdsSawmillLoadOrdersLONo'
    OnUpdateRecord = cdsSawmillLoadOrdersUpdateRecord
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvDirectExecute]
    ResourceOptions.CmdExecMode = amCancelDialog
    UpdateOptions.UpdateTableName = 'dbo.SupplierShippingPlan'
    UpdateObject = upd_LO
    SQL.Strings = (
      ''
      
        'SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING,' +
        ' bk.ShippersShipDate,'
      'bk.PreliminaryRequestedPeriod AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,                           -- Integer'
      'isnull(SP.Lagerkod,1) as Lagerkod,'
      'SP.ShippingPlanNo           AS LONumber,         -- Integer'
      'SP.PackageCode              AS PackageCode,          -- Char 10'
      'SP.ProductDescription       AS Product,          -- Char 100'
      'SP.LengthDescription        AS Length,           -- Char 100'
      
        'IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- I' +
        'nteger'
      
        'IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- I' +
        'nteger'
      'SP.NoOfUnits                AS Volume,           -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      
        'Od.OrderNoText              AS OrderNoText,          -- VarChar ' +
        '20'
      'UN.VolumeUnitName           AS UnitName,         -- VarChar 10'
      'Cy.CityName                 AS Destination,      -- VarChar 50'
      
        'CL.ClientName               AS ClientName,       -- LARS VarChar' +
        ' 80'
      'mr.MarketRegionName         AS MARKNAD,'
      'CSD.Reference               AS Reference,       -- LARS'
      'SP.SupplierNo               AS Supplier,        -- Integer'
      'CH.CustomerNo               AS CHCustomerNo,    -- Integer'
      'SP.CustomerNo               AS SPCustomerNO,    -- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      'CASE WHEN OD.OrderType = 1 then 1'#9'ELSE 0'#9'END AS ORDERTYPE,'
      'ShipTo.CityName                 AS SHIPTO,      -- VarChar 50'
      'Loading.CityName                 AS LOADING,'
      'IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,'
      
        'CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingL' +
        'ocationNo,'
      'BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,'
      
        'pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, ' +
        'pli.KV, pli.PK, SP.lengthtyp AS INTL'#196'NGD, SP.Reference AS RADREF' +
        'ERENS,'
      'Case WHEN SP.Price > 0 then Cast((SP.Price'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      'AS Varchar(30))+'#39'kr'#39' Else'
      'Case'
      
        'WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.Pri' +
        'ceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else'
      'Case'
      'WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      'AS Varchar(30)) +'#39'kr'#39' else'
      
        'Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), o' +
        'l.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )'
      'END END END END AS Pris,'
      ''
      
        'SP.ProductGroupNo, '#39'******************************'#39'            A' +
        'S  PriceListName,'
      ''
      ''
      
        'SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo,' +
        ' PIS.ProdInstruNo,'
      
        'sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCod' +
        'e, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.' +
        'OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp' +
        ', SP.LengthSpec AS L'#228'ngd, Vg.ETD, Vg.ETA,'
      
        'SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroup' +
        'No, LOB.LOBuffertName,'
      '(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo))' +
        ' AS LoadedPkgs,'
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ' +
        ') AS LoadedNM3,'
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ' +
        ') AS LoadedAM3,'
      '(Select SUM(SOR.NoOfUnits)'
      'FROM dbo.SortingOrderRow SOR'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,'
      '(Select SUM(SOR.PlannedAM3)'
      'FROM dbo.SortingOrderRow SOR'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,'
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo =' +
        ' SOR.SortingOrderNo'
      #9#9#9#9#9#9#9#9#9#9'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,'
      '(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo =' +
        ' SOR.SortingOrderNo'
      #9#9#9#9#9#9#9#9#9#9'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,'
      'SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,'
      'SP.InternalNote AS Produktnotering,'
      ''
      '(Select TOP 1 L.SenderLoadStatus FROM dbo.Loads L'
      'Inner join dbo.LoadShippingPlan LS on LS.LoadNo = L.LoadNo'
      'WHERE'
      'LS.ShippingPlanNo = SP.ShippingPlanNo'
      'AND L.SupplierNo = SP.SupplierNo'
      'Order by L.SenderLoadStatus desc) AS LoadStatus,'
      ''
      '(Select Count(L.LoadNo) FROM dbo.Loads L'
      'inner join dbo.Loaddetail ld on ld.LoadNo = L.LoadNo'
      'WHERE'
      'ld.Defsspno = SP.SupplierShipPlanObjectNo) AS NoOfLoads'
      ''
      ''
      'FROM dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLoc' +
        'ationNo       = CLL.PhyInvPointNameNo'
      'inner join dbo.LOs LO on LO.LONo = SP.ShippingPlanNo'
      
        'Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.' +
        'Delivery_WeekNo'
      
        'LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Si' +
        'ze and ps.LanguageCode = 1'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInve' +
        'ntoryPointNo = SP.LIPNo'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.Produ' +
        'ctLengthNo'
      'INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo'
      'Left Outer Join dbo.Users USR'#9#9#9'ON USR.UserID = SP.ModifiedUser'
      'INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo'
      'AND OL.OrderLineNo = SP.OrderLineNo'
      
        'Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templaten' +
        'o = ol.PriceListNo'
      
        'Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templaten' +
        'o = sp.PriceListNo'
      
        'INNER JOIN dbo.Client                     SUPP   ON  SUPP.Client' +
        'No            = SP.SupplierNo            -- LARS'
      
        'INNER JOIN dbo.Client                     CUST   ON  CUST.Client' +
        'No            = SP.CustomerNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.CITY                     Shipto         ON S' +
        'hipTo.CityNo '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Loading         ON ' +
        'Loading.CityNo '#9'           = SP.LoadingLocationNo'
      
        'LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.Order' +
        'No                 = Od.OrderNo'
      
        'INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPl' +
        'anNo          = CH.ShippingPlanNo      -- LARS'
      
        'INNER JOIN dbo.Client                     CL   ON  CH.CustomerNo' +
        '              = CL.ClientNo            -- LARS'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.Ma' +
        'rketRegionNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShip' +
        'PlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS'
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
      
        'left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.' +
        'VoyageNo'
      'Left Outer Join dbo.ProdInstru PIS'
      'Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID'
      'ON PIS.ProdInstruNo = SP.ProdInstructNo'
      'WHERE  CLL.ClientNo = 25'
      'AND LO.UserID = 8'
      'AND CH.ShippingPlanStatus <> 3'
      'AND SP.ShippingPlanStatus <> 0'
      'AND SP.ObjectType = 2'
      'AND OD.OrderType in (0,3)'
      'AND SP.ShippingPlanNo > 1'
      'AND SP.LoadingLocationNo = 193'
      '  AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8'
      ''
      'UNION'
      
        'SELECT distinct '#39'NA'#39' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDat' +
        'e,'
      'bk.PreliminaryRequestedPeriod AS READYDATE,'
      'USR.INITIALS,'
      'SP.ShippingPlanStatus,                           -- Integer'
      'isnull(SP.Lagerkod,1) as Lagerkod,'
      'SP.ShippingPlanNo           AS LONumber,         -- Integer'
      'SP.PackageCode              AS PackageCode,      -- Char 10'
      'SP.ProductDescription       AS Product,          -- Char 100'
      'SP.LengthDescription        AS Length,           -- Char 100'
      
        'IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- I' +
        'nteger'
      
        'IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- I' +
        'nteger'
      'SP.NoOfUnits                AS Volume,           -- Float'
      'SP.SupplierShipPlanObjectNo,                     -- Integer'
      'SP.ShowInGrid,                                   -- SmallInt'
      #39#39'           AS OrderNo,          -- VarChar 20'
      'UN.VolumeUnitName           AS UnitName,         -- VarChar 10'
      #39#39'              AS Destination,      -- VarChar 50'
      'CL.ClientName               AS ClientName,'
      'mr.MarketRegionName         AS MARKNAD,'
      #39#39'              AS Reference,       -- LARS'
      'SP.SupplierNo               AS Supplier,        -- Integer'
      'CH.CustomerNo               AS CHCustomerNo,'
      'SP.CustomerNo               AS SPCustomerNO,    -- Integer'
      'SP.CustomerPrice,                               -- Float'
      'SP.CustomerShowInGrid,                           -- SmallInt'
      'SUPP.ClientName'#9#9#9#9'AS SUPP_NAME,'
      'CUST.ClientName'#9#9#9#9'AS LOCAL_CUST,'
      'SP.ObjectType,                                  -- Integer'
      '0 AS ORDERTYPE,'
      'ShipTo.CityName                 AS SHIPTO,      -- VarChar 50'
      'Loading.CityName                 AS LOADING,'
      'ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,'
      '-1 AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,'
      'BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,'
      
        'pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, ' +
        'pli.KV, pli.PK, SP.lengthtyp AS INTL'#196'NGD, SP.Reference AS RADREF' +
        'ERENS,'
      'Case WHEN SP.Price > 0 then Cast((SP.Price'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      'AS Varchar(30))+'#39'kr'#39' Else'
      'Case'
      
        'WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.Pri' +
        'ceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else'
      'Case'
      'WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice'
      
        '+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BET' +
        'WEEN vwc.Fom AND vwc.Tom),0.0))'
      'AS Varchar(30)) +'#39'kr'#39' else'
      
        'Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), o' +
        'l.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )'
      'END END END END AS Pris,'
      ''
      
        'SP.ProductGroupNo, '#39'******************************'#39'            A' +
        'S  PriceListName,'
      ''
      ''
      
        'SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo,' +
        ' PIS.ProdInstruNo,'
      
        'sp.ProductNo, sp.ProductLengthNo, 1 AS LanguageCode, PL.ActualLe' +
        'ngthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.Mo' +
        'difiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpe' +
        'c AS L'#228'ngd, Vg.ETD, Vg.ETA,'
      
        'SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroup' +
        'No, LOB.LOBuffertName,'
      '(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo))' +
        ' AS LoadedPkgs,'
      '(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ' +
        ') AS LoadedNM3,'
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2'
      
        'INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPl' +
        'anObjectNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTy' +
        'peNo'
      'WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo'
      'AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)'
      
        'OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ' +
        ') AS LoadedAM3,'
      '(Select SUM(SOR.NoOfUnits)'
      'FROM dbo.SortingOrderRow SOR'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,'
      '(Select SUM(SOR.PlannedAM3)'
      'FROM dbo.SortingOrderRow SOR'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,'
      '(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo =' +
        ' SOR.SortingOrderNo'
      #9#9#9#9#9#9#9#9#9#9'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.Package' +
        'TypeNo'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,'
      '(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR'
      
        'Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo =' +
        ' SOR.SortingOrderNo'
      #9#9#9#9#9#9#9#9#9#9'AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo'
      'WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,'
      'SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,'
      'SP.InternalNote AS Produktnotering,'
      ''
      '(Select TOP 1 L.SenderLoadStatus FROM dbo.Loads L'
      'Inner join dbo.LoadShippingPlan LS on LS.LoadNo = L.LoadNo'
      'WHERE'
      'LS.ShippingPlanNo = SP.ShippingPlanNo'
      'AND L.SupplierNo = SP.SupplierNo'
      'Order by L.SenderLoadStatus desc) AS LoadStatus,'
      ''
      '(Select Count(L.LoadNo) FROM dbo.Loads L'
      'inner join dbo.Loaddetail ld on ld.LoadNo = L.LoadNo'
      'WHERE'
      'ld.Defsspno = SP.SupplierShipPlanObjectNo) AS NoOfLoads'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLoc' +
        'ationNo       = CLL.PhyInvPointNameNo'
      'inner join dbo.LOs LO on LO.LONo = SP.ShippingPlanNo'
      
        'Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.' +
        'Delivery_WeekNo'
      
        'LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Si' +
        'ze and ps.LanguageCode = 1'
      
        'LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderN' +
        'o'
      'AND OL.OrderLineNo = SP.OrderLineNo'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInve' +
        'ntoryPointNo = SP.LIPNo'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.Produ' +
        'ctLengthNo'
      
        'Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templaten' +
        'o = sp.PriceListNo'
      'INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo'
      'LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH'
      
        'Inner JOIN dbo.Client                     CL   ON  CL.ClientNo =' +
        ' CH.CustomerNo'
      
        'LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.Ma' +
        'rketRegionNo'
      'ON  CH.ShippingPlanNo          = SP.LO_No'
      '  AND CH.ShippingPlanStatus <> 3'
      'Left Outer Join dbo.Users USR'#9#9#9'ON USR.UserID = SP.ModifiedUser'
      
        'INNER JOIN dbo.Client                     SUPP   ON  SUPP.Client' +
        'No            = SP.SupplierNo'
      
        'INNER JOIN dbo.Client                     CUST   ON  CUST.Client' +
        'No            = SP.CustomerNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Shipto         ON S' +
        'hipTo.CityNo '#9'           = SP.ShipToInvPointNo'
      
        'LEFT OUTER JOIN dbo.CITY                     Loading         ON ' +
        'Loading.CityNo '#9'           = SP.LoadingLocationNo'
      
        'INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnit' +
        'No            = UN.VolumeUnit_No'
      
        'Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.Shippin' +
        'gPlanNo'
      
        'left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.' +
        'VoyageNo'
      'Left Outer Join dbo.ProdInstru PIS'
      'Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID'
      'ON PIS.ProdInstruNo = SP.ProdInstructNo'
      'WHERE  CLL.ClientNo          =  25'
      'AND LO.UserID = 8'
      'AND SP.ShippingPlanStatus <> 0'
      'AND SP.ObjectType in (0,1)'
      'AND SP.ShippingPlanNo > 1'
      'AND SP.LoadingLocationNo = 193'
      '  AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8'
      '')
    Left = 56
    Top = 24
    object cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField
      DisplayLabel = 'Kontraktsbeskrivning'
      FieldName = 'KONTRAKTSBESKRIVNING'
      Origin = 'KONTRAKTSBESKRIVNING'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField
      DisplayLabel = 'Sped.datum'
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersREADYDATE: TStringField
      DisplayLabel = 'Redodag'
      FieldName = 'READYDATE'
      Origin = 'READYDATE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object cdsSawmillLoadOrdersINITIALS: TStringField
      DisplayLabel = #196'ndrad av'
      FieldName = 'INITIALS'
      Origin = 'INITIALS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'ShippingPlanStatus'
      Origin = 'ShippingPlanStatus'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersLONumber: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'LONumber'
      Origin = 'LONumber'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersPackageCode: TStringField
      DisplayLabel = 'S'#246'knamn'
      FieldName = 'PackageCode'
      Origin = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsSawmillLoadOrdersProduct: TStringField
      DisplayLabel = 'Produkt'
      FieldName = 'Product'
      Origin = 'Product'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersLength: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'Length'
      Origin = 'Length'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object cdsSawmillLoadOrdersFromWeek: TIntegerField
      DisplayLabel = 'Fr'#229'n vecka'
      FieldName = 'FromWeek'
      Origin = 'FromWeek'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersToWeek: TIntegerField
      DisplayLabel = 'Till vecka'
      FieldName = 'ToWeek'
      Origin = 'ToWeek'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersVolume: TFloatField
      DisplayLabel = 'Kvantitet'
      FieldName = 'Volume'
      Origin = 'Volume'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField
      DisplayLabel = 'Rad ID'
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
      DisplayLabel = 'Ordernr'
      FieldName = 'OrderNoText'
      Origin = 'OrderNoText'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersUnitName: TStringField
      DisplayLabel = 'Vol.enhet'
      FieldName = 'UnitName'
      Origin = 'UnitName'
      ProviderFlags = []
      Size = 10
    end
    object cdsSawmillLoadOrdersDestination: TStringField
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
      DisplayLabel = 'Verknr'
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
      FieldName = 'CustomerPrice'
      Origin = 'CustomerPrice'
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField
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
      DisplayLabel = 'Kund (lokal)'
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
      DisplayLabel = 'Leveransvecka'
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
      DisplayLabel = 'Registrerad'
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
      DisplayLabel = 'KR-referens'
      FieldName = 'RADREFERENS'
      Origin = 'RADREFERENS'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersPris: TStringField
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
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersPackageHeight: TIntegerField
      DisplayLabel = 'Paketh'#246'jd'
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField
      DisplayLabel = 'Variantnr'
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
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
      ProviderFlags = []
    end
    object cdsSawmillLoadOrdersLagergrupp: TStringField
      FieldName = 'Lagergrupp'
      Origin = 'Lagergrupp'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersLngd: TStringField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsSawmillLoadOrdersETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersETA: TSQLTimeStampField
      FieldName = 'ETA'
      Origin = 'ETA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersPackage_Size: TIntegerField
      FieldName = 'Package_Size'
      Origin = 'Package_Size'
      ProviderFlags = [pfInUpdate]
    end
    object cdsSawmillLoadOrdersPackageSizeName: TStringField
      DisplayLabel = 'Paketstorlek'
      FieldName = 'PackageSizeName'
      Origin = 'PackageSizeName'
      ProviderFlags = []
      Size = 50
    end
    object cdsSawmillLoadOrdersPkgArticleNo: TIntegerField
      FieldName = 'PkgArticleNo'
      Origin = 'PkgArticleNo'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersLOGroupNo: TIntegerField
      FieldName = 'LOGroupNo'
      Origin = 'LOGroupNo'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersLOBuffertName: TStringField
      FieldName = 'LOBuffertName'
      Origin = 'LOBuffertName'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsSawmillLoadOrdersLoadedPkgs: TIntegerField
      DisplayLabel = 'Lev.pkt'
      FieldName = 'LoadedPkgs'
      Origin = 'LoadedPkgs'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '######'
    end
    object cdsSawmillLoadOrdersLoadedNM3: TFloatField
      DisplayLabel = 'Lev.NM3'
      FieldName = 'LoadedNM3'
      Origin = 'LoadedNM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersPlanPaket: TFMTBCDField
      DisplayLabel = 'Planerad paket(k'#246'rorder)'
      FieldName = 'PlanPaket'
      Origin = 'PlanPaket'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cdsSawmillLoadOrdersPlanAM3: TFMTBCDField
      DisplayLabel = 'Planerad AM3(k'#246'rorder)'
      FieldName = 'PlanAM3'
      Origin = 'PlanAM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
      Precision = 38
      Size = 3
    end
    object cdsSawmillLoadOrdersProducedAM3: TFloatField
      DisplayLabel = 'Producerad AM3'
      FieldName = 'ProducedAM3'
      Origin = 'ProducedAM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersProducedPKT: TIntegerField
      DisplayLabel = 'Producerade paket'
      FieldName = 'ProducedPKT'
      Origin = 'ProducedPKT'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersOrder_AM3: TFloatField
      DisplayLabel = 'AM3 LO'
      FieldName = 'Order_AM3'
      Origin = 'Order_AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersInternnotering: TStringField
      FieldName = 'Internnotering'
      Origin = 'Internnotering'
      ReadOnly = True
      Size = 100
    end
    object cdsSawmillLoadOrdersLoadedAM3: TFloatField
      DisplayLabel = 'Lev.AM3'
      FieldName = 'LoadedAM3'
      Origin = 'LoadedAM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cdsSawmillLoadOrdersProduktnotering: TStringField
      FieldName = 'Produktnotering'
      Origin = 'Produktnotering'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersLagerkod: TStringField
      FieldName = 'Lagerkod'
      Origin = 'Lagerkod'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object cdsSawmillLoadOrdersLoadStatus: TIntegerField
      FieldName = 'LoadStatus'
      Origin = 'LoadStatus'
      ReadOnly = True
    end
    object cdsSawmillLoadOrdersNoOfLoads: TIntegerField
      FieldName = 'NoOfLoads'
      Origin = 'NoOfLoads'
      ReadOnly = True
    end
  end
  object cdsBooking: TFDQuery
    AfterInsert = cdsBookingAfterInsert
    MasterSource = dsrcSawmillLoadOrders
    MasterFields = 'LONumber'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
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
      '        Bk.ShippingPlanNo,'
      'BK.Panic_Note,'
      'BK.LOText,'
      'BK.InvoiceText,'
      'BK.NoteForLoadSheet,'
      'BK.VoyageNo'
      ''
      '        '
      'FROM   dbo.Booking  Bk'
      ''
      
        '  left outer JOIN dbo.Voyage  Vg  ON   Bk.VoyageNo           = V' +
        'g.VoyageNo'
      
        '  LEFT OUTER JOIN dbo.Client  SC  ON   Bk.ShippingCompanyNo  = S' +
        'C.ClientNo'
      
        '  left outer JOIN dbo.Carrier Cr  ON   Vg.CarrierNo          = C' +
        'r.CarrierNo'
      ''
      ''
      'WHERE  Bk.ShippingPlanNo =  :LONumber')
    Left = 168
    Top = 24
    ParamData = <
      item
        Name = 'LONUMBER'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object cdsBookingBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBookingPreliminaryRequestedPeriod: TStringField
      FieldName = 'PreliminaryRequestedPeriod'
      Origin = 'PreliminaryRequestedPeriod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBookingShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingCarrierName: TStringField
      FieldName = 'CarrierName'
      Origin = 'CarrierName'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cdsBookingETD: TSQLTimeStampField
      FieldName = 'ETD'
      Origin = 'ETD'
      ProviderFlags = []
    end
    object cdsBookingShippersShipDate: TSQLTimeStampField
      FieldName = 'ShippersShipDate'
      Origin = 'ShippersShipDate'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippersShipTime: TSQLTimeStampField
      FieldName = 'ShippersShipTime'
      Origin = 'ShippersShipTime'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingShippingCompanyBookingID: TStringField
      FieldName = 'ShippingCompanyBookingID'
      Origin = 'ShippingCompanyBookingID'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBookingSupplierReference: TStringField
      FieldName = 'SupplierReference'
      Origin = 'SupplierReference'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsBookingClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cdsBookingPanic_Note: TStringField
      FieldName = 'Panic_Note'
      Origin = 'Panic_Note'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsBookingLOText: TMemoField
      FieldName = 'LOText'
      Origin = 'LOText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingInvoiceText: TMemoField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingNoteForLoadSheet: TMemoField
      FieldName = 'NoteForLoadSheet'
      Origin = 'NoteForLoadSheet'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsBookingVoyageNo: TIntegerField
      FieldName = 'VoyageNo'
      Origin = 'VoyageNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_PPNo: TFDQuery
    AfterInsert = cds_PPNoAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select pcp.*'
      'FROM dbo.Packagecode_printparams pcp '
      
        'Left Outer Join dbo.PkgcodeOwners pco on pco.PkgCodePPNo = pcp.P' +
        'kgCodePPNo'
      ''
      'WHERE'
      'pcp.PkgCodePPNo = -1'
      '')
    Left = 240
    Top = 24
    object cds_PPNoPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PPNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cds_PPNoPackageCode: TStringField
      FieldName = 'PackageCode'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cds_PPNoLanguagecode: TIntegerField
      FieldName = 'Languagecode'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoSizeFormat: TIntegerField
      FieldName = 'SizeFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoLengthFormat: TIntegerField
      FieldName = 'LengthFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoVolumeFormat: TIntegerField
      FieldName = 'VolumeFormat'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNooThickness: TStringField
      FieldName = 'oThickness'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cds_PPNooWidth: TStringField
      FieldName = 'oWidth'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cds_PPNooLength: TStringField
      FieldName = 'oLength'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cds_PPNoArtikelKod: TStringField
      FieldName = 'ArtikelKod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_PPNoModifiedDate: TSQLTimeStampField
      FieldName = 'ModifiedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoTagNo: TIntegerField
      FieldName = 'TagNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoActive: TIntegerField
      FieldName = 'Active'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoPublished: TIntegerField
      FieldName = 'Published'
      Origin = 'Published'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoCreatedDate: TSQLTimeStampField
      FieldName = 'CreatedDate'
      Origin = 'CreatedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PPNoprodinstruno: TIntegerField
      FieldName = 'prodinstruno'
      Origin = 'prodinstruno'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_ELOLengths: TFDQuery
    AfterInsert = cds_ELOLengthsAfterInsert
    BeforePost = cds_ELOLengthsBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.LO_Lengths'
    SQL.Strings = (
      'Select PL.ActualLengthMM, LL.*'
      'FROM dbo.LO_Lengths LL'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = LL.Produ' +
        'ctLengthNo'
      'WHERE'
      'LL.SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo')
    Left = 1040
    Top = 24
    ParamData = <
      item
        Name = 'SUPPLIERSHIPPLANOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ELOLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ProviderFlags = []
      Required = True
    end
    object cds_ELOLengthsSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLengthsPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_PP_Layout: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.PackageCode_Layout'
      'WHERE PkgCodePPNo = :PkgCodePPNo')
    Left = 576
    Top = 24
    ParamData = <
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PP_LayoutPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PP_LayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PP_LayoutAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_LOLengths: TFDQuery
    AfterInsert = cds_LOLengthsAfterInsert
    BeforePost = cds_LOLengthsBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.LO_Lengths'
    SQL.Strings = (
      'Select PL.ActualLengthMM, LL.*'
      'FROM dbo.LO_Lengths LL'
      
        'Inner Join dbo.ProductLength PL on PL.ProductLengthNo = LL.Produ' +
        'ctLengthNo'
      'WHERE'
      'LL.SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo')
    Left = 680
    Top = 24
    ParamData = <
      item
        Name = 'SUPPLIERSHIPPLANOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LOLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
      Origin = 'ActualLengthMM'
      ProviderFlags = []
      Required = True
    end
    object cds_LOLengthsSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOLengthsPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_ZeroGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM'
      'dbo.PkgCodePPZeroGroup'
      'WHERE PkgCodePPZeroGroupNo = :PkgCodePPZeroGroupNo')
    Left = 776
    Top = 24
    ParamData = <
      item
        Name = 'PKGCODEPPZEROGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ZeroGroupPkgCodePPZeroGroupNo: TIntegerField
      FieldName = 'PkgCodePPZeroGroupNo'
      Origin = 'PkgCodePPZeroGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ZeroGroupPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_CheckSupplierNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Count(SupplierNo) AS NoOfSuppliers'
      'FROM dbo.SupplierShippingPlan'
      'Where ShippingPlanNo = :LONo ')
    Left = 896
    Top = 24
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CheckSupplierNoNoOfSuppliers: TIntegerField
      FieldName = 'NoOfSuppliers'
      Origin = 'NoOfSuppliers'
      ReadOnly = True
    end
  end
  object sq_SetLOStatus: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.SupplierShippingPlan'
      'Set ShippingPlanStatus = :Status'
      'WHERE'
      'SupplierShipPlanObjectNo = :sspNo')
    Left = 64
    Top = 208
    ParamData = <
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SSPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_SearchALOByMainLO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'SP.ShippingPlanNo'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLoc' +
        'ationNo       = CLL.PhyInvPointNameNo'
      'WHERE SP.LO_NO = :LO_NO'
      ''
      'AND  CLL.ClientNo          =  :SupplierNo')
    Left = 64
    Top = 264
    ParamData = <
      item
        Name = 'LO_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SearchALOByMainLOShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
  end
  object sq_BTHExistInLager: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT PN.PackageNo'
      ''
      'FROM  dbo.PackageNumber PN'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PI ON  LI.Ph' +
        'ysicalInventoryPointNo = PI.PhysicalInventoryPointNo'
      ''
      'WHERE  '#9'PN.PackageNo = :PkgNo'
      'AND PN.SupplierCode = :Prefix'
      'AND '#9'PN.Status = 1'
      'AND    '#9'PI.OwnerNo   = :InvOwner'
      'AND '#9'PI.PhyInvPointNameNo IN'
      '(Select PhyInvPointNameNo'
      'FROM dbo.PHYSICALINVENTORYPOINT'
      'WHERE'
      'OwnerNo = :UserCompanyLoggedOn)'
      ''
      
        'AND PT.ProductNo in (Select SSP.ProductNo FROM dbo.SupplierShipp' +
        'ingPlan SSP'
      'WHERE SSP.ShippingPlanNo = :LONo'
      'AND SSP.ProductNo = PT.ProductNo'
      'AND SSP.SupplierNo = :SupplierNo)')
    Left = 72
    Top = 448
    ParamData = <
      item
        Name = 'PKGNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PREFIX'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERCOMPANYLOGGEDON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_FindLONo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'LS.ShippingPlanNo AS LONo'
      ''
      'FROM LoadShippingPlan LS'
      'WHERE LS.LoadNo = :LoadNo')
    Left = 184
    Top = 152
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindLONoLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      Required = True
    end
  end
  object cds_PI_ELO: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select  P.* FROM dbo.ProdInstru P'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.ProdInstructNo = ' +
        'P.ProdInstruNo'
      'WHERE SSP.OrderNo = :OrderNo ')
    Left = 184
    Top = 216
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PI_ELOProdInstruNo: TIntegerField
      FieldName = 'ProdInstruNo'
      Origin = 'ProdInstruNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PI_ELOFOHCpercent: TFloatField
      FieldName = 'FOHCpercent'
      Origin = 'FOHCpercent'
    end
    object cds_PI_ELOMiniBundleHeight: TIntegerField
      FieldName = 'MiniBundleHeight'
      Origin = 'MiniBundleHeight'
    end
    object cds_PI_ELOMiniBundleWidth: TIntegerField
      FieldName = 'MiniBundleWidth'
      Origin = 'MiniBundleWidth'
    end
    object cds_PI_ELOMinNoOfSticks: TIntegerField
      FieldName = 'MinNoOfSticks'
      Origin = 'MinNoOfSticks'
    end
    object cds_PI_ELONoOfStraps: TIntegerField
      FieldName = 'NoOfStraps'
      Origin = 'NoOfStraps'
    end
    object cds_PI_ELOCornerProtection: TStringField
      FieldName = 'CornerProtection'
      Origin = 'CornerProtection'
      Size = 50
    end
    object cds_PI_ELOPackageWidth: TIntegerField
      FieldName = 'PackageWidth'
      Origin = 'PackageWidth'
    end
    object cds_PI_ELOPackageHeight: TIntegerField
      FieldName = 'PackageHeight'
      Origin = 'PackageHeight'
    end
    object cds_PI_ELOStamp: TIntegerField
      FieldName = 'Stamp'
      Origin = 'Stamp'
    end
    object cds_PI_ELOPET: TIntegerField
      FieldName = 'PET'
      Origin = 'PET'
    end
    object cds_PI_ELOMiniBundle: TIntegerField
      FieldName = 'MiniBundle'
      Origin = 'MiniBundle'
    end
    object cds_PI_ELOStressGrade: TIntegerField
      FieldName = 'StressGrade'
      Origin = 'StressGrade'
    end
    object cds_PI_ELOFingerJoint: TIntegerField
      FieldName = 'FingerJoint'
      Origin = 'FingerJoint'
    end
    object cds_PI_ELOPackageCut: TIntegerField
      FieldName = 'PackageCut'
      Origin = 'PackageCut'
    end
    object cds_PI_ELOExLog: TStringField
      FieldName = 'ExLog'
      Origin = 'ExLog'
      FixedChar = True
      Size = 10
    end
    object cds_PI_ELOCreated: TSQLTimeStampField
      FieldName = 'Created'
      Origin = 'Created'
    end
    object cds_PI_ELOModified: TSQLTimeStampField
      FieldName = 'Modified'
      Origin = 'Modified'
    end
    object cds_PI_ELOPackageTagLayout: TIntegerField
      FieldName = 'PackageTagLayout'
      Origin = 'PackageTagLayout'
    end
    object cds_PI_ELOPET_Tolerance: TStringField
      FieldName = 'PET_Tolerance'
      Origin = 'PET_Tolerance'
      FixedChar = True
      Size = 10
    end
    object cds_PI_ELOBarCodeID: TIntegerField
      FieldName = 'BarCodeID'
      Origin = 'BarCodeID'
    end
    object cds_PI_ELOExtraID: TStringField
      FieldName = 'ExtraID'
      Origin = 'ExtraID'
      FixedChar = True
    end
    object cds_PI_ELOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PI_ELOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PI_ELODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PI_ELOPackageType: TIntegerField
      FieldName = 'PackageType'
      Origin = 'PackageType'
    end
    object cds_PI_ELOWrapType: TIntegerField
      FieldName = 'WrapType'
      Origin = 'WrapType'
    end
    object cds_PI_ELOPressureTreated: TIntegerField
      FieldName = 'PressureTreated'
      Origin = 'PressureTreated'
    end
    object cds_PI_ELOSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_PI_ELOPicture: TStringField
      FieldName = 'Picture'
      Origin = 'Picture'
      Size = 255
    end
    object cds_PI_ELONote: TMemoField
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_PI_ELOShrinkWrap: TIntegerField
      FieldName = 'ShrinkWrap'
      Origin = 'ShrinkWrap'
    end
    object cds_PI_ELOPiecesPerMiniBundle: TIntegerField
      FieldName = 'PiecesPerMiniBundle'
      Origin = 'PiecesPerMiniBundle'
    end
    object cds_PI_ELOPackage_Size: TIntegerField
      FieldName = 'Package_Size'
      Origin = 'Package_Size'
    end
    object cds_PI_ELOBILD: TBlobField
      FieldName = 'BILD'
      Origin = 'BILD'
    end
    object cds_PI_ELOCornerProtectionNo: TIntegerField
      FieldName = 'CornerProtectionNo'
      Origin = 'CornerProtectionNo'
    end
    object cds_PI_ELOExternalNote: TMemoField
      FieldName = 'ExternalNote'
      Origin = 'ExternalNote'
      BlobType = ftMemo
    end
    object cds_PI_ELOTruckSticksNo: TIntegerField
      FieldName = 'TruckSticksNo'
      Origin = 'TruckSticksNo'
    end
    object cds_PI_ELOStrapTypeNo: TIntegerField
      FieldName = 'StrapTypeNo'
      Origin = 'StrapTypeNo'
    end
  end
  object cds_PkgOwner: TFDQuery
    AfterInsert = cds_PkgOwnerAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.PkgCodeOwners'
      'Where PkgCodePPNo = -1')
    Left = 272
    Top = 256
    object cds_PkgOwnerPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgOwnerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgOwnerCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PkgOwnerDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object cds_ELOLayout: TFDQuery
    AfterInsert = cds_ELOLayoutAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SL.* FROM dbo.ELOSpecLayout SL'
      'WHERE SL.SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo')
    Left = 384
    Top = 208
    ParamData = <
      item
        Name = 'SUPPLIERSHIPPLANOBJECTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ELOLayoutSupplierShipPlanObjectNo: TIntegerField
      FieldName = 'SupplierShipPlanObjectNo'
      Origin = 'SupplierShipPlanObjectNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ELOLayoutAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sq_GetPPNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PkgCodePPNo from dbo.Packagecode_printparams'
      'where PackageTypeNo = :PackageTypeNo'
      'and Languagecode = :Languagecode'
      'and SizeFormat = :SizeFormat'
      'and LengthFormat = :LengthFormat'
      'and VolumeFormat = :VolumeFormat'
      'and ArtikelKod = :ArtikelKod')
    Left = 1040
    Top = 136
    ParamData = <
      item
        Name = 'PACKAGETYPENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LANGUAGECODE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SIZEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LENGTHFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VOLUMEFORMAT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ARTIKELKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPPNoPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_OLLayout: TFDQuery
    Filtered = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.OrderRowSpecLayout'
      'WHERE OrderNo = :OrderNo'
      'AND OrderLineNo = :OrderLineNo')
    Left = 504
    Top = 208
    ParamData = <
      item
        Name = 'ORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ORDERLINENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_OLLayoutOrderNo: TIntegerField
      FieldName = 'OrderNo'
      Origin = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_OLLayoutOrderLineNo: TIntegerField
      FieldName = 'OrderLineNo'
      Origin = 'OrderLineNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_OLLayoutLayoutNo: TIntegerField
      FieldName = 'LayoutNo'
      Origin = 'LayoutNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_OLLayoutAntalKopior: TIntegerField
      FieldName = 'AntalKopior'
      Origin = 'AntalKopior'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_PkgCodeO: TFDQuery
    AfterInsert = cds_PkgCodeOAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From dbo.PkgVarCode'
      'WHERE PkgCodePPNo = :PkgCodePPNo'
      '')
    Left = 600
    Top = 208
    ParamData = <
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PkgCodeOPkgCodePPNo: TIntegerField
      FieldName = 'PkgCodePPNo'
      Origin = 'PkgCodePPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgCodeOPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
    end
    object cds_PkgCodeOPackageMainCode: TStringField
      FieldName = 'PackageMainCode'
      Origin = 'PackageMainCode'
    end
    object cds_PkgCodeOPackageCodeNo: TStringField
      FieldName = 'PackageCodeNo'
      Origin = 'PackageCodeNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cds_PkgCodeOCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_PkgCodeOModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_PkgCodeODateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_PkgCodeODateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_PkgCodeOLengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      Size = 100
    end
    object cds_PkgCodeOMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
    end
  end
  object sq_PkgStatus: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select PN.Status'
      'FROM dbo.PackageNumber PN'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'WHERE PIP.OwnerNo = :SupplierNo'
      'AND PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode')
    Left = 712
    Top = 208
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
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
    object sq_PkgStatusStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
  end
  object sq_RemFromZeroGroup: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete dbo.PkgCodePPZeroGroup'
      'WHERE PkgCodePPZeroGroupNo = :PkgCodePPZeroGroupNo'
      'AND PkgCodePPNo = :PkgCodePPNo')
    Left = 272
    Top = 416
    ParamData = <
      item
        Name = 'PKGCODEPPZEROGROUPNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PKGCODEPPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_OrderType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct CASE WHEN SP.SupplierNo = :SupplierNo THEN 0'
      'ELSE'
      '1'
      'END AS OrderType'
      'FROM dbo.SupplierShippingPlan SP'
      'WHERE  SP.ShippingPlanNo = :LONo '
      'AND'
      '(SP.SupplierNO = :SupplierNo OR SP.CustomerNo = :SupplierNo)')
    Left = 408
    Top = 368
    ParamData = <
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_OrderTypeOrderType: TIntegerField
      FieldName = 'OrderType'
      Origin = 'OrderType'
      ReadOnly = True
      Required = True
    end
  end
  object sq_LegoHasLL: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct SSP.LoadingLocationNo'
      'FROM dbo.SupplierShippingPlan SSP'
      'WHERE  SSP.ShippingPlanNo = :LONo'
      'AND SSP.LoadingLocationNo in (Select CLL.PhyInvPointNameNo'
      'FROM Client_LoadingLocation CLL'
      'WHERE CLL.ClientNo = :LoggedInCompanyNo'
      'AND CLL.PhyInvPointNameNo = SSP.LoadingLocationNo)')
    Left = 408
    Top = 416
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOGGEDINCOMPANYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_LegoHasLLLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
  end
  object sq_ValidLONr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'SP.ShippingPlanNo,SP.SupplierNo, SP.LoadingLocationNo'
      'FROM   dbo.SupplierShippingPlan       SP'
      'WHERE  SP.ShippingPlanNo    =   :LONo'
      'AND SP.SupplierNo = :SupplierNo')
    Left = 272
    Top = 368
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ValidLONrShippingPlanNo: TIntegerField
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
    end
    object sq_ValidLONrSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object sq_ValidLONrLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      Required = True
    end
  end
  object cds_LOListHH: TFDQuery
    AfterInsert = cds_LOListHHAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select LOHH.*, SSP.ProductDescription AS Produkt,'
      'SSP.LengthDescription AS L'#228'ngd'
      'FROM dbo.LOListHH LOHH'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = LOHH.SSPNo'
      'WHERE LOHH.CreatedUser = :UserID')
    Left = 712
    Top = 256
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LOListHHCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOListHHSSPNo: TIntegerField
      FieldName = 'SSPNo'
      Origin = 'SSPNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LOListHHLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_LOListHHDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LOListHHVolume: TFloatField
      FieldName = 'Volume'
      Origin = 'Volume'
    end
    object cds_LOListHHProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      FixedChar = True
      Size = 100
    end
    object cds_LOListHHLngd: TStringField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
      FixedChar = True
      Size = 100
    end
  end
  object cdsLoadsForLO: TFDStoredProc
    OnUpdateRecord = cdsLoadsForLOUpdateRecord
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateObject = updLoadsForLO
    StoredProcName = 'dbo.vida_LoadsForLO_v2'
    Left = 320
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Shipping'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Lagerkod'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object cdsLoadsForLOFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsLoadsForLOShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cdsLoadsForLOLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadsForLOLoadID: TStringField
      DisplayLabel = 'Last ID'
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cdsLoadsForLOLoadedDate: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cdsLoadsForLOSenderLoadStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cdsLoadsForLOPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pcs'
      Origin = 'Pcs'
      ReadOnly = True
    end
    object cdsLoadsForLOActualM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ActualM3'
      Origin = 'ActualM3'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLONominalM3: TFloatField
      DisplayLabel = 'NM3'
      FieldName = 'NominalM3'
      Origin = 'NominalM3'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLOLinealMeter: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LinealMeter'
      Origin = 'LinealMeter'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLOMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLOVERK: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object cdsLoadsForLOANTPKT: TIntegerField
      DisplayLabel = 'Paket'
      FieldName = 'ANTPKT'
      Origin = 'ANTPKT'
      ReadOnly = True
      DisplayFormat = '######'
    end
    object cdsLoadsForLOSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cdsLoadsForLOLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cdsLoadsForLOAR: TSQLTimeStampField
      FieldName = 'AR'
      Origin = 'AR'
    end
    object cdsLoadsForLOAR_AV: TStringField
      DisplayLabel = 'AR av'
      FieldName = 'AR_AV'
      Origin = 'AR_AV'
      FixedChar = True
      Size = 3
    end
    object cdsLoadsForLOPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object cdsLoadsForLOPosition: TStringField
      FieldName = 'Position'
      Origin = 'Position'
      ReadOnly = True
      Size = 50
    end
    object cdsLoadsForLOShortNote: TStringField
      DisplayLabel = 'Internnotering'
      FieldName = 'ShortNote'
      Origin = 'ShortNote'
      Size = 150
    end
    object cdsLoadsForLOLocalShippingCompany: TStringField
      FieldName = 'LocalShippingCompany'
      Origin = 'LocalShippingCompany'
      Size = 80
    end
    object cdsLoadsForLOLagerkod: TStringField
      FieldName = 'Lagerkod'
      Origin = 'Lagerkod'
      Size = 4
    end
  end
  object sp_Populate_One_PkgTypeLengths: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Populate_One_PackageTypeLengths'
    Left = 896
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_CngLOonLoad: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.CngLOonLoad'
    Left = 896
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
        Name = '@LoadNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@NewLONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_PackageTypes: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_PkgType'
    Left = 896
    Top = 304
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
    StoredProcName = 'vida_PackageTypeDetail'
    Left = 896
    Top = 352
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
  object sp_NewPackageType_II: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_NewPkgType'
    Left = 896
    Top = 400
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
    StoredProcName = 'vida_NewPackageDetail'
    Left = 896
    Top = 448
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
    StoredProcName = 'vida_PackageTotals'
    Left = 896
    Top = 496
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
  object sp_lencolpcspkgtypeno: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_lencolpcspkgtypeno'
    Left = 896
    Top = 544
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
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 536
    Top = 368
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsVerkNoChange
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
      OnChange = cds_PropsOrderTypeNoChange
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
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object cds_PropsMarknad: TStringField
      FieldKind = fkLookup
      FieldName = 'Marknad'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_PropsKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSaljgrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Saljgrupp'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesPersonNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_PropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsLaststlle: TStringField
      FieldKind = fkLookup
      FieldName = 'Lastst'#228'lle'
      LookupDataSet = sq_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'Ort'
      KeyFields = 'LoadingLocationNo'
      Size = 50
      Lookup = True
    end
    object cds_PropsDestination: TStringField
      FieldKind = fkLookup
      FieldName = 'Destination'
      LookupDataSet = sq_Dest
      LookupKeyFields = 'CityNo'
      LookupResultField = 'Ort'
      KeyFields = 'LengthGroupNo'
      Size = 50
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 536
    Top = 424
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'VIS'
    ModifySQL.Strings = (
      'UPDATE SUPPLIERSHIPPINGPLAN'
      'SET '
      'PACKAGECODE = :NEW_PackageCode, '
      
        '  FREIGHTORDERBYCLIENTNO = :NEW_FreightOrderByClientNo, SEQUENCE' +
        'NO = :NEW_SequenceNo, '
      
        '  CREATEDUSER = :NEW_CreatedUser, MODIFIEDUSER = :NEW_ModifiedUs' +
        'er, '
      '  DATECREATED = :NEW_DateCreated, PARTNERNO = :NEW_PartnerNo, '
      
        '  PRODINSTRUCTNO = :NEW_ProdInstructNo, SHOWINGRID = :NEW_ShowIn' +
        'Grid, '
      '  PCSPERPKG = :NEW_PcsPerPkg, CUSTOMERNO = :NEW_CustomerNo, '
      
        '  CUSTOMERPRICE = :NEW_CustomerPrice, CUSTOMERSHOWINGRID = :NEW_' +
        'CustomerShowInGrid, '
      '  LO_NO = :NEW_LO_No, DELIVERY_WEEKNO = :NEW_Delivery_WeekNo, '
      '  DATEMODIFIED = :NEW_DateModified, LENGTHTYP = :NEW_LengthTyp, '
      
        '  REFERENCE = :NEW_Reference, LIPNO = :NEW_LIPNo, PKGCODEPPNO = ' +
        ':NEW_PkgCodePPNo, '
      
        '  PRICELISTNO = :NEW_PriceListNo, INTERNKUNDFRAKT = :NEW_InternK' +
        'undFrakt, '
      
        '  PACKAGEWIDTH = :NEW_PackageWidth, PACKAGEHEIGHT = :NEW_Package' +
        'Height, '
      '  LENGTHSPEC = :NEW_LengthSpec'
      'WHERE SUPPLIERSHIPPLANOBJECTNO = :OLD_SupplierShipPlanObjectNo')
    FetchRowSQL.Strings = (
      
        'SELECT SUPPLIERSHIPPLANOBJECTNO, CUSTSHIPPLANDETAILOBJECTNO, SHI' +
        'PTYPE, '
      '  OBJECTTYPE, ORDERNO, ORDERLINENO, SHIPPINGPLANNO, SUPPLIERNO, '
      '  LOADINGLOCATIONNO, DELIVERYTERMSNO, PAYMENTTERMSNO, PRICE, '
      
        '  CURRENCYNO, NOOFUNITS, PRICEUNITNO, VOLUMEUNITNO, DESTINATIONN' +
        'O, '
      
        '  SHIPPINGPLANSTATUS, STARTETDYEARWEEK, ENDETDYEARWEEK, INTERNAL' +
        'NOTE, '
      '  PRODUCTDESCRIPTION, LENGTHDESCRIPTION, ACCEPTEDBYSUPPLIER, '
      
        '  PRODUCTLENGTHNO, PRODUCTGROUPNO, ACTUALM3NET, SHIPTOINVPOINTNO' +
        ', '
      '  PRODUCTNO, LOTEXT, MINACTUALLENGTHMM, MAXACTUALLENGTHMM, '
      '  PACKAGECODE, FREIGHTORDERBYCLIENTNO, SEQUENCENO, CREATEDUSER, '
      
        '  MODIFIEDUSER, DATECREATED, PARTNERNO, PRODINSTRUCTNO, SHOWINGR' +
        'ID, '
      '  PCSPERPKG, CUSTOMERNO, CUSTOMERPRICE, CUSTOMERSHOWINGRID, '
      '  LO_NO, DELIVERY_WEEKNO, DATEMODIFIED, LENGTHTYP, REFERENCE, '
      
        '  LIPNO, PKGCODEPPNO, PRICELISTNO, INTERNKUNDFRAKT, PACKAGEWIDTH' +
        ', '
      '  PACKAGEHEIGHT, LENGTHSPEC'
      'FROM SUPPLIERSHIPPINGPLAN'
      'WHERE SUPPLIERSHIPPLANOBJECTNO = :SupplierShipPlanObjectNo')
    Left = 72
    Top = 520
  end
  object sq_City: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select C.CityName AS Ort, C.CityNo FROM dbo.City C'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhyInvPointName' +
        'No = C.CityNo'
      'WHERE PIP.OwnerNo = :OwnerNo'
      'Order By C.CityName')
    Left = 264
    Top = 512
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_CityOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_CityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsLoadsForLO_forVW: TFDStoredProc
    OnUpdateRecord = cdsLoadsForLO_forVWUpdateRecord
    Connection = dmsConnector.FDConnection1
    UpdateObject = updLoadsForLO_forVW
    StoredProcName = 'dbo.vida_LoadsForLO_v3'
    Left = 320
    Top = 144
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@Shipping'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@Lagerkod'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end>
    object cdsLoadsForLO_forVWFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cdsLoadsForLO_forVWShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      Required = True
    end
    object cdsLoadsForLO_forVWLoadNo: TIntegerField
      DisplayLabel = 'Lastnr'
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      Required = True
    end
    object cdsLoadsForLO_forVWLoadID: TStringField
      DisplayLabel = 'Last ID'
      FieldName = 'LoadID'
      Origin = 'LoadID'
      Size = 50
    end
    object cdsLoadsForLO_forVWLoadedDate: TSQLTimeStampField
      DisplayLabel = 'Utlastad'
      FieldName = 'LoadedDate'
      Origin = 'LoadedDate'
    end
    object cdsLoadsForLO_forVWSenderLoadStatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'SenderLoadStatus'
      Origin = 'SenderLoadStatus'
    end
    object cdsLoadsForLO_forVWPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'Pcs'
      Origin = 'Pcs'
      ReadOnly = True
    end
    object cdsLoadsForLO_forVWActualM3: TFloatField
      DisplayLabel = 'AM3'
      FieldName = 'ActualM3'
      Origin = 'ActualM3'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLO_forVWNominalM3: TFloatField
      FieldName = 'NominalM3'
      Origin = 'NominalM3'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLO_forVWLinealMeter: TFloatField
      DisplayLabel = 'AM1'
      FieldName = 'LinealMeter'
      Origin = 'LinealMeter'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLO_forVWMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      ReadOnly = True
      DisplayFormat = '######.000'
    end
    object cdsLoadsForLO_forVWVERK: TStringField
      DisplayLabel = 'Verk'
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object cdsLoadsForLO_forVWANTPKT: TIntegerField
      FieldName = 'ANTPKT'
      Origin = 'ANTPKT'
      ReadOnly = True
    end
    object cdsLoadsForLO_forVWSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
    object cdsLoadsForLO_forVWLoadAR: TIntegerField
      FieldName = 'LoadAR'
      Origin = 'LoadAR'
    end
    object cdsLoadsForLO_forVWAR: TSQLTimeStampField
      FieldName = 'AR'
      Origin = 'AR'
    end
    object cdsLoadsForLO_forVWAR_AV: TStringField
      FieldName = 'AR_AV'
      Origin = 'AR_AV'
      FixedChar = True
      Size = 3
    end
    object cdsLoadsForLO_forVWPackageEntryOption: TIntegerField
      FieldName = 'PackageEntryOption'
      Origin = 'PackageEntryOption'
    end
    object cdsLoadsForLO_forVWPosition: TStringField
      FieldName = 'Position'
      Origin = 'Position'
      ReadOnly = True
      Size = 50
    end
    object cdsLoadsForLO_forVWShortNote: TStringField
      DisplayLabel = 'Internnotering'
      FieldName = 'ShortNote'
      Origin = 'ShortNote'
      Size = 150
    end
    object cdsLoadsForLO_forVWLagerkod: TStringField
      FieldName = 'Lagerkod'
      Origin = 'Lagerkod'
      Size = 4
    end
  end
  object sq_Dest: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select C.CityName AS Ort, C.CityNo FROM dbo.City C'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhyInvPointName' +
        'No = C.CityNo'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = PIP.OwnerNo'
      'WHERE CR.RoleType = 7'
      'Order By C.CityName')
    Left = 264
    Top = 568
    object sq_DestOrt: TStringField
      FieldName = 'Ort'
      Origin = 'Ort'
      Size = 50
    end
    object sq_DestCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_LSP: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT DISTINCT'
      'SSP.ShippingPlanStatus AS SSP_STATUS,'
      'CSH.ShippingPlanStatus AS AVROP_STATUS'
      ''
      'FROM dbo.SupplierShippingPlan SSP'
      
        '-- Left Join dbo.CustomerShippingPlanDetails CSD on CSD.CustShip' +
        'PlanDetailObjectNo = SSP.CustShipPlanDetailObjectNo'
      
        'Left Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPlan' +
        'No = SSP.ShippingPlanNo'
      ''
      'WHERE'
      'SSP.ShippingPlanNo = :ShippingPlanNo'
      '')
    Left = 688
    Top = 448
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_LSPSSP_STATUS: TIntegerField
      FieldName = 'SSP_STATUS'
      Origin = 'AVROP_STATUS'
    end
    object cds_LSPAVROP_STATUS: TIntegerField
      FieldName = 'AVROP_STATUS'
      Origin = 'AVROP_STATUS'
    end
  end
  object upd_LO: TFDUpdateSQL
    Connection = dmsConnector.FDConnection1
    ConnectionName = 'VIS'
    InsertSQL.Strings = (
      'INSERT INTO SupplierShippingPlan'
      '(SupplierShipPlanObjectNo, PackageCode, PcsPerPkg, '
      '  PkgCodePPNo, PackageWidth, PackageHeight, '
      '  Package_Size)'
      
        'VALUES (:NEW_SupplierShipPlanObjectNo, :NEW_PackageCode, :NEW_Pc' +
        'sPerPkg, '
      '  :NEW_PkgCodePPNo, :NEW_PackageWidth, :NEW_PackageHeight, '
      '  :NEW_Package_Size)')
    ModifySQL.Strings = (
      'UPDATE SupplierShippingPlan'
      
        'SET SupplierShipPlanObjectNo = :NEW_SupplierShipPlanObjectNo, Pa' +
        'ckageCode = :NEW_PackageCode, '
      '  PcsPerPkg = :NEW_PcsPerPkg, PkgCodePPNo = :NEW_PkgCodePPNo, '
      
        '  PackageWidth = :NEW_PackageWidth, PackageHeight = :NEW_Package' +
        'Height, '
      '  Package_Size = :NEW_Package_Size'
      'WHERE SupplierShipPlanObjectNo = :OLD_SupplierShipPlanObjectNo')
    DeleteSQL.Strings = (
      'DELETE FROM SupplierShippingPlan'
      'WHERE SupplierShipPlanObjectNo = :OLD_SupplierShipPlanObjectNo')
    LockSQL.Strings = (
      
        'SELECT SupplierShipPlanObjectNo, CustShipPlanDetailObjectNo, Shi' +
        'pType, '
      '  ObjectType, OrderNo, OrderLineNo, ShippingPlanNo, SupplierNo, '
      '  LoadingLocationNo, DeliveryTermsNo, PaymentTermsNo, Price, '
      
        '  CurrencyNo, NoOfUnits, PriceUnitNo, VolumeUnitNo, DestinationN' +
        'o, '
      
        '  ShippingPlanStatus, StartETDYearWeek, EndETDYearWeek, Internal' +
        'Note, '
      '  ProductDescription, LengthDescription, AcceptedBySupplier, '
      
        '  ProductLengthNo, ProductGroupNo, ActualM3Net, ShipToInvPointNo' +
        ', '
      '  ProductNo, LOText, MinActualLengthMM, MaxActualLengthMM, '
      '  PackageCode, FreightOrderByClientNo, SequenceNo, CreatedUser, '
      
        '  ModifiedUser, DateCreated, PartnerNo, ProdInstructNo, ShowInGr' +
        'id, '
      '  PcsPerPkg, CustomerNo, CustomerPrice, CustomerShowInGrid, '
      '  LO_No, Delivery_WeekNo, DateModified, lengthTyp, Reference, '
      
        '  LIPNo, PkgCodePPNo, PriceListNo, InternKundFrakt, PackageWidth' +
        ', '
      
        '  PackageHeight, LengthSpec, OrderBy, NM3ext, NM3int, StatusLeve' +
        'lOne, '
      '  PkgArticleNo, Package_Size'
      'FROM SupplierShippingPlan'
      'WHERE SupplierShipPlanObjectNo = :OLD_SupplierShipPlanObjectNo')
    FetchRowSQL.Strings = (
      
        'SELECT SupplierShipPlanObjectNo, CustShipPlanDetailObjectNo, Shi' +
        'pType, '
      '  ObjectType, OrderNo, OrderLineNo, ShippingPlanNo, SupplierNo, '
      '  LoadingLocationNo, DeliveryTermsNo, PaymentTermsNo, Price, '
      
        '  CurrencyNo, NoOfUnits, PriceUnitNo, VolumeUnitNo, DestinationN' +
        'o, '
      
        '  ShippingPlanStatus, StartETDYearWeek, EndETDYearWeek, Internal' +
        'Note, '
      '  ProductDescription, LengthDescription, AcceptedBySupplier, '
      
        '  ProductLengthNo, ProductGroupNo, ActualM3Net, ShipToInvPointNo' +
        ', '
      '  ProductNo, LOText, MinActualLengthMM, MaxActualLengthMM, '
      '  PackageCode, FreightOrderByClientNo, SequenceNo, CreatedUser, '
      
        '  ModifiedUser, DateCreated, PartnerNo, ProdInstructNo, ShowInGr' +
        'id, '
      '  PcsPerPkg, CustomerNo, CustomerPrice, CustomerShowInGrid, '
      '  LO_No, Delivery_WeekNo, DateModified, lengthTyp, Reference, '
      
        '  LIPNo, PkgCodePPNo, PriceListNo, InternKundFrakt, PackageWidth' +
        ', '
      
        '  PackageHeight, LengthSpec, OrderBy, NM3ext, NM3int, StatusLeve' +
        'lOne, '
      '  PkgArticleNo, Package_Size'
      'FROM SupplierShippingPlan'
      'WHERE SupplierShipPlanObjectNo = :SupplierShipPlanObjectNo')
    Left = 56
    Top = 136
  end
  object sp_GetLO_Avrop_Status: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GetLO_Avrop_Status'
    Left = 680
    Top = 520
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
      end>
  end
  object sp_SetIntHdrStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.Vis_SetIntHdrStatus'
    Left = 896
    Top = 608
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@sspNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sp_SetLOStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SetLOStatus'
    Left = 680
    Top = 608
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@sspNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@Status'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object updLoadsForLO: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO Loads'
      '(LoadNo, SupplierNo, LoadedDate, SenderLoadStatus, '
      '  LoadID, PackageEntryOption, FS, LoadAR, '
      '  ShippingPlanNo, ShortNote)'
      
        'VALUES (:NEW_LoadNo, :NEW_SupplierNo, :NEW_LoadedDate, :NEW_Send' +
        'erLoadStatus, '
      '  :NEW_LoadID, :NEW_PackageEntryOption, :NEW_FS, :NEW_LoadAR, '
      '  :NEW_ShippingPlanNo, :NEW_ShortNote)')
    ModifySQL.Strings = (
      'UPDATE Loads'
      
        'SET LoadNo = :NEW_LoadNo, SupplierNo = :NEW_SupplierNo, LoadedDa' +
        'te = :NEW_LoadedDate, '
      
        '  SenderLoadStatus = :NEW_SenderLoadStatus, LoadID = :NEW_LoadID' +
        ', '
      '  PackageEntryOption = :NEW_PackageEntryOption, FS = :NEW_FS, '
      '  LoadAR = :NEW_LoadAR, ShippingPlanNo = :NEW_ShippingPlanNo, '
      '  ShortNote = :NEW_ShortNote'
      'WHERE LoadNo = :OLD_LoadNo')
    DeleteSQL.Strings = (
      'DELETE FROM Loads'
      'WHERE LoadNo = :OLD_LoadNo')
    FetchRowSQL.Strings = (
      
        'SELECT LoadNo, SupplierNo, LoadedDate, SenderLoadStatus, LoadID,' +
        ' MsgToShipper, '
      '  InternalNote, PackageEntryOption, LocalShippingCompanyNo, '
      
        '  LocalLoadingLocation, LocalDestinationNo, CreatedUser, Modifie' +
        'dUser, '
      '  DateCreated, FS, OriginalSupplierNo, CustomerNo, Notering, '
      '  LoadOK, LoadAR, ShippingPlanNo, PIPNo, LIPNo, ShowOriginalLO, '
      '  ShortNote'
      'FROM Loads'
      'WHERE LoadNo = :LoadNo')
    Left = 472
    Top = 24
  end
  object updLoadsForLO_forVW: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO Loads'
      '(LoadNo, SupplierNo, LoadedDate, SenderLoadStatus, '
      '  LoadID, PackageEntryOption, FS, LoadAR, '
      '  ShippingPlanNo, ShortNote)'
      
        'VALUES (:NEW_LoadNo, :NEW_SupplierNo, :NEW_LoadedDate, :NEW_Send' +
        'erLoadStatus, '
      '  :NEW_LoadID, :NEW_PackageEntryOption, :NEW_FS, :NEW_LoadAR, '
      '  :NEW_ShippingPlanNo, :NEW_ShortNote)')
    ModifySQL.Strings = (
      'UPDATE Loads'
      
        'SET LoadNo = :NEW_LoadNo, SupplierNo = :NEW_SupplierNo, LoadedDa' +
        'te = :NEW_LoadedDate, '
      
        '  SenderLoadStatus = :NEW_SenderLoadStatus, LoadID = :NEW_LoadID' +
        ', '
      '  PackageEntryOption = :NEW_PackageEntryOption, FS = :NEW_FS, '
      '  LoadAR = :NEW_LoadAR, ShippingPlanNo = :NEW_ShippingPlanNo, '
      '  ShortNote = :NEW_ShortNote'
      'WHERE LoadNo = :OLD_LoadNo')
    DeleteSQL.Strings = (
      'DELETE FROM Loads'
      'WHERE LoadNo = :OLD_LoadNo')
    FetchRowSQL.Strings = (
      
        'SELECT LoadNo, SupplierNo, LoadedDate, SenderLoadStatus, LoadID,' +
        ' MsgToShipper, '
      '  InternalNote, PackageEntryOption, LocalShippingCompanyNo, '
      
        '  LocalLoadingLocation, LocalDestinationNo, CreatedUser, Modifie' +
        'dUser, '
      '  DateCreated, FS, OriginalSupplierNo, CustomerNo, Notering, '
      '  LoadOK, LoadAR, ShippingPlanNo, PIPNo, LIPNo, ShowOriginalLO, '
      '  ShortNote'
      'FROM Loads'
      'WHERE LoadNo = :LoadNo')
    Left = 472
    Top = 144
  end
  object sp_LOBuffertLO: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_LOBuffertLO'
    Left = 264
    Top = 632
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
      end>
  end
  object sp_SetAvropStatus: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SetAvropStatus'
    Left = 72
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@AvropStatus'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_Samlast: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'select distinct sp.ShippingPlanNo as LO, c.ClientName as Verk, L' +
        'S.LoadNo as Lastnr from dbo.SupplierShippingPlan sp'
      
        'inner join dbo.LOGroupNo Sam on sam.ShippingPlanNo = sp.Shipping' +
        'PlanNo'
      'Inner Join dbo.Client c on c.clientNo = sp.supplierNo'
      
        'Left join dbo.LoadShippingPlan LS on LS.ShippingPlanNo = sp.Ship' +
        'pingPlanNo'
      'WHERE sp.ShippingPlanNo = :LONo'
      'and sp.SupplierNo <> :SupplierNo')
    Left = 1024
    Top = 312
    ParamData = <
      item
        Name = 'LONO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_SamlastLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
    end
    object sq_SamlastVerk: TStringField
      FieldName = 'Verk'
      Origin = 'Verk'
      Size = 80
    end
    object sq_SamlastLastnr: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
    end
  end
  object sp_SamlastInfo: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_SamlastInfo'
    Left = 1024
    Top = 240
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
        Name = '@LONo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
