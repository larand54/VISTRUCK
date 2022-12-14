object dmModule1: TdmModule1
  OldCreateOrder = False
  Height = 779
  Width = 1132
  object dsClient: TDataSource
    DataSet = cdsClient
    Left = 424
    Top = 72
  end
  object dsDestination: TDataSource
    DataSet = cdsDestination
    Left = 616
    Top = 64
  end
  object dsClientAddress: TDataSource
    DataSet = cdsClientAddress
    Left = 40
    Top = 208
  end
  object dsLoadFreightCost: TDataSource
    DataSet = cdsLoadFreightCost
    Left = 600
    Top = 232
  end
  object ds_PkgInfo: TDataSource
    DataSet = cds_PkgInfo
    Left = 24
    Top = 80
  end
  object ds_LoadPkgInfo: TDataSource
    DataSet = cds_LoadPkgInfo
    Left = 128
    Top = 80
  end
  object ds_LoadFreightCostHeader: TDataSource
    DataSet = cds_LoadFreightCostHeader
    Left = 280
    Top = 200
  end
  object mtShippers: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexFieldNames = 'Shipper'
    IndexDefs = <
      item
        Name = 'mtShippersIndex1'
        Fields = 'Shipper'
      end>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.86.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AutoUpdateFieldVariables = False
    Left = 856
    Top = 24
    object mtShippersShipper: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_Shippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      Size = 80
      Lookup = True
    end
    object mtShippersShippersInvoiceNo: TStringField
      DisplayLabel = 'Spedit'#246'rens fakturanr'
      FieldName = 'ShippersInvoiceNo'
      Size = 50
    end
    object mtShippersShipperNo: TIntegerField
      FieldName = 'ShipperNo'
    end
    object mtShippersAvrakningsNr: TIntegerField
      DisplayLabel = 'Avr'#228'kningsNr'
      FieldName = 'AvrakningsNr'
    end
  end
  object dsShippers: TDataSource
    DataSet = mtShippers
    Left = 856
    Top = 72
  end
  object ds_LoadFC: TDataSource
    DataSet = cds_LoadFC
    Left = 224
    Top = 80
  end
  object cds_PkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'isNull(Us.UserName,'#39'NA'#39') AS PKG_CREATED_BY, '
      'PN.PackageNo AS PKG_NO, '
      'PN.DateCreated AS PKG_CREATED,'
      'PN.SupplierCode AS SUPP_CODE, '
      'PR.ProductDisplayName AS PRODUCT, '
      'C.ClientName AS INVENTORY_OWNER , '
      'Supp.ClientName AS PRODUCER, '
      'LOC.CityName AS INVENTORY,'
      'LIP.LogicalInventoryName AS INVENTORY_GROUP,'
      'CASE'
      ' WHEN PN.Status = 0 then '#39'PKG NOT AVAILABLE'#39
      ' WHEN PN.Status = 1 then '#39'PKG AVAILABLE'#39
      'END AS PKG_STATUS,'
      'BC.BarCode AS BARCODE,'
      'GS.GradeStamp AS GRADESTAMP,'
      'PT.PackageHeight AS PKG_HEIGHT,'
      'PT.PackageWidth AS PKG_WIDTH,'
      'CASE'
      'WHEN PT.MiniBundled = 0 THEN '#39'NO'#39
      'WHEN PT.MiniBundled = 1 THEN '#39'YES'#39
      'END AS MINI_BUNDLED,'
      ''
      'CASE '
      ' WHEN PT.OnSticks = 0 then '#39'NO'#39
      ' WHEN PT.OnSticks = 1 then '#39'YES'#39
      'END AS STICKS,'
      ''
      'WT.WrapType AS WRAP,'
      'CASE'
      'WHEN PT.ShrinkWrap = 0 THEN '#39'NO'#39
      'WHEN PT.ShrinkWrap = 1 THEN '#39'YES'#39
      'END AS SHRINK_WRAP,'
      ''
      'PT.Totalm3Actual AS M3_ACT, '
      'PT.Totalm3Nominal AS M3_NOM , '
      'PT.TotalNoOfPieces AS PIECES, '
      'PT.TotalMFBMNominal AS MFBM, '
      'PT.TotalLinealMeterActualLength AS ACT_LINEAL_METER,'
      'PT.m3Net AS NOM_LINEAL_METER,'
      'PT.TotalSQMofActualWidth AS M2,'
      'PT.PackageTypeNo AS PACKAGETYPENO,'
      'pc.PackageCodeNo AS KORTAKODEN,'
      'pp.PackageCode AS LANGAKODEN,'
      ''
      
        '(select TOP 1 K.KilnName + '#39' - '#39' + isnull(KCH.Info,'#39#39') + '#39'  ['#39' +' +
        ' CAST(ISNULL(KCH.KilnChargeNo,'#39'-'#39') AS varchar(6)) + '#39']'#39' + '#39' / Ca' +
        'rt No: '#39' + LTRIM(str(kcr.VagnNo))'
      'from dbo.KilnChargeRows kcr'
      
        'inner join dbo.KilnChargeHdr kch on kch.KilnChargeNo = kcr.KilnC' +
        'hargeNo'
      'inner join dbo.Kilns k on k.KilnNo = kch.KilnNo'
      'where kcr.PackageNo = PN.PackageNo'
      'and kcr.SupplierCode = PN.SupplierCode) as Tork'
      ''
      ''
      'FROM PackageNumber PN'
      'Inner Join PackageType PT ON PT.PackageTypeNo = PN.PackageTypeNo'
      
        'Left Outer Join dbo.PkgVarCode pc ON pc.PackageTypeNo = Pt.Packa' +
        'geTypeNo'
      
        'Left Outer Join dbo.Packagecode_printparams pp on pp.PackageType' +
        'No = pc.PackageTypeNo'
      'Inner Join Product PR ON PR.ProductNo = PT.ProductNo'
      
        'Left Outer Join LogicalInventoryPoint LIP ON LIP.LogicalInventor' +
        'yPointNo = PN.LogicalInventoryPointNo'
      ''
      'Left Outer Join PhysicalInventoryPoint PIP'
      'Inner Join Client C ON C.ClientNo = PIP.OwnerNo'
      'Inner Join City LOC ON LOC.CityNo = PIP.PhyInvPointNameNo'
      'ON PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo'
      ''
      'Inner Join Client Supp ON Supp.ClientNo = PN.SupplierNo'
      'Left Outer Join Users Us ON'#9'Us.UserID = PN.CreatedUser'
      ''
      'Left Outer Join BarCode'#9'BC'#9'ON BC.BarCodeNo = PT.BarCodeID'
      'Left Outer Join GradeStamp GS'#9'ON GS.GradeStampNo = PT.GradeStamp'
      'left Outer Join WrapType WT'#9'ON WT.WrapTypeNo = PT.WrapType'
      ''
      'Left Outer Join LoadDetail LD '
      ' Inner Join Loads L ON L.LoadNo = LD.LoadNo'
      ' Left Outer Join Users Load_Us ON'#9'Load_Us.UserID = L.CreatedUser'
      ' Inner Join LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      ' Inner Join Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join CustomerShippingPlanDetails CSD ON CSD.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      ' Left Outer Join Client OrdCli'#9'ON OrdCli.ClientNo = O.CustomerNo'
      ''
      'ON LD.PackageNo = PN.PackageNo'
      'AND LD.SupplierCode = PN.SupplierCode'
      ''
      'Left Outer Join Invoiced_Load IL '
      
        ' Inner Join InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        ' Left Outer Join InvoiceNumber INO ON INO.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      ' Left Outer Join Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreated'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      'Where'
      'PN.PackageNo = :PackageNo'
      'AND PN.SupplierCode = :SupplierCode')
    Left = 24
    Top = 24
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
    object cds_PkgInfoPKG_CREATED_BY: TStringField
      FieldName = 'PKG_CREATED_BY'
      Origin = 'PKG_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_PkgInfoPKG_NO: TIntegerField
      FieldName = 'PKG_NO'
      Origin = 'PKG_NO'
      Required = True
    end
    object cds_PkgInfoPKG_CREATED: TSQLTimeStampField
      FieldName = 'PKG_CREATED'
      Origin = 'PKG_CREATED'
    end
    object cds_PkgInfoSUPP_CODE: TStringField
      FieldName = 'SUPP_CODE'
      Origin = 'SUPP_CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cds_PkgInfoPRODUCT: TStringField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Size = 100
    end
    object cds_PkgInfoINVENTORY_OWNER: TStringField
      FieldName = 'INVENTORY_OWNER'
      Origin = 'INVENTORY_OWNER'
      Size = 80
    end
    object cds_PkgInfoPRODUCER: TStringField
      FieldName = 'PRODUCER'
      Origin = 'PRODUCER'
      Size = 80
    end
    object cds_PkgInfoINVENTORY: TStringField
      FieldName = 'INVENTORY'
      Origin = 'INVENTORY'
      Size = 50
    end
    object cds_PkgInfoINVENTORY_GROUP: TStringField
      FieldName = 'INVENTORY_GROUP'
      Origin = 'INVENTORY_GROUP'
      Size = 50
    end
    object cds_PkgInfoPKG_STATUS: TStringField
      FieldName = 'PKG_STATUS'
      Origin = 'PKG_STATUS'
      ReadOnly = True
      Size = 17
    end
    object cds_PkgInfoBARCODE: TStringField
      FieldName = 'BARCODE'
      Origin = 'BARCODE'
      FixedChar = True
    end
    object cds_PkgInfoGRADESTAMP: TStringField
      FieldName = 'GRADESTAMP'
      Origin = 'GRADESTAMP'
      FixedChar = True
    end
    object cds_PkgInfoPKG_HEIGHT: TIntegerField
      FieldName = 'PKG_HEIGHT'
      Origin = 'PKG_HEIGHT'
    end
    object cds_PkgInfoPKG_WIDTH: TIntegerField
      FieldName = 'PKG_WIDTH'
      Origin = 'PKG_WIDTH'
    end
    object cds_PkgInfoMINI_BUNDLED: TStringField
      FieldName = 'MINI_BUNDLED'
      Origin = 'MINI_BUNDLED'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoSTICKS: TStringField
      FieldName = 'STICKS'
      Origin = 'STICKS'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoWRAP: TStringField
      FieldName = 'WRAP'
      Origin = 'WRAP'
      FixedChar = True
      Size = 15
    end
    object cds_PkgInfoSHRINK_WRAP: TStringField
      FieldName = 'SHRINK_WRAP'
      Origin = 'SHRINK_WRAP'
      ReadOnly = True
      Size = 3
    end
    object cds_PkgInfoM3_ACT: TFloatField
      FieldName = 'M3_ACT'
      Origin = 'M3_ACT'
    end
    object cds_PkgInfoM3_NOM: TFloatField
      FieldName = 'M3_NOM'
      Origin = 'M3_NOM'
    end
    object cds_PkgInfoPIECES: TIntegerField
      FieldName = 'PIECES'
      Origin = 'PIECES'
    end
    object cds_PkgInfoMFBM: TFloatField
      FieldName = 'MFBM'
      Origin = 'MFBM'
    end
    object cds_PkgInfoACT_LINEAL_METER: TFloatField
      FieldName = 'ACT_LINEAL_METER'
      Origin = 'ACT_LINEAL_METER'
    end
    object cds_PkgInfoNOM_LINEAL_METER: TFloatField
      FieldName = 'NOM_LINEAL_METER'
      Origin = 'NOM_LINEAL_METER'
    end
    object cds_PkgInfoM2: TFloatField
      FieldName = 'M2'
      Origin = 'M2'
    end
    object cds_PkgInfoPACKAGETYPENO: TIntegerField
      FieldName = 'PACKAGETYPENO'
      Origin = 'PACKAGETYPENO'
      Required = True
    end
    object cds_PkgInfoKORTAKODEN: TStringField
      FieldName = 'KORTAKODEN'
      Origin = 'KORTAKODEN'
      Size = 40
    end
    object cds_PkgInfoLANGAKODEN: TStringField
      FieldName = 'LANGAKODEN'
      Origin = 'LANGAKODEN'
      Size = 50
    end
    object cds_PkgInfoTork: TStringField
      FieldName = 'Tork'
      Origin = 'Tork'
      ReadOnly = True
      Size = 115
    end
  end
  object sqGetSupplierNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select distinct SupplierNo From dbo.Loads LO'
      
        'Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = Lo.L' +
        'oadNo'
      'Inner Join ClientRole CR ON CR.ClientNo = Lo.SupplierNo'
      'AND CR.RoleType = 9'
      'Where LoadNo = :LoadNo')
    Left = 856
    Top = 280
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sqGetSupplierNoSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      Required = True
    end
  end
  object cds_LoadPkgInfo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select DISTINCT'
      ''
      'LC.ClientName AS LOAD_CUSTOMER, '
      'LSupp.ClientName AS LOAD_SUPPLIER,'
      'L.LoadedDate AS LOAD_DATE,'
      'L.LoadNo AS LOAD_NO, '
      'LS.ShippingPlanNo AS LO_NUMBER, '
      'L.FS,'
      'isNull(Load_Us.UserName,'#39'NA'#39') AS LOAD_CREATED_BY,'
      'CASE'
      ' WHEN L.SenderLoadStatus  = 0 then '#39'PLANNED'#39
      ' WHEN L.SenderLoadStatus  = 1 then '#39'SHIPPED, PROBLEM'#39
      ' WHEN L.SenderLoadStatus  = 2 then '#39'SHIPPED OK'#39
      'END'
      'AS LOAD_STATUS,'
      ''
      'INO.InvoiceNo AS INVOICE_NO,'
      'isNull(IN_Us.Username,'#39'NA'#39') AS INV_CREATED_BY,'
      'IH.InvoiceDate AS INVOICE_DATE,'
      'IH.InternalInvoiceNo AS INT_INVOICE_NO,'
      'CASE '
      ' WHEN IH.InvoiceType = 0 then '#39'NORMAL'#39
      ' WHEN IH.InvoiceType = 1 then '#39'PROFORMA I'#39
      ' WHEN IH.InvoiceType = 2 then '#39'PROFROMA II'#39
      'END AS INVOICETYPE,'
      'CASE'
      ' WHEN IH.Debit_Credit = 0 then '#39'DEBIT'#39
      ' WHEN IH.Debit_Credit = 1 then '#39'CREDIT'#39
      'END AS DEBIT_CREDIT,'
      'O.OrderNoText AS ORDER_NO,'
      'OrdCli.ClientName AS ORDER_CUSTOMER'
      ''
      ''
      'FROM LoadDetail LD'
      ' Inner Join Loads L ON L.LoadNo = LD.LoadNo'
      ' Left Outer Join Users Load_Us ON'#9'Load_Us.UserID = L.CreatedUser'
      ' Inner Join LoadShippingPlan LS ON LS.LoadNo = LD.LoadNo'
      #9#9#9#9'AND LS.ShippingPlanNo = LD.ShippingPlanNo'
      ' Inner Join Client LC ON LC.ClientNo = L.CustomerNo'
      ' Inner Join Client LSupp ON LSupp.ClientNo = L.SupplierNo'
      ''
      
        ' Left Outer Join CustomerShippingPlanDetails CSD ON CSD.CustShip' +
        'PlanDetailObjectNo = LD.DefaultCustShipObjectNo'
      ' Left Outer Join Orders O'#9'ON O.OrderNo = CSD.OrderNo'
      ' Left Outer Join Client OrdCli'#9'ON OrdCli.ClientNo = O.CustomerNo'
      ''
      ''
      'Left Outer Join Invoiced_Load IL '
      
        ' Inner Join InvoiceHeader IH ON IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        ' Left Outer Join InvoiceNumber INO ON INO.InternalInvoiceNo = IH' +
        '.InternalInvoiceNo'
      ''
      ' Left Outer Join Users IN_Us ON'#9'IN_Us.UserID = INO.UserCreated'
      'ON IL.LoadNo = LS.LoadNo'
      'AND   IL.ShippingPlanNo = LS.ShippingPlanNo'
      ''
      ''
      'Where'
      'LD.PackageNo = :PKG_NO'
      'AND LD.SupplierCode = :Supp_Code')
    Left = 128
    Top = 24
    ParamData = <
      item
        Name = 'PKG_NO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUPP_CODE'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_LoadPkgInfoLOAD_CUSTOMER: TStringField
      FieldName = 'LOAD_CUSTOMER'
      Origin = 'LOAD_CUSTOMER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_SUPPLIER: TStringField
      FieldName = 'LOAD_SUPPLIER'
      Origin = 'LOAD_SUPPLIER'
      Size = 80
    end
    object cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField
      FieldName = 'LOAD_DATE'
      Origin = 'LOAD_DATE'
    end
    object cds_LoadPkgInfoLOAD_NO: TIntegerField
      FieldName = 'LOAD_NO'
      Origin = 'LOAD_NO'
      Required = True
    end
    object cds_LoadPkgInfoLO_NUMBER: TIntegerField
      FieldName = 'LO_NUMBER'
      Origin = 'LO_NUMBER'
      Required = True
    end
    object cds_LoadPkgInfoFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      FixedChar = True
    end
    object cds_LoadPkgInfoLOAD_CREATED_BY: TStringField
      FieldName = 'LOAD_CREATED_BY'
      Origin = 'LOAD_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_LoadPkgInfoLOAD_STATUS: TStringField
      FieldName = 'LOAD_STATUS'
      Origin = 'LOAD_STATUS'
      ReadOnly = True
      Size = 16
    end
    object cds_LoadPkgInfoINVOICE_NO: TIntegerField
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
    end
    object cds_LoadPkgInfoINV_CREATED_BY: TStringField
      FieldName = 'INV_CREATED_BY'
      Origin = 'INV_CREATED_BY'
      ReadOnly = True
      Required = True
    end
    object cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_DATE'
    end
    object cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField
      FieldName = 'INT_INVOICE_NO'
      Origin = 'INT_INVOICE_NO'
    end
    object cds_LoadPkgInfoINVOICETYPE: TStringField
      FieldName = 'INVOICETYPE'
      Origin = 'INVOICETYPE'
      ReadOnly = True
      Size = 11
    end
    object cds_LoadPkgInfoDEBIT_CREDIT: TStringField
      FieldName = 'DEBIT_CREDIT'
      Origin = 'DEBIT_CREDIT'
      ReadOnly = True
      Size = 6
    end
    object cds_LoadPkgInfoORDER_NO: TStringField
      FieldName = 'ORDER_NO'
      Origin = 'ORDER_NO'
    end
    object cds_LoadPkgInfoORDER_CUSTOMER: TStringField
      FieldName = 'ORDER_CUSTOMER'
      Origin = 'ORDER_CUSTOMER'
      Size = 80
    end
  end
  object cds_LoadFreightCostHeader: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * '
      'FROM'
      'dbo.LoadFreightCostHeader'
      '')
    Left = 280
    Top = 136
    object cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField
      DisplayLabel = 'Avr'#228'kningsnr'
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_LoadFreightCostHeaderStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
    end
    object cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField
      FieldName = 'LocalShipperNo'
      Origin = 'LocalShipperNo'
    end
    object cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField
      DisplayLabel = 'Avr'#228'knad'
      FieldName = 'AvrakningsDate'
      Origin = 'AvrakningsDate'
    end
    object cds_LoadFreightCostHeaderCreatedUser: TSmallintField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cds_LoadFreightCostHeaderModifiedUser: TSmallintField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cds_LoadFreightCostHeaderNote: TMemoField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      BlobType = ftMemo
    end
    object cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField
      DisplayLabel = 'Ert fakturanr'
      FieldName = 'ShippersInvoiceNo'
      Origin = 'ShippersInvoiceNo'
      Size = 50
    end
    object cds_LoadFreightCostHeaderVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
  end
  object cdsClient: TFDStoredProc
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    StoredProcName = 'vida_Clients'
    Left = 424
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
        Name = '@RoleType'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      Required = True
    end
    object cdsClientClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
  end
  object sq_ClientData: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT distinct'
      'CP.DefaultBillingAddressNo,'
      'C.ClientName,'
      'C.ClientNo,'
      'CP.InvoiceText,'
      'CP.LanguageCode,'
      'DT.DeliveryTerm,'
      'DT.DeliveryTerm_No,'
      ''
      'PayT.PaymentTermsNo,'
      'PT."Description" as PayDesc,'
      'PayT.FreightInDiscount,'
      'PayT.FreightInCommission ,'
      'PayT.CommissionPaidByCustomer,'
      'PayT.Discount1,'
      ''
      'CU.CurrencyNo,'
      ''
      'CU.CurrencyName'#9#9#9'AS CURRENCYNAME,'
      'FDR.AddressName'#9#9#9'AS BILL_ADDRESS_NAME,'
      'FDR.AddressLine1'#9#9'AS BILL_ADDRESSLINE1,'
      'FDR.AddressLine2'#9#9'AS BILL_ADDRESSLINE2,'
      'FDR.AddressLine3'#9#9'AS BILL_ADDRESSLINE3,'
      'FDR.AddressLine4'#9#9'AS BILL_ADDRESSLINE4,'
      'FDR.StateOrProvince'#9#9'AS BILL_STATEORPROVINCE,'
      'FDR.PostalCode'#9#9#9'AS BILL_POSTALCODE,'
      'FDrCY.CityName '#9#9#9'AS BILL_ADDRESSCITY,'
      'FDrCtry.CountryName '#9#9'AS BILL_ADDRESSCOUNTRY,'
      ''
      'ST_ADR.AddressName'#9#9#9'AS SHIPTO_ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS SHIPTO_ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS SHIPTO_ADDRESSLINE2,'#9
      'ST_ADR.AddressLine3'#9#9#9'AS SHIPTO_ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS SHIPTO_ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS SHIPTO_PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS SHIPTO_POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS SHIPTO_CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS SHIPTO_COUNTRY'
      ''
      ''
      ''
      ''
      'FROM dbo.Client C'
      '       left outer join ClientPreference CP'
      ''
      
        #9'INNER JOIN dbo.Currency'#9#9#9'CU'#9'ON'#9'CU.CurrencyNo'#9#9'= CP.DefaultCurr' +
        'encyNo'
      ''
      
        #9'INNER JOIN dbo.DeliveryTerm'#9#9'DT'#9'ON'#9'DT.DeliveryTerm_No'#9'= CP.Defa' +
        'ultDeliveryTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTerms'#9#9'PayT'#9'ON'#9'PayT.PaymentTermsNo'#9'= CP.D' +
        'efaultPaymentTermsNo'
      ''
      
        #9'INNER JOIN dbo.PaymentTermDesc'#9#9'PT'#9'ON'#9'PT.PaymentTermsNo'#9'= CP.De' +
        'faultPaymentTermsNo'
      #9#9#9#9#9#9#9'AND '#9'PT.LanguageCode'#9#9'= CP.LanguageCode'
      ''
      ''
      
        #9'INNER JOIN dbo.Address '#9#9'FDR'#9#9'ON'#9'FDR.AddressNo'#9#9'= CP.DefaultBil' +
        'lingAddressNo'
      #9'INNER JOIN dbo.CITY'#9#9'FDrCY'#9#9'ON'#9'FDrCY.CityNo '#9#9'= FDR.CityNo'
      
        #9'INNER JOIN dbo.Country'#9#9'FDrCtry'#9#9'ON'#9'FDrCtry.CountryNo '#9'= FDR.Co' +
        'untryNo'
      ''
      #9'LEFT OUTER JOIN dbo.Address '#9#9'ST_ADR'#9#9
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      #9#9#9#9#9#9#9'ON'#9'ST_ADR.AddressNo'#9'= CP.DefaultShippingAddressNo'
      ''
      #9#9#9#9#9' '#9#9'ON'#9'CP.ClientNo = C.ClientNo'
      ''
      'WHERE'
      'C.CLIENTNO = :CLIENTNO ')
    Left = 856
    Top = 224
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_ClientDataDefaultBillingAddressNo: TIntegerField
      FieldName = 'DefaultBillingAddressNo'
      Origin = 'DefaultBillingAddressNo'
    end
    object sq_ClientDataClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object sq_ClientDataClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_ClientDataInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Origin = 'InvoiceText'
      Size = 250
    end
    object sq_ClientDataLanguageCode: TIntegerField
      FieldName = 'LanguageCode'
      Origin = 'LanguageCode'
    end
    object sq_ClientDataDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      Origin = 'DeliveryTerm'
      Size = 21
    end
    object sq_ClientDataDeliveryTerm_No: TIntegerField
      FieldName = 'DeliveryTerm_No'
      Origin = 'DeliveryTerm_No'
    end
    object sq_ClientDataPaymentTermsNo: TIntegerField
      FieldName = 'PaymentTermsNo'
      Origin = 'PaymentTermsNo'
    end
    object sq_ClientDataPayDesc: TStringField
      FieldName = 'PayDesc'
      Origin = 'PayDesc'
      Size = 100
    end
    object sq_ClientDataFreightInDiscount: TSmallintField
      FieldName = 'FreightInDiscount'
      Origin = 'FreightInDiscount'
    end
    object sq_ClientDataFreightInCommission: TSmallintField
      FieldName = 'FreightInCommission'
      Origin = 'FreightInCommission'
    end
    object sq_ClientDataCommissionPaidByCustomer: TSmallintField
      FieldName = 'CommissionPaidByCustomer'
      Origin = 'CommissionPaidByCustomer'
    end
    object sq_ClientDataDiscount1: TFloatField
      FieldName = 'Discount1'
      Origin = 'Discount1'
    end
    object sq_ClientDataCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object sq_ClientDataCURRENCYNAME: TStringField
      FieldName = 'CURRENCYNAME'
      Origin = 'CURRENCYNAME'
      Size = 5
    end
    object sq_ClientDataBILL_ADDRESS_NAME: TStringField
      FieldName = 'BILL_ADDRESS_NAME'
      Origin = 'BILL_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataBILL_ADDRESSLINE1: TStringField
      FieldName = 'BILL_ADDRESSLINE1'
      Origin = 'BILL_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE2: TStringField
      FieldName = 'BILL_ADDRESSLINE2'
      Origin = 'BILL_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE3: TStringField
      FieldName = 'BILL_ADDRESSLINE3'
      Origin = 'BILL_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_ADDRESSLINE4: TStringField
      FieldName = 'BILL_ADDRESSLINE4'
      Origin = 'BILL_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_STATEORPROVINCE: TStringField
      FieldName = 'BILL_STATEORPROVINCE'
      Origin = 'BILL_STATEORPROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataBILL_POSTALCODE: TStringField
      FieldName = 'BILL_POSTALCODE'
      Origin = 'BILL_POSTALCODE'
      FixedChar = True
    end
    object sq_ClientDataBILL_ADDRESSCITY: TStringField
      FieldName = 'BILL_ADDRESSCITY'
      Origin = 'BILL_ADDRESSCITY'
      Size = 50
    end
    object sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField
      FieldName = 'BILL_ADDRESSCOUNTRY'
      Origin = 'BILL_ADDRESSCOUNTRY'
      Size = 30
    end
    object sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField
      FieldName = 'SHIPTO_ADDRESS_NAME'
      Origin = 'SHIPTO_ADDRESS_NAME'
      Size = 80
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE1'
      Origin = 'SHIPTO_ADDRESSLINE1'
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE2'
      Origin = 'SHIPTO_ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE3'
      Origin = 'SHIPTO_ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField
      FieldName = 'SHIPTO_ADDRESSLINE4'
      Origin = 'SHIPTO_ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_PROVINCE: TStringField
      FieldName = 'SHIPTO_PROVINCE'
      Origin = 'SHIPTO_PROVINCE'
      FixedChar = True
      Size = 40
    end
    object sq_ClientDataSHIPTO_POSTALCODE: TStringField
      FieldName = 'SHIPTO_POSTALCODE'
      Origin = 'SHIPTO_POSTALCODE'
      FixedChar = True
    end
    object sq_ClientDataSHIPTO_CITY: TStringField
      FieldName = 'SHIPTO_CITY'
      Origin = 'SHIPTO_CITY'
      Size = 50
    end
    object sq_ClientDataSHIPTO_COUNTRY: TStringField
      FieldName = 'SHIPTO_COUNTRY'
      Origin = 'SHIPTO_COUNTRY'
      Size = 30
    end
  end
  object cdsDestination: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_Cities'
    Left = 616
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
        Value = 0
      end>
    object cdsDestinationCityNo: TIntegerField
      FieldName = 'CityNo'
      Origin = 'CityNo'
      Required = True
    end
    object cdsDestinationCityName: TStringField
      FieldName = 'CityName'
      Origin = 'CityName'
      Size = 50
    end
  end
  object sq_UpdateLoad: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LocalShippingCompanyNo = :LocalShippingCompanyNo'
      'WHERE Loads.LoadNo = :LoadNo')
    Left = 760
    Top = 24
    ParamData = <
      item
        Name = 'LOCALSHIPPINGCOMPANYNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_UpdLoadII: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Update dbo.Loads'
      'Set LocalLoadingLocation = :LocalLoadingLocation,'
      'LocalDestinationNo = :LocalDestinationNo'
      'WHERE Loads.LoadNo = :LoadNo')
    Left = 760
    Top = 80
    ParamData = <
      item
        Name = 'LOCALLOADINGLOCATION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOCALDESTINATIONNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object sq_InsFakturaLoads: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      
        'Insert into dbo.LoadFreightCost (AvrakningsNo, LoadNo, M3_NET, P' +
        'ricePerM3_NET, TotalSUM,'
      'CreatedUser, ModifiedUser, DateCreated, DateModified, Note)'
      'Select :AvrakningNr, IL.LoadNo, SUM(PTD.Totalm3Actual),'
      ''
      ':TotalFrakt /'
      '(Select SUM(PTD.Totalm3Actual) FROM dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= IL.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo),'
      ''
      ':TotalFrakt /'
      '(Select SUM(PTD.Totalm3Actual) FROM dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= IL.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      'WHERE InternalInvoiceNo = :InternalInvoiceNo)'
      '* SUM(PTD.Totalm3Actual),'
      ''
      '8, 8, GetDate(), GetDate(), '#39#39
      ''
      'from dbo.Invoiced_Load IL'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'L.LoadNo '#9#9'= IL.LoadNo'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= L.LoadNo'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      ''
      'WHERE InternalInvoiceNo = :InternalInvoiceNo'
      ''
      'Group By IL.LoadNo'
      '')
    Left = 760
    Top = 136
    ParamData = <
      item
        Name = 'AVRAKNINGNR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TOTALFRAKT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TOTALFRAKT'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'INTERNALINVOICENO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object cdsClientAddress: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      ''
      'ST_ADR.AddressNo'#9#9#9'AS ADDRESS_NO,'
      'ST_ADR.AddressName'#9#9#9'AS ADDRESS_NAME,'
      'ST_ADR.AddressLine1'#9#9#9'AS ADDRESSLINE1,'
      'ST_ADR.AddressLine2'#9#9#9'AS ADDRESSLINE2,'
      'ST_ADR.AddressLine3'#9#9#9'AS ADDRESSLINE3,'
      'ST_ADR.AddressLine4'#9#9#9'AS ADDRESSLINE4,'
      'ST_ADR.StateOrProvince'#9#9#9'AS PROVINCE,'
      'ST_ADR.PostalCode'#9#9#9'AS POSTALCODE,'
      'ST_AdrCY.CityName '#9#9#9'AS CITY,'
      'ST_AdrCtry.CountryName '#9#9#9'AS COUNTRY'
      ''
      ''
      ''
      'FROM CompanyAddress ST'
      
        #9'INNER JOIN dbo.Address '#9#9'ST_ADR'#9#9'ON'#9'ST_ADR.AddressNo'#9'= ST.Addre' +
        'ssNo'
      
        #9'INNER JOIN dbo.CITY'#9#9'ST_AdrCY'#9'ON'#9'ST_AdrCY.CityNo '#9'= ST_ADR.City' +
        'No'
      
        #9'INNER JOIN dbo.Country'#9#9'ST_AdrCtry'#9'ON'#9'ST_AdrCtry.CountryNo '#9'= S' +
        'T_ADR.CountryNo'
      ''
      ''
      'WHERE'
      ' ST.ClientNo = :ClientNo'
      ' AND ST.AddressType = :AddressType')
    Left = 40
    Top = 152
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ADDRESSTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cdsClientAddressADDRESS_NO: TIntegerField
      FieldName = 'ADDRESS_NO'
      Origin = 'ADDRESS_NO'
      Required = True
    end
    object cdsClientAddressADDRESS_NAME: TStringField
      FieldName = 'ADDRESS_NAME'
      Origin = 'ADDRESS_NAME'
      Size = 80
    end
    object cdsClientAddressADDRESSLINE1: TStringField
      FieldName = 'ADDRESSLINE1'
      Origin = 'ADDRESSLINE1'
      Size = 40
    end
    object cdsClientAddressADDRESSLINE2: TStringField
      FieldName = 'ADDRESSLINE2'
      Origin = 'ADDRESSLINE2'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressADDRESSLINE3: TStringField
      FieldName = 'ADDRESSLINE3'
      Origin = 'ADDRESSLINE3'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressADDRESSLINE4: TStringField
      FieldName = 'ADDRESSLINE4'
      Origin = 'ADDRESSLINE4'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressPROVINCE: TStringField
      FieldName = 'PROVINCE'
      Origin = 'PROVINCE'
      FixedChar = True
      Size = 40
    end
    object cdsClientAddressPOSTALCODE: TStringField
      FieldName = 'POSTALCODE'
      Origin = 'POSTALCODE'
      FixedChar = True
    end
    object cdsClientAddressCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      Size = 50
    end
    object cdsClientAddressCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Required = True
      Size = 30
    end
  end
  object cds_LoadFC: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT distinct'
      'L.LoadNo AS Lastnr,'
      'L.FS AS FS,'
      'L.LoadID AS LastID,'
      'L.LoadedDate AS Utlastad,'
      'shipper.clientname AS Spedit'#246'r,'
      'FromPlace.CityName AS Utlastningsort,'
      'ToPlace.CityName AS Destination,'
      'SUM(PTD.Totalm3Actual) AS AM3,'
      'Count(LD.PackageNo) AS Paket,'
      'L.SupplierNo AS SupplierNo,'
      'LSP.ShippingPlanNo AS LO,'
      ''
      '0 AS Markerad,'
      '0.0 AS Belopp,'
      '0.0 AS PrisPerAM3SEK,'
      ''
      '(Select  Count(L2.FS) from dbo.Client_LoadingLocation     CLL2'
      
        'INNER JOIN dbo.LoadShippingPlan LSP2 ON LSP2.LoadingLocationNo =' +
        ' CLL2.PhyInvPointNameNo'
      'INNER JOIN dbo.Loads L2 ON L2.LoadNo = LSP2.LoadNo'
      'WHERE L2.FS = L.FS'
      'AND LSP2.ShippingPlanNo = LSP.ShippingPlanNo'
      'AND CLL2.ClientNo = 741'
      
        'AND  L2.LoadNo NOT IN (Select L3.LoadNo FROM dbo.LoadFreightCost' +
        ' L3'
      'WHERE L3.LoadNo = L2.LoadNo)) AS NoOfFS,'
      'L.LocalShippingCompanyNo AS ShippingCompanyNo,'
      'LSP.LoadingLocationNo,'
      'csh.CustomerNo,'
      'ssp.CustomerNo AS ssp_CustomerNo,'
      #39'                              '#39' AS Note'
      ''
      'FROM   dbo.Client_LoadingLocation     CLL'
      
        'INNER JOIN dbo.LoadShippingPlan LSP '#9#9'ON '#9'LSP.LoadingLocationNo ' +
        '= CLL.PhyInvPointNameNo'
      'INNER JOIN dbo.Loads L '#9#9#9#9'ON'#9'L.LoadNo '#9#9'= LSP.LoadNo'
      'INNER JOIN dbo.Loaddetail LD ON'#9'LD.LoadNo '#9#9'= LSP.LoadNo'
      'AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO'
      
        'INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.Package' +
        'TypeNo'
      
        'Left  outer join dbo.Client Shipper'#9'on shipper.clientno = L.Loca' +
        'lShippingCompanyNo'
      
        'Left  outer  join dbo.City FromPlace'#9'on FromPlace.CityNo = L.Loc' +
        'alLoadingLocation'
      
        'Left  outer  join dbo.City ToPlace'#9#9'on ToPlace.CityNo = L.LocalD' +
        'estinationNo'
      
        'Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanO' +
        'bjectNo = LD.DefsspNo'
      
        'Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = LSP.Lo' +
        'FDNo'
      '  '#9#9#9#9'and CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo'
      ''
      
        'Left  outer  join dbo.CustomerShippingPlanHeader csh on csh.Ship' +
        'pingPlanNo = ssp.ShippingPlanNo'
      ''
      ''
      'where'
      'CLL.ClientNo = 741'
      'AND L.LocalShippingCompanyNo = 132'
      'AND  L.LoadNo NOT IN (Select LoadNo FROM dbo.LoadFreightCost)'
      
        'group by L.LocalShippingCompanyNo,L.LoadNo, L.FS, L.LoadID, L.Lo' +
        'FDedDate, shipper.clientname,'
      'FromPlace.CityName, ToPlace.CityName,'
      'L.SupplierNo, LSP.ShippingPlanNo, L.LocalShippingCompanyNo,'
      'LSP.LoadingLocationNo, csh.CustomerNo, ssp.CustomerNo'
      'Order by L.LoadNo desc')
    Left = 224
    Top = 24
    object cds_LoadFCLastnr: TIntegerField
      FieldName = 'Lastnr'
      Origin = 'Lastnr'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCFS: TStringField
      FieldName = 'FS'
      Origin = 'FS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
    end
    object cds_LoadFCLastID: TStringField
      FieldName = 'LastID'
      Origin = 'LastID'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cds_LoadFCUtlastad: TSQLTimeStampField
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object cds_LoadFCUtlastningsort: TStringField
      FieldName = 'Utlastningsort'
      Origin = 'Utlastningsort'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cds_LoadFCDestination: TStringField
      FieldName = 'Destination'
      Origin = 'Destination'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cds_LoadFCAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,###,###.000'
    end
    object cds_LoadFCPaket: TIntegerField
      FieldName = 'Paket'
      Origin = 'Paket'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
      Origin = 'SupplierNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCMarkerad: TIntegerField
      FieldName = 'Markerad'
      Origin = 'Markerad'
      ProviderFlags = []
    end
    object cds_LoadFCBelopp: TBCDField
      FieldName = 'Belopp'
      Origin = 'Belopp'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.00'
      Precision = 1
      Size = 1
    end
    object cds_LoadFCPrisPerAM3SEK: TBCDField
      DisplayLabel = 'Pris'
      FieldName = 'PrisPerAM3SEK'
      Origin = 'PrisPerAM3SEK'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.00'
      Precision = 1
      Size = 1
    end
    object cds_LoadFCNoOfFS: TIntegerField
      DisplayLabel = 'FS dubletter'
      FieldName = 'NoOfFS'
      Origin = 'NoOfFS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCssp_CustomerNo: TIntegerField
      FieldName = 'ssp_CustomerNo'
      Origin = 'ssp_CustomerNo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cds_LoadFCNote: TStringField
      DisplayLabel = 'Notering'
      FieldName = 'Note'
      Origin = 'Note'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object cdsLoadFreightCost: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    SQL.Strings = (
      'select * from LoadFreightCost')
    Left = 600
    Top = 176
    object cdsLoadFreightCostAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadFreightCostLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLoadFreightCostM3_NET: TFloatField
      FieldName = 'M3_NET'
      Origin = 'M3_NET'
    end
    object cdsLoadFreightCostPricePerM3_NET: TFloatField
      FieldName = 'PricePerM3_NET'
      Origin = 'PricePerM3_NET'
    end
    object cdsLoadFreightCostTotalSUM: TFloatField
      FieldName = 'TotalSUM'
      Origin = 'TotalSUM'
    end
    object cdsLoadFreightCostCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
    end
    object cdsLoadFreightCostModifiedUser: TIntegerField
      FieldName = 'ModifiedUser'
      Origin = 'ModifiedUser'
    end
    object cdsLoadFreightCostDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
    end
    object cdsLoadFreightCostDateModified: TSQLTimeStampField
      FieldName = 'DateModified'
      Origin = 'DateModified'
    end
    object cdsLoadFreightCostNote: TStringField
      FieldName = 'Note'
      Origin = 'Note'
      Size = 30
    end
  end
  object cds_LF: TFDQuery
    CachedUpdates = True
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'cds_LFIndex01'
        Fields = 'InternalInvoiceNo;ShippingPlanNo'
      end>
    IndexName = 'cds_LFIndex01'
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amCancelDialog
    SQL.Strings = (
      'SELECT distinct'
      'IH.InvoiceType,'
      'IL.ShippingPlanNo,'
      'Inos.InvoiceNo AS Fakturanr,'
      'IH.InternalInvoiceNo,'
      ''
      'CuFrakt.CurrencyName AS FraktValuta,'
      'puFrakt.TemplateUnitName AS FraktEnhet,'
      'B.FreightCost AS Fraktkostnad,'
      '0 AS ConfirmFrakt,'
      ''
      '(Select SUM(ALO.AmountAttested) FROM'
      'dbo.Att_Ext_LO ALO'
      
        'Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.Sequens' +
        'No = ALO.SequensNo'
      'WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND ALO.ShippingPlanNo = IL.ShippingPlanNo'
      'AND AttestHead.Description = '#39'Frakt'#39') AS Frakt,'
      ''
      '(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      'AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND invd.TypeOfRow = 3) AS Fraktkostnad_sum,'
      ''
      'IH.InvoiceDate AS Utlastad,'
      'shipper.clientname AS Spedit'#246'r,'
      ''
      '(Select SUM(invd.ActualNetM3) from dbo.InvoiceDetail invd'
      'WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo'
      'AND invd.ShippingPlanNo = IL.ShippingPlanNo'
      'AND invd.TypeOfRow = 1) AS AM3,'
      ''
      'B.ShippingCompanyNo AS ShippingCompanyNo,'
      ''
      'IH.Total_Product_Value_No_Freight'#9'AS Varuv'#228'rde,'
      'IH.Tot_Inv_Inc_Freight_Extras'#9#9'AS Fakturav'#228'rde,'
      ''
      'IH.AgentCommission AS Kommission_Percent,'
      'IH.Commission AS Kommission_Sum,'
      'IH.FreightInCommission AS Kommission_villkor,'
      'IH.CurrencyName AS ValutaFaktura,'
      'IH.AgentName AS Agent,'
      'IH.AgentNo,'
      'IH.CustomerName AS Kund,'
      '0 AS ConfirmKomm,'
      ''
      '(Select SUM(ALO.AmountAttested) FROM'
      'dbo.Att_Ext_LO ALO'
      
        'Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.Sequens' +
        'No = ALO.SequensNo'
      'WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND ALO.ShippingPlanNo = IL.ShippingPlanNo'
      'AND AttestHead.Description = '#39'Komm'#39') AS Komm,'
      ''
      ''
      
        'CuFrakt.CurrencyNo AS FraktCurrencyNo, IH.CurrencyNo AS KommCurr' +
        'encyNo,'
      'CuFrakt.CurrencyNo AS ValutaNr'
      ''
      
        'FROM dbo.Invoiceheader IH -- on IH.InternalInvoiceNo = IL.Intern' +
        'alInvoiceNo'
      
        'INNER JOIN dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.In' +
        'ternalInvoiceNo'
      
        'Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.Interna' +
        'lInvoiceNo'
      ''
      ''
      'Inner Join dbo.Booking B'
      
        'Left Outer Join dbo.Currency CuFrakt on CuFrakt.CurrencyNo = B.F' +
        'reightCostCurrency'
      
        'Left Outer Join dbo.PackUnit puFrakt on puFrakt.TemplateUnitNo =' +
        ' B.FreightCostVolUnit'
      
        'Left Outer join Client Shipper'#9'on shipper.clientno = B.ShippingC' +
        'ompanyNo'
      'on B.ShippingPlanNo = IL.ShippingPlanNo'
      ''
      'where IH.InternalInvoiceNo = -11'
      '--OH.SalesRegionNo = 741'
      '--AND B.ShippingCompanyNo = :ShippingCompanyNo'
      '--AND  L.LoadNo NOT IN (Select LoadNo FROM dbo.LoadFreightCost)'
      ''
      'Order By IL.ShippingPlanNo, IH.InternalInvoiceNo')
    Left = 392
    Top = 328
    object cds_LFAM3: TFloatField
      FieldName = 'AM3'
      Origin = 'AM3'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.000'
    end
    object cds_LFInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
      Origin = 'InternalInvoiceNo'
      ProviderFlags = []
    end
    object cds_LFKommission_Percent: TFloatField
      DisplayLabel = 'Komm %'
      FieldName = 'Kommission_Percent'
      Origin = 'Kommission_Percent'
      ProviderFlags = []
      DisplayFormat = '##.00'
    end
    object cds_LFKommission_Sum: TFloatField
      DisplayLabel = 'Kommission sum'
      FieldName = 'Kommission_Sum'
      Origin = 'Kommission_Sum'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFKommission_villkor: TIntegerField
      DisplayLabel = 'Kommission villkor'
      FieldName = 'Kommission_villkor'
      Origin = 'Kommission_villkor'
      ProviderFlags = []
    end
    object cds_LFValutaFaktura: TStringField
      FieldName = 'ValutaFaktura'
      Origin = 'ValutaFaktura'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cds_LFAgent: TStringField
      FieldName = 'Agent'
      Origin = 'Agent'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cds_LFKund: TStringField
      FieldName = 'Kund'
      Origin = 'Kund'
      ProviderFlags = []
      FixedChar = True
      Size = 80
    end
    object cds_LFShippingPlanNo: TIntegerField
      DisplayLabel = 'LO'
      FieldName = 'ShippingPlanNo'
      Origin = 'ShippingPlanNo'
      ProviderFlags = []
    end
    object cds_LFFakturanr: TIntegerField
      FieldName = 'Fakturanr'
      Origin = 'Fakturanr'
      ProviderFlags = []
    end
    object cds_LFFraktValuta: TStringField
      DisplayLabel = 'Valuta(frakt)'
      FieldName = 'FraktValuta'
      Origin = 'FraktValuta'
      ProviderFlags = []
      Size = 5
    end
    object cds_LFFraktEnhet: TStringField
      DisplayLabel = 'Fraktkostnad/enhet'
      FieldName = 'FraktEnhet'
      Origin = 'FraktEnhet'
      ProviderFlags = []
    end
    object cds_LFFraktkostnad: TFloatField
      FieldName = 'Fraktkostnad'
      Origin = 'Fraktkostnad'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFConfirmFrakt: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmFrakt'
      Origin = 'ConfirmFrakt'
      ProviderFlags = []
      OnChange = cds_LFConfirmFraktChange
    end
    object cds_LFFraktkostnad_sum: TFloatField
      DisplayLabel = 'Fraktkostnad sum'
      FieldName = 'Fraktkostnad_sum'
      Origin = 'Fraktkostnad_sum'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFUtlastad: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'Utlastad'
      Origin = 'Utlastad'
      ProviderFlags = []
    end
    object cds_LFSpeditr: TStringField
      FieldName = 'Spedit'#246'r'
      Origin = '[Spedit'#246'r]'
      ProviderFlags = []
      Size = 80
    end
    object cds_LFShippingCompanyNo: TIntegerField
      FieldName = 'ShippingCompanyNo'
      Origin = 'ShippingCompanyNo'
      ProviderFlags = []
    end
    object cds_LFVaruvrde: TFloatField
      FieldName = 'Varuv'#228'rde'
      Origin = '[Varuv'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFFakturavrde: TFloatField
      FieldName = 'Fakturav'#228'rde'
      Origin = '[Fakturav'#228'rde]'
      ProviderFlags = []
      DisplayFormat = '#,###,###,###.0'
    end
    object cds_LFConfirmKomm: TIntegerField
      DisplayLabel = 'Gdk/Avr'
      FieldName = 'ConfirmKomm'
      Origin = 'ConfirmKomm'
      OnChange = cds_LFConfirmKommChange
    end
    object cds_LFFrakt: TFloatField
      FieldName = 'Frakt'
      Origin = 'Frakt'
      OnChange = cds_LFFraktChange
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_LFKomm: TFloatField
      FieldName = 'Komm'
      Origin = 'Komm'
      OnChange = cds_LFKommChange
      DisplayFormat = '#,###,###,###.00'
    end
    object cds_LFFraktCurrencyNo: TIntegerField
      FieldName = 'FraktCurrencyNo'
      Origin = 'FraktCurrencyNo'
    end
    object cds_LFKommCurrencyNo: TIntegerField
      FieldName = 'KommCurrencyNo'
      Origin = 'KommCurrencyNo'
    end
    object cds_LFAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
    end
    object cds_LFInvoiceType: TIntegerField
      FieldName = 'InvoiceType'
      Origin = 'InvoiceType'
      ProviderFlags = []
    end
    object cds_LFValutaNr: TIntegerField
      FieldName = 'ValutaNr'
      Origin = 'ValutaNr'
      ProviderFlags = []
    end
    object cds_LFEgenValuta: TStringField
      DisplayLabel = 'Att.valuta'
      FieldKind = fkLookup
      FieldName = 'EgenValuta'
      LookupDataSet = dmsSystem.cds_Currency
      LookupKeyFields = 'CurrencyNo'
      LookupResultField = 'CurrencyName'
      KeyFields = 'ValutaNr'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
  end
  object sq_GetLoadNo: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'select distinct LoadNo From dbo.LoadShippingPlan'
      'Where ShippingPlanNo = :LO')
    Left = 392
    Top = 200
    ParamData = <
      item
        Name = 'LO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_GetLoadNoLoadNo: TIntegerField
      FieldName = 'LoadNo'
      Origin = 'LoadNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sq_FindAvr: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'SELECT'
      'LFC.AvrakningsNo, ve.ClientName AS VERK, LFCH.VerkNo'
      ''
      'FROM LoadFreightCost LFC'
      
        'Inner Join dbo.LoadFreightCostHeader LFCH ON LFCH.AvrakningsNo =' +
        ' LFC.AvrakningsNo'
      'Left Outer Join dbo.Client ve On ve.ClientNo = LFCH.VerkNo'
      'WHERE LFC.LoadNo = :LoadNo')
    Left = 392
    Top = 264
    ParamData = <
      item
        Name = 'LOADNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object sq_FindAvrAvrakningsNo: TIntegerField
      FieldName = 'AvrakningsNo'
      Origin = 'AvrakningsNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sq_FindAvrVERK: TStringField
      FieldName = 'VERK'
      Origin = 'VERK'
      Size = 80
    end
    object sq_FindAvrVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
  end
  object sq_GetAddressNo: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select AddressNo From ShippingPlan_ShippingAddress'
      'Where '
      'ShippingPlanNo = :ShippingPlanNo'
      'AND Reference = :Reference')
    Left = 856
    Top = 168
    ParamData = <
      item
        Name = 'SHIPPINGPLANNO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REFERENCE'
        DataType = ftString
        ParamType = ptInput
      end>
    object sq_GetAddressNoAddressNo: TIntegerField
      FieldName = 'AddressNo'
      Origin = 'AddressNo'
      Required = True
    end
  end
  object sp_PcsPerLength: TFDStoredProc
    Connection = dmsConnector.FDConnection1
    StoredProcName = 'vida_GetPiecesPerLengthTEST'
    Left = 40
    Top = 264
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
        Name = '@PicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end
      item
        Position = 4
        Name = '@NomPicesPerLength'
        DataType = ftString
        ParamType = ptInputOutput
        Size = 8000
      end>
  end
  object FDmSelectedRows: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 592
    Top = 416
    object FDmSelectedRowsInternalInvoiceNo: TIntegerField
      FieldName = 'InternalInvoiceNo'
    end
    object FDmSelectedRowsLONo: TIntegerField
      FieldName = 'LONo'
    end
    object FDmSelectedRowsSupplier_InvoiceNo: TStringField
      FieldName = 'Supplier_InvoiceNo'
      Size = 50
    end
    object FDmSelectedRowsSupplier_InvoiceDate: TDateTimeField
      FieldName = 'Supplier_InvoiceDate'
    end
    object FDmSelectedRowsTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object FDmSelectedRowsAmount: TFloatField
      FieldName = 'Amount'
    end
    object FDmSelectedRowsSHIPPINGCOMPANYNO: TIntegerField
      FieldName = 'SHIPPINGCOMPANYNO'
    end
    object FDmSelectedRowsCURRENCYNO: TIntegerField
      FieldName = 'CURRENCYNO'
    end
    object FDmSelectedRowsFakturanr: TIntegerField
      FieldName = 'Fakturanr'
    end
    object FDmSelectedRowsNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
  end
  object ds_LFALL: TDataSource
    Left = 40
    Top = 568
  end
end
