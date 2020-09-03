object dmSotOrderList: TdmSotOrderList
  OldCreateOrder = False
  Height = 468
  Width = 615
  object ds_Producer: TDataSource
    DataSet = cds_producer
    Left = 46
    Top = 104
  end
  object ds_RegPoint: TDataSource
    DataSet = cds_RegPoint
    Left = 126
    Top = 112
  end
  object cds_producer: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
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
    Left = 46
    Top = 56
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
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT   Distinct RP.RegPointName AS ProductionUnitName,'
      'PU.RegistrationPointNo, PU.ClientNo'
      'FROM dbo.ProductionUnit PU'
      
        'Inner Join dbo.RegistrationPoint RP ON RP.RegPointNo = PU.Regist' +
        'rationPointNo'
      ''
      'ORDER BY RP.RegPointName')
    Left = 126
    Top = 56
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
    object cds_RegPointClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
    end
  end
  object cds_Verk: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName'
      ''
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      ''
      'WHERE  C.ClientNo = R.ClientNo'
      'AND   ((R.RoleType = 9) '
      'OR (R.RoleType = 6))'
      ''
      'Order by C.clientName'
      '')
    Left = 46
    Top = 160
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
    object cds_VerkSearchName: TStringField
      FieldName = 'SearchName'
      Origin = 'SearchName'
      Size = 80
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 46
    Top = 208
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 128
    Top = 216
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name')
    Left = 128
    Top = 168
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        FDDataType = dtUInt32
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsProducer: TStringField
      DisplayLabel = 'Producent'
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
    object cds_PropsOwner: TStringField
      DisplayLabel = #196'gare'
      FieldKind = fkLookup
      FieldName = 'Owner'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsProductionUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductionUnit'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'RegistrationPointNo'
      LookupResultField = 'ProductionUnitName'
      KeyFields = 'RegPointNo'
      ProviderFlags = []
      Size = 30
      Lookup = True
    end
    object cds_PropsPIP: TStringField
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
    object cds_PropsLIP: TStringField
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
    object cds_PropsORT: TStringField
      FieldKind = fkLookup
      FieldName = 'ORT'
      LookupDataSet = cds_City
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LoadingLocationNo'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cds_PropsTypeOfRun: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeOfRun'
      LookupDataSet = dmsContact.cds_TypeOfRun
      LookupKeyFields = 'TypeOfRunNo'
      LookupResultField = 'TypeOfRunName'
      KeyFields = 'InputOption'
      ProviderFlags = []
      Lookup = True
    end
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
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
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsFilter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsFilter2: TStringField
      FieldName = 'Filter2'
      Origin = 'Filter2'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object ds_PIP: TDataSource
    DataSet = cds_PIP
    Left = 230
    Top = 104
  end
  object ds_LIP: TDataSource
    DataSet = cds_LIP
    Left = 286
    Top = 104
  end
  object cds_PIP: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT PIP.PhysicalInventoryPointNo AS PIPNo, CY.CITYNAME AS ORT' +
        ', PIP.OwnerNo'
      'FROM'
      'dbo.PhysicalInventoryPoint PIP'
      'Inner Join dbo.CITY CY ON CY.CITYNO = PIP.PhyInvPointNameNo'
      ''
      'WHERE PIP.SequenceNo = 1'
      'Order By CY.CITYNAME')
    Left = 232
    Top = 56
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
    Active = True
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'SELECT LIP.LogicalInventoryPointNo AS LIPNo, LIP.LogicalInventor' +
        'yName AS LAGERGRUPP, LIP.PhysicalInventoryPointNo AS PIPNo'
      'FROM'
      'dbo.LogicalInventoryPoint LIP'
      'WHERE LIP.SequenceNo = 1'
      'Order By LIP.LogicalInventoryName')
    Left = 288
    Top = 56
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
  object cds_City: TFDQuery
    Active = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select Cy.CityNo, Cy.CityName, uap.UserID'
      'FROM [dbo].[UserArrivalPoint] uap'
      'inner join dbo.City cy on cy.CityNo = uap.PhyInvPointNameNo'
      '')
    Left = 392
    Top = 56
    object cds_CityCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      Required = True
    end
    object cds_CityCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
    object cds_CityUserID: TSmallintField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object siLangLinked_dmSotOrderList: TsiLangLinked
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
    Left = 288
    Top = 216
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0063006400
      73005F00430069007400790043006900740079004E0061006D00650001004300
      6900740079004E0061006D00650001000100010001000D000A00630064007300
      5F00430069007400790043006900740079004E006F0001004300690074007900
      4E006F0001000100010001000D000A006300640073005F004300690074007900
      5500730065007200490044000100550073006500720049004400010001000100
      01000D000A006300640073005F004C00490050004C0041004700450052004700
      520055005000500001004C004100470045005200470052005500500050000100
      0100530054004F0043004B002000470052004F0055005000010001000D000A00
      6300640073005F004C00490050004C00490050004E006F0001004C0049005000
      4E006F0001000100010001000D000A006300640073005F004C00490050005000
      490050004E006F0001005000490050004E006F0001000100010001000D000A00
      6300640073005F005000490050004F005200540001004F005200540001004F00
      520054000100430049005400590001004F005200540001000D000A0063006400
      73005F005000490050004F0077006E00650072004E006F0001004F0077006E00
      650072004E006F0001000100010001000D000A006300640073005F0050004900
      50005000490050004E006F0001005000490050004E006F000100010001000100
      0D000A006300640073005F00700072006F006400750063006500720043006C00
      690065006E0074004E0061006D006500010043006C00690065006E0074004E00
      61006D00650001000100010001000D000A006300640073005F00700072006F00
      6400750063006500720043006C00690065006E0074004E006F00010043006C00
      690065006E0074004E006F0001000100010001000D000A006300640073005F00
      700072006F00640075006300650072005300650061007200630068004E006100
      6D00650001005300650061007200630068004E0061006D006500010001000100
      01000D000A006300640073005F00500072006F00700073004C00490050000100
      4C004900500001000100010001000D000A006300640073005F00500072006F00
      700073004F005200540001004F005200540001004F0052005400010043004900
      5400590001004F005200540001000D000A006300640073005F00500072006F00
      700073004F0077006E00650072000100C4006700610072006500010001004F00
      77006E0065007200010001000D000A006300640073005F00500072006F007000
      7300500049005000010050004900500001000100010001000D000A0063006400
      73005F00500072006F0070007300500072006F00640075006300650072000100
      500072006F0064007500630065006E00740001000100500072006F0064007500
      630065007200010001000D000A006300640073005F00500072006F0070007300
      500072006F00640075006300740069006F006E0055006E006900740001005000
      72006F00640075006300740069006F006E0055006E0069007400010001000100
      01000D000A006300640073005F00500072006F00700073005400790070006500
      4F006600520075006E00010054007900700065004F006600520075006E000100
      0100010001000D000A006300640073005F0052006500670050006F0069006E00
      740043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F0001000100010001000D000A006300640073005F005200650067005000
      6F0069006E007400500072006F00640075006300740069006F006E0055006E00
      690074004E0061006D0065000100500072006F00640075006300740069006F00
      6E0055006E00690074004E0061006D00650001000100010001000D000A006300
      640073005F0052006500670050006F0069006E00740052006500670069007300
      740072006100740069006F006E0050006F0069006E0074004E006F0001005200
      6500670069007300740072006100740069006F006E0050006F0069006E007400
      4E006F0001000100010001000D000A006300640073005F005600650072006B00
      43006C00690065006E0074004E0061006D006500010043006C00690065006E00
      74004E0061006D00650001000100010001000D000A006300640073005F005600
      650072006B0043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F0001000100010001000D000A006300640073005F0056006500
      72006B005300650061007200630068004E0061006D0065000100530065006100
      7200630068004E0061006D00650001000100010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006300
      640073005F00700072006F00640075006300650072002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F00700072006F0064007500630065007200
      43006C00690065006E0074004E006F002E004F0072006900670069006E000100
      43006C00690065006E0074004E006F0001000100010001000D000A0063006400
      73005F00700072006F006400750063006500720043006C00690065006E007400
      4E0061006D0065002E004F0072006900670069006E00010043006C0069006500
      6E0074004E0061006D00650001000100010001000D000A006300640073005F00
      700072006F00640075006300650072005300650061007200630068004E006100
      6D0065002E004F0072006900670069006E000100530065006100720063006800
      4E0061006D00650001000100010001000D000A006300640073005F0052006500
      670050006F0069006E0074002E0043006F006E006E0065006300740069006F00
      6E004E0061006D006500010056004900530001000100010001000D000A006300
      640073005F0052006500670050006F0069006E007400500072006F0064007500
      6300740069006F006E0055006E00690074004E0061006D0065002E004F007200
      6900670069006E000100500072006F00640075006300740069006F006E005500
      6E00690074004E0061006D00650001000100010001000D000A00630064007300
      5F0052006500670050006F0069006E0074005200650067006900730074007200
      6100740069006F006E0050006F0069006E0074004E006F002E004F0072006900
      670069006E00010052006500670069007300740072006100740069006F006E00
      50006F0069006E0074004E006F0001000100010001000D000A00630064007300
      5F0052006500670050006F0069006E00740043006C00690065006E0074004E00
      6F002E004F0072006900670069006E00010043006C00690065006E0074004E00
      6F0001000100010001000D000A006300640073005F005600650072006B002E00
      43006F006E006E0065006300740069006F006E004E0061006D00650001005600
      4900530001000100010001000D000A006300640073005F005600650072006B00
      43006C00690065006E0074004E006F002E004F0072006900670069006E000100
      43006C00690065006E0074004E006F0001000100010001000D000A0063006400
      73005F005600650072006B0043006C00690065006E0074004E0061006D006500
      2E004F0072006900670069006E00010043006C00690065006E0074004E006100
      6D00650001000100010001000D000A006300640073005F005600650072006B00
      5300650061007200630068004E0061006D0065002E004F007200690067006900
      6E0001005300650061007200630068004E0061006D0065000100010001000100
      0D000A006300640073005F00500072006F00700073002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F005000490050002E0043006F006E006E00
      65006300740069006F006E004E0061006D006500010056004900530001000100
      010001000D000A006300640073005F005000490050005000490050004E006F00
      2E004F0072006900670069006E0001005000490050004E006F00010001000100
      01000D000A006300640073005F005000490050004F00520054002E004F007200
      6900670069006E0001004F005200540001004F00520054000100430049005400
      590001004F005200540001000D000A006300640073005F005000490050004F00
      77006E00650072004E006F002E004F0072006900670069006E0001004F007700
      6E00650072004E006F0001000100010001000D000A006300640073005F004C00
      490050002E0043006F006E006E0065006300740069006F006E004E0061006D00
      6500010056004900530001000100010001000D000A006300640073005F004C00
      490050004C00490050004E006F002E004F0072006900670069006E0001004C00
      490050004E006F0001000100010001000D000A006300640073005F004C004900
      50004C004100470045005200470052005500500050002E004F00720069006700
      69006E0001004C00410047004500520047005200550050005000010001005300
      54004F0043004B002000470052004F0055005000010001000D000A0063006400
      73005F004C00490050005000490050004E006F002E004F007200690067006900
      6E0001005000490050004E006F0001000100010001000D000A00630064007300
      5F0043006900740079002E0043006F006E006E0065006300740069006F006E00
      4E0061006D006500010056004900530001000100010001000D000A0063006400
      73005F00430069007400790043006900740079004E006F002E004F0072006900
      670069006E00010043006900740079004E006F0001000100010001000D000A00
      6300640073005F00430069007400790043006900740079004E0061006D006500
      2E004F0072006900670069006E00010043006900740079004E0061006D006500
      01000100010001000D000A006300640073005F00430069007400790055007300
      65007200490044002E004F0072006900670069006E0001005500730065007200
      4900440001000100010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A00}
  end
  object cds_Props2: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name')
    Left = 128
    Top = 296
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object cds_Props2UserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Props2Form: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_Props2VerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_Props2OwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
    end
    object cds_Props2PIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
    end
    object cds_Props2LIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
    end
    object cds_Props2InputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2RegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2RegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2CopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2RunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2ProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2AutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2SupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_Props2LengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2LengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2NewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2SalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2MarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2OrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2Status: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2FilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2StartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2EndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2ClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2SalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2VerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2VerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2LOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2BarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2GradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2VolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2LengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2LengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2GroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2GroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2AgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2LoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2ShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2BookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2CustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2ShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_Props2Name: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_Props2Filter1: TStringField
      FieldName = 'Filter1'
      Origin = 'Filter1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_Props2Filter2: TStringField
      FieldName = 'Filter2'
      Origin = 'Filter2'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cds_Props2Producent: TStringField
      FieldKind = fkLookup
      FieldName = 'Producent'
      LookupDataSet = cds_producer
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'LengthGroupNo'
      Size = 80
      Lookup = True
    end
    object cds_Props2Ägare: TStringField
      FieldKind = fkLookup
      FieldName = #196'gare'
      LookupDataSet = cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'OwnerNo'
      Size = 80
      Lookup = True
    end
    object cds_Props2ProductionUnit: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductionUnit'
      LookupDataSet = cds_RegPoint
      LookupKeyFields = 'ProductionUnitName'
      LookupResultField = 'RegistrationPointNo'
      KeyFields = 'RegPointNo'
      Size = 30
      Lookup = True
    end
  end
end
