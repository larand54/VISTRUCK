object dm_ProdPlan: Tdm_ProdPlan
  OldCreateOrder = False
  Height = 662
  Width = 981
  object ds_SortOrders: TDataSource
    DataSet = cds_SortOrders
    Left = 40
    Top = 96
  end
  object ds_SorOrdRow: TDataSource
    DataSet = cds_SorOrdRow
    Left = 246
    Top = 96
  end
  object ds_Calendar: TDataSource
    DataSet = cds_Calendar
    Left = 352
    Top = 96
  end
  object cds_Calendar: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag'
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'Order by Type, TypeValue'
      '')
    Left = 352
    Top = 40
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_CalendarDriftPlatsNr: TIntegerField
      FieldName = 'DriftPlatsNr'
      Origin = 'DriftPlatsNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CalendarType: TIntegerField
      FieldName = 'Type'
      Origin = 'Type'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CalendarTypeValue: TStringField
      FieldName = 'TypeValue'
      Origin = 'TypeValue'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_CalendarWorkHours: TIntegerField
      FieldName = 'WorkHours'
      Origin = 'WorkHours'
    end
    object cds_CalendarStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      Origin = 'StartTime'
    end
    object cds_CalendarEndTime: TSQLTimeStampField
      FieldName = 'EndTime'
      Origin = 'EndTime'
    end
    object cds_CalendarNote: TStringField
      FieldName = 'Note'
      Origin = 'Note'
      Size = 200
    end
    object cds_CalendarVeckoDag: TStringField
      FieldName = 'VeckoDag'
      Origin = 'VeckoDag'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cds_CalendarTypAvDag: TStringField
      FieldName = 'TypAvDag'
      Origin = 'TypAvDag'
      ReadOnly = True
      Size = 9
    end
  end
  object cds_SorOrdRow: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'cx.ID,'
      'pd.productDisplayname as produkt,'
      'PL.ActualLengthMM AS ALMM,'
      'rmh.AM3 AS NM3,'
      ''
      '--LIP.LogicalInventoryName AS LagerGrupp,'
      '--PLI.PriceListName AS PrisLista,'
      '--pu.TemplateUnitName AS Prisenhet,'
      ''
      
        '--gd.GradeName AS Kvalitet, sc.SpeciesName AS Tr'#228'slag, sf.Surfac' +
        'ingName AS Utf'#246'rande,'
      
        '--pc.ProductCategoryName AS IMP, pg.ActualThicknessMM AS AT, pg.' +
        'ActualWidthMM AS AB,'
      '--pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      '--SOR.*, '
      '--CSD.Reference AS M'#196'RKE,'
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
      'SSP.ShippingPlanNo AS LONR'
      'FROM dbo.cxSchedulerTable cx'
      
        'Inner join dbo.RawMtrlBookedHdr rmh on rmh.BookingNo = cx.Bookin' +
        'gNo'
      
        'Left Outer Join dbo.SortingOrderRow SOR on Sor.SortingOrderNo = ' +
        'cx.ID'
      
        'Left Outer Join dbo.ProductLength PL on PL.ProductLengthNo = rmh' +
        '.ProductLengthNo'
      
        '--Left Outer Join dbo.PackUnit pu on pu.TemplateUnitNo = SOR.Pri' +
        'ceUnit'
      
        '--Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalIn' +
        'ventoryPointNo = SOR.LipNo'
      
        '--Left Outer Join dbo.PriceTemplateHeader PLI on PLI.templateno ' +
        '= SOR.PriceListNo'
      
        'Left Outer Join dbo.SupplierShippingPlan SSP on SSP.SupplierShip' +
        'PlanObjectNo = rmh.sspNo'
      
        '--Left Outer Join dbo.CustomerShippingPlanDetails CSD on CSD.Cus' +
        'tShipPlanDetailObjectNo = SSP.CustShipPlanDetailObjectNo'
      'INNER JOIN      dbo.Product pd ON pd.ProductNo = rmh.ProductNo'
      
        'INNER JOIN      dbo.ProductGroup pg ON pd.ProductGroupNo = pg.Pr' +
        'oductGroupNo'
      '--INNER JOIN      dbo.Grade gd ON pd.GradeNo = gd.GradeNo'
      '--'#9#9#9#9'AND gd.LanguageCode = 1'
      
        '--INNER JOIN      dbo.ProductCategory pc ON       pg.ProductCate' +
        'goryNo = pc.ProductCategoryNo'
      '--'#9#9#9#9'AND pc.LanguageCode = 1'
      '--INNER JOIN      dbo.Species sc ON pg.SpeciesNo = sc.SpeciesNo'
      '--'#9#9#9#9'AND sc.LanguageCode = 1'
      
        '--INNER JOIN      dbo.Surfacing sf ON pg.SurfacingNo = sf.Surfac' +
        'ingNo'
      '--'#9#9#9#9'AND sf.LanguageCode = 1'
      'WHERE cx.ID = :ID')
    Left = 248
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SorOrdRowID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SorOrdRowprodukt: TStringField
      FieldName = 'produkt'
      Origin = 'produkt'
      Size = 100
    end
    object cds_SorOrdRowALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
    end
    object cds_SorOrdRowNM3: TBCDField
      FieldName = 'NM3'
      Origin = 'NM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SorOrdRowProdAM1: TFloatField
      FieldName = 'ProdAM1'
      Origin = 'ProdAM1'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdAM3: TFloatField
      FieldName = 'ProdAM3'
      Origin = 'ProdAM3'
      ReadOnly = True
      DisplayFormat = '#,###,###.0'
    end
    object cds_SorOrdRowProdPCS: TIntegerField
      FieldName = 'ProdPCS'
      Origin = 'ProdPCS'
      ReadOnly = True
    end
    object cds_SorOrdRowProdPKT: TIntegerField
      FieldName = 'ProdPKT'
      Origin = 'ProdPKT'
      ReadOnly = True
    end
    object cds_SorOrdRowLONR: TIntegerField
      FieldName = 'LONR'
      Origin = 'LONR'
    end
  end
  object dsStandardWorkingSchedule: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag'
      ''
      ''
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'and Type = 1'
      'Order by TypeValue, Type')
    Left = 240
    Top = 184
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object dsFixedExceptions: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag'
      ''
      ''
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'and (Type = 2 OR Type = 3)'
      'Order by Type, TypeValue'
      '')
    Left = 240
    Top = 232
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object dsVariableExceptions: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag'
      ''
      ''
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'and Type = 5'
      'Order by Type, TypeValue')
    Left = 240
    Top = 280
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
  end
  object dsWorkCalendar: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr,'
      'Type,'
      'TypeValue,'
      'WorkHours,'
      'StartTime,'
      'EndTime,'
      'Note,'
      'CASE'
      'WHEN TypeValue = '#39'1'#39' THEN '#39'M'#229'ndag'#39
      'WHEN TypeValue = '#39'2'#39' THEN '#39'Tisdag'#39
      'WHEN TypeValue = '#39'3'#39' THEN '#39'Onsdag'#39
      'WHEN TypeValue = '#39'4'#39' THEN '#39'Torsdag'#39
      'WHEN TypeValue = '#39'5'#39' THEN '#39'Fredag'#39
      'WHEN TypeValue = '#39'6'#39' THEN '#39'L'#246'rdag'#39
      'WHEN TypeValue = '#39'7'#39' THEN '#39'S'#246'ndag'#39
      'ELSE'
      #39'HELGDAG'#39
      'END AS VeckoDag,'
      'CASE'
      'WHEN Type = 1 THEN '#39'Arbetsdag'#39
      'WHEN Type = 2 THEN '#39'Helgdag'#39
      'WHEN Type = 3 THEN '#39'Ledig'#39
      'WHEN Type = 4 THEN '#39'Rast'#39
      'WHEN Type = 5 THEN '#39'Undantag'#39
      'END AS TypAvDag,'
      'KindOfException'
      ''
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr'
      'Order by TypeValue, Type')
    Left = 464
    Top = 184
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
        Value = Null
      end>
  end
  object cds_SortOrders: TFDQuery
    BeforePost = cds_SortOrdersBeforePost
    UpdateOptions.UpdateTableName = 'cxSchedulerTable'
    SQL.Strings = (
      'Select a.*, b.InfoText'
      
        'FROM dbo.cxSchedulerTable a left join dbo.InfoTexts b on a.ID = ' +
        'b.ID'
      'WHERE (a.VerkNo = :VerkNo'
      'and a.TaskStatusField <> 3'
      'and a.TaskStatusField <> 4'
      '-- and a.TaskStatusField <> 7)'
      'and a.resourceid = :ProductionUnitNo'
      '-- and a.FixedDate = 0'
      'OR a.ID in (Select Top 2 c.ID from dbo.cxSchedulerTable c'
      'WHERE'
      'c.VerkNo = a.VerkNo'
      'and c.resourceid = a.resourceid'
      'and (c.TaskStatusField = 3'
      'or c.TaskStatusField = 4)'
      'Order By c.Start Desc)'
      'Order By a.Start')
    Left = 40
    Top = 40
    ParamData = <
      item
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SortOrdersActualStart: TIntegerField
      FieldName = 'ActualStart'
      Origin = 'ActualStart'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersActualFinish: TIntegerField
      FieldName = 'ActualFinish'
      Origin = 'ActualFinish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersCaption: TStringField
      FieldName = 'Caption'
      Origin = 'Caption'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SortOrdersEventType: TIntegerField
      FieldName = 'EventType'
      Origin = 'EventType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SortOrdersLabelColor: TIntegerField
      FieldName = 'LabelColor'
      Origin = 'LabelColor'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersLocation: TStringField
      FieldName = 'Location'
      Origin = 'Location'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SortOrdersMessage: TStringField
      FieldName = 'Message'
      Origin = 'Message'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_SortOrdersOptions: TIntegerField
      FieldName = 'Options'
      Origin = 'Options'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersParentID: TIntegerField
      FieldName = 'ParentID'
      Origin = 'ParentID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
      Origin = 'RecurrenceIndex'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
      Origin = 'RecurrenceInfo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersReminderDate: TSQLTimeStampField
      FieldName = 'ReminderDate'
      Origin = 'ReminderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersReminderMinutesBeforeStart: TIntegerField
      FieldName = 'ReminderMinutesBeforeStart'
      Origin = 'ReminderMinutesBeforeStart'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersReminderResourcesData: TBlobField
      FieldName = 'ReminderResourcesData'
      Origin = 'ReminderResourcesData'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersState: TIntegerField
      FieldName = 'State'
      Origin = 'State'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersTaskCompleteField: TIntegerField
      FieldName = 'TaskCompleteField'
      Origin = 'TaskCompleteField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersTaskIndexField: TIntegerField
      FieldName = 'TaskIndexField'
      Origin = 'TaskIndexField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersTaskLinksField: TIntegerField
      FieldName = 'TaskLinksField'
      Origin = 'TaskLinksField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersFlashField: TIntegerField
      FieldName = 'FlashField'
      Origin = 'FlashField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersFixedDate: TIntegerField
      FieldName = 'FixedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersInfoText: TStringField
      FieldName = 'InfoText'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrdersNM3In: TFloatField
      FieldName = 'NM3In'
      Origin = 'NM3In'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_SortOrdersVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrdersPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrdersFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrdersPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrdersPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrdersDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrdersSeqNo: TIntegerField
      FieldName = 'SeqNo'
      Origin = 'SeqNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsInfoText: TFDQuery
    UpdateOptions.UpdateTableName = 'cxSchedulerTable'
    SQL.Strings = (
      'select * from dbo.InfoTexts')
    Left = 40
    Top = 152
    object IntegerField4: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'InfoText'
      Origin = 'Caption'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object cds_SortOrderRes: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
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
    Left = 40
    Top = 216
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
    Left = 40
    Top = 264
  end
  object cds_SORaw: TFDQuery
    CachedUpdates = True
    MasterFields = 'SortingOrderNo'
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select rmd.BookedAM3, rmd.BookedALMM, rmd.Utfall,'
      'SOR.*,'
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
      ''
      'P.GradeNo, PG.SpeciesNo, PG.SurfacingNo, PG.ProductCategoryNo,'
      'pg.ActualThicknessMM AS AT, pg.ActualWidthMM AS AB,'
      'pg.NominalThicknessMM AS NT, pg.NominalWidthMM AS NB,'
      'P.ProductDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM'
      ''
      'FROM dbo.RawMtrlBookedDtl rmd'
      
        'Left Outer join dbo.SortingOrderRawMtrl SOR on Sor.SortingOrderN' +
        'o = rmd.ID'
      
        'Left Outer Join dbo.ProductLength pl on pl.ProductLengthNo = SOR' +
        '.ProductLengthNo'
      'Inner Join dbo.Product P on P.ProductNo = rmd.BookedProductNo'
      
        'Inner Join dbo.ProductGroup PG on PG.ProductGroupNo = P.ProductG' +
        'roupNo'
      'WHERE rmd.ID = :ID'
      ''
      '')
    Left = 136
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SORawSortingOrderNo: TIntegerField
      FieldName = 'SortingOrderNo'
      Origin = 'SortingOrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawRawMtrlNo: TIntegerField
      DisplayLabel = 'Radnr'
      FieldName = 'RawMtrlNo'
      Origin = 'RawMtrlNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
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
    object cds_SORawPlannedAM3: TBCDField
      DisplayLabel = 'AM3'
      FieldName = 'PlannedAM3'
      Origin = 'PlannedAM3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SORawPlannedPcs: TIntegerField
      DisplayLabel = 'Styck'
      FieldName = 'PlannedPcs'
      Origin = 'PlannedPcs'
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
    object cds_SORawUrlaggsProcent: TBCDField
      DisplayLabel = 'Url'#228'gg %'
      FieldName = 'UrlaggsProcent'
      Origin = 'UrlaggsProcent'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.00'
      Precision = 18
      Size = 2
    end
    object cds_SORawaPcs: TIntegerField
      FieldName = 'aPcs'
      Origin = 'aPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SORawaAM1: TBCDField
      DisplayLabel = 'AM1'
      FieldName = 'aAM1'
      Origin = 'aAM1'
      ProviderFlags = [pfInUpdate]
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
    object cds_SORawLengthSpec: TStringField
      DisplayLabel = 'L'#228'ngd'
      FieldName = 'LengthSpec'
      Origin = 'LengthSpec'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cds_SORawALMM: TFloatField
      FieldName = 'ALMM'
      Origin = 'ALMM'
      ProviderFlags = []
    end
    object cds_SORawBookedAM3: TBCDField
      DisplayLabel = 'NM3 bokad'
      FieldName = 'BookedAM3'
      Origin = 'BookedAM3'
      DisplayFormat = '#,###,###.0'
      Precision = 18
      Size = 3
    end
    object cds_SORawBookedALMM: TFloatField
      FieldName = 'BookedALMM'
      Origin = 'BookedALMM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SORawExcludeFromTotal: TIntegerField
      FieldName = 'ExcludeFromTotal'
      Origin = 'ExcludeFromTotal'
    end
    object cds_SORawUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      DisplayFormat = '###.0'
      Precision = 18
      Size = 2
    end
  end
  object ds_SORaw: TDataSource
    DataSet = cds_SORaw
    Left = 134
    Top = 88
  end
  object cds_cxScheduler: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select'
      'cx.*'
      'FROM dbo.cxSchedulerTable cx'
      'WHERE cx.ID = :ID')
    Left = 464
    Top = 40
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_cxSchedulerActualStart: TIntegerField
      FieldName = 'ActualStart'
      Origin = 'ActualStart'
    end
    object cds_cxSchedulerActualFinish: TIntegerField
      FieldName = 'ActualFinish'
      Origin = 'ActualFinish'
    end
    object cds_cxSchedulerCaption: TStringField
      FieldName = 'Caption'
      Origin = 'Caption'
      Size = 255
    end
    object cds_cxSchedulerEventType: TIntegerField
      FieldName = 'EventType'
      Origin = 'EventType'
    end
    object cds_cxSchedulerFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
    end
    object cds_cxSchedulerID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_cxSchedulerLabelColor: TIntegerField
      FieldName = 'LabelColor'
      Origin = 'LabelColor'
    end
    object cds_cxSchedulerLocation: TStringField
      FieldName = 'Location'
      Origin = 'Location'
      Size = 255
    end
    object cds_cxSchedulerMessage: TStringField
      FieldName = 'Message'
      Origin = 'Message'
      Size = 255
    end
    object cds_cxSchedulerOptions: TIntegerField
      FieldName = 'Options'
      Origin = 'Options'
    end
    object cds_cxSchedulerParentID: TIntegerField
      FieldName = 'ParentID'
      Origin = 'ParentID'
    end
    object cds_cxSchedulerRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
      Origin = 'RecurrenceIndex'
    end
    object cds_cxSchedulerRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
      Origin = 'RecurrenceInfo'
    end
    object cds_cxSchedulerReminderDate: TSQLTimeStampField
      FieldName = 'ReminderDate'
      Origin = 'ReminderDate'
    end
    object cds_cxSchedulerReminderMinutesBeforeStart: TIntegerField
      FieldName = 'ReminderMinutesBeforeStart'
      Origin = 'ReminderMinutesBeforeStart'
    end
    object cds_cxSchedulerReminderResourcesData: TBlobField
      FieldName = 'ReminderResourcesData'
      Origin = 'ReminderResourcesData'
    end
    object cds_cxSchedulerResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
    end
    object cds_cxSchedulerStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
    end
    object cds_cxSchedulerState: TIntegerField
      FieldName = 'State'
      Origin = 'State'
    end
    object cds_cxSchedulerTaskCompleteField: TIntegerField
      FieldName = 'TaskCompleteField'
      Origin = 'TaskCompleteField'
    end
    object cds_cxSchedulerTaskIndexField: TIntegerField
      FieldName = 'TaskIndexField'
      Origin = 'TaskIndexField'
    end
    object cds_cxSchedulerTaskLinksField: TIntegerField
      FieldName = 'TaskLinksField'
      Origin = 'TaskLinksField'
    end
    object cds_cxSchedulerTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
    end
    object cds_cxSchedulerLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
    end
    object cds_cxSchedulerFlashField: TIntegerField
      FieldName = 'FlashField'
      Origin = 'FlashField'
    end
    object cds_cxSchedulerProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
    end
    object cds_cxSchedulerUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
    end
    object cds_cxSchedulerDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      DisplayFormat = '#,###,###.00'
    end
    object cds_cxSchedulerSeqNo: TIntegerField
      FieldName = 'SeqNo'
      Origin = 'SeqNo'
    end
    object cds_cxSchedulerFixedDate: TIntegerField
      FieldName = 'FixedDate'
      Origin = 'FixedDate'
    end
    object cds_cxSchedulerInfoText: TStringField
      FieldName = 'InfoText'
      Origin = 'InfoText'
      Size = 50
    end
    object cds_cxSchedulerNM3In: TFloatField
      FieldName = 'NM3In'
      Origin = 'NM3In'
    end
    object cds_cxSchedulerYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      Size = 4
    end
    object cds_cxSchedulerVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_cxSchedulerBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
    end
    object cds_cxSchedulerPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      Precision = 18
      Size = 3
    end
    object cds_cxSchedulerPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      Precision = 18
      Size = 2
    end
    object cds_cxSchedulerFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      Precision = 18
      Size = 2
    end
    object cds_cxSchedulerPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      Precision = 18
      Size = 2
    end
    object cds_cxSchedulerPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      Precision = 18
      Size = 2
    end
    object cds_cxSchedulerDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
  end
  object ds_cxScheduler: TDataSource
    DataSet = cds_cxScheduler
    Left = 464
    Top = 88
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 464
    Top = 296
  end
  object cds_ProductionUnit: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Select pu.RegistrationPointNo AS ProductionUnitNo, rp.RegPointNa' +
        'me AS M'#196'TPUNKT,'
      'PU.ClientNo AS ProducerNo,'
      
        'isNull(pu.Cost,0)+ isnull(pu.CapitalCost,0) + isnull(pu.Overhead' +
        'Cost,0) AS Cost,'
      'isnull(pu.SalaryCost,0) AS LonPerTimme, rp.TypeOfUnit,'
      'isNull(LegoCostPerAM3,0) AS LegoCostPerAM3,'
      'pu.ProductionUnitNo AS ProdUnitNo,'
      'rp.ResourceImageIndex'
      'FROM dbo.ProductionUnit pu'
      
        'Inner Join dbo.RegistrationPoint rp on rp.RegPointNo = pu.Regist' +
        'rationPointNo'
      'WHERE  PU.ClientNo = :ProducerNo'
      'and rp.typeofunit = 1'
      'Order By rp.RegPointName')
    Left = 464
    Top = 240
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
    object cds_ProductionUnitResourceImageIndex: TIntegerField
      FieldName = 'ResourceImageIndex'
      Origin = 'ResourceImageIndex'
    end
  end
  object cds_Props: TFDQuery
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 781
    Top = 176
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
      OnChange = cds_PropsProducerNoChange
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
    object cds_PropsProducer: TStringField
      FieldKind = fkLookup
      FieldName = 'Producer'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ProducerNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsMatpunkt: TStringField
      FieldKind = fkLookup
      FieldName = 'Matpunkt'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 781
    Top = 232
  end
  object cds_BookingHdr: TFDQuery
    SQL.Strings = (
      'SELECT Distinct'
      'RBH.*,'
      'p.productDisplayName AS Produkt,'
      'pl.ActualLengthMM AS ALMM,'
      'ssp.LengthDescription AS L'#228'ngdbeskrivning,'
      'ssp.ShippingPlanNo AS LONr,'
      'C.ClientName AS Kund,'
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
      
        #9'Inner join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = RBH.Book' +
        'ingNo'
      #9'and rmd.ProductNo = RBH.ProductNo'
      #9'and rmd.ProductLengthNo = RBH.ProductLengthNo'
      #9'and rmd.sspNo = RBH.sspNo'
      'Inner Join dbo.cxSchedulerTable cx on cx.ID = rmd.ID'
      ''
      
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
    Left = 592
    Top = 40
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
  end
  object ds_BookingHdr: TDataSource
    DataSet = cds_BookingHdr
    Left = 592
    Top = 88
  end
  object cds_BookingDtl: TFDQuery
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
    Left = 688
    Top = 40
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
  end
  object ds_BookingDtl: TDataSource
    DataSet = cds_BookingDtl
    Left = 688
    Top = 88
  end
  object ds_CalcSortOrders: TDataSource
    DataSet = cds_CalcSortOrders
    Left = 40
    Top = 416
  end
  object cds_CalcSortOrders: TFDQuery
    BeforePost = cds_CalcSortOrdersBeforePost
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_CalcSortOrdersIndex01'
        Fields = 'ID'
      end>
    IndexName = 'cds_CalcSortOrdersIndex01'
    AggregatesActive = True
    OnUpdateRecord = cds_CalcSortOrdersUpdateRecord
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'dbo.cxSchedulerTable'
    UpdateObject = up_CalcSortOrders
    SQL.Strings = (
      
        'Select a.DateCreated, a.VerkNo, a.SeqNo, a.FixedDate, a.InfoText' +
        ', a.FlashField,'
      
        'a.LONo, a.Message, a.EventType, a.ActualFinish, a.ActualStart, a' +
        '.Caption,'
      'a.Finish,'
      'a.ID,'
      'a.Start,'
      'a.TaskStatusField,'
      'a.Duration,'
      'a.NM3In,'
      'a.YearWeek,'
      'a.ResourceID,'
      'a.WeekNo,'
      'a.YearNo,'
      'a.PreCalcEfficiencyFactor,'
      'a.FeedSpeed,'
      'a.PlannedWorkingTime,'
      'a.Postningstid,'
      'pu.ProductionUnitNo,'
      '(Select SUM(dtl.PlannedAM1) FROM RawMtrlBookedDtl dtl'
      'WHERE dtl.ID = a.ID'
      'AND dtl.Status = 1) AS PlannedAM1'
      
        'FROM dbo.cxSchedulerTable a left join dbo.InfoTexts b on a.ID = ' +
        'b.ID'
      
        'inner join dbo.ProductionUnit pu on pu.RegistrationPointNo = a.r' +
        'esourceid'
      'and pu.ClientNo = a.VerkNo'
      ''
      'WHERE a.VerkNo = :VerkNo'
      'and a.TaskStatusField <> 3'
      'and a.TaskStatusField <> 4'
      
        'and ((a.resourceid = :ProductionUnitNo) or (-1 = :ProductionUnit' +
        'No))'
      ''
      'UNION'
      ''
      
        'Select a.DateCreated, a.VerkNo, a.SeqNo, a.FixedDate, a.InfoText' +
        ', a.FlashField,'
      
        'a.LONo, a.Message, a.EventType, a.ActualFinish, a.ActualStart, a' +
        '.Caption,'
      'a.Finish,'
      'a.ID,'
      'a.Start,'
      'a.TaskStatusField,'
      'a.Duration,'
      'a.NM3In,'
      'a.YearWeek,'
      'a.ResourceID,'
      'a.WeekNo,'
      'a.YearNo,'
      'a.PreCalcEfficiencyFactor,'
      'a.FeedSpeed,'
      'a.PlannedWorkingTime,'
      'a.Postningstid,'
      'a.plannedAM1,'
      'a.ProductionUnitNo'
      ''
      'from ('
      
        '    select top 2 cx.DateCreated, cx.VerkNo, cx.SeqNo, cx.FixedDa' +
        'te, cx.InfoText, cx.FlashField,'
      
        'cx.LONo, cx.Message, cx.EventType, cx.ActualFinish, cx.ActualSta' +
        'rt, cx.Caption,'
      'cx.Finish,'
      'cx.ID,'
      'cx.Start,'
      'cx.TaskStatusField,'
      'cx.Duration,'
      'cx.NM3In,'
      'cx.YearWeek,'
      'cx.ResourceID,'
      'cx.WeekNo,'
      'cx.YearNo,'
      'cx.PreCalcEfficiencyFactor,'
      'cx.FeedSpeed,'
      'cx.PlannedWorkingTime,'
      'cx.Postningstid,'
      'pu.ProductionUnitNo,'
      '(Select SUM(dtl.PlannedAM1) FROM RawMtrlBookedDtl dtl'
      ''
      'WHERE dtl.ID = cx.ID'
      'AND dtl.Status = 1) AS PlannedAM1'
      'from dbo.cxSchedulerTable cx'
      
        'inner join dbo.ProductionUnit pu on pu.RegistrationPointNo = cx.' +
        'resourceid'
      'and pu.ClientNo = cx.VerkNo'
      'WHERE VerkNo = :VerkNo'
      'and ((TaskStatusField = 3) or (TaskStatusField = 4))'
      'and ResourceID = :ProductionUnitNo'
      'order by Start desc ) as A'
      '')
    Left = 40
    Top = 360
    ParamData = <
      item
        Name = 'VERKNO'
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
        Name = 'VERKNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUCTIONUNITNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CalcSortOrdersActualStart: TIntegerField
      FieldName = 'ActualStart'
      Origin = 'ActualStart'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersActualFinish: TIntegerField
      FieldName = 'ActualFinish'
      Origin = 'ActualFinish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersCaption: TStringField
      FieldName = 'Caption'
      Origin = 'Caption'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_CalcSortOrdersEventType: TIntegerField
      FieldName = 'EventType'
      Origin = 'EventType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CalcSortOrdersMessage: TStringField
      FieldName = 'Message'
      Origin = 'Message'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_CalcSortOrdersResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersLONo: TIntegerField
      FieldName = 'LONo'
      Origin = 'LONo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersFlashField: TIntegerField
      FieldName = 'FlashField'
      Origin = 'FlashField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###.0'
    end
    object cds_CalcSortOrdersFixedDate: TIntegerField
      FieldName = 'FixedDate'
      Origin = 'FixedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersInfoText: TStringField
      FieldName = 'InfoText'
      Origin = 'InfoText'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_CalcSortOrdersNM3In: TFloatField
      FieldName = 'NM3In'
      Origin = 'NM3In'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_CalcSortOrdersVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersSeqNo: TIntegerField
      FieldName = 'SeqNo'
      Origin = 'SeqNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CalcSortOrdersPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_CalcSortOrdersFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cds_CalcSortOrdersPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_CalcSortOrdersPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object cds_CalcSortOrdersPlannedAM1: TFMTBCDField
      FieldName = 'PlannedAM1'
      Origin = 'PlannedAM1'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cds_CalcSortOrdersProductionUnitNo: TFMTBCDField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 3
    end
  end
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 606
    Top = 224
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 686
    Top = 232
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
    Left = 606
    Top = 176
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
    Left = 686
    Top = 176
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
  object cds_CalExists: TFDQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DriftPlatsNr'
      'FROM dbo.ProdCal where DriftPlatsNr = :DriftPlatsNr')
    Left = 240
    Top = 456
    ParamData = <
      item
        Name = 'DRIFTPLATSNR'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end>
    object cds_CalExistsDriftPlatsNr: TIntegerField
      FieldName = 'DriftPlatsNr'
      Origin = 'DriftPlatsNr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object up_CalcSortOrders: TFDUpdateSQL
    ConnectionName = 'VIS_VIDA'
    InsertSQL.Strings = (
      'INSERT INTO VIS_VIDA.dbo.cxschedulertable'
      '(actualstart, actualfinish, caption, eventtype, '
      '  finish, id, message, resourceid, start, '
      '  taskstatusfield, lono, flashfield, duration, '
      '  seqno, fixeddate, infotext, nm3in, yearweek, '
      '  verkno, datecreated, weekno, yearno)'
      
        'VALUES (:NEW_ActualStart, :NEW_ActualFinish, :NEW_Caption, :NEW_' +
        'EventType, '
      
        '  :NEW_Finish, :NEW_ID, :NEW_Message, :NEW_ResourceID, :NEW_Star' +
        't, '
      
        '  :NEW_TaskStatusField, :NEW_LONo, :NEW_FlashField, :NEW_Duratio' +
        'n, '
      
        '  :NEW_SeqNo, :NEW_FixedDate, :NEW_InfoText, :NEW_NM3In, :NEW_Ye' +
        'arWeek, '
      '  :NEW_VerkNo, :NEW_DateCreated, :NEW_WeekNo, :NEW_YearNo)')
    ModifySQL.Strings = (
      'UPDATE VIS_VIDA.dbo.cxschedulertable'
      
        'SET actualstart = :NEW_ActualStart, actualfinish = :NEW_ActualFi' +
        'nish, '
      
        '  caption = :NEW_Caption, eventtype = :NEW_EventType, finish = :' +
        'NEW_Finish, '
      
        '  id = :NEW_ID, message = :NEW_Message, resourceid = :NEW_Resour' +
        'ceID, '
      '  start = :NEW_Start, taskstatusfield = :NEW_TaskStatusField, '
      
        '  lono = :NEW_LONo, flashfield = :NEW_FlashField, duration = :NE' +
        'W_Duration, '
      
        '  seqno = :NEW_SeqNo, fixeddate = :NEW_FixedDate, infotext = :NE' +
        'W_InfoText, '
      
        '  nm3in = :NEW_NM3In, yearweek = :NEW_YearWeek, verkno = :NEW_Ve' +
        'rkNo, '
      
        '  datecreated = :NEW_DateCreated, weekno = :NEW_WeekNo, yearno =' +
        ' :NEW_YearNo'
      'WHERE id = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM VIS_VIDA.dbo.cxschedulertable'
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
      '  verkno, bookingno, postningstid, precalcefficiencyfactor, '
      
        '  feedspeed, plannedproductiontime, plannedworkingtime, datecrea' +
        'ted, '
      '  ownerno, weekno, yearno, orgyearweek'
      'FROM VIS_VIDA.dbo.cxschedulertable'
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
      '  verkno, bookingno, postningstid, precalcefficiencyfactor, '
      
        '  feedspeed, plannedproductiontime, plannedworkingtime, datecrea' +
        'ted, '
      '  ownerno, weekno, yearno, orgyearweek'
      'FROM VIS_VIDA.dbo.cxschedulertable'
      'WHERE id = :ID')
    Left = 144
    Top = 360
  end
  object cds_SortOrderList: TFDQuery
    UpdateOptions.UpdateTableName = 'dbo.cxSchedulerTable'
    SQL.Strings = (
      'Select dbo.GetLONos(cx.ID) AS LOS,'
      
        'cx.ID, cx.Start, cx.Finish, cx.TaskStatusField, cx.ResourceID, c' +
        'x.Duration,'
      
        'cx.FixedDate, cx.YearWeek, cx.VerkNo, cx.BookingNo, cx.Postnings' +
        'tid, cx.PreCalcEfficiencyFactor,'
      
        'cx.FeedSpeed, cx.PlannedProductionTime, cx.PlannedWorkingTime, c' +
        'x.OwnerNo, cx.WeekNo, cx.YearNo,'
      'So.PIPNo, so.LIPNo, so.ProgramNo, so.Comments, so.RealStartTime,'
      
        'so.RealEndTime, so.RealProductionTime, so.StopTime, so.PrioNo, s' +
        'o.MCClassNo, so.MoveToLIPNo,'
      
        'so.Template, so.TemplateName, so.TemplateUser, so.Lego, so.TypeO' +
        'fRunNo,'
      'ci.CityName AS LAGERST'#196'LLE, rp.RegPointName AS PRODENHET,'
      
        'LIP.LogicalInventoryName AS LAGERGRUPP, pr.ClientName AS PRODUCE' +
        'NT, OWN.ClientName AS '#196'GARE,'
      ''
      '(Select Top 1 p.ProductDisplayName FROM'
      'dbo.RawMtrlBookedDtl rmd'
      'Inner Join dbo.Product p on p.ProductNo = rmd.ProductNo'
      'WHERE rmd.ID = cx.ID'
      'and rmd.Status = 1) AS R'#229'vara,'
      ''
      '(Select Top 1 p.ProductDisplayName FROM'
      'dbo.RawMtrlBookedHdr rmh'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = rmh.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = rmh.ProductNo'
      
        'Inner Join dbo.RawMtrlBookedDtl rmd on rmd.BookingNo = rmh.Booki' +
        'ngNo'
      'WHERE cx2.ID = cx.ID'
      'and rmd.ID = cx.ID) AS F'#228'rdigvara,'
      ''
      '(Select Top 1 c.ClientName FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      
        'Left Outer Join dbo.SupplierShippingPlan ssp on ssp.SupplierShip' +
        'PlanObjectNo = sor.sspNo'
      'Left Outer Join dbo.CustomerShippingPlanDetails CSD'
      
        'Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPla' +
        'nNo = CSD.ShippingPlanNo'
      'Inner Join dbo.Client C on C.ClientNo = CSH.CustomerNo'
      
        'on CSD.CustShipPlanDetailObjectNo = SSP.CustShipPlanDetailObject' +
        'No'
      'WHERE cx2.ID = cx.ID) AS Kund,'
      ''
      '(Select Top 1 SSP.ShippingPlanNo FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      
        'Inner Join dbo.SupplierShippingPlan SSP on SSP.SupplierShipPlanO' +
        'bjectNo = SOR.sspno'
      'WHERE cx2.ID = cx.ID) AS LONR,'
      ''
      'IsNull((Select Top 1 sc.BackgroundColor FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.Surfacin' +
        'gNo'
      'WHERE cx2.ID = cx.ID'
      'AND sc.VerkNo = cx.VerkNo'
      '),0) AS SurfacingBkgColor,'
      ''
      'IsNull((Select Top 1 sc.TextColor FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'Inner Join dbo.Product p on p.ProductNo = SOR.ProductNo'
      
        'Inner Join dbo.ProductGroup pg on pg.ProductGroupNo = p.ProductG' +
        'roupNo'
      
        'Inner Join dbo.SurfacingColor sc on sc.SurfacingNo = pg.Surfacin' +
        'gNo'
      'WHERE cx2.ID = cx.ID'
      'AND sc.VerkNo = cx.VerkNo'
      '),0) AS SurfacingTextColor,'
      'cx.LabelColor,'
      'cx.OrgYearWeek,'
      ''
      '(Select  sum(rmt.PlannedOutputNM3) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS NM3PlanFardig,'
      ''
      '(Select TOP 1 rmt.Utfall From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS Utfall,'
      ''
      '(Select  sum(rmt.BookedNM3) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS BookedNM3,'
      ''
      '(Select Top 1 sor.sspNo FROM'
      'dbo.RawMtrlBookedHdr SOR'
      
        'Inner Join dbo.cxSchedulerTable cx2 on cx2.BookingNo = sor.Booki' +
        'ngNo'
      'WHERE cx2.ID = cx.ID) AS sspNo,'
      ''
      '(Select  sum(rmt.PlannedAM1) From dbo.RawMtrlBookedDtl rmt'
      'Where rmt.ID = cx.ID'
      'and rmt.Status = 1) AS BookedAM1'
      ''
      'FROM dbo.cxSchedulerTable cx'
      'Inner Join dbo.RawMtrlBookedDtl rmb on rmb.ID = cx.ID'
      'Left Outer Join dbo.SortingOrder SO on so.sortingorderno = cx.ID'
      'and so.Template = 0'
      'Left Outer Join dbo.PhysicalInventoryPoint PIP'
      'Left Outer Join dbo.City Ci on ci.cityNo = PIP.PhyInvPointNameNo'
      'ON PIP.PhysicalInventoryPointNo = SO.PIPNo'
      
        'Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInve' +
        'ntoryPointNo = SO.LIPNo'
      
        'Left Outer Join dbo.RegistrationPoint rp on rp.RegPointNo = cx.R' +
        'esourceID'
      'Left Outer Join dbo.Client PR on pr.ClientNo = cx.VerkNo'
      'Left Outer Join dbo.Client OWN on OWN.ClientNo = cx.OwnerNo'
      'WHERE 1 = 1'
      'AND cx.YearWeek = '#39'1028'#39
      'AND cx.VerkNo = 76'
      'AND cx.OwnerNo = 76'
      '')
    Left = 464
    Top = 451
    object cds_SortOrderListPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListProgramNo: TIntegerField
      FieldName = 'ProgramNo'
      Origin = 'ProgramNo'
      ProviderFlags = []
    end
    object cds_SortOrderListComments: TMemoField
      FieldName = 'Comments'
      Origin = 'Comments'
      ProviderFlags = []
      BlobType = ftMemo
    end
    object cds_SortOrderListRealStartTime: TSQLTimeStampField
      DisplayLabel = 'Starttid'
      FieldName = 'RealStartTime'
      Origin = 'RealStartTime'
      ProviderFlags = []
    end
    object cds_SortOrderListRealEndTime: TSQLTimeStampField
      DisplayLabel = 'Sluttid'
      FieldName = 'RealEndTime'
      Origin = 'RealEndTime'
      ProviderFlags = []
    end
    object cds_SortOrderListRealProductionTime: TBCDField
      FieldName = 'RealProductionTime'
      Origin = 'RealProductionTime'
      ProviderFlags = []
      DisplayFormat = '#,###.0'
      Precision = 18
      Size = 1
    end
    object cds_SortOrderListPrioNo: TIntegerField
      FieldName = 'PrioNo'
      Origin = 'PrioNo'
      ProviderFlags = []
    end
    object cds_SortOrderListMCClassNo: TIntegerField
      FieldName = 'MCClassNo'
      Origin = 'MCClassNo'
      ProviderFlags = []
    end
    object cds_SortOrderListMoveToLIPNo: TIntegerField
      FieldName = 'MoveToLIPNo'
      Origin = 'MoveToLIPNo'
      ProviderFlags = []
    end
    object cds_SortOrderListTypeOfRunNo: TIntegerField
      FieldName = 'TypeOfRunNo'
      Origin = 'TypeOfRunNo'
      ProviderFlags = []
    end
    object cds_SortOrderListLego: TIntegerField
      FieldName = 'Lego'
      Origin = 'Lego'
      ProviderFlags = []
    end
    object cds_SortOrderListTemplate: TIntegerField
      FieldName = 'Template'
      Origin = 'Template'
      ProviderFlags = []
    end
    object cds_SortOrderListTemplateName: TStringField
      FieldName = 'TemplateName'
      Origin = 'TemplateName'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListTemplateUser: TIntegerField
      FieldName = 'TemplateUser'
      Origin = 'TemplateUser'
      ProviderFlags = []
    end
    object cds_SortOrderListLAGERSTLLE: TStringField
      FieldName = 'LAGERST'#196'LLE'
      Origin = '[LAGERST'#196'LLE]'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListPRODENHET: TStringField
      FieldName = 'PRODENHET'
      Origin = 'PRODENHET'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object cds_SortOrderListLAGERGRUPP: TStringField
      FieldName = 'LAGERGRUPP'
      Origin = 'LAGERGRUPP'
      ProviderFlags = []
      Size = 50
    end
    object cds_SortOrderListPRODUCENT: TStringField
      DisplayLabel = 'Producent'
      FieldName = 'PRODUCENT'
      Origin = 'PRODUCENT'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListGARE: TStringField
      FieldName = #196'GARE'
      Origin = '['#196'GARE]'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListRvara: TStringField
      FieldName = 'R'#229'vara'
      Origin = '[R'#229'vara]'
      ProviderFlags = []
      Size = 100
    end
    object cds_SortOrderListFrdigvara: TStringField
      FieldName = 'F'#228'rdigvara'
      Origin = '[F'#228'rdigvara]'
      ProviderFlags = []
      Size = 100
    end
    object cds_SortOrderListKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      Size = 80
    end
    object cds_SortOrderListTypeOfRunName: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeOfRunName'
      LookupDataSet = dmsContact.cds_TypeOfRun
      LookupKeyFields = 'TypeOfRunNo'
      LookupResultField = 'TypeOfRunName'
      KeyFields = 'TypeOfRunNo'
      ProviderFlags = []
      Lookup = True
    end
    object cds_SortOrderListSurfacingBkgColor: TIntegerField
      FieldName = 'SurfacingBkgColor'
      Origin = 'SurfacingBkgColor'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListSurfacingTextColor: TIntegerField
      FieldName = 'SurfacingTextColor'
      Origin = 'SurfacingTextColor'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SortOrderListStart: TSQLTimeStampField
      FieldName = 'Start'
      Origin = 'Start'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListFinish: TSQLTimeStampField
      FieldName = 'Finish'
      Origin = 'Finish'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
      Origin = 'TaskStatusField'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListResourceID: TIntegerField
      FieldName = 'ResourceID'
      Origin = 'ResourceID'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListDuration: TFloatField
      FieldName = 'Duration'
      Origin = 'Duration'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###.0'
    end
    object cds_SortOrderListFixedDate: TIntegerField
      FieldName = 'FixedDate'
      Origin = 'FixedDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListYearWeek: TStringField
      FieldName = 'YearWeek'
      Origin = 'YearWeek'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cds_SortOrderListVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListBookingNo: TIntegerField
      FieldName = 'BookingNo'
      Origin = 'BookingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListPostningstid: TBCDField
      FieldName = 'Postningstid'
      Origin = 'Postningstid'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cds_SortOrderListPreCalcEfficiencyFactor: TBCDField
      FieldName = 'PreCalcEfficiencyFactor'
      Origin = 'PreCalcEfficiencyFactor'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListFeedSpeed: TBCDField
      FieldName = 'FeedSpeed'
      Origin = 'FeedSpeed'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListPlannedProductionTime: TBCDField
      FieldName = 'PlannedProductionTime'
      Origin = 'PlannedProductionTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListPlannedWorkingTime: TBCDField
      FieldName = 'PlannedWorkingTime'
      Origin = 'PlannedWorkingTime'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_SortOrderListWeekNo: TIntegerField
      FieldName = 'WeekNo'
      Origin = 'WeekNo'
    end
    object cds_SortOrderListYearNo: TIntegerField
      FieldName = 'YearNo'
      Origin = 'YearNo'
    end
    object cds_SortOrderListStopTime: TIntegerField
      FieldName = 'StopTime'
      Origin = 'StopTime'
      ProviderFlags = []
    end
    object cds_SortOrderListLONR: TIntegerField
      FieldName = 'LONR'
      Origin = 'LONR'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_SortOrderListLabelColor: TIntegerField
      FieldName = 'LabelColor'
      Origin = 'LabelColor'
      ProviderFlags = [pfInUpdate]
    end
    object cds_SortOrderListOrgYearWeek: TStringField
      FieldName = 'OrgYearWeek'
      Origin = 'OrgYearWeek'
      Size = 9
    end
    object cds_SortOrderListNM3PlanFardig: TFMTBCDField
      FieldName = 'NM3PlanFardig'
      Origin = 'NM3PlanFardig'
      ReadOnly = True
      Precision = 38
      Size = 3
    end
    object cds_SortOrderListUtfall: TBCDField
      FieldName = 'Utfall'
      Origin = 'Utfall'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cds_SortOrderListBookedNM3: TFMTBCDField
      FieldName = 'BookedNM3'
      Origin = 'BookedNM3'
      ReadOnly = True
      DisplayFormat = '###,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SortOrderListsspNo: TIntegerField
      FieldName = 'sspNo'
      Origin = 'sspNo'
      ReadOnly = True
    end
    object cds_SortOrderListBookedAM1: TFMTBCDField
      DisplayLabel = 'AM1'
      FieldName = 'BookedAM1'
      Origin = 'BookedAM1'
      ReadOnly = True
      DisplayFormat = '###,###,###.0'
      Precision = 38
      Size = 3
    end
    object cds_SortOrderListLOS: TStringField
      FieldName = 'LOS'
      Origin = 'LOS'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object siLangLinked_dm_ProdPlan: TsiLangLinked
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
    Left = 456
    Top = 360
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C004100420001004100
      42000100010041005700010001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C0041006E00740061006C004C0061006D006500
      6C006C006500720055007400010041006E00740061006C004C0061006D006500
      6C006C00650072005500740001000100010001000D000A006300640073005F00
      42006F006F006B0069006E006700440074006C00410054000100410054000100
      010041005400010001000D000A006300640073005F0042006F006F006B006900
      6E006700440074006C0042006F006F006B006500640041004C004D004D000100
      42006F006F006B006500640041004C004D004D0001000100010001000D000A00
      6300640073005F0042006F006F006B0069006E006700440074006C0042006F00
      6F006B006500640041004D003300010042006F006F006B006500640041004D00
      330001000100010001000D000A006300640073005F0042006F006F006B006900
      6E006700440074006C0042006F006F006B00650064004C004900500047007200
      6F00750070004E006F00010042006F006F006B00650064004C00490050004700
      72006F00750070004E006F0001000100010001000D000A006300640073005F00
      42006F006F006B0069006E006700440074006C0042006F006F006B0065006400
      4E004D003300010042006F006F006B00650064004E004D003300010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C0042006F006F006B0065006400500072006F0064007500630074004C006500
      6E006700740068004E006F00010042006F006F006B0065006400500072006F00
      64007500630074004C0065006E006700740068004E006F000100010001000100
      0D000A006300640073005F0042006F006F006B0069006E006700440074006C00
      42006F006F006B0065006400500072006F0064007500630074004E006F000100
      42006F006F006B0065006400500072006F0064007500630074004E006F000100
      0100010001000D000A006300640073005F0042006F006F006B0069006E006700
      440074006C0042006F006F006B0069006E0067004E006F00010042006F006F00
      6B0069006E0067004E006F0001000100010001000D000A006300640073005F00
      42006F006F006B0069006E006700440074006C00430072006500610074006500
      6400550073006500720001004300720065006100740065006400550073006500
      7200010053006B0061007000610064002000610076000100010053006B006100
      70006100640020006100760001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C00440061007400650043007200650061007400
      6500640001005200650067006900730074007200650072006100640001000100
      5200650067006900730074006500720065006400010001000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C004900440001004900
      440001000100010001000D000A006300640073005F0042006F006F006B006900
      6E006700440074006C004C00610067006500720001004C006100670065007200
      01000100530074006F0063006B00010001000D000A006300640073005F004200
      6F006F006B0069006E006700440074006C004C0065006E006700740068005300
      70006500630001004C0065006E00670074006800530070006500630001000100
      010001000D000A006300640073005F0042006F006F006B0069006E0067004400
      74006C004D00310001004D00310001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E006700440074006C004D00610069006E005200
      610077004D00740072006C0001004D00610069006E005200610077004D007400
      72006C0001000100010001000D000A006300640073005F0042006F006F006B00
      69006E006700440074006C004D00430043006C006100730073004E006F000100
      4D00430043006C006100730073004E006F0001000100010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C004D006F006400
      69006600690065006400550073006500720001004D006F006400690066006900
      6500640055007300650072000100C4006E006400720061006400200061007600
      01000100C4006E00640072006100640020006100760001000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C004E00420001004E00
      4200010001004E005700010001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C004E00540001004E005400010001004E005400
      010001000D000A006300640073005F0042006F006F006B0069006E0067004400
      74006C005000490050004E006F0001005000490050004E006F00010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C0050006B00670046006F0072006D0061007400010050006B00670046006F00
      72006D006100740001000100010001000D000A006300640073005F0042006F00
      6F006B0069006E006700440074006C0050006C0061006E006E00650064004F00
      7500740070007500740041004D003300010050006C0061006E006E0065006400
      4F007500740070007500740041004D00330001000100010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C0050006C006100
      6E006E00650064004F00750074007000750074004E004D003300010050006C00
      61006E006E00650064004F00750074007000750074004E004D00330001000100
      010001000D000A006300640073005F0042006F006F006B0069006E0067004400
      74006C0050006C0061006E006E00650064004F00750074007000750074004E00
      6F004F00660055006E0069007400730001004B00760061006E00740069007400
      65007400010001005100750061006E007400690074007900010001000D000A00
      6300640073005F0042006F006F006B0069006E006700440074006C0050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C00500072006F0064007500630074004E006F000100500072006F0064007500
      630074004E006F0001000100010001000D000A006300640073005F0042006F00
      6F006B0069006E006700440074006C00500072006F00640075006B0074000100
      500072006F00640075006B00740001000100500072006F006400750063007400
      010001000D000A006300640073005F0042006F006F006B0069006E0067004400
      74006C007300730070004E006F0001007300730070004E006F00010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C00530074006100740075007300010053007400610074007500730001000100
      530074006100740075007300010001000D000A006300640073005F0042006F00
      6F006B0069006E006700440074006C00550073006500640041004D0033000100
      550073006500640041004D00330001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E006700440074006C0055007300650064004E00
      4D003300010055007300650064004E004D00330001000100010001000D000A00
      6300640073005F0042006F006F006B0069006E006700440074006C0055007300
      650072004E0061006D00650001005200650067002E0061007600010001005200
      65006700200062007900010001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C0055007400660061006C006C00010055007400
      660061006C006C00010001004F007500740063006F006D006500010001000D00
      0A006300640073005F0042006F006F006B0069006E0067004800640072004100
      42000100410042000100010041005700010001000D000A006300640073005F00
      42006F006F006B0069006E00670048006400720041004C004D004D0001004100
      4C004D004D0001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E00670048006400720041004D003300010041004D00330001000100
      010001000D000A006300640073005F0042006F006F006B0069006E0067004800
      64007200410054000100410054000100010041005400010001000D000A006300
      640073005F0042006F006F006B0069006E00670048006400720042006F006B00
      610064004E004D003300010042006F006B006100640020004E004D0033000100
      42006F006B00610064004E004D003300010042006F006F006B00650064004E00
      4D003300010042006F006B00610064004E004D00330001000D000A0063006400
      73005F0042006F006F006B0069006E00670048006400720042006F006F006B00
      650064004200790049004400010042006F006B00610074000100010001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      42006F006F006B0069006E0067004E006F00010042006F006F006B0069006E00
      67004E006F0001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E006700480064007200430072006500610074006500640055007300
      6500720001004300720065006100740065006400550073006500720001005300
      6B0061007000610064002000610076000100010053006B006100700061006400
      20006100760001000D000A006300640073005F0042006F006F006B0069006E00
      6700480064007200440061007400650043007200650061007400650064000100
      4400610074006500430072006500610074006500640001000100010001000D00
      0A006300640073005F0042006F006F006B0069006E0067004800640072004500
      6E0064005700650065006B00010054006F006D0020007600650063006B006100
      0100010054006F006D0020007700650065006B00010001000D000A0063006400
      73005F0042006F006F006B0069006E0067004800640072004B0075006E006400
      01004B0075006E0064000100010043007500730074006F006D00650072000100
      01000D000A006300640073005F0042006F006F006B0069006E00670048006400
      72004C006E00670064006200650073006B007200690076006E0069006E006700
      01004C00E4006E00670064006200650073006B007200690076006E0069006E00
      6700010001004C0065006E006700680074002000640065007300630072006900
      7000740069006F006E00010001000D000A006300640073005F0042006F006F00
      6B0069006E0067004800640072004C004F004E00720001004C004F004E007200
      01004C004F0001004C004F0001004C004F0001000D000A006300640073005F00
      42006F006F006B0069006E0067004800640072004D00310001004D0031000100
      0100010001000D000A006300640073005F0042006F006F006B0069006E006700
      4800640072004E004D00330001004E004D003300010001004E004D0033000100
      01000D000A006300640073005F0042006F006F006B0069006E00670048006400
      72004E004D00330050006C0061006E0046006100720064006900670001005400
      6F0074002E006600E4007200640069006700760061007200610020004E004D00
      330001000100010001000D000A006300640073005F0042006F006F006B006900
      6E0067004800640072004E006F004F00660055006E0069007400730001004B00
      760061006E0074006900740065007400010001005100750061006E0074006900
      74007900010001000D000A006300640073005F0042006F006F006B0069006E00
      67004800640072005000610063006B0061006700650048006500690067006800
      740001005000610063006B006100670065004800650069006700680074000100
      0100010001000D000A006300640073005F0042006F006F006B0069006E006700
      4800640072005000610063006B00610067006500570069006400740068000100
      5000610063006B00610067006500570069006400740068000100010001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A006300640073005F0042006F006F006B0069006E006700
      480064007200500072006F0064007500630074004E006F000100500072006F00
      64007500630074004E006F0001000100010001000D000A006300640073005F00
      42006F006F006B0069006E006700480064007200500072006F00640075006B00
      74000100500072006F00640075006B00740001000100500072006F0064007500
      63007400010001000D000A006300640073005F0042006F006F006B0069006E00
      670048006400720052006500730074004E004D00330001005200650073007400
      4E004D00330001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E00670048006400720053006F007200740069006E0067004F007200
      6400650072004E006F0001004B00F60072006F0072006400650072006E007200
      01000100520075006E0020006F00720064006500720020006E006F0001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      7300730070004E006F0001007300730070004E006F0001000100010001000D00
      0A006300640073005F0042006F006F006B0069006E0067004800640072005300
      74006100720074005700650065006B00010046006F006D002000760065006300
      6B00610001000100460072006F006D0020007700650065006B00010001000D00
      0A006300640073005F0042006F006F006B0069006E0067004800640072005500
      6E0069007400010055006E0069007400010045006E0068006500740001000100
      45006E0068006500740001000D000A006300640073005F0042006F006F006B00
      69006E00670048006400720055007400660061006C006C000100550074006600
      61006C006C00010001004F007500740063006F006D006500010001000D000A00
      6300640073005F0042006F006F006B0069006E00670048006400720056006F00
      6C0075006D00650055006E00690074004E006F00010056006F006C0075006D00
      650055006E00690074004E006F0001000100010001000D000A00630064007300
      5F00430061006C00630053006F00720074004F00720064006500720073004100
      63007400750061006C00460069006E0069007300680001004100630074007500
      61006C00460069006E0069007300680001000100010001000D000A0063006400
      73005F00430061006C00630053006F00720074004F0072006400650072007300
      410063007400750061006C005300740061007200740001004100630074007500
      61006C005300740061007200740001000100010001000D000A00630064007300
      5F00430061006C00630053006F00720074004F00720064006500720073004300
      61007000740069006F006E000100430061007000740069006F006E0001000100
      010001000D000A006300640073005F00430061006C00630053006F0072007400
      4F00720064006500720073004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F00430061006C00630053006F00720074004F00
      720064006500720073004400750072006100740069006F006E00010044007500
      72006100740069006F006E0001000100010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730045007600
      65006E007400540079007000650001004500760065006E007400540079007000
      650001000100010001000D000A006300640073005F00430061006C0063005300
      6F00720074004F00720064006500720073004600650065006400530070006500
      6500640001004600650065006400530070006500650064000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      6400650072007300460069006E006900730068000100460069006E0069007300
      680001000100010001000D000A006300640073005F00430061006C0063005300
      6F00720074004F00720064006500720073004600690078006500640044006100
      7400650001004600690078006500640044006100740065000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      640065007200730046006C006100730068004600690065006C00640001004600
      6C006100730068004600690065006C00640001000100010001000D000A006300
      640073005F00430061006C00630053006F00720074004F007200640065007200
      73004900440001004900440001000100010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730049006E00
      66006F005400650078007400010049006E0066006F0054006500780074000100
      0100010001000D000A006300640073005F00430061006C00630053006F007200
      74004F00720064006500720073004C004F004E006F0001004C004F004E006F00
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F00720064006500720073004D006500730073006100670065000100
      4D0065007300730061006700650001000100010001000D000A00630064007300
      5F00430061006C00630053006F00720074004F00720064006500720073004E00
      4D00330049006E0001004E004D00330049006E0001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      7200730050006C0061006E006E006500640041004D003100010050006C006100
      6E006E006500640041004D00310001000100010001000D000A00630064007300
      5F00430061006C00630053006F00720074004F00720064006500720073005000
      6C0061006E006E006500640057006F0072006B0069006E006700540069006D00
      6500010050006C0061006E006E006500640057006F0072006B0069006E006700
      540069006D00650001000100010001000D000A006300640073005F0043006100
      6C00630053006F00720074004F007200640065007200730050006F0073007400
      6E0069006E0067007300740069006400010050006F00730074006E0069006E00
      6700730074006900640001000100010001000D000A006300640073005F004300
      61006C00630053006F00720074004F0072006400650072007300500072006500
      430061006C00630045006600660069006300690065006E006300790046006100
      630074006F0072000100500072006500430061006C0063004500660066006900
      6300690065006E006300790046006100630074006F0072000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      6400650072007300500072006F00640075006300740069006F006E0055006E00
      690074004E006F000100500072006F00640075006300740069006F006E005500
      6E00690074004E006F0001000100010001000D000A006300640073005F004300
      61006C00630053006F00720074004F0072006400650072007300520065007300
      6F0075007200630065004900440001005200650073006F007500720063006500
      4900440001000100010001000D000A006300640073005F00430061006C006300
      53006F00720074004F00720064006500720073005300650071004E006F000100
      5300650071004E006F0001000100010001000D000A006300640073005F004300
      61006C00630053006F00720074004F0072006400650072007300530074006100
      7200740001005300740061007200740001000100530074006100720074007300
      010001000D000A006300640073005F00430061006C00630053006F0072007400
      4F00720064006500720073005400610073006B00530074006100740075007300
      4600690065006C00640001005400610073006B00530074006100740075007300
      4600690065006C00640001000100010001000D000A006300640073005F004300
      61006C00630053006F00720074004F0072006400650072007300570065006500
      6B004E006F0001005700650065006B004E006F0001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      720073005600650072006B004E006F0001005600650072006B004E006F000100
      0100010001000D000A006300640073005F00430061006C00630053006F007200
      74004F007200640065007200730059006500610072004E006F00010059006500
      610072004E006F0001000100010001000D000A006300640073005F0043006100
      6C00630053006F00720074004F00720064006500720073005900650061007200
      5700650065006B00010059006500610072005700650065006B00010001000100
      01000D000A006300640073005F00430061006C0065006E006400610072004400
      720069006600740050006C006100740073004E00720001004400720069006600
      740050006C006100740073004E00720001000100010001000D000A0063006400
      73005F00430061006C0065006E0064006100720045006E006400540069006D00
      6500010045006E006400540069006D00650001000100010001000D000A006300
      640073005F00430061006C0065006E006400610072004E006F00740065000100
      4E006F007400650001004E006F007400650072006100010001004E006F007400
      65007200610001000D000A006300640073005F00430061006C0065006E006400
      6100720053007400610072007400540069006D00650001005300740061007200
      7400540069006D00650001005300740061007200740054006900640001000100
      5300740061007200740054006900640001000D000A006300640073005F004300
      61006C0065006E00640061007200540079007000410076004400610067000100
      5400790070004100760044006100670001000100540079007000650020006F00
      66002000640061007900010001000D000A006300640073005F00430061006C00
      65006E0064006100720054007900700065000100540079007000650001005400
      790070000100010054007900700001000D000A006300640073005F0043006100
      6C0065006E006400610072005400790070006500560061006C00750065000100
      5400790070006500560061006C007500650001000100010001000D000A006300
      640073005F00430061006C0065006E006400610072005600650063006B006F00
      44006100670001005600650063006B006F004400610067000100010057006500
      65006B00440061007900010001000D000A006300640073005F00430061006C00
      65006E0064006100720057006F0072006B0048006F0075007200730001005700
      6F0072006B0048006F0075007200730001000100010001000D000A0063006400
      73005F00430061006C0045007800690073007400730044007200690066007400
      50006C006100740073004E00720001004400720069006600740050006C006100
      740073004E00720001000100010001000D000A006300640073005F0063007800
      5300630068006500640075006C0065007200410063007400750061006C004600
      69006E006900730068000100410063007400750061006C00460069006E006900
      7300680001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C0065007200410063007400750061006C00530074006100
      720074000100410063007400750061006C005300740061007200740001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C006500720042006F006F006B0069006E0067004E006F00010042006F006F00
      6B0069006E0067004E006F0001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720043006100700074006900
      6F006E000100430061007000740069006F006E0001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004400
      6100740065004300720065006100740065006400010044006100740065004300
      72006500610074006500640001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720044007500720061007400
      69006F006E0001004400750072006100740069006F006E000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      72004500760065006E007400540079007000650001004500760065006E007400
      540079007000650001000100010001000D000A006300640073005F0063007800
      5300630068006500640075006C00650072004600650065006400530070006500
      6500640001004600650065006400530070006500650064000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      7200460069006E006900730068000100460069006E0069007300680001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C00650072004600690078006500640044006100740065000100460069007800
      65006400440061007400650001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720046006C00610073006800
      4600690065006C006400010046006C006100730068004600690065006C006400
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C00650072004900440001004900440001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004900
      6E0066006F005400650078007400010049006E0066006F005400650078007400
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C00650072004C006100620065006C0043006F006C006F0072000100
      4C006100620065006C0043006F006C006F00720001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004C00
      6F0063006100740069006F006E0001004C006F0063006100740069006F006E00
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C00650072004C004F004E006F0001004C004F004E006F0001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C00650072004D0065007300730061006700650001004D006500730073006100
      6700650001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C00650072004E004D00330049006E0001004E004D003300
      49006E0001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C00650072004F007000740069006F006E00730001004F00
      7000740069006F006E00730001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720050006100720065006E00
      740049004400010050006100720065006E007400490044000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      720050006C0061006E006E0065006400500072006F0064007500630074006900
      6F006E00540069006D006500010050006C0061006E006E006500640050007200
      6F00640075006300740069006F006E00540069006D0065000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      720050006C0061006E006E006500640057006F0072006B0069006E0067005400
      69006D006500010050006C0061006E006E006500640057006F0072006B006900
      6E006700540069006D00650001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720050006F00730074006E00
      69006E0067007300740069006400010050006F00730074006E0069006E006700
      730074006900640001000100010001000D000A006300640073005F0063007800
      5300630068006500640075006C0065007200500072006500430061006C006300
      45006600660069006300690065006E006300790046006100630074006F007200
      0100500072006500430061006C00630045006600660069006300690065006E00
      6300790046006100630074006F00720001000100010001000D000A0063006400
      73005F00630078005300630068006500640075006C0065007200500072006F00
      640075006300740069006F006E0055006E00690074004E006F00010050007200
      6F00640075006300740069006F006E0055006E00690074004E006F0001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C006500720052006500630075007200720065006E006300650049006E006400
      65007800010052006500630075007200720065006E006300650049006E006400
      6500780001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C006500720052006500630075007200720065006E006300
      650049006E0066006F00010052006500630075007200720065006E0063006500
      49006E0066006F0001000100010001000D000A006300640073005F0063007800
      5300630068006500640075006C0065007200520065006D0069006E0064006500
      720044006100740065000100520065006D0069006E0064006500720044006100
      7400650001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C0065007200520065006D0069006E006400650072004D00
      69006E0075007400650073004200650066006F00720065005300740061007200
      74000100520065006D0069006E006400650072004D0069006E00750074006500
      73004200650066006F0072006500530074006100720074000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      7200520065006D0069006E006400650072005200650073006F00750072006300
      6500730044006100740061000100520065006D0069006E006400650072005200
      650073006F007500720063006500730044006100740061000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      72005200650073006F0075007200630065004900440001005200650073006F00
      75007200630065004900440001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C00650072005300650071004E006F00
      01005300650071004E006F0001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720053007400610072007400
      0100530074006100720074000100010053007400610072007400730001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      7200530074006100740065000100530074006100740065000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      72005400610073006B0043006F006D0070006C00650074006500460069006500
      6C00640001005400610073006B0043006F006D0070006C006500740065004600
      690065006C00640001000100010001000D000A006300640073005F0063007800
      5300630068006500640075006C00650072005400610073006B0049006E006400
      650078004600690065006C00640001005400610073006B0049006E0064006500
      78004600690065006C00640001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C00650072005400610073006B004C00
      69006E006B0073004600690065006C00640001005400610073006B004C006900
      6E006B0073004600690065006C00640001000100010001000D000A0063006400
      73005F00630078005300630068006500640075006C0065007200540061007300
      6B005300740061007400750073004600690065006C0064000100540061007300
      6B005300740061007400750073004600690065006C0064000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      7200550073006500720049004400010055007300650072004900440001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C00650072005600650072006B004E006F0001005600650072006B004E006F00
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C006500720059006500610072005700650065006B00010059006500
      610072005700650065006B0001000100010001000D000A006300640073005F00
      700072006F006400750063006500720043006C00690065006E0074004E006100
      6D006500010043006C00690065006E0074004E0061006D006500010001000100
      01000D000A006300640073005F00700072006F00640075006300650072004300
      6C00690065006E0074004E006F00010043006C00690065006E0074004E006F00
      01000100010001000D000A006300640073005F00700072006F00640075006300
      650072005300650061007200630068004E0061006D0065000100530065006100
      7200630068004E0061006D00650001000100010001000D000A00630064007300
      5F00500072006F00640075006300740069006F006E0055006E00690074004300
      6F0073007400010043006F007300740001004B006F00730074006E0061006400
      010001004B006F00730074006E006100640001000D000A006300640073005F00
      500072006F00640075006300740069006F006E0055006E00690074004C006500
      67006F0043006F007300740050006500720041004D00330001004C0065006700
      6F0043006F007300740050006500720041004D00330001000100010001000D00
      0A006300640073005F00500072006F00640075006300740069006F006E005500
      6E00690074004C006F006E00500065007200540069006D006D00650001004C00
      6F006E00500065007200540069006D006D00650001000100010001000D000A00
      6300640073005F00500072006F00640075006300740069006F006E0055006E00
      690074004D005400500055004E004B00540001004D00C4005400500055004E00
      4B005400010001004D0045004100530055005200450050004F0049004E005400
      010001000D000A006300640073005F00500072006F0064007500630074006900
      6F006E0055006E0069007400500072006F00640075006300650072004E006F00
      0100500072006F00640075006300650072004E006F0001000100010001000D00
      0A006300640073005F00500072006F00640075006300740069006F006E005500
      6E0069007400500072006F00640075006300740069006F006E0055006E006900
      74004E006F000100500072006F00640075006300740069006F006E0055006E00
      690074004E006F0001000100010001000D000A006300640073005F0050007200
      6F00640075006300740069006F006E0055006E0069007400500072006F006400
      55006E00690074004E006F000100500072006F00640055006E00690074004E00
      6F0001000100010001000D000A006300640073005F00500072006F0064007500
      6300740069006F006E0055006E00690074005200650073006F00750072006300
      650049006D0061006700650049006E0064006500780001005200650073006F00
      750072006300650049006D0061006700650049006E0064006500780001000100
      010001000D000A006300640073005F00500072006F0064007500630074006900
      6F006E0055006E006900740054007900700065004F00660055006E0069007400
      010054007900700065004F00660055006E006900740001000100010001000D00
      0A006300640073005F00500072006F00700073004100750074006F0043006F00
      6C005700690064007400680001004100750074006F0043006F006C0057006900
      64007400680001004100750074006F002E0020006B006F006C002E0062007200
      65006400640001004100750074006F002E00200063006F006C002E0077006900
      64007400680001004100750074006F002E0020006B006F006C002E0062007200
      65006400640001000D000A006300640073005F00500072006F00700073004300
      6F0070007900500063007300010043006F007000790050006300730001004B00
      6F0070006900650072006100200073007400790063006B00010001004B006F00
      7000690065007200610020007300E40063006B0001000D000A00630064007300
      5F00500072006F007000730046006F0072006D00010046006F0072006D000100
      46006F0072006D0075006C00E40072000100010046006F0072006D0075006C00
      E400720001000D000A006300640073005F00500072006F007000730049006E00
      7000750074004F007000740069006F006E00010049006E007000750074004F00
      7000740069006F006E00010049006E006D00610074006E0069006E0067007300
      61006C007400650072006E006100740069007600010049006E00700075007400
      20006F007000740069006F006E007300010049006E006D00610074006E006900
      6E006700730061006C007400650072006E00610074006900760001000D000A00
      6300640073005F00500072006F00700073004C0065006E006700740068004700
      72006F00750070004E006F0001004C0065006E00670074006800470072006F00
      750070004E006F0001000100010001000D000A006300640073005F0050007200
      6F00700073004C0065006E006700740068004F007000740069006F006E000100
      4C0065006E006700740068004F007000740069006F006E000100010001000100
      0D000A006300640073005F00500072006F00700073004C00490050004E006F00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      500072006F00700073004D0061007400700075006E006B00740001004D006100
      7400700075006E006B00740001000100010001000D000A006300640073005F00
      500072006F00700073004E00650077004900740065006D0052006F0077000100
      4E00650077004900740065006D0052006F00770001000100010001000D000A00
      6300640073005F00500072006F00700073004F0077006E00650072004E006F00
      01004F0077006E00650072004E006F0001000100010001000D000A0063006400
      73005F00500072006F00700073005000490050004E006F000100500049005000
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      7300500072006F00640075006300650072000100500072006F00640075006300
      6500720001000100010001000D000A006300640073005F00500072006F007000
      7300500072006F00640075006300650072004E006F000100500072006F006400
      75006300650072004E006F0001000100010001000D000A006300640073005F00
      500072006F007000730052006500670044006100740065000100520065006700
      440061007400650001000100010001000D000A006300640073005F0050007200
      6F007000730052006500670050006F0069006E0074004E006F00010052006500
      670050006F0069006E0074004E006F0001000100010001000D000A0063006400
      73005F00500072006F0070007300520075006E004E006F000100520075006E00
      4E006F0001004B00F60072004E007200010001004B00F60072004E0072000100
      0D000A006300640073005F00500072006F007000730053007500700070006C00
      69006500720043006F0064006500010053007500700070006C00690065007200
      43006F006400650001004C00650076006500720061006E007400F60072007300
      6B006F006400010053007500700070006C0069006500720063006F0064006500
      01004C00650076006500720061006E007400F600720073006B006F0064000100
      0D000A006300640073005F00500072006F007000730055007300650072004900
      4400010055007300650072004900440001000100010001000D000A0063006400
      73005F00500072006F00700073005600650072006B004E006F00010056006500
      72006B004E006F0001000100010001000D000A006300640073005F0052006500
      670050006F0069006E007400500072006F00640075006300740069006F006E00
      55006E00690074004E0061006D0065000100500072006F006400750063007400
      69006F006E0055006E00690074004E0061006D00650001000100010001000D00
      0A006300640073005F0052006500670050006F0069006E007400520065006700
      69007300740072006100740069006F006E0050006F0069006E0074004E006F00
      010052006500670069007300740072006100740069006F006E0050006F006900
      6E0074004E006F0001000100010001000D000A006300640073005F0053004F00
      520061007700610041004D003100010041004D00310001000100010001000D00
      0A006300640073005F0053004F00520061007700410042000100410042000100
      010041005700010001000D000A006300640073005F0053004F00520061007700
      41004C004D004D00010041004C004D004D0001000100010001000D000A006300
      640073005F0053004F0052006100770041004D003100010041004D0031000100
      0100010001000D000A006300640073005F0053004F0052006100770041004D00
      3300010041004D00330001000100010001000D000A006300640073005F005300
      4F0052006100770041006E00740061006C004200690074006100720055007400
      010041006E00740061006C004200690074006100720055007400010001000100
      01000D000A006300640073005F0053004F0052006100770041006E0074006100
      6C004B006100700053006E0069007400740001004B006100700073006E006900
      7400740001000100430075007400740069006E006700200070006F0073006900
      740069006F006E007300010001000D000A006300640073005F0053004F005200
      6100770041006E00740061006C004C0061006D0065006C006C00650072005500
      740001004C0061006D0065006C006C006500720001000100010001000D000A00
      6300640073005F0053004F005200610077006100500063007300010061005000
      6300730001000100010001000D000A006300640073005F0053004F0052006100
      7700410054000100410054000100010041005400010001000D000A0063006400
      73005F0053004F005200610077004100760067004C0065006E00670074006800
      01004100760067004C0065006E0067007400680001004D006500640065006C00
      6C00E4006E0067006400010001004D006500640065006C006C00E4006E006700
      640001000D000A006300640073005F0053004F0052006100770042006F006F00
      6B006500640041004C004D004D00010042006F006F006B006500640041004C00
      4D004D0001000100010001000D000A006300640073005F0053004F0052006100
      770042006F006F006B006500640041004D00330001004E004D00330020006200
      6F006B006100640001000100010001000D000A006300640073005F0053004F00
      5200610077004300720065006100740065006400550073006500720001004300
      7200650061007400650064005500730065007200010053006B00610070006100
      64002000610076000100010053006B0061007000610064002000610076000100
      0D000A006300640073005F0053004F0052006100770044006100740065004300
      7200650061007400650064000100440061007400650043007200650061007400
      6500640001000100010001000D000A006300640073005F0053004F0052006100
      77004500780063006C00750064006500460072006F006D0054006F0074006100
      6C0001004500780063006C00750064006500460072006F006D0054006F007400
      61006C0001000100010001000D000A006300640073005F0053004F0052006100
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
      6E00010001000D000A006300640073005F0053004F005200610077004C006500
      6E00670074006800530070006500630001004C00E4006E006700640001000100
      4C0065006E00670074006800010001000D000A006300640073005F0053004F00
      5200610077004D00610069006E005200610077004D00740072006C0001004800
      7500760075006400760061007200610001000100010001000D000A0063006400
      73005F0053004F005200610077004D00430043006C006100730073004E006F00
      0100440065006C006100730020006600F6007200650020006800790076006C00
      69006E00670001000100010001000D000A006300640073005F0053004F005200
      610077004D006F00640069006600690065006400550073006500720001004D00
      6F0064006900660069006500640055007300650072000100C4006E0064007200
      6100640020006100760001000100C4006E006400720061006400200061007600
      01000D000A006300640073005F0053004F005200610077004E00420001004E00
      4200010001004E005700010001000D000A006300640073005F0053004F005200
      610077004E004D00330001004E004D003300010001004E004D00330001000100
      0D000A006300640073005F0053004F005200610077004E00540001004E005400
      010001004E005400010001000D000A006300640073005F0053004F0052006100
      7700500043005300010053007400790063006B00010001005000630073000100
      5300E40063006B0001000D000A006300640073005F0053004F00520061007700
      500065007200630065006E0074005000630073004F00660054006F0074006100
      6C000100500065007200630065006E0074005000630073004F00660054006F00
      740061006C0001000100010001000D000A006300640073005F0053004F005200
      6100770050006C0061006E006E006500640041004D003100010041004D003100
      01000100010001000D000A006300640073005F0053004F005200610077005000
      6C0061006E006E006500640041004D003300010041004D003300010001000100
      01000D000A006300640073005F0053004F0052006100770050006C0061006E00
      6E0065006400500063007300010053007400790063006B000100010050006300
      730001005300E40063006B0001000D000A006300640073005F0053004F005200
      61007700500072006900630065005000650072004E004D003300010050007200
      690073002F004E004D00330001000100500072006900630065002F004E004D00
      3300010001000D000A006300640073005F0053004F0052006100770050007200
      6F006400750063007400430061007400650067006F00720079004E006F000100
      500072006F006400750063007400430061007400650067006F00720079004E00
      6F0001000100010001000D000A006300640073005F0053004F00520061007700
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F0001000100010001000D000A006300640073005F0053004F00520061007700
      500072006F00640075006B0074000100500072006F00640075006B0074000100
      0100500072006F006400750063007400010001000D000A006300640073005F00
      53004F00520061007700500072006F006700720061006D004E006F0001005000
      72006F006700720061006D004E006F0001000100010001000D000A0063006400
      73005F0053004F005200610077005200610077004D00740072006C004E006F00
      01005200610064006E007200010001004C0069006E0065004E006F0001000100
      0D000A006300640073005F0053004F005200610077005200650061006C004C00
      50004D0001005200650061006C004C0050004D0001000100010001000D000A00
      6300640073005F0053004F0052006100770053006F007200740069006E006700
      4F0072006400650072004E006F00010053006F007200740069006E0067004F00
      72006400650072004E006F0001000100010001000D000A006300640073005F00
      53004F0052006100770053007000650063006900650073004E006F0001005300
      7000650063006900650073004E006F0001000100010001000D000A0063006400
      73005F0053004F0052006100770053007500720066006100630069006E006700
      4E006F00010053007500720066006100630069006E0067004E006F0001000100
      010001000D000A006300640073005F0053004F00520061007700540072006900
      6D0041004D00310001005400720069006D0041004D0031000100010001000100
      0D000A006300640073005F0053004F005200610077005400720069006D004100
      4D00330001005400720069006D0041004D00330001000100010001000D000A00
      6300640073005F0053004F00520061007700550072006C006100670067007300
      500072006F00630065006E0074000100550072006C00E4006700670020002500
      01000100010001000D000A006300640073005F0053004F005200610077005500
      7400660061006C006C00010055007400660061006C006C00010001004F007500
      740063006F006D006500010001000D000A006300640073005F0053006F007200
      4F007200640052006F00770041004C004D004D00010041004C004D004D000100
      0100010001000D000A006300640073005F0053006F0072004F00720064005200
      6F0077004900440001004900440001000100010001000D000A00630064007300
      5F0053006F0072004F007200640052006F0077004C004F004E00520001004C00
      4F004E00520001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F0077004E004D00330001004E004D003300010001004E00
      4D003300010001000D000A006300640073005F0053006F0072004F0072006400
      52006F007700500072006F00640041004D0031000100500072006F0064004100
      4D00310001000100010001000D000A006300640073005F0053006F0072004F00
      7200640052006F007700500072006F00640041004D0033000100500072006F00
      640041004D00330001000100010001000D000A006300640073005F0053006F00
      72004F007200640052006F007700500072006F00640050004300530001005000
      72006F00640050004300530001000100010001000D000A006300640073005F00
      53006F0072004F007200640052006F007700500072006F00640050004B005400
      0100500072006F00640050004B00540001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F007700700072006F0064007500
      6B0074000100700072006F00640075006B00740001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740042006F006F006B006500640041004D003100010041004D00310001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740042006F006F006B00650064004E004D00330001004200
      6F006F006B00650064004E004D00330001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004200
      6F006F006B0069006E0067004E006F00010042006F006F006B0069006E006700
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C0069007300740043006F006D006D0065006E007400
      7300010043006F006D006D0065006E007400730001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74004400750072006100740069006F006E000100440075007200610074006900
      6F006E0001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C006900730074004600650065006400530070006500
      6500640001004600650065006400530070006500650064000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      690073007400460069006E006900730068000100460069006E00690073006800
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400460069007800650064004400610074006500
      010046006900780065006400440061007400650001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740046007200640069006700760061007200610001004600E400720064006900
      6700760061007200610001000100460069006E00690073006800650064002000
      67006F006F0064007300010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C0069007300740047004100520045000100C400
      4700410052004500010001004F0057004E0045005200010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4900440001004900440001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004B0075006E006400
      01004B0075006E0064000100010043007500730074006F006D00650072000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004C006100620065006C0043006F006C006F00720001004C00
      6100620065006C0043006F006C006F00720001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4C0041004700450052004700520055005000500001004C004100470045005200
      4700520055005000500001000100530054004F0043004B002000470052004F00
      55005000010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C006900730074004C004100470045005200530054004C004C00
      450001004C00410047004500520053005400C4004C004C004500010001005300
      54004F0043004B00200050004C00410043004500010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004C00
      650067006F0001004C00650067006F000100010043006F006E00740072006100
      63007400200077006F0072006B00010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004C00490050004E00
      6F0001004C00490050004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C006900730074004C004F00
      4E00520001004C004F004E00520001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C006900730074004C004F00
      530001004C004F00530001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004D00430043006C00
      6100730073004E006F0001004D00430043006C006100730073004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074004D006F007600650054006F004C00490050004E00
      6F0001004D006F007600650054006F004C00490050004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004E004D00330050006C0061006E0046006100720064006900
      670001004E004D00330050006C0061006E004600610072006400690067000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074004F00720067005900650061007200570065006500
      6B0001004F007200670059006500610072005700650065006B00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004F0077006E00650072004E006F0001004F0077006E006500
      72004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074005000490050004E006F000100
      5000490050004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C0069007300740050006C0061006E00
      6E0065006400500072006F00640075006300740069006F006E00540069006D00
      6500010050006C0061006E006E0065006400500072006F006400750063007400
      69006F006E00540069006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740050006C00
      61006E006E006500640057006F0072006B0069006E006700540069006D006500
      010050006C0061006E006E006500640057006F0072006B0069006E0067005400
      69006D00650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C0069007300740050006F00730074006E006900
      6E0067007300740069006400010050006F00730074006E0069006E0067007300
      74006900640001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C00690073007400500072006500430061006C00
      630045006600660069006300690065006E006300790046006100630074006F00
      72000100500072006500430061006C0063004500660066006900630069006500
      6E006300790046006100630074006F00720001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      5000720069006F004E006F0001005000720069006F004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C00690073007400500052004F00440045004E00480045005400010050005200
      4F00440045004E0048004500540001000100500052004F004400200055004E00
      49005400010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400500052004F0044005500430045004E005400
      0100500072006F0064007500630065006E00740001000100500072006F006400
      7500630065007200010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C00690073007400500072006F006700720061006D00
      4E006F000100500072006F006700720061006D004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      6900730074005200650061006C0045006E006400540069006D00650001005300
      6C007500740074006900640001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400520065006100
      6C00500072006F00640075006300740069006F006E00540069006D0065000100
      5200650061006C00500072006F00640075006300740069006F006E0054006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C006900730074005200650061006C00530074006100
      72007400540069006D0065000100530074006100720074007400690064000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074005200650073006F00750072006300650049004400
      01005200650073006F0075007200630065004900440001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074005200760061007200610001005200E500760061007200610001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074007300730070004E006F0001007300730070004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C00690073007400530074006100720074000100530074006100
      7200740001000100530074006100720074007300010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005300
      74006F007000540069006D0065000100530074006F007000540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C0069007300740053007500720066006100630069006E006700
      42006B00670043006F006C006F00720001005300750072006600610063006900
      6E00670042006B00670043006F006C006F00720001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740053007500720066006100630069006E006700540065007800740043006F00
      6C006F007200010053007500720066006100630069006E006700540065007800
      740043006F006C006F00720001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400540061007300
      6B005300740061007400750073004600690065006C0064000100540061007300
      6B005300740061007400750073004600690065006C0064000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      690073007400540065006D0070006C006100740065000100540065006D007000
      6C0061007400650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C00690073007400540065006D0070006C00
      6100740065004E0061006D0065000100540065006D0070006C00610074006500
      4E0061006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C00690073007400540065006D0070006C00
      61007400650055007300650072000100540065006D0070006C00610074006500
      550073006500720001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740054007900700065004F00
      6600520075006E004E0061006D006500010054007900700065004F0066005200
      75006E004E0061006D00650001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072004C00690073007400540079007000
      65004F006600520075006E004E006F00010054007900700065004F0066005200
      75006E004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740055007400660061006C00
      6C00010055007400660061006C006C00010001004F007500740063006F006D00
      6500010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074005700650065006B004E006F000100570065006500
      6B004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074005600650072006B004E006F00
      01005600650072006B004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740059006500
      610072004E006F00010059006500610072004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      7300740059006500610072005700650065006B00010059006500610072005700
      650065006B0001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730041006E0073007600610072006900
      6700010041006E0073007600610072006900670001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      41006E00730076006100720069006700530061006C006A006100720065000100
      41006E00730076006100720069006700530061006C006A006100720065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730041006E00730076006100720069006700530061006C00
      6A006100720065004E006F00010041006E007300760061007200690067005300
      61006C006A006100720065004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730041006E00
      740061006C004200690074006100720055007400010041006E00740061006C00
      420069007400610072005500740001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720052006500730041006E007400
      61006C004B006100700053006E00690074007400010041006E00740061006C00
      4B006100700053006E0069007400740001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730041007600
      6700500072006F0064007500630074005000720069006300650041004D003100
      0100410076006700500072006F00640075006300740050007200690063006500
      41004D00310001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200520065007300410076006700500072006F006400
      7500630074005000720069006300650041004D00330001004100760067005000
      72006F0064007500630074005000720069006300650041004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300410076006700500072006F00640075006300740050007200
      6900630065004E004D0033000100410076006700500072006F00640075006300
      7400500072006900630065004E004D00330001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004100
      760067005200610077004D00740072006C005000720069006300650041004D00
      310001004100760067005200610077004D00740072006C005000720069006300
      650041004D00310001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300410076006700520061007700
      4D00740072006C005000720069006300650041004D0033000100410076006700
      5200610077004D00740072006C005000720069006300650041004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004100760067005200610077004D00740072006C005000
      72006900630065004E004D00330001004100760067005200610077004D007400
      72006C00500072006900630065004E004D00330001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      410076006B006100700041004D0033000100410076006B006100700041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300410076006B00610070004C0050004D000100
      410076006B00610070004C0050004D0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730041007600
      6B0061007000560061006C00750065000100410076006B006100700056006100
      6C007500650001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200520065007300430068006900700073004D003300
      53006F006C00690064000100430068006900700073004D00330053006F006C00
      6900640001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730043006800690070007300560061006C00
      75006500010043006800690070007300560061006C0075006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730043006F006D006D0065006E0074007300010043006F006D006D00
      65006E007400730001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730043006F007300740050006500
      720041004D003100010043006F007300740050006500720041004D0031000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730043006F007300740050006500720041004D0033000100
      43006F007300740050006500720041004D00330001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      43006F00730074005000650072004E004D003300010043006F00730074005000
      650072004E004D00330001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730043007200650061007400
      6500640055007300650072000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300440061007400650043007200
      6500610074006500640001004400610074006500430072006500610074006500
      640001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730045006600660069006300690065006E006300
      790046006100630074006F007200010045006600660069006300690065006E00
      6300790046006100630074006F00720001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730045006600
      660069006300690065006E006300790046006100630074006F00720057004F00
      530074006F0070007000740069006D0065000100450066006600690063006900
      65006E006300790046006100630074006F00720057004F00530074006F007000
      7000740069006D00650001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730045006E00640054006900
      6D006500010045006E006400540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      4600650065006400530070006500650064000100460065006500640053007000
      65006500640001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720052006500730048007900760065006C0049006E00
      66006F00010048007900760065006C0049006E0066006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073004B006100730073006100740069006F006E0041004D00330001004B00
      6100730073006100740069006F006E0041004D00330001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73004B006100730073006100740069006F006E004C0050004D0001004B006100
      730073006100740069006F006E004C0050004D0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      4B006100730073006100740069006F006E0053007400790063006B0001004B00
      6100730073006100740069006F006E0053007400790063006B00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073004B006100730073006100740069006F006E00560061006C007500
      650001004B006100730073006100740069006F006E00560061006C0075006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004C00650067006F0001004C00650067006F000100
      010043006F006E0074007200610063007400200077006F0072006B0001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073004C00650067006F0043006F007300740050006500720041004D003300
      01004C00650067006F0043006F007300740050006500720041004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004C0065006E0067007400680046006F0072006D006100
      740001004C0065006E0067007400680046006F0072006D006100740001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004C00490050004E006F0001004C00490050004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073004D0061006E00750061006C00500072006F0064005400
      69006D00650001004D0061006E00750061006C00500072006F00640054006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073004D00430043006C006100730073004E00
      6F000100440065006C006100730020006600F600720065002000680079007600
      6C0069006E00670001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073004D006F007600650054006F00
      4C00490050004E006F0001004D006F007600650054006F004C00490050004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073004E006F004F00660057006F0072006B006500
      7200730001004E006F004F00660057006F0072006B0065007200730001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004E006F004F00660057006F0072006B006500720073005000
      6F00730074006E0069006E00670001004E006F004F00660057006F0072006B00
      65007200730050006F00730074006E0069006E00670001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73004F0077006E00650072004E006F0001004F0077006E00650072004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300500065007200630065006E007400540072006900
      6D006C006F00730073000100500065007200630065006E007400540072006900
      6D006C006F007300730001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072005200650073005000490050004E006F00
      01005000490050004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F00720064006500720052006500730050006C0061006E00
      6E0065006400500072006F00640075006300740069006F006E00540069006D00
      6500010050006C0061006E006E0065006400500072006F006400750063007400
      69006F006E00540069006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720052006500730050006F007300
      74006E0069006E0067007300740069006400010050006F00730074006E006900
      6E006700730074006900640001000100010001000D000A006300640073005F00
      53006F00720074004F00720064006500720052006500730050006F0073007400
      540069006D00650048006F0075007200010050006F0073007400540069006D00
      650048006F007500720001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730050007200650043006100
      6C00630045006600660069006300690065006E00630079004600610063007400
      6F00720001004B0061006C006B0079006C006500720061006400200076006500
      72006B006E0069006E0067007300670072006100640020002500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073005000720069006E0074005200610077004D00740072006C005000
      61007200740001005000720069006E0074005200610077004D00740072006C00
      500061007200740001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005000720069006F004E006F00
      01005000720069006F004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300500072006F00
      6400540069006D00650048006F00750072000100500072006F00640054006900
      6D00650048006F007500720001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300500072006F006400
      75006300650072004E006F000100500072006F00640075006300650072004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300500072006F00640075006300740069006F00
      6E0041004D0031000100500072006F00640075006300740069006F006E004100
      4D00310001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200520065007300500072006F0064007500630074006900
      6F006E0041004D0033000100500072006F00640075006300740069006F006E00
      41004D00330001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200520065007300500072006F006400750063007400
      69006F006E0043006F00730074000100500072006F0064007500630074006900
      6F006E0043006F007300740001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300500072006F006400
      75006300740069006F006E004E004D0033000100500072006F00640075006300
      740069006F006E004E004D00330001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300500072006F00
      640075006300740069006F006E005000630073000100500072006F0064007500
      6300740069006F006E0050006300730001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050007200
      6F00640075006300740069006F006E0055006E00690074004E006F0001005000
      72006F00640075006300740069006F006E0055006E00690074004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200520065007300500072006F00640075006300740069006F006E005600
      61006C00750065000100500072006F00640075006300740069006F006E005600
      61006C007500650001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00670072006100
      6D004E006F000100500072006F006700720061006D004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      5200650073005200610077004C00490050004E006F0001005200610077004C00
      490050004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005200610077004D0074007200
      6C0041004D00310001005200610077004D00740072006C0041004D0031000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073005200610077004D00740072006C0041004D0033000100
      5200610077004D00740072006C0041004D00330001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077004D00740072006C0043006F007300740001005200610077004D00
      740072006C0043006F007300740001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300520061007700
      4D00740072006C0043006F00730074005000650072004E004D00330049006E00
      01005200610077004D00740072006C0043006F00730074005000650072004E00
      4D00330049006E0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005200610077004D0074007200
      6C004E004D00330001005200610077004D00740072006C004E004D0033000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073005200610077004D00740072006C005000630073000100
      5200610077004D00740072006C0050006300730001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077005000490050004E006F0001005200610077005000490050004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073005200650061006C0045006E00640054006900
      6D00650001005200650061006C0045006E006400540069006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073005200650061006C004C0070006D004D0069006E0075007400
      650001005200650061006C004C0070006D004D0069006E007500740065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073005200650061006C00500072006F006400750063007400
      69006F006E00540069006D00650001005200650061006C00500072006F006400
      75006300740069006F006E00540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200650061006C0053007400610072007400540069006D006500010052006500
      61006C0053007400610072007400540069006D00650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730052006500730070006F006E007300690062006C0065005500730065007200
      010052006500730070006F006E007300690062006C0065005500730065007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720052006500730052006500730075006C00740041004F0001005200
      6500730075006C00740041004F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300520065007300
      75006C00740041004F005000650072004E004D00330049006E00010052006500
      730075006C00740041004F005000650072004E004D00330049006E0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300530061006C0061007200790043006F007300740050006500
      720048006F00750072000100530061006C0061007200790043006F0073007400
      50006500720048006F007500720001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300530061007700
      64007500730074004D00330053006F006C006900640001005300610077006400
      7500730074004D00330053006F006C006900640001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5300610077006400750073007400560061006C00750065000100530061007700
      6400750073007400560061006C007500650001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005300
      650071004E006F0001005300650071004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      530068006900660074004E006F000100530068006900660074004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200520065007300530069007A00650046006F0072006D00610074000100
      530069007A00650046006F0072006D006100740001000100530069007A006500
      200066006F0072006D0061007400010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730053006F00720074006900
      6E0067004F0072006400650072004E006F00010053006F007200740069006E00
      67004F0072006400650072004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730053007400
      610072007400540069006D006500010053007400610072007400540069006D00
      6500010053007400610072007400540069006400010001005300740061007200
      740054006900640001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300530074006100740075007300010053007400
      610074007500730001000100530074006100740075007300010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      530074006F007000540069006D0065000100530074006F007000540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300530074006F007000540069006D0065004800
      6F00750072000100530074006F007000540069006D00650048006F0075007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300530074006F007000540069006D0065004E006F00
      740049006E0063006C000100530074006F007000540069006D0065004E006F00
      740049006E0063006C0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300530074006F0070005400
      69006D0065004E006F00740049006E0063006C0048006F007500720001005300
      74006F007000540069006D0065004E006F00740049006E0063006C0048006F00
      7500720001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200520065007300540065006D0070006C00610074006500
      0100540065006D0070006C0061007400650001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005400
      65006D0070006C006100740065004E0061006D0065000100540065006D007000
      6C006100740065004E0061006D00650001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730054006500
      6D0070006C0061007400650055007300650072000100540065006D0070006C00
      610074006500550073006500720001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720052006500730054006F007400
      61006C0041004D003100010054006F00740061006C0041004D00310001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730054006F00740061006C0041004D003300010054006F007400
      61006C0041004D00330001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730054006F00740061006C00
      43006F0073007400010054006F00740061006C0043006F007300740001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730054006F00740061006C00500063007300010054006F007400
      61006C0050006300730001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730054006F00740061006C00
      530061006C0061007200790043006F0073007400010054006F00740061006C00
      530061006C0061007200790043006F007300740001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      54006F00740061006C00560061006C0075006500010054006F00740061006C00
      560061006C007500650001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730054006F00740043006F00
      730074005000650072004E004D00330049006E00010054006F00740043006F00
      730074005000650072004E004D00330049006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      54006F007400560061006C005000650072004E004D00330049006E0001005400
      6F007400560061006C005000650072004E004D00330049006E00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730054007900700065004F006600520075006E004E0061006D006500
      010054007900700065004F006600520075006E004E0061006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730054007900700065004F006600520075006E004E006F000100
      54007900700065004F006600520075006E004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73005700650065006B004E006F0001005700650065006B004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730059006500610072004E006F00010059006500610072004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730059006500610072005700650065006B000100
      59006500610072005700650065006B0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720073004100630074007500
      61006C00460069006E006900730068000100410063007400750061006C004600
      69006E0069007300680001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072007300410063007400750061006C005300
      74006100720074000100410063007400750061006C0053007400610072007400
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200730042006F006F006B0069006E0067004E006F00010042006F00
      6F006B0069006E0067004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200730043006100700074006900
      6F006E000100430061007000740069006F006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200730044006100
      7400650043007200650061007400650064000100440061007400650043007200
      6500610074006500640001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720073004400750072006100740069006F00
      6E0001004400750072006100740069006F006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200730045007600
      65006E007400540079007000650001004500760065006E007400540079007000
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730046006500650064005300700065006500640001004600
      6500650064005300700065006500640001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072007300460069006E006900
      730068000100460069006E0069007300680001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300460069007800
      6500640044006100740065000100460069007800650064004400610074006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200730046006C006100730068004600690065006C00640001004600
      6C006100730068004600690065006C00640001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300490044000100
      4900440001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200730049006E0066006F00540065007800740001004900
      6E0066006F00540065007800740001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720073004C006100620065006C00
      43006F006C006F00720001004C006100620065006C0043006F006C006F007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      64006500720073004C006F0063006100740069006F006E0001004C006F006300
      6100740069006F006E0001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720073004C004F004E006F0001004C004F00
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720073004D0065007300730061006700650001004D006500
      7300730061006700650001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720073004E004D00330049006E0001004E00
      4D00330049006E0001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720073004F007000740069006F006E0073000100
      4F007000740069006F006E00730001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720073004F0077006E0065007200
      4E006F0001004F0077006E00650072004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200730050006100
      720065006E00740049004400010050006100720065006E007400490044000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200730050006C0061006E006E0065006400500072006F00640075006300
      740069006F006E00540069006D006500010050006C0061006E006E0065006400
      500072006F00640075006300740069006F006E00540069006D00650001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200730050006C0061006E006E006500640057006F0072006B0069006E006700
      540069006D006500010050006C0061006E006E006500640057006F0072006B00
      69006E006700540069006D00650001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200730050006F00730074006E00
      69006E0067007300740069006400010050006F00730074006E0069006E006700
      730074006900640001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072007300500072006500430061006C0063004500
      6600660069006300690065006E006300790046006100630074006F0072000100
      500072006500430061006C00630045006600660069006300690065006E006300
      790046006100630074006F00720001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072007300500072006F0064007500
      6300740069006F006E0055006E00690074004E006F000100500072006F006400
      75006300740069006F006E0055006E00690074004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072007300
      52006500630075007200720065006E006300650049006E006400650078000100
      52006500630075007200720065006E006300650049006E006400650078000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200730052006500630075007200720065006E006300650049006E006600
      6F00010052006500630075007200720065006E006300650049006E0066006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072007300520065006D0069006E006400650072004400610074006500
      0100520065006D0069006E006400650072004400610074006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      7300520065006D0069006E006400650072004D0069006E007500740065007300
      4200650066006F0072006500530074006100720074000100520065006D006900
      6E006400650072004D0069006E0075007400650073004200650066006F007200
      65005300740061007200740001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072007300520065006D0069006E006400
      650072005200650073006F007500720063006500730044006100740061000100
      520065006D0069006E006400650072005200650073006F007500720063006500
      7300440061007400610001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720073005200650073006F00750072006300
      65004900440001005200650073006F0075007200630065004900440001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720073005300650071004E006F0001005300650071004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      7300530074006100720074000100530074006100720074000100010053007400
      6100720074007300010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720073005300740061007400650001005300740061007400
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720073005400610073006B0043006F006D0070006C0065007400
      65004600690065006C00640001005400610073006B0043006F006D0070006C00
      6500740065004600690065006C00640001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720073005400610073006B00
      49006E006400650078004600690065006C00640001005400610073006B004900
      6E006400650078004600690065006C00640001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300540061007300
      6B004C0069006E006B0073004600690065006C00640001005400610073006B00
      4C0069006E006B0073004600690065006C00640001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200730054006100
      73006B005300740061007400750073004600690065006C006400010054006100
      73006B005300740061007400750073004600690065006C006400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      7300550073006500720049004400010055007300650072004900440001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720073005700650065006B004E006F0001005700650065006B004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720073005600650072006B004E006F0001005600650072006B004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200730059006500610072004E006F00010059006500610072004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730059006500610072005700650065006B00010059006500
      610072005700650065006B0001000100010001000D000A0049006E0074006500
      6700650072004600690065006C00640034000100490044000100010001000100
      0D000A0053007400720069006E0067004600690065006C006400310001004900
      6E0066006F00540065007800740001000100010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A00750070005F00430061006C00630053006F00720074004F00
      720064006500720073002E004600650074006300680052006F00770053005100
      4C0001002200530045004C004500430054002000610063007400750061006C00
      730074006100720074002C002000610063007400750061006C00660069006E00
      6900730068002C002000630061007000740069006F006E002C00200065007600
      65006E00740074007900700065002C002000660069006E006900730068002C00
      2000690064002C0020006C006100620065006C0063006F006C006F0072002C00
      200022002C002200200020006C006F0063006100740069006F006E002C002000
      6D006500730073006100670065002C0020006F007000740069006F006E007300
      2C00200070006100720065006E007400690064002C0020007200650063007500
      7200720065006E006300650069006E006400650078002C002000720065006300
      75007200720065006E006300650069006E0066006F002C00200022002C002200
      20002000720065006D0069006E0064006500720064006100740065002C002000
      720065006D0069006E006400650072006D0069006E0075007400650073006200
      650066006F0072006500730074006100720074002C002000720065006D006900
      6E006400650072007200650073006F0075007200630065007300640061007400
      61002C00200022002C002200200020007200650073006F007500720063006500
      690064002C002000730074006100720074002C00200073007400610074006500
      2C0020007400610073006B0063006F006D0070006C0065007400650066006900
      65006C0064002C0020007400610073006B0069006E0064006500780066006900
      65006C0064002C00200022002C002200200020007400610073006B006C006900
      6E006B0073006600690065006C0064002C0020007400610073006B0073007400
      61007400750073006600690065006C0064002C0020006C006F006E006F002C00
      200066006C006100730068006600690065006C0064002C002000700072006F00
      640075006300740069006F006E0075006E00690074006E006F002C0020002200
      2C002200200020007500730065007200690064002C0020006400750072006100
      740069006F006E002C0020007300650071006E006F002C002000660069007800
      6500640064006100740065002C00200069006E0066006F007400650078007400
      2C0020006E006D00330069006E002C0020007900650061007200770065006500
      6B002C00200022002C002200200020007600650072006B006E006F002C002000
      62006F006F006B0069006E0067006E006F002C00200070006F00730074006E00
      69006E00670073007400690064002C002000700072006500630061006C006300
      65006600660069006300690065006E006300790066006100630074006F007200
      2C00200022002C00220020002000660065006500640073007000650065006400
      2C00200070006C0061006E006E0065006400700072006F006400750063007400
      69006F006E00740069006D0065002C00200070006C0061006E006E0065006400
      77006F0072006B0069006E006700740069006D0065002C002000640061007400
      650063007200650061007400650064002C00200022002C002200200020006F00
      77006E00650072006E006F002C0020007700650065006B006E006F002C002000
      79006500610072006E006F002C0020006F007200670079006500610072007700
      650065006B0022002C002200460052004F004D0020005600490053005F005600
      4900440041002E00640062006F002E0063007800730063006800650064007500
      6C00650072007400610062006C00650022002C00220057004800450052004500
      20006900640020003D0020003A0049004400220001000100010001000D000A00
      750070005F00430061006C00630053006F00720074004F007200640065007200
      73002E0049006E007300650072007400530051004C000100220049004E005300
      450052005400200049004E0054004F0020005600490053005F00560049004400
      41002E00640062006F002E00630078007300630068006500640075006C006500
      72007400610062006C00650022002C0022002800610063007400750061006C00
      730074006100720074002C002000610063007400750061006C00660069006E00
      6900730068002C002000630061007000740069006F006E002C00200065007600
      65006E00740074007900700065002C00200022002C0022002000200066006900
      6E006900730068002C002000690064002C0020006D0065007300730061006700
      65002C0020007200650073006F007500720063006500690064002C0020007300
      74006100720074002C00200022002C002200200020007400610073006B007300
      740061007400750073006600690065006C0064002C0020006C006F006E006F00
      2C00200066006C006100730068006600690065006C0064002C00200064007500
      72006100740069006F006E002C00200022002C00220020002000730065007100
      6E006F002C0020006600690078006500640064006100740065002C0020006900
      6E0066006F0074006500780074002C0020006E006D00330069006E002C002000
      79006500610072007700650065006B002C00200022002C002200200020007600
      650072006B006E006F002C002000640061007400650063007200650061007400
      650064002C0020007700650065006B006E006F002C0020007900650061007200
      6E006F00290022002C002200560041004C00550045005300200028003A004E00
      450057005F00410063007400750061006C00530074006100720074002C002000
      3A004E00450057005F00410063007400750061006C00460069006E0069007300
      68002C0020003A004E00450057005F00430061007000740069006F006E002C00
      20003A004E00450057005F004500760065006E00740054007900700065002C00
      200022002C002200200020003A004E00450057005F00460069006E0069007300
      68002C0020003A004E00450057005F00490044002C0020003A004E0045005700
      5F004D006500730073006100670065002C0020003A004E00450057005F005200
      650073006F007500720063006500490044002C0020003A004E00450057005F00
      530074006100720074002C00200022002C002200200020003A004E0045005700
      5F005400610073006B005300740061007400750073004600690065006C006400
      2C0020003A004E00450057005F004C004F004E006F002C0020003A004E004500
      57005F0046006C006100730068004600690065006C0064002C0020003A004E00
      450057005F004400750072006100740069006F006E002C00200022002C002200
      200020003A004E00450057005F005300650071004E006F002C0020003A004E00
      450057005F004600690078006500640044006100740065002C0020003A004E00
      450057005F0049006E0066006F0054006500780074002C0020003A004E004500
      57005F004E004D00330049006E002C0020003A004E00450057005F0059006500
      610072005700650065006B002C00200022002C002200200020003A004E004500
      57005F005600650072006B004E006F002C0020003A004E00450057005F004400
      61007400650043007200650061007400650064002C0020003A004E0045005700
      5F005700650065006B004E006F002C0020003A004E00450057005F0059006500
      610072004E006F002900220001000100010001000D000A00750070005F004300
      61006C00630053006F00720074004F00720064006500720073002E004C006F00
      63006B00530051004C0001002200530045004C00450043005400200061006300
      7400750061006C00730074006100720074002C00200061006300740075006100
      6C00660069006E006900730068002C002000630061007000740069006F006E00
      2C0020006500760065006E00740074007900700065002C002000660069006E00
      6900730068002C002000690064002C0020006C006100620065006C0063006F00
      6C006F0072002C00200022002C002200200020006C006F006300610074006900
      6F006E002C0020006D006500730073006100670065002C0020006F0070007400
      69006F006E0073002C00200070006100720065006E007400690064002C002000
      72006500630075007200720065006E006300650069006E006400650078002C00
      200072006500630075007200720065006E006300650069006E0066006F002C00
      200022002C00220020002000720065006D0069006E0064006500720064006100
      740065002C002000720065006D0069006E006400650072006D0069006E007500
      7400650073006200650066006F0072006500730074006100720074002C002000
      720065006D0069006E006400650072007200650073006F007500720063006500
      730064006100740061002C00200022002C002200200020007200650073006F00
      7500720063006500690064002C002000730074006100720074002C0020007300
      74006100740065002C0020007400610073006B0063006F006D0070006C006500
      740065006600690065006C0064002C0020007400610073006B0069006E006400
      650078006600690065006C0064002C00200022002C0022002000200074006100
      73006B006C0069006E006B0073006600690065006C0064002C00200074006100
      73006B007300740061007400750073006600690065006C0064002C0020006C00
      6F006E006F002C00200066006C006100730068006600690065006C0064002C00
      2000700072006F00640075006300740069006F006E0075006E00690074006E00
      6F002C00200022002C002200200020007500730065007200690064002C002000
      6400750072006100740069006F006E002C0020007300650071006E006F002C00
      20006600690078006500640064006100740065002C00200069006E0066006F00
      74006500780074002C0020006E006D00330069006E002C002000790065006100
      72007700650065006B002C00200022002C002200200020007600650072006B00
      6E006F002C00200062006F006F006B0069006E0067006E006F002C0020007000
      6F00730074006E0069006E00670073007400690064002C002000700072006500
      630061006C00630065006600660069006300690065006E006300790066006100
      630074006F0072002C00200022002C0022002000200066006500650064007300
      70006500650064002C00200070006C0061006E006E0065006400700072006F00
      640075006300740069006F006E00740069006D0065002C00200070006C006100
      6E006E006500640077006F0072006B0069006E006700740069006D0065002C00
      2000640061007400650063007200650061007400650064002C00200022002C00
      2200200020006F0077006E00650072006E006F002C0020007700650065006B00
      6E006F002C00200079006500610072006E006F002C0020006F00720067007900
      6500610072007700650065006B0022002C002200460052004F004D0020005600
      490053005F0056004900440041002E00640062006F002E006300780073006300
      68006500640075006C00650072007400610062006C00650022002C0022005700
      480045005200450020006900640020003D0020003A004F004C0044005F004900
      4400220001000100010001000D000A007300740053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A00730074004F0074006800
      6500720053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C00410042002E004F0072006900670069006E00010041004200010001004100
      5700010001000D000A006300640073005F0042006F006F006B0069006E006700
      440074006C0041006E00740061006C004C0061006D0065006C006C0065007200
      550074002E004F0072006900670069006E00010041006E00740061006C004C00
      61006D0065006C006C00650072005500740001000100010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C00410054002E00
      4F0072006900670069006E0001005B00410054005D0001000100010001000D00
      0A006300640073005F0042006F006F006B0069006E006700440074006C004200
      6F006F006B006500640041004C004D004D002E004F0072006900670069006E00
      010042006F006F006B006500640041004C004D004D0001000100010001000D00
      0A006300640073005F0042006F006F006B0069006E006700440074006C004200
      6F006F006B006500640041004D0033002E004F0072006900670069006E000100
      42006F006F006B006500640041004D00330001000100010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C0042006F006F00
      6B00650064004C0049005000470072006F00750070004E006F002E004F007200
      6900670069006E00010042006F006F006B00650064004C004900500047007200
      6F00750070004E006F0001000100010001000D000A006300640073005F004200
      6F006F006B0069006E006700440074006C0042006F006F006B00650064004E00
      4D0033002E004F0072006900670069006E00010042006F006F006B0065006400
      4E004D00330001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C0042006F006F006B0065006400500072006F00
      64007500630074004C0065006E006700740068004E006F002E004F0072006900
      670069006E00010042006F006F006B0065006400500072006F00640075006300
      74004C0065006E006700740068004E006F0001000100010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C0042006F006F00
      6B0065006400500072006F0064007500630074004E006F002E004F0072006900
      670069006E00010042006F006F006B0065006400500072006F00640075006300
      74004E006F0001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E006700440074006C0042006F006F006B0069006E0067004E006F00
      2E004F0072006900670069006E00010042006F006F006B0069006E0067004E00
      6F0001000100010001000D000A006300640073005F0042006F006F006B006900
      6E006700440074006C0043007200650061007400650064005500730065007200
      2E004F0072006900670069006E00010043007200650061007400650064005500
      730065007200010053006B006100700061006400200061007600010001005300
      6B00610070006100640020006100760001000D000A006300640073005F004200
      6F006F006B0069006E006700440074006C004400610074006500430072006500
      61007400650064002E004F0072006900670069006E0001004400610074006500
      430072006500610074006500640001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E006700440074006C00490044002E004F007200
      6900670069006E0001004900440001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E006700440074006C004C006100670065007200
      2E004F0072006900670069006E0001004C006100670065007200010001005300
      74006F0063006B00010001000D000A006300640073005F0042006F006F006B00
      69006E006700440074006C004C0065006E006700740068005300700065006300
      2E004F0072006900670069006E0001004C0065006E0067007400680053007000
      6500630001000100010001000D000A006300640073005F0042006F006F006B00
      69006E006700440074006C004D00610069006E005200610077004D0074007200
      6C002E004F0072006900670069006E0001004D00610069006E00520061007700
      4D00740072006C0001000100010001000D000A006300640073005F0042006F00
      6F006B0069006E006700440074006C004D00430043006C006100730073004E00
      6F002E004F0072006900670069006E0001004D00430043006C00610073007300
      4E006F0001000100010001000D000A006300640073005F0042006F006F006B00
      69006E006700440074006C004D006F0064006900660069006500640055007300
      650072002E004F0072006900670069006E0001004D006F006400690066006900
      6500640055007300650072000100C4006E006400720061006400200061007600
      01000100C4006E00640072006100640020006100760001000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C004E0042002E004F00
      72006900670069006E0001004E004200010001004E005700010001000D000A00
      6300640073005F0042006F006F006B0069006E006700440074006C004E005400
      2E004F0072006900670069006E0001004E005400010001004E00540001000100
      0D000A006300640073005F0042006F006F006B0069006E006700440074006C00
      5000490050004E006F002E004F0072006900670069006E000100500049005000
      4E006F0001000100010001000D000A006300640073005F0042006F006F006B00
      69006E006700440074006C0050006B00670046006F0072006D00610074002E00
      4F0072006900670069006E00010050006B00670046006F0072006D0061007400
      01000100010001000D000A006300640073005F0042006F006F006B0069006E00
      6700440074006C0050006C0061006E006E00650064004F007500740070007500
      740041004D0033002E004F0072006900670069006E00010050006C0061006E00
      6E00650064004F007500740070007500740041004D0033000100010001000100
      0D000A006300640073005F0042006F006F006B0069006E006700440074006C00
      50006C0061006E006E00650064004F00750074007000750074004E004D003300
      2E004F0072006900670069006E00010050006C0061006E006E00650064004F00
      750074007000750074004E004D00330001000100010001000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C0050006C0061006E00
      6E00650064004F00750074007000750074004E006F004F00660055006E006900
      740073002E004F0072006900670069006E00010050006C0061006E006E006500
      64004F00750074007000750074004E006F004F00660055006E00690074007300
      01000100010001000D000A006300640073005F0042006F006F006B0069006E00
      6700440074006C00500072006F0064007500630074004C0065006E0067007400
      68004E006F002E004F0072006900670069006E000100500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      6300640073005F0042006F006F006B0069006E006700440074006C0050007200
      6F0064007500630074004E006F002E004F0072006900670069006E0001005000
      72006F0064007500630074004E006F0001000100010001000D000A0063006400
      73005F0042006F006F006B0069006E006700440074006C00500072006F006400
      75006B0074002E004F0072006900670069006E000100500072006F0064007500
      6B00740001000100500072006F006400750063007400010001000D000A006300
      640073005F0042006F006F006B0069006E006700440074006C00730073007000
      4E006F002E004F0072006900670069006E0001007300730070004E006F000100
      0100010001000D000A006300640073005F0042006F006F006B0069006E006700
      440074006C005300740061007400750073002E004F0072006900670069006E00
      0100530074006100740075007300010001005300740061007400750073000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C00550073006500640041004D0033002E004F0072006900670069006E000100
      550073006500640041004D00330001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E006700440074006C0055007300650064004E00
      4D0033002E004F0072006900670069006E00010055007300650064004E004D00
      330001000100010001000D000A006300640073005F0042006F006F006B006900
      6E006700440074006C0055007300650072004E0061006D0065002E004F007200
      6900670069006E00010055007300650072004E0061006D006500010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670044007400
      6C0055007400660061006C006C002E004F0072006900670069006E0001005500
      7400660061006C006C00010001004F007500740063006F006D00650001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      410042002E004F0072006900670069006E000100410042000100010041005700
      010001000D000A006300640073005F0042006F006F006B0069006E0067004800
      6400720041004C004D004D002E004F0072006900670069006E00010041004C00
      4D004D0001000100010001000D000A006300640073005F0042006F006F006B00
      69006E00670048006400720041004D0033002E004F0072006900670069006E00
      010041004D00330001000100010001000D000A006300640073005F0042006F00
      6F006B0069006E006700480064007200410054002E004F007200690067006900
      6E0001005B00410054005D0001000100010001000D000A006300640073005F00
      42006F006F006B0069006E00670048006400720042006F006B00610064004E00
      4D0033002E004F0072006900670069006E00010042006F006B00610064004E00
      4D00330001000100010001000D000A006300640073005F0042006F006F006B00
      69006E00670048006400720042006F006F006B00650064004200790049004400
      2E004F0072006900670069006E00010042006F006F006B006500640042007900
      4900440001000100010001000D000A006300640073005F0042006F006F006B00
      69006E00670048006400720042006F006F006B0069006E0067004E006F002E00
      4F0072006900670069006E00010042006F006F006B0069006E0067004E006F00
      01000100010001000D000A006300640073005F0042006F006F006B0069006E00
      6700480064007200430072006500610074006500640055007300650072002E00
      4F0072006900670069006E000100430072006500610074006500640055007300
      65007200010053006B0061007000610064002000610076000100010053006B00
      610070006100640020006100760001000D000A006300640073005F0042006F00
      6F006B0069006E00670048006400720044006100740065004300720065006100
      7400650064002E004F0072006900670069006E00010044006100740065004300
      72006500610074006500640001000100010001000D000A006300640073005F00
      42006F006F006B0069006E00670048006400720045006E006400570065006500
      6B002E004F0072006900670069006E00010045006E0064005700650065006B00
      01000100010001000D000A006300640073005F0042006F006F006B0069006E00
      67004800640072004B0075006E0064002E004F0072006900670069006E000100
      4B0075006E0064000100010043007500730074006F006D006500720001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      4C006E00670064006200650073006B007200690076006E0069006E0067002E00
      4F0072006900670069006E0001005B004C00E4006E0067006400620065007300
      6B007200690076006E0069006E0067005D0001000100010001000D000A006300
      640073005F0042006F006F006B0069006E0067004800640072004C004F004E00
      72002E004F0072006900670069006E0001004C004F004E00720001004C004F00
      01004C004F0001004C004F0001000D000A006300640073005F0042006F006F00
      6B0069006E0067004800640072004D0031002E004F0072006900670069006E00
      01004D00310001000100010001000D000A006300640073005F0042006F006F00
      6B0069006E0067004800640072004E004D0033002E004F007200690067006900
      6E0001004E004D003300010001004E004D003300010001000D000A0063006400
      73005F0042006F006F006B0069006E0067004800640072004E004D0033005000
      6C0061006E004600610072006400690067002E004F0072006900670069006E00
      01004E004D00330050006C0061006E0046006100720064006900670001000100
      010001000D000A006300640073005F0042006F006F006B0069006E0067004800
      640072004E006F004F00660055006E006900740073002E004F00720069006700
      69006E0001004E006F004F00660055006E006900740073000100010001000100
      0D000A006300640073005F0042006F006F006B0069006E006700480064007200
      5000610063006B006100670065004800650069006700680074002E004F007200
      6900670069006E0001005000610063006B006100670065004800650069006700
      6800740001000100010001000D000A006300640073005F0042006F006F006B00
      69006E0067004800640072005000610063006B00610067006500570069006400
      740068002E004F0072006900670069006E0001005000610063006B0061006700
      65005700690064007400680001000100010001000D000A006300640073005F00
      42006F006F006B0069006E006700480064007200500072006F00640075006300
      74004C0065006E006700740068004E006F002E004F0072006900670069006E00
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      01000100010001000D000A006300640073005F0042006F006F006B0069006E00
      6700480064007200500072006F0064007500630074004E006F002E004F007200
      6900670069006E000100500072006F0064007500630074004E006F0001000100
      010001000D000A006300640073005F0042006F006F006B0069006E0067004800
      64007200500072006F00640075006B0074002E004F0072006900670069006E00
      0100500072006F00640075006B00740001000100500072006F00640075006300
      7400010001000D000A006300640073005F0042006F006F006B0069006E006700
      48006400720053006F007200740069006E0067004F0072006400650072004E00
      6F002E004F0072006900670069006E00010053006F007200740069006E006700
      4F0072006400650072004E006F0001000100010001000D000A00630064007300
      5F0042006F006F006B0069006E0067004800640072007300730070004E006F00
      2E004F0072006900670069006E0001007300730070004E006F00010001000100
      01000D000A006300640073005F0042006F006F006B0069006E00670048006400
      7200530074006100720074005700650065006B002E004F007200690067006900
      6E000100530074006100720074005700650065006B0001000100010001000D00
      0A006300640073005F0042006F006F006B0069006E0067004800640072005500
      7400660061006C006C002E004F0072006900670069006E000100550074006600
      61006C006C00010001004F007500740063006F006D006500010001000D000A00
      6300640073005F0042006F006F006B0069006E00670048006400720056006F00
      6C0075006D00650055006E00690074004E006F002E004F007200690067006900
      6E00010056006F006C0075006D00650055006E00690074004E006F0001000100
      010001000D000A006300640073005F00430061006C00630053006F0072007400
      4F0072006400650072007300410063007400750061006C00460069006E006900
      730068002E004F0072006900670069006E000100410063007400750061006C00
      460069006E0069007300680001000100010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730041006300
      7400750061006C00530074006100720074002E004F0072006900670069006E00
      0100410063007400750061006C00530074006100720074000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      6400650072007300430061007000740069006F006E002E004F00720069006700
      69006E000100430061007000740069006F006E0001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      72007300440061007400650043007200650061007400650064002E004F007200
      6900670069006E00010044006100740065004300720065006100740065006400
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F00720064006500720073004400750072006100740069006F006E00
      2E004F0072006900670069006E0001004400750072006100740069006F006E00
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F00720064006500720073004500760065006E007400540079007000
      65002E004F0072006900670069006E0001004500760065006E00740054007900
      7000650001000100010001000D000A006300640073005F00430061006C006300
      53006F00720074004F0072006400650072007300460065006500640053007000
      6500650064002E004F0072006900670069006E00010046006500650064005300
      700065006500640001000100010001000D000A006300640073005F0043006100
      6C00630053006F00720074004F0072006400650072007300460069006E006900
      730068002E004F0072006900670069006E000100460069006E00690073006800
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F007200640065007200730046006900780065006400440061007400
      65002E004F0072006900670069006E0001004600690078006500640044006100
      7400650001000100010001000D000A006300640073005F00430061006C006300
      53006F00720074004F007200640065007200730046006C006100730068004600
      690065006C0064002E004F0072006900670069006E00010046006C0061007300
      68004600690065006C00640001000100010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730049004400
      2E004F0072006900670069006E0001004900440001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      7200730049006E0066006F0054006500780074002E004F007200690067006900
      6E00010049006E0066006F00540065007800740001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      720073004C004F004E006F002E004F0072006900670069006E0001004C004F00
      4E006F0001000100010001000D000A006300640073005F00430061006C006300
      53006F00720074004F00720064006500720073004D0065007300730061006700
      65002E004F0072006900670069006E0001004D00650073007300610067006500
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F00720064006500720073004E004D00330049006E002E004F007200
      6900670069006E0001004E004D00330049006E0001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      7200730050006C0061006E006E006500640041004D0031002E004F0072006900
      670069006E00010050006C0061006E006E006500640041004D00310001000100
      010001000D000A006300640073005F00430061006C00630053006F0072007400
      4F007200640065007200730050006C0061006E006E006500640057006F007200
      6B0069006E006700540069006D0065002E004F0072006900670069006E000100
      50006C0061006E006E006500640057006F0072006B0069006E00670054006900
      6D00650001000100010001000D000A006300640073005F00430061006C006300
      53006F00720074004F007200640065007200730050006F00730074006E006900
      6E00670073007400690064002E004F0072006900670069006E00010050006F00
      730074006E0069006E006700730074006900640001000100010001000D000A00
      6300640073005F00430061006C00630053006F00720074004F00720064006500
      72007300500072006500430061006C0063004500660066006900630069006500
      6E006300790046006100630074006F0072002E004F0072006900670069006E00
      0100500072006500430061006C00630045006600660069006300690065006E00
      6300790046006100630074006F00720001000100010001000D000A0063006400
      73005F00430061006C00630053006F00720074004F0072006400650072007300
      500072006F00640075006300740069006F006E0055006E00690074004E006F00
      2E004F0072006900670069006E000100500072006F0064007500630074006900
      6F006E0055006E00690074004E006F0001000100010001000D000A0063006400
      73005F00430061006C00630053006F00720074004F0072006400650072007300
      5200650073006F007500720063006500490044002E004F007200690067006900
      6E0001005200650073006F007500720063006500490044000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      64006500720073005300650071004E006F002E004F0072006900670069006E00
      01005300650071004E006F0001000100010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730053007400
      6100720074002E004F0072006900670069006E00010053007400610072007400
      01000100530074006100720074007300010001000D000A006300640073005F00
      430061006C00630053006F00720074004F007200640065007200730054006100
      73006B005300740061007400750073004600690065006C0064002E004F007200
      6900670069006E0001005400610073006B005300740061007400750073004600
      690065006C00640001000100010001000D000A006300640073005F0043006100
      6C00630053006F00720074004F00720064006500720073005700650065006B00
      4E006F002E004F0072006900670069006E0001005700650065006B004E006F00
      01000100010001000D000A006300640073005F00430061006C00630053006F00
      720074004F00720064006500720073005600650072006B004E006F002E004F00
      72006900670069006E0001005600650072006B004E006F000100010001000100
      0D000A006300640073005F00430061006C00630053006F00720074004F007200
      640065007200730059006500610072004E006F002E004F007200690067006900
      6E00010059006500610072004E006F0001000100010001000D000A0063006400
      73005F00430061006C00630053006F00720074004F0072006400650072007300
      59006500610072005700650065006B002E004F0072006900670069006E000100
      59006500610072005700650065006B0001000100010001000D000A0063006400
      73005F00430061006C0065006E00640061007200440072006900660074005000
      6C006100740073004E0072002E004F0072006900670069006E00010044007200
      69006600740050006C006100740073004E00720001000100010001000D000A00
      6300640073005F00430061006C0065006E0064006100720045006E0064005400
      69006D0065002E004F0072006900670069006E00010045006E00640054006900
      6D00650001000100010001000D000A006300640073005F00430061006C006500
      6E006400610072004E006F00740065002E004F0072006900670069006E000100
      4E006F007400650001004E006F007400650072006100010001004E006F007400
      65007200610001000D000A006300640073005F00430061006C0065006E006400
      6100720053007400610072007400540069006D0065002E004F00720069006700
      69006E00010053007400610072007400540069006D0065000100530074006100
      7200740054006900640001000100530074006100720074005400690064000100
      0D000A006300640073005F00430061006C0065006E0064006100720054007900
      7000410076004400610067002E004F0072006900670069006E00010054007900
      70004100760044006100670001000100540079007000650020006F0066002000
      640061007900010001000D000A006300640073005F00430061006C0065006E00
      64006100720054007900700065002E004F0072006900670069006E0001005400
      79007000650001005400790070000100010054007900700001000D000A006300
      640073005F00430061006C0065006E0064006100720054007900700065005600
      61006C00750065002E004F0072006900670069006E0001005400790070006500
      560061006C007500650001000100010001000D000A006300640073005F004300
      61006C0065006E006400610072005600650063006B006F004400610067002E00
      4F0072006900670069006E0001005600650063006B006F004400610067000100
      01005700650065006B00440061007900010001000D000A006300640073005F00
      430061006C0065006E0064006100720057006F0072006B0048006F0075007200
      73002E004F0072006900670069006E00010057006F0072006B0048006F007500
      7200730001000100010001000D000A006300640073005F00430061006C004500
      780069007300740073004400720069006600740050006C006100740073004E00
      72002E004F0072006900670069006E0001004400720069006600740050006C00
      6100740073004E00720001000100010001000D000A006300640073005F006300
      78005300630068006500640075006C0065007200410063007400750061006C00
      460069006E006900730068002E004F0072006900670069006E00010041006300
      7400750061006C00460069006E0069007300680001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004100
      63007400750061006C00530074006100720074002E004F007200690067006900
      6E000100410063007400750061006C0053007400610072007400010001000100
      01000D000A006300640073005F00630078005300630068006500640075006C00
      6500720042006F006F006B0069006E0067004E006F002E004F00720069006700
      69006E00010042006F006F006B0069006E0067004E006F000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      7200430061007000740069006F006E002E004F0072006900670069006E000100
      430061007000740069006F006E0001000100010001000D000A00630064007300
      5F00630078005300630068006500640075006C00650072004400610074006500
      43007200650061007400650064002E004F0072006900670069006E0001004400
      610074006500430072006500610074006500640001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004400
      750072006100740069006F006E002E004F0072006900670069006E0001004400
      750072006100740069006F006E0001000100010001000D000A00630064007300
      5F00630078005300630068006500640075006C00650072004500760065006E00
      740054007900700065002E004F0072006900670069006E000100450076006500
      6E007400540079007000650001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720046006500650064005300
      70006500650064002E004F0072006900670069006E0001004600650065006400
      5300700065006500640001000100010001000D000A006300640073005F006300
      78005300630068006500640075006C0065007200460069006E00690073006800
      2E004F0072006900670069006E000100460069006E0069007300680001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C00650072004600690078006500640044006100740065002E004F0072006900
      670069006E000100460069007800650064004400610074006500010001000100
      01000D000A006300640073005F00630078005300630068006500640075006C00
      6500720046006C006100730068004600690065006C0064002E004F0072006900
      670069006E00010046006C006100730068004600690065006C00640001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C0065007200490044002E004F0072006900670069006E000100490044000100
      0100010001000D000A006300640073005F006300780053006300680065006400
      75006C006500720049006E0066006F0054006500780074002E004F0072006900
      670069006E00010049006E0066006F0054006500780074000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      72004C006100620065006C0043006F006C006F0072002E004F00720069006700
      69006E0001004C006100620065006C0043006F006C006F007200010001000100
      01000D000A006300640073005F00630078005300630068006500640075006C00
      650072004C006F0063006100740069006F006E002E004F007200690067006900
      6E0001004C006F0063006100740069006F006E0001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004C00
      4F004E006F002E004F0072006900670069006E0001004C004F004E006F000100
      0100010001000D000A006300640073005F006300780053006300680065006400
      75006C00650072004D006500730073006100670065002E004F00720069006700
      69006E0001004D0065007300730061006700650001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072004E00
      4D00330049006E002E004F0072006900670069006E0001004E004D0033004900
      6E0001000100010001000D000A006300640073005F0063007800530063006800
      6500640075006C00650072004F007000740069006F006E0073002E004F007200
      6900670069006E0001004F007000740069006F006E0073000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      720050006100720065006E007400490044002E004F0072006900670069006E00
      010050006100720065006E0074004900440001000100010001000D000A006300
      640073005F00630078005300630068006500640075006C006500720050006C00
      61006E006E0065006400500072006F00640075006300740069006F006E005400
      69006D0065002E004F0072006900670069006E00010050006C0061006E006E00
      65006400500072006F00640075006300740069006F006E00540069006D006500
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C006500720050006C0061006E006E006500640057006F0072006B00
      69006E006700540069006D0065002E004F0072006900670069006E0001005000
      6C0061006E006E006500640057006F0072006B0069006E006700540069006D00
      650001000100010001000D000A006300640073005F0063007800530063006800
      6500640075006C006500720050006F00730074006E0069006E00670073007400
      690064002E004F0072006900670069006E00010050006F00730074006E006900
      6E006700730074006900640001000100010001000D000A006300640073005F00
      630078005300630068006500640075006C006500720050007200650043006100
      6C00630045006600660069006300690065006E00630079004600610063007400
      6F0072002E004F0072006900670069006E000100500072006500430061006C00
      630045006600660069006300690065006E006300790046006100630074006F00
      720001000100010001000D000A006300640073005F0063007800530063006800
      6500640075006C0065007200500072006F00640075006300740069006F006E00
      55006E00690074004E006F002E004F0072006900670069006E00010050007200
      6F00640075006300740069006F006E0055006E00690074004E006F0001000100
      010001000D000A006300640073005F0063007800530063006800650064007500
      6C006500720052006500630075007200720065006E006300650049006E006400
      650078002E004F0072006900670069006E000100520065006300750072007200
      65006E006300650049006E0064006500780001000100010001000D000A006300
      640073005F00630078005300630068006500640075006C006500720052006500
      630075007200720065006E006300650049006E0066006F002E004F0072006900
      670069006E00010052006500630075007200720065006E006300650049006E00
      66006F0001000100010001000D000A006300640073005F006300780053006300
      68006500640075006C0065007200520065006D0069006E006400650072004400
      6100740065002E004F0072006900670069006E000100520065006D0069006E00
      640065007200440061007400650001000100010001000D000A00630064007300
      5F00630078005300630068006500640075006C0065007200520065006D006900
      6E006400650072004D0069006E0075007400650073004200650066006F007200
      6500530074006100720074002E004F0072006900670069006E00010052006500
      6D0069006E006400650072004D0069006E007500740065007300420065006600
      6F00720065005300740061007200740001000100010001000D000A0063006400
      73005F00630078005300630068006500640075006C0065007200520065006D00
      69006E006400650072005200650073006F007500720063006500730044006100
      740061002E004F0072006900670069006E000100520065006D0069006E006400
      650072005200650073006F007500720063006500730044006100740061000100
      0100010001000D000A006300640073005F006300780053006300680065006400
      75006C00650072005200650073006F007500720063006500490044002E004F00
      72006900670069006E0001005200650073006F00750072006300650049004400
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C00650072005300650071004E006F002E004F007200690067006900
      6E0001005300650071004E006F0001000100010001000D000A00630064007300
      5F00630078005300630068006500640075006C00650072005300740061007200
      74002E004F0072006900670069006E0001005300740061007200740001000100
      530074006100720074007300010001000D000A006300640073005F0063007800
      5300630068006500640075006C0065007200530074006100740065002E004F00
      72006900670069006E0001005300740061007400650001000100010001000D00
      0A006300640073005F00630078005300630068006500640075006C0065007200
      5400610073006B0043006F006D0070006C006500740065004600690065006C00
      64002E004F0072006900670069006E0001005400610073006B0043006F006D00
      70006C006500740065004600690065006C00640001000100010001000D000A00
      6300640073005F00630078005300630068006500640075006C00650072005400
      610073006B0049006E006400650078004600690065006C0064002E004F007200
      6900670069006E0001005400610073006B0049006E0064006500780046006900
      65006C00640001000100010001000D000A006300640073005F00630078005300
      630068006500640075006C00650072005400610073006B004C0069006E006B00
      73004600690065006C0064002E004F0072006900670069006E00010054006100
      73006B004C0069006E006B0073004600690065006C0064000100010001000100
      0D000A006300640073005F00630078005300630068006500640075006C006500
      72005400610073006B005300740061007400750073004600690065006C006400
      2E004F0072006900670069006E0001005400610073006B005300740061007400
      750073004600690065006C00640001000100010001000D000A00630064007300
      5F00630078005300630068006500640075006C00650072005500730065007200
      490044002E004F0072006900670069006E000100550073006500720049004400
      01000100010001000D000A006300640073005F00630078005300630068006500
      640075006C00650072005600650072006B004E006F002E004F00720069006700
      69006E0001005600650072006B004E006F0001000100010001000D000A006300
      640073005F00630078005300630068006500640075006C006500720059006500
      610072005700650065006B002E004F0072006900670069006E00010059006500
      610072005700650065006B0001000100010001000D000A006300640073005F00
      700072006F006400750063006500720043006C00690065006E0074004E006100
      6D0065002E004F0072006900670069006E00010043006C00690065006E007400
      4E0061006D00650001000100010001000D000A006300640073005F0070007200
      6F006400750063006500720043006C00690065006E0074004E006F002E004F00
      72006900670069006E00010043006C00690065006E0074004E006F0001000100
      010001000D000A006300640073005F00700072006F0064007500630065007200
      5300650061007200630068004E0061006D0065002E004F007200690067006900
      6E0001005300650061007200630068004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F00640075006300740069006F006E00
      55006E006900740043006F00730074002E004F0072006900670069006E000100
      43006F007300740001004B006F00730074006E0061006400010001004B006F00
      730074006E006100640001000D000A006300640073005F00500072006F006400
      75006300740069006F006E0055006E00690074004C00650067006F0043006F00
      7300740050006500720041004D0033002E004F0072006900670069006E000100
      4C00650067006F0043006F007300740050006500720041004D00330001000100
      010001000D000A006300640073005F00500072006F0064007500630074006900
      6F006E0055006E00690074004C006F006E00500065007200540069006D006D00
      65002E004F0072006900670069006E0001004C006F006E005000650072005400
      69006D006D00650001000100010001000D000A006300640073005F0050007200
      6F00640075006300740069006F006E0055006E00690074004D00540050005500
      4E004B0054002E004F0072006900670069006E0001005B004D00C40054005000
      55004E004B0054005D0001000100010001000D000A006300640073005F005000
      72006F00640075006300740069006F006E0055006E0069007400500072006F00
      640075006300650072004E006F002E004F0072006900670069006E0001005000
      72006F00640075006300650072004E006F0001000100010001000D000A006300
      640073005F00500072006F00640075006300740069006F006E0055006E006900
      7400500072006F00640075006300740069006F006E0055006E00690074004E00
      6F002E004F0072006900670069006E000100500072006F006400750063007400
      69006F006E0055006E00690074004E006F0001000100010001000D000A006300
      640073005F00500072006F00640075006300740069006F006E0055006E006900
      7400500072006F00640055006E00690074004E006F002E004F00720069006700
      69006E000100500072006F00640055006E00690074004E006F00010001000100
      01000D000A006300640073005F00500072006F00640075006300740069006F00
      6E0055006E00690074005200650073006F00750072006300650049006D006100
      6700650049006E006400650078002E004F0072006900670069006E0001005200
      650073006F00750072006300650049006D0061006700650049006E0064006500
      780001000100010001000D000A006300640073005F00500072006F0064007500
      6300740069006F006E0055006E006900740054007900700065004F0066005500
      6E00690074002E004F0072006900670069006E00010054007900700065004F00
      660055006E006900740001000100010001000D000A006300640073005F005000
      72006F00700073004100750074006F0043006F006C0057006900640074006800
      2E004F0072006900670069006E0001004100750074006F0043006F006C005700
      690064007400680001004100750074006F002E0020006B006F006C002E006200
      720065006400640001004100750074006F002E00200063006F006C002E007700
      690064007400680001004100750074006F002E0020006B006F006C002E006200
      720065006400640001000D000A006300640073005F00500072006F0070007300
      43006F00700079005000630073002E004F0072006900670069006E0001004300
      6F007000790050006300730001004B006F007000690065007200610020007300
      7400790063006B00010001004B006F007000690065007200610020007300E400
      63006B0001000D000A006300640073005F00500072006F007000730046006F00
      72006D002E004F0072006900670069006E00010046006F0072006D0001004600
      6F0072006D0075006C00E40072000100010046006F0072006D0075006C00E400
      720001000D000A006300640073005F00500072006F007000730049006E007000
      750074004F007000740069006F006E002E004F0072006900670069006E000100
      49006E007000750074004F007000740069006F006E00010049006E006D006100
      74006E0069006E006700730061006C007400650072006E006100740069007600
      010049006E0070007500740020006F007000740069006F006E00730001004900
      6E006D00610074006E0069006E006700730061006C007400650072006E006100
      74006900760001000D000A006300640073005F00500072006F00700073004C00
      65006E00670074006800470072006F00750070004E006F002E004F0072006900
      670069006E0001004C0065006E00670074006800470072006F00750070004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4C0065006E006700740068004F007000740069006F006E002E004F0072006900
      670069006E0001004C0065006E006700740068004F007000740069006F006E00
      01000100010001000D000A006300640073005F00500072006F00700073004C00
      490050004E006F002E004F0072006900670069006E0001004C00490050004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      4E00650077004900740065006D0052006F0077002E004F007200690067006900
      6E0001004E00650077004900740065006D0052006F0077000100010001000100
      0D000A006300640073005F00500072006F00700073004F0077006E0065007200
      4E006F002E004F0072006900670069006E0001004F0077006E00650072004E00
      6F0001000100010001000D000A006300640073005F00500072006F0070007300
      5000490050004E006F002E004F0072006900670069006E000100500049005000
      4E006F0001000100010001000D000A006300640073005F00500072006F007000
      7300500072006F00640075006300650072004E006F002E004F00720069006700
      69006E000100500072006F00640075006300650072004E006F00010001000100
      01000D000A006300640073005F00500072006F00700073005200650067004400
      6100740065002E004F0072006900670069006E00010052006500670044006100
      7400650001000100010001000D000A006300640073005F00500072006F007000
      730052006500670050006F0069006E0074004E006F002E004F00720069006700
      69006E00010052006500670050006F0069006E0074004E006F00010001000100
      01000D000A006300640073005F00500072006F0070007300520075006E004E00
      6F002E004F0072006900670069006E000100520075006E004E006F0001004B00
      F60072004E007200010001004B00F60072004E00720001000D000A0063006400
      73005F00500072006F007000730053007500700070006C006900650072004300
      6F00640065002E004F0072006900670069006E00010053007500700070006C00
      69006500720043006F006400650001004C00650076006500720061006E007400
      F600720073006B006F006400010053007500700070006C006900650072006300
      6F006400650001004C00650076006500720061006E007400F600720073006B00
      6F00640001000D000A006300640073005F00500072006F007000730055007300
      65007200490044002E004F0072006900670069006E0001005500730065007200
      4900440001000100010001000D000A006300640073005F00500072006F007000
      73005600650072006B004E006F002E004F0072006900670069006E0001005600
      650072006B004E006F0001000100010001000D000A006300640073005F005200
      6500670050006F0069006E007400500072006F00640075006300740069006F00
      6E0055006E00690074004E0061006D0065002E004F0072006900670069006E00
      0100500072006F00640075006300740069006F006E0055006E00690074004E00
      61006D00650001000100010001000D000A006300640073005F00520065006700
      50006F0069006E00740052006500670069007300740072006100740069006F00
      6E0050006F0069006E0074004E006F002E004F0072006900670069006E000100
      52006500670069007300740072006100740069006F006E0050006F0069006E00
      74004E006F0001000100010001000D000A006300640073005F0053004F005200
      61007700610041004D0031002E004F0072006900670069006E00010061004100
      4D00310001000100010001000D000A006300640073005F0053004F0052006100
      7700410042002E004F0072006900670069006E00010041004200010001004100
      5700010001000D000A006300640073005F0053004F0052006100770041004C00
      4D004D002E004F0072006900670069006E00010041004C004D004D0001000100
      010001000D000A006300640073005F0053004F0052006100770041004D003100
      2E004F0072006900670069006E00010041004D00310001000100010001000D00
      0A006300640073005F0053004F0052006100770041004D0033002E004F007200
      6900670069006E00010041004D00330001000100010001000D000A0063006400
      73005F0053004F0052006100770041006E00740061006C004200690074006100
      7200550074002E004F0072006900670069006E00010041006E00740061006C00
      420069007400610072005500740001000100010001000D000A00630064007300
      5F0053004F0052006100770041006E00740061006C004B006100700053006E00
      6900740074002E004F0072006900670069006E00010041006E00740061006C00
      4B006100700053006E0069007400740001000100010001000D000A0063006400
      73005F0053004F0052006100770041006E00740061006C004C0061006D006500
      6C006C0065007200550074002E004F0072006900670069006E00010041006E00
      740061006C004C0061006D0065006C006C006500720055007400010001000100
      01000D000A006300640073005F0053004F005200610077006100500063007300
      2E004F0072006900670069006E00010061005000630073000100010001000100
      0D000A006300640073005F0053004F00520061007700410054002E004F007200
      6900670069006E0001005B00410054005D0001000100010001000D000A006300
      640073005F0053004F005200610077004100760067004C0065006E0067007400
      68002E004F0072006900670069006E0001004100760067004C0065006E006700
      7400680001004D006500640065006C006C00E4006E0067006400010001004D00
      6500640065006C006C00E4006E006700640001000D000A006300640073005F00
      53004F0052006100770042006F006F006B006500640041004C004D004D002E00
      4F0072006900670069006E00010042006F006F006B006500640041004C004D00
      4D0001000100010001000D000A006300640073005F0053004F00520061007700
      42006F006F006B006500640041004D0033002E004F0072006900670069006E00
      010042006F006F006B006500640041004D00330001000100010001000D000A00
      6300640073005F0053004F005200610077004300720065006100740065006400
      55007300650072002E004F0072006900670069006E0001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F0053004F0052006100770044006100740065004300720065006100
      7400650064002E004F0072006900670069006E00010044006100740065004300
      72006500610074006500640001000100010001000D000A006300640073005F00
      53004F005200610077004500780063006C00750064006500460072006F006D00
      54006F00740061006C002E004F0072006900670069006E000100450078006300
      6C00750064006500460072006F006D0054006F00740061006C00010001000100
      01000D000A006300640073005F0053004F005200610077004700720061006400
      65004E006F002E004F0072006900670069006E00010047007200610064006500
      4E006F0001000100010001000D000A006300640073005F0053004F0052006100
      77004B006100730073006100740069006F006E0041004D0031002E004F007200
      6900670069006E0001004B006100730073006100740069006F006E0041004D00
      310001000100010001000D000A006300640073005F0053004F00520061007700
      4B006100730073006100740069006F006E0041004D0033002E004F0072006900
      670069006E0001004B006100730073006100740069006F006E0041004D003300
      01000100010001000D000A006300640073005F0053004F005200610077004B00
      6100730073006100740069006F006E0053007400790063006B002E004F007200
      6900670069006E0001004B006100730073006100740069006F006E0053007400
      790063006B0001000100010001000D000A006300640073005F0053004F005200
      610077004C0065006E0067007400680044006500730063007200690070007400
      69006F006E002E004F0072006900670069006E0001004C0065006E0067007400
      68004400650073006300720069007000740069006F006E000100010001000100
      0D000A006300640073005F0053004F005200610077004C0065006E0067007400
      680053007000650063002E004F0072006900670069006E0001004C0065006E00
      670074006800530070006500630001000100010001000D000A00630064007300
      5F0053004F005200610077004D00610069006E005200610077004D0074007200
      6C002E004F0072006900670069006E0001004D00610069006E00520061007700
      4D00740072006C0001000100010001000D000A006300640073005F0053004F00
      5200610077004D00430043006C006100730073004E006F002E004F0072006900
      670069006E0001004D00430043006C006100730073004E006F00010001000100
      01000D000A006300640073005F0053004F005200610077004D006F0064006900
      660069006500640055007300650072002E004F0072006900670069006E000100
      4D006F0064006900660069006500640055007300650072000100C4006E006400
      72006100640020006100760001000100C4006E00640072006100640020006100
      760001000D000A006300640073005F0053004F005200610077004E0042002E00
      4F0072006900670069006E0001004E004200010001004E005700010001000D00
      0A006300640073005F0053004F005200610077004E004D0033002E004F007200
      6900670069006E0001004E004D003300010001004E004D003300010001000D00
      0A006300640073005F0053004F005200610077004E0054002E004F0072006900
      670069006E0001004E005400010001004E005400010001000D000A0063006400
      73005F0053004F005200610077005000430053002E004F007200690067006900
      6E00010050004300530001000100010001000D000A006300640073005F005300
      4F00520061007700500065007200630065006E0074005000630073004F006600
      54006F00740061006C002E004F0072006900670069006E000100500065007200
      630065006E0074005000630073004F00660054006F00740061006C0001000100
      010001000D000A006300640073005F0053004F0052006100770050006C006100
      6E006E006500640041004D0031002E004F0072006900670069006E0001005000
      6C0061006E006E006500640041004D00310001000100010001000D000A006300
      640073005F0053004F0052006100770050006C0061006E006E00650064004100
      4D0033002E004F0072006900670069006E00010050006C0061006E006E006500
      640041004D00330001000100010001000D000A006300640073005F0053004F00
      52006100770050006C0061006E006E00650064005000630073002E004F007200
      6900670069006E00010050006C0061006E006E00650064005000630073000100
      0100010001000D000A006300640073005F0053004F0052006100770050007200
      6900630065005000650072004E004D0033002E004F0072006900670069006E00
      0100500072006900630065005000650072004E004D0033000100010001000100
      0D000A006300640073005F0053004F00520061007700500072006F0064007500
      63007400430061007400650067006F00720079004E006F002E004F0072006900
      670069006E000100500072006F00640075006300740043006100740065006700
      6F00720079004E006F0001000100010001000D000A006300640073005F005300
      4F00520061007700500072006F0064007500630074004C0065006E0067007400
      68004E006F002E004F0072006900670069006E000100500072006F0064007500
      630074004C0065006E006700740068004E006F0001000100010001000D000A00
      6300640073005F0053004F00520061007700500072006F006400750063007400
      4E006F002E004F0072006900670069006E000100500072006F00640075006300
      74004E006F0001000100010001000D000A006300640073005F0053004F005200
      61007700500072006F00640075006B0074002E004F0072006900670069006E00
      0100500072006F00640075006B00740001000100500072006F00640075006300
      7400010001000D000A006300640073005F0053004F0052006100770050007200
      6F006700720061006D004E006F002E004F0072006900670069006E0001005000
      72006F006700720061006D004E006F0001000100010001000D000A0063006400
      73005F0053004F005200610077005200610077004D00740072006C004E006F00
      2E004F0072006900670069006E0001005200610077004D00740072006C004E00
      6F0001000100010001000D000A006300640073005F0053004F00520061007700
      5200650061006C004C0050004D002E004F0072006900670069006E0001005200
      650061006C004C0050004D0001000100010001000D000A006300640073005F00
      53004F0052006100770053006F007200740069006E0067004F00720064006500
      72004E006F002E004F0072006900670069006E00010053006F00720074006900
      6E0067004F0072006400650072004E006F0001000100010001000D000A006300
      640073005F0053004F0052006100770053007000650063006900650073004E00
      6F002E004F0072006900670069006E0001005300700065006300690065007300
      4E006F0001000100010001000D000A006300640073005F0053004F0052006100
      770053007500720066006100630069006E0067004E006F002E004F0072006900
      670069006E00010053007500720066006100630069006E0067004E006F000100
      0100010001000D000A006300640073005F0053004F0052006100770054007200
      69006D0041004D0031002E004F0072006900670069006E000100540072006900
      6D0041004D00310001000100010001000D000A006300640073005F0053004F00
      5200610077005400720069006D0041004D0033002E004F007200690067006900
      6E0001005400720069006D0041004D00330001000100010001000D000A006300
      640073005F0053004F00520061007700550072006C0061006700670073005000
      72006F00630065006E0074002E004F0072006900670069006E00010055007200
      6C006100670067007300500072006F00630065006E0074000100010001000100
      0D000A006300640073005F0053004F0052006100770055007400660061006C00
      6C002E004F0072006900670069006E00010055007400660061006C006C000100
      01004F007500740063006F006D006500010001000D000A006300640073005F00
      53006F0072004F007200640052006F00770041004C004D004D002E004F007200
      6900670069006E00010041004C004D004D0001000100010001000D000A006300
      640073005F0053006F0072004F007200640052006F007700490044002E004F00
      72006900670069006E0001004900440001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F0077004C004F004E0052002E00
      4F0072006900670069006E0001004C004F004E00520001000100010001000D00
      0A006300640073005F0053006F0072004F007200640052006F0077004E004D00
      33002E004F0072006900670069006E0001004E004D003300010001004E004D00
      3300010001000D000A006300640073005F0053006F0072004F00720064005200
      6F007700500072006F00640041004D0031002E004F0072006900670069006E00
      0100500072006F00640041004D00310001000100010001000D000A0063006400
      73005F0053006F0072004F007200640052006F007700500072006F0064004100
      4D0033002E004F0072006900670069006E000100500072006F00640041004D00
      330001000100010001000D000A006300640073005F0053006F0072004F007200
      640052006F007700500072006F0064005000430053002E004F00720069006700
      69006E000100500072006F00640050004300530001000100010001000D000A00
      6300640073005F0053006F0072004F007200640052006F007700500072006F00
      640050004B0054002E004F0072006900670069006E000100500072006F006400
      50004B00540001000100010001000D000A006300640073005F0053006F007200
      4F007200640052006F007700700072006F00640075006B0074002E004F007200
      6900670069006E000100700072006F00640075006B0074000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      69007300740042006F006F006B006500640041004D0031002E004F0072006900
      670069006E00010042006F006F006B006500640041004D003100010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740042006F006F006B00650064004E004D0033002E004F007200
      6900670069006E00010042006F006F006B00650064004E004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740042006F006F006B0069006E0067004E006F002E004F00
      72006900670069006E00010042006F006F006B0069006E0067004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C0069007300740043006F006D006D0065006E00740073002E004F00
      72006900670069006E00010043006F006D006D0065006E007400730001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074004400750072006100740069006F006E002E004F007200
      6900670069006E0001004400750072006100740069006F006E00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004600650065006400530070006500650064002E004F007200
      6900670069006E00010046006500650064005300700065006500640001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C00690073007400460069006E006900730068002E004F00720069006700
      69006E000100460069006E0069007300680001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4600690078006500640044006100740065002E004F0072006900670069006E00
      010046006900780065006400440061007400650001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74004600720064006900670076006100720061002E004F007200690067006900
      6E0001005B004600E400720064006900670076006100720061005D0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C0069007300740047004100520045002E004F0072006900670069006E00
      01005B00C40047004100520045005D0001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074004900
      44002E004F0072006900670069006E0001004900440001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004B0075006E0064002E004F0072006900670069006E0001004B007500
      6E0064000100010043007500730074006F006D0065007200010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74004C006100620065006C0043006F006C006F0072002E004F00720069006700
      69006E0001004C006100620065006C0043006F006C006F007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C006900730074004C004100470045005200470052005500500050002E004F00
      72006900670069006E0001004C00410047004500520047005200550050005000
      01000100530054004F0043004B002000470052004F0055005000010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004C004100470045005200530054004C004C0045002E004F0072006900
      670069006E0001005B004C00410047004500520053005400C4004C004C004500
      5D0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C006900730074004C00650067006F002E004F0072006900
      670069006E0001004C00650067006F000100010043006F006E00740072006100
      63007400200077006F0072006B00010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004C00490050004E00
      6F002E004F0072006900670069006E0001004C00490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074004C004F004E0052002E004F0072006900670069006E00
      01004C004F004E00520001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074004C004F0053002E00
      4F0072006900670069006E0001004C004F00530001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74004D00430043006C006100730073004E006F002E004F007200690067006900
      6E0001004D00430043006C006100730073004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074004D006F007600650054006F004C00490050004E006F002E004F007200
      6900670069006E0001004D006F007600650054006F004C00490050004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C006900730074004E004D00330050006C0061006E0046006100
      72006400690067002E004F0072006900670069006E0001004E004D0033005000
      6C0061006E0046006100720064006900670001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      4F007200670059006500610072005700650065006B002E004F00720069006700
      69006E0001004F007200670059006500610072005700650065006B0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074004F0077006E00650072004E006F002E004F0072006900
      670069006E0001004F0077006E00650072004E006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074005000490050004E006F002E004F0072006900670069006E0001005000
      490050004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C0069007300740050006C0061006E006E00
      65006400500072006F00640075006300740069006F006E00540069006D006500
      2E004F0072006900670069006E00010050006C0061006E006E00650064005000
      72006F00640075006300740069006F006E00540069006D006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740050006C0061006E006E006500640057006F0072006B006900
      6E006700540069006D0065002E004F0072006900670069006E00010050006C00
      61006E006E006500640057006F0072006B0069006E006700540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C0069007300740050006F00730074006E0069006E0067007300
      7400690064002E004F0072006900670069006E00010050006F00730074006E00
      69006E006700730074006900640001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740050007200
      6500430061006C00630045006600660069006300690065006E00630079004600
      6100630074006F0072002E004F0072006900670069006E000100500072006500
      430061006C00630045006600660069006300690065006E006300790046006100
      630074006F00720001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074005000720069006F004E00
      6F002E004F0072006900670069006E0001005000720069006F004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C00690073007400500052004F00440045004E004800450054002E00
      4F0072006900670069006E000100500052004F00440045004E00480045005400
      01000100500052004F004400200055004E0049005400010001000D000A006300
      640073005F0053006F00720074004F0072006400650072004C00690073007400
      500052004F0044005500430045004E0054002E004F0072006900670069006E00
      0100500052004F0044005500430045004E00540001000100500052004F004400
      5500430045005200010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072004C00690073007400500072006F006700720061006D00
      4E006F002E004F0072006900670069006E000100500072006F00670072006100
      6D004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074005200650061006C0045006E00
      6400540069006D0065002E004F0072006900670069006E000100520065006100
      6C0045006E006400540069006D00650001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005200
      650061006C00500072006F00640075006300740069006F006E00540069006D00
      65002E004F0072006900670069006E0001005200650061006C00500072006F00
      640075006300740069006F006E00540069006D00650001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      730074005200650061006C0053007400610072007400540069006D0065002E00
      4F0072006900670069006E0001005200650061006C0053007400610072007400
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072004C006900730074005200650073006F007500
      720063006500490044002E004F0072006900670069006E000100520065007300
      6F0075007200630065004900440001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072004C0069007300740052007600
      6100720061002E004F0072006900670069006E0001005B005200E50076006100
      720061005D0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072004C006900730074007300730070004E006F002E00
      4F0072006900670069006E0001007300730070004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072004C00
      690073007400530074006100720074002E004F0072006900670069006E000100
      5300740061007200740001000100530074006100720074007300010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      73007400530074006F007000540069006D0065002E004F007200690067006900
      6E000100530074006F007000540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      740053007500720066006100630069006E00670042006B00670043006F006C00
      6F0072002E004F0072006900670069006E000100530075007200660061006300
      69006E00670042006B00670043006F006C006F00720001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      7300740053007500720066006100630069006E00670054006500780074004300
      6F006C006F0072002E004F0072006900670069006E0001005300750072006600
      6100630069006E006700540065007800740043006F006C006F00720001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72004C006900730074005400610073006B005300740061007400750073004600
      690065006C0064002E004F0072006900670069006E0001005400610073006B00
      5300740061007400750073004600690065006C00640001000100010001000D00
      0A006300640073005F0053006F00720074004F0072006400650072004C006900
      73007400540065006D0070006C006100740065002E004F007200690067006900
      6E000100540065006D0070006C0061007400650001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      7400540065006D0070006C006100740065004E0061006D0065002E004F007200
      6900670069006E000100540065006D0070006C006100740065004E0061006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072004C00690073007400540065006D0070006C00610074006500
      55007300650072002E004F0072006900670069006E000100540065006D007000
      6C00610074006500550073006500720001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072004C006900730074005400
      7900700065004F006600520075006E004E006F002E004F007200690067006900
      6E00010054007900700065004F006600520075006E004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      4C0069007300740055007400660061006C006C002E004F007200690067006900
      6E00010055007400660061006C006C00010001004F007500740063006F006D00
      6500010001000D000A006300640073005F0053006F00720074004F0072006400
      650072004C006900730074005700650065006B004E006F002E004F0072006900
      670069006E0001005700650065006B004E006F0001000100010001000D000A00
      6300640073005F0053006F00720074004F0072006400650072004C0069007300
      74005600650072006B004E006F002E004F0072006900670069006E0001005600
      650072006B004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F0072006400650072004C006900730074005900650061007200
      4E006F002E004F0072006900670069006E00010059006500610072004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072004C0069007300740059006500610072005700650065006B002E00
      4F0072006900670069006E00010059006500610072005700650065006B000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730041006E00730076006100720069006700530061006C00
      6A006100720065004E006F002E004F0072006900670069006E00010041006E00
      730076006100720069006700530061006C006A006100720065004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730041006E00740061006C00420069007400610072005500
      74002E004F0072006900670069006E00010041006E00740061006C0042006900
      7400610072005500740001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730041006E00740061006C00
      4B006100700053006E006900740074002E004F0072006900670069006E000100
      41006E00740061006C004B006100700053006E00690074007400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300410076006700500072006F006400750063007400500072006900
      6300650041004D0031002E004F0072006900670069006E000100410076006700
      500072006F0064007500630074005000720069006300650041004D0031000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200520065007300410076006700500072006F0064007500630074005000
      720069006300650041004D0033002E004F0072006900670069006E0001004100
      76006700500072006F0064007500630074005000720069006300650041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300410076006700500072006F00640075006300
      7400500072006900630065004E004D0033002E004F0072006900670069006E00
      0100410076006700500072006F00640075006300740050007200690063006500
      4E004D00330001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004100760067005200610077004D00
      740072006C005000720069006300650041004D0031002E004F00720069006700
      69006E0001004100760067005200610077004D00740072006C00500072006900
      6300650041004D00310001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730041007600670052006100
      77004D00740072006C005000720069006300650041004D0033002E004F007200
      6900670069006E0001004100760067005200610077004D00740072006C005000
      720069006300650041004D00330001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300410076006700
      5200610077004D00740072006C00500072006900630065004E004D0033002E00
      4F0072006900670069006E0001004100760067005200610077004D0074007200
      6C00500072006900630065004E004D00330001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004100
      76006B006100700041004D0033002E004F0072006900670069006E0001004100
      76006B006100700041004D00330001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300410076006B00
      610070004C0050004D002E004F0072006900670069006E000100410076006B00
      610070004C0050004D0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200520065007300410076006B0061007000
      560061006C00750065002E004F0072006900670069006E000100410076006B00
      61007000560061006C007500650001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300430068006900
      700073004D00330053006F006C00690064002E004F0072006900670069006E00
      0100430068006900700073004D00330053006F006C0069006400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730043006800690070007300560061006C00750065002E004F007200
      6900670069006E00010043006800690070007300560061006C00750065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730043006F006D006D0065006E00740073002E004F007200
      6900670069006E00010043006F006D006D0065006E0074007300010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730043006F007300740050006500720041004D0031002E004F007200
      6900670069006E00010043006F007300740050006500720041004D0031000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730043006F007300740050006500720041004D0033002E00
      4F0072006900670069006E00010043006F007300740050006500720041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730043006F00730074005000650072004E004D00
      33002E004F0072006900670069006E00010043006F0073007400500065007200
      4E004D00330001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073004300720065006100740065006400
      55007300650072002E004F0072006900670069006E0001004300720065006100
      7400650064005500730065007200010053006B00610070006100640020006100
      76000100010053006B00610070006100640020006100760001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073004400
      61007400650043007200650061007400650064002E004F007200690067006900
      6E00010044006100740065004300720065006100740065006400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730045006600660069006300690065006E0063007900460061006300
      74006F0072002E004F0072006900670069006E00010045006600660069006300
      690065006E006300790046006100630074006F00720001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730045006600660069006300690065006E006300790046006100630074006F00
      720057004F00530074006F0070007000740069006D0065002E004F0072006900
      670069006E00010045006600660069006300690065006E006300790046006100
      630074006F00720057004F00530074006F0070007000740069006D0065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      6500720052006500730045006E006400540069006D0065002E004F0072006900
      670069006E00010045006E006400540069006D00650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73004600650065006400530070006500650064002E004F007200690067006900
      6E00010046006500650064005300700065006500640001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      730048007900760065006C0049006E0066006F002E004F007200690067006900
      6E00010048007900760065006C0049006E0066006F0001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73004B006100730073006100740069006F006E0041004D0033002E004F007200
      6900670069006E0001004B006100730073006100740069006F006E0041004D00
      330001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073004B006100730073006100740069006F006E00
      4C0050004D002E004F0072006900670069006E0001004B006100730073006100
      740069006F006E004C0050004D0001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072005200650073004B0061007300
      73006100740069006F006E0053007400790063006B002E004F00720069006700
      69006E0001004B006100730073006100740069006F006E005300740079006300
      6B0001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073004B006100730073006100740069006F006E00
      560061006C00750065002E004F0072006900670069006E0001004B0061007300
      73006100740069006F006E00560061006C007500650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720052006500
      73004C00650067006F002E004F0072006900670069006E0001004C0065006700
      6F000100010043006F006E0074007200610063007400200077006F0072006B00
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004C00650067006F0043006F00730074005000650072004100
      4D0033002E004F0072006900670069006E0001004C00650067006F0043006F00
      7300740050006500720041004D00330001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072005200650073004C006500
      6E0067007400680046006F0072006D00610074002E004F007200690067006900
      6E0001004C0065006E0067007400680046006F0072006D006100740001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073004C00490050004E006F002E004F0072006900670069006E00
      01004C00490050004E006F0001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073004D0061006E007500
      61006C00500072006F006400540069006D0065002E004F007200690067006900
      6E0001004D0061006E00750061006C00500072006F006400540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004D00430043006C006100730073004E006F002E00
      4F0072006900670069006E0001004D00430043006C006100730073004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073004D006F007600650054006F004C00490050004E00
      6F002E004F0072006900670069006E0001004D006F007600650054006F004C00
      490050004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073004E006F004F00660057006F00
      72006B006500720073002E004F0072006900670069006E0001004E006F004F00
      660057006F0072006B0065007200730001000100010001000D000A0063006400
      73005F0053006F00720074004F0072006400650072005200650073004E006F00
      4F00660057006F0072006B0065007200730050006F00730074006E0069006E00
      67002E004F0072006900670069006E0001004E006F004F00660057006F007200
      6B0065007200730050006F00730074006E0069006E0067000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073004F0077006E00650072004E006F002E004F0072006900670069006E00
      01004F0077006E00650072004E006F0001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730050006500
      7200630065006E0074005400720069006D006C006F00730073002E004F007200
      6900670069006E000100500065007200630065006E0074005400720069006D00
      6C006F007300730001000100010001000D000A006300640073005F0053006F00
      720074004F0072006400650072005200650073005000490050004E006F002E00
      4F0072006900670069006E0001005000490050004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730050006C0061006E006E0065006400500072006F006400750063007400
      69006F006E00540069006D0065002E004F0072006900670069006E0001005000
      6C0061006E006E0065006400500072006F00640075006300740069006F006E00
      540069006D00650001000100010001000D000A006300640073005F0053006F00
      720074004F00720064006500720052006500730050006F00730074006E006900
      6E00670073007400690064002E004F0072006900670069006E00010050006F00
      730074006E0069006E006700730074006900640001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      50006F0073007400540069006D00650048006F00750072002E004F0072006900
      670069006E00010050006F0073007400540069006D00650048006F0075007200
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300500072006500430061006C006300450066006600
      69006300690065006E006300790046006100630074006F0072002E004F007200
      6900670069006E000100500072006500430061006C0063004500660066006900
      6300690065006E006300790046006100630074006F0072000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073005000720069006E0074005200610077004D00740072006C0050006100
      720074002E004F0072006900670069006E0001005000720069006E0074005200
      610077004D00740072006C00500061007200740001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5000720069006F004E006F002E004F0072006900670069006E00010050007200
      69006F004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00640054006900
      6D00650048006F00750072002E004F0072006900670069006E00010050007200
      6F006400540069006D00650048006F007500720001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      500072006F00640075006300650072004E006F002E004F007200690067006900
      6E000100500072006F00640075006300650072004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300500072006F00640075006300740069006F006E0041004D0031002E00
      4F0072006900670069006E000100500072006F00640075006300740069006F00
      6E0041004D00310001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00640075006300
      740069006F006E0041004D0033002E004F0072006900670069006E0001005000
      72006F00640075006300740069006F006E0041004D0033000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      65007300500072006F00640075006300740069006F006E0043006F0073007400
      2E004F0072006900670069006E000100500072006F0064007500630074006900
      6F006E0043006F007300740001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300500072006F006400
      75006300740069006F006E004E004D0033002E004F0072006900670069006E00
      0100500072006F00640075006300740069006F006E004E004D00330001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300500072006F00640075006300740069006F006E0050006300
      73002E004F0072006900670069006E000100500072006F006400750063007400
      69006F006E0050006300730001000100010001000D000A006300640073005F00
      53006F00720074004F007200640065007200520065007300500072006F006400
      75006300740069006F006E0055006E00690074004E006F002E004F0072006900
      670069006E000100500072006F00640075006300740069006F006E0055006E00
      690074004E006F0001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300500072006F00640075006300
      740069006F006E00560061006C00750065002E004F0072006900670069006E00
      0100500072006F00640075006300740069006F006E00560061006C0075006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      640065007200520065007300500072006F006700720061006D004E006F002E00
      4F0072006900670069006E000100500072006F006700720061006D004E006F00
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200610077004C00490050004E006F002E004F00
      72006900670069006E0001005200610077004C00490050004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073005200610077004D00740072006C0041004D0031002E004F00
      72006900670069006E0001005200610077004D00740072006C0041004D003100
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200610077004D00740072006C0041004D003300
      2E004F0072006900670069006E0001005200610077004D00740072006C004100
      4D00330001000100010001000D000A006300640073005F0053006F0072007400
      4F0072006400650072005200650073005200610077004D00740072006C004300
      6F00730074002E004F0072006900670069006E0001005200610077004D007400
      72006C0043006F007300740001000100010001000D000A006300640073005F00
      53006F00720074004F0072006400650072005200650073005200610077004D00
      740072006C0043006F00730074005000650072004E004D00330049006E002E00
      4F0072006900670069006E0001005200610077004D00740072006C0043006F00
      730074005000650072004E004D00330049006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200610077004D00740072006C004E004D0033002E004F007200690067006900
      6E0001005200610077004D00740072006C004E004D0033000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073005200610077004D00740072006C005000630073002E004F0072006900
      670069006E0001005200610077004D00740072006C0050006300730001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      72005200650073005200610077005000490050004E006F002E004F0072006900
      670069006E0001005200610077005000490050004E006F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      650073005200650061006C0045006E006400540069006D0065002E004F007200
      6900670069006E0001005200650061006C0045006E006400540069006D006500
      01000100010001000D000A006300640073005F0053006F00720074004F007200
      6400650072005200650073005200650061006C004C0070006D004D0069006E00
      7500740065002E004F0072006900670069006E0001005200650061006C004C00
      70006D004D0069006E0075007400650001000100010001000D000A0063006400
      73005F0053006F00720074004F00720064006500720052006500730052006500
      61006C00500072006F00640075006300740069006F006E00540069006D006500
      2E004F0072006900670069006E0001005200650061006C00500072006F006400
      75006300740069006F006E00540069006D00650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5200650061006C0053007400610072007400540069006D0065002E004F007200
      6900670069006E0001005200650061006C005300740061007200740054006900
      6D00650001000100010001000D000A006300640073005F0053006F0072007400
      4F00720064006500720052006500730052006500730070006F006E0073006900
      62006C00650055007300650072002E004F0072006900670069006E0001005200
      6500730070006F006E007300690062006C006500550073006500720001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      720052006500730052006500730075006C00740041004F002E004F0072006900
      670069006E00010052006500730075006C00740041004F000100010001000100
      0D000A006300640073005F0053006F00720074004F0072006400650072005200
      6500730052006500730075006C00740041004F005000650072004E004D003300
      49006E002E004F0072006900670069006E00010052006500730075006C007400
      41004F005000650072004E004D00330049006E0001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      530061006C0061007200790043006F007300740050006500720048006F007500
      72002E004F0072006900670069006E000100530061006C006100720079004300
      6F007300740050006500720048006F007500720001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      53006100770064007500730074004D00330053006F006C00690064002E004F00
      72006900670069006E00010053006100770064007500730074004D0033005300
      6F006C006900640001000100010001000D000A006300640073005F0053006F00
      720074004F007200640065007200520065007300530061007700640075007300
      7400560061006C00750065002E004F0072006900670069006E00010053006100
      77006400750073007400560061006C007500650001000100010001000D000A00
      6300640073005F0053006F00720074004F007200640065007200520065007300
      5300650071004E006F002E004F0072006900670069006E000100530065007100
      4E006F0001000100010001000D000A006300640073005F0053006F0072007400
      4F007200640065007200520065007300530068006900660074004E006F002E00
      4F0072006900670069006E000100530068006900660074004E006F0001000100
      010001000D000A006300640073005F0053006F00720074004F00720064006500
      7200520065007300530069007A00650046006F0072006D00610074002E004F00
      72006900670069006E000100530069007A00650046006F0072006D0061007400
      01000100530069007A006500200066006F0072006D0061007400010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720073004100
      63007400750061006C00530074006100720074002E004F007200690067006900
      6E000100410063007400750061006C0053007400610072007400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      7300410063007400750061006C00460069006E006900730068002E004F007200
      6900670069006E000100410063007400750061006C00460069006E0069007300
      680001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072007300430061007000740069006F006E002E004F0072006900
      670069006E000100430061007000740069006F006E0001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720073004500
      760065006E00740054007900700065002E004F0072006900670069006E000100
      4500760065006E007400540079007000650001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300460069006E00
      6900730068002E004F0072006900670069006E000100460069006E0069007300
      680001000100010001000D000A006300640073005F0053006F00720074004F00
      72006400650072007300490044002E004F0072006900670069006E0001004900
      440001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720073004C006100620065006C0043006F006C006F0072002E00
      4F0072006900670069006E0001004C006100620065006C0043006F006C006F00
      720001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720073004C006F0063006100740069006F006E002E004F007200
      6900670069006E0001004C006F0063006100740069006F006E00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      73004D006500730073006100670065002E004F0072006900670069006E000100
      4D0065007300730061006700650001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720073004F007000740069006F00
      6E0073002E004F0072006900670069006E0001004F007000740069006F006E00
      730001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730050006100720065006E007400490044002E004F007200
      6900670069006E00010050006100720065006E00740049004400010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      730052006500630075007200720065006E006300650049006E00640065007800
      2E004F0072006900670069006E00010052006500630075007200720065006E00
      6300650049006E0064006500780001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200730052006500630075007200
      720065006E006300650049006E0066006F002E004F0072006900670069006E00
      010052006500630075007200720065006E006300650049006E0066006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072007300520065006D0069006E0064006500720044006100740065002E00
      4F0072006900670069006E000100520065006D0069006E006400650072004400
      61007400650001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072007300520065006D0069006E006400650072004D00
      69006E0075007400650073004200650066006F00720065005300740061007200
      74002E004F0072006900670069006E000100520065006D0069006E0064006500
      72004D0069006E0075007400650073004200650066006F007200650053007400
      61007200740001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072007300520065006D0069006E006400650072005200
      650073006F007500720063006500730044006100740061002E004F0072006900
      670069006E000100520065006D0069006E006400650072005200650073006F00
      75007200630065007300440061007400610001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300520065007300
      6F007500720063006500490044002E004F0072006900670069006E0001005200
      650073006F0075007200630065004900440001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300530074006100
      720074002E004F0072006900670069006E000100530074006100720074000100
      0100530074006100720074007300010001000D000A006300640073005F005300
      6F00720074004F0072006400650072007300530074006100740065002E004F00
      72006900670069006E0001005300740061007400650001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720073005400
      610073006B0043006F006D0070006C006500740065004600690065006C006400
      2E004F0072006900670069006E0001005400610073006B0043006F006D007000
      6C006500740065004600690065006C00640001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300540061007300
      6B0049006E006400650078004600690065006C0064002E004F00720069006700
      69006E0001005400610073006B0049006E006400650078004600690065006C00
      640001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720073005400610073006B004C0069006E006B00730046006900
      65006C0064002E004F0072006900670069006E0001005400610073006B004C00
      69006E006B0073004600690065006C00640001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300540061007300
      6B005300740061007400750073004600690065006C0064002E004F0072006900
      670069006E0001005400610073006B0053007400610074007500730046006900
      65006C00640001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720073004C004F004E006F002E004F00720069006700
      69006E0001004C004F004E006F0001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200730046006C00610073006800
      4600690065006C0064002E004F0072006900670069006E00010046006C006100
      730068004600690065006C00640001000100010001000D000A00630064007300
      5F0053006F00720074004F0072006400650072007300500072006F0064007500
      6300740069006F006E0055006E00690074004E006F002E004F00720069006700
      69006E000100500072006F00640075006300740069006F006E0055006E006900
      74004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720073005500730065007200490044002E004F007200
      6900670069006E00010055007300650072004900440001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720073004400
      750072006100740069006F006E002E004F0072006900670069006E0001004400
      750072006100740069006F006E0001000100010001000D000A00630064007300
      5F0053006F00720074004F00720064006500720073004E004D00330049006E00
      2E004F0072006900670069006E0001004E004D00330049006E00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      730059006500610072005700650065006B002E004F0072006900670069006E00
      010059006500610072005700650065006B0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072007300560065007200
      6B004E006F002E004F0072006900670069006E0001005600650072006B004E00
      6F0001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730042006F006F006B0069006E0067004E006F002E004F00
      72006900670069006E00010042006F006F006B0069006E0067004E006F000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      65007200730050006F00730074006E0069006E00670073007400690064002E00
      4F0072006900670069006E00010050006F00730074006E0069006E0067007300
      74006900640001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072007300500072006500430061006C00630045006600
      660069006300690065006E006300790046006100630074006F0072002E004F00
      72006900670069006E000100500072006500430061006C006300450066006600
      69006300690065006E006300790046006100630074006F007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      73004600650065006400530070006500650064002E004F007200690067006900
      6E00010046006500650064005300700065006500640001000100010001000D00
      0A006300640073005F0053006F00720074004F00720064006500720073005000
      6C0061006E006E0065006400500072006F00640075006300740069006F006E00
      540069006D0065002E004F0072006900670069006E00010050006C0061006E00
      6E0065006400500072006F00640075006300740069006F006E00540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730050006C0061006E006E006500640057006F0072006B00
      69006E006700540069006D0065002E004F0072006900670069006E0001005000
      6C0061006E006E006500640057006F0072006B0069006E006700540069006D00
      650001000100010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200730044006100740065004300720065006100740065006400
      2E004F0072006900670069006E00010044006100740065004300720065006100
      74006500640001000100010001000D000A006300640073005F0053006F007200
      74004F00720064006500720073004F0077006E00650072004E006F002E004F00
      72006900670069006E0001004F0077006E00650072004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      73005700650065006B004E006F002E004F0072006900670069006E0001005700
      650065006B004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F007200640065007200730059006500610072004E006F002E00
      4F0072006900670069006E00010059006500610072004E006F00010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      73005300650071004E006F002E004F0072006900670069006E00010053006500
      71004E006F0001000100010001000D000A0049006E0074006500670065007200
      4600690065006C00640034002E004F0072006900670069006E00010049004400
      01000100010001000D000A0053007400720069006E0067004600690065006C00
      640031002E004F0072006900670069006E000100430061007000740069006F00
      6E0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730053007400610072007400540069006D006500
      2E004F0072006900670069006E00010053007400610072007400540069006D00
      6500010053007400610072007400540069006400010001005300740061007200
      740054006900640001000D000A006300640073005F0053006F00720074004F00
      72006400650072005200650073005300740061007400750073002E004F007200
      6900670069006E00010053007400610074007500730001000100530074006100
      740075007300010001000D000A006300640073005F0053006F00720074004F00
      7200640065007200520065007300530074006F007000540069006D0065002E00
      4F0072006900670069006E000100530074006F007000540069006D0065000100
      0100010001000D000A006300640073005F0053006F00720074004F0072006400
      650072005200650073005700650065006B004E006F002E004F00720069006700
      69006E0001005700650065006B004E006F0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005900
      6500610072004E006F002E004F0072006900670069006E000100590065006100
      72004E006F0001000100010001000D000A006300640073005F0053006F007200
      74004F0072006400650072005200650073005900650061007200570065006500
      6B002E004F0072006900670069006E0001005900650061007200570065006500
      6B0001000100010001000D000A006300640073005F0053006F00720074004F00
      720064006500720052006500730054007900700065004F006600520075006E00
      4E006F002E004F0072006900670069006E00010054007900700065004F006600
      520075006E004E006F0001000100010001000D000A006300640073005F005300
      6F00720074004F00720064006500720052006500730054006F00740061006C00
      530061006C0061007200790043006F00730074002E004F007200690067006900
      6E00010054006F00740061006C00530061006C0061007200790043006F007300
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
      520065007300530074006F007000540069006D0065004E006F00740049006E00
      63006C002E004F0072006900670069006E000100530074006F00700054006900
      6D0065004E006F00740049006E0063006C0001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005400
      65006D0070006C006100740065002E004F0072006900670069006E0001005400
      65006D0070006C0061007400650001000100010001000D000A00630064007300
      5F0053006F00720074004F007200640065007200520065007300540065006D00
      70006C006100740065004E0061006D0065002E004F0072006900670069006E00
      0100540065006D0070006C006100740065004E0061006D006500010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      520065007300540065006D0070006C0061007400650055007300650072002E00
      4F0072006900670069006E000100540065006D0070006C006100740065005500
      73006500720001000100010001000D000A006300640073005F0053006F007200
      74004F007200640065007200520065007300530074006F007000540069006D00
      650048006F00750072002E004F0072006900670069006E000100530074006F00
      7000540069006D00650048006F007500720001000100010001000D000A006300
      640073005F0053006F00720074004F0072006400650072005200650073005300
      74006F007000540069006D0065004E006F00740049006E0063006C0048006F00
      750072002E004F0072006900670069006E000100530074006F00700054006900
      6D0065004E006F00740049006E0063006C0048006F0075007200010001000100
      01000D000A006300640073005F0053006F00720074004F007200640065007200
      52006500730053006F007200740069006E0067004F0072006400650072004E00
      6F002E004F0072006900670069006E000100A800A1003300400030006500D100
      1A0028002E003D000B0001000100010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00}
  end
end
