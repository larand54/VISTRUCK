object dm_Vis_Vida: Tdm_Vis_Vida
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 693
  Width = 912
  object cds_SortOrderList: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SO.SortingOrderNo,'
      'SO.ProductionUnitNo AS RegPointNo,'
      'rp.RegPointName AS M'#228'tpunkt,'
      'SO.PIPNo,'
      ''
      'RTRIM(rp.RegPointName)'
      '+ '#39' / '#39' +'
      'CAST(SO.SortingOrderNo AS Varchar(6))'
      '+ '#39' / '#39' +'
      '   IsNull((Select Top 1 p.ProductDisplayName FROM'
      '   dbo.SortingOrderRow SOR'
      '   Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      '   WHERE SOR.SortingOrderNo = SO.SortingOrderNo'
      '   AND SOR.Urlagg = 0),'#39#39') AS F'#228'rdigvara,'
      ''
      '(Select Top 1 p.ProductDisplayName FROM'
      'dbo.SortingOrderRawMtrl SOR'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      'WHERE SOR.SortingOrderNo = SO.SortingOrderNo) AS R'#229'vara'
      ''
      'FROM dbo.SortingOrder SO'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = SO.Produc' +
        'tionUnitNo'
      ''
      ''
      'WHERE SO.ProducerNo = :ProducerNo'
      
        'AND ((SO.SortingOrderNo = :SortingOrderNo) OR (0 = :SortingOrder' +
        'No))'
      
        'AND ((SO.ProductionUnitNo = :ProductionUnitNo) OR (0 = :Producti' +
        'onUnitNo))'
      'AND ((SO.PIPNo = :PIPNo) OR (0 = :PIPNo))'
      'AND ((SO.Status = :Status) OR (-1 = :Status))'
      ''
      ''
      'Order By rp.RegPointName, SO.SortingOrderNo DESC')
    Left = 520
    Top = 24
    ParamData = <
      item
        Name = 'PRODUCERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        ParamType = ptInput
      end
      item
        Name = 'PIPNO'
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SortOrderListSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SortOrderListRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object cds_SortOrderListMtpunkt: TStringField
      FieldName = 'M'#228'tpunkt'
      Origin = '[M'#228'tpunkt]'
      FixedChar = True
      Size = 30
    end
    object cds_SortOrderListFrdigvara: TStringField
      FieldName = 'F'#228'rdigvara'
      Origin = '[F'#228'rdigvara]'
      ReadOnly = True
      Size = 107
    end
    object cds_SortOrderListRvara: TStringField
      FieldName = 'R'#229'vara'
      Origin = '[R'#229'vara]'
      ReadOnly = True
      Size = 100
    end
    object cds_SortOrderListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object ds_SorOrdRow: TDataSource
    DataSet = cds_SorOrdRow
    Left = 310
    Top = 184
  end
  object ds_SORaw: TDataSource
    DataSet = cds_SORaw
    Left = 414
    Top = 128
  end
  object cds_SorOrdRow: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select gd.GradeName AS Kvalitet, sc.SpeciesName AS Tr'#228'slag, sf.S' +
        'urfacingName AS Utf'#246'rande,'
      
        'pc.ProductCategoryName AS IMP, pg.ActualThicknessMM AS AT, pg.Ac' +
        'tualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'SOR.*, CSD.Reference AS M'#196'RKE,'
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
      'pd.ProductDisplayName AS Produkt'
      'FROM dbo.SortingOrderRow SOR'
      
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
    Left = 310
    Top = 136
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
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
    object cds_SorOrdRowPlannedAM3: TBCDField
      DisplayLabel = 'AM3'
      FieldName = 'PlannedAM3'
      Origin = 'PlannedAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowNoOfUnits: TBCDField
      FieldName = 'NoOfUnits'
      Origin = 'NoOfUnits'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
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
    object cds_SorOrdRowCostDist: TBCDField
      FieldName = 'CostDist'
      Origin = 'CostDist'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SorOrdRowPrice: TBCDField
      DisplayLabel = 'Pris'
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
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
    object cds_SorOrdRowAM3: TBCDField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowPCS: TIntegerField
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowAM1: TBCDField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowOutturnOfInputAM3: TBCDField
      FieldName = 'OutturnOfInputAM3'
      Origin = 'OutturnOfInputAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowProductValue: TBCDField
      FieldName = 'ProductValue'
      Origin = 'ProductValue'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
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
    object cds_SorOrdRowPlannedNM3: TBCDField
      DisplayLabel = 'NM3'
      FieldName = 'PlannedNM3'
      Origin = 'PlannedNM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowArtikelKod: TStringField
      DisplayLabel = 'Artikelkod'
      FieldName = 'ArtikelKod'
      Origin = 'ArtikelKod'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_SorOrdRowMRKE: TStringField
      FieldName = 'M'#196'RKE'
      Origin = '[M'#196'RKE]'
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
    object cds_SorOrdRowLONR: TIntegerField
      FieldName = 'LONR'
      Origin = 'LONR'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SorOrdRowSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
      Origin = 'SpeciesNo'
      ProviderFlags = []
    end
    object cds_SorOrdRowSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = []
    end
    object cds_SorOrdRowProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      ProviderFlags = []
      Size = 100
    end
  end
  object cds_SORaw: TFDQuery
    CachedUpdates = True
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
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.ProductNo) AS AM3,'
      ''
      
        '(Select SUM(pt.Totalm3Nominal) FROM dbo.SortingOrderUsedPkgs SOR' +
        'P'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.ProductNo) AS NM3,'
      ''
      
        '(Select SUM(pt.TotalNoOfPieces) FROM dbo.SortingOrderUsedPkgs SO' +
        'RP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.ProductNo) AS PCS,'
      ''
      
        '(Select SUM(pt.TotalLinealMeterActualLength) FROM dbo.SortingOrd' +
        'erUsedPkgs SORP'
      
        'Inner Join dbo.PackageType pt on pt.PackageTypeNo = Sorp.Package' +
        'TypeNo'
      'WHERE'
      ' SORP.SortingOrderNo = SOR.ID'
      'AND PT.ProductNo = SOR.ProductNo) AS AM1,'
      'P.GradeNo, PG.SpeciesNo, PG.SurfacingNo, PG.ProductCategoryNo,'
      'pg.ActualThicknessMM AS AT, pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'P.ProductDisplayName AS Produkt'
      ''
      'FROM dbo.RawMtrlBookedDtl SOR'
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.BookedProductLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = SOR.BookedProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE SOR.ID = :SortingOrderNo'
      ''
      '')
    Left = 414
    Top = 72
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_SORawProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawMCClassNo: TIntegerField
      DisplayLabel = 'Delas f'#246're hyvling'
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
      Origin = 'KassationStyck'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawKassationAM3: TBCDField
      FieldName = 'KassationAM3'
      Origin = 'KassationAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawAvgLength: TBCDField
      FieldName = 'AvgLength'
      Origin = 'AvgLength'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawLengthDescription: TStringField
      DisplayLabel = 'L'#228'ngdbeskrivning'
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cds_SORawPlannedAM1: TBCDField
      DisplayLabel = 'AM1'
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawAntalBitarUt: TIntegerField
      FieldName = 'AntalBitarUt'
      Origin = 'AntalBitarUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawPercentPcsOfTotal: TFMTBCDField
      FieldName = 'PercentPcsOfTotal'
      Origin = 'PercentPcsOfTotal'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawKassationAM1: TBCDField
      FieldName = 'KassationAM1'
      Origin = 'KassationAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawTrimAM1: TFMTBCDField
      FieldName = 'TrimAM1'
      Origin = 'TrimAM1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawTrimAM3: TFMTBCDField
      FieldName = 'TrimAM3'
      Origin = 'TrimAM3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object cds_SORawMainRawMtrl: TIntegerField
      DisplayLabel = 'Huvudvara'
      FieldName = 'MainRawMtrl'
      Origin = 'MainRawMtrl'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawRealLPM: TBCDField
      FieldName = 'RealLPM'
      Origin = 'RealLPM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SORawProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
      Origin = 'ProductLengthNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawAntalKapSnitt: TIntegerField
      DisplayLabel = 'Kapsnitt'
      FieldName = 'AntalKapSnitt'
      Origin = 'AntalKapSnitt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawAntalLamellerUt: TIntegerField
      DisplayLabel = 'Lameller'
      FieldName = 'AntalLamellerUt'
      Origin = 'AntalLamellerUt'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawaPcs: TIntegerField
      FieldName = 'aPcs'
      Origin = 'aPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawaAM1: TBCDField
      FieldName = 'aAM1'
      Origin = 'aAM1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SORawAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SORawNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SORawPCS: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PCS'
      Origin = 'PCS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SORawAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
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
      Origin = '[AT]'
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
      Size = 100
    end
    object cds_SORawPricePerNM3: TBCDField
      DisplayLabel = 'Pris/NM3'
      FieldName = 'PricePerNM3'
      Origin = 'PricePerNM3'
      DisplayFormat = '#,###.00'
      Precision = 18
      Size = 3
    end
    object cds_SORawBookedNM3: TBCDField
      DisplayLabel = 'Bokad NM3'
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      Precision = 18
      Size = 3
    end
  end
  object ds_NewPkgs: TDataSource
    DataSet = cds_NewPkgs
    Left = 310
    Top = 288
  end
  object ds_UsedPkgs: TDataSource
    DataSet = cds_UsedPkgs
    Left = 414
    Top = 232
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
      ''
      'IsNull(Split.PackageNo,0) AS OldPackageNo,'
      'Split.SupplierCode AS OldSupplierCode,'
      ''
      'IsNull(Split.PackageTypeNo,0) AS OldPackageTypeNo,'
      'SORP.DateCreated AS Registrerad,'
      'SORP.SortingOrderNo,'
      
        'RTRIM(Cy.CityName) + '#39'/'#39' + RTRIM(LIP.LogicalInventoryName) AS La' +
        'ger,'
      'SO.ProducerNo,'
      'SO.ProductionUnitNo,'
      'SO.OwnerNo,'
      'P.LengthSpecNo,'
      'SORP.PkgNoInvCount,'
      'SORP.PrefixInvCount'
      'FROM'
      'dbo.SortingOrderUsedPkgs SORP'
      
        'Inner Join dbo.SortingOrder SO on SO.SortingOrderNo = SORP.Sorti' +
        'ngOrderNo'
      ''
      'LEFT OUTER JOIN dbo.PackageType P'
      
        'INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo = p.P' +
        'ackageTypeNo'
      'INNER JOIN dbo.Product PR'#9#9'ON'#9'PR.ProductNo = P.ProductNo'
      'ON '#9'P.PackageTypeNo = SORP.PackageTypeNo'
      
        'LEFT OUTER JOIN dbo.SortingOrderSplitPkgs Split on Split.NewPack' +
        'ageNo = SORP.PackageNo'
      
        '                                    AND Split.NewSupplierCode = ' +
        'SORP.SupplierCode'
      ''
      'Left Outer Join dbo.LogicalInventoryPoint LIP'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP ON PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      'Inner Join dbo.City Cy  ON Cy.CityNo = PIP.PhyInvPointNameNo'
      'ON LIP.LogicalInventoryPointNo = SORP.OldLipNo'
      ''
      'WHERE'
      'SORP.SortingOrderNo = :SortingOrderNo')
    Left = 414
    Top = 184
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
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
    object cds_UsedPkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_UsedPkgsAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
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
    object cds_UsedPkgsLager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_UsedPkgsProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
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
    object cds_UsedPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.0'
    end
    object cds_UsedPkgsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_UsedPkgsProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
    end
    object cds_UsedPkgsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_UsedPkgsLengthSpecNo: TIntegerField
      FieldName = 'LengthSpecNo'
      Origin = 'LengthSpecNo'
    end
    object cds_UsedPkgsPkgNoInvCount: TIntegerField
      FieldName = 'PkgNoInvCount'
      Origin = 'PkgNoInvCount'
    end
    object cds_UsedPkgsPrefixInvCount: TStringField
      FieldName = 'PrefixInvCount'
      Origin = 'PrefixInvCount'
      FixedChar = True
      Size = 3
    end
  end
  object cds_NewPkgs: TFDQuery
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
      '  PN.DateCreated AS Registrerad'
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
      ''
      
        '     Inner Join dbo.PackageNumber pn on pn.PackageNo = SORP.Pack' +
        'ageNo'
      
        '                                    AND pn.SupplierCode = SORP.S' +
        'upplierCode'
      ''
      
        '      INNER JOIN dbo.PackageTypeLengths ptl on ptl.PackageTypeNo' +
        ' = p.PackageTypeNo'
      '      INNER JOIN dbo.Product PR ON PR.ProductNo = P.ProductNo'
      
        '      Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.Logic' +
        'alInventoryPointNo = SORP.OldLIPNo'
      
        '      Left Outer Join dbo.PhysicalInventoryPoint PIP on PIP.Phys' +
        'icalInventoryPointNo = LIP.PhysicalInventoryPointNo'
      '      WHERE'
      '      SORP.SortingOrderNo = :SortingOrderNo'
      ''
      '      Order By PN.DateCreated')
    Left = 310
    Top = 240
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
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
    object cds_NewPkgsAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsSTYCK: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'STYCK'
      Origin = 'STYCK'
    end
    object cds_NewPkgsAM1: TFloatField
      FieldName = 'AM1'
      Origin = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object cds_NewPkgsNM3: TFloatField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
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
    object cds_NewPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
    object cds_NewPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_NewPkgsMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
      DisplayFormat = '#,###,###.0'
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
    object cds_NewPkgsPris: TBCDField
      FieldName = 'Pris'
      Origin = 'Pris'
      Precision = 18
      Size = 2
    end
    object cds_NewPkgsPrice_SEKPerNM3: TBCDField
      DisplayLabel = 'Price/NM3'
      FieldName = 'Price_SEKPerNM3'
      Origin = 'Price_SEKPerNM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 1
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
  end
  object FDm_PaRegPkgs: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 310
    Top = 81
    object FDm_PaRegPkgsPaketNr: TIntegerField
      FieldName = 'PaketNr'
    end
    object FDm_PaRegPkgsPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
    object FDm_PaRegPkgsProdukt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object FDm_PaRegPkgsStyckPerLangd: TStringField
      DisplayLabel = 'St/L'#228'ngd'
      FieldName = 'StyckPerLangd'
      Size = 250
    end
    object FDm_PaRegPkgsAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_PaRegPkgsTotaltStyck: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'TotaltStyck'
    end
    object FDm_PaRegPkgsAM1: TFloatField
      FieldName = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_PaRegPkgsNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_PaRegPkgsStatus: TIntegerField
      FieldName = 'Status'
    end
    object FDm_PaRegPkgsOperationStatus: TIntegerField
      FieldName = 'OperationStatus'
    end
    object FDm_PaRegPkgsLager: TStringField
      FieldName = 'Lager'
      Size = 101
    end
  end
  object FDm_AvRegPkgs: TFDMemTable
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'FDm_Avreg_Index01'
        Fields = 'PaketNr;Prefix'
      end>
    IndexName = 'FDm_Avreg_Index01'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 414
    Top = 25
    object FDm_AvRegPkgsPaketNr: TIntegerField
      FieldName = 'PaketNr'
    end
    object FDm_AvRegPkgsPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
    object FDm_AvRegPkgsProdukt: TStringField
      FieldName = 'Produkt'
      Size = 100
    end
    object FDm_AvRegPkgsStyckPerLangd: TStringField
      DisplayLabel = 'St/L'#228'ngd'
      FieldName = 'StyckPerLangd'
      Size = 250
    end
    object FDm_AvRegPkgsAM3: TFloatField
      FieldName = 'AM3'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_AvRegPkgsTotaltStyck: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'TotaltStyck'
    end
    object FDm_AvRegPkgsAM1: TFloatField
      FieldName = 'AM1'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_AvRegPkgsNM3: TFloatField
      FieldName = 'NM3'
      DisplayFormat = '#,###,###.0'
    end
    object FDm_AvRegPkgsStatus: TIntegerField
      FieldName = 'Status'
    end
    object FDm_AvRegPkgsOperationStatus: TIntegerField
      FieldName = 'OperationStatus'
    end
    object FDm_AvRegPkgsLager: TStringField
      FieldName = 'Lager'
      Size = 101
    end
    object FDm_AvRegPkgsPaketnrAttAvReg: TIntegerField
      FieldName = 'PaketnrAttAvReg'
    end
    object FDm_AvRegPkgsPrefixAttAvReg: TStringField
      FieldName = 'PrefixAttAvReg'
      Size = 3
    end
    object FDm_AvRegPkgsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object FDm_AvRegPkgsLIPNoAttAvReg: TIntegerField
      FieldName = 'LIPNoAttAvReg'
    end
    object FDm_AvRegPkgsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
    end
    object FDm_AvRegPkgsPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object FDm_AvRegPkgsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object FDm_AvRegPkgsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object FDm_AvRegPkgsLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object FDm_AvRegPkgsLengthSpecNo: TIntegerField
      FieldName = 'LengthSpecNo'
    end
    object FDm_AvRegPkgsSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object FDm_AvRegPkgsNT: TFloatField
      FieldName = 'NT'
    end
    object FDm_AvRegPkgsPackageTypeNoAttAvReg: TIntegerField
      FieldName = 'PackageTypeNoAttAvReg'
    end
    object FDm_AvRegPkgsAvRegistreratOK: TIntegerField
      FieldName = 'AvRegistreratOK'
    end
    object FDm_AvRegPkgsOriginalPaketnr: TIntegerField
      FieldName = 'OriginalPaketnr'
    end
    object FDm_AvRegPkgsOriginalPrefix: TStringField
      FieldName = 'OriginalPrefix'
      Size = 3
    end
    object FDm_AvRegPkgsRegistrerad: TDateTimeField
      FieldName = 'Registrerad'
    end
    object FDm_AvRegPkgsShiftTeamNo: TIntegerField
      FieldName = 'ShiftTeamNo'
    end
  end
  object sp_vis_AvRegPkg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_AvRegPkg_IIB'
    Left = 632
    Top = 240
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
        Name = '@ProducerNo'
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
      end
      item
        Position = 11
        Name = '@PackageNoAttAvReg'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@SupplierCodeAttAvReg'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 13
        Name = '@ShiftTeamNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDq_GetLIPAttAvRegMot: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  pn.SupplierCode, LIPGH.LIPGroupNo, '
      
        'IsNull(LIPGH.InvenType,0) AS InvenType, -- Paketnr eller paketty' +
        'p baserat'
      'LIPG.LIPNo, -- samma som paketet'
      ''
      '(Select LIPG2.LIPNo from dbo.LIPGroup LIPG2'
      'WHERE'
      ' LIPG2.LIPGroupNo = LIPGH.LIPGroupNo'
      
        'AND LIPG2.AvReg = 1 ) AS AvReg, -- LIP som det skall avregistrer' +
        'as mot'
      ''
      
        'pn.LogicalInventoryPointNo AS PkgRealLIPNo, --LIP som paketet '#228'r' +
        ' registrerat p'#229
      ''
      '(Select LIPG2.AvReg from dbo.LIPGroup LIPG2'
      'WHERE'
      ' LIPG2.LIPGroupNo = LIPGH.LIPGroupNo'
      'AND LIPG2.AvReg = 1 '
      'AND LIPG2.LIPNo = PN.LogicalInventoryPointNo) AS AvReg'
      ''
      ''
      'FROM  dbo.PackageNumber pn'
      
        'Inner Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventory' +
        'PointNo = PN.LogicalInventoryPointNo'
      
        'Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInvento' +
        'ryPointNo = LIP.PhysicalInventoryPointNo'
      
        'Left Outer Join dbo.LIPGroup LIPG on LIPG.LIPNo = PN.LogicalInve' +
        'ntoryPointNo'
      
        'Left Outer Join dbo.LIPGroupHdr LIPGH on LIPGH.LIPGroupNo = LIPG' +
        '.LIPGroupNo'
      'AND LIPGH.ClientNo = PIP.OwnerNo'
      ''
      'WHERE PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode')
    Left = 312
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
    object FDq_GetLIPAttAvRegMotSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object FDq_GetLIPAttAvRegMotLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
    end
    object FDq_GetLIPAttAvRegMotInvenType: TIntegerField
      FieldName = 'InvenType'
      Origin = 'InvenType'
    end
    object FDq_GetLIPAttAvRegMotLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object FDq_GetLIPAttAvRegMotAvReg: TIntegerField
      FieldName = 'AvReg'
      Origin = 'AvReg'
      ReadOnly = True
    end
    object FDq_GetLIPAttAvRegMotPkgRealLIPNo: TIntegerField
      FieldName = 'PkgRealLIPNo'
      Origin = 'PkgRealLIPNo'
    end
  end
  object FDq_GetAvRegPkgNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        ' Select top 1 pn.DateCreated, pn.PackageNo, pn.SupplierCode, pt.' +
        'LengthSpecNo,'
      ' pn.LogicalInventoryPointNo'
      ' FROM dbo.PackageNumber pn'
      
        ' Inner Join dbo.PackageType pt on pt.PackageTypeNo = pn.PackageT' +
        'ypeNo'
      ''
      
        ' Inner Join dbo.LipGroup lg on lg.LIPNo = pn.LogicalInventoryPoi' +
        'ntNo'
      
        ' Inner Join dbo.LIPGroupHdr lgh on lgh.LIPGroupNo = lg.LIPGroupN' +
        'o'
      ' WHERE'
      ' pt.LengthSpecNo = :LengthSpecNo'
      ' and pn.Status = 1'
      ''
      #9'AND lgh.ClientNo = :OwnerNo'
      #9'AND lgh.InvenType = 1'
      #9'AND lg.AvRegII = 1'
      ''
      'Order By pn.DateCreated')
    Left = 632
    Top = 408
    ParamData = <
      item
        Name = 'LENGTHSPECNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDq_GetAvRegPkgNoPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDq_GetAvRegPkgNoSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object FDq_GetAvRegPkgNoLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
    end
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
      '-- AND PN.Status = :Status'
      'AND PIP.OwnerNo = :OwnerNo')
    Left = 424
    Top = 416
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
  object sp_NewSplitPkg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_SONewSplitPkg_II'
    Left = 632
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
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = '@OldPackageNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = '@OldPrefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 14
        Name = '@OldPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 15
        Name = '@PkgNoInvCount'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = '@PrefixInvCount'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end>
  end
  object sp_SOUpdOldSplit: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_SOUpdOldSplit_II'
    Left = 632
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
        Name = 'AT'
        DataType = ftFloat
      end
      item
        Name = 'AB'
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
        Name = 'IMPNo'
        DataType = ftInteger
      end
      item
        Name = 'GradeNo'
        DataType = ftInteger
      end
      item
        Name = 'LoadDetailNo'
        DataType = ftInteger
      end
      item
        Name = 'OLDProductNo'
        DataType = ftInteger
      end>
    IndexFieldNames = 'LoadDetailNo'
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 424
    Top = 472
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
  object sp_RegretDeReg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.Vis_CnclAvreg'
    Left = 632
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
  object sp_PackageTypes: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_PkgType_II'
    Left = 160
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
    object sp_PackageTypesPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
      Origin = 'PackageTypeNo'
      Required = True
    end
  end
  object sp_PackageTypeDetail: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_PackageTypeDetail'
    Left = 160
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
    Left = 518
    Top = 80
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
      Required = True
    end
    object cdsProdLengthALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      Required = True
    end
    object cdsProdLengthNLMM: TFloatField
      FieldName = 'NLMM'
      Origin = 'NLMM'
      Required = True
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
  object sp_NewPackageType: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_NewPkgType'
    Left = 160
    Top = 136
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
    Left = 160
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
    Left = 160
    Top = 248
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
  object sp_OnePackageNo: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_OnePackageNo'
    Left = 160
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
    Left = 160
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
        Name = '@SearchPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object mtPcsPerLength: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'ProductLengthNo'
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
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 312
    Top = 416
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
  object ds_PksByInventoryPlaceIIII: TDataSource
    DataSet = cds_PksByInventoryPlaceIIII
    Left = 776
    Top = 200
  end
  object sp_AngraSplitPkg: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_AODelSplitPkgFromSystem'
    Left = 632
    Top = 184
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
      end
      item
        Position = 7
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = '@OldPackageTypeNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = '@SupplierNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDm_Settings: TFDMemTable
    AfterInsert = FDm_SettingsAfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 314
    Top = 23
    object FDm_SettingsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
    end
    object FDm_SettingsSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
    object FDm_SettingsSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      OnChange = FDm_SettingsSortingOrderNoChange
    end
    object FDm_SettingsProductInRun: TIntegerField
      FieldName = 'ProductInRun'
      OnChange = FDm_SettingsOwnInventoryChange
    end
    object FDm_SettingsOwnInventory: TIntegerField
      FieldName = 'OwnInventory'
      OnChange = FDm_SettingsOwnInventoryChange
    end
    object FDm_SettingsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
    end
    object FDm_SettingsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object FDm_SettingsPIPNo: TIntegerField
      FieldName = 'PIPNo'
    end
    object FDm_SettingsVisaAllaAvRegPkt: TIntegerField
      FieldName = 'VisaAllaAvRegPkt'
      OnChange = FDm_SettingsVisaAllaAvRegPktChange
    end
    object FDm_SettingsKassationStyck: TIntegerField
      FieldName = 'KassationStyck'
    end
  end
  object sp_Pkg_Res: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_Pkg_ResModul'
    Left = 632
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
        Name = '@Asking_Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@Asking_UserName'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = '@UserName'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end
      item
        Position = 8
        Name = '@Modul'
        DataType = ftFixedChar
        ParamType = ptInputOutput
        Size = 20
      end>
  end
  object sp_Delete_Res_Pkgs: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_Del_Pkg_ResModul'
    Left = 632
    Top = 296
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
        Name = '@Modul'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
  object sp_lencolpcspkgtypeno: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vis_lencolpcspkgtypeno'
    Left = 160
    Top = 408
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
  object sq_GetPkgPos: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select C.ClientCode, C.PktNrLevKod, C.PaketNoPos, C.PaketNoLengt' +
        'h,'
      'C.SupplierCodePos, C.SupplierCodeLength'
      'FROM dbo.client C'
      ''
      'Where C.ClientID = :ClientID')
    Left = 744
    Top = 360
    ParamData = <
      item
        Name = 'CLIENTID'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgPosClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_GetPkgPosPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
    object sq_GetPkgPosPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      Origin = 'PaketNoPos'
    end
    object sq_GetPkgPosPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      Origin = 'PaketNoLength'
    end
    object sq_GetPkgPosSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      Origin = 'SupplierCodePos'
    end
    object sq_GetPkgPosSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      Origin = 'SupplierCodeLength'
    end
  end
  object sq_GetPkgPrefix: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct pf.PkgPrefix'
      'FROM dbo.PkgPrefix pf'
      'WHERE pf.ProductionUnitCode = :ProductionUnitCode'
      'AND pf.ClientID = :ClientID')
    Left = 744
    Top = 416
    ParamData = <
      item
        Name = 'PRODUCTIONUNITCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CLIENTID'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgPrefixPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      Size = 3
    end
  end
  object FDm_SelectPkgNo: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 312
    Top = 528
    object FDm_SelectPkgNoPaketnr: TIntegerField
      FieldName = 'Paketnr'
    end
    object FDm_SelectPkgNoPrefix: TStringField
      FieldName = 'Prefix'
      Size = 3
    end
    object FDm_SelectPkgNoStyckPerLangd: TStringField
      DisplayLabel = 'St/l'#228'ngd'
      FieldName = 'StyckPerLangd'
      Size = 255
    end
    object FDm_SelectPkgNoAM3: TFloatField
      FieldName = 'AM3'
    end
    object FDm_SelectPkgNoStyck: TIntegerField
      FieldName = 'Styck'
    end
    object FDm_SelectPkgNoRegistrerat: TSQLTimeStampField
      FieldName = 'Registrerat'
    end
    object FDm_SelectPkgNoNoOfLengths: TIntegerField
      FieldName = 'NoOfLengths'
    end
    object FDm_SelectPkgNoProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
    object FDm_SelectPkgNoPackageTypeNo: TIntegerField
      FieldName = 'PackageTypeNo'
    end
    object FDm_SelectPkgNoLager: TStringField
      FieldName = 'Lager'
      Size = 101
    end
    object FDm_SelectPkgNoMarkerad: TIntegerField
      FieldName = 'Markerad'
    end
    object FDm_SelectPkgNoLIPNo: TIntegerField
      FieldName = 'LIPNo'
    end
    object FDm_SelectPkgNoSpeciesNo: TIntegerField
      FieldName = 'SpeciesNo'
    end
    object FDm_SelectPkgNoSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
    end
    object FDm_SelectPkgNoGradeNo: TIntegerField
      FieldName = 'GradeNo'
    end
    object FDm_SelectPkgNoIMPNo: TIntegerField
      FieldName = 'IMPNo'
    end
    object FDm_SelectPkgNoAT: TFloatField
      FieldName = 'AT'
    end
    object FDm_SelectPkgNoAB: TFloatField
      FieldName = 'AB'
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
      'WHERE PIP.OwnerNo = :OwnerNo'
      'AND pn.Status = 1'
      'Order By pr.ProductDisplayName')
    Left = 312
    Top = 576
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
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
  object spAccessRights: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_vida.dbo.vida_UserRights_V4'
    Left = 48
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
        Name = '@UserName'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 3
        Name = '@UserPswd'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 4
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 5
        Name = '@Company'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 6
        Name = '@InvSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 7
        Name = '@IntOrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 8
        Name = '@ProdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 9
        Name = '@CliSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 10
        Name = '@OrdSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 11
        Name = '@BaseSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 12
        Name = '@fAvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 13
        Name = '@fARSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 14
        Name = '@fSkeppInstrSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 15
        Name = '@fKP_ListaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 16
        Name = '@fUtlastningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 17
        Name = '@fFakturaSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 18
        Name = '@fAvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 19
        Name = '@fFrakt_AvrakningSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 20
        Name = '@fAdd_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 21
        Name = '@fAsk_packagesSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 22
        Name = '@fReport_AvropSec'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 23
        Name = '@EditLoadOrder'
        DataType = ftInteger
        ParamType = ptInputOutput
      end
      item
        Position = 24
        Name = '@ShowPrice'
        DataType = ftInteger
        ParamType = ptInputOutput
      end>
  end
  object ds_Prefix: TDataSource
    DataSet = sq_Prefix
    Left = 744
    Top = 520
  end
  object sq_Prefix: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct C.ClientCode, C.ClientName, C.ClientNo'
      'FROM dbo.Client C'
      'Inner Join dbo.ClientRole CR on CR.ClientNo = C.ClientNo'
      'WHERE'
      '(CR.RoleType = 2 or CR.RoleType = 9)'
      'AND C.Act = 1'
      'AND C.ClientCode > '#39#39)
    Left = 744
    Top = 472
    object sq_PrefixClientCode: TStringField
      DisplayLabel = 'Prefix'
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
    object sq_PrefixClientName: TStringField
      DisplayLabel = 'F'#246'retag'
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_PrefixClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_RegPoint: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT Distinct RP.RegPointName AS ProductionUnitName,'
      'RP.RegPointNo AS RegistrationPointNo'
      'FROM dbo.RegistrationPoint RP'
      'ORDER BY RP.RegPointName')
    Left = 520
    Top = 136
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
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 518
    Top = 184
  end
  object FD_SortingOrder: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select SO.SortingOrderNo,'
      'SO.ProductionUnitNo AS RegPointNo,'
      'SO.ProducerNo, SO.OwnerNo, SO.PIPNo'
      ''
      ''
      'FROM dbo.SortingOrder SO'
      'WHERE (SO.SortingOrderNo = :SortingOrderNo)'
      '')
    Left = 416
    Top = 304
    ParamData = <
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FD_SortingOrderProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object FD_SortingOrderOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object FD_SortingOrderSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_SortingOrderRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
    end
    object FD_SortingOrderPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object dm_Settings: TDataSource
    DataSet = FDm_Settings
    Left = 248
    Top = 24
  end
  object cds_PkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'#9'PN.PackageNo AS PaketNr,'
      #9#9'PN.SupplierCode AS Prefix,'
      #9#9'Pr.ProductDisplayName AS Produkt,'
      #9#9'dbo.vida_LengthDescription(PN.PackageTypeNo) AS L'#228'ngd,'
      #9#9'Cy.CityName + '#39'/'#39' + LI.LogicalInventoryName AS FinnsILager,'
      ''
      #9#9'CASE WHEN PIP.PhyInvPointNameNo = 1 THEN '#39'JA, '#39' + Cy.CityName'
      #9#9'ELSE'
      '        '#39'NEJ, '#39' + Cy.CityName'
      #9#9'END AS R'#228'ttLager,'
      ''
      
        #9#9'CASE WHEN (PIP.OwnerNo   = :InvOwner) OR (PIP.OwnerNo   = :Inv' +
        'OwnerII) THEN '#39'JA, '#39' + Cl.ClientName'
      #9#9'ELSE'
      #9#9#39'NEJ, '#39' + Cl.ClientName'
      #9#9'END AS R'#228'tt'#196'gare,'
      ''
      #9#9'Cl.ClientName AS '#196'gare,'
      #9'   CASE WHEN pn.Status = 1 THEN '#39'Aktivt'#39
      #9#9'ELSE'
      '         '#39'Avaktiverat'#39
      #9'   END AS Lagerstatus,'
      ''
      
        'IsNull((Select Top 1  '#39'JA ('#39' + CAST(pg.ActualThicknessMM AS Varc' +
        'har(7)) + '#39'x'#39' + CAST(pg.ActualWidthMM AS Varchar(7)) + '#39')'#39
      'FROM dbo.RawMtrlBookedDtl rmd'
      'Inner Join dbo.Product p on p.ProductNo = rmd.BookedProductNo'
      
        'Inner join dbo.ProductGroup pg2 on pg2.ProductGroupNo = p.Produc' +
        'tGroupNo'
      'WHERE rmd.ID = :SortingOrderNo'
      'AND pg2.ActualThicknessMM = pg.ActualThicknessMM'
      
        'AND pg2.ActualWidthMM = pg.ActualWidthMM),'#39'NEJ ('#39' + CAST(pg.Actu' +
        'alThicknessMM AS Varchar(7)) + '#39'x'#39' + CAST(pg.ActualWidthMM AS Va' +
        'rchar(7)) + '#39')'#39
      ') AS R'#228'ttDimension,'
      ''
      
        'IsNull((Select top 1 '#39'JA, k'#246'rnr: '#39' + CAST(Pag.SortingOrderNo AS ' +
        'Varchar(7)) FROM dbo.SortingOrderUsedPkgs Pag'
      'WHERE Pag.SupplierCode = PN.SupplierCode'
      
        'and Pag.PackageNo = PN.PackageNo),'#39'NEJ               '#39') AS Avreg' +
        'istrerat,'
      ''
      #9#9'Pr.ProductNo,'
      #9#9'PN.LogicalInventoryPointNo AS LIPNo,'
      #9#9'PN.SupplierNo AS ProducerNo,'
      #9#9'PIP.OwnerNo,'
      #9#9'LI.PhysicalInventoryPointNo AS PIPNo'
      ''
      'FROM dbo.PackageNumber          PN'
      
        '       INNER       JOIN  dbo.PackageType            PT ON  PT.Pa' +
        'ckageTypeNo            = PN.PackageTypeNo'
      
        '       INNER       JOIN  dbo.Product                Pr ON  Pr.Pr' +
        'oductNo                = PT.ProductNo'
      
        '   '#9#9'Inner join dbo.ProductGroup pg on pg.ProductGroupNo = pr.Pr' +
        'oductGroupNo'
      
        '       INNER       JOIN  dbo.LogicalInventoryPoint  LI ON  LI.Lo' +
        'gicalInventoryPointNo  = PN.LogicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.PhysicalInventoryPoint PIP ON  PIP.' +
        'PhysicalInventoryPointNo = LI.PhysicalInventoryPointNo'
      
        '       INNER       JOIN  dbo.City                 Cy ON  Cy.City' +
        'No = PIP.PhyInvPointNameNo'
      
        '       INNER       JOIN  dbo.Client                 Cl ON  Cl.Cl' +
        'ientNo = PN.SupplierNo'
      'WHERE  PN.PackageNo = :PkgNo'
      
        'AND ((PN.SupplierCode = :SupplierCode) or ('#39'___'#39' = :SupplierCode' +
        '))'
      '-- AND PN.DateCreated > '#39'2010-01-01'#39)
    Left = 552
    Top = 512
    ParamData = <
      item
        Name = 'INVOWNER'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'INVOWNERII'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SORTINGORDERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PKGNO'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'SUPPLIERCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PkgInfoPaketNr: TIntegerField
      FieldName = 'PaketNr'
      Origin = 'PaketNr'
      Required = True
    end
    object cds_PkgInfoPrefix: TStringField
      FieldName = 'Prefix'
      Origin = 'Prefix'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgInfoProdukt: TStringField
      FieldName = 'Produkt'
      Origin = 'Produkt'
      Size = 150
    end
    object cds_PkgInfoLngd: TStringField
      FieldName = 'L'#228'ngd'
      Origin = '[L'#228'ngd]'
      ReadOnly = True
      Size = 255
    end
    object cds_PkgInfoFinnsILager: TStringField
      FieldName = 'FinnsILager'
      Origin = 'FinnsILager'
      ReadOnly = True
      Size = 101
    end
    object cds_PkgInfoRttLager: TStringField
      FieldName = 'R'#228'ttLager'
      Origin = '[R'#228'ttLager]'
      ReadOnly = True
      Size = 55
    end
    object cds_PkgInfoRttgare: TStringField
      FieldName = 'R'#228'tt'#196'gare'
      Origin = '[R'#228'tt'#196'gare]'
      ReadOnly = True
      Size = 85
    end
    object cds_PkgInfogare: TStringField
      FieldName = #196'gare'
      Origin = '['#196'gare]'
      Size = 80
    end
    object cds_PkgInfoLagerstatus: TStringField
      FieldName = 'Lagerstatus'
      Origin = 'Lagerstatus'
      ReadOnly = True
      Required = True
      Size = 11
    end
    object cds_PkgInfoRttDimension: TStringField
      FieldName = 'R'#228'ttDimension'
      Origin = '[R'#228'ttDimension]'
      ReadOnly = True
    end
    object cds_PkgInfoAvregistrerat: TStringField
      FieldName = 'Avregistrerat'
      Origin = 'Avregistrerat'
      ReadOnly = True
      Required = True
      Size = 18
    end
    object cds_PkgInfoProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      Required = True
    end
    object cds_PkgInfoLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_PkgInfoProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
    end
    object cds_PkgInfoOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_PkgInfoPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
  end
  object ds_PkgInfo: TDataSource
    DataSet = cds_PkgInfo
    Left = 552
    Top = 568
  end
  object siLangLinked_dm_Vis_Vida: TsiLangLinked
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
    Left = 512
    Top = 384
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F004E006500770050006B006700730041004D003100010041004D003100
      01000100010001000D000A006300640073005F004E006500770050006B006700
      730041004D003300010041004D00330001000100010001000D000A0063006400
      73005F004E006500770050006B006700730041004E0054005000450052004C00
      4E00470044000100530074002F006C00E4006E00670064000100530074007900
      63006B002F006C00E4006E006700640001005000630073002F006C0065006E00
      670074006800010053007400790063006B002F006C00E4006E00670064000100
      0D000A006300640073005F004E006500770050006B00670073004C0049005000
      4E006F0001004C00490050004E006F0001000100010001000D000A0063006400
      73005F004E006500770050006B00670073004D00410058004C0045004E004700
      5400480001004D00410058004C0045004E004700540048000100010001000100
      0D000A006300640073005F004E006500770050006B00670073004D0041005800
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      4D0041005800500072006F0064007500630074004C0065006E00670074006800
      4E006F0001000100010001000D000A006300640073005F004E00650077005000
      6B00670073004D00460042004D0001004D00460042004D00010001004D004600
      42004D00010001000D000A006300640073005F004E006500770050006B006700
      73004E004D00330001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F004E006500770050006B00670073004F004C0044004C00
      490050004E006F0001004F004C0044004C00490050004E006F00010001000100
      01000D000A006300640073005F004E006500770050006B00670073004F004C00
      44004D00430043006C006100730073004E006F0001004F004C0044004D004300
      43006C006100730073004E006F0001000100010001000D000A00630064007300
      5F004E006500770050006B00670073005000610063006B006100670065004E00
      6F000100500061006B00650074006E0072000100500061006B00650074004E00
      7200010050006B0067004E006F000100500061006C006C004E00720001000D00
      0A006300640073005F004E006500770050006B00670073005000610063006B00
      61006700650054007900700065004E006F0001005000610063006B0061006700
      650054007900700065004E006F0001000100010001000D000A00630064007300
      5F004E006500770050006B006700730050006B00670053007400610074007500
      7300010050006B00670053007400610074007500730001000100010001000D00
      0A006300640073005F004E006500770050006B00670073005000720069006300
      65005F00530045004B005000650072004E004D00330001005000720069006300
      65002F004E004D00330001000100010001000D000A006300640073005F004E00
      6500770050006B0067007300500072006900630065004C006900730074004E00
      6F000100500072006900630065004C006900730074004E006F00010001000100
      01000D000A006300640073005F004E006500770050006B006700730050007200
      6900730001005000720069007300010001005000720069006300650001000100
      0D000A006300640073005F004E006500770050006B0067007300500072006F00
      64007500630074004E006F000100500072006F0064007500630074004E006F00
      01000100010001000D000A006300640073005F004E006500770050006B006700
      7300500052004F00440055004B0054000100500072006F00640075006B007400
      01000100500072006F006400750063007400010001000D000A00630064007300
      5F004E006500770050006B006700730052006500670069007300740072006500
      7200610064000100520065006700690073007400720065007200610064000100
      01005200650067006900730074006500720065006400010001000D000A006300
      640073005F004E006500770050006B006700730053006F007200740069006E00
      67004F0072006400650072004E006F00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00630064007300
      5F004E006500770050006B006700730053006F007200740069006E0067004F00
      720064006500720052006F0077004E006F00010053006F007200740069006E00
      67004F00720064006500720052006F0077004E006F0001000100010001000D00
      0A006300640073005F004E006500770050006B00670073005300740061007400
      7500730001005300740061007400750073000100010053007400610074007500
      7300010001000D000A006300640073005F004E006500770050006B0067007300
      53005400590043004B00010053007400790063006B0001000100500063007300
      01005300E40063006B0001000D000A006300640073005F004E00650077005000
      6B006700730053005500500050004C0049004500520043004F00440045000100
      5000720065006600690078000100010050007200650066006900780001000100
      0D000A006300640073005F004E006500770050006B0067007300560061007200
      750056006100720064006500010056006100720075007600E400720064006500
      01000100560061006C0075006500200077006900740068006F00750074002000
      6600720065006900670068007400010001000D000A006300640073005F005000
      6B00670049006E0066006F004100760072006500670069007300740072006500
      7200610074000100410076007200650067006900730074007200650072006100
      74000100010055006E0072006500670069007300740065007200650064000100
      01000D000A006300640073005F0050006B00670049006E0066006F0046006900
      6E006E00730049004C0061006700650072000100460069006E006E0073004900
      4C00610067006500720001000100010001000D000A006300640073005F005000
      6B00670049006E0066006F0067006100720065000100C4006700610072006500
      010001004F0077006E0065007200010001000D000A006300640073005F005000
      6B00670049006E0066006F004C00610067006500720073007400610074007500
      730001004C006100670065007200730074006100740075007300010001000100
      01000D000A006300640073005F0050006B00670049006E0066006F004C004900
      50004E006F0001004C00490050004E006F0001000100010001000D000A006300
      640073005F0050006B00670049006E0066006F004C006E006700640001004C00
      E4006E0067006400010001004C0065006E00670074006800010001000D000A00
      6300640073005F0050006B00670049006E0066006F004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F0001000100010001000D000A00
      6300640073005F0050006B00670049006E0066006F00500061006B0065007400
      4E0072000100500061006B00650074004E0072000100010050006B0067004E00
      6F000100500061006C006C006E00720001000D000A006300640073005F005000
      6B00670049006E0066006F005000490050004E006F0001005000490050004E00
      6F0001000100010001000D000A006300640073005F0050006B00670049006E00
      66006F0050007200650066006900780001005000720065006600690078000100
      0100500072006500660069007800010001000D000A006300640073005F005000
      6B00670049006E0066006F00500072006F00640075006300650072004E006F00
      0100500072006F00640075006300650072004E006F0001000100010001000D00
      0A006300640073005F0050006B00670049006E0066006F00500072006F006400
      7500630074004E006F000100500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F0050006B00670049006E0066006F00
      500072006F00640075006B0074000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006300640073005F00
      50006B00670049006E0066006F00520074007400440069006D0065006E007300
      69006F006E0001005200E40074007400440069006D0065006E00730069006F00
      6E0001000100010001000D000A006300640073005F0050006B00670049006E00
      66006F00520074007400670061007200650001005200E40074007400C4006700
      61007200650001000100010001000D000A006300640073005F0050006B006700
      49006E0066006F005200740074004C00610067006500720001005200E4007400
      74004C00610067006500720001000100010001000D000A006300640073005F00
      50006B0073004200790049006E00760065006E0074006F007200790050006C00
      610063006500490049004900490049006E0063006C0075006400650064004900
      6E00520075006E0001004D0061007400630068006100720020007200E5006D00
      740072006C0001000100010001000D000A006300640073005F0050006B007300
      4200790049006E00760065006E0074006F007200790050006C00610063006500
      490049004900490049006E0049006E00760065006E0074006F00720079000100
      490020006C00610067006500720001000100010001000D000A00630064007300
      5F0050006B0073004200790049006E00760065006E0074006F00720079005000
      6C0061006300650049004900490049004C00610067006500720001004C006100
      67006500720001000100530074006F0063006B00010001000D000A0063006400
      73005F0050006B0073004200790049006E00760065006E0074006F0072007900
      50006C0061006300650049004900490049004C00490050004E006F0001004C00
      490050004E006F0001000100010001000D000A006300640073005F0050006B00
      73004200790049006E00760065006E0074006F007200790050006C0061006300
      650049004900490049004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F0001000100010001000D000A006300640073005F0050006B00
      73004200790049006E00760065006E0074006F007200790050006C0061006300
      650049004900490049005000490050004E006F0001005000490050004E006F00
      01000100010001000D000A006300640073005F0050006B007300420079004900
      6E00760065006E0074006F007200790050006C00610063006500490049004900
      4900530074006100740075007300010053007400610074007500730001000100
      530074006100740075007300010001000D000A006300640073005F0050007200
      6F00640049006E004C006100670065007200500072006F006400750063007400
      44006900730070006C00610079004E0061006D0065000100500072006F006400
      75006300740044006900730070006C00610079004E0061006D00650001000100
      010001000D000A006300640073005F00500072006F00640049006E004C006100
      670065007200500072006F0064007500630074004E006F000100500072006F00
      64007500630074004E006F0001000100010001000D000A006300640073005F00
      52006500670050006F0069006E007400500072006F0064007500630074006900
      6F006E0055006E00690074004E0061006D0065000100500072006F0064007500
      6300740069006F006E0055006E00690074004E0061006D006500010001000100
      01000D000A006300640073005F0052006500670050006F0069006E0074005200
      6500670069007300740072006100740069006F006E0050006F0069006E007400
      4E006F00010052006500670069007300740072006100740069006F006E005000
      6F0069006E0074004E006F0001000100010001000D000A006300640073005F00
      53004F00520061007700610041004D0031000100610041004D00310001000100
      010001000D000A006300640073005F0053004F00520061007700410042000100
      410042000100010041005700010001000D000A006300640073005F0053004F00
      52006100770041004D003100010041004D00310001000100010001000D000A00
      6300640073005F0053004F0052006100770041004D003300010041004D003300
      01000100010001000D000A006300640073005F0053004F005200610077004100
      6E00740061006C004200690074006100720055007400010041006E0074006100
      6C00420069007400610072005500740001000100010001000D000A0063006400
      73005F0053004F0052006100770041006E00740061006C004B00610070005300
      6E0069007400740001004B006100700073006E00690074007400010001004300
      75007400740069006E006700200070006F0073006900740069006F006E007300
      010001000D000A006300640073005F0053004F0052006100770041006E007400
      61006C004C0061006D0065006C006C00650072005500740001004C0061006D00
      65006C006C006500720001000100010001000D000A006300640073005F005300
      4F00520061007700610050006300730001006100500063007300010001000100
      01000D000A006300640073005F0053004F005200610077004100540001004100
      54000100010041005400010001000D000A006300640073005F0053004F005200
      610077004100760067004C0065006E0067007400680001004100760067004C00
      65006E0067007400680001004D006500640065006C006C00E4006E0067006400
      010001004D006500640065006C006C00E4006E006700640001000D000A006300
      640073005F0053004F0052006100770042006F006F006B00650064004E004D00
      3300010042006F006B006100640020004E004D003300010042006F006B006100
      64004E004D003300010042006F006F006B00650064004E004D00330001004200
      6F006B00610064004E004D00330001000D000A006300640073005F0053004F00
      5200610077004300720065006100740065006400550073006500720001004300
      7200650061007400650064005500730065007200010053006B00610070006100
      64002000610076000100010053006B0061007000610064002000610076000100
      0D000A006300640073005F0053004F0052006100770044006100740065004300
      7200650061007400650064000100440061007400650043007200650061007400
      6500640001000100010001000D000A006300640073005F0053004F0052006100
      7700470072006100640065004E006F000100470072006100640065004E006F00
      01000100010001000D000A006300640073005F0053004F005200610077004B00
      6100730073006100740069006F006E0041004D00310001004B00610073007300
      6100740069006F006E0041004D00310001000100010001000D000A0063006400
      73005F0053004F005200610077004B006100730073006100740069006F006E00
      41004D00330001004B006100730073006100740069006F006E0041004D003300
      01000100010001000D000A006300640073005F0053004F005200610077004B00
      6100730073006100740069006F006E0053007400790063006B0001004B006100
      730073006100740069006F006E0053007400790063006B000100010001000100
      0D000A006300640073005F0053004F005200610077004C0065006E0067007400
      68004400650073006300720069007000740069006F006E0001004C00E4006E00
      670064006200650073006B007200690076006E0069006E006700010001004C00
      65006E0067006800740020006400650073006300720069007000740069006F00
      6E00010001000D000A006300640073005F0053004F005200610077004D006100
      69006E005200610077004D00740072006C000100480075007600750064007600
      61007200610001000100010001000D000A006300640073005F0053004F005200
      610077004D00430043006C006100730073004E006F000100440065006C006100
      730020006600F6007200650020006800790076006C0069006E00670001000100
      010001000D000A006300640073005F0053004F005200610077004D006F006400
      69006600690065006400550073006500720001004D006F006400690066006900
      6500640055007300650072000100C4006E006400720061006400200061007600
      01000100C4006E00640072006100640020006100760001000D000A0063006400
      73005F0053004F005200610077004E00420001004E004200010001004E005700
      010001000D000A006300640073005F0053004F005200610077004E004D003300
      01004E004D003300010001004E004D003300010001000D000A00630064007300
      5F0053004F005200610077004E00540001004E005400010001004E0054000100
      01000D000A006300640073005F0053004F005200610077005000430053000100
      53007400790063006B000100010050006300730001005300E40063006B000100
      0D000A006300640073005F0053004F0052006100770050006500720063006500
      6E0074005000630073004F00660054006F00740061006C000100500065007200
      630065006E0074005000630073004F00660054006F00740061006C0001000100
      010001000D000A006300640073005F0053004F0052006100770050006C006100
      6E006E006500640041004D003100010041004D00310001000100010001000D00
      0A006300640073005F0053004F00520061007700500072006900630065005000
      650072004E004D003300010050007200690073002F004E004D00330001000100
      500072006900630065002F004E004D003300010001000D000A00630064007300
      5F0053004F00520061007700500072006F006400750063007400430061007400
      650067006F00720079004E006F000100500072006F0064007500630074004300
      61007400650067006F00720079004E006F0001000100010001000D000A006300
      640073005F0053004F00520061007700500072006F0064007500630074004C00
      65006E006700740068004E006F000100500072006F0064007500630074004C00
      65006E006700740068004E006F0001000100010001000D000A00630064007300
      5F0053004F00520061007700500072006F0064007500630074004E006F000100
      500072006F0064007500630074004E006F0001000100010001000D000A006300
      640073005F0053004F00520061007700500072006F00640075006B0074000100
      500072006F00640075006B00740001000100500072006F006400750063007400
      010001000D000A006300640073005F0053004F00520061007700500072006F00
      6700720061006D004E006F000100500072006F006700720061006D004E006F00
      01000100010001000D000A006300640073005F0053004F005200610077005200
      650061006C004C0050004D0001005200650061006C004C0050004D0001000100
      010001000D000A006300640073005F0053004F00520061007700530070006500
      63006900650073004E006F00010053007000650063006900650073004E006F00
      01000100010001000D000A006300640073005F0053004F005200610077005300
      7500720066006100630069006E0067004E006F00010053007500720066006100
      630069006E0067004E006F0001000100010001000D000A006300640073005F00
      53004F005200610077005400720069006D0041004D0031000100540072006900
      6D0041004D00310001000100010001000D000A006300640073005F0053004F00
      5200610077005400720069006D0041004D00330001005400720069006D004100
      4D00330001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770041004200010041004200010001004100570001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004100
      4D003100010041004D00310001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770041004D00310049006E0001004100
      4D00310049006E0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F00770041004D003300010041004D00330001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      770041006E00740061006C004200690074006100720055007400010041006E00
      740061006C00420069007400610072005500740001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F00770041006E007400
      61006C004B006100700053006E00690074007400010041006E00740061006C00
      4B006100700053006E0069007400740001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770041007200740069006B00
      65006C004B006F006400010041007200740069006B0065006C006B006F006400
      01000100410072007400690063006C006500200063006F006400650001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004100
      54000100410054000100010041005400010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770043006F0073007400440069007300
      7400010043006F0073007400440069007300740001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700430072006500
      6100740065006400550073006500720001004300720065006100740065006400
      5500730065007200010053006B00610070006100640020006100760001000100
      53006B00610070006100640020006100760001000D000A006300640073005F00
      53006F0072004F007200640052006F0077004300530044004E006F0001004300
      530044004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F00770043007500730074006F006D00650072000100
      4B0075006E0064000100010043007500730074006F006D006500720001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004400
      6100740065004300720065006100740065006400010044006100740065004300
      72006500610074006500640001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770045006E00640050006B0067004100
      6C006C006F00770065006400010053006C007500740070006B00740001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004500780070006F007200740052006F00770001004500780070006F007200
      7400650072006100010001004500780070006F0072007400010001000D000A00
      6300640073005F0053006F0072004F007200640052006F00770049004D005000
      010049004D005000010049006D0070007200650067006E006500720069006E00
      67000100540072006500610074006D0065006E007400010049006D0070007200
      650067006E006500720069006E00670001000D000A006300640073005F005300
      6F0072004F007200640052006F0077004B00760061006C006900740065007400
      01004B00760061006C0069007400650074000100010047007200610064006500
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004C0061006E006700750061006700650063006F006400650001004C006100
      6E006700750061006700650063006F006400650001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F0077004C0065006E00
      6700740068004400650073006300720069007000740069006F006E0001004C00
      E4006E00670064006200650073006B007200690076006E0069006E0067000100
      01004C0065006E00670068007400200064006500730063007200690070007400
      69006F006E00010001000D000A006300640073005F0053006F0072004F007200
      640052006F0077004C0065006E0067007400680046006F0072006D0061007400
      01004C0065006E0067007400680046006F0072006D0061007400010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4C00490050004E006F0001004C00490050004E006F0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F0077004C004F00
      4E00520001004C004F004E00520001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004D00610072006B0001004D00
      E40072006B006E0069006E006700010001004D00610072006B00010001000D00
      0A006300640073005F0053006F0072004F007200640052006F0077004D004300
      43006C006100730073004E006F0001004D00430043006C006100730073004E00
      6F0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F0077004D0052004B00450001004D00C40052004B00450001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004E00420001004E004200010001004E005700010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A006300640073005F005300
      6F0072004F007200640052006F0077004E006F004F00660055006E0069007400
      730001004E006F004F00660055006E0069007400730001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F0077004E006F00
      740065004D00610072006B0001004E006F00740065004D00610072006B000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004E006F0074006500720069006E00670001004E006F00740065007200
      69006E00670001004E006F00740065007200610001004E006F00740065000100
      4E006F00740065007200610001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004E006F00740065005300740061006D0070000100
      4E006F00740065005300740061006D00700001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004E00540001004E00
      5400010001004E005400010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004F00750074007400750072006E004F0066004900
      6E0070007500740041004D00330001004F00750074007400750072006E004F00
      660049006E0070007500740041004D00330001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077005000430053000100
      50004300530001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770050006300730049006E0001005000630073004900
      6E0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F00770050006B006700500072006500660069007800010050006B00
      740070007200650066006900780001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770050006C0061006E006E006500
      640041004D003300010041004D00330001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770050006C0061006E006E00
      650064004E004D00330001004E004D003300010001004E004D00330001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      500050000100730074002F0070006B00740001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077005000720069006300
      6500010050007200690073000100010050007200690063006500010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6900630065004C006900730074004E006F000100500072006900630065004C00
      6900730074004E006F0001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F0077005000720069006300650055006E006900
      74000100500072006900730065006E0068006500740001000100500072006900
      630065002000260075006E0069007400010001000D000A006300640073005F00
      53006F0072004F007200640052006F0077005000720069006F00010050007200
      69006F0001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F007700500072006F00640041004D003100010041004D003100
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700500072006F00640041004D003300010041004D00330001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      7700500072006F00640049006E007300740072007500630074004E006F000100
      500072006F00640049006E007300740072007500630074004E006F0001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      7700500072006F0064004E004D00330001004E004D003300010001004E004D00
      3300010001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700500072006F006400500043005300010053007400790063006B000100
      010050006300730001005300E40063006B0001000D000A006300640073005F00
      53006F0072004F007200640052006F007700500072006F00640050004B005400
      0100500061006B00650074000100010050006B0067000100500061006C006C00
      6100720001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700500072006F0064007500630074004C0065006E006700740068004E00
      6F000100500072006F0064007500630074004C0065006E006700740068004E00
      6F0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F0001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F007700500072006F00640075006300
      7400560061006C00750065000100500072006F00640075006300740056006100
      6C007500650001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700500072006F00640075006B007400010050007200
      6F00640075006B00740001000100500072006F00640075006300740001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005200
      6500660043006F00700069006500730001005200650066002E006B006F007000
      69006F00720001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700530069007A00650046006F0072006D0061007400
      0100530069007A00650046006F0072006D006100740001000100530069007A00
      6500200066006F0072006D0061007400010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770053006F007200740069006E006700
      4F0072006400650072004E006F0001004B00F60072006F007200640065007200
      01000100520075006E0020006F007200640065007200010001000D000A006300
      640073005F0053006F0072004F007200640052006F00770053006F0072007400
      69006E0067004F00720064006500720052006F0077004E006F00010052006100
      64006E007200010001004C0069006E0065004E006F00010001000D000A006300
      640073005F0053006F0072004F007200640052006F00770053006F0072007400
      4F007200640065007200010053006F00720074004F0072006400650072000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770053007000650063006900650073004E006F0001005300700065006300
      6900650073004E006F0001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770053007400610063006B00650072004E00
      6F00010053007400610063006B00650072004E006F0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770053007400
      6100740075007300010053007400610074007500730001000100530074006100
      740075007300010001000D000A006300640073005F0053006F0072004F007200
      640052006F00770053007400690063006B005200650063006900700065000100
      530074007200F60072006500630065007000740001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700530075007200
      66006100630069006E0067004E006F0001005300750072006600610063006900
      6E0067004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700540061007200670065007400500072006F00
      64007500630074000100540061007200670065007400500072006F0064007500
      6300740001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F0077005400720073006C0061006700010054007200E4007300
      6C0061006700010001005300700065006300690065007300010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700550072006C00
      6100670067000100550072006C00E4006700670001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700550074006600
      720061006E00640065000100550074006600F600720061006E00640065000100
      010053007500720066006100630069006E006700010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770056006F006C0075006D00
      650046006F0072006D0061007400010056006F006C0075006D00650046006F00
      72006D006100740001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F00770056006F006C0075006D00650055006E006900
      74004E006F00010056006F006C0075006D00650055006E00690074004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400460072006400690067007600610072006100
      01004600E4007200640069006700760061007200610001000100460069006E00
      69007300680065006400200067006F006F0064007300010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4D007400700075006E006B00740001004D00E4007400700075006E006B007400
      010001004D0065006100730075007200650070006F0069006E00740001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      6900730074005000490050004E006F0001005000490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740052006500670050006F0069006E0074004E006F000100
      52006500670050006F0069006E0074004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74005200760061007200610001005200E5007600610072006100010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740053006F007200740069006E0067004F007200640065007200
      4E006F00010053006F007200740069006E0067004F0072006400650072004E00
      6F0001000100010001000D000A006300640073005F0055007300650064005000
      6B006700730041004D003100010041004D00310001000100010001000D000A00
      6300640073005F00550073006500640050006B006700730041004D0033000100
      41004D00330001000100010001000D000A006300640073005F00550073006500
      640050006B006700730041004E0054005000450052004C004E00470044000100
      530074002F006C00E4006E0067006400010053007400790063006B002F006C00
      E4006E006700640001005000630073002F006C0065006E006700740068000100
      53007400790063006B002F006C00E4006E006700640001000D000A0063006400
      73005F00550073006500640050006B00670073004C0061006700650072000100
      4C00610067006500720001000100530074006F0063006B00010001000D000A00
      6300640073005F00550073006500640050006B00670073004C0065006E006700
      7400680053007000650063004E006F0001004C0065006E006700740068005300
      7000650063004E006F0001000100010001000D000A006300640073005F005500
      73006500640050006B00670073004C00450056004B004F004400010050007200
      650066006900780001000100500072006500660069007800010001000D000A00
      6300640073005F00550073006500640050006B00670073004C00490050004E00
      6F0001004C00490050004E006F0001000100010001000D000A00630064007300
      5F00550073006500640050006B00670073004D00410058004C0045004E004700
      5400480001004D00410058004C0045004E004700540048000100010001000100
      0D000A006300640073005F00550073006500640050006B00670073004D004600
      42004D0001004D00460042004D00010001004D00460042004D00010001000D00
      0A006300640073005F00550073006500640050006B00670073004E004D003300
      01004E004D003300010001004E004D003300010001000D000A00630064007300
      5F00550073006500640050006B00670073004F006C0064005000610063006B00
      6100670065004E006F0001004F006C0064005000610063006B00610067006500
      4E006F0001000100010001000D000A006300640073005F005500730065006400
      50006B00670073004F006C0064005000610063006B0061006700650054007900
      700065004E006F0001004F006C0064005000610063006B006100670065005400
      7900700065004E006F0001000100010001000D000A006300640073005F005500
      73006500640050006B00670073004F006C00640053007500700070006C006900
      6500720043006F006400650001004F006C00640053007500700070006C006900
      6500720043006F006400650001000100010001000D000A006300640073005F00
      550073006500640050006B00670073004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F0001000100010001000D000A00630064007300
      5F00550073006500640050006B00670073005000610063006B00610067006500
      54007900700065004E006F0001005000610063006B0061006700650054007900
      700065004E006F0001000100010001000D000A006300640073005F0055007300
      6500640050006B0067007300500041004B00450054004E005200010050006100
      6B00650074006E0072000100500061006B00650074004E007200010050006B00
      67004E006F000100500061006C006C004E00720001000D000A00630064007300
      5F00550073006500640050006B006700730050006B0067004E006F0049006E00
      760043006F0075006E007400010050006B0067004E006F0049006E0076004300
      6F0075006E00740001000100010001000D000A006300640073005F0055007300
      6500640050006B006700730050007200650066006900780049006E0076004300
      6F0075006E007400010050007200650066006900780049006E00760043006F00
      75006E00740001000100010001000D000A006300640073005F00550073006500
      640050006B0067007300500072006F00640075006300650072004E006F000100
      500072006F00640075006300650072004E006F0001000100010001000D000A00
      6300640073005F00550073006500640050006B0067007300500072006F006400
      75006300740069006F006E0055006E00690074004E006F000100500072006F00
      640075006300740069006F006E0055006E00690074004E006F00010001000100
      01000D000A006300640073005F00550073006500640050006B00670073005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F0001000100010001000D000A006300640073005F005500730065006400
      50006B0067007300500052004F00440055004B0054000100500072006F006400
      75006B00740001000100500072006F006400750063007400010001000D000A00
      6300640073005F00550073006500640050006B00670073005200650067006900
      7300740072006500720061006400010052006500670069007300740072006500
      7200610064000100010052006500670069007300740065007200650064000100
      01000D000A006300640073005F00550073006500640050006B00670073005300
      6F007200740069006E0067004F0072006400650072004E006F00010053006F00
      7200740069006E0067004F0072006400650072004E006F000100010001000100
      0D000A006300640073005F00550073006500640050006B006700730053005400
      590043004B00010053007400790063006B000100010050006300730001005300
      E40063006B0001000D000A00630064007300500072006F0064004C0065006E00
      67007400680041004C004D004D00010041004C004D004D000100010001000100
      0D000A00630064007300500072006F0064004C0065006E006700740068004100
      4D003100010041004D00310001000100010001000D000A006300640073005000
      72006F0064004C0065006E0067007400680041004D003300010041004D003300
      01000100010001000D000A00630064007300500072006F0064004C0065006E00
      67007400680046004A00010046004A0001000100010001000D000A0063006400
      7300500072006F0064004C0065006E0067007400680046004F00540001004600
      4F0054000100010046004F004F005400010001000D000A006300640073005000
      72006F0064004C0065006E00670074006800470072006F00750070004E006F00
      0100470072006F00750070004E006F0001000100010001000D000A0063006400
      7300500072006F0064004C0065006E006700740068004E004C004D004D000100
      4E004C004D004D00010001004E004C004D004D00010001000D000A0063006400
      7300500072006F0064004C0065006E0067007400680050004500540001005000
      4500540001000100010001000D000A00630064007300500072006F0064004C00
      65006E00670074006800700072006F0064007500630074004C0065006E006700
      740068006E006F000100700072006F0064007500630074004C0065006E006700
      740068006E006F0001000100010001000D000A00630064007300500072006F00
      64004C0065006E0067007400680053005400590043004B000100530054005900
      43004B000100010050004300530001005300C40043004B0001000D000A006300
      64007300500072006F0064004C0065006E00670074006800540055004D000100
      540055004D000100010049004E0043004800010001000D000A006D0074004C00
      6F00610064005000610063006B00610067006500730041004200010041004200
      0100010041005700010001000D000A006D0074004C006F006100640050006100
      63006B0061006700650073004100540001004100540001000100410054000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      73004200410052005F0043004F004400450001004200410052005F0043004F00
      4400450001000100010001000D000A006D0074004C006F006100640050006100
      63006B00610067006500730042004100520043004F00440045005F0049004400
      010042004100520043004F00440045005F004900440001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004200
      75006E0064006C006500730050006500720050006B0067000100420075006E00
      64006C006500730050006500720050006B00670001000100010001000D000A00
      6D0074004C006F00610064005000610063006B00610067006500730045007800
      4C006F0067000100450078004C006F00670001000100010001000D000A006D00
      74004C006F00610064005000610063006B006100670065007300470052004100
      440045005F005300540041004D0050000100470052004100440045005F005300
      540041004D00500001000100010001000D000A006D0074004C006F0061006400
      5000610063006B006100670065007300470072006100640065004E006F000100
      470072006100640065004E006F0001000100010001000D000A006D0074004C00
      6F00610064005000610063006B00610067006500730047005200410044004500
      5300540041004D0050004E004F00010047005200410044004500530054004100
      4D0050004E004F0001000100010001000D000A006D0074004C006F0061006400
      5000610063006B00610067006500730049004D0050004E006F00010049004D00
      50004E006F0001000100010001000D000A006D0074004C006F00610064005000
      610063006B00610067006500730049004E00560045004E0054004F0052005900
      010049004E00560045004E0054004F0052005900010049004E00560045004E00
      54004500520049004E0047000100010049004E00560045004E00540045005200
      49004E00470001000D000A006D0074004C006F00610064005000610063006B00
      61006700650073004B0056004D0001004B0056004D00010001004D0032000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      73004C006F0061006400440065007400610069006C004E006F0001004C006F00
      61006400440065007400610069006C004E006F0001000100010001000D000A00
      6D0074004C006F00610064005000610063006B0061006700650073004C004F00
      47005F0049004E00560045004E0054004F00520059005F004E004F0001004C00
      4F0047005F0049004E00560045004E0054004F00520059005F004E004F000100
      0100010001000D000A006D0074004C006F00610064005000610063006B006100
      6700650073004C004F0050004D0001004C004F0050004D000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      4D0033005F004E004500540001004D0033005F004E0045005400010001000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      73004D0033005F004E004F004D0001004D0033005F004E004F004D0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      650073004D00430043006C006100730073004E006F0001004D00430043006C00
      6100730073004E006F0001000100010001000D000A006D0074004C006F006100
      64005000610063006B0061006700650073004E0042004D004D0001004E004200
      4D004D0001000100010001000D000A006D0074004C006F006100640050006100
      63006B0061006700650073004E0054004D004D0001004E0054004D004D000100
      0100010001000D000A006D0074004C006F00610064005000610063006B006100
      6700650073004F006C0064005F005000610063006B0061006700650054007900
      700065004E006F0001004F006C0064005F005000610063006B00610067006500
      54007900700065004E006F0001000100010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073004F006C0064004C0049005000
      4E006F0001004F006C0064004C00490050004E006F0001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004F00
      4C0044004D00430043006C006100730073004E006F0001004F004C0044004D00
      430043006C006100730073004E006F0001000100010001000D000A006D007400
      4C006F00610064005000610063006B0061006700650073004F004C0044005000
      72006F0064007500630074004E006F0001004F004C004400500072006F006400
      7500630074004E006F0001000100010001000D000A006D0074004C006F006100
      64005000610063006B0061006700650073004F004E005F005300540049004300
      4B00530001004F004E005F0053005400490043004B0053000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      4F0057004E004500520001004F0057004E004500520001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073004F00
      57004E00450052004E004F0001004F0057004E00450052004E004F0001000100
      010001000D000A006D0074004C006F00610064005000610063006B0061006700
      650073005000410043004B004100470045004E004F0001005000410043004B00
      4100470045004E004F0001000100010001000D000A006D0074004C006F006100
      64005000610063006B0061006700650073005000410043004B00410047004500
      54005900500045004E004F0001005000410043004B0041004700450054005900
      500045004E004F0001000100010001000D000A006D0074004C006F0061006400
      5000610063006B00610067006500730050004300530001005000430053000100
      0100010001000D000A006D0074004C006F00610064005000610063006B006100
      6700650073005000430053005F005000450052005F004C0045004E0047005400
      480001005000430053005F005000450052005F004C0045004E00470054004800
      01000100010001000D000A006D0074004C006F00610064005000610063006B00
      6100670065007300500063007300500065007200420075006E0064006C006500
      0100500063007300500065007200420075006E0064006C006500010001000100
      01000D000A006D0074004C006F00610064005000610063006B00610067006500
      7300500049005000010050004900500001000100010001000D000A006D007400
      4C006F00610064005000610063006B006100670065007300500052004F004400
      5500430054000100500052004F00440055004300540001000100010001000D00
      0A006D0074004C006F00610064005000610063006B0061006700650073005000
      72006F006400750063007400470072006F00750070004E006F00010050007200
      6F006400750063007400470072006F00750070004E006F000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      500072006F0064007500630074004E006F000100500072006F00640075006300
      74004E006F0001000100010001000D000A006D0074004C006F00610064005000
      610063006B00610067006500730053007000650063006900650073004E006F00
      010053007000650063006900650073004E006F0001000100010001000D000A00
      6D0074004C006F00610064005000610063006B00610067006500730053005500
      500050005F0043004F0044004500010053005500500050005F0043004F004400
      450001000100010001000D000A006D0074004C006F0061006400500061006300
      6B00610067006500730053005500500050004C004900450052004E004F000100
      53005500500050004C004900450052004E004F0001000100010001000D000A00
      6D0074004C006F00610064005000610063006B00610067006500730053007500
      720066006100630069006E0067004E006F000100530075007200660061006300
      69006E0067004E006F0001000100010001000D000A006D0074004C006F006100
      64005000610063006B00610067006500730054007900700065004F0066004C00
      6F006700010054007900700065004F0066004C006F0067000100010001000100
      0D000A006D0074004C006F00610064005000610063006B006100670065007300
      57005200410050005F005400590050004500010057005200410050005F005400
      59005000450001000100010001000D000A006D0074004C006F00610064005000
      610063006B006100670065007300570052004100500054005900500045004E00
      4F000100570052004100500054005900500045004E004F000100010001000100
      0D000A006D0074005000630073005000650072004C0065006E00670074006800
      41004C004D004D00010041004C004D004D0001000100010001000D000A006D00
      74005000630073005000650072004C0065006E006700740068004E006F004F00
      660050006900650063006500730001004E006F004F0066005000690065006300
      6500730001000100010001000D000A006D007400500063007300500065007200
      4C0065006E00670074006800500072006F0064007500630074004C0065006E00
      6700740068004E006F000100500072006F0064007500630074004C0065006E00
      6700740068004E006F0001000100010001000D000A006D007400500063007300
      5000650072004C0065006E00670074006800500072006F006400750063007400
      4E006F000100500072006F0064007500630074004E006F000100010001000100
      0D000A006D0074005000630073005000650072004C0065006E00670074006800
      5500730065007200490044000100550073006500720049004400010001000100
      01000D000A00730070005F005000610063006B00610067006500540079007000
      650073005000610063006B0061006700650054007900700065004E006F000100
      5000610063006B0061006700650054007900700065004E006F00010001000100
      01000D000A00730071005F0047006500740050006B00670050006F0073004300
      6C00690065006E00740043006F0064006500010043006C00690065006E007400
      43006F006400650001000100010001000D000A00730071005F00470065007400
      50006B00670050006F007300500061006B00650074004E006F004C0065006E00
      6700740068000100500061006B00650074004E006F004C0065006E0067007400
      68000100500061006B00650074004E0072004C00E4006E006700640001005000
      6B0067004E006F004C0065006E006700740068000100500061006C006C004E00
      72004C00E4006E006700640001000D000A00730071005F004700650074005000
      6B00670050006F007300500061006B00650074004E006F0050006F0073000100
      500061006B00650074004E006F0050006F0073000100500061006B0065007400
      4E007200200070006F0073006900740069006F006E00010050006B0067004E00
      6F00200070006F0073006900740069006F006E000100500061006C006C004E00
      7200200070006F0073006900740069006F006E0001000D000A00730071005F00
      47006500740050006B00670050006F00730050006B0074004E0072004C006500
      76004B006F006400010050006B0074004E0072004C00650076004B006F006400
      01000100010001000D000A00730071005F0047006500740050006B0067005000
      6F00730053007500700070006C0069006500720043006F00640065004C006500
      6E00670074006800010053007500700070006C0069006500720043006F006400
      65004C0065006E0067007400680001000100010001000D000A00730071005F00
      47006500740050006B00670050006F00730053007500700070006C0069006500
      720043006F006400650050006F007300010053007500700070006C0069006500
      720043006F006400650050006F00730001000100010001000D000A0073007100
      5F0047006500740050006B00670050007200650066006900780050006B006700
      500072006500660069007800010050006B006700500072006500660069007800
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B006700410042004D004D000100410042004D004D0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700410054004D004D000100410054004D004D000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004200410052005F0043004F004400450001004200410052005F0043004F00
      4400450001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B00670042004100520043004F00440045005F004900
      4400010042004100520043004F00440045005F00490044000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700420075006E0064006C006500730050006500720050006B00670001004200
      75006E0064006C006500730050006500720050006B0067000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700450078004C006F0067000100450078004C006F0067000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700470052004100440045005F005300540041004D0050000100470052004100
      440045005F005300540041004D00500001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700470072006100
      640065004E006F000100470072006100640065004E006F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700470052004100440045005300540041004D0050004E004F00010047005200
      4100440045005300540041004D0050004E004F0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004900
      4D0050004E006F00010049004D0050004E006F0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004900
      4E00560045004E0054004F0052005900010049004E00560045004E0054004F00
      52005900010049004E00560045004E0054004500520049004E00470001000100
      49004E00560045004E0054004500520049004E00470001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B0067004B0056004D00
      01004B0056004D00010001004D003200010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004C004F0047005F004900
      4E00560045004E0054004F00520059005F004E004F0001004C004F0047005F00
      49004E00560045004E0054004F00520059005F004E004F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004C004F0050004D0001004C004F0050004D0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004D00
      33005F004E004500540001004D0033005F004E00450054000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67004D0033005F004E004F004D0001004D0033005F004E004F004D0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004D00430043006C006100730073004E006F0001004D0043004300
      6C006100730073004E006F0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B0067004E0042004D004D000100
      4E0042004D004D0001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067004E0054004D004D0001004E005400
      4D004D0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B0067004F004C0044005F005000410043004B004100
      4700450054005900500045004E004F0001004F004C0044005F00500041004300
      4B0041004700450054005900500045004E004F0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004F00
      4C0044004C00490050004E006F0001004F004C0044004C00490050004E006F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004F004C0044004D00430043006C006100730073004E00
      6F0001004F004C0044004D00430043006C006100730073004E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004F004E0053005400490043004B00530001004F004E0053005400
      490043004B00530001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067004F0057004E004500520001004F00
      57004E004500520001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067004F0057004E00450052004E004F00
      01004F0057004E00450052004E004F0001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700500041004300
      4B004100470045004E004F0001005000410043004B004100470045004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067005000410043004B004100470045005400590050004500
      4E004F0001005000410043004B0041004700450054005900500045004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B00670050004300530001005000430053000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      67005000430053005F005000450052005F004C0045004E004700540048000100
      5000430053005F005000450052005F004C0045004E0047005400480001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700500063007300500065007200420075006E0064006C0065000100
      500063007300500065007200420075006E0064006C0065000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700500049005000010050004900500001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700500052004F00
      44005500430054000100500052004F0044005500430054000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700700072006F006400750063007400670072006F00750070006E006F000100
      700072006F006400750063007400670072006F00750070006E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700500052004F0044005500430054004E004F000100500052004F00
      44005500430054004E004F0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B00670053007000650063006900
      650073004E006F00010053007000650063006900650073004E006F0001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B00670053005500500050005F0043004F00440045000100530055005000
      50005F0043004F004400450001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B00670053005500500050004C00
      4900450052004E004F00010053005500500050004C004900450052004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B00670053007500720066006100630069006E0067004E006F00
      010053007500720066006100630069006E0067004E006F000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      670054007900700065004F0066004C006F006700010054007900700065004F00
      66004C006F00670001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B00670057005200410050005F0054005900
      50004500010057005200410050005F0054005900500045000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700570052004100500054005900500045004E004F0001005700520041005000
      54005900500045004E004F0001000100010001000D000A00730071005F005000
      7200650066006900780043006C00690065006E00740043006F00640065000100
      5000720065006600690078000100010050007200650066006900780001000100
      0D000A00730071005F0050007200650066006900780043006C00690065006E00
      74004E0061006D00650001004600F60072006500740061006700010001004300
      6F006D00700061006E007900010001000D000A00730071005F00500072006500
      66006900780043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F0001000100010001000D000A00460044006D005F0050006100
      52006500670050006B0067007300500061006B00650074004E00720001005000
      61006B00650074004E0072000100010050006B0067004E006F00010050006100
      6C006C006E00720001000D000A00460044006D005F0050006100520065006700
      50006B0067007300500072006500660069007800010050007200650066006900
      780001000100500072006500660069007800010001000D000A00460044006D00
      5F005000610052006500670050006B0067007300500072006F00640075006B00
      74000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A00460044006D005F00500061005200650067005000
      6B006700730053007400790063006B005000650072004C0061006E0067006400
      0100530074002F004C00E4006E006700640001000100010001000D000A004600
      44006D005F005000610052006500670050006B006700730041004D0033000100
      41004D00330001000100010001000D000A00460044006D005F00500061005200
      6500670050006B006700730054006F00740061006C0074005300740079006300
      6B00010053007400790063006B000100010050006300730001005300E4006300
      6B0001000D000A00460044006D005F005000610052006500670050006B006700
      730041004D003100010041004D00310001000100010001000D000A0046004400
      6D005F005000610052006500670050006B00670073004E004D00330001004E00
      4D003300010001004E004D003300010001000D000A00460044006D005F005000
      610052006500670050006B006700730053007400610074007500730001005300
      7400610074007500730001000100530074006100740075007300010001000D00
      0A00460044006D005F005000610052006500670050006B00670073004F007000
      650072006100740069006F006E0053007400610074007500730001004F007000
      650072006100740069006F006E00530074006100740075007300010001000100
      01000D000A00460044006D005F005000610052006500670050006B0067007300
      4C00610067006500720001004C00610067006500720001000100530074006F00
      63006B00010001000D000A00460044006D005F00410076005200650067005000
      6B0067007300500061006B00650074004E0072000100500061006B0065007400
      4E0072000100010050006B0067004E006F000100500061006C006C006E007200
      01000D000A00460044006D005F004100760052006500670050006B0067007300
      5000720065006600690078000100500072006500660069007800010001005000
      72006500660069007800010001000D000A00460044006D005F00410076005200
      6500670050006B0067007300500072006F00640075006B007400010050007200
      6F00640075006B00740001000100500072006F00640075006300740001000100
      0D000A00460044006D005F004100760052006500670050006B00670073005300
      7400790063006B005000650072004C0061006E00670064000100530074002F00
      4C00E4006E006700640001000100010001000D000A00460044006D005F004100
      760052006500670050006B006700730041004D003300010041004D0033000100
      0100010001000D000A00460044006D005F004100760052006500670050006B00
      6700730054006F00740061006C00740053007400790063006B00010053007400
      790063006B000100010050006300730001005300E40063006B0001000D000A00
      460044006D005F004100760052006500670050006B006700730041004D003100
      010041004D00310001000100010001000D000A00460044006D005F0041007600
      52006500670050006B00670073004E004D00330001004E004D00330001000100
      4E004D003300010001000D000A00460044006D005F0041007600520065006700
      50006B0067007300530074006100740075007300010053007400610074007500
      730001000100530074006100740075007300010001000D000A00460044006D00
      5F004100760052006500670050006B00670073004F0070006500720061007400
      69006F006E0053007400610074007500730001004F0070006500720061007400
      69006F006E0053007400610074007500730001000100010001000D000A004600
      44006D005F004100760052006500670050006B00670073004C00610067006500
      720001004C00610067006500720001000100530074006F0063006B0001000100
      0D000A00460044006D005F004100760052006500670050006B00670073005000
      61006B00650074006E0072004100740074004100760052006500670001005000
      61006B00650074006E0072004100740074004100760052006500670001000100
      010001000D000A00460044006D005F004100760052006500670050006B006700
      7300500072006500660069007800410074007400410076005200650067000100
      5000720065006600690078004100740074004100760052006500670001000100
      010001000D000A00460044006D005F004100760052006500670050006B006700
      730052006500670050006F0069006E0074004E006F0001005200650067005000
      6F0069006E0074004E006F0001000100010001000D000A00460044006D005F00
      4100760052006500670050006B00670073004C00490050004E006F0041007400
      74004100760052006500670001004C00490050004E006F004100740074004100
      760052006500670001000100010001000D000A00460044006D005F0041007600
      52006500670050006B006700730053006F007200740069006E0067004F007200
      6400650072004E006F00010053006F007200740069006E0067004F0072006400
      650072004E006F0001000100010001000D000A00460044006D005F0041007600
      52006500670050006B00670073005000610063006B0061006700650054007900
      700065004E006F0001005000610063006B006100670065005400790070006500
      4E006F0001000100010001000D000A00460044006D005F004100760052006500
      670050006B0067007300500072006F00640075006300650072004E006F000100
      500072006F00640075006300650072004E006F0001000100010001000D000A00
      460044006D005F004100760052006500670050006B00670073004F0077006E00
      650072004E006F0001004F0077006E00650072004E006F000100010001000100
      0D000A00460044006D005F004100760052006500670050006B00670073004C00
      490050004E006F0001004C00490050004E006F0001000100010001000D000A00
      460044006D005F004100760052006500670050006B00670073004C0065006E00
      67007400680053007000650063004E006F0001004C0065006E00670074006800
      53007000650063004E006F0001000100010001000D000A00460044006D005F00
      4100760052006500670050006B00670073005300750072006600610063006900
      6E0067004E006F00010053007500720066006100630069006E0067004E006F00
      01000100010001000D000A00460044006D005F00410076005200650067005000
      6B00670073004E00540001004E005400010001004E005400010001000D000A00
      460044006D005F004100760052006500670050006B0067007300500061006300
      6B0061006700650054007900700065004E006F00410074007400410076005200
      6500670001005000610063006B0061006700650054007900700065004E006F00
      4100740074004100760052006500670001000100010001000D000A0046004400
      6D005F004100760052006500670050006B006700730041007600520065006700
      690073007400720065007200610074004F004B00010041007600520065006700
      690073007400720065007200610074004F004B0001000100010001000D000A00
      460044006D005F004100760052006500670050006B00670073004F0072006900
      670069006E0061006C00500061006B00650074006E00720001004F0072006900
      670069006E0061006C00500061006B00650074006E0072000100010001000100
      0D000A00460044006D005F004100760052006500670050006B00670073004F00
      72006900670069006E0061006C0050007200650066006900780001004F007200
      6900670069006E0061006C005000720065006600690078000100010001000100
      0D000A00460044006D005F004100760052006500670050006B00670073005200
      6500670069007300740072006500720061006400010052006500670069007300
      7400720065007200610064000100010052006500670069007300740065007200
      65006400010001000D000A00460044006D005F00410076005200650067005000
      6B0067007300530068006900660074005400650061006D004E006F0001005300
      68006900660074005400650061006D004E006F0001000100010001000D000A00
      4600440071005F004700650074004C0049005000410074007400410076005200
      650067004D006F00740053007500700070006C0069006500720043006F006400
      6500010053007500700070006C0069006500720043006F006400650001004C00
      650076006500720061006E007400F600720073006B006F006400010053007500
      700070006C0069006500720063006F006400650001004C006500760065007200
      61006E007400F600720073006B006F00640001000D000A004600440071005F00
      4700650074004C0049005000410074007400410076005200650067004D006F00
      74004C0049005000470072006F00750070004E006F0001004C00490050004700
      72006F00750070004E006F0001000100010001000D000A004600440071005F00
      4700650074004C0049005000410074007400410076005200650067004D006F00
      740049006E00760065006E005400790070006500010049006E00760065006E00
      540079007000650001000100010001000D000A004600440071005F0047006500
      74004C0049005000410074007400410076005200650067004D006F0074004C00
      490050004E006F0001004C00490050004E006F0001000100010001000D000A00
      4600440071005F004700650074004C0049005000410074007400410076005200
      650067004D006F00740041007600520065006700010041007600520065006700
      01000100010001000D000A004600440071005F004700650074004C0049005000
      410074007400410076005200650067004D006F00740050006B00670052006500
      61006C004C00490050004E006F00010050006B0067005200650061006C004C00
      490050004E006F0001000100010001000D000A004600440071005F0047006500
      74004100760052006500670050006B0067004E006F005000610063006B006100
      670065004E006F0001005000610063006B006100670065004E006F0001000100
      010001000D000A004600440071005F0047006500740041007600520065006700
      50006B0067004E006F0053007500700070006C0069006500720043006F006400
      6500010053007500700070006C0069006500720043006F006400650001004C00
      650076006500720061006E007400F600720073006B006F006400010053007500
      700070006C0069006500720063006F006400650001004C006500760065007200
      61006E007400F600720073006B006F00640001000D000A004600440071005F00
      4700650074004100760052006500670050006B0067004E006F004C006F006700
      6900630061006C0049006E00760065006E0074006F007200790050006F006900
      6E0074004E006F0001004C006F0067006900630061006C0049006E0076006500
      6E0074006F007200790050006F0069006E0074004E006F000100010001000100
      0D000A00460044006D005F00530065007400740069006E00670073004F007700
      6E00650072004E006F0001004F0077006E00650072004E006F00010001000100
      01000D000A00460044006D005F00530065007400740069006E00670073005300
      7500700070006C006900650072004E006F00010053007500700070006C006900
      650072004E006F0001000100010001000D000A00460044006D005F0053006500
      7400740069006E006700730053006F007200740069006E0067004F0072006400
      650072004E006F00010053006F007200740069006E0067004F00720064006500
      72004E006F0001000100010001000D000A00460044006D005F00530065007400
      740069006E0067007300500072006F00640075006300740049006E0052007500
      6E000100500072006F00640075006300740049006E00520075006E0001000100
      010001000D000A00460044006D005F00530065007400740069006E0067007300
      4F0077006E0049006E00760065006E0074006F007200790001004F0077006E00
      49006E00760065006E0074006F007200790001000100010001000D000A004600
      44006D005F00530065007400740069006E0067007300500072006F0064007500
      6300650072004E006F000100500072006F00640075006300650072004E006F00
      01000100010001000D000A00460044006D005F00530065007400740069006E00
      6700730052006500670050006F0069006E0074004E006F000100520065006700
      50006F0069006E0074004E006F0001000100010001000D000A00460044006D00
      5F00530065007400740069006E00670073005000490050004E006F0001005000
      490050004E006F0001000100010001000D000A00460044006D005F0053006500
      7400740069006E0067007300560069007300610041006C006C00610041007600
      52006500670050006B0074000100560069007300610041006C006C0061004100
      760052006500670050006B00740001000100010001000D000A00460044006D00
      5F00530065007400740069006E00670073004B00610073007300610074006900
      6F006E0053007400790063006B0001004B006100730073006100740069006F00
      6E0053007400790063006B0001000100010001000D000A00460044006D005F00
      530065006C0065006300740050006B0067004E006F00500061006B0065007400
      6E0072000100500061006B00650074006E0072000100500061006B0065007400
      4E007200010050006B0067004E006F000100500061006C006C004E0072000100
      0D000A00460044006D005F00530065006C0065006300740050006B0067004E00
      6F00500072006500660069007800010050007200650066006900780001000100
      500072006500660069007800010001000D000A00460044006D005F0053006500
      6C0065006300740050006B0067004E006F0053007400790063006B0050006500
      72004C0061006E00670064000100530074002F006C00E4006E00670064000100
      53007400790063006B002F006C00E4006E006700640001005000630073002F00
      6C0065006E00670074006800010053007400790063006B002F006C00E4006E00
      6700640001000D000A00460044006D005F00530065006C006500630074005000
      6B0067004E006F0041004D003300010041004D00330001000100010001000D00
      0A00460044006D005F00530065006C0065006300740050006B0067004E006F00
      53007400790063006B00010053007400790063006B0001000100500063007300
      01005300E40063006B0001000D000A00460044006D005F00530065006C006500
      6300740050006B0067004E006F00520065006700690073007400720065007200
      6100740001005200650067006900730074007200650072006100740001000100
      010001000D000A00460044006D005F00530065006C0065006300740050006B00
      67004E006F004E006F004F0066004C0065006E00670074006800730001004E00
      6F004F0066004C0065006E00670074006800730001000100010001000D000A00
      460044006D005F00530065006C0065006300740050006B0067004E006F005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F0001000100010001000D000A00460044006D005F00530065006C006500
      6300740050006B0067004E006F005000610063006B0061006700650054007900
      700065004E006F0001005000610063006B006100670065005400790070006500
      4E006F0001000100010001000D000A00460044006D005F00530065006C006500
      6300740050006B0067004E006F004C00610067006500720001004C0061006700
      6500720001000100530074006F0063006B00010001000D000A00460044006D00
      5F00530065006C0065006300740050006B0067004E006F004D00610072006B00
      650072006100640001004D00610072006B006500720061006400010001005300
      65006C0065006300740065006400010001000D000A00460044006D005F005300
      65006C0065006300740050006B0067004E006F004C00490050004E006F000100
      4C00490050004E006F0001000100010001000D000A00460044006D005F005300
      65006C0065006300740050006B0067004E006F00530070006500630069006500
      73004E006F00010053007000650063006900650073004E006F00010001000100
      01000D000A00460044006D005F00530065006C0065006300740050006B006700
      4E006F0053007500720066006100630069006E0067004E006F00010053007500
      720066006100630069006E0067004E006F0001000100010001000D000A004600
      44006D005F00530065006C0065006300740050006B0067004E006F0047007200
      6100640065004E006F000100470072006100640065004E006F00010001000100
      01000D000A00460044006D005F00530065006C0065006300740050006B006700
      4E006F0049004D0050004E006F00010049004D0050004E006F00010001000100
      01000D000A00460044006D005F00530065006C0065006300740050006B006700
      4E006F00410054000100410054000100010041005400010001000D000A004600
      44006D005F00530065006C0065006300740050006B0067004E006F0041004200
      0100410042000100010041005700010001000D000A00460044005F0053006F00
      7200740069006E0067004F007200640065007200500072006F00640075006300
      650072004E006F000100500072006F00640075006300650072004E006F000100
      0100010001000D000A00460044005F0053006F007200740069006E0067004F00
      72006400650072004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F0001000100010001000D000A00460044005F0053006F0072007400
      69006E0067004F00720064006500720053006F007200740069006E0067004F00
      72006400650072004E006F00010053006F007200740069006E0067004F007200
      6400650072004E006F0001000100010001000D000A00460044005F0053006F00
      7200740069006E0067004F00720064006500720052006500670050006F006900
      6E0074004E006F00010052006500670050006F0069006E0074004E006F000100
      0100010001000D000A00460044005F0053006F007200740069006E0067004F00
      72006400650072005000490050004E006F0001005000490050004E006F000100
      0100010001000D000A006300640073005F0050006B0073004200790049006E00
      760065006E0074006F007200790050006C006100630065004900490049004900
      5000610063006B006100670065004E006F0001005000610063006B0061006700
      65004E006F0001000100010001000D000A006300640073005F0050006B007300
      4200790049006E00760065006E0074006F007200790050006C00610063006500
      490049004900490053007500700070006C0069006500720043006F0064006500
      010053007500700070006C0069006500720043006F0064006500010001000100
      01000D000A006300640073005F0050006B0073004200790049006E0076006500
      6E0074006F007200790050006C00610063006500490049004900490053007500
      700070006C006900650072004E006F00010053007500700070006C0069006500
      72004E006F0001000100010001000D000A006300640073005F0050006B007300
      4200790049006E00760065006E0074006F007200790050006C00610063006500
      49004900490049004C0065006E00670074006800440065007300630072006900
      7000740069006F006E0001004C0065006E006700740068004400650073006300
      720069007000740069006F006E0001000100010001000D000A00630064007300
      5F0050006B0073004200790049006E00760065006E0074006F00720079005000
      6C006100630065004900490049004900500072006F0064007500630074004400
      6900730070006C00610079004E0061006D0065000100500072006F0064007500
      6300740044006900730070006C00610079004E0061006D006500010001000100
      01000D000A006300640073005F0050006B0073004200790049006E0076006500
      6E0074006F007200790050006C00610063006500490049004900490050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0073007400
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A00730074004F00740068006500720053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740053006F007200740069006E0067004F007200640065007200
      4E006F002E004F0072006900670069006E00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005200
      6500670050006F0069006E0074004E006F002E004F0072006900670069006E00
      010052006500670050006F0069006E0074004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004D007400700075006E006B0074002E004F0072006900670069006E00
      01005B004D00E4007400700075006E006B0074005D0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004600720064006900670076006100720061002E004F00720069006700
      69006E0001005B004600E400720064006900670076006100720061005D000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C00690073007400520076006100720061002E004F00720069006700
      69006E0001005B005200E50076006100720061005D0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074005000490050004E006F002E004F0072006900670069006E0001005000
      490050004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077002E0043006F006E006E006500630074006900
      6F006E004E0061006D006500010056004900530001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F0077004B0076006100
      6C0069007400650074002E004F0072006900670069006E0001004B0076006100
      6C0069007400650074000100010047007200610064006500010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700540072007300
      6C00610067002E004F0072006900670069006E0001005B0054007200E4007300
      6C00610067005D0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700550074006600720061006E00640065002E00
      4F0072006900670069006E0001005B00550074006600F600720061006E006400
      65005D0001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770049004D0050002E004F0072006900670069006E000100
      49004D005000010049006D0070007200650067006E006500720069006E006700
      0100540072006500610074006D0065006E007400010049006D00700072006500
      67006E006500720069006E00670001000D000A006300640073005F0053006F00
      72004F007200640052006F007700410054002E004F0072006900670069006E00
      01005B00410054005D0001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F007700410042002E004F007200690067006900
      6E000100410042000100010041005700010001000D000A006300640073005F00
      53006F0072004F007200640052006F0077004E0054002E004F00720069006700
      69006E0001004E005400010001004E005400010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004E0042002E004F0072006900
      670069006E0001004E004200010001004E005700010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770053006F00720074006900
      6E0067004F0072006400650072004E006F002E004F0072006900670069006E00
      010053006F007200740069006E0067004F0072006400650072004E006F000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770053006F007200740069006E0067004F00720064006500720052006F00
      77004E006F002E004F0072006900670069006E00010053006F00720074006900
      6E0067004F00720064006500720052006F0077004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004300
      530044004E006F002E004F0072006900670069006E0001004300530044004E00
      6F0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700500072006F0064007500630074004E006F002E004F007200
      6900670069006E000100500072006F0064007500630074004E006F0001000100
      010001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004D00430043006C006100730073004E006F002E004F007200690067006900
      6E0001004D00430043006C006100730073004E006F0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6F0064007500630074004C0065006E006700740068004E006F002E004F007200
      6900670069006E000100500072006F0064007500630074004C0065006E006700
      740068004E006F0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004C0065006E00670074006800440065007300
      6300720069007000740069006F006E002E004F0072006900670069006E000100
      4C0065006E006700740068004400650073006300720069007000740069006F00
      6E0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F00770050006C0061006E006E006500640041004D0033002E004F00
      72006900670069006E00010050006C0061006E006E006500640041004D003300
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F0077004E006F004F00660055006E006900740073002E004F0072006900
      670069006E0001004E006F004F00660055006E00690074007300010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      56006F006C0075006D00650055006E00690074004E006F002E004F0072006900
      670069006E00010056006F006C0075006D00650055006E00690074004E006F00
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700440061007400650043007200650061007400650064002E004F00
      72006900670069006E0001004400610074006500430072006500610074006500
      640001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700430072006500610074006500640055007300650072002E00
      4F0072006900670069006E000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A006300640073005F0053006F00
      72004F007200640052006F0077005000500050002E004F007200690067006900
      6E00010050005000500001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F007700500072006F00640049006E0073007400
      72007500630074004E006F002E004F0072006900670069006E00010050007200
      6F00640049006E007300740072007500630074004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      6300730049006E002E004F0072006900670069006E0001005000630073004900
      6E0001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F00770041004D00310049006E002E004F0072006900670069006E00
      010041004D00310049006E0001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F0077005400610072006700650074005000
      72006F0064007500630074002E004F0072006900670069006E00010054006100
      7200670065007400500072006F00640075006300740001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770043006F00
      7300740044006900730074002E004F0072006900670069006E00010043006F00
      73007400440069007300740001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700500072006900630065002E004F00
      72006900670069006E0001005000720069006300650001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      69006300650055006E00690074002E004F0072006900670069006E0001005000
      720069006300650055006E006900740001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077005000720069006F002E00
      4F0072006900670069006E0001005000720069006F0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770053007400
      61007400750073002E004F0072006900670069006E0001005300740061007400
      7500730001000100530074006100740075007300010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004D00610072006B002E00
      4F0072006900670069006E0001004D00610072006B0001004D00E40072006B00
      6E0069006E006700010001004D00E40072006B006E0069006E00670001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770043007500
      730074006F006D00650072002E004F0072006900670069006E00010043007500
      730074006F006D006500720001004B0075006E006400010001004B0075006E00
      640001000D000A006300640073005F0053006F0072004F007200640052006F00
      77004500780070006F007200740052006F0077002E004F007200690067006900
      6E0001004500780070006F007200740052006F00770001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6900630065004C006900730074004E006F002E004F0072006900670069006E00
      0100500072006900630065004C006900730074004E006F000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005300
      6F00720074004F0072006400650072002E004F0072006900670069006E000100
      53006F00720074004F00720064006500720001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004E006F0074006500
      4D00610072006B002E004F0072006900670069006E0001004E006F0074006500
      4D00610072006B0001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F0077004E006F00740065005300740061006D007000
      2E004F0072006900670069006E0001004E006F00740065005300740061006D00
      700001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F0077004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770041004D0033002E004F0072006900
      670069006E00010041004D00330001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004E004D0033002E004F007200
      6900670069006E0001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050004300
      53002E004F0072006900670069006E0001005000430053000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077004100
      4D0031002E004F0072006900670069006E00010041004D003100010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4F00750074007400750072006E004F00660049006E0070007500740041004D00
      33002E004F0072006900670069006E0001004F00750074007400750072006E00
      4F00660049006E0070007500740041004D00330001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700500072006F00
      6400750063007400560061006C00750065002E004F0072006900670069006E00
      0100500072006F006400750063007400560061006C0075006500010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      4C0061006E006700750061006700650063006F00640065002E004F0072006900
      670069006E0001004C0061006E006700750061006700650063006F0064006500
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700530069007A00650046006F0072006D00610074002E004F007200
      6900670069006E000100530069007A00650046006F0072006D00610074000100
      0100530069007A006500200066006F0072006D0061007400010001000D000A00
      6300640073005F0053006F0072004F007200640052006F0077004C0065006E00
      67007400680046006F0072006D00610074002E004F0072006900670069006E00
      01004C0065006E0067007400680046006F0072006D0061007400010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      56006F006C0075006D00650046006F0072006D00610074002E004F0072006900
      670069006E00010056006F006C0075006D00650046006F0072006D0061007400
      01000100010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700550072006C006100670067002E004F0072006900670069006E00
      0100550072006C0061006700670001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770045006E00640050006B006700
      41006C006C006F007700650064002E004F0072006900670069006E0001004500
      6E00640050006B00670041006C006C006F007700650064000100010001000100
      0D000A006300640073005F0053006F0072004F007200640052006F0077005000
      6B0067005000720065006600690078002E004F0072006900670069006E000100
      50006B00670050007200650066006900780001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F0077004E006F0074006500
      720069006E0067002E004F0072006900670069006E0001004E006F0074006500
      720069006E00670001004E006F00740065007200610001004E006F0074006500
      01004E006F00740065007200610001000D000A006300640073005F0053006F00
      72004F007200640052006F00770053007400690063006B005200650063006900
      700065002E004F0072006900670069006E00010053007400690063006B005200
      6500630069007000650001000100010001000D000A006300640073005F005300
      6F0072004F007200640052006F00770052006500660043006F00700069006500
      73002E004F0072006900670069006E00010052006500660043006F0070006900
      6500730001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770053007400610063006B00650072004E006F002E004F00
      72006900670069006E00010053007400610063006B00650072004E006F000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F00770041006E00740061006C0042006900740061007200550074002E004F00
      72006900670069006E00010041006E00740061006C0042006900740061007200
      5500740001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F00770041006E00740061006C004B006100700053006E006900
      740074002E004F0072006900670069006E00010041006E00740061006C004B00
      6100700053006E0069007400740001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F00770050006C0061006E006E006500
      64004E004D0033002E004F0072006900670069006E00010050006C0061006E00
      6E00650064004E004D00330001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770041007200740069006B0065006C00
      4B006F0064002E004F0072006900670069006E00010041007200740069006B00
      65006C004B006F006400010041007200740069006B0065006C006B006F006400
      0100410072007400690063006C006500200063006F0064006500010041007200
      740069006B0065006C006B006F00640001000D000A006300640073005F005300
      6F0072004F007200640052006F0077004D0052004B0045002E004F0072006900
      670069006E0001005B004D00C40052004B0045005D0001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770050007200
      6F00640041004D0031002E004F0072006900670069006E000100500072006F00
      640041004D00310001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700500072006F00640041004D0033002E004F00
      72006900670069006E000100500072006F00640041004D003300010001000100
      01000D000A006300640073005F0053006F0072004F007200640052006F007700
      500072006F0064005000430053002E004F0072006900670069006E0001005000
      72006F00640050004300530001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700500072006F00640050004B005400
      2E004F0072006900670069006E000100500072006F00640050004B0054000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700500072006F0064004E004D0033002E004F0072006900670069006E00
      0100500072006F0064004E004D00330001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004C004F004E0052002E00
      4F0072006900670069006E0001004C004F004E00520001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F00770053007000
      650063006900650073004E006F002E004F0072006900670069006E0001005300
      7000650063006900650073004E006F0001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F00770053007500720066006100
      630069006E0067004E006F002E004F0072006900670069006E00010053007500
      720066006100630069006E0067004E006F0001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F007700500072006F006400
      75006B0074002E004F0072006900670069006E000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006300
      640073005F0053004F005200610077002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A006300640073005F0053004F00520061007700500072006F00640075006300
      74004E006F002E004F0072006900670069006E000100500072006F0064007500
      630074004E006F0001000100010001000D000A006300640073005F0053004F00
      5200610077004D00430043006C006100730073004E006F002E004F0072006900
      670069006E0001004D00430043006C006100730073004E006F00010001000100
      01000D000A006300640073005F0053004F00520061007700500072006F006700
      720061006D004E006F002E004F0072006900670069006E000100500072006F00
      6700720061006D004E006F0001000100010001000D000A006300640073005F00
      53004F0052006100770044006100740065004300720065006100740065006400
      2E004F0072006900670069006E00010044006100740065004300720065006100
      74006500640001000100010001000D000A006300640073005F0053004F005200
      610077004D006F0064006900660069006500640055007300650072002E004F00
      72006900670069006E0001004D006F0064006900660069006500640055007300
      650072000100C4006E00640072006100640020006100760001000100C4006E00
      640072006100640020006100760001000D000A006300640073005F0053004F00
      5200610077004B006100730073006100740069006F006E005300740079006300
      6B002E004F0072006900670069006E0001004B00610073007300610074006900
      6F006E0053007400790063006B0001000100010001000D000A00630064007300
      5F0053004F005200610077004B006100730073006100740069006F006E004100
      4D0033002E004F0072006900670069006E0001004B0061007300730061007400
      69006F006E0041004D00330001000100010001000D000A006300640073005F00
      53004F005200610077004100760067004C0065006E006700740068002E004F00
      72006900670069006E0001004100760067004C0065006E006700740068000100
      4D006500640065006C006C00E4006E0067006400010001004D00650064006500
      6C006C00E4006E006700640001000D000A006300640073005F0053004F005200
      610077004C0065006E0067007400680044006500730063007200690070007400
      69006F006E002E004F0072006900670069006E0001004C0065006E0067007400
      68004400650073006300720069007000740069006F006E000100010001000100
      0D000A006300640073005F0053004F0052006100770050006C0061006E006E00
      6500640041004D0031002E004F0072006900670069006E00010050006C006100
      6E006E006500640041004D00310001000100010001000D000A00630064007300
      5F0053004F005200610077004300720065006100740065006400550073006500
      72002E004F0072006900670069006E0001004300720065006100740065006400
      5500730065007200010053006B00610070006100640020006100760001000100
      53006B00610070006100640020006100760001000D000A006300640073005F00
      53004F0052006100770041006E00740061006C00420069007400610072005500
      74002E004F0072006900670069006E00010041006E00740061006C0042006900
      7400610072005500740001000100010001000D000A006300640073005F005300
      4F00520061007700500065007200630065006E0074005000630073004F006600
      54006F00740061006C002E004F0072006900670069006E000100500065007200
      630065006E0074005000630073004F00660054006F00740061006C0001000100
      010001000D000A006300640073005F0053004F005200610077004B0061007300
      73006100740069006F006E0041004D0031002E004F0072006900670069006E00
      01004B006100730073006100740069006F006E0041004D003100010001000100
      01000D000A006300640073005F0053004F005200610077005400720069006D00
      41004D0031002E004F0072006900670069006E0001005400720069006D004100
      4D00310001000100010001000D000A006300640073005F0053004F0052006100
      77005400720069006D0041004D0033002E004F0072006900670069006E000100
      5400720069006D0041004D00330001000100010001000D000A00630064007300
      5F0053004F005200610077004D00610069006E005200610077004D0074007200
      6C002E004F0072006900670069006E0001004D00610069006E00520061007700
      4D00740072006C0001000100010001000D000A006300640073005F0053004F00
      5200610077005200650061006C004C0050004D002E004F007200690067006900
      6E0001005200650061006C004C0050004D0001000100010001000D000A006300
      640073005F0053004F00520061007700500072006F0064007500630074004C00
      65006E006700740068004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004C0065006E006700740068004E006F0001000100
      010001000D000A006300640073005F0053004F0052006100770041006E007400
      61006C004B006100700053006E006900740074002E004F007200690067006900
      6E00010041006E00740061006C004B006100700053006E006900740074000100
      0100010001000D000A006300640073005F0053004F0052006100770041006E00
      740061006C004C0061006D0065006C006C0065007200550074002E004F007200
      6900670069006E00010041006E00740061006C004C0061006D0065006C006C00
      650072005500740001000100010001000D000A006300640073005F0053004F00
      52006100770061005000630073002E004F0072006900670069006E0001006100
      50006300730001000100010001000D000A006300640073005F0053004F005200
      61007700610041004D0031002E004F0072006900670069006E00010061004100
      4D00310001000100010001000D000A006300640073005F0053004F0052006100
      770041004D0033002E004F0072006900670069006E00010041004D0033000100
      0100010001000D000A006300640073005F0053004F005200610077004E004D00
      33002E004F0072006900670069006E0001004E004D003300010001004E004D00
      3300010001000D000A006300640073005F0053004F0052006100770050004300
      53002E004F0072006900670069006E0001005000430053000100010001000100
      0D000A006300640073005F0053004F0052006100770041004D0031002E004F00
      72006900670069006E00010041004D00310001000100010001000D000A006300
      640073005F0053004F00520061007700470072006100640065004E006F002E00
      4F0072006900670069006E000100470072006100640065004E006F0001000100
      010001000D000A006300640073005F0053004F00520061007700530070006500
      63006900650073004E006F002E004F0072006900670069006E00010053007000
      650063006900650073004E006F0001000100010001000D000A00630064007300
      5F0053004F0052006100770053007500720066006100630069006E0067004E00
      6F002E004F0072006900670069006E0001005300750072006600610063006900
      6E0067004E006F0001000100010001000D000A006300640073005F0053004F00
      520061007700500072006F006400750063007400430061007400650067006F00
      720079004E006F002E004F0072006900670069006E000100500072006F006400
      750063007400430061007400650067006F00720079004E006F00010001000100
      01000D000A006300640073005F0053004F00520061007700410054002E004F00
      72006900670069006E0001005B00410054005D0001000100010001000D000A00
      6300640073005F0053004F00520061007700410042002E004F00720069006700
      69006E000100410042000100010041005700010001000D000A00630064007300
      5F0053004F005200610077004E0054002E004F0072006900670069006E000100
      4E005400010001004E005400010001000D000A006300640073005F0053004F00
      5200610077004E0042002E004F0072006900670069006E0001004E0042000100
      01004E005700010001000D000A006300640073005F0053004F00520061007700
      500072006F00640075006B0074002E004F0072006900670069006E0001005000
      72006F00640075006B00740001000100500072006F0064007500630074000100
      01000D000A006300640073005F0053004F005200610077005000720069006300
      65005000650072004E004D0033002E004F0072006900670069006E0001005000
      72006900630065005000650072004E004D00330001000100010001000D000A00
      6300640073005F0053004F0052006100770042006F006F006B00650064004E00
      4D0033002E004F0072006900670069006E00010042006F006F006B0065006400
      4E004D00330001000100010001000D000A006300640073005F00550073006500
      640050006B00670073002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0063006400
      73005F00550073006500640050006B0067007300500041004B00450054004E00
      52002E004F0072006900670069006E000100500041004B00450054004E005200
      0100010050004B00470020004E004F000100500041004C004C004E0052000100
      0D000A006300640073005F00550073006500640050006B00670073004C004500
      56004B004F0044002E004F0072006900670069006E0001004C00450056004B00
      4F0044000100010053005500500050004C00490045005200200043004F004400
      4500010001000D000A006300640073005F00550073006500640050006B006700
      7300500052004F00440055004B0054002E004F0072006900670069006E000100
      500052004F00440055004B0054000100500052004F00440055004B0054000100
      500052004F0044005500430054000100500052004F00440055004B0054000100
      0D000A006300640073005F00550073006500640050006B006700730041004E00
      54005000450052004C004E00470044002E004F0072006900670069006E000100
      5B0041004E0054005000450052004C00C4004E00470044005D00010001000100
      01000D000A006300640073005F00550073006500640050006B00670073004100
      4D0033002E004F0072006900670069006E00010041004D003300010001000100
      01000D000A006300640073005F00550073006500640050006B00670073005300
      5400590043004B002E004F0072006900670069006E0001005300540059004300
      4B000100010050004300530001005300C40043004B0001000D000A0063006400
      73005F00550073006500640050006B006700730041004D0031002E004F007200
      6900670069006E00010041004D00310001000100010001000D000A0063006400
      73005F00550073006500640050006B00670073004E004D0033002E004F007200
      6900670069006E0001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F00550073006500640050006B0067007300500061006300
      6B0061006700650054007900700065004E006F002E004F007200690067006900
      6E0001005000610063006B0061006700650054007900700065004E006F000100
      0100010001000D000A006300640073005F00550073006500640050006B006700
      73004C00490050004E006F002E004F0072006900670069006E0001004C004900
      50004E006F0001000100010001000D000A006300640073005F00550073006500
      640050006B00670073004C0061006700650072002E004F007200690067006900
      6E0001004C00610067006500720001000100530074006F0063006B0001000100
      0D000A006300640073005F00550073006500640050006B006700730050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0063006400
      73005F00550073006500640050006B00670073004D00410058004C0045004E00
      4700540048002E004F0072006900670069006E0001004D00410058004C004500
      4E0047005400480001000100010001000D000A006300640073005F0055007300
      6500640050006B00670073004F006C0064005000610063006B00610067006500
      4E006F002E004F0072006900670069006E0001004F006C006400500061006300
      6B006100670065004E006F0001000100010001000D000A006300640073005F00
      550073006500640050006B00670073004F006C00640053007500700070006C00
      69006500720043006F00640065002E004F0072006900670069006E0001004F00
      6C00640053007500700070006C0069006500720043006F006400650001000100
      010001000D000A006300640073005F00550073006500640050006B0067007300
      4F006C0064005000610063006B0061006700650054007900700065004E006F00
      2E004F0072006900670069006E0001004F006C0064005000610063006B006100
      6700650054007900700065004E006F0001000100010001000D000A0063006400
      73005F00550073006500640050006B0067007300520065006700690073007400
      720065007200610064002E004F0072006900670069006E000100520065006700
      6900730074007200650072006100640001000100520065006700690073007400
      6500720065006400010001000D000A006300640073005F005500730065006400
      50006B006700730053006F007200740069006E0067004F007200640065007200
      4E006F002E004F0072006900670069006E00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0063006400
      73005F00550073006500640050006B00670073004D00460042004D002E004F00
      72006900670069006E0001004D00460042004D00010001004D00460042004D00
      010001000D000A006300640073005F00550073006500640050006B0067007300
      500072006F00640075006300650072004E006F002E004F007200690067006900
      6E000100500072006F00640075006300650072004E006F000100010001000100
      0D000A006300640073005F00550073006500640050006B006700730050007200
      6F00640075006300740069006F006E0055006E00690074004E006F002E004F00
      72006900670069006E000100500072006F00640075006300740069006F006E00
      55006E00690074004E006F0001000100010001000D000A006300640073005F00
      550073006500640050006B00670073004F0077006E00650072004E006F002E00
      4F0072006900670069006E0001004F0077006E00650072004E006F0001000100
      010001000D000A006300640073005F00550073006500640050006B0067007300
      4C0065006E0067007400680053007000650063004E006F002E004F0072006900
      670069006E0001004C0065006E0067007400680053007000650063004E006F00
      01000100010001000D000A006300640073005F00550073006500640050006B00
      6700730050006B0067004E006F0049006E00760043006F0075006E0074002E00
      4F0072006900670069006E00010050006B0067004E006F0049006E0076004300
      6F0075006E00740001000100010001000D000A006300640073005F0055007300
      6500640050006B006700730050007200650066006900780049006E0076004300
      6F0075006E0074002E004F0072006900670069006E0001005000720065006600
      6900780049006E00760043006F0075006E00740001000100010001000D000A00
      6300640073005F004E006500770050006B00670073002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F004E006500770050006B00670073005000
      610063006B006100670065004E006F002E004F0072006900670069006E000100
      5000610063006B006100670065004E006F0001000100010001000D000A006300
      640073005F004E006500770050006B006700730053005500500050004C004900
      4500520043004F00440045002E004F0072006900670069006E00010053005500
      500050004C0049004500520043004F004400450001004C004500560045005200
      41004E005400D600520053004B004F004400010001004C004500560045005200
      41004E005400D600520053004B004F00440001000D000A006300640073005F00
      4E006500770050006B0067007300500052004F00440055004B0054002E004F00
      72006900670069006E0001005200650067006900730074007200650072006100
      6400010001005200650067006900730074006500720065006400010001000D00
      0A006300640073005F004E006500770050006B006700730041004E0054005000
      450052004C004E00470044002E004F0072006900670069006E0001005B004100
      4E0054005000450052004C00C4004E00470044005D0001000100010001000D00
      0A006300640073005F004E006500770050006B006700730041004D0033002E00
      4F0072006900670069006E00010041004D00330001000100010001000D000A00
      6300640073005F004E006500770050006B006700730053005400590043004B00
      2E004F0072006900670069006E00010053005400590043004B00010001005000
      4300530001005300C40043004B0001000D000A006300640073005F004E006500
      770050006B006700730041004D0031002E004F0072006900670069006E000100
      41004D00310001000100010001000D000A006300640073005F004E0065007700
      50006B00670073004E004D0033002E004F0072006900670069006E0001004E00
      4D003300010001004E004D003300010001000D000A006300640073005F004E00
      6500770050006B006700730053006F007200740069006E0067004F0072006400
      650072004E006F002E004F0072006900670069006E00010053006F0072007400
      69006E0067004F0072006400650072004E006F0001000100010001000D000A00
      6300640073005F004E006500770050006B006700730053006F00720074006900
      6E0067004F00720064006500720052006F0077004E006F002E004F0072006900
      670069006E00010053006F007200740069006E0067004F007200640065007200
      52006F0077004E006F0001000100010001000D000A006300640073005F004E00
      6500770050006B00670073005000610063006B00610067006500540079007000
      65004E006F002E004F0072006900670069006E0001005000610063006B006100
      6700650054007900700065004E006F0001000100010001000D000A0063006400
      73005F004E006500770050006B00670073004C00490050004E006F002E004F00
      72006900670069006E0001004C00490050004E006F0001000100010001000D00
      0A006300640073005F004E006500770050006B00670073004D00460042004D00
      2E004F0072006900670069006E0001004D00460042004D00010001004D004600
      42004D00010001000D000A006300640073005F004E006500770050006B006700
      73005300740061007400750073002E004F0072006900670069006E0001005300
      7400610074007500730001000100530074006100740075007300010001000D00
      0A006300640073005F004E006500770050006B00670073004F004C0044004C00
      490050004E006F002E004F0072006900670069006E0001004F004C0044004C00
      490050004E006F0001000100010001000D000A006300640073005F004E006500
      770050006B00670073004F004C0044004D00430043006C006100730073004E00
      6F002E004F0072006900670069006E0001004F004C0044004D00430043006C00
      6100730073004E006F0001000100010001000D000A006300640073005F004E00
      6500770050006B00670073004D00410058004C0045004E004700540048002E00
      4F0072006900670069006E0001004D00410058004C0045004E00470054004800
      01000100010001000D000A006300640073005F004E006500770050006B006700
      73004D0041005800500072006F0064007500630074004C0065006E0067007400
      68004E006F002E004F0072006900670069006E0001004D004100580050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      01000D000A006300640073005F004E006500770050006B006700730056006100
      72007500560061007200640065002E004F0072006900670069006E0001005600
      6100720075005600610072006400650001000100010001000D000A0063006400
      73005F004E006500770050006B006700730050007200690073002E004F007200
      6900670069006E00010050007200690073000100010050007200690063006500
      010001000D000A006300640073005F004E006500770050006B00670073005000
      72006900630065005F00530045004B005000650072004E004D0033002E004F00
      72006900670069006E000100500072006900630065005F00530045004B005000
      650072004E004D00330001000100010001000D000A006300640073005F004E00
      6500770050006B0067007300500072006900630065004C006900730074004E00
      6F002E004F0072006900670069006E000100500072006900630065004C006900
      730074004E006F0001000100010001000D000A006300640073005F004E006500
      770050006B0067007300500072006F0064007500630074004E006F002E004F00
      72006900670069006E000100500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F004E006500770050006B0067007300
      50006B0067005300740061007400750073002E004F0072006900670069006E00
      010050006B00670053007400610074007500730001000100010001000D000A00
      6300640073005F004E006500770050006B006700730052006500670069007300
      7400720065007200610064002E004F0072006900670069006E00010052006500
      6700690073007400720065007200610064000100010052006500670069007300
      74006500720065006400010001000D000A00730070005F007600690073005F00
      4100760052006500670050006B0067002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A00730070005F007600690073005F004100760052006500670050006B006700
      2E00530074006F00720065006400500072006F0063004E0061006D0065000100
      640062006F002E007600690073005F004100760052006500670050006B006700
      5F0049004900420001000100010001000D000A004600440071005F0047006500
      74004C0049005000410074007400410076005200650067004D006F0074002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A004600440071005F004700650074004C00
      49005000410074007400410076005200650067004D006F007400530075007000
      70006C0069006500720043006F00640065002E004F0072006900670069006E00
      010053007500700070006C0069006500720043006F006400650001004C006500
      76006500720061006E007400F600720073006B006F0064000100530075007000
      70006C0069006500720063006F006400650001004C0065007600650072006100
      6E007400F600720073006B006F00640001000D000A004600440071005F004700
      650074004C0049005000410074007400410076005200650067004D006F007400
      4C0049005000470072006F00750070004E006F002E004F007200690067006900
      6E0001004C0049005000470072006F00750070004E006F000100010001000100
      0D000A004600440071005F004700650074004C00490050004100740074004100
      76005200650067004D006F00740049006E00760065006E005400790070006500
      2E004F0072006900670069006E00010049006E00760065006E00540079007000
      650001000100010001000D000A004600440071005F004700650074004C004900
      5000410074007400410076005200650067004D006F0074004C00490050004E00
      6F002E004F0072006900670069006E0001004C00490050004E006F0001000100
      010001000D000A004600440071005F004700650074004C004900500041007400
      7400410076005200650067004D006F007400410076005200650067002E004F00
      72006900670069006E0001004100760052006500670001000100010001000D00
      0A004600440071005F004700650074004C004900500041007400740041007600
      5200650067004D006F00740050006B0067005200650061006C004C0049005000
      4E006F002E004F0072006900670069006E00010050006B006700520065006100
      6C004C00490050004E006F0001000100010001000D000A004600440071005F00
      4700650074004100760052006500670050006B0067004E006F002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A004600440071005F00470065007400410076005200
      6500670050006B0067004E006F005000610063006B006100670065004E006F00
      2E004F0072006900670069006E0001005000610063006B006100670065004E00
      6F0001000100010001000D000A004600440071005F0047006500740041007600
      52006500670050006B0067004E006F0053007500700070006C00690065007200
      43006F00640065002E004F0072006900670069006E0001005300750070007000
      6C0069006500720043006F006400650001004C00650076006500720061006E00
      7400F600720073006B006F006400010053007500700070006C00690065007200
      63006F006400650001004C00650076006500720061006E007400F60072007300
      6B006F00640001000D000A004600440071005F00470065007400410076005200
      6500670050006B0067004E006F004C006F0067006900630061006C0049006E00
      760065006E0074006F007200790050006F0069006E0074004E006F002E004F00
      72006900670069006E0001004C006F0067006900630061006C0049006E007600
      65006E0074006F007200790050006F0069006E0074004E006F00010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B0067002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B006700500052004F00440055004300
      54002E004F0072006900670069006E000100500052004F004400550043005400
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067005000410043004B004100470045004E004F002E004F00
      72006900670069006E0001005000410043004B004100470045004E004F000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B0067005000410043004B0041004700450054005900500045004E00
      4F002E004F0072006900670069006E0001005000410043004B00410047004500
      54005900500045004E004F0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B00670053005500500050005F00
      43004F00440045002E004F0072006900670069006E0001005300550050005000
      5F0043004F004400450001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B0067004D0033005F004E0045005400
      2E004F0072006900670069006E0001004D0033005F004E004500540001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067005000430053002E004F0072006900670069006E00010050004300
      530001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B0067004D0033005F004E004F004D002E004F0072006900
      670069006E0001004D0033005F004E004F004D0001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004B00
      56004D002E004F0072006900670069006E0001004B0056004D00010001004D00
      3200010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B0067004C004F0050004D002E004F0072006900670069006E000100
      4C004F0050004D0001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B006700500052004F004400550043005400
      4E004F002E004F0072006900670069006E000100500052004F00440055004300
      54004E004F0001000100010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B00670049004E00560045004E0054004F005200
      59002E004F0072006900670069006E00010049004E00560045004E0054004F00
      52005900010049004E00560045004E0054004500520049004E00470001000100
      49004E00560045004E0054004500520049004E00470001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B0067004F004E005300
      5400490043004B0053002E004F0072006900670069006E0001004F004E005300
      5400490043004B00530001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B0067005000430053005F0050004500
      52005F004C0045004E004700540048002E004F0072006900670069006E000100
      5000430053005F005000450052005F004C0045004E0047005400480001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B0067004F0057004E00450052002E004F0072006900670069006E000100
      4F0057004E004500520001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B0067004F0057004E00450052004E00
      4F002E004F0072006900670069006E0001004F0057004E00450052004E004F00
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004C004F0047005F0049004E00560045004E0054004F00
      520059005F004E004F002E004F0072006900670069006E0001004C004F004700
      5F0049004E00560045004E0054004F00520059005F004E004F00010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B0067004200410052005F0043004F00440045002E004F007200690067006900
      6E0001004200410052005F0043004F004400450001000100010001000D000A00
      730071005F004F006E00650055006E00690071007500650050006B0067004200
      4100520043004F00440045005F00490044002E004F0072006900670069006E00
      010042004100520043004F00440045005F004900440001000100010001000D00
      0A00730071005F004F006E00650055006E00690071007500650050006B006700
      470052004100440045005F005300540041004D0050002E004F00720069006700
      69006E000100470052004100440045005F005300540041004D00500001000100
      010001000D000A00730071005F004F006E00650055006E006900710075006500
      50006B006700470052004100440045005300540041004D0050004E004F002E00
      4F0072006900670069006E000100470052004100440045005300540041004D00
      50004E004F0001000100010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B00670057005200410050005F00540059005000
      45002E004F0072006900670069006E00010057005200410050005F0054005900
      5000450001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700570052004100500054005900500045004E00
      4F002E004F0072006900670069006E0001005700520041005000540059005000
      45004E004F0001000100010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B00670053005500500050004C00490045005200
      4E004F002E004F0072006900670069006E00010053005500500050004C004900
      450052004E004F0001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067004F004C0044005F00500041004300
      4B0041004700450054005900500045004E004F002E004F007200690067006900
      6E0001004F004C0044005F005000410043004B00410047004500540059005000
      45004E004F0001000100010001000D000A00730071005F004F006E0065005500
      6E00690071007500650050006B0067004D00430043006C006100730073004E00
      6F002E004F0072006900670069006E0001004D00430043006C00610073007300
      4E006F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B006700450078004C006F0067002E004F0072006900
      670069006E000100450078004C006F00670001000100010001000D000A007300
      71005F004F006E00650055006E00690071007500650050006B00670054007900
      700065004F0066004C006F0067002E004F0072006900670069006E0001005400
      7900700065004F0066004C006F00670001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B006700700072006F00
      6400750063007400670072006F00750070006E006F002E004F00720069006700
      69006E000100700072006F006400750063007400670072006F00750070006E00
      6F0001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B0067005000490050002E004F0072006900670069006E00
      010050004900500001000100010001000D000A00730071005F004F006E006500
      55006E00690071007500650050006B0067005000630073005000650072004200
      75006E0064006C0065002E004F0072006900670069006E000100500063007300
      500065007200420075006E0064006C00650001000100010001000D000A007300
      71005F004F006E00650055006E00690071007500650050006B00670042007500
      6E0064006C006500730050006500720050006B0067002E004F00720069006700
      69006E000100420075006E0064006C006500730050006500720050006B006700
      01000100010001000D000A00730071005F004F006E00650055006E0069007100
      7500650050006B0067004F004C0044004C00490050004E006F002E004F007200
      6900670069006E0001004F004C0044004C00490050004E006F00010001000100
      01000D000A00730071005F004F006E00650055006E0069007100750065005000
      6B0067004F004C0044004D00430043006C006100730073004E006F002E004F00
      72006900670069006E0001004F004C0044004D00430043006C00610073007300
      4E006F0001000100010001000D000A00730071005F004F006E00650055006E00
      690071007500650050006B0067004E0054004D004D002E004F00720069006700
      69006E0001004E0054004D004D0001000100010001000D000A00730071005F00
      4F006E00650055006E00690071007500650050006B0067004E0042004D004D00
      2E004F0072006900670069006E0001004E0042004D004D000100010001000100
      0D000A00730071005F004F006E00650055006E00690071007500650050006B00
      6700410054004D004D002E004F0072006900670069006E000100410054004D00
      4D0001000100010001000D000A00730071005F004F006E00650055006E006900
      71007500650050006B006700410042004D004D002E004F007200690067006900
      6E000100410042004D004D0001000100010001000D000A00730071005F004F00
      6E00650055006E00690071007500650050006B00670053007000650063006900
      650073004E006F002E004F0072006900670069006E0001005300700065006300
      6900650073004E006F0001000100010001000D000A00730071005F004F006E00
      650055006E00690071007500650050006B006700530075007200660061006300
      69006E0067004E006F002E004F0072006900670069006E000100530075007200
      66006100630069006E0067004E006F0001000100010001000D000A0073007100
      5F004F006E00650055006E00690071007500650050006B00670049004D005000
      4E006F002E004F0072006900670069006E00010049004D0050004E006F000100
      0100010001000D000A00730071005F004F006E00650055006E00690071007500
      650050006B006700470072006100640065004E006F002E004F00720069006700
      69006E000100470072006100640065004E006F0001000100010001000D000A00
      730070005F004E0065007700530070006C006900740050006B0067002E004300
      6F006E006E0065006300740069006F006E004E0061006D006500010056004900
      530001000100010001000D000A00730070005F004E0065007700530070006C00
      6900740050006B0067002E00530074006F00720065006400500072006F006300
      4E0061006D00650001007600690073005F0076006900640061002E0064006200
      6F002E007600690073005F0053004F004E0065007700530070006C0069007400
      50006B0067005F004900490001000100010001000D000A00730070005F005300
      4F005500700064004F006C006400530070006C00690074002E0043006F006E00
      6E0065006300740069006F006E004E0061006D00650001005600490053000100
      0100010001000D000A00730070005F0053004F005500700064004F006C006400
      530070006C00690074002E00530074006F00720065006400500072006F006300
      4E0061006D00650001007600690073005F0076006900640061002E0064006200
      6F002E007600690073005F0053004F005500700064004F006C00640053007000
      6C00690074005F004900490001000100010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073002E0049006E00640065007800
      4600690065006C0064004E0061006D006500730001004C006F00610064004400
      65007400610069006C004E006F0001000100010001000D000A006D0074004C00
      6F00610064005000610063006B0061006700650073002E005600650072007300
      69006F006E00010037002E00360033002E003000300020005300740061006E00
      64006100720064002000450064006900740069006F006E000100010001000100
      0D000A00730070005F0052006500670072006500740044006500520065006700
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00730070005F005200650067007200
      65007400440065005200650067002E00530074006F0072006500640050007200
      6F0063004E0061006D0065000100640062006F002E005600690073005F004300
      6E0063006C004100760072006500670001000100010001000D000A0073007000
      5F005000610063006B00610067006500540079007000650073002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730070005F005000610063006B00610067006500
      540079007000650073002E00530074006F00720065006400500072006F006300
      4E0061006D00650001007600690073005F0076006900640061002E0064006200
      6F002E007600690073005F0050006B00670054007900700065005F0049004900
      01000100010001000D000A00730070005F005000610063006B00610067006500
      540079007000650073005000610063006B006100670065005400790070006500
      4E006F002E004F0072006900670069006E0001005000610063006B0061006700
      650054007900700065004E006F0001000100010001000D000A00730070005F00
      5000610063006B00610067006500540079007000650044006500740061006900
      6C002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00730070005F00500061006300
      6B006100670065005400790070006500440065007400610069006C002E005300
      74006F00720065006400500072006F0063004E0061006D006500010076006900
      73005F0076006900640061002E00640062006F002E0076006900640061005F00
      5000610063006B00610067006500540079007000650044006500740061006900
      6C0001000100010001000D000A00630064007300500072006F0064004C006500
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
      0A00730070005F004E00650077005000610063006B0061006700650054007900
      700065002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730070005F004E006500
      77005000610063006B0061006700650054007900700065002E00530074006F00
      720065006400500072006F0063004E0061006D00650001007600690073005F00
      76006900640061002E00640062006F002E007600690073005F004E0065007700
      50006B006700540079007000650001000100010001000D000A00730070005F00
      4E00650077005000610063006B00610067006500440065007400610069006C00
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      56004900530001000100010001000D000A00730070005F004E00650077005000
      610063006B00610067006500440065007400610069006C002E00530074006F00
      720065006400500072006F0063004E0061006D00650001007600690073005F00
      76006900640061002E00640062006F002E0076006900640061005F004E006500
      77005000610063006B00610067006500440065007400610069006C0001000100
      010001000D000A00730070005F005000610063006B0061006700650054006F00
      740061006C0073002E0043006F006E006E0065006300740069006F006E004E00
      61006D006500010056004900530001000100010001000D000A00730070005F00
      5000610063006B0061006700650054006F00740061006C0073002E0053007400
      6F00720065006400500072006F0063004E0061006D0065000100760069007300
      5F0076006900640061002E00640062006F002E0076006900640061005F005000
      610063006B0061006700650054006F00740061006C0073000100010001000100
      0D000A00730070005F004F006E0065005000610063006B006100670065004E00
      6F002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A00730070005F004F006E006500
      5000610063006B006100670065004E006F002E00530074006F00720065006400
      500072006F0063004E0061006D00650001007600690073005F00760069006400
      61002E00640062006F002E0076006900640061005F004F006E00650050006100
      63006B006100670065004E006F0001000100010001000D000A00730070005F00
      50006F00700075006C006100740065005F004F006E0065005F0050006B006700
      54007900700065004C0065006E0067007400680073002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A00730070005F0050006F00700075006C006100740065005F00
      4F006E0065005F0050006B00670054007900700065004C0065006E0067007400
      680073002E00530074006F00720065006400500072006F0063004E0061006D00
      650001007600690073005F0076006900640061002E00640062006F002E007600
      6900640061005F0050006F00700075006C006100740065005F004F006E006500
      5F005000610063006B0061006700650054007900700065004C0065006E006700
      74006800730001000100010001000D000A006D00740050006300730050006500
      72004C0065006E006700740068002E0049006E00640065007800460069006500
      6C0064004E0061006D00650073000100500072006F0064007500630074004C00
      65006E006700740068004E006F0001000100010001000D000A006D0074005000
      630073005000650072004C0065006E006700740068002E005600650072007300
      69006F006E00010037002E00360033002E003000300020005300740061006E00
      64006100720064002000450064006900740069006F006E000100010001000100
      0D000A006300640073005F0050006B0073004200790049006E00760065006E00
      74006F007200790050006C0061006300650049004900490049002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A006300640073005F0050006B007300420079004900
      6E00760065006E0074006F007200790050006C00610063006500490049004900
      49005300740061007400750073002E004F0072006900670069006E0001005300
      7400610074007500730001000100530074006100740075007300010001000D00
      0A006300640073005F0050006B0073004200790049006E00760065006E007400
      6F007200790050006C0061006300650049004900490049004C00610067006500
      72002E004F0072006900670069006E0001004C00610067006500720001000100
      530074006F0063006B00010001000D000A006300640073005F0050006B007300
      4200790049006E00760065006E0074006F007200790050006C00610063006500
      49004900490049004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      50006B0073004200790049006E00760065006E0074006F007200790050006C00
      610063006500490049004900490049006E0063006C0075006400650064004900
      6E00520075006E002E004F0072006900670069006E00010049006E0063006C00
      750064006500640049006E00520075006E0001000100010001000D000A006300
      640073005F0050006B0073004200790049006E00760065006E0074006F007200
      790050006C00610063006500490049004900490049006E0049006E0076006500
      6E0074006F00720079002E004F0072006900670069006E00010049006E004900
      6E00760065006E0074006F007200790001000100010001000D000A0063006400
      73005F0050006B0073004200790049006E00760065006E0074006F0072007900
      50006C0061006300650049004900490049004F0077006E00650072004E006F00
      2E004F0072006900670069006E0001004F0077006E00650072004E006F000100
      0100010001000D000A006300640073005F0050006B0073004200790049006E00
      760065006E0074006F007200790050006C006100630065004900490049004900
      5000490050004E006F002E004F0072006900670069006E000100500049005000
      4E006F0001000100010001000D000A00730070005F0041006E00670072006100
      530070006C006900740050006B0067002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A00730070005F0041006E00670072006100530070006C006900740050006B00
      67002E00530074006F00720065006400500072006F0063004E0061006D006500
      01007600690073005F0076006900640061002E00640062006F002E0076006900
      73005F0041004F00440065006C00530070006C006900740050006B0067004600
      72006F006D00530079007300740065006D0001000100010001000D000A007300
      70005F0050006B0067005F005200650073002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001005600490053000100010001000100
      0D000A00730070005F0050006B0067005F005200650073002E00530074006F00
      720065006400500072006F0063004E0061006D00650001007600690073005F00
      76006900640061002E00640062006F002E0076006900640061005F0050006B00
      67005F005200650073004D006F00640075006C0001000100010001000D000A00
      730070005F00440065006C006500740065005F005200650073005F0050006B00
      670073002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A00730070005F0044006500
      6C006500740065005F005200650073005F0050006B00670073002E0053007400
      6F00720065006400500072006F0063004E0061006D0065000100760069007300
      5F0076006900640061002E00640062006F002E0076006900640061005F004400
      65006C005F0050006B0067005F005200650073004D006F00640075006C000100
      0100010001000D000A00730070005F006C0065006E0063006F006C0070006300
      730070006B00670074007900700065006E006F002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730070005F006C0065006E0063006F006C007000630073007000
      6B00670074007900700065006E006F002E00530074006F007200650064005000
      72006F0063004E0061006D00650001007600690073005F007600690064006100
      2E00640062006F002E007600690073005F006C0065006E0063006F006C007000
      6300730070006B00670074007900700065006E006F0001000100010001000D00
      0A00730071005F0047006500740050006B00670050006F0073002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730071005F0047006500740050006B0067005000
      6F00730043006C00690065006E00740043006F00640065002E004F0072006900
      670069006E00010043006C00690065006E00740043006F006400650001000100
      010001000D000A00730071005F0047006500740050006B00670050006F007300
      50006B0074004E0072004C00650076004B006F0064002E004F00720069006700
      69006E00010050006B0074004E0072004C00650076004B006F00640001000100
      010001000D000A00730071005F0047006500740050006B00670050006F007300
      500061006B00650074004E006F0050006F0073002E004F007200690067006900
      6E000100500061006B00650074004E006F0050006F0073000100500061006B00
      650074004E007200200070006F0073006900740069006F006E00010050006B00
      67004E006F00200070006F0073006900740069006F006E000100500061006C00
      6C004E007200200070006F0073006900740069006F006E0001000D000A007300
      71005F0047006500740050006B00670050006F007300500061006B0065007400
      4E006F004C0065006E006700740068002E004F0072006900670069006E000100
      500061006B00650074004E006F004C0065006E00670074006800010050006100
      6B00650074004E0072004C00E4006E0067006400010050006B0067004E006F00
      4C0065006E006700740068000100500061006C006C004E0072004C00E4006E00
      6700640001000D000A00730071005F0047006500740050006B00670050006F00
      730053007500700070006C0069006500720043006F006400650050006F007300
      2E004F0072006900670069006E00010053007500700070006C00690065007200
      43006F006400650050006F00730001000100010001000D000A00730071005F00
      47006500740050006B00670050006F00730053007500700070006C0069006500
      720043006F00640065004C0065006E006700740068002E004F00720069006700
      69006E00010053007500700070006C0069006500720043006F00640065004C00
      65006E0067007400680001000100010001000D000A00730071005F0047006500
      740050006B0067005000720065006600690078002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000100
      01000D000A00730071005F0047006500740050006B0067005000720065006600
      6900780050006B0067005000720065006600690078002E004F00720069006700
      69006E00010050006B0067005000720065006600690078000100010001000100
      0D000A006300640073005F00500072006F00640049006E004C00610067006500
      72002E0043006F006E006E0065006300740069006F006E004E0061006D006500
      010056004900530001000100010001000D000A006300640073005F0050007200
      6F00640049006E004C006100670065007200500072006F006400750063007400
      44006900730070006C00610079004E0061006D0065002E004F00720069006700
      69006E000100500072006F00640075006300740044006900730070006C006100
      79004E0061006D00650001000100010001000D000A006300640073005F005000
      72006F00640049006E004C006100670065007200500072006F00640075006300
      74004E006F002E004F0072006900670069006E000100500072006F0064007500
      630074004E006F0001000100010001000D000A00730070004100630063006500
      730073005200690067006800740073002E0043006F006E006E00650063007400
      69006F006E004E0061006D006500010056004900530001000100010001000D00
      0A00730070004100630063006500730073005200690067006800740073002E00
      530074006F00720065006400500072006F0063004E0061006D00650001007600
      690073005F0076006900640061002E00640062006F002E007600690064006100
      5F0055007300650072005200690067006800740073005F005600340001000100
      010001000D000A00730071005F005000720065006600690078002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730071005F005000720065006600690078004300
      6C00690065006E00740043006F00640065002E004F0072006900670069006E00
      010043006C00690065006E00740043006F006400650001000100010001000D00
      0A00730071005F0050007200650066006900780043006C00690065006E007400
      4E0061006D0065002E004F0072006900670069006E00010043006C0069006500
      6E0074004E0061006D00650001000100010001000D000A00730071005F005000
      7200650066006900780043006C00690065006E0074004E006F002E004F007200
      6900670069006E00010043006C00690065006E0074004E006F00010001000100
      01000D000A006300640073005F0052006500670050006F0069006E0074002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F005200650067005000
      6F0069006E007400500072006F00640075006300740069006F006E0055006E00
      690074004E0061006D0065002E004F0072006900670069006E00010050007200
      6F00640075006300740069006F006E0055006E00690074004E0061006D006500
      01000100010001000D000A006300640073005F0052006500670050006F006900
      6E00740052006500670069007300740072006100740069006F006E0050006F00
      69006E0074004E006F002E004F0072006900670069006E000100520065006700
      69007300740072006100740069006F006E0050006F0069006E0074004E006F00
      01000100010001000D000A00460044005F0053006F007200740069006E006700
      4F0072006400650072002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0046004400
      5F0053006F007200740069006E0067004F007200640065007200500072006F00
      640075006300650072004E006F002E004F0072006900670069006E0001005000
      72006F00640075006300650072004E006F0001000100010001000D000A004600
      44005F0053006F007200740069006E0067004F0072006400650072004F007700
      6E00650072004E006F002E004F0072006900670069006E0001004F0077006E00
      650072004E006F0001000100010001000D000A00460044005F0053006F007200
      740069006E0067004F00720064006500720053006F007200740069006E006700
      4F0072006400650072004E006F002E004F0072006900670069006E0001005300
      6F007200740069006E0067004F0072006400650072004E006F00010001000100
      01000D000A00460044005F0053006F007200740069006E0067004F0072006400
      6500720052006500670050006F0069006E0074004E006F002E004F0072006900
      670069006E00010052006500670050006F0069006E0074004E006F0001000100
      010001000D000A00460044005F0053006F007200740069006E0067004F007200
      6400650072005000490050004E006F002E004F0072006900670069006E000100
      5000490050004E006F0001000100010001000D000A006300640073005F005000
      6B00670049006E0066006F002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      640073005F0050006B00670049006E0066006F00500061006B00650074004E00
      72002E004F0072006900670069006E000100500061006B00650074004E007200
      0100010050006B0067004E006F000100500061006C006C006E00720001000D00
      0A006300640073005F0050006B00670049006E0066006F005000720065006600
      690078002E004F0072006900670069006E000100500072006500660069007800
      01000100500072006500660069007800010001000D000A006300640073005F00
      50006B00670049006E0066006F00500072006F00640075006B0074002E004F00
      72006900670069006E000100500072006F00640075006B007400010001005000
      72006F006400750063007400010001000D000A006300640073005F0050006B00
      670049006E0066006F004C006E00670064002E004F0072006900670069006E00
      01005B004C00E4006E00670064005D0001000100010001000D000A0063006400
      73005F0050006B00670049006E0066006F00460069006E006E00730049004C00
      61006700650072002E004F0072006900670069006E000100460069006E006E00
      730049004C00610067006500720001000100010001000D000A00630064007300
      5F0050006B00670049006E0066006F005200740074004C006100670065007200
      2E004F0072006900670069006E0001005B005200E400740074004C0061006700
      650072005D0001000100010001000D000A006300640073005F0050006B006700
      49006E0066006F0052007400740067006100720065002E004F00720069006700
      69006E0001005B005200E40074007400C40067006100720065005D0001000100
      010001000D000A006300640073005F0050006B00670049006E0066006F006700
      6100720065002E004F0072006900670069006E0001005B00C400670061007200
      65005D0001000100010001000D000A006300640073005F0050006B0067004900
      6E0066006F004C0061006700650072007300740061007400750073002E004F00
      72006900670069006E0001004C00610067006500720073007400610074007500
      730001000100010001000D000A006300640073005F0050006B00670049006E00
      66006F00520074007400440069006D0065006E00730069006F006E002E004F00
      72006900670069006E0001005B005200E40074007400440069006D0065006E00
      730069006F006E005D0001000100010001000D000A006300640073005F005000
      6B00670049006E0066006F004100760072006500670069007300740072006500
      7200610074002E004F0072006900670069006E00010041007600720065006700
      690073007400720065007200610074000100010055006E007200650067006900
      730074006500720065006400010001000D000A006300640073005F0050006B00
      670049006E0066006F00500072006F0064007500630074004E006F002E004F00
      72006900670069006E000100500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F0050006B00670049006E0066006F00
      4C00490050004E006F002E004F0072006900670069006E0001004C0049005000
      4E006F0001000100010001000D000A006300640073005F0050006B0067004900
      6E0066006F00500072006F00640075006300650072004E006F002E004F007200
      6900670069006E000100500072006F00640075006300650072004E006F000100
      0100010001000D000A006300640073005F0050006B00670049006E0066006F00
      4F0077006E00650072004E006F002E004F0072006900670069006E0001004F00
      77006E00650072004E006F0001000100010001000D000A006300640073005F00
      50006B00670049006E0066006F005000490050004E006F002E004F0072006900
      670069006E0001005000490050004E006F0001000100010001000D000A007300
      70005F004100760072006500670042007900520075006C0065002E0043006F00
      6E006E0065006300740069006F006E004E0061006D0065000100560049005300
      01000100010001000D000A00730070005F004100760072006500670042007900
      520075006C0065002E00530074006F00720065006400500072006F0063004E00
      61006D0065000100640062006F002E007600690073005F004100760072006500
      670042007900520075006C00650001000100010001000D000A00630064007300
      5F0050006B0073004200790049006E00760065006E0074006F00720079005000
      6C0061006300650049004900490049002E00530074006F007200650064005000
      72006F0063004E0061006D0065000100640062006F002E007600690073005F00
      50006B0073004200790049006E00760065006E0074006F007200790050006C00
      610063006500490049004900490001000100010001000D000A00630064007300
      5F0050006B0073004200790049006E00760065006E0074006F00720079005000
      6C0061006300650049004900490049005000610063006B006100670065004E00
      6F002E004F0072006900670069006E0001005000610063006B00610067006500
      4E006F0001000100010001000D000A006300640073005F0050006B0073004200
      790049006E00760065006E0074006F007200790050006C006100630065004900
      49004900490053007500700070006C0069006500720043006F00640065002E00
      4F0072006900670069006E00010053007500700070006C006900650072004300
      6F006400650001000100010001000D000A006300640073005F0050006B007300
      4200790049006E00760065006E0074006F007200790050006C00610063006500
      490049004900490053007500700070006C006900650072004E006F002E004F00
      72006900670069006E00010053007500700070006C006900650072004E006F00
      01000100010001000D000A006300640073005F0050006B007300420079004900
      6E00760065006E0074006F007200790050006C00610063006500490049004900
      49004C0065006E00670074006800440065007300630072006900700074006900
      6F006E002E004F0072006900670069006E0001004C0065006E00670074006800
      4400650073006300720069007000740069006F006E0001000100010001000D00
      0A006300640073005F0050006B0073004200790049006E00760065006E007400
      6F007200790050006C006100630065004900490049004900500072006F006400
      75006300740044006900730070006C00610079004E0061006D0065002E004F00
      72006900670069006E000100500072006F006400750063007400440069007300
      70006C00610079004E0061006D00650001000100010001000D000A0063006400
      73005F0050006B0073004200790049006E00760065006E0074006F0072007900
      50006C006100630065004900490049004900500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      6D0074004C006F00610064005000610063006B0061006700650073002E004900
      6E0064006500780044006500660073005B0030005D002E004600690065006C00
      6400730001005000410043004B004100470045004E004F003B00530055005000
      50005F0043004F004400450001000100010001000D000A006D0074004C006F00
      610064005000610063006B0061006700650073002E0049006E00640065007800
      44006500660073005B0031005D002E004600690065006C006400730001004C00
      6F0061006400440065007400610069006C004E006F0001000100010001000D00
      0A006D0074005000630073005000650072004C0065006E006700740068002E00
      49006E0064006500780044006500660073005B0030005D002E00460069006500
      6C0064007300010041004C004D004D0001000100010001000D000A006D007400
      5000630073005000650072004C0065006E006700740068002E0049006E006400
      6500780044006500660073005B0031005D002E004600690065006C0064007300
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      01000100010001000D000A00460044006D005F00410076005200650067005000
      6B00670073002E0049006E00640065007800650073005B0030005D002E004600
      690065006C00640073000100500061006B00650074004E0072003B0050007200
      650066006900780001000100010001000D000A00730074004300680061007200
      53006500740073005F0055006E00690063006F00640065000D000A00}
  end
  object sp_AvregByRule: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_AvregByRule'
    Left = 632
    Top = 464
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
        Name = '@Prefix'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 4
        Name = '@ShiftTeamNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SortingOrderNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@UserID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_PksByInventoryPlaceIIII: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_PksByInventoryPlaceIIII'
    Left = 776
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
        Name = '@PkgNo'
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
        Name = '@SupplierCode'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 5
        Name = '@InvOwner'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = '@PIPNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_PksByInventoryPlaceIIIIPackageNo: TIntegerField
      FieldName = 'PackageNo'
      Origin = 'PackageNo'
      ReadOnly = True
      Required = True
    end
    object cds_PksByInventoryPlaceIIIISupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PksByInventoryPlaceIIIISupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ReadOnly = True
    end
    object cds_PksByInventoryPlaceIIIILengthDescription: TStringField
      FieldName = 'LengthDescription'
      Origin = 'LengthDescription'
      ReadOnly = True
      Size = 255
    end
    object cds_PksByInventoryPlaceIIIIProductDisplayName: TStringField
      FieldName = 'ProductDisplayName'
      Origin = 'ProductDisplayName'
      ReadOnly = True
      Size = 150
    end
    object cds_PksByInventoryPlaceIIIIProductNo: TIntegerField
      FieldName = 'ProductNo'
      Origin = 'ProductNo'
      ReadOnly = True
      Required = True
    end
    object cds_PksByInventoryPlaceIIIIStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ReadOnly = True
      Required = True
    end
    object cds_PksByInventoryPlaceIIIILager: TStringField
      FieldName = 'Lager'
      Origin = 'Lager'
      ReadOnly = True
      Size = 101
    end
    object cds_PksByInventoryPlaceIIIILIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ReadOnly = True
    end
    object cds_PksByInventoryPlaceIIIIIncludedInRun: TStringField
      DisplayLabel = 'Matchar r'#229'mtrl'
      FieldName = 'IncludedInRun'
      Origin = 'IncludedInRun'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cds_PksByInventoryPlaceIIIIInInventory: TIntegerField
      DisplayLabel = 'I lager'
      FieldName = 'InInventory'
      Origin = 'InInventory'
      ReadOnly = True
    end
    object cds_PksByInventoryPlaceIIIIOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ReadOnly = True
    end
    object cds_PksByInventoryPlaceIIIIPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ReadOnly = True
    end
  end
  object cds_getActivePackage: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_getActivePackage'
    Left = 784
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
      end>
  end
end
