object dmsContact: TdmsContact
  Height = 778
  Width = 1112
  PixelsPerInch = 96
  object dsrcShippers: TDataSource
    DataSet = cds_Shippers
    Left = 32
    Top = 224
  end
  object dsrcOwners: TDataSource
    DataSet = cdsOwners
    Left = 240
    Top = 224
  end
  object dsrcProducers: TDataSource
    DataSet = cdsProducers
    Left = 336
    Top = 224
  end
  object dsrcCities: TDataSource
    DataSet = cdsCities
    Left = 816
    Top = 344
  end
  object dsrcAddressAndReference: TDataSource
    DataSet = cdsAddressAndReference
    Left = 944
    Top = 344
  end
  object dsCity: TDataSource
    DataSet = cdsCity
    Left = 752
    Top = 344
  end
  object ds_LocalShipper: TDataSource
    DataSet = cds_LocalShipper
    Left = 136
    Top = 224
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 688
    Top = 344
  end
  object ds_ProductionUnit: TDataSource
    DataSet = cds_ProductionUnit
    Left = 552
    Top = 224
  end
  object ds_RegPoints: TDataSource
    DataSet = cds_RegPoints
    Left = 440
    Top = 224
  end
  object ds_PkgNoSerie: TDataSource
    Left = 184
    Top = 72
  end
  object ds_Users: TDataSource
    DataSet = cds_Users
    Left = 408
    Top = 72
  end
  object ds_SalesGrp: TDataSource
    DataSet = cds_SalesGrp
    Left = 600
    Top = 72
  end
  object ds_SR: TDataSource
    DataSet = cds_SR
    Left = 688
    Top = 72
  end
  object ds_Market: TDataSource
    DataSet = cds_Market
    Left = 760
    Top = 72
  end
  object dsCurrency: TDataSource
    DataSet = cdsCurrency
    Left = 520
    Top = 488
  end
  object dsDelTerms: TDataSource
    DataSet = cdsDelTerms
    Left = 600
    Top = 488
  end
  object ds_volunit: TDataSource
    DataSet = cds_volunit
    Left = 832
    Top = 72
  end
  object sp_ClientCode: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_GetClientCode_CSD'
    Left = 48
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
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_ClientCodeClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sq_GetLanguageID: TFDQuery
    Connection = dmsConnector.FDConnection1
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    SQL.Strings = (
      'SELECT distinct'
      'LanguageCode'
      'FROM dbo.ClientPreference'
      'WHERE ClientNo = :ClientNo')
    Left = 48
    Top = 72
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLanguageIDLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
  end
  object cds_PkgNoSerie: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.PkgNoSerie')
    Left = 184
    Top = 16
    object cds_PkgNoSerieClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PkgNoSerieCurrentPkgNo: TIntegerField
      FieldName = 'CurrentPkgNo'
      Origin = 'CurrentPkgNo'
      Required = True
    end
    object cds_PkgNoSerieHighestPkgNo: TIntegerField
      FieldName = 'HighestPkgNo'
      Origin = 'HighestPkgNo'
      Required = True
    end
  end
  object sq_GetUserName: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select RTRIM(LastName)+'#39', '#39'+FirstName as FullName'
      'from Users'
      'where'
      'UserID = :UserID'
      '')
    Left = 312
    Top = 16
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetUserNameFullName: TStringField
      FieldName = 'FullName'
      Origin = 'FullName'
      ReadOnly = True
      Size = 32
    end
  end
  object sq_IsLego: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select R.RoleType'
      'FROM   dbo.ClientRole    R'
      'inner join dbo.Client C on C.ClientNo = R.ClientNo'
      'WHERE  R.ClientNo = :ClientNo'
      'AND  R.RoleType = 6'
      'AND ((C.IntVerk is null) or (C.IntVerk <> 1))')
    Left = 312
    Top = 72
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsLegoRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_Users: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select UserID,'
      'INITIALS+'#39' '#39'+RTrim(LastName) +'#39', '#39'+RTRIM(FirstName) AS Namn'
      'FROM dbo.Users')
    Left = 408
    Top = 16
    object cds_UsersUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_UsersNamn: TStringField
      FieldName = 'Namn'
      Origin = 'Namn'
      ReadOnly = True
      Size = 36
    end
  end
  object cds_ClientToLL: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'select Distinct CL.ClientName, CL.ClientNo from dbo.Client_Loadi' +
        'ngLocation LL'
      'Inner Join city C on c.cityno = LL.PhyInvPointNameNo'
      'Inner Join client CL on cl.clientno = ll.clientno'
      'Inner Join ClientRole CR ON CR.clientno = cl.clientno'
      'WHERE PhyInvPointNameNo = :LoadingLocationNo'
      'AND (CR.RoleType = 6 OR CR.RoleType = 9)'
      'AND CL.ClientNo <> 741')
    Left = 496
    Top = 16
    ParamData = <
      item
        Name = 'LOADINGLOCATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_ClientToLLClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_ClientToLLClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_SalesGrp: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.SalesmanGroup')
    Left = 600
    Top = 16
    object cds_SalesGrpSalesGroupNo: TIntegerField
      FieldName = 'SalesGroupNo'
      Origin = 'SalesGroupNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SalesGrpSalesGroupName: TStringField
      FieldName = 'SalesGroupName'
      Origin = 'SalesGroupName'
      Size = 15
    end
  end
  object cds_SR: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.ClientName, C.ClientNo'
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  R.RoleType = 7'
      'AND C.OwnedBySalesRegionNo = :SalesRegionNo'
      'Order by C.clientName')
    Left = 688
    Top = 16
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_SRClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_Market: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct * '
      'FROM   dbo.MarketRegion'
      'Order by MarketRegionName')
    Left = 760
    Top = 16
    object cds_MarketMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_MarketMarketRegionName: TStringField
      FieldName = 'MarketRegionName'
      Origin = 'MarketRegionName'
      FixedChar = True
      Size = 10
    end
    object cds_MarketSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_MarketDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_MarketCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_MarketModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
  end
  object cds_volunit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.UnitName')
    Left = 832
    Top = 16
    object cds_volunitVolumeUnit_No: TIntegerField
      FieldName = 'VolumeUnit_No'
      Origin = 'VolumeUnit_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_volunitVolumeUnitName: TStringField
      FieldName = 'VolumeUnitName'
      Origin = 'VolumeUnitName'
      Required = True
      Size = 10
    end
    object cds_volunitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_volunitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_volunitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_volunitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object cdsPriceUnit: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.PackUnit')
    Left = 904
    Top = 16
    object cdsPriceUnitTemplateUnitNo: TIntegerField
      FieldName = 'TemplateUnitNo'
      Origin = 'TemplateUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPriceUnitTemplateUnitName: TStringField
      FieldName = 'TemplateUnitName'
      Origin = 'TemplateUnitName'
      Required = True
    end
  end
  object cds_Shippers: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Shippers'
    Left = 32
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cds_ShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_ShippersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_LocalShipper: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Local_Shippers'
    Left = 136
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cds_LocalShipperClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_LocalShipperClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cdsOwners: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Owners'
    Left = 240
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
  end
  object cdsProducers: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Producers'
    Left = 336
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cdsProducersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cdsProducersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object cds_RegPoints: TFDQuery
    AfterInsert = cds_RegPointsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT RegPointNo, RegPointName, CreatedUser, ModifiedUser, Date' +
        'Created,'
      'SequenceNo'
      'FROM dbo.RegistrationPoint')
    Left = 440
    Top = 176
    object cds_RegPointsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_RegPointsRegPointName: TStringField
      FieldName = 'RegPointName'
      Origin = 'RegPointName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cds_RegPointsCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_RegPointsModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_RegPointsDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_RegPointsSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_ProductionUnit: TFDQuery
    AfterInsert = cds_ProductionUnitAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select *'
      'FROM dbo.ProductionUnit')
    Left = 552
    Top = 176
    object cds_ProductionUnitProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ProductionUnitProductionUnitName: TStringField
      FieldName = 'ProductionUnitName'
      Origin = 'ProductionUnitName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_ProductionUnitClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitLogicalInventoryPointNo: TIntegerField
      FieldName = 'LogicalInventoryPointNo'
      Origin = 'LogicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitRegistrationPointNo: TIntegerField
      FieldName = 'RegistrationPointNo'
      Origin = 'RegistrationPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitOnSticks: TIntegerField
      FieldName = 'OnSticks'
      Origin = 'OnSticks'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitSurfacingNo: TIntegerField
      FieldName = 'SurfacingNo'
      Origin = 'SurfacingNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitDIM_DIV: TIntegerField
      FieldName = 'DIM_DIV'
      Origin = 'DIM_DIV'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
      Origin = 'TerminalNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitPhysicalInventoryPointNo: TIntegerField
      FieldName = 'PhysicalInventoryPointNo'
      Origin = 'PhysicalInventoryPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitLIPGroupNo: TIntegerField
      FieldName = 'LIPGroupNo'
      Origin = 'LIPGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitCost: TFloatField
      FieldName = 'Cost'
      Origin = 'Cost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitCapitalCost: TFloatField
      FieldName = 'CapitalCost'
      Origin = 'CapitalCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitOverheadCost: TFloatField
      FieldName = 'OverheadCost'
      Origin = 'OverheadCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitSalaryCost: TFloatField
      FieldName = 'SalaryCost'
      Origin = 'SalaryCost'
      ProviderFlags = [pfInUpdate]
    end
    object cds_ProductionUnitLegoCostPerAM3: TFMTBCDField
      FieldName = 'LegoCostPerAM3'
      Precision = 18
      Size = 1
    end
    object cds_ProductionUnitProductionUnitCode: TStringField
      FieldName = 'ProductionUnitCode'
      Origin = 'ProductionUnitCode'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cds_ProductionUnitPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_ProductionUnitStoppOrsakFil: TStringField
      FieldName = 'StoppOrsakFil'
      Origin = 'StoppOrsakFil'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_ProductionUnitStoppTidFil: TStringField
      FieldName = 'StoppTidFil'
      Origin = 'StoppTidFil'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_ProductionUnitRegPoint: TStringField
      FieldKind = fkLookup
      FieldName = 'RegPoint'
      LookupDataSet = cds_RegPoints
      LookupKeyFields = 'RegPointNo'
      LookupResultField = 'RegPointName'
      KeyFields = 'RegistrationPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
  end
  object sq_IsIntVerk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.IntVerk'
      'from dbo.client C'
      'WHERE C.ClientNo = :ClientNo')
    Left = 824
    Top = 432
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsIntVerkIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
  end
  object cds_Verk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length'
      ''
      'FROM   dbo.Client        C'
      '       inner join dbo.ClientRole    R on R.ClientNo = C.ClientNo'
      ''
      'WHERE  R.RoleType = 9'
      '-- AND (C.IntVerk = 1 OR C.ClientNo = 741 or C.ClientNo = 3682)'
      'AND C.OwnedBySalesRegionNo = :SalesRegionNo'
      'Order by C.clientName')
    Left = 688
    Top = 296
    ParamData = <
      item
        Name = 'SALESREGIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
  object cdsCity: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select * from dbo.city')
    Left = 752
    Top = 296
  end
  object cdsCities: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'dbo.vis_Loading'
    Left = 816
    Top = 296
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
        Name = '@SalesRegionNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsCitiesCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      Required = True
    end
    object cdsCitiesCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
  end
  object cdsAddressAndReference: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_AddressAndReference_CSD'
    Left = 944
    Top = 296
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
        Name = '@LO1'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsAddressAndReferenceAddress: TStringField
      FieldName = 'Address'
      Origin = 'Address'
      Size = 80
    end
    object cdsAddressAndReferenceDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      Size = 50
    end
    object cdsAddressAndReferenceReference: TStringField
      FieldName = 'Reference'
      Origin = 'Reference'
      Size = 30
    end
  end
  object sq_GetPIPByClientNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct PIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.PhysicalInventoryPoint PIP'
      ' WHERE PIP.OwnerNo = 741'
      'AND PIP.PhyInvPointNameNo in (Select PhyInvPointNameNo'
      'FROM dbo.PhysicalInventoryPoint PIP2'
      'WHERE OwnerNo = :OwnerNo)')
    Left = 64
    Top = 432
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPIPByClientNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
  end
  object sq_IsClientRoleType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ClientNo from '
      'dbo.ClientRole'
      'WHERE ClientNo =:ClientNo'
      'AND RoleType = :RoleType')
    Left = 64
    Top = 488
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsClientRoleTypeClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_UserIssueReport: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete from dbo.UserIssueReport '
      'where'
      ' TRP_BREV_UserID =:UserID'
      'AND InternalInvoiceNo = :InternalInvoiceNo'
      ''
      
        'Insert into dbo.UserIssueReport   (TRP_BREV_UserID, InternalInvo' +
        'iceNo)'
      'Values (:UserID,:InternalInvoiceNo)')
    Left = 64
    Top = 552
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_GetSR: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.SalesRegionNo'
      'from dbo.client C'
      'Where C.ClientNo = :ClientNo')
    Left = 64
    Top = 600
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetSRSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object sq_GetSuppCodeByPktLevKod: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.PkgPrefix from dbo.PkgPrefix C'
      'Where C.ProductionUnitCode = :PktNrLevKod')
    Left = 64
    Top = 656
    ParamData = <
      item
        Name = 'PKTNRLEVKOD'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetSuppCodeByPktLevKodPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      Size = 3
    end
  end
  object sq_GetSpeditorEmail: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT EmailAddress'
      '        '
      'FROM   dbo.Booking  Bk'
      ''
      
        '  Inner Join dbo.Client  SC  ON   Bk.ShippingCompanyNo  = SC.Cli' +
        'entNo'
      '  Inner Join dbo.contact co ON co.ClientNo = SC.ClientNo'
      'inner join dbo.ContactRole cr on cr.clientno = co.clientno '
      #9#9#9#9'and cr.contactno = co.contactno'
      ''
      'WHERE  Bk.shippingplanno = :LONumber'
      ' AND cr.RoleType = 6')
    Left = 192
    Top = 432
    ParamData = <
      item
        Name = 'LONUMBER'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetSpeditorEmailEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'EmailAddress'
      FixedChar = True
      Size = 50
    end
  end
  object sq_GetPkgPrefix: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct pf.PkgPrefix'
      'FROM dbo.PkgPrefix pf '
      'WHERE ProductionUnitCode = :ProductionUnitCode')
    Left = 192
    Top = 488
    ParamData = <
      item
        Name = 'PRODUCTIONUNITCODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetPkgPrefixPkgPrefix: TStringField
      FieldName = 'PkgPrefix'
      Origin = 'PkgPrefix'
      Size = 3
    end
  end
  object sq_IsVerk: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select R.RoleType'
      'FROM   dbo.ClientRole    R'
      'WHERE  R.ClientNo = :ClientNo'
      'AND  R.RoleType = 9')
    Left = 192
    Top = 552
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsVerkRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_IsRoleType: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select CR.ClientNo from ClientRole CR'
      'Where'
      'CR.ClientNo = :ClientNo'
      'AND CR.RoleType = :RoleType')
    Left = 304
    Top = 432
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ROLETYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_IsRoleTypeClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_GetPIPNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct LIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.LogicalInventoryPointNo = :LIPNO')
    Left = 304
    Top = 488
    ParamData = <
      item
        Name = 'LIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPIPNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
    end
  end
  object sqClientPrefDocs: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * from dbo.ClientPrefDoc cpd'
      'Inner Join dbo.ReportNames rn on rn.ReportNo = cpd.ReportNo'
      'WHERE cpd.ClientNo = :ClientNo'
      'AND cpd.DocType = :DocType')
    Left = 304
    Top = 552
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DOCTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqClientPrefDocsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqClientPrefDocsRoleType: TIntegerField
      FieldName = 'RoleType'
      Origin = 'RoleType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqClientPrefDocsDocType: TIntegerField
      FieldName = 'DocType'
      Origin = 'DocType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqClientPrefDocsNoOfCopy: TIntegerField
      FieldName = 'NoOfCopy'
      Origin = 'NoOfCopy'
    end
    object sqClientPrefDocspromptUser: TIntegerField
      FieldName = 'promptUser'
      Origin = 'promptUser'
    end
    object sqClientPrefDocscollated: TIntegerField
      FieldName = 'collated'
      Origin = 'collated'
    end
    object sqClientPrefDocsPrinterSetup: TIntegerField
      FieldName = 'PrinterSetup'
      Origin = 'PrinterSetup'
    end
    object sqClientPrefDocsReportNo: TIntegerField
      FieldName = 'ReportNo'
      Origin = 'ReportNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqClientPrefDocsReportNo_1: TIntegerField
      FieldName = 'ReportNo_1'
      Origin = 'ReportNo'
    end
    object sqClientPrefDocsDocType_1: TIntegerField
      FieldName = 'DocType_1'
      Origin = 'DocType'
    end
    object sqClientPrefDocsReportName: TStringField
      FieldName = 'ReportName'
      Origin = 'ReportName'
      Size = 100
    end
    object sqClientPrefDocsBeskrivning: TStringField
      FieldName = 'Beskrivning'
      Origin = 'Beskrivning'
      Size = 100
    end
  end
  object sqGetEmailAdr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select EmailAddress from dbo.contact co'
      'inner join dbo.ContactRole cr on cr.clientno = co.clientno '
      #9#9#9#9'and cr.contactno = co.contactno'
      'where co.clientno = :clientno'
      'AND cr.RoleType = 6')
    Left = 304
    Top = 600
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqGetEmailAdrEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'EmailAddress'
      FixedChar = True
      Size = 50
    end
  end
  object sqGetFirstAndLastName: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select RTRIM(FirstName) +'#39' '#39'+ RTRIM(LastName) AS FullName'
      'from Users'
      'where'
      'UserID = :UserID')
    Left = 416
    Top = 416
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqGetFirstAndLastNameFullName: TStringField
      FieldName = 'FullName'
      Origin = 'FullName'
      ReadOnly = True
      Size = 31
    end
  end
  object cdsCurrency: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM dbo.CURRENCY')
    Left = 520
    Top = 432
    object cdsCurrencyCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'SequenceNo'
      Required = True
    end
    object cdsCurrencyCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Origin = 'CurrencyName'
      Required = True
      Size = 5
    end
  end
  object cdsDelTerms: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT * FROM'
      'dbo.DeliveryTerm')
    Left = 600
    Top = 432
    object cdsDelTermsDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      Origin = 'DeliveryTerm_No'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDelTermsDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Required = True
      Size = 21
    end
    object cdsDelTermsDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
  end
  object sq_GetPrefixByClientNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.ClientCode from dbo.client C'
      'Where C.ClientNo = :ClientNo')
    Left = 696
    Top = 416
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPrefixByClientNoClientCode: TStringField
      FieldName = 'ClientCode'
      Origin = 'ClientCode'
      FixedChar = True
      Size = 3
    end
  end
  object sp_Customers: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Customers'
    Left = 712
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object sp_CustomersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object sp_CustomersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object sp_Agent: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_AllAgents'
    Left = 640
    Top = 176
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
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_AgentClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object sp_AgentClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sp_AgentSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_Country: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select CountryNo, CountryName from dbo.country')
    Left = 616
    Top = 296
    object cds_CountryCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CountryCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      Required = True
      Size = 30
    end
  end
  object dsPriceUnit: TDataSource
    DataSet = cdsPriceUnit
    Left = 904
    Top = 72
  end
  object sq_GetMaxLIPNoOfPIPNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select MAX(LIP.LogicalInventoryPointNo) AS LIPNO'
      'FROM dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.PhysicalInventoryPointNo = :PIPNo'
      'AND LIP.SequenceNo = 1')
    Left = 416
    Top = 472
    ParamData = <
      item
        Name = 'PIPNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetMaxLIPNoOfPIPNoLIPNO: TIntegerField
      FieldName = 'LIPNO'
      Origin = 'LIPNO'
      ReadOnly = True
    end
  end
  object ds_Customers: TDataSource
    DataSet = sp_Customers
    Left = 712
    Top = 224
  end
  object sp_actAgents: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_ActAgents'
    Left = 816
    Top = 176
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
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sp_actAgentsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object sp_actAgentsClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sp_actAgentsSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object cds_ActShippers: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vis_ActShippers'
    Left = 920
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cds_ActShippersClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cds_ActShippersClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_ActShippersSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object ds_Country: TDataSource
    DataSet = cds_Country
    Left = 616
    Top = 344
  end
  object cds_AdrSearch: TFDQuery
    AfterInsert = cds_AdrSearchAfterInsert
    BeforePost = cds_AdrSearchBeforePost
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct FDr.*'
      'From '
      'dbo.Address FDr '
      'WHERE AddressNo = 0')
    Left = 456
    Top = 296
    object cds_AdrSearchAddressNo: TIntegerField
      DisplayLabel = 'FDrNr'
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AdrSearchAddressName: TStringField
      DisplayLabel = 'Adressnamn'
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object cds_AdrSearchAddressLine1: TStringField
      DisplayLabel = 'Adressrad 1'
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object cds_AdrSearchAddressLine2: TStringField
      DisplayLabel = 'Adressrad 2'
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchAddressLine3: TStringField
      DisplayLabel = 'Adressrad 3'
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchAddressLine4: TStringField
      DisplayLabel = 'Adressrad 4'
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object cds_AdrSearchStateOrProvince: TStringField
      DisplayLabel = 'Stat/province'
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object cds_AdrSearchAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object cds_AdrSearchPhone1: TStringField
      DisplayLabel = 'Telefon 1'
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchPhone2: TStringField
      DisplayLabel = 'Telefon 2'
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchPhone3: TStringField
      DisplayLabel = 'Telefon 3'
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object cds_AdrSearchFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object cds_AdrSearchCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_AdrSearchModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_AdrSearchDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_AdrSearchEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object cds_AdrSearchPostalCode: TStringField
      DisplayLabel = 'Postnr'
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object cds_AdrSearchSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
    object cds_AdrSearchCountry: TStringField
      DisplayLabel = 'Land'
      FieldKind = fkLookup
      FieldName = 'Country'
      LookupDataSet = cds_Country
      LookupKeyFields = 'CountryNo'
      LookupResultField = 'CountryName'
      KeyFields = 'CountryNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_AdrSearchCity: TStringField
      DisplayLabel = 'Ort'
      FieldKind = fkLookup
      FieldName = 'City'
      LookupDataSet = FD_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'CityNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
  end
  object ds_AdrSearch: TDataSource
    DataSet = cds_AdrSearch
    Left = 456
    Top = 344
  end
  object FD_City: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.City'
      'Order By CityName')
    Left = 544
    Top = 296
    object FD_CityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FD_CityCityName: TStringField
      DisplayLabel = 'Ort'
      FieldName = 'CityName'
      Origin = 'CityName'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FD_CitySequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = [pfInUpdate]
    end
    object FD_CityDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object FD_CityModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object FD_CityCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object FD_CityImpVerk: TIntegerField
      DisplayLabel = 'Impregneringsort'
      FieldName = 'ImpVerk'
      Origin = 'ImpVerk'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_City: TDataSource
    DataSet = FD_City
    Left = 544
    Top = 344
  end
  object ds_CompDelAdr: TDataSource
    DataSet = cds_Comp_DelAdr
    Left = 352
    Top = 344
  end
  object cds_Comp_DelAdr: TFDQuery
    AfterInsert = cds_Comp_DelAdrAfterInsert
    CachedUpdates = True
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'CompanyAddress'
    SQL.Strings = (
      'Select distinct ca.*, FD.*, ci.CityName, cy.CountryName  '
      'From DBO.CompanyAddress CA'
      'INNER JOIN dbo.Address FD on FD.AddressNo = ca.AddressNo'
      'Inner Join dbo.City ci on ci.CityNo = FD.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FD.CountryNo'
      ''
      ''
      ''
      'WHERE ClientNo = :ClientNo'
      'AND ca.AddressType = 2'
      '')
    Left = 352
    Top = 296
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_Comp_DelAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Comp_DelAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Comp_DelAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_Comp_DelAdrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Comp_DelAdrAddressNo_1: TIntegerField
      FieldName = 'AddressNo_1'
      Origin = 'AddressNo'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_Comp_DelAdrAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrAddressType_1: TIntegerField
      FieldName = 'AddressType_1'
      Origin = 'AddressType'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_Comp_DelAdrFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_Comp_DelAdrCreatedUser_1: TIntegerField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrModifiedUser_1: TIntegerField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cds_Comp_DelAdrPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_Comp_DelAdrSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = []
    end
    object cds_Comp_DelAdrCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_Comp_DelAdrCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      ProviderFlags = []
      Size = 30
    end
  end
  object sq_AdrName: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * From DBO.Address'
      'Where AddressName =:AddressName'
      'AND AddressNo <> :AddressNo')
    Left = 248
    Top = 296
    ParamData = <
      item
        Name = 'ADDRESSNAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_AdrNameAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_AdrNameAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      Size = 80
    end
    object sq_AdrNameAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      Size = 40
    end
    object sq_AdrNameAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
    end
    object sq_AdrNameStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
    end
    object sq_AdrNameAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
    end
    object sq_AdrNamePhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNamePhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNamePhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      FixedChar = True
      Size = 40
    end
    object sq_AdrNameFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      FixedChar = True
    end
    object sq_AdrNameCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object sq_AdrNameModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object sq_AdrNameDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object sq_AdrNameEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      FixedChar = True
      Size = 50
    end
    object sq_AdrNamePostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      FixedChar = True
    end
    object sq_AdrNameSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
    end
  end
  object sqAdrDepend: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select addressNo from dbo.Address FD'
      'WHERE FD.AddressNo = :AddressNo'
      ''
      
        'and FD.AddressNo not in (Select AddressNo from dbo.ShippingPlan_' +
        'ShippingAddress'
      'WHERE AddressNo = FD.AddressNo)'
      ''
      'and FD.AddressNo not in (Select DestinationNo from dbo.Orders'
      'WHERE DestinationNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select ClientBillingAddressNo from dbo.' +
        'Orders'
      'WHERE ClientBillingAddressNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select AddressNo from dbo.InvoiceShipTo' +
        'Address'
      'WHERE AddressNo = FD.AddressNo)'
      ''
      
        'and FD.AddressNo not in (Select ClientBillingAddressNo from dbo.' +
        'CustomerShippingPlanHeader'
      'WHERE ClientBillingAddressNo = FD.AddressNo)')
    Left = 152
    Top = 296
    ParamData = <
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqAdrDependaddressNo: TIntegerField
      FieldName = 'addressNo'
      Origin = 'addressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sqDelCompAdr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Delete DBO.CompanyAddress '
      'WHERE AddressNo = :AddressNo')
    Left = 64
    Top = 296
    ParamData = <
      item
        Name = 'ADDRESSNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cds_CompAdr: TFDQuery
    AfterInsert = cds_CompAdrAfterInsert
    CachedUpdates = True
    MasterFields = 'ClientNo'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    UpdateOptions.UpdateTableName = 'CompanyAddress'
    SQL.Strings = (
      'Select distinct ca.*, FD.*, ci.CityName, cy.CountryName  '
      'From DBO.CompanyAddress CA'
      'INNER JOIN dbo.Address FD on FD.AddressNo = ca.AddressNo'
      'Inner Join dbo.City ci on ci.CityNo = FD.CityNo'
      'Inner Join dbo.Country cy on cy.CountryNo = FD.CountryNo'
      'WHERE ClientNo = :ClientNo'
      'AND ca.AddressType = 1'
      '')
    Left = 416
    Top = 560
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_CompAdrClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrAddressType: TIntegerField
      FieldName = 'AddressType'
      Origin = 'AddressType'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_CompAdrCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CompAdrModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CompAdrDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
    object cds_CompAdrAddressNo_1: TIntegerField
      FieldName = 'AddressNo_1'
      Origin = 'AddressNo'
      ProviderFlags = []
    end
    object cds_CompAdrAddressName: TStringField
      FieldName = 'AddressName'
      Origin = 'AddressName'
      ProviderFlags = []
      Size = 80
    end
    object cds_CompAdrAddressLine1: TStringField
      FieldName = 'AddressLine1'
      Origin = 'AddressLine1'
      ProviderFlags = []
      Size = 40
    end
    object cds_CompAdrAddressLine2: TStringField
      FieldName = 'AddressLine2'
      Origin = 'AddressLine2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrAddressLine3: TStringField
      FieldName = 'AddressLine3'
      Origin = 'AddressLine3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrAddressLine4: TStringField
      FieldName = 'AddressLine4'
      Origin = 'AddressLine4'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      ProviderFlags = []
    end
    object cds_CompAdrStateOrProvince: TStringField
      FieldName = 'StateOrProvince'
      Origin = 'StateOrProvince'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrCountryNo: TIntegerField
      FieldName = 'CountryNo'
      Origin = 'CountryNo'
      ProviderFlags = []
    end
    object cds_CompAdrAddressType_1: TIntegerField
      FieldName = 'AddressType_1'
      Origin = 'AddressType'
      ProviderFlags = []
    end
    object cds_CompAdrPhone1: TStringField
      FieldName = 'Phone1'
      Origin = 'Phone1'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrPhone2: TStringField
      FieldName = 'Phone2'
      Origin = 'Phone2'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrPhone3: TStringField
      FieldName = 'Phone3'
      Origin = 'Phone3'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cds_CompAdrFax: TStringField
      FieldName = 'Fax'
      Origin = 'Fax'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_CompAdrCreatedUser_1: TIntegerField
      FieldName = 'CreatedUser_1'
      Origin = 'CreatedUser'
      ProviderFlags = []
    end
    object cds_CompAdrModifiedUser_1: TIntegerField
      FieldName = 'ModifiedUser_1'
      Origin = 'ModifiedUser'
      ProviderFlags = []
    end
    object cds_CompAdrDateCreated_1: TSQLTimeStampField
      FieldName = 'DateCreated_1'
      Origin = 'DateCreated'
      ProviderFlags = []
    end
    object cds_CompAdrEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      ProviderFlags = []
      FixedChar = True
      Size = 50
    end
    object cds_CompAdrPostalCode: TStringField
      FieldName = 'PostalCode'
      Origin = 'PostalCode'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_CompAdrSequenceNo: TIntegerField
      FieldName = 'SequenceNo'
      Origin = 'SequenceNo'
      ProviderFlags = []
    end
    object cds_CompAdrCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      ProviderFlags = []
      Size = 50
    end
    object cds_CompAdrCountryName: TStringField
      FieldName = 'CountryName'
      Origin = 'CountryName'
      ProviderFlags = []
      Size = 30
    end
  end
  object ds_CompAdr: TDataSource
    DataSet = cds_CompAdr
    Left = 416
    Top = 608
  end
  object sq_GetPIPNoOfCityNoByOwnerNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select Distinct PIP.PhysicalInventoryPointNo AS PIPNO'
      'FROM dbo.PhysicalInventoryPoint PIP'
      'WHERE PIP.OwnerNo = :OwnerNo'
      'AND PIP.PhyInvPointNameNo = :CityNo')
    Left = 832
    Top = 584
    ParamData = <
      item
        Name = 'OWNERNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CITYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetPIPNoOfCityNoByOwnerNoPIPNO: TIntegerField
      FieldName = 'PIPNO'
      Origin = 'PIPNO'
      Required = True
    end
  end
  object sq_Get_PktNrLevKod: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select PktNrLevKod from dbo.client'
      'WHERE ClientNo = :ClientNo'
      '')
    Left = 832
    Top = 640
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_Get_PktNrLevKodPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      Origin = 'PktNrLevKod'
      Size = 5
    end
  end
  object FDStoredProc1: TFDStoredProc
    Left = 856
    Top = 528
  end
  object sq_GetProdUnitNo: TFDQuery
    AfterInsert = cds_ProductionUnitAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select ProductionUnitNo'
      'FROM dbo.ProductionUnit'
      'WHERE ClientNo = :ClientNo'
      'AND RegistrationPointNo = :RegistrationPointNo')
    Left = 520
    Top = 560
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REGISTRATIONPOINTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetProdUnitNoProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cds_Stacker: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.Stacker')
    Left = 624
    Top = 560
    object cds_StackerStackerNo: TIntegerField
      FieldName = 'StackerNo'
      Origin = 'StackerNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StackerStackerName: TStringField
      DisplayLabel = 'L'#228'ggare'
      FieldName = 'StackerName'
      Origin = 'StackerName'
      Size = 50
    end
    object cds_StackerProductionUnitNo: TIntegerField
      FieldName = 'ProductionUnitNo'
      Origin = 'ProductionUnitNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_StackerClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ds_Stacker: TDataSource
    DataSet = cds_Stacker
    Left = 624
    Top = 608
  end
  object cds_TypeOfRun: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.TypeOfRun')
    Left = 919
    Top = 432
    object cds_TypeOfRunTypeOfRunNo: TIntegerField
      FieldName = 'TypeOfRunNo'
      Origin = 'TypeOfRunNo'
    end
    object cds_TypeOfRunTypeOfRunName: TStringField
      FieldName = 'TypeOfRunName'
      Origin = 'TypeOfRunName'
    end
    object cds_TypeOfRunAffectOutturn: TIntegerField
      FieldName = 'AffectOutturn'
      Origin = 'AffectOutturn'
    end
    object cds_TypeOfRunDefault: TIntegerField
      FieldName = 'Default'
      Origin = '[Default]'
    end
  end
  object sq_GetSRNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select OwnedBySalesRegionNo AS SalesRegionNo from dbo.client'
      'WHERE  ClientNo = :ClientNo'
      '')
    Left = 984
    Top = 528
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetSRNoSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
    end
  end
  object sq_GetCustomerLanguage: TFDQuery
    Connection = dmsConnector.FDConnection1
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    SQL.Strings = (
      'SELECT distinct'
      'LanguageCode'
      'FROM dbo.ClientPreference'
      'WHERE ClientNo = :ClientNo'
      'AND Roletype=1')
    Left = 48
    Top = 120
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 409
      end>
    object LanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
  end
  object sq_GetRealInterverk: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select * from dbo.Client C'
      'Where C.ClientNo = :CompanyNo')
    Left = 984
    Top = 592
    ParamData = <
      item
        Name = 'COMPANYNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetRealInterverkIntVerk: TIntegerField
      FieldName = 'IntVerk'
      Origin = 'IntVerk'
    end
  end
  object sp_GroupClientExists: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'dbo.vis_GroupClientExists'
    Left = 304
    Top = 664
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@MainClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@ClientNo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
