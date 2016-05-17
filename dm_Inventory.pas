unit dm_Inventory;

interface

uses
  Forms,  SysUtils, Classes, FMTBcd, kbmMemTable, Dialogs, Controls, VidaType, SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DateUtils, DB, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL ;

type
  TdmInventory = class(TDataModule)
    ds_LengthGroup: TDataSource;
    ds_ProductLengthInGroup: TDataSource;
    sq_Specie: TFDQuery;
    sq_Speciespeciescode: TStringField;
    sq_SpecieSpeciesNo: TIntegerField;
    sq_SpeciespeciesName: TStringField;
    sq_grade: TFDQuery;
    sq_gradeGradeName: TStringField;
    sq_gradeGradeNo: TIntegerField;
    sq_gradegradecode: TStringField;
    cds_PC: TFDQuery;
    cds_PCImpCode: TStringField;
    cds_PCProductCategoryNo: TIntegerField;
    cds_PCProductCategoryName: TStringField;
    cds_LengthGroup: TFDQuery;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cds_LengthGroupNoOfLengths: TIntegerField;
    sq_AT: TFDQuery;
    sq_ATAT: TFloatField;
    sq_AB: TFDQuery;
    sq_ABAB: TFloatField;
    sq_AL: TFDQuery;
    sq_ALAL: TFloatField;
    sq_GroupLengths: TFDQuery;
    sq_GroupLengthsActualLengthMM: TFloatField;
    cds_ProductLengthInGroup: TFDQuery;
    cds_ProductLengthInGroupALMM: TFloatField;
    cds_ProductLengthInGroupNLMM: TFloatField;
    cds_ProductLengthInGroupFOT: TFloatField;
    cds_ProductLengthInGroupTUM: TStringField;
    cds_BookingHdr: TFDQuery;
    cds_BookingHdrBookingNo: TIntegerField;
    cds_BookingHdrsspNo: TIntegerField;
    cds_BookingHdrUtfall: TBCDField;
    ds_BookingHdr: TDataSource;
    cds_BookingDtl: TFDQuery;
    ds_BookingDtl: TDataSource;
    cds_BookingDtlBookingNo: TIntegerField;
    cds_BookingDtlBookedProductNo: TIntegerField;
    cds_BookingDtlBookedNM3: TBCDField;
    cds_BookingDtlDateCreated: TSQLTimeStampField;
    cds_BookingDtlCreatedUser: TIntegerField;
    cds_BookingDtlProdukt: TStringField;
    cds_BookingHdrProductNo: TIntegerField;
    cds_BookingHdrProductLengthNo: TIntegerField;
    cds_BookingHdrDateCreated: TSQLTimeStampField;
    cds_BookingHdrCreatedUser: TIntegerField;
    cds_BookingHdrProdukt: TStringField;
    cds_BookingHdrALMM: TFloatField;
    cds_BookingHdrLngdbeskrivning: TStringField;
    cds_BookingMaster: TFDQuery;
    ds_BookingMaster: TDataSource;
    cds_BookingMasterBookingNo: TIntegerField;
    cds_BookingMasterYearWeek: TStringField;
    cds_BookingMasterNotering: TMemoField;
    cds_BookingMasterDateCreated: TSQLTimeStampField;
    cds_BookingMasterCreatedUser: TIntegerField;
    cds_BookingHdrNM3: TBCDField;
    cds_BookingHdrAM3: TBCDField;
    cds_BookingDtlProductNo: TIntegerField;
    cds_BookingDtlUtfall: TBCDField;
    cds_BookingDtlBookedALMM: TFloatField;
    cds_BookingDtlProductLengthNo: TIntegerField;
    cds_BookingDtlBookedAM3: TBCDField;
    cds_VolResDtl: TFDQuery;
    ds_VolResDtl: TDataSource;
    cds_VolResDtlUserID: TIntegerField;
    cds_VolResDtlProductNo: TIntegerField;
    cds_VolResDtlALMM: TIntegerField;
    cds_VolResDtlLagerTotal: TBCDField;
    cds_VolResDtlPrevWeek: TBCDField;
    cds_VolResDtlPostWeek: TBCDField;
    cds_VolResDtlWeek1: TBCDField;
    cds_VolResDtlWeek2: TBCDField;
    cds_VolResDtlWeek3: TBCDField;
    cds_VolResDtlWeek4: TBCDField;
    cds_VolResDtlWeek5: TBCDField;
    cds_VolResDtlWeek6: TBCDField;
    cds_VolResDtlWeek7: TBCDField;
    cds_VolResDtlWeek8: TBCDField;
    cds_VolResDtlWeek9: TBCDField;
    cds_VolResDtlWeek10: TBCDField;
    sp_PeriodBooking: TFDStoredProc;
    cds_BookingDtlUserName: TStringField;
    cds_BookingDtlPIPNo: TIntegerField;
    cds_BookingDtlStatus: TIntegerField;
    cds_BookingMasterStatus: TIntegerField;
    cds_BookingMasterClientNo: TIntegerField;
    cds_BookingDtlUsedAM3: TBCDField;
    cds_BookingDtlPlannedOutputAM3: TBCDField;
    cds_BookingMasterUserName: TStringField;
    sp_GetCurrentSD: TFDStoredProc;
    sp_GetVolPerLG: TFDStoredProc;
    ds_GetVolPerLG: TDataSource;
    sp_GetVolPerLGNM3: TFloatField;
    sp_GetVolPerLGLagergrupp: TStringField;
    cds_BookingHdrSortingOrderNo: TIntegerField;
    cds_BookingHdrLONr: TIntegerField;
    cds_BookingDtlPkgFormat: TIntegerField;
    cds_BookingDtlNT: TFloatField;
    cds_BookingDtlNB: TFloatField;
    cds_BookingDtlBookedLIPGroupNo: TIntegerField;
    cds_BookingHdrKund: TStringField;
    cds_VolResDtlInvGrouping: TIntegerField;
    cds_VolResDtlInvGroupName: TStringField;
    cds_BookingDtlLager: TStringField;
    cds_BookingMasterProductionUnitNo: TIntegerField;
    cds_BookingMasterPlannedProductionTime: TBCDField;
    ds_ProductionUnit: TDataSource;
    cds_ProductionUnit: TFDQuery;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitMTPUNKT: TStringField;
    cds_ProductionUnitProducerNo: TIntegerField;
    cds_ProductionUnitTypeOfUnit: TIntegerField;
    cds_ProductionUnitProdUnitNo: TIntegerField;
    cds_ProductionUnitCost: TFloatField;
    cds_ProductionUnitLonPerTimme: TFloatField;
    cds_ProductionUnitLegoCostPerAM3: TBCDField;
    cds_OtherBookings: TFDQuery;
    cds_OtherBookingsProdukt: TStringField;
    cds_OtherBookingsYearWeek: TStringField;
    cds_OtherBookingsKund: TStringField;
    cds_OtherBookingsLONr: TIntegerField;
    cds_OtherBookingsLO_Lngdbesk: TStringField;
    ds_OtherBookings: TDataSource;
    cds_OtherBookingsRegAv: TStringField;
    cds_Scheduler: TFDQuery;
    ds_Scheduler: TDataSource;
    cds_SchedulerResourceID: TIntegerField;
    cds_SchedulerStart: TSQLTimeStampField;
    cds_SchedulerDuration: TFloatField;
    cds_SchedulerYearWeek: TStringField;
    cds_SchedulerID: TIntegerField;
    cds_SchedulerCaption: TStringField;
    cds_SchedulerTaskStatusField: TIntegerField;
    cds_SchedulerMtpunkt: TStringField;
    cds_SchedulerUserID: TIntegerField;
    cds_SchedulerVerkNo: TIntegerField;
    sq_PopulateTabs: TFDQuery;
    sq_PopulateTabsID: TIntegerField;
    sq_PopulateTabsYearWeek: TStringField;
    cds_SchedulerBookingNo: TIntegerField;
    cds_BookingDtlID: TIntegerField;
    cds_BookingHdrStartWeek: TStringField;
    cds_BookingHdrEndWeek: TStringField;
    cds_BookingDtlsspNo: TIntegerField;
    cds_BookingHdrBokadNM3: TFMTBCDField;
    cds_BookingHdrNM3PlanFardig: TFMTBCDField;
    cds_OtherBookingsBookingNo: TIntegerField;
    cds_OtherBookingsID: TIntegerField;
    upd_OtherBookings: TFDUpdateSQL;
    cds_OtherBookingsProductNo: TIntegerField;
    cds_OtherBookingsProductLengthNo: TIntegerField;
    cds_OtherBookingsBookedProductNo: TIntegerField;
    cds_OtherBookingsBookedALMM: TFloatField;
    cds_OtherBookingsBookedLIPGroupNo: TIntegerField;
    cds_OtherBookingssspNo: TIntegerField;
    cds_OtherBookingsDateCreated: TSQLTimeStampField;
    cds_OtherBookingsStatus: TIntegerField;
    cds_OtherBookingsPIPNo: TIntegerField;
    cds_OtherBookingsCreatedUser: TIntegerField;
    cds_OtherBookingsUtfall: TBCDField;
    cds_OtherBookingsPkgFormat: TIntegerField;
    upd_cxSchedulerTable: TFDUpdateSQL;
    cds_SchedulerPostningstid: TBCDField;
    cds_SchedulerPreCalcEfficiencyFactor: TBCDField;
    cds_SchedulerFeedSpeed: TBCDField;
    cds_SchedulerPlannedProductionTime: TBCDField;
    cds_SchedulerPlannedWorkingTime: TBCDField;
    cds_BookingHdrM1: TFloatField;
    cds_SchedulerDateCreated: TSQLTimeStampField;
    cds_SchedulerUserName: TStringField;
    cds_BookingDtlM1: TFloatField;
    cds_Dim: TFDQuery;
    cds_DimNT: TFloatField;
    cds_DimNB: TFloatField;
    cds_SchedulerFixedDate: TIntegerField;
    cds_SchedulerOwnerNo: TIntegerField;
    cds_SchedulerWeekNo: TIntegerField;
    cds_SchedulerYearNo: TIntegerField;
    cds_BookHdrLink: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cds_BookingHdrRestNM3: TFloatField;
    cds_BookingHdrNoOfUnits: TFloatField;
    cds_BookingHdrPackageWidth: TIntegerField;
    cds_BookingHdrPackageHeight: TIntegerField;
    cds_BookingHdrVolumeUnitNo: TIntegerField;
    cds_BookingHdrBookedByID: TFMTBCDField;
    cds_SchedulerFinish: TSQLTimeStampField;
    sp_MergeBookings: TFDStoredProc;
    cds_BookingDtlBookedProductLengthNo: TIntegerField;
    cds_BookingDtlModifiedUser: TIntegerField;
    cds_BookingDtlMainRawMtrl: TIntegerField;
    cds_BookingDtlAntalLamellerUt: TIntegerField;
    cds_BookingDtlLengthSpec: TStringField;
    cds_BookingDtlPlannedOutputNoOfUnits: TFloatField;
    cds_BookingDtlMCClassNo: TIntegerField;
    cds_BookingDtlPlannedOutputNM3: TBCDField;
    cds_DimAT: TFloatField;
    cds_DimAB: TFloatField;
    cds_BookingDtlAT: TFloatField;
    cds_BookingDtlAB: TFloatField;
    cds_BookingDtlUsedNM3: TBCDField;
    cds_OtherBookingsBookedAM3: TBCDField;
    cds_OtherBookingsUsedAM3: TBCDField;
    cds_OtherBookingsPlannedOutputAM3: TBCDField;
    cds_OtherBookingsBookedNM3: TBCDField;
    cds_BookingMasterOwnerNo: TIntegerField;
    cds_BookingHdrAT: TFloatField;
    cds_BookingHdrAB: TFloatField;
    cds_BookingHdrUnit: TStringField;
    mt_temp: TFDMemTable;
    cds_Products: TFDQuery;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductDisplayName: TStringField;
    cds_fAT: TFDQuery;
    cds_fATAT: TFloatField;
    cds_fATUserID: TIntegerField;
    cds_SchedulerEventType: TIntegerField;
    cds_SchedulerLabelColor: TIntegerField;
    cds_SchedulerOptions: TIntegerField;
    cds_SchedulerState: TIntegerField;
    cds_GetDimensions: TFDQuery;
    cds_GetDimensionsFirstAT: TFloatField;
    cds_GetDimensionsLastAT: TFloatField;
    cds_GetDimensionsFirstAB: TFloatField;
    cds_GetDimensionsLastAB: TFloatField;
    cds_OtherBookingsOrgYearWeek: TStringField;
    cds_DeleteBookingGroup: TFDQuery;
    mt_tempsspNo: TIntegerField;
    cds_SchedulerProductionUnitNo: TIntegerField;
    cds_BookingDtlPlannedAM1: TBCDField;
    cdsSawmillLoadOrders: TFDQuery;
    cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField;
    cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField;
    cdsSawmillLoadOrdersREADYDATE: TStringField;
    cdsSawmillLoadOrdersINITIALS: TStringField;
    cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField;
    cdsSawmillLoadOrdersLONumber: TIntegerField;
    cdsSawmillLoadOrdersPackageCode: TStringField;
    cdsSawmillLoadOrdersProduct: TStringField;
    cdsSawmillLoadOrdersLength: TStringField;
    cdsSawmillLoadOrdersFromWeek: TIntegerField;
    cdsSawmillLoadOrdersToWeek: TIntegerField;
    cdsSawmillLoadOrdersVolume: TFloatField;
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField;
    cdsSawmillLoadOrdersShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersOrderNoText: TStringField;
    cdsSawmillLoadOrdersUnitName: TStringField;
    cdsSawmillLoadOrdersDestination: TStringField;
    cdsSawmillLoadOrdersClientName: TStringField;
    cdsSawmillLoadOrdersMARKNAD: TStringField;
    cdsSawmillLoadOrdersReference: TStringField;
    cdsSawmillLoadOrdersSupplier: TIntegerField;
    cdsSawmillLoadOrdersCHCustomerNo: TIntegerField;
    cdsSawmillLoadOrdersSPCustomerNO: TIntegerField;
    cdsSawmillLoadOrdersCustomerPrice: TFloatField;
    cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersSUPP_NAME: TStringField;
    cdsSawmillLoadOrdersLOCAL_CUST: TStringField;
    cdsSawmillLoadOrdersObjectType: TIntegerField;
    cdsSawmillLoadOrdersORDERTYPE: TIntegerField;
    cdsSawmillLoadOrdersSHIPTO: TStringField;
    cdsSawmillLoadOrdersLOADING: TStringField;
    cdsSawmillLoadOrdersDelivery_WeekNo: TIntegerField;
    cdsSawmillLoadOrdersCSH_CustomerNo: TIntegerField;
    cdsSawmillLoadOrdersShipToInvPointNo: TIntegerField;
    cdsSawmillLoadOrdersLoadingLocationNo: TIntegerField;
    cdsSawmillLoadOrdersBarCode: TStringField;
    cdsSawmillLoadOrdersREFERENS: TStringField;
    cdsSawmillLoadOrdersSKAPAD: TSQLTimeStampField;
    cdsSawmillLoadOrdersNT: TFloatField;
    cdsSawmillLoadOrdersNB: TFloatField;
    cdsSawmillLoadOrdersAT: TFloatField;
    cdsSawmillLoadOrdersAB: TFloatField;
    cdsSawmillLoadOrdersTT: TStringField;
    cdsSawmillLoadOrdersTB: TStringField;
    cdsSawmillLoadOrdersTS: TStringField;
    cdsSawmillLoadOrdersUT: TStringField;
    cdsSawmillLoadOrdersKV: TStringField;
    cdsSawmillLoadOrdersPK: TStringField;
    cdsSawmillLoadOrdersINTLNGD: TStringField;
    cdsSawmillLoadOrdersRADREFERENS: TStringField;
    cdsSawmillLoadOrdersPris: TStringField;
    cdsSawmillLoadOrdersProductGroupNo: TIntegerField;
    cdsSawmillLoadOrdersPriceListName: TStringField;
    cdsSawmillLoadOrdersPcsPerPkg: TIntegerField;
    cdsSawmillLoadOrdersPackageWidth: TIntegerField;
    cdsSawmillLoadOrdersPackageHeight: TIntegerField;
    cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField;
    cdsSawmillLoadOrdersProdInstruNo: TIntegerField;
    cdsSawmillLoadOrdersProductNo: TIntegerField;
    cdsSawmillLoadOrdersProductLengthNo: TIntegerField;
    cdsSawmillLoadOrdersLanguageCode: TIntegerField;
    cdsSawmillLoadOrdersALMM: TFloatField;
    cdsSawmillLoadOrdersSequenceNo: TIntegerField;
    cdsSawmillLoadOrdersOrderLineNo: TIntegerField;
    cdsSawmillLoadOrdersOrderNo: TIntegerField;
    cdsSawmillLoadOrdersModifiedUser: TIntegerField;
    cdsSawmillLoadOrdersOrder_AM3: TFloatField;
    cdsSawmillLoadOrdersLengthSpec: TStringField;
    cdsSawmillLoadOrdersNM3: TFloatField;
    cdsSawmillLoadOrdersVolumeUnitNo: TIntegerField;
    cdsSawmillLoadOrdersMarketNo: TIntegerField;
    dsrcSawmillLoadOrders: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    cds_PIP: TFDQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cds_LIPPIPNo: TIntegerField;
    ds_LOBuffertParams: TDataSource;
    cds_LOBuffertParams: TFDQuery;
    cds_LOBuffertParamsLOBuffertNo: TIntegerField;
    cds_LOBuffertParamsVerkNo: TIntegerField;
    cds_LOBuffertParamsPIPNo: TIntegerField;
    cds_LOBuffertParamsLIPNo: TIntegerField;
    cds_LOBuffertParamsLOBuffertName: TStringField;
    cds_LOBuffertParamsPIP: TStringField;
    cds_LOBuffertParamsLIP: TStringField;
    ds_Producer: TDataSource;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_LOBuffertParamsVerk: TStringField;
    cds_LOBuffert: TFDQuery;
    cds_LOBuffertLOBuffertNo: TIntegerField;
    cds_LOBuffertPackageTypeNo: TIntegerField;
    cds_LOBuffertProdukt: TStringField;
    cds_LOBuffertProductNo: TIntegerField;
    cds_LOBuffertLengthSpec: TStringField;
    ds_LOBuffert: TDataSource;
    sp_LOBUffertStep1: TFDStoredProc;
    cds_LOBuffertInventory: TFloatField;
    cds_LOBuffertOnOrder: TFloatField;
    cds_LOBuffertRest: TFloatField;
    cds_LOBuffertDelivered: TFloatField;
    cds_LOBuffertArrivals: TFloatField;
    cds_LOBuffertInquiry: TFloatField;
    cds_LOBuffertPeriod1: TFloatField;
    cds_LOBuffertPeriod2: TFloatField;
    cds_LOBuffertPeriod3: TFloatField;
    cds_LOBuffertPeriod4: TFloatField;
    cds_LOBuffertPeriod5: TFloatField;
    cds_LOBuffertPeriod6: TFloatField;
    cds_LOBuffertPeriod7: TFloatField;
    cds_LOBuffertPeriod8: TFloatField;
    cds_LOBuffertAvailable: TFloatField;
    cdsSawmillLoadOrdersPaket: TIntegerField;
    cds_LOBuffertBooked: TFloatField;
    cds_LOBuffertPeriod9: TFloatField;
    cds_LOBuffertPeriod10: TFloatField;
    cds_LOBuffertNM3: TFloatField;
    cds_LOBuffertProductLengthNo: TIntegerField;
    cds_LOBuffertAM3: TFloatField;
    cds_BookingHdrSortingOrderRowNo: TIntegerField;
    cds_BookingHdrPackageTypeNo: TIntegerField;
    cds_SchedulerLocationNo: TIntegerField;
    cds_SchedulerLOBuffertNo: TIntegerField;
    cdsLOLayer1: TFDQuery;
    cdsLOLayer1KONTRAKTSBESKRIVNING: TStringField;
    cdsLOLayer1ShippersShipDate: TSQLTimeStampField;
    cdsLOLayer1READYDATE: TStringField;
    cdsLOLayer1INITIALS: TStringField;
    cdsLOLayer1ShippingPlanStatus: TIntegerField;
    cdsLOLayer1LONumber: TIntegerField;
    cdsLOLayer1PackageCode: TStringField;
    cdsLOLayer1Product: TStringField;
    cdsLOLayer1Length: TStringField;
    cdsLOLayer1FromWeek: TIntegerField;
    cdsLOLayer1ToWeek: TIntegerField;
    cdsLOLayer1Volume: TFloatField;
    cdsLOLayer1sspno: TIntegerField;
    cdsLOLayer1ShowInGrid: TIntegerField;
    cdsLOLayer1OrderNoText: TStringField;
    cdsLOLayer1UnitName: TStringField;
    cdsLOLayer1Destination: TStringField;
    cdsLOLayer1ClientName: TStringField;
    cdsLOLayer1MARKNAD: TStringField;
    cdsLOLayer1MarketNo: TIntegerField;
    cdsLOLayer1Reference: TStringField;
    cdsLOLayer1Supplier: TIntegerField;
    cdsLOLayer1CHCustomerNo: TIntegerField;
    cdsLOLayer1SPCustomerNO: TIntegerField;
    cdsLOLayer1CustomerPrice: TFloatField;
    cdsLOLayer1CustomerShowInGrid: TIntegerField;
    cdsLOLayer1SUPP_NAME: TStringField;
    cdsLOLayer1LOCAL_CUST: TStringField;
    cdsLOLayer1ObjectType: TIntegerField;
    cdsLOLayer1ORDERTYPE: TIntegerField;
    cdsLOLayer1SHIPTO: TStringField;
    cdsLOLayer1LOADING: TStringField;
    cdsLOLayer1Delivery_WeekNo: TIntegerField;
    cdsLOLayer1CSH_CustomerNo: TIntegerField;
    cdsLOLayer1ShipToInvPointNo: TIntegerField;
    cdsLOLayer1LoadingLocationNo: TIntegerField;
    cdsLOLayer1BarCode: TStringField;
    cdsLOLayer1REFERENS: TStringField;
    cdsLOLayer1SKAPAD: TSQLTimeStampField;
    cdsLOLayer1NT: TFloatField;
    cdsLOLayer1NB: TFloatField;
    cdsLOLayer1AT: TFloatField;
    cdsLOLayer1AB: TFloatField;
    cdsLOLayer1TT: TStringField;
    cdsLOLayer1TB: TStringField;
    cdsLOLayer1TS: TStringField;
    cdsLOLayer1UT: TStringField;
    cdsLOLayer1KV: TStringField;
    cdsLOLayer1PK: TStringField;
    cdsLOLayer1INTLNGD: TStringField;
    cdsLOLayer1RADREFERENS: TStringField;
    cdsLOLayer1Pris: TStringField;
    cdsLOLayer1ProductGroupNo: TIntegerField;
    cdsLOLayer1PriceListName: TStringField;
    cdsLOLayer1PcsPerPkg: TIntegerField;
    cdsLOLayer1PackageWidth: TIntegerField;
    cdsLOLayer1PackageHeight: TIntegerField;
    cdsLOLayer1PkgCodePPNo: TIntegerField;
    cdsLOLayer1ProdInstruNo: TIntegerField;
    cdsLOLayer1ProductNo: TIntegerField;
    cdsLOLayer1ProductLengthNo: TIntegerField;
    cdsLOLayer1LanguageCode: TIntegerField;
    cdsLOLayer1ALMM: TFloatField;
    cdsLOLayer1SequenceNo: TIntegerField;
    cdsLOLayer1OrderLineNo: TIntegerField;
    cdsLOLayer1OrderNo: TIntegerField;
    cdsLOLayer1ModifiedUser: TIntegerField;
    cdsLOLayer1Order_AM3: TFloatField;
    cdsLOLayer1LengthSpec: TStringField;
    cdsLOLayer1NM3: TFloatField;
    cdsLOLayer1VolumeUnitNo: TIntegerField;
    cdsLOLayer1SurfacingNo: TIntegerField;
    dsLOLayer: TDataSource;
    cdsSawmillLoadOrdersAcceptedBySupplier: TIntegerField;
    FDmLOLayer: TFDMemTable;
    FDmLOLayerALMM: TFloatField;
    FDmLOLayerProductLengthNo: TIntegerField;
    FDmLOLayerPackageTypeNo: TIntegerField;
    FDmLOLayersALMM: TStringField;
    FDmLOLayerNoOfPcs: TIntegerField;
    FDmLOLayerProductNo: TIntegerField;
    FDmLOLayersspNo: TIntegerField;
    FDmLOLayerPcsPerLength: TStringField;
    FDmLOLayerNomThick: TFloatField;
    FDmLOLayerSurfacingNo: TIntegerField;
    FDmLOLayerNoOfUnits: TFloatField;
    FDmLOLayerLengthDesc: TStringField;
    FDmLOLayerAM3: TFloatField;
    FDmLOLayerNM3: TFloatField;
    FDmLOLayerVolumeUnitNo: TIntegerField;
    dsadmLOLayer: TDataSource;
    sp_CrePkgType: TFDStoredProc;
    sp_insLOLayer2: TFDStoredProc;
    cdsSawmillLoadOrdersSurfacingNo: TIntegerField;
    FDmLOLayerLONo: TIntegerField;
    FDmLOLayerLOBuffertNo: TIntegerField;
    cdsSawmillLoadOrdersOrderBy: TFloatField;
    upd_SawMillLoadOrders: TFDUpdateSQL;
    sp_LOLevelOne: TFDStoredProc;
    ds_LOLevelOne: TDataSource;
    sp_LOLevelTwo: TFDStoredProc;
    ds_LOLevelTwo: TDataSource;
    sp_LOLevelThree: TFDStoredProc;
    ds_LOLevelThree: TDataSource;
    sp_LOLevelTwoKontraktsbeskrivning: TStringField;
    sp_LOLevelTwoShippersShipDate: TSQLTimeStampField;
    sp_LOLevelTwoPreliminaryRequestedPeriod: TStringField;
    sp_LOLevelTwoRegAv: TStringField;
    sp_LOLevelTwoShippingPlanStatus: TIntegerField;
    sp_LOLevelTwoShippingPlanNo: TIntegerField;
    sp_LOLevelTwoPackageCode: TStringField;
    sp_LOLevelTwoProductDescription: TStringField;
    sp_LOLevelTwoLengthDescription: TStringField;
    sp_LOLevelTwoFom_vecka: TIntegerField;
    sp_LOLevelTwoTom_vecka: TIntegerField;
    sp_LOLevelTwoNoOfUnits: TFloatField;
    sp_LOLevelTwoSupplierShipPlanObjectNo: TIntegerField;
    sp_LOLevelTwoShowInGrid: TIntegerField;
    sp_LOLevelTwoOrderNoText: TStringField;
    sp_LOLevelTwoUnitName: TStringField;
    sp_LOLevelTwoSlutDestination: TStringField;
    sp_LOLevelTwoKund: TStringField;
    sp_LOLevelTwoMarknad: TStringField;
    sp_LOLevelTwoMarketNo: TIntegerField;
    sp_LOLevelTwoReference: TStringField;
    sp_LOLevelTwoSupplierNo: TIntegerField;
    sp_LOLevelTwoCustomerNo: TIntegerField;
    sp_LOLevelTwoInternCustomerNo: TIntegerField;
    sp_LOLevelTwoCustomerPrice: TFloatField;
    sp_LOLevelTwoCustomerShowInGrid: TIntegerField;
    sp_LOLevelTwoVerk: TStringField;
    sp_LOLevelTwoInternKund: TStringField;
    sp_LOLevelTwoObjectType: TIntegerField;
    sp_LOLevelTwoKontraktstyp: TIntegerField;
    sp_LOLevelTwoInternDestination: TStringField;
    sp_LOLevelTwoLaststalle: TStringField;
    sp_LOLevelTwoDelivery_WeekNo: TIntegerField;
    sp_LOLevelTwoShipToInvPointNo: TIntegerField;
    sp_LOLevelTwoLoadingLocationNo: TIntegerField;
    sp_LOLevelTwoBarCode: TStringField;
    sp_LOLevelTwoKundreferens: TStringField;
    sp_LOLevelTwoDateCreated: TSQLTimeStampField;
    sp_LOLevelTwoNT: TFloatField;
    sp_LOLevelTwoNB: TFloatField;
    sp_LOLevelTwoAT: TFloatField;
    sp_LOLevelTwoAB: TFloatField;
    sp_LOLevelTwoTT: TStringField;
    sp_LOLevelTwoTB: TStringField;
    sp_LOLevelTwoTS: TStringField;
    sp_LOLevelTwoUT: TStringField;
    sp_LOLevelTwoKV: TStringField;
    sp_LOLevelTwoPK: TStringField;
    sp_LOLevelTwoINTLNGD: TStringField;
    sp_LOLevelTwoRadreferens: TStringField;
    sp_LOLevelTwoPris: TStringField;
    sp_LOLevelTwoProductGroupNo: TIntegerField;
    sp_LOLevelTwoPcsPerPkg: TIntegerField;
    sp_LOLevelTwoPackageWidth: TIntegerField;
    sp_LOLevelTwoPackageHeight: TIntegerField;
    sp_LOLevelTwoPkgCodePPNo: TIntegerField;
    sp_LOLevelTwoProdInstruNo: TIntegerField;
    sp_LOLevelTwoProductNo: TIntegerField;
    sp_LOLevelTwoProductLengthNo: TIntegerField;
    sp_LOLevelTwoLanguageCode: TIntegerField;
    sp_LOLevelTwoALMM: TFloatField;
    sp_LOLevelTwoSequenceNo: TIntegerField;
    sp_LOLevelTwoOrderLineNo: TIntegerField;
    sp_LOLevelTwoOrderNo: TIntegerField;
    sp_LOLevelTwoModifiedUser: TIntegerField;
    sp_LOLevelTwoAM3: TFloatField;
    sp_LOLevelTwoLengthSpec: TStringField;
    sp_LOLevelTwoNM3: TFloatField;
    sp_LOLevelTwoVolumeUnitNo: TIntegerField;
    sp_LOLevelTwoPaket: TIntegerField;
    sp_LOLevelTwoAcceptedBySupplier: TIntegerField;
    sp_LOLevelTwoSurfacingNo: TIntegerField;
    sp_LOLevelTwoOrderBy: TFloatField;
    sp_InsIntLOHdr: TFDStoredProc;
    sp_LOLevelOneShippersShipDate: TSQLTimeStampField;
    sp_LOLevelOnePreliminaryRequestedPeriod: TStringField;
    sp_LOLevelOneStatus: TIntegerField;
    sp_LOLevelOneShippingPlanNo: TIntegerField;
    sp_LOLevelOneDef_StartETDYearWeek: TIntegerField;
    sp_LOLevelOneDef_StartETAYearWeek: TIntegerField;
    sp_LOLevelOneKund: TStringField;
    sp_LOLevelOneMarketRegionNo: TIntegerField;
    sp_LOLevelOneSupplierNo: TIntegerField;
    sp_LOLevelOneVerk: TStringField;
    sp_LOLevelOneInternDestination: TStringField;
    sp_LOLevelOneLaststalle: TStringField;
    sp_LOLevelOneDefaultShipToInvPointNo: TIntegerField;
    sp_LOLevelOneDef_LoadingLocationNo: TIntegerField;
    sp_LOLevelOneKundreferens: TStringField;
    sp_LOLevelOneOrderType: TIntegerField;
    sp_LOEjBokade: TFDStoredProc;
    ds_LOEjBokade: TDataSource;
    sp_LOEjBokadeKONTRAKTSBESKRIVNING: TStringField;
    sp_LOEjBokadeShippersShipDate: TSQLTimeStampField;
    sp_LOEjBokadeREADYDATE: TStringField;
    sp_LOEjBokadeINITIALS: TStringField;
    sp_LOEjBokadeShippingPlanStatus: TIntegerField;
    sp_LOEjBokadeLONumber: TIntegerField;
    sp_LOEjBokadePackageCode: TStringField;
    sp_LOEjBokadeProduct: TStringField;
    sp_LOEjBokadeLength: TStringField;
    sp_LOEjBokadeFromWeek: TIntegerField;
    sp_LOEjBokadeToWeek: TIntegerField;
    sp_LOEjBokadeVolume: TFloatField;
    sp_LOEjBokadeSupplierShipPlanObjectNo: TIntegerField;
    sp_LOEjBokadeShowInGrid: TIntegerField;
    sp_LOEjBokadeOrderNoText: TStringField;
    sp_LOEjBokadeUnitName: TStringField;
    sp_LOEjBokadeDestination: TStringField;
    sp_LOEjBokadeClientName: TStringField;
    sp_LOEjBokadeMARKNAD: TStringField;
    sp_LOEjBokadeMarketNo: TIntegerField;
    sp_LOEjBokadeReference: TStringField;
    sp_LOEjBokadeSupplier: TIntegerField;
    sp_LOEjBokadeCHCustomerNo: TIntegerField;
    sp_LOEjBokadeSPCustomerNO: TIntegerField;
    sp_LOEjBokadeCustomerPrice: TFloatField;
    sp_LOEjBokadeCustomerShowInGrid: TIntegerField;
    sp_LOEjBokadeSUPP_NAME: TStringField;
    sp_LOEjBokadeLOCAL_CUST: TStringField;
    sp_LOEjBokadeObjectType: TIntegerField;
    sp_LOEjBokadeORDERTYPE: TIntegerField;
    sp_LOEjBokadeSHIPTO: TStringField;
    sp_LOEjBokadeLOADING: TStringField;
    sp_LOEjBokadeDelivery_WeekNo: TIntegerField;
    sp_LOEjBokadeCSH_CustomerNo: TIntegerField;
    sp_LOEjBokadeShipToInvPointNo: TIntegerField;
    sp_LOEjBokadeLoadingLocationNo: TIntegerField;
    sp_LOEjBokadeBarCode: TStringField;
    sp_LOEjBokadeREFERENS: TStringField;
    sp_LOEjBokadeSKAPAD: TSQLTimeStampField;
    sp_LOEjBokadeNT: TFloatField;
    sp_LOEjBokadeNB: TFloatField;
    sp_LOEjBokadeAT: TFloatField;
    sp_LOEjBokadeAB: TFloatField;
    sp_LOEjBokadeTT: TStringField;
    sp_LOEjBokadeTB: TStringField;
    sp_LOEjBokadeTS: TStringField;
    sp_LOEjBokadeUT: TStringField;
    sp_LOEjBokadeKV: TStringField;
    sp_LOEjBokadePK: TStringField;
    sp_LOEjBokadeINTLNGD: TStringField;
    sp_LOEjBokadeRADREFERENS: TStringField;
    sp_LOEjBokadePris: TStringField;
    sp_LOEjBokadeProductGroupNo: TIntegerField;
    sp_LOEjBokadePriceListName: TStringField;
    sp_LOEjBokadePcsPerPkg: TIntegerField;
    sp_LOEjBokadePackageWidth: TIntegerField;
    sp_LOEjBokadePackageHeight: TIntegerField;
    sp_LOEjBokadePkgCodePPNo: TIntegerField;
    sp_LOEjBokadeProdInstruNo: TIntegerField;
    sp_LOEjBokadeProductNo: TIntegerField;
    sp_LOEjBokadeProductLengthNo: TIntegerField;
    sp_LOEjBokadeLanguageCode: TIntegerField;
    sp_LOEjBokadeALMM: TFloatField;
    sp_LOEjBokadeSequenceNo: TIntegerField;
    sp_LOEjBokadeOrderLineNo: TIntegerField;
    sp_LOEjBokadeOrderNo: TIntegerField;
    sp_LOEjBokadeModifiedUser: TIntegerField;
    sp_LOEjBokadeOrder_AM3: TFloatField;
    sp_LOEjBokadeLengthSpec: TStringField;
    sp_LOEjBokadeNM3: TFloatField;
    sp_LOEjBokadeVolumeUnitNo: TIntegerField;
    sp_LOEjBokadePaket: TIntegerField;
    sp_LOEjBokadeAcceptedBySupplier: TIntegerField;
    sp_LOEjBokadeSurfacingNo: TIntegerField;
    sp_LOEjBokadeOrderBy: TFloatField;
    upd_LOLevelOne: TFDUpdateSQL;
    upd_LOLevelThree: TFDUpdateSQL;
    sp_LOLevelThreeSupplierShipPlanObjectNo: TIntegerField;
    sp_LOLevelThreeCustShipPlanDetailObjectNo: TIntegerField;
    sp_LOLevelThreeShipType: TIntegerField;
    sp_LOLevelThreeObjectType: TIntegerField;
    sp_LOLevelThreeOrderNo: TIntegerField;
    sp_LOLevelThreeOrderLineNo: TIntegerField;
    sp_LOLevelThreeShippingPlanNo: TIntegerField;
    sp_LOLevelThreeSupplierNo: TIntegerField;
    sp_LOLevelThreeLoadingLocationNo: TIntegerField;
    sp_LOLevelThreeDeliveryTermsNo: TIntegerField;
    sp_LOLevelThreePaymentTermsNo: TIntegerField;
    sp_LOLevelThreePrice: TFloatField;
    sp_LOLevelThreeCurrencyNo: TIntegerField;
    sp_LOLevelThreeNoOfUnits: TFloatField;
    sp_LOLevelThreePriceUnitNo: TIntegerField;
    sp_LOLevelThreeVolumeUnitNo: TIntegerField;
    sp_LOLevelThreeDestinationNo: TIntegerField;
    sp_LOLevelThreeShippingPlanStatus: TIntegerField;
    sp_LOLevelThreeStartETDYearWeek: TIntegerField;
    sp_LOLevelThreeEndETDYearWeek: TIntegerField;
    sp_LOLevelThreeInternalNote: TStringField;
    sp_LOLevelThreeProductDescription: TStringField;
    sp_LOLevelThreeLengthDescription: TStringField;
    sp_LOLevelThreeAcceptedBySupplier: TIntegerField;
    sp_LOLevelThreeProductLengthNo: TIntegerField;
    sp_LOLevelThreeProductGroupNo: TIntegerField;
    sp_LOLevelThreeActualM3Net: TFloatField;
    sp_LOLevelThreeShipToInvPointNo: TIntegerField;
    sp_LOLevelThreeProductNo: TIntegerField;
    sp_LOLevelThreeLOText: TMemoField;
    sp_LOLevelThreeMinActualLengthMM: TFloatField;
    sp_LOLevelThreeMaxActualLengthMM: TFloatField;
    sp_LOLevelThreePackageCode: TStringField;
    sp_LOLevelThreeFreightOrderByClientNo: TIntegerField;
    sp_LOLevelThreeSequenceNo: TIntegerField;
    sp_LOLevelThreeCreatedUser: TIntegerField;
    sp_LOLevelThreeModifiedUser: TIntegerField;
    sp_LOLevelThreeDateCreated: TSQLTimeStampField;
    sp_LOLevelThreePartnerNo: TIntegerField;
    sp_LOLevelThreeProdInstructNo: TIntegerField;
    sp_LOLevelThreeShowInGrid: TIntegerField;
    sp_LOLevelThreePcsPerPkg: TIntegerField;
    sp_LOLevelThreeCustomerNo: TIntegerField;
    sp_LOLevelThreeCustomerPrice: TFloatField;
    sp_LOLevelThreeCustomerShowInGrid: TIntegerField;
    sp_LOLevelThreeLO_No: TIntegerField;
    sp_LOLevelThreeDelivery_WeekNo: TIntegerField;
    sp_LOLevelThreeDateModified: TSQLTimeStampField;
    sp_LOLevelThreeLengthTyp: TStringField;
    sp_LOLevelThreeReference: TStringField;
    sp_LOLevelThreeLIPNo: TIntegerField;
    sp_LOLevelThreePkgCodePPNo: TIntegerField;
    sp_LOLevelThreePriceListNo: TIntegerField;
    sp_LOLevelThreeInternKundFrakt: TFloatField;
    sp_LOLevelThreePackageWidth: TIntegerField;
    sp_LOLevelThreePackageHeight: TIntegerField;
    sp_LOLevelThreeLengthSpec: TStringField;
    sp_LOLevelThreeOrderBy: TFloatField;
    sp_LOLevelThreeNM3ext: TFloatField;
    sp_LOLevelThreeNM3int: TFloatField;
    sp_LOLevelThreeUnitName: TStringField;
    sp_LOLevelThreeALMM: TFloatField;
    sp_LOLevelThreeSurfacingNo: TIntegerField;
    sp_LOLevelThreeRegAv: TStringField;
    sp_LOLevelThreeAvailPeriod: TFloatField;
    sp_LOLevelThreeAvailNetto: TFloatField;
    sp_InqLevelOne: TFDStoredProc;
    ds_InqLevelOne: TDataSource;
    cds_LOBuffertParamsUserID: TIntegerField;
    cds_LOBuffertParamsMarketRegionNo: TIntegerField;
    cds_LOBuffertParamsMarket: TStringField;
    sp_InqLevelOneOrderNo: TIntegerField;
    sp_InqLevelOneObjectType: TIntegerField;
    sp_InqLevelOneStatus: TIntegerField;
    sp_InqLevelOneShippingPlanNo: TIntegerField;
    sp_InqLevelOneDef_StartETDYearWeek: TIntegerField;
    sp_InqLevelOneDef_StartETAYearWeek: TIntegerField;
    sp_InqLevelOneMarketRegionNo: TIntegerField;
    sp_InqLevelOneSupplierNo: TIntegerField;
    sp_InqLevelOneCustomerNo: TIntegerField;
    sp_InqLevelOneVerk: TStringField;
    sp_InqLevelOneInternDestination: TStringField;
    sp_InqLevelOneLaststalle: TStringField;
    sp_InqLevelOneDefaultShipToInvPointNo: TIntegerField;
    sp_InqLevelOneDef_LoadingLocationNo: TIntegerField;
    sp_InqLevelOneOrderType: TIntegerField;
    sp_InqLevelOneCreatedUser: TIntegerField;
    sp_InqLevelOneModifiedUser: TIntegerField;
    sp_InqLevelOneDateCreated: TSQLTimeStampField;
    sp_InqLevelOnePeriod: TIntegerField;
    sp_InqLevelOneVoyageNo: TIntegerField;
    sp_InqLevelTwo: TFDStoredProc;
    ds_InqLevelTwo: TDataSource;
    sp_InqLevelTwoSupplierShipPlanObjectNo: TIntegerField;
    sp_InqLevelTwoCustShipPlanDetailObjectNo: TIntegerField;
    sp_InqLevelTwoShipType: TIntegerField;
    sp_InqLevelTwoObjectType: TIntegerField;
    sp_InqLevelTwoOrderNo: TIntegerField;
    sp_InqLevelTwoOrderLineNo: TIntegerField;
    sp_InqLevelTwoShippingPlanNo: TIntegerField;
    sp_InqLevelTwoSupplierNo: TIntegerField;
    sp_InqLevelTwoLoadingLocationNo: TIntegerField;
    sp_InqLevelTwoDeliveryTermsNo: TIntegerField;
    sp_InqLevelTwoPaymentTermsNo: TIntegerField;
    sp_InqLevelTwoPrice: TFloatField;
    sp_InqLevelTwoCurrencyNo: TIntegerField;
    sp_InqLevelTwoNoOfUnits: TFloatField;
    sp_InqLevelTwoPriceUnitNo: TIntegerField;
    sp_InqLevelTwoVolumeUnitNo: TIntegerField;
    sp_InqLevelTwoDestinationNo: TIntegerField;
    sp_InqLevelTwoShippingPlanStatus: TIntegerField;
    sp_InqLevelTwoStartETDYearWeek: TIntegerField;
    sp_InqLevelTwoEndETDYearWeek: TIntegerField;
    sp_InqLevelTwoInternalNote: TStringField;
    sp_InqLevelTwoProductDescription: TStringField;
    sp_InqLevelTwoLengthDescription: TStringField;
    sp_InqLevelTwoAcceptedBySupplier: TIntegerField;
    sp_InqLevelTwoProductLengthNo: TIntegerField;
    sp_InqLevelTwoProductGroupNo: TIntegerField;
    sp_InqLevelTwoActualM3Net: TFloatField;
    sp_InqLevelTwoShipToInvPointNo: TIntegerField;
    sp_InqLevelTwoProductNo: TIntegerField;
    sp_InqLevelTwoLOText: TMemoField;
    sp_InqLevelTwoMinActualLengthMM: TFloatField;
    sp_InqLevelTwoMaxActualLengthMM: TFloatField;
    sp_InqLevelTwoPackageCode: TStringField;
    sp_InqLevelTwoFreightOrderByClientNo: TIntegerField;
    sp_InqLevelTwoSequenceNo: TIntegerField;
    sp_InqLevelTwoCreatedUser: TIntegerField;
    sp_InqLevelTwoModifiedUser: TIntegerField;
    sp_InqLevelTwoDateCreated: TSQLTimeStampField;
    sp_InqLevelTwoPartnerNo: TIntegerField;
    sp_InqLevelTwoProdInstructNo: TIntegerField;
    sp_InqLevelTwoShowInGrid: TIntegerField;
    sp_InqLevelTwoPcsPerPkg: TIntegerField;
    sp_InqLevelTwoCustomerNo: TIntegerField;
    sp_InqLevelTwoCustomerPrice: TFloatField;
    sp_InqLevelTwoCustomerShowInGrid: TIntegerField;
    sp_InqLevelTwoLO_No: TIntegerField;
    sp_InqLevelTwoDelivery_WeekNo: TIntegerField;
    sp_InqLevelTwoDateModified: TSQLTimeStampField;
    sp_InqLevelTwoLengthTyp: TStringField;
    sp_InqLevelTwoReference: TStringField;
    sp_InqLevelTwoLIPNo: TIntegerField;
    sp_InqLevelTwoPkgCodePPNo: TIntegerField;
    sp_InqLevelTwoPriceListNo: TIntegerField;
    sp_InqLevelTwoInternKundFrakt: TFloatField;
    sp_InqLevelTwoPackageWidth: TIntegerField;
    sp_InqLevelTwoPackageHeight: TIntegerField;
    sp_InqLevelTwoLengthSpec: TStringField;
    sp_InqLevelTwoOrderBy: TFloatField;
    sp_InqLevelTwoNM3ext: TFloatField;
    sp_InqLevelTwoNM3int: TFloatField;
    sp_InqLevelTwoUnitName: TStringField;
    sp_InqLevelTwoALMM: TFloatField;
    sp_InqLevelTwoSurfacingNo: TIntegerField;
    sp_InqLevelTwoRegAv: TStringField;
    sp_InqLevelThree: TFDStoredProc;
    ds_InqLevelThree: TDataSource;
    sp_InqLevelThreeSupplierShipPlanObjectNo: TIntegerField;
    sp_InqLevelThreeCustShipPlanDetailObjectNo: TIntegerField;
    sp_InqLevelThreeShipType: TIntegerField;
    sp_InqLevelThreeObjectType: TIntegerField;
    sp_InqLevelThreeOrderNo: TIntegerField;
    sp_InqLevelThreeOrderLineNo: TIntegerField;
    sp_InqLevelThreeShippingPlanNo: TIntegerField;
    sp_InqLevelThreeSupplierNo: TIntegerField;
    sp_InqLevelThreeLoadingLocationNo: TIntegerField;
    sp_InqLevelThreeDeliveryTermsNo: TIntegerField;
    sp_InqLevelThreePaymentTermsNo: TIntegerField;
    sp_InqLevelThreePrice: TFloatField;
    sp_InqLevelThreeCurrencyNo: TIntegerField;
    sp_InqLevelThreeNoOfUnits: TFloatField;
    sp_InqLevelThreePriceUnitNo: TIntegerField;
    sp_InqLevelThreeVolumeUnitNo: TIntegerField;
    sp_InqLevelThreeDestinationNo: TIntegerField;
    sp_InqLevelThreeShippingPlanStatus: TIntegerField;
    sp_InqLevelThreeStartETDYearWeek: TIntegerField;
    sp_InqLevelThreeEndETDYearWeek: TIntegerField;
    sp_InqLevelThreeInternalNote: TStringField;
    sp_InqLevelThreeProductDescription: TStringField;
    sp_InqLevelThreeLengthDescription: TStringField;
    sp_InqLevelThreeAcceptedBySupplier: TIntegerField;
    sp_InqLevelThreeProductLengthNo: TIntegerField;
    sp_InqLevelThreeProductGroupNo: TIntegerField;
    sp_InqLevelThreeActualM3Net: TFloatField;
    sp_InqLevelThreeShipToInvPointNo: TIntegerField;
    sp_InqLevelThreeProductNo: TIntegerField;
    sp_InqLevelThreeLOText: TMemoField;
    sp_InqLevelThreeMinActualLengthMM: TFloatField;
    sp_InqLevelThreeMaxActualLengthMM: TFloatField;
    sp_InqLevelThreePackageCode: TStringField;
    sp_InqLevelThreeFreightOrderByClientNo: TIntegerField;
    sp_InqLevelThreeSequenceNo: TIntegerField;
    sp_InqLevelThreeCreatedUser: TIntegerField;
    sp_InqLevelThreeModifiedUser: TIntegerField;
    sp_InqLevelThreeDateCreated: TSQLTimeStampField;
    sp_InqLevelThreePartnerNo: TIntegerField;
    sp_InqLevelThreeProdInstructNo: TIntegerField;
    sp_InqLevelThreeShowInGrid: TIntegerField;
    sp_InqLevelThreePcsPerPkg: TIntegerField;
    sp_InqLevelThreeCustomerNo: TIntegerField;
    sp_InqLevelThreeCustomerPrice: TFloatField;
    sp_InqLevelThreeCustomerShowInGrid: TIntegerField;
    sp_InqLevelThreeLO_No: TIntegerField;
    sp_InqLevelThreeDelivery_WeekNo: TIntegerField;
    sp_InqLevelThreeDateModified: TSQLTimeStampField;
    sp_InqLevelThreeLengthTyp: TStringField;
    sp_InqLevelThreeReference: TStringField;
    sp_InqLevelThreeLIPNo: TIntegerField;
    sp_InqLevelThreePkgCodePPNo: TIntegerField;
    sp_InqLevelThreePriceListNo: TIntegerField;
    sp_InqLevelThreeInternKundFrakt: TFloatField;
    sp_InqLevelThreePackageWidth: TIntegerField;
    sp_InqLevelThreePackageHeight: TIntegerField;
    sp_InqLevelThreeLengthSpec: TStringField;
    sp_InqLevelThreeOrderBy: TFloatField;
    sp_InqLevelThreeNM3ext: TFloatField;
    sp_InqLevelThreeNM3int: TFloatField;
    sp_InqLevelThreeUnitName: TStringField;
    sp_InqLevelThreeALMM: TFloatField;
    sp_InqLevelThreeSurfacingNo: TIntegerField;
    sp_InqLevelThreeRegAv: TStringField;
    cds_LOBuffertPPP: TIntegerField;
    upd_InqLevelTwo: TFDUpdateSQL;
    cds_LOBuffertALMM: TFloatField;
    sp_InqLevelThreeAvailPeriod: TFloatField;
    sp_InqLevelThreeAvailNetto: TFloatField;
    sp_InqLevelThreeINQPeriod: TFloatField;
    sp_InqLevelThreeINQTotal: TFloatField;
    sp_LOLevelOneMiniText: TStringField;
    sp_InqLevelOneKund: TStringField;
    sp_InqLevelOneMiniText: TStringField;
    sp_LOLevelOneInternKund: TStringField;
    sp_LOLevelOneOrderNo: TIntegerField;
    sp_LOLevelOneCustomerNo: TIntegerField;
    sp_LOLevelOneDestinationNo: TIntegerField;
    sp_LOLevelOneOrderNoText: TStringField;
    sp_LOLevelOneDefaultDeliveryTermsNo: TIntegerField;
    sp_LOLevelOneDefaultPaymentTermsNo: TIntegerField;
    sp_LOLevelOneDefaultCurrencyNo: TIntegerField;
    sp_LOLevelOneProductDisplayFormat: TIntegerField;
    sp_LOLevelOneDefaultVolumeUnitNo: TIntegerField;
    sp_LOLevelOneVoyageNo: TIntegerField;
    sp_LOLevelOneDefaultPriceUnitNo: TIntegerField;
    sp_LOLevelOneSalesRegionNo: TIntegerField;
    sp_LOLevelOneLengthFormat: TIntegerField;
    sp_LOLevelOneLanguageCode: TIntegerField;
    sp_LOLevelOneSequenceNo: TIntegerField;
    sp_LOLevelOneCreatedUser: TIntegerField;
    sp_LOLevelOneModifiedUser: TIntegerField;
    sp_LOLevelOneDateCreated: TSQLTimeStampField;
    sp_LOLevelOneLO_No: TIntegerField;
    sp_LOLevelOneDefaultLIPNo: TIntegerField;
    sp_LOLevelOnePriceListNo: TIntegerField;
    sp_LOLevelOneVatExempt: TIntegerField;
    sp_LOLevelOneInternKundFrakt: TFloatField;
    sp_LOLevelOneAutoPkgCode: TIntegerField;
    sp_LOLevelOneMiniTextFS: TIntegerField;
    sp_LOLevelOneMiniTextLO: TIntegerField;
    sp_LOLevelOnePeriod: TIntegerField;
    sp_LOLevelOneObjecttype: TIntegerField;
    sp_UtlastLevelOne: TFDStoredProc;
    sp_UtlastLevelOneShippersShipDate: TSQLTimeStampField;
    sp_UtlastLevelOnePreliminaryRequestedPeriod: TStringField;
    sp_UtlastLevelOneStatus: TIntegerField;
    sp_UtlastLevelOneShippingPlanNo: TIntegerField;
    sp_UtlastLevelOneDef_StartETDYearWeek: TIntegerField;
    sp_UtlastLevelOneDef_StartETAYearWeek: TIntegerField;
    sp_UtlastLevelOneKund: TStringField;
    sp_UtlastLevelOneMarketRegionNo: TIntegerField;
    sp_UtlastLevelOneSupplierNo: TIntegerField;
    sp_UtlastLevelOneVerk: TStringField;
    sp_UtlastLevelOneInternDestination: TStringField;
    sp_UtlastLevelOneLaststalle: TStringField;
    sp_UtlastLevelOneDefaultShipToInvPointNo: TIntegerField;
    sp_UtlastLevelOneDef_LoadingLocationNo: TIntegerField;
    sp_UtlastLevelOneKundreferens: TStringField;
    sp_UtlastLevelOneOrderType: TIntegerField;
    sp_UtlastLevelOneMiniText: TStringField;
    sp_UtlastLevelOneInternKund: TStringField;
    sp_UtlastLevelOneOrderNo: TIntegerField;
    sp_UtlastLevelOneCustomerNo: TIntegerField;
    sp_UtlastLevelOneDestinationNo: TIntegerField;
    sp_UtlastLevelOneOrderNoText: TStringField;
    sp_UtlastLevelOneDefaultDeliveryTermsNo: TIntegerField;
    sp_UtlastLevelOneDefaultPaymentTermsNo: TIntegerField;
    sp_UtlastLevelOneDefaultCurrencyNo: TIntegerField;
    sp_UtlastLevelOneProductDisplayFormat: TIntegerField;
    sp_UtlastLevelOneDefaultVolumeUnitNo: TIntegerField;
    sp_UtlastLevelOneVoyageNo: TIntegerField;
    sp_UtlastLevelOneDefaultPriceUnitNo: TIntegerField;
    sp_UtlastLevelOneSalesRegionNo: TIntegerField;
    sp_UtlastLevelOneLengthFormat: TIntegerField;
    sp_UtlastLevelOneLanguageCode: TIntegerField;
    sp_UtlastLevelOneSequenceNo: TIntegerField;
    sp_UtlastLevelOneCreatedUser: TIntegerField;
    sp_UtlastLevelOneModifiedUser: TIntegerField;
    sp_UtlastLevelOneDateCreated: TSQLTimeStampField;
    sp_UtlastLevelOneLO_No: TIntegerField;
    sp_UtlastLevelOneDefaultLIPNo: TIntegerField;
    sp_UtlastLevelOnePriceListNo: TIntegerField;
    sp_UtlastLevelOneVatExempt: TIntegerField;
    sp_UtlastLevelOneInternKundFrakt: TFloatField;
    sp_UtlastLevelOneAutoPkgCode: TIntegerField;
    sp_UtlastLevelOneMiniTextFS: TIntegerField;
    sp_UtlastLevelOneMiniTextLO: TIntegerField;
    sp_UtlastLevelOnePeriod: TIntegerField;
    sp_UtlastLevelOneObjecttype: TIntegerField;
    ds_UtlastLevelOne: TDataSource;
    sp_UtlastLevelTwo: TFDStoredProc;
    sp_UtlastLevelTwoKontraktsbeskrivning: TStringField;
    sp_UtlastLevelTwoShippersShipDate: TSQLTimeStampField;
    sp_UtlastLevelTwoPreliminaryRequestedPeriod: TStringField;
    sp_UtlastLevelTwoRegAv: TStringField;
    sp_UtlastLevelTwoShippingPlanStatus: TIntegerField;
    sp_UtlastLevelTwoShippingPlanNo: TIntegerField;
    sp_UtlastLevelTwoPackageCode: TStringField;
    sp_UtlastLevelTwoProductDescription: TStringField;
    sp_UtlastLevelTwoLengthDescription: TStringField;
    sp_UtlastLevelTwoFom_vecka: TIntegerField;
    sp_UtlastLevelTwoTom_vecka: TIntegerField;
    sp_UtlastLevelTwoNoOfUnits: TFloatField;
    sp_UtlastLevelTwoSupplierShipPlanObjectNo: TIntegerField;
    sp_UtlastLevelTwoShowInGrid: TIntegerField;
    sp_UtlastLevelTwoOrderNoText: TStringField;
    sp_UtlastLevelTwoUnitName: TStringField;
    sp_UtlastLevelTwoSlutDestination: TStringField;
    sp_UtlastLevelTwoKund: TStringField;
    sp_UtlastLevelTwoMarknad: TStringField;
    sp_UtlastLevelTwoMarketNo: TIntegerField;
    sp_UtlastLevelTwoReference: TStringField;
    sp_UtlastLevelTwoSupplierNo: TIntegerField;
    sp_UtlastLevelTwoCustomerNo: TIntegerField;
    sp_UtlastLevelTwoInternCustomerNo: TIntegerField;
    sp_UtlastLevelTwoCustomerPrice: TFloatField;
    sp_UtlastLevelTwoCustomerShowInGrid: TIntegerField;
    sp_UtlastLevelTwoVerk: TStringField;
    sp_UtlastLevelTwoInternKund: TStringField;
    sp_UtlastLevelTwoObjectType: TIntegerField;
    sp_UtlastLevelTwoKontraktstyp: TIntegerField;
    sp_UtlastLevelTwoInternDestination: TStringField;
    sp_UtlastLevelTwoLaststalle: TStringField;
    sp_UtlastLevelTwoDelivery_WeekNo: TIntegerField;
    sp_UtlastLevelTwoShipToInvPointNo: TIntegerField;
    sp_UtlastLevelTwoLoadingLocationNo: TIntegerField;
    sp_UtlastLevelTwoBarCode: TStringField;
    sp_UtlastLevelTwoKundreferens: TStringField;
    sp_UtlastLevelTwoDateCreated: TSQLTimeStampField;
    sp_UtlastLevelTwoNT: TFloatField;
    sp_UtlastLevelTwoNB: TFloatField;
    sp_UtlastLevelTwoAT: TFloatField;
    sp_UtlastLevelTwoAB: TFloatField;
    sp_UtlastLevelTwoTT: TStringField;
    sp_UtlastLevelTwoTB: TStringField;
    sp_UtlastLevelTwoTS: TStringField;
    sp_UtlastLevelTwoUT: TStringField;
    sp_UtlastLevelTwoKV: TStringField;
    sp_UtlastLevelTwoPK: TStringField;
    sp_UtlastLevelTwoINTLNGD: TStringField;
    sp_UtlastLevelTwoRadreferens: TStringField;
    sp_UtlastLevelTwoPris: TStringField;
    sp_UtlastLevelTwoProductGroupNo: TIntegerField;
    sp_UtlastLevelTwoPcsPerPkg: TIntegerField;
    sp_UtlastLevelTwoPackageWidth: TIntegerField;
    sp_UtlastLevelTwoPackageHeight: TIntegerField;
    sp_UtlastLevelTwoPkgCodePPNo: TIntegerField;
    sp_UtlastLevelTwoProdInstruNo: TIntegerField;
    sp_UtlastLevelTwoProductNo: TIntegerField;
    sp_UtlastLevelTwoProductLengthNo: TIntegerField;
    sp_UtlastLevelTwoLanguageCode: TIntegerField;
    sp_UtlastLevelTwoALMM: TFloatField;
    sp_UtlastLevelTwoSequenceNo: TIntegerField;
    sp_UtlastLevelTwoOrderLineNo: TIntegerField;
    sp_UtlastLevelTwoOrderNo: TIntegerField;
    sp_UtlastLevelTwoModifiedUser: TIntegerField;
    sp_UtlastLevelTwoAM3: TFloatField;
    sp_UtlastLevelTwoLengthSpec: TStringField;
    sp_UtlastLevelTwoNM3: TFloatField;
    sp_UtlastLevelTwoVolumeUnitNo: TIntegerField;
    sp_UtlastLevelTwoPaket: TIntegerField;
    sp_UtlastLevelTwoAcceptedBySupplier: TIntegerField;
    sp_UtlastLevelTwoSurfacingNo: TIntegerField;
    sp_UtlastLevelTwoOrderBy: TFloatField;
    ds_UtlastLevelTwo: TDataSource;
    sp_UtlastLevelThree: TFDStoredProc;
    sp_UtlastLevelThreeSupplierShipPlanObjectNo: TIntegerField;
    sp_UtlastLevelThreeCustShipPlanDetailObjectNo: TIntegerField;
    sp_UtlastLevelThreeShipType: TIntegerField;
    sp_UtlastLevelThreeObjectType: TIntegerField;
    sp_UtlastLevelThreeOrderNo: TIntegerField;
    sp_UtlastLevelThreeOrderLineNo: TIntegerField;
    sp_UtlastLevelThreeShippingPlanNo: TIntegerField;
    sp_UtlastLevelThreeSupplierNo: TIntegerField;
    sp_UtlastLevelThreeLoadingLocationNo: TIntegerField;
    sp_UtlastLevelThreeDeliveryTermsNo: TIntegerField;
    sp_UtlastLevelThreePaymentTermsNo: TIntegerField;
    sp_UtlastLevelThreePrice: TFloatField;
    sp_UtlastLevelThreeCurrencyNo: TIntegerField;
    sp_UtlastLevelThreeNoOfUnits: TFloatField;
    sp_UtlastLevelThreePriceUnitNo: TIntegerField;
    sp_UtlastLevelThreeVolumeUnitNo: TIntegerField;
    sp_UtlastLevelThreeDestinationNo: TIntegerField;
    sp_UtlastLevelThreeShippingPlanStatus: TIntegerField;
    sp_UtlastLevelThreeStartETDYearWeek: TIntegerField;
    sp_UtlastLevelThreeEndETDYearWeek: TIntegerField;
    sp_UtlastLevelThreeInternalNote: TStringField;
    sp_UtlastLevelThreeProductDescription: TStringField;
    sp_UtlastLevelThreeLengthDescription: TStringField;
    sp_UtlastLevelThreeAcceptedBySupplier: TIntegerField;
    sp_UtlastLevelThreeProductLengthNo: TIntegerField;
    sp_UtlastLevelThreeProductGroupNo: TIntegerField;
    sp_UtlastLevelThreeActualM3Net: TFloatField;
    sp_UtlastLevelThreeShipToInvPointNo: TIntegerField;
    sp_UtlastLevelThreeProductNo: TIntegerField;
    sp_UtlastLevelThreeLOText: TMemoField;
    sp_UtlastLevelThreeMinActualLengthMM: TFloatField;
    sp_UtlastLevelThreeMaxActualLengthMM: TFloatField;
    sp_UtlastLevelThreePackageCode: TStringField;
    sp_UtlastLevelThreeFreightOrderByClientNo: TIntegerField;
    sp_UtlastLevelThreeSequenceNo: TIntegerField;
    sp_UtlastLevelThreeCreatedUser: TIntegerField;
    sp_UtlastLevelThreeModifiedUser: TIntegerField;
    sp_UtlastLevelThreeDateCreated: TSQLTimeStampField;
    sp_UtlastLevelThreePartnerNo: TIntegerField;
    sp_UtlastLevelThreeProdInstructNo: TIntegerField;
    sp_UtlastLevelThreeShowInGrid: TIntegerField;
    sp_UtlastLevelThreePcsPerPkg: TIntegerField;
    sp_UtlastLevelThreeCustomerNo: TIntegerField;
    sp_UtlastLevelThreeCustomerPrice: TFloatField;
    sp_UtlastLevelThreeCustomerShowInGrid: TIntegerField;
    sp_UtlastLevelThreeLO_No: TIntegerField;
    sp_UtlastLevelThreeDelivery_WeekNo: TIntegerField;
    sp_UtlastLevelThreeDateModified: TSQLTimeStampField;
    sp_UtlastLevelThreeLengthTyp: TStringField;
    sp_UtlastLevelThreeReference: TStringField;
    sp_UtlastLevelThreeLIPNo: TIntegerField;
    sp_UtlastLevelThreePkgCodePPNo: TIntegerField;
    sp_UtlastLevelThreePriceListNo: TIntegerField;
    sp_UtlastLevelThreeInternKundFrakt: TFloatField;
    sp_UtlastLevelThreePackageWidth: TIntegerField;
    sp_UtlastLevelThreePackageHeight: TIntegerField;
    sp_UtlastLevelThreeLengthSpec: TStringField;
    sp_UtlastLevelThreeOrderBy: TFloatField;
    sp_UtlastLevelThreeNM3ext: TFloatField;
    sp_UtlastLevelThreeNM3int: TFloatField;
    sp_UtlastLevelThreeUnitName: TStringField;
    sp_UtlastLevelThreeALMM: TFloatField;
    sp_UtlastLevelThreeSurfacingNo: TIntegerField;
    sp_UtlastLevelThreeRegAv: TStringField;
    sp_UtlastLevelThreeAvailPeriod: TFloatField;
    sp_UtlastLevelThreeAvailNetto: TFloatField;
    ds_UtlastLevelThree: TDataSource;
    sp_invpiv: TFDStoredProc;
    ds_invpiv: TDataSource;
    ds_invpivPkgDtl: TDataSource;
    sp_invpivPkg: TFDStoredProc;
    ds_invpivPkg: TDataSource;
    upd_invpivPkg: TFDUpdateSQL;
    upd_invpivPkgDtl: TFDUpdateSQL;
    FDStoredProc1: TFDStoredProc;
    FDStoredProc2: TFDStoredProc;
    sp_CngArtNoByPkgSize: TFDStoredProc;
    sp_CngCert: TFDStoredProc;
    mtSelectedPkgNo: TkbmMemTable;
    mtSelectedPkgNoPAKETNR: TIntegerField;
    mtSelectedPkgNoLEVKOD: TStringField;
    mtSelectedPkgNoSTYCKPERLNGD: TStringField;
    mtSelectedPkgNoAM3: TFloatField;
    mtSelectedPkgNoSTYCK: TIntegerField;
    mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField;
    mtSelectedPkgNoProductNo: TIntegerField;
    mtSelectedPkgNoMARKERAD: TIntegerField;
    cds_KilnChargeRows: TFDQuery;
    cds_KilnChargeRowsKilnChargeNo: TIntegerField;
    cds_KilnChargeRowsPackageNo: TIntegerField;
    cds_KilnChargeRowsSupplierCode: TStringField;
    cds_KilnChargeRowsNoOfPkgs: TIntegerField;
    cds_KilnChargeRowsDateCreated: TSQLTimeStampField;
    cds_KilnChargeRowsCreatedUser: TIntegerField;
    cds_KilnChargeRowsVagnNo: TIntegerField;
    cds_KilnChargeRowsRowNo: TIntegerField;
    cds_KilnChargeRowsProductDisplayName: TStringField;
    cds_KilnChargeRowsPcsPerLength: TStringField;
    cds_KilnChargeHdr: TFDQuery;
    cds_KilnChargeHdrClientNo: TIntegerField;
    cds_KilnChargeHdrKilnChargeNo: TIntegerField;
    cds_KilnChargeHdrKilnNo: TIntegerField;
    cds_KilnChargeHdrStartTime: TSQLTimeStampField;
    cds_KilnChargeHdrEndTime: TSQLTimeStampField;
    cds_KilnChargeHdrPlannedDuration: TFloatField;
    cds_KilnChargeHdrCreatedDate: TSQLTimeStampField;
    cds_KilnChargeHdrCreatedUser: TIntegerField;
    cds_KilnChargeHdrStatus: TIntegerField;
    cds_KilnChargeHdrNote: TMemoField;
    cds_KilnChargeHdrBeforeKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrAfterKiln_LIPNo: TIntegerField;
    cds_KilnChargeHdrKiln_PIPNo: TIntegerField;
    cds_KilnChargeHdrNoOfVagnar: TIntegerField;
    cds_KilnChargeHdrNoOfVagnarBefore: TIntegerField;
    ds_KilnChargeRows: TDataSource;
    sq_PkgExistInInventory: TFDQuery;
    sq_PkgExistInInventoryPackageNo: TIntegerField;
    cds_SelectProgressKiln: TFDQuery;
    cds_SelectProgressKilnClientNo: TIntegerField;
    cds_SelectProgressKilnKilnChargeNo: TIntegerField;
    cds_SelectProgressKilnKilnNo: TIntegerField;
    cds_SelectProgressKilnKilnName: TStringField;
    cds_KilnVagn: TFDQuery;
    cds_KilnVagnKilnChargeNo: TIntegerField;
    cds_KilnVagnVagnNo: TIntegerField;
    cds_KilnVagnInDate: TSQLTimeStampField;
    cds_KilnVagnOutDate: TSQLTimeStampField;
    cds_KilnVagnVagnStatus: TIntegerField;
    cds_KilnVagnCreatedUser: TIntegerField;
    cds_KilnVagnDateCreated: TSQLTimeStampField;
    ds_KilnChargeHdr: TDataSource;
    sc_GetProductNoByPackageNo: TFDQuery;
    sc_GetProductNoByPackageNoproductno: TIntegerField;
    cds_GetSistaVagnNo: TFDQuery;
    cds_GetSistaVagnNoSistaVagnNo: TIntegerField;
    cds_Vagnar: TFDQuery;
    cds_VagnarVagnNo: TIntegerField;
    cds_AntalVagnarPerStatus: TFDQuery;
    cds_AntalVagnarPerStatusAntalVagnar: TIntegerField;
    cds_GetAntalVagnar: TFDQuery;
    cds_GetAntalVagnarClientNo: TIntegerField;
    cds_GetAntalVagnarKilnNo: TIntegerField;
    cds_GetAntalVagnarKilnName: TStringField;
    cds_GetAntalVagnarNoOfVagnar: TIntegerField;
    cds_KilnVagnar: TFDQuery;
    cds_KilnVagnarRad: TStringField;
    cds_KilnVagnarRowNo: TIntegerField;
    cds_KilnVagnarL1: TStringField;
    cds_KilnVagnarL2: TStringField;
    cds_KilnVagnarL3: TStringField;
    cds_KilnVagnarL4: TStringField;
    cds_KilnVagnarL5: TStringField;
    cds_KilnVagnarL6: TStringField;
    cds_KilnVagnarL7: TStringField;
    cds_KilnVagnarL8: TStringField;
    cds_KilnVagnarL9: TStringField;
    cds_KilnVagnarL10: TStringField;
    cds_KilnVagnarL11: TStringField;
    cds_KilnVagnarL12: TStringField;
    cds_KilnVagnarL13: TStringField;
    cds_KilnVagnarL14: TStringField;
    cds_KilnVagnarL15: TStringField;
    cds_KilnVagnarL16: TStringField;
    cds_KilnVagnarL17: TStringField;
    cds_KilnVagnarL18: TStringField;
    cds_KilnVagnarL19: TStringField;
    cds_KilnVagnarL20: TStringField;
    cds_KilnVagnarL21: TStringField;
    cds_KilnVagnarL22: TStringField;
    cds_KilnVagnarL23: TStringField;
    cds_KilnVagnarL24: TStringField;
    cds_KilnVagnarL25: TStringField;
    cds_KilnVagnarL26: TStringField;
    cds_KilnVagnarL27: TStringField;
    cds_KilnVagnarL28: TStringField;
    cds_KilnVagnarL29: TStringField;
    cds_KilnVagnarL30: TStringField;
    cds_KilnVagnarL31: TStringField;
    cds_KilnVagnarL32: TStringField;
    cds_KilnVagnarL33: TStringField;
    cds_KilnVagnarL34: TStringField;
    cds_KilnVagnarL35: TStringField;
    ds_KilnVagnar: TDataSource;
    sp_MoveVagn: TFDStoredProc;
    cds_VagnStatus: TFDQuery;
    cds_VagnStatusKilnChargeNo: TIntegerField;
    cds_VagnStatusVagnNo: TIntegerField;
    cds_VagnStatusInDate: TSQLTimeStampField;
    cds_VagnStatusOutDate: TSQLTimeStampField;
    cds_VagnStatusVagnStatus: TIntegerField;
    cds_VagnStatusDateCreated: TSQLTimeStampField;
    cds_VagnStatusCreatedUser: TIntegerField;
    cds_GetFirstVagnNoPerVagnStatus: TFDQuery;
    cds_GetFirstVagnNoPerVagnStatusVagnNo: TIntegerField;
    cds_GetLastVagnNoPerVagnStatus: TFDQuery;
    cds_GetLastVagnNoPerVagnStatusVagnNo: TIntegerField;
    cds_KilnVagnarL36: TStringField;
    cds_KilnVagnarL37: TStringField;
    cds_KilnVagnarL38: TStringField;
    cds_KilnVagnarL39: TStringField;
    cds_KilnVagnarL40: TStringField;
    cds_KilnVagnarL41: TStringField;
    cds_KilnVagnarL42: TStringField;
    cds_KilnVagnarL43: TStringField;
    cds_KilnVagnarL44: TStringField;
    cds_KilnVagnarL45: TStringField;
    sp_MovePackage: TFDStoredProc;
    sp_PkgExistInLIP: TFDStoredProc;
    mtSelectedPkgNoMaxlangd: TFloatField;
    sp_invpivPkgDtl: TFDStoredProc;
    sp_Vis_LagerPOS_v1: TFDStoredProc;
    ds_Vis_LagerPOS_v1: TDataSource;
    sp_CngRefAndInfo: TFDStoredProc;
    sp_GetCurrentRefAndInfo: TFDStoredProc;
    sp_GetCurrentRefAndInfoREFERENCE: TStringField;
    sp_GetCurrentRefAndInfoINFO1: TStringField;
    sp_GetCurrentRefAndInfoINFO2: TStringField;
    sq_NB: TFDQuery;
    sq_NT: TFDQuery;
    sq_Varugrupp: TFDQuery;
    sq_VarugruppVarugruppNamn: TStringField;
    sq_VarugruppVarugruppNo: TIntegerField;
    sq_VarugruppVarugruppID: TIntegerField;
    ds_Props: TDataSource;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsName: TStringField;
    cds_PropsFilter1: TStringField;
    sq_Surfacing: TFDQuery;
    sq_SurfacingSurfacingcode: TStringField;
    sq_SurfacingSurfacingNo: TIntegerField;
    sq_SurfacingSurfacingName: TStringField;
    sp_usersmonpu_piv: TFDStoredProc;
    ds_usersmonpu_piv: TDataSource;
    sp_GetProdDescByPkgNoAndSifferPrefix: TFDStoredProc;
    sp_allPkgsatoutput: TFDStoredProc;
    sp_allPkgsatoutputProductDisplayName: TStringField;
    sp_allPkgsatoutputProductionUnitCode: TStringField;
    sp_allPkgsatoutputPackageNo: TIntegerField;
    sp_allPkgsatoutputLongPkgNo: TStringField;
    sp_allPkgsatoutputDIM_Grade: TStringField;
    sp_allPkgsatoutputMaxLength: TStringField;
    sp_allPkgsatoutputMaxLengthMM: TFloatField;
    sp_allPkgsatoutputReference: TStringField;
    sp_allPkgsatoutputInfo1: TStringField;
    sp_allPkgsatoutputInfo2: TStringField;
    mtUserOutput: TFDMemTable;
    ds_Users: TDataSource;
    cds_Users: TFDQuery;
    cds_UsersUserID: TIntegerField;
    cds_UsersNamn: TStringField;
    mtUserOutputUserID: TIntegerField;
    mtUserOutputUserName: TStringField;
    sp_UsersOutputProdunits: TFDStoredProc;
    ds_UsersOutputProdunits: TDataSource;
    sp_UsersOutputProdunitsSelected: TIntegerField;
    sp_UsersOutputProdunitsProductionUnitNo: TIntegerField;
    sp_UsersOutputProdunitsClientNo: TIntegerField;
    sp_UsersOutputProdunitsLogicalInventoryPointNo: TIntegerField;
    sp_UsersOutputProdunitsRegistrationPointNo: TIntegerField;
    sp_UsersOutputProdunitsPositionID: TIntegerField;
    sp_UsersOutputProdunitsRegPointName: TStringField;
    sp_Positioner: TFDStoredProc;
    cds_UsersCompanyNo: TIntegerField;
    sp_UsersOutputProdunitsPhysicalInventoryPointNo: TIntegerField;
    sp_PositionerPosition: TStringField;
    sp_PositionerAreaID: TIntegerField;
    sp_PositionerPIPNo: TIntegerField;
    sp_PositionerPositionID: TIntegerField;
    sp_UsersOutputProdunitsPosition: TStringField;
    dsUserOutput: TDataSource;
    sp_ChangeSelectedOutput: TFDStoredProc;
    procedure cds_BookingHdrAfterInsert(DataSet: TDataSet);
    procedure cds_BookingDtlPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure cds_BookingDtlUtfallChange(Sender: TField);
    procedure cds_BookingMasterClientNoChange(Sender: TField);
    procedure cds_OtherBookingsUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure cds_BookingMasterAfterScroll(DataSet: TDataSet);
    procedure cds_SchedulerBeforePost(DataSet: TDataSet);
    procedure cds_BookingDtlCalcFields(DataSet: TDataSet);
    procedure cds_BookingHdrCalcFields(DataSet: TDataSet);
    procedure ds_BookingHdrDataChange(Sender: TObject; Field: TField);
    procedure cds_BookingHdrBeforePost(DataSet: TDataSet);
    procedure cds_BookingDtlPlannedOutputNoOfUnitsChange(Sender: TField);
    procedure cds_SchedulerYearWeekChange(Sender: TField);
    procedure cds_BookingDtlPlannedOutputNM3Change(Sender: TField);
    procedure cds_LOBuffertParamsAfterInsert(DataSet: TDataSet);
    procedure sp_invpivPkgUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure sp_invpivPkgDtlUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
    procedure cds_KilnChargeRowsAfterInsert(DataSet: TDataSet);
    procedure cds_KilnVagnAfterInsert(DataSet: TDataSet);
    procedure cds_KilnVagnBeforePost(DataSet: TDataSet);
    procedure cds_KilnChargeRowsAfterPost(DataSet: TDataSet);
    procedure cds_KilnChargeRowsBeforeDelete(DataSet: TDataSet);
    procedure mtSelectedPkgNoBeforePost(DataSet: TDataSet);
    procedure mtUserOutputUserIDChange(Sender: TField);
  private
    { Private declarations }
    procedure LoadAllBookingHdrIntoTempTable ;
    function  GetAntalLamellerOfRawMtrl : Integer ;
    Function  GetAM1ToRun : Double ;
//    function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;

  public
    { Public declarations }
    MarkedPkgs  : Integer ;
    KilnChargeNo,
    RoleType : Integer ;
    FilterRawDtlData  : Boolean ;
    procedure ChangeSelectedOutput(const ProductionUnitNo, UserID, Change, PositionID : Integer) ;
    procedure RefreshPositionerByVerkNo(const VerkNo : Integer) ;
    procedure RefreshUsersOutputProdunits (const VerkNo, UserID : Integer) ;
    Function  GetPackageDescription(const PackageNoString : string) : String ;
    procedure Refresh_allPkgsatoutput (const VerkNo : integer) ;
    function  GetProductDescriptionByPkgNoAndRegPointName(const PackageNoString : string;const RegPointname : String) : String ;
    function  Refresh_sp_usersmonpu_piv : Boolean ; //Result true if rows available
    procedure Refresh_sp_Vis_LagerPOS_v1(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL, Info2 : String) ;
    function  PkgExistInInventoryKILN(const PackageNo, LIPNo : Integer;const Prefix : String3) : Boolean ;
    function  GetProductNoByPackageNoproductno(const PackageNo : Integer;const Prefix : String) : Integer ;
    function  VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(const KilnChargeNo : Integer) : Boolean ;
    function  IsFreeSpaceInKiln(const pKilnChargeNo  : Integer) : Boolean ;
    function  GetFirstVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
    function  IsVagnStatus0(const VagnNo, KilnChargeNo : Integer) : Boolean ;
    function  IsNoOfVagnarInKilnBiggerThenMaxVagnar(const pKilnChargeNo  : Integer) : Boolean ;
    procedure Open_cds_KilnChargeHdr ;
    function  GetLastVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
    procedure FlyttaVagn(const KilnChargeNo, VagnNo, MoveToLIPNo, NewVagnStatus : Integer) ;
    procedure ControlVagn(const VagnNo : Integer) ;
    procedure EditVagn(const pKilnChargeNo, VagnNo : Integer) ;
    procedure AddVagn(const pKilnChargeNo : Integer) ;
    function  PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
    procedure MakeVagnSQL(const KilnChargeNo : Integer) ;
    function  GetSistaVagnNo(const KilnNo : Integer) : Integer ;
    function  Get_AntalVagnarPerStatus(const KilnChargeNo, VagnStatus : Integer) : Integer ;
    function  GetAntalVagnar(const KilnChargeNo : Integer) : Integer ;
    procedure Open_cds_KilnChargeRows ;
    procedure CngCert (const PackageNo, CertNo : Integer; Prefix : string) ;
    procedure CngArtNoByPkgSize (const PackageNo, Package_Size : Integer; Prefix : string) ;
    function  GetNewCert(var CertShortName : String) : Integer ;
    function  GetNewPackage_Size(var PackageSizeName : string) : Integer ;
    procedure Refresh_sp_invpivPkg(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL : String) ;
    procedure Refresh_sp_invpivPkgDtl(const LIPNo, InventorySource : Integer;const PivotUnit, ProductNo, ALMM, LP, Package_Size, CertNo : Integer;const Ref, BL, Info2 : String) ;
    procedure Refresh_sp_invpiv(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL, Info2 : String) ;
    procedure OpenLOBuffertParams(const VerkNo : Integer) ;

    function  IsRunValid : String ;
    Function  ValidUtfall_BookingDtl : Boolean ;



    procedure CalcRunTime_For_cds_Scheduler ;
    procedure MergeBookings(const NewID, OldID : Integer) ;
    procedure Filter_cds_BookingDtl ;
    procedure CalcRunTime ;
    procedure Refresh_cds_ProductionUnit ;
    procedure GetBookingDtl(const ID : Integer) ;
    procedure GetVolPerLG(const ProductNo, PIPNo, LIPGroupNo, NoOfLengths : Integer;const ALMM : Double) ;
    function  GetSDBalance(const ProductNo, PIPNo, LIPGroupNo : Integer;const ALMM : Double) : Double ;
    procedure Refresh_cds_VolResDtl(const UserID : Integer) ;
    procedure CngRefAndInfo(const aPackageNo: integer; aReference, aInfo1,
                                  aInfo2, aPrefix: string);
    procedure GetCurrentTreatmInfo (const aPackageNo: integer; const aPrefix: string;
                                    var aReference, aInfo1, aInfo2: string);
  end;

var
  dmInventory: TdmInventory;

implementation

uses VidaUser, dmsDataConn, dmsVidaContact, RecError , dmsVidaSystem, 
  dmsVidaProduct, VidaConst , uPackageSize, uCert;

{$R *.dfm}

{function TdmInventory.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result:= not sp_OnePackageNo.eof ;
  sp_OnePackageNo.Close;
end; }


procedure TdmInventory.EditVagn(const pKilnChargeNo, VagnNo : Integer) ;
Begin
  KilnChargeNo  := pKilnChargeNo ;
  cds_KilnVagn.Active  := False ;
  cds_KilnVagn.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
  cds_KilnVagn.ParamByName('VagnNo').AsInteger        := VagnNo ;
  cds_KilnVagn.Active  := True ;

  Open_cds_KilnChargeHdr ;
  Open_cds_KilnChargeRows ;
End;

procedure TdmInventory.AddVagn(const pKilnChargeNo : Integer) ;
Begin
  if not cds_KilnVagn.Active then
   cds_KilnVagn.Active  := True ;
  KilnChargeNo  := pKilnChargeNo ;
  cds_KilnVagn.Insert ;
//  cds_KilnVagnKilnChargeNo.AsInteger  := KilnChargeNo ;
  cds_KilnVagn.Post ;

  Open_cds_KilnChargeHdr ;
  Open_cds_KilnChargeRows ;
End;

procedure TdmInventory.cds_BookingHdrAfterInsert(DataSet: TDataSet);
begin
 cds_BookingHdrCreatedUser.AsInteger      := ThisUser.userid ;
 cds_BookingHdrDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
// cds_BookingMasterStatus.AsInteger        := 1 ;
 cds_BookingHdrBookingNo.AsInteger        := cds_BookingMasterBookingNo.AsInteger ;
end;

procedure TdmInventory.Refresh_cds_VolResDtl(const UserID : Integer) ;
Begin
 cds_VolResDtl.Active := False ;
 cds_VolResDtl.ParamByName('UserID').AsInteger  := UserID ;
 cds_VolResDtl.Active := True ;
End ;

function TdmInventory.GetSDBalance(const ProductNo, PIPNo, LIPGroupNo : Integer;const ALMM : Double) : Double ;
Begin
 Try
 sp_GetCurrentSD.ParamByName('@ProductNo').AsInteger    := ProductNo ;
 sp_GetCurrentSD.ParamByName('@ALMM').AsFloat           := ALMM ;
 sp_GetCurrentSD.ParamByName('@PIPNo').AsInteger        := PIPNo ;
 sp_GetCurrentSD.ParamByName('@InvGrouping').AsInteger  := LIPGroupNo ;
 sp_GetCurrentSD.ExecProc ;
 Result := sp_GetCurrentSD.ParamByName('@SD').AsFloat ;
 sp_GetCurrentSD.Close ;
       Except
         On E: Exception do
         Begin
          ShowMessage(E.Message+' :sp_GetCurrentSD.ExecProc') ;
          Raise ;
         End ;
       End ;
End ;

procedure TdmInventory.cds_BookingDtlPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
 Action := daAbort ;
 DataSet.Cancel ;
 ShowMessage('Försöker du att lägga in samma råvara igen? ' + E.Message) ;
end;

procedure TdmInventory.GetVolPerLG(const ProductNo, PIPNo, LIPGroupNo, NoOfLengths : Integer;const ALMM : Double) ;
Begin
 Try
 sp_GetVolPerLG.Active  := False ;
 sp_GetVolPerLG.ParamByName('@ProductNo').AsInteger   := ProductNo ;
 sp_GetVolPerLG.ParamByName('@ALMM').AsFloat          := ALMM ;
 sp_GetVolPerLG.ParamByName('@PIPNo').AsInteger       := PIPNo ;
 sp_GetVolPerLG.ParamByName('@InvGrouping').AsInteger := LIPGroupNo ;
 sp_GetVolPerLG.ParamByName('@NoOfLengths').AsInteger := NoOfLengths ;
 sp_GetVolPerLG.Active  := True ;
       Except
         On E: Exception do
         Begin
          ShowMessage(E.Message+' :sp_GetVolPerLG.ExecProc') ;
          Raise ;
         End ;
       End ;
End ;

procedure TdmInventory.cds_BookingDtlUtfallChange(Sender: TField);
begin
 if cds_BookingDtlUtfall.AsFloat > 0 then
 cds_BookingDtlBookedNM3.AsFloat  :=
 cds_BookingDtlPlannedOutputNM3.AsFloat /
  (cds_BookingDtlUtfall.AsFloat/100)
  else
  cds_BookingDtlBookedNM3.AsFloat  := 0 ;
end;

procedure TdmInventory.cds_BookingMasterClientNoChange(Sender: TField);
begin
 Refresh_cds_ProductionUnit ;
end;


procedure TdmInventory.Open_cds_KilnChargeRows ;
Begin
  cds_KilnChargeRows.Active := False ;
  cds_KilnChargeRows.ParamByName('KilnChargeNo').AsInteger  :=  KilnChargeNo ;
  cds_KilnChargeRows.ParamByName('VagnNo').AsInteger        :=  cds_KilnVagnVagnNo.AsInteger ;
  cds_KilnChargeRows.Active := True ;
End;


procedure TdmInventory.Open_cds_KilnChargeHdr ;
Begin
  cds_KilnChargeHdr.Active := False ;
  cds_KilnChargeHdr.ParamByName('KilnChargeNo').AsInteger  :=  KilnChargeNo ;
  cds_KilnChargeHdr.Active := True ;
End;

procedure TdmInventory.cds_KilnChargeRowsAfterInsert(DataSet: TDataSet);
begin
 cds_KilnChargeRowsKilnChargeNo.AsInteger      := cds_KilnChargeHdrKilnChargeNo.AsInteger ;
 cds_KilnChargeRowsDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnChargeRowsCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_KilnChargeRowsVagnNo.AsInteger            := cds_KilnVagnVagnNo.AsInteger ;
end;

procedure TdmInventory.cds_KilnChargeRowsAfterPost(DataSet: TDataSet);
begin
 Try
// ShowMessage('cds_KilnChargeRowsPackageNo = ' + cds_KilnChargeRowsPackageNo.AsString) ;

//Put the package to inventory IN kiln direct as they are set on a Vagn
 sp_MovePackage.ParamByName('@PackageNo').AsInteger     :=  cds_KilnChargeRowsPackageNo.AsInteger ;
 sp_MovePackage.ParamByName('@SupplierCode').AsString   :=  cds_KilnChargeRowsSupplierCode.AsString ;
 sp_MovePackage.ParamByName('@NewLocation').AsInteger   :=  cds_KilnChargeHdrKiln_LIPNo.AsInteger ;
 sp_MovePackage.ParamByName('@UserID').AsInteger        :=  ThisUser.UserID ;
 sp_MovePackage.ParamByName('@KilnChargeNo').AsInteger  :=  cds_KilnChargeRowsKilnChargeNo.AsInteger ;
 sp_MovePackage.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' : sp_MovePackage.ExecProc') ;
   Raise ;
  End ;
 end;
end;

procedure TdmInventory.cds_KilnChargeRowsBeforeDelete(DataSet: TDataSet);
begin
 Try
// ShowMessage('cds_KilnChargeRowsPackageNo = ' + cds_KilnChargeRowsPackageNo.AsString) ;

//Put the package back to inventory before kiln
 sp_MovePackage.ParamByName('@PackageNo').AsInteger     :=  cds_KilnChargeRowsPackageNo.AsInteger ;
 sp_MovePackage.ParamByName('@SupplierCode').AsString   :=  cds_KilnChargeRowsSupplierCode.AsString ;
 sp_MovePackage.ParamByName('@NewLocation').AsInteger   :=  cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
 sp_MovePackage.ParamByName('@UserID').AsInteger        :=  ThisUser.UserID ;
 sp_MovePackage.ParamByName('@KilnChargeNo').AsInteger  :=  cds_KilnChargeRowsKilnChargeNo.AsInteger ;
 sp_MovePackage.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' : sp_MovePackage.ExecProc') ;
   Raise ;
  End ;
 end;
end;

procedure TdmInventory.cds_KilnVagnAfterInsert(DataSet: TDataSet);
begin
 cds_KilnVagnVagnStatus.AsInteger         := 0 ;
 cds_KilnVagnDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_KilnVagnCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_KilnVagnKilnChargeNo.AsInteger       := KilnChargeNo ;
end;

procedure TdmInventory.cds_KilnVagnBeforePost(DataSet: TDataSet);
begin
 cds_KilnVagnVagnNo.AsInteger :=  dmsConnector.NextSecondMaxNo('VagnNo', cds_KilnVagnKilnChargeNo.AsInteger) ;
end;

procedure TdmInventory.Refresh_cds_ProductionUnit ;
begin
 cds_ProductionUnit.Active  := False ;
 cds_ProductionUnit.ParamByName('ProducerNo').AsInteger := cds_BookingMasterClientNo.AsInteger ;
 cds_ProductionUnit.Active  := True ;
end;

procedure TdmInventory.GetBookingDtl(const ID : Integer) ;
Begin
 cds_BookingDtl.Active  := False ;
 cds_BookingDtl.ParamByName('ID').AsInteger := ID ;
 cds_BookingDtl.Active  := True ;


 cds_BookingHdr.Active := False ;
// cds_BookingHdr.ParamByName('BookingNo').AsInteger     := cds_BookingDtlBookingNo.AsInteger ;
 cds_BookingHdr.ParamByName('ID').AsInteger            := ID ;
 cds_BookingHdr.Active := True ;

 Filter_cds_BookingDtl ;


End ;

procedure TdmInventory.GetCurrentTreatmInfo(const aPackageNo: integer;
  const aPrefix: string; var aReference, aInfo1, aInfo2: string);
begin
  sp_GetCurrentRefAndInfo.ParamByName('@PackageNo').AsInteger     := aPackageNo;
  sp_GetCurrentRefAndInfo.ParamByName('@SupplierCode').AsString   := aPrefix;
  Try
    sp_GetCurrentRefAndInfo.Close;
    sp_GetCurrentRefAndInfo.Open;
    aReference := sp_GetCurrentRefAndInfo.FieldByName('REFERENCE').AsString;
    aInfo1 := sp_GetCurrentRefAndInfo.FieldByName('INFO1').AsString;
    aInfo2 := sp_GetCurrentRefAndInfo.FieldByName('INFO2').AsString;
    sp_GetCurrentRefAndInfo.Close;
  Except
    On E: Exception do
    Begin
      ShowMessage(E.Message+' :sp_GetCurrentTreatmInfo.ExecProc');
      Raise;
    End;
  End;
end;

procedure TdmInventory.Filter_cds_BookingDtl ;
Begin
 if (cds_BookingHdr.Active) and (cds_BookingHdr.RecordCount > 0) and (cds_BookingDtl.Active)
 and (not cds_BookingHdrsspNo.IsNull) and (not cds_BookingHdrsspNo.IsNull) then
 Begin
  if FilterRawDtlData then
  Begin
   cds_BookingDtl.Filter   := 'sspNo = ' + cds_BookingHdrsspNo.AsString
   + ' AND ProductNo = ' + cds_BookingHdrProductNo.AsString
   + ' AND ProductLengthNo = ' + cds_BookingHdrProductLengthNo.AsString ;
   cds_BookingDtl.Filtered := True ;
  End
  else
  Begin
   cds_BookingDtl.Filtered := False ;
  End ;
 End ;
End ;

procedure TdmInventory.cds_OtherBookingsUpdateRecord(ASender: TDataSet;
ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 upd_OtherBookings.ConnectionName := cds_OtherBookings.ConnectionName;
 upd_OtherBookings.DataSet        := cds_OtherBookings;
 upd_OtherBookings.Apply(ARequest, AAction, AOptions);


 upd_cxSchedulerTable.ConnectionName  := cds_OtherBookings.ConnectionName;
 upd_cxSchedulerTable.DataSet         := cds_OtherBookings;
 upd_cxSchedulerTable.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied;
end;

procedure TdmInventory.cds_BookingMasterAfterScroll(DataSet: TDataSet);
begin
 Refresh_cds_ProductionUnit ;
end;


Function TdmInventory.GetAM1ToRun : Double ;
Var OldFilter : String ;
Begin
 cds_BookingDtl.Filtered := False ;
 FilterRawDtlData := False ;
 Filter_cds_BookingDtl ;
 Result := 0 ;
 OldFilter  := cds_BookingDtl.Filter ;
 cds_BookingDtl.Filter   := 'ID = ' + cds_SchedulerID.AsString ;
 cds_BookingDtl.Filtered := True ;
  Try
  cds_BookingDtl.First ;
  While not cds_BookingDtl.Eof do
  Begin
   Result  := Result + cds_BookingDtlM1.AsFloat ;// * cds_BookingDtlAntalLamellerUt.AsInteger) ;
   cds_BookingDtl.Next ;
  End ;
 Finally
  cds_BookingDtl.Filter := OldFilter ;
  cds_BookingDtl.Filtered := True ;
  FilterRawDtlData := True ;
  Filter_cds_BookingDtl ;
 End ;
End ;

(*
Function TdmInventory.GetAM1ToRun : Double ;
Var FDMemTable1 : TFDMemTable ;
Begin
 FDMemTable1 := TFDMemTable.Create(Self);
 FDMemTable1.Data := cds_BookingDtl.Data ;
 Try
 FDMemTable1.Active  := True ;
 Result                   := 0 ;
 FDMemTable1.Filter    :=  'ID = ' + cds_SchedulerID.AsString ;
 FDMemTable1.Filtered  := True ;
 FDMemTable1.First ;

  FDMemTable1.First ;
  While not FDMemTable1.Eof do
  Begin
   Result  := Result + FDMemTable1.FieldByName('UsedAM3').AsFloat ;
   FDMemTable1.Next ;
  End ;

 Finally
  FDMemTable1.Free ;
 End ;
End ; *)

procedure TdmInventory.CalcRunTime ;
Begin
 if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;

 if ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) > 0 then

 cds_SchedulerPlannedWorkingTime.AsFloat  :=
 GetAM1ToRun /
 ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) ;

 cds_SchedulerPlannedWorkingTime.AsFloat  :=  cds_SchedulerPlannedWorkingTime.AsFloat / 60 ;

 cds_SchedulerDuration.AsFloat  := cds_SchedulerPlannedWorkingTime.AsFloat + (cds_SchedulerPostningstid.AsFloat / 60) ;
 if cds_Scheduler.State in [dsEdit, dsInsert] then
  cds_Scheduler.Post ;
End ;


procedure TdmInventory.CalcRunTime_For_cds_Scheduler ;
Begin
 if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;

 if ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) > 0 then

 cds_SchedulerPlannedWorkingTime.AsFloat  :=
 GetAM1ToRun /
 ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) ;

 cds_SchedulerPlannedWorkingTime.AsFloat  :=  cds_SchedulerPlannedWorkingTime.AsFloat / 60 ;

 cds_SchedulerDuration.AsFloat  := cds_SchedulerPlannedWorkingTime.AsFloat + (cds_SchedulerPostningstid.AsFloat / 60) ;
End ;

procedure TdmInventory.cds_SchedulerBeforePost(DataSet: TDataSet);
Var AYear, AWeekOfYear: Word;
    FDayOfWeek: Word ;
    YearWeekString : String ;
    Start   : TDateTime ;
    Year    : String ;
    CurrentWeekNo,
    CurrentYearNo,
    YearNo, WeekNo  : Integer ;
Begin
// if cds_SchedulerFixedDate.AsInteger = 1 then
 //cds_SchedulerDateCreated.AsSQLTimeStamp      := DateTimeToSqlTimeStamp(Now) ;

 if (cds_SchedulerTaskStatusField.AsInteger = 7) or (cds_SchedulerTaskStatusField.AsInteger = 0) then
 CalcRunTime_For_cds_Scheduler ;

 if (cds_SchedulerFixedDate.AsInteger = 1) and (cds_SchedulerTaskStatusField.AsInteger = 7) then
 Begin
  FDayOfWeek   := 1 ;
  AYear        := StrToIntDef('20' + Copy(cds_SchedulerYearWeek.AsString, 1,2),0) ;
  AWeekOfYear  := StrToIntDef(Copy(cds_SchedulerYearWeek.AsString, 3,2),0) ;
  Start        := EncodeDateWeek(AYear, AWeekOfYear, FDayOfWeek) ;
  Start        := IncHour(Start, 6) ;
  cds_SchedulerStart.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Start) ;

  cds_SchedulerYearNo.AsInteger    := AYear - 2000 ;
 End ;


//År o vecka skall bara uppdateras om status är bokad
 if (cds_SchedulerTaskStatusField.AsInteger = 7) then //or (cds_SchedulerTaskStatusField.AsInteger = 0) then
 Begin
  CurrentWeekNo  := WeekOf(Date) ;
  CurrentYearNo  := YearOf(Date) ;
  WeekNo := WeekOf(cds_SchedulerStart.AsDateTime) ;
  YearNo := YearOf(cds_SchedulerStart.AsDateTime) ;
  if  (WeekNo < CurrentWeekNo) and (YearNo <= CurrentYearNo) then
   WeekNo  := CurrentWeekNo ;

  if WeekNo < 10 then
   cds_SchedulerWeekNo.AsString := '0' + inttostr(WeekNo)
    else
     cds_SchedulerWeekNo.AsString:= inttostr(WeekNo) ;

  if cds_SchedulerYearNo.AsInteger > 100 then
   Year                             := IntToStr(cds_SchedulerYearNo.AsInteger - 2000)
    else
     Year                             := IntToStr(cds_SchedulerYearNo.AsInteger) ;

  cds_SchedulerYearNo.AsInteger    := StrToInt(Year) ;

  if WeekNo < 10 then
   YearWeekString  := Year + '0' + Inttostr(WeekNo)
    else
     YearWeekString  := Year + Inttostr(WeekNo) ;

   cds_SchedulerYearWeek.AsInteger  := StrToInt(YearWeekString) ;
 End ;

 if (cds_SchedulerFixedDate.AsInteger = 1) and (cds_SchedulerTaskStatusField.AsInteger = 7) then
 Begin
  FDayOfWeek   := 1 ;
  AYear        := StrToIntDef('20' + Copy(cds_SchedulerYearWeek.AsString, 1,2),0) ;
  AWeekOfYear  := StrToIntDef(Copy(cds_SchedulerYearWeek.AsString, 3,2),0) ;
  Start        := EncodeDateWeek(AYear, AWeekOfYear, FDayOfWeek) ;
  Start        := IncHour(Start, 6) ;
  cds_SchedulerStart.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Start) ;
 End ;
end;

procedure TdmInventory.cds_BookingDtlCalcFields(DataSet: TDataSet);
begin
 if (cds_BookingDtlNT.AsFloat * cds_BookingDtlNB.AsFloat) > 0 then
 Begin
  if cds_BookingDtlMCClassNo.AsInteger = 1 then
  cds_BookingDtlM1.AsFloat := ((1/(cds_BookingDtlNT.AsFloat / 1000) * 1/(cds_BookingDtlNB.AsFloat / 1000))
  * (cds_BookingDtlPlannedOutputNM3.AsFloat * (cds_BookingDtlUtfall.AsFloat / 100) ))
  * cds_BookingDtlAntalLamellerUt.AsInteger
  else
  cds_BookingDtlM1.AsFloat := ((1/(cds_BookingDtlNT.AsFloat / 1000) * 1/(cds_BookingDtlNB.AsFloat / 1000))
  * (cds_BookingDtlPlannedOutputNM3.AsFloat * (cds_BookingDtlUtfall.AsFloat / 100) )) ;
 End ;
end;

procedure TdmInventory.cds_BookingHdrCalcFields(DataSet: TDataSet);
begin
 cds_BookingHdrRestNM3.AsFloat  := cds_BookingHdrNM3.AsFloat  - cds_BookingHdrNM3PlanFardig.AsFloat ;
end;

procedure TdmInventory.ds_BookingHdrDataChange(Sender: TObject;
  Field: TField);
begin
 Filter_cds_BookingDtl ;
end;

procedure TdmInventory.MergeBookings(const NewID, OldID : Integer) ;
Begin
 Try
 sp_MergeBookings.ParamByName('@UserID').AsInteger      := ThisUser.UserID ;
 sp_MergeBookings.ParamByName('@NewID').AsInteger       := NewID ;
 sp_MergeBookings.ParamByName('@OldID').AsInteger       := OldID ;
 sp_MergeBookings.ExecProc ;
 Except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message + ' MergeBookings.Exec ') ;
   ShowMessage(E.Message+' :sp_MergeBookings.Exec') ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmInventory.mtSelectedPkgNoBeforePost(DataSet: TDataSet);
begin
 if mtSelectedPkgNoMARKERAD.AsInteger = 1 then
  MarkedPkgs:= Succ(MarkedPkgs)
   else
    if MarkedPkgs > 0 then
     MarkedPkgs:= Pred(MarkedPkgs) ;
end;

procedure TdmInventory.mtUserOutputUserIDChange(Sender: TField);
begin
  cds_Users.FindKey([mtUserOutputUserID.AsInteger]) ;
  RefreshPositionerByVerkNo(cds_UsersCompanyNo.AsInteger) ;
  RefreshUsersOutputProdunits (cds_UsersCompanyNo.AsInteger, mtUserOutputUserID.AsInteger) ;
end;

function TdmInventory.GetAntalLamellerOfRawMtrl : Integer ;
Var FDMemTable1 : TFDMemTable ;
Begin
 FDMemTable1 := TFDMemTable.Create(Self);
 FDMemTable1.Data := cds_BookingHdr.Data ;
 Try
 FDMemTable1.Active  := True ;
 Result                   := 1 ;
// FDMemTable1.Filter    := 'MCClassNo <> 1' ;
// FDMemTable1.Filtered  := True ;
 FDMemTable1.First ;

// if FDMemTable1.FieldByName('Urlagg').AsInteger = 0 then
// Begin
  if FDMemTable1.FieldByName('AB').AsFloat > 0 then
  Result := trunc(cds_BookingDtlAB.AsFloat / FDMemTable1.FieldByName('AB').AsFloat) ;
  if Result = 1 then
   Result := 0 ;
  if FDMemTable1.FieldByName('AT').AsFloat > 0 then
  Begin
   if trunc(cds_BookingDtlAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) > 1 then
   Result := Result + trunc(cds_BookingDtlAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) ;
  End ;

  if Result = 0 then
   Result := 1 ;
// End ;

 Finally
  FDMemTable1.Free ;
 End ;
End ;

procedure TdmInventory.cds_BookingHdrBeforePost(DataSet: TDataSet);
begin
 cds_Dim.ParamByName('ProductNo').AsInteger     := cds_BookingHdrProductNo.AsInteger ;
 cds_Dim.Active := True ;
 Try
 cds_BookingHdrAT.AsFloat := cds_DimAT.AsFloat ;
 cds_BookingHdrAB.AsFloat := cds_DimAB.AsFloat ;
// cds_BookingHdrNT.AsFloat := cds_DimNT.AsFloat ;
// cds_BookingHdrNB.AsFloat := cds_DimNB.AsFloat ;
 Finally
  cds_Dim.Active := False ;
 End ;
end;

procedure TdmInventory.cds_BookingDtlPlannedOutputNoOfUnitsChange(
  Sender: TField);
begin
 if (cds_BookingHdrNM3.AsFloat > 0) and (cds_BookingHdrNoOfUnits.AsFloat > 0) then
 cds_BookingDtlPlannedOutputNM3.AsFloat :=
 cds_BookingDtlPlannedOutputNoOfUnits.AsFloat *
 (cds_BookingHdrNM3.AsFloat / cds_BookingHdrNoOfUnits.AsFloat) ;
end;

procedure TdmInventory.cds_SchedulerYearWeekChange(Sender: TField);
Var AYear, AWeekOfYear  : Word;
    FDayOfWeek          : Word ;
    Start               : TDateTime ;
begin
 if (cds_SchedulerFixedDate.AsInteger = 1) and (cds_SchedulerTaskStatusField.AsInteger = 7) then
 Begin
  FDayOfWeek   := 1 ;
  AYear        := StrToIntDef('20' + Copy(cds_SchedulerYearWeek.AsString, 1,2),0) ;
  AWeekOfYear  := StrToIntDef(Copy(cds_SchedulerYearWeek.AsString, 3,2),0) ;
  Start        := EncodeDateWeek(AYear, AWeekOfYear, FDayOfWeek) ;
  Start        := IncHour(Start, 6) ;
  cds_SchedulerStart.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Start) ;
 End ; 
end;

procedure TdmInventory.cds_BookingDtlPlannedOutputNM3Change(
  Sender: TField);
begin
 if cds_BookingDtlUtfall.AsFloat > 0 then
 cds_BookingDtlBookedNM3.AsFloat  :=
 cds_BookingDtlPlannedOutputNM3.AsFloat /
  (cds_BookingDtlUtfall.AsFloat/100)
  else
  cds_BookingDtlBookedNM3.AsFloat  := 0 ;
end;

procedure TdmInventory.LoadAllBookingHdrIntoTempTable ;
Begin
  mt_temp.Active := False ;
  mt_temp.Active := True ;
  cds_BookingHdr.First ;
  While not cds_BookingHdr.Eof do
  Begin
   mt_temp.Insert ;
   mt_tempsspNo.AsInteger := cds_BookingHdrsspNo.AsInteger ;
   mt_temp.Post ;
   cds_BookingHdr.Next ;
  End ;
End ;

Function TdmInventory.ValidUtfall_BookingDtl : Boolean ;
Begin
 Result := True ;
 if cds_BookingDtl.Active then
 Begin
  cds_BookingDtl.First ;
  While not cds_BookingDtl.Eof do
  Begin
   if (cds_BookingDtlUtfall.IsNull) or (cds_BookingDtlUtfall.AsFloat <= 0) then
    Result := False ;
   cds_BookingDtl.Next ;
  End ;
 End ;
End ;

function TdmInventory.IsRunValid : String ;
const
  LF = #10;
Begin
 With dmInventory do
 Begin
  Result  := '' ;
  if (cds_Scheduler.Active) and (cds_Scheduler.RecordCount > 0) then
  Begin
   if (cds_SchedulerResourceID.IsNull) or (cds_SchedulerResourceID.AsInteger = 29) then
   Begin
    Result  := LF + 'Välj en mätpunkt!' ;
   End ;

   if (cds_SchedulerFeedSpeed.IsNull) or (cds_SchedulerFeedSpeed.AsInteger < 1) then
   Begin
    Result  := Result + LF + 'Ange matningshasthet!' ;
   End ;

   if (cds_SchedulerPreCalcEfficiencyFactor.IsNull) or (cds_SchedulerPreCalcEfficiencyFactor.AsInteger < 1) then
   Begin
    Result  := Result + LF + 'Ange Verkningsgrad!' ;
   End ;

   if (cds_SchedulerPostningstid.IsNull) or (cds_SchedulerPostningstid.AsInteger < 1) then
   Begin
    Result  := Result + LF + 'Ange postningstid!';
   End ;

   if ValidUtfall_BookingDtl = False then
   Begin
    Result  := Result + LF + 'Utfall saknas på en eller flera råvarurader, kontrollera!' ;
   End ;

   if Length(Result) > 0 then
    Result  := 'Kom ihåg att åtgärda följande i bokningen (körorder: ' + cds_SchedulerID.AsString + ')  ' + Result ;
  End ;//if (cds_Scheduler.Active) and (cds_Scheduler.RecordCount > 0) then
 End ;
End ;

procedure TdmInventory.cds_LOBuffertParamsAfterInsert(DataSet: TDataSet);
begin
 cds_LOBuffertParamsLOBuffertNo.AsInteger := dmsConnector.NextMaxNo('LOBuffert') ;
 cds_LOBuffertParamsVerkNo.AsInteger      := ThisUser.CompanyNo ;
 cds_LOBuffertParamsUserID.AsInteger      := ThisUser.UserID ;
end;

procedure TdmInventory.OpenLOBuffertParams(const VerkNo : Integer) ;
Begin
 with dmInventory do
 Begin
  if (not cds_LOBuffertParams.Active) or ((cds_LOBuffertParams.Active)
  and (cds_LOBuffertParamsVerkNo.AsInteger <> VerkNo)) then
  Begin
   cds_LOBuffertParams.Active := False ;
   cds_LOBuffertParams.ParamByName('VerkNo').AsInteger  := VerkNo ;
   cds_LOBuffertParams.Active := True ;
  End ;
 End ;
End ;

procedure TdmInventory.Refresh_sp_invpiv(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL, Info2 : String) ;
Begin

   if sp_invpiv.Active then
   Begin
    sp_invpiv.Fields.Clear ;
    sp_invpiv.EmptyDataSet ;
    sp_invpiv.Active := False ;
    sp_invpiv.Disconnect(True);
   End ;


 if sp_invpivPkgDtl.Active then
 Begin
  sp_invpivPkgDtl.Fields.Clear ;
  sp_invpivPkgDtl.EmptyDataSet ;
  sp_invpivPkgDtl.Active := False ;
  sp_invpivPkgDtl.Disconnect(True);
 End ;


 sp_invpiv.ParamByName('@LIPNo').AsString           := LIPNos ;
 sp_invpiv.ParamByName('@PivotUnit').AsInteger      := PivotUnit ;
 sp_invpiv.ParamByName('@LanguageCode').AsInteger   := ThisUser.LanguageID ;
 sp_invpiv.ParamByName('@OwnerNo').AsInteger        := OwnerNo ;
 if AT > 0 then
 sp_invpiv.ParamByName('@AT').AsFloat               := AT
 else
 sp_invpiv.ParamByName('@AT').AsFloat               := 0 ;
 if AB > 0 then
 sp_invpiv.ParamByName('@AB').AsFloat               := AB
 else
 sp_invpiv.ParamByName('@AB').AsFloat               := 0 ;

 if Length(Trim(Ref)) > 0 then
 sp_invpiv.ParamByName('@Ref').AsString             := Trim(Ref)
 else
 sp_invpiv.ParamByName('@Ref').AsString             := '' ;

 if Length(Trim(BL)) > 0 then
 sp_invpiv.ParamByName('@BL').AsString              := Trim(BL)
 else
 sp_invpiv.ParamByName('@BL').AsString             := '' ;

 if Length(Trim(Info2)) > 0 then
 sp_invpiv.ParamByName('@Info2').AsString           := Trim(Info2)
 else
 sp_invpiv.ParamByName('@Info2').AsString             := '' ;


 Try
 sp_invpiv.Active := True ;
 Except
//  On E: Exception do
//  Begin
//   dmsSystem.FDoLog(E.Message + ' sp_invpiv.Active ') ;
//   ShowMessage(E.Message+' :sp_MergeBookings.Exec') ;
//   Raise ;
//  End ;
 End ;
End ;

procedure TdmInventory.Refresh_sp_invpivPkg(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL : String) ;
Begin
 if sp_invpivPkg.Active then
 Begin
  sp_invpivPkg.Fields.Clear ;
  sp_invpivPkg.EmptyDataSet ;
  sp_invpivPkg.Active := False ;
  sp_invpivPkg.Disconnect(True);
 End ;


 sp_invpivPkg.ParamByName('@LIPNo').AsString       := LIPNos ;
 sp_invpivPkg.ParamByName('@PivotUnit').AsInteger  := PivotUnit ;
 sp_invpivPkg.ParamByName('@OwnerNo').AsInteger    := OwnerNo ;
 if AT > 0 then
 sp_invpivPkg.ParamByName('@AT').AsFloat           := AT
 else
 sp_invpivPkg.ParamByName('@AT').Clear();
 if AB > 0 then
 sp_invpivPkg.ParamByName('@AB').AsFloat           := AB
 else
 sp_invpivPkg.ParamByName('@AB').Clear();

 if Length(Trim(Ref)) > 0 then
 sp_invpivPkg.ParamByName('@Ref').AsString         := Trim(Ref)
 else
 sp_invpivPkg.ParamByName('@Ref').Clear ;

 if Length(Trim(BL)) > 0 then
 sp_invpivPkg.ParamByName('@BL').AsString         := Trim(BL)
 else
 sp_invpivPkg.ParamByName('@BL').Clear ;

 Try
 sp_invpivPkg.Active := True ;
 Except
//  On E: Exception do
//  Begin
//   dmsSystem.FDoLog(E.Message + ' sp_invpivPkg.Active ') ;
//   ShowMessage(E.Message+' :sp_MergeBookings.Exec') ;
//   Raise ;
//  End ;
 End ;
End ;

procedure TdmInventory.Refresh_sp_invpivPkgDtl(const LIPNo, InventorySource : Integer;const PivotUnit, ProductNo, ALMM, LP, Package_Size, CertNo : Integer;
const Ref, BL, Info2 : String) ;
Var L : Integer ;
Begin
 //L  := Round(ALMM/10) ;
 L  := ALMM ;
 if sp_invpivPkgDtl.Active then
 Begin
  sp_invpivPkgDtl.Fields.Clear ;
  sp_invpivPkgDtl.EmptyDataSet ;
  sp_invpivPkgDtl.Active := False ;
  sp_invpivPkgDtl.Disconnect(True);
 End ;
 sp_invpivPkgDtl.ParamByName('@LIPNo').AsInteger            := LIPNo ;
 sp_invpivPkgDtl.ParamByName('@PivotUnit').AsInteger        := PivotUnit ;
 sp_invpivPkgDtl.ParamByName('@LanguageCode').AsInteger     := ThisUser.LanguageID ;
 sp_invpivPkgDtl.ParamByName('@ProductNo').AsInteger        := ProductNo ;
 sp_invpivPkgDtl.ParamByName('@ALMM').AsInteger             := L ;
 sp_invpivPkgDtl.ParamByName('@LP').AsInteger               := LP ;
 sp_invpivPkgDtl.ParamByName('@Package_Size').AsInteger     := Package_Size ;
 sp_invpivPkgDtl.ParamByName('@CertNo').AsInteger           := CertNo ;
 sp_invpivPkgDtl.ParamByName('@InventorySource').AsInteger  := InventorySource ;

 if Length(Trim(Ref)) > 0 then
 sp_invpivPkgDtl.ParamByName('@Ref').AsString         := Trim(Ref)
 else
 sp_invpivPkgDtl.ParamByName('@Ref').Clear ;

 if Length(Trim(BL)) > 0 then
 sp_invpivPkgDtl.ParamByName('@BL').AsString          := Trim(BL)
 else
 sp_invpivPkgDtl.ParamByName('@BL').Clear ;

 if Length(Trim(Info2)) > 0 then
 sp_invpivPkgDtl.ParamByName('@Info2').AsString          := Trim(Info2)
 else
 sp_invpivPkgDtl.ParamByName('@Info2').Clear ;

 Try
 sp_invpivPkgDtl.Active := True ;
 Except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message + ' sp_invpivPkgDtl.Active ') ;
//   ShowMessage(E.Message+' :sp_MergeBookings.Exec') ;
   Raise ;
  End ;
 End ;
End ;



procedure TdmInventory.sp_invpivPkgDtlUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 upd_invpivPkgDtl.ConnectionName := sp_invpivPkgDtl.ConnectionName;
 upd_invpivPkgDtl.DataSet        := sp_invpivPkgDtl;
 upd_invpivPkgDtl.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied;
end;

procedure TdmInventory.sp_invpivPkgUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
 upd_invpivPkg.ConnectionName := sp_invpivPkg.ConnectionName;
 upd_invpivPkg.DataSet        := sp_invpivPkg;
 upd_invpivPkg.Apply(ARequest, AAction, AOptions);

 AAction := eaApplied;
end;

function TdmInventory.GetNewPackage_Size(var PackageSizeName : String) : Integer ;
var fPackageSize: TfPackageSize;
Begin
 fPackageSize := TfPackageSize.Create(nil);
 Try
  if fPackageSize.ShowModal = mrOK then
  Begin
   Result           := dmsSystem.cds_PackageSizePackageSizeNo.AsInteger ;
   PackageSizeName  := dmsSystem.cds_PackageSizePackageSizeName.AsString ;
  End
    else
     Begin
      Result            := -1 ;
      PackageSizeName   := '' ;
     End;
 Finally
  FreeAndNil(fPackageSize) ;
 End;
End;

function TdmInventory.GetNewCert(var CertShortName : String) : Integer ;
var fCert: TfCert;
Begin
 fCert := TfCert.Create(nil);
 Try
  if fCert.ShowModal = mrOK then
  Begin
   Result           := dmsSystem.cds_CertCertNo.AsInteger ;
   CertShortName    := dmsSystem.cds_CertCertShortName.AsString ;
  End
    else
     Begin
      Result            := -1 ;
      CertShortName   := '' ;
     End;
 Finally
  FreeAndNil(fCert) ;
 End;
End;

procedure TdmInventory.CngArtNoByPkgSize (const PackageNo, Package_Size : Integer; Prefix : string) ;
Begin
 sp_CngArtNoByPkgSize.ParamByName('@PackageNo').AsInteger     := PackageNo ;
 sp_CngArtNoByPkgSize.ParamByName('@SupplierCode').AsString   := Prefix ;
 sp_CngArtNoByPkgSize.ParamByName('@UserID').AsInteger        := ThisUser.UserID ;
 sp_CngArtNoByPkgSize.ParamByName('@Package_Size').AsInteger  := Package_Size ;
 Try
  sp_CngArtNoByPkgSize.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_CngArtNoByPkgSize.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;

procedure TdmInventory.CngCert (const PackageNo, CertNo : Integer; Prefix : string) ;
Begin
 sp_CngCert.ParamByName('@PackageNo').AsInteger     := PackageNo ;
 sp_CngCert.ParamByName('@SupplierCode').AsString   := Prefix ;
 sp_CngCert.ParamByName('@UserID').AsInteger        := ThisUser.UserID ;
 sp_CngCert.ParamByName('@CertNo').AsInteger        := CertNo ;
 Try
  sp_CngCert.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_CngCert.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;

procedure TdmInventory.CngRefAndInfo(const aPackageNo: integer; aReference,
  aInfo1, aInfo2, aPrefix: string);
begin
  sp_CngRefAndInfo.ParamByName('@PackageNo').AsInteger     := aPackageNo;
  sp_CngRefAndInfo.ParamByName('@SupplierCode').AsString   := aPrefix;
  sp_CngRefAndInfo.ParamByName('@UserID').AsInteger        := ThisUser.UserID;
  sp_CngRefAndInfo.ParamByName('@REFERENCE').AsString     := aReference;
  sp_CngRefAndInfo.ParamByName('@INFO1').AsString         := aInfo1;
  sp_CngRefAndInfo.ParamByName('@INFO2').AsString         := aInfo2;
  Try
    sp_CngRefAndInfo.ExecProc;
  Except
    On E: Exception do
    Begin
      ShowMessage(E.Message+' :sp_CngRefAndInfo.ExecProc');
      Raise;
    End;
  End;
end;

function TdmInventory.GetProductNoByPackageNoproductno(const PackageNo : Integer;const Prefix : String) : Integer ;
Begin
 sc_GetProductNoByPackageNo.Active  := False ;
 sc_GetProductNoByPackageNo.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sc_GetProductNoByPackageNo.ParamByName('SupplierCode').AsString  := Prefix ;
 sc_GetProductNoByPackageNo.Active  := True ;
 Try
 if not sc_GetProductNoByPackageNo.Eof then
  Result  := sc_GetProductNoByPackageNoproductno.AsInteger
   else
    Result  := -1 ;
 Finally
  sc_GetProductNoByPackageNo.Active  := False ;
 End ;
end  ;

function TdmInventory.GetAntalVagnar(const KilnChargeNo : Integer) : Integer ;
Begin
 Try
 cds_GetAntalVagnar.Active  := False ;
 cds_GetAntalVagnar.ParamByName('KilnNo').AsInteger := KilnChargeNo ;
 cds_GetAntalVagnar.Active  := True ;
 if not cds_GetAntalVagnar.Eof then
  Result  := cds_GetAntalVagnarNoOfVagnar.AsInteger
   else
    Result  := -1 ;
 Finally
  cds_GetAntalVagnar.Active := False ;
 End ;
End;

function TdmInventory.Get_AntalVagnarPerStatus(const KilnChargeNo, VagnStatus : Integer) : Integer ;
Begin
 Try
 cds_AntalVagnarPerStatus.Active  := False ;
 cds_AntalVagnarPerStatus.ParamByName('KilnChargeNo').AsInteger     := KilnChargeNo ;
 cds_AntalVagnarPerStatus.ParamByName('VagnStatus').AsInteger       := VagnStatus ;
 cds_AntalVagnarPerStatus.Active  := True ;
 if not cds_AntalVagnarPerStatus.Eof then
  Result  := cds_AntalVagnarPerStatusAntalVagnar.AsInteger
   else
    Result  := 0 ;
 Finally
  cds_AntalVagnarPerStatus.Active := False ;
 End ;
End;


function TdmInventory.GetSistaVagnNo(const KilnNo : Integer) : Integer ;
Begin
 Try
 cds_GetSistaVagnNo.Active  := False ;
 cds_GetSistaVagnNo.ParamByName('KilnNo').AsInteger := KilnNo ;
 cds_GetSistaVagnNo.Active  := True ;
 if not cds_GetSistaVagnNo.Eof then
  Result  := cds_GetSistaVagnNoSistaVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
  cds_GetSistaVagnNo.Active := False ;
 End ;
End;

procedure TdmInventory.MakeVagnSQL(const KilnChargeNo : Integer) ;
Var SQL : TStrings ;
    AntalStatus_0_Vagnar,
    AntalStatus_2_Vagnar,
    AntalStatus_1_Vagnar,
    TotaltAntalVagnar : Integer ;
Begin
   SQL  := TStringList.Create ;
   AntalStatus_0_Vagnar := Get_AntalVagnarPerStatus (KilnChargeNo, 0) ;

   AntalStatus_2_Vagnar := Get_AntalVagnarPerStatus (KilnchargeNo, 2) ;

   if AntalStatus_2_Vagnar > 2 then
    AntalStatus_2_Vagnar  := 2 ;

   AntalStatus_1_Vagnar   := Get_AntalVagnarPerStatus (KilnChargeNo, 1) ;// GetAntalVagnar(KilnNo) ;

   TotaltAntalVagnar      := AntalStatus_0_Vagnar + AntalStatus_2_Vagnar + AntalStatus_1_Vagnar ;

   With cds_Vagnar do
   Begin
     SQL.Clear ;
     SQL.Add('Select distinct top ' + inttostr(TotaltAntalVagnar) + ' kv.VagnNo') ;
     SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
     SQL.Add('inner join dbo.KilnVagn kv on kv.KilnChargeNo = kch.KilnChargeNo') ;
     SQL.Add('WHERE') ;
     SQL.Add('KCH.KilnChargeNo = :KilnChargeNo') ;
     SQL.Add('order by kv.VagnNo desc') ;
   End ;
End;

function TdmInventory.PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
Begin
 sq_PkgExistInInventory.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sq_PkgExistInInventory.ParamByName('SupplierCode').AsString  := SupplierCode ;
 sq_PkgExistInInventory.ParamByName('PIPNo').AsInteger        := PIPNo ;
 sq_PkgExistInInventory.Active  := True ;
 Try
 if not sq_PkgExistInInventory.Eof then
 Begin
  Result:= True ;
 End
  else
   Result:= False ;
 Finally
  sq_PkgExistInInventory.Active  := False ;
 End ;
End ;

procedure TdmInventory.ControlVagn(const VagnNo : Integer) ;
Var x : Integer ;
Begin
 x := 0 ;
 cds_KilnChargeRows.First ;
 while not cds_KilnChargeRows.Eof do
 Begin
  x := succ(x) ;
  if cds_KilnChargeRowsRowNo.AsInteger <> x then
  Begin
   cds_KilnChargeRows.Edit ;
   cds_KilnChargeRowsRowNo.AsInteger  := x ;
   cds_KilnChargeRows.Post ;
  End ;
  cds_KilnChargeRows.Next ;
 End;

 if x = 0 then
  cds_KilnVagn.Delete ;

End;

procedure TdmInventory.FlyttaVagn(const KilnChargeNo, VagnNo, MoveToLIPNo, NewVagnStatus : Integer) ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
  LIPNo         : Integer ;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
  TransactionNo := dmsConnector.StartTransaction;
  try
     sp_MoveVagn.ParamByName('@KilnChargeNo').AsInteger  := KilnChargeNo ;
     sp_MoveVagn.ParamByName('@VagnNo').AsInteger        := VagnNo ;
     sp_MoveVagn.ParamByName('@MoveToLIPNo').AsInteger   := MoveToLIPNo ;
     sp_MoveVagn.ParamByName('@NewVagnStatus').AsInteger := NewVagnStatus ;
     sp_MoveVagn.ExecProc ;
    dmsConnector.Commit ;
  except
   On E: EDatabaseError do
   Begin
    dmsConnector.Rollback ;
   End;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End;

function TdmInventory.GetFirstVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
Begin
 cds_GetFirstVagnNoPerVagnStatus.Active := False ;
 cds_GetFirstVagnNoPerVagnStatus.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
 cds_GetFirstVagnNoPerVagnStatus.ParamByName('VagnStatus').AsInteger    := VagnStatus ;
 cds_GetFirstVagnNoPerVagnStatus.Active := True ;
 Try
 if not cds_GetFirstVagnNoPerVagnStatus.Eof then
  Result  := cds_GetFirstVagnNoPerVagnStatusVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
   cds_GetFirstVagnNoPerVagnStatus.Active := False ;
 End;
End;

function TdmInventory.GetLastVagnNoPerVagnStatus(const KilnChargeNo, VagnStatus  : Integer) : Integer ;
Begin
 cds_GetLastVagnNoPerVagnStatus.Active := False ;
 cds_GetLastVagnNoPerVagnStatus.ParamByName('KilnChargeNo').AsInteger  := KilnChargeNo ;
 cds_GetLastVagnNoPerVagnStatus.ParamByName('VagnStatus').AsInteger    := VagnStatus ;
 cds_GetLastVagnNoPerVagnStatus.Active := True ;
 Try
 if not cds_GetLastVagnNoPerVagnStatus.Eof then
  Result  := cds_GetLastVagnNoPerVagnStatusVagnNo.AsInteger
   else
    Result  := -1 ;
 Finally
   cds_GetLastVagnNoPerVagnStatus.Active := False ;
 End;
End;

function TdmInventory.IsNoOfVagnarInKilnBiggerThenMaxVagnar(const pKilnChargeNo  : Integer) : Boolean ;
Var AntalVagnarITork, VagnStatus, MaxVagnarITork : Integer ;
Begin
 VagnStatus       := 1 ;
 AntalVagnarITork := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;

 KilnChargeNo     := pKilnChargeNo ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarITork   := cds_KilnChargeHdrNoOfVagnar.AsInteger ;

 if AntalVagnarITork > MaxVagnarITork then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.IsFreeSpaceInKiln(const pKilnChargeNo  : Integer) : Boolean ;
Var AntalVagnarITork, VagnStatus, MaxVagnarITork : Integer ;
Begin
 VagnStatus       := 1 ;
 AntalVagnarITork := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;

 KilnChargeNo     := pKilnChargeNo ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarITork   := cds_KilnChargeHdrNoOfVagnar.AsInteger ;

 if AntalVagnarITork < MaxVagnarITork then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.IsVagnStatus0(const VagnNo, KilnChargeNo : Integer) : Boolean ;
Begin
 cds_VagnStatus.Active := False ;
 cds_VagnStatus.ParamByName('VagnNo').AsInteger         := VagnNo ;
 cds_VagnStatus.ParamByName('KilnChargeNo').AsInteger   := KilnChargeNo ;
 cds_VagnStatus.Active := True ;
 Try
 if not cds_VagnStatus.Eof then
 Begin
  if cds_VagnStatusVagnStatus.AsInteger = 0 then
   Result  := True
    else
     Result := False ;
 End
   else
    Result := False ;
 Finally
   cds_VagnStatus.Active := False ;
 End;
End;

function TdmInventory.VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(const KilnChargeNo : Integer) : Boolean ;
Var MaxVagnarBeforeKiln, NoOfVagnarBefore, VagnStatus : Integer ;
Begin
 VagnStatus       := 0 ; //0 = Before kiln
 NoOfVagnarBefore := Get_AntalVagnarPerStatus(KilnChargeNo, VagnStatus) ;
 Open_cds_KilnChargeHdr ;
 MaxVagnarBeforeKiln   := cds_KilnChargeHdrNoOfVagnarBefore.AsInteger ;
 if NoOfVagnarBefore > MaxVagnarBeforeKiln then
  Result  := True
   else
    Result  := False ;
End;

function TdmInventory.PkgExistInInventoryKILN(const PackageNo, LIPNo : Integer;const Prefix : String3) : Boolean ;
Begin
 sp_PkgExistInLIP.ParamByName('@PackageNo').AsInteger     := PackageNo ;
 sp_PkgExistInLIP.ParamByName('@Prefix').AsString         := Prefix ;
 sp_PkgExistInLIP.ParamByName('@LIPNo').AsInteger         := LIPNo ;
 sp_PkgExistInLIP.Active  := True ;
 Try
 if not sp_PkgExistInLIP.Eof then
 Begin
  Result:= True ;
 End
  else
   Result:= False ;
 Finally
  sp_PkgExistInLIP.Active  := False ;
 End ;
End ;

procedure TdmInventory.Refresh_sp_Vis_LagerPOS_v1(const LIPNos : String;const PivotUnit, OwnerNo : Integer;const AT, AB : Double;const Ref, BL, Info2 : String) ;
Begin

   if sp_Vis_LagerPOS_v1.Active then
   Begin
    sp_Vis_LagerPOS_v1.Fields.Clear ;
    sp_Vis_LagerPOS_v1.EmptyDataSet ;
    sp_Vis_LagerPOS_v1.Active := False ;
    sp_Vis_LagerPOS_v1.Disconnect(True);
   End ;


 if sp_invpivPkgDtl.Active then
 Begin
  sp_invpivPkgDtl.Fields.Clear ;
  sp_invpivPkgDtl.EmptyDataSet ;
  sp_invpivPkgDtl.Active := False ;
  sp_invpivPkgDtl.Disconnect(True);
 End ;


 sp_Vis_LagerPOS_v1.ParamByName('@LIPNo').AsString           := LIPNos ;
 sp_Vis_LagerPOS_v1.ParamByName('@PivotUnit').AsInteger      := PivotUnit ;
 sp_Vis_LagerPOS_v1.ParamByName('@LanguageCode').AsInteger   := ThisUser.LanguageID ;
 sp_Vis_LagerPOS_v1.ParamByName('@OwnerNo').AsInteger        := OwnerNo ;
 if AT > 0 then
 sp_Vis_LagerPOS_v1.ParamByName('@AT').AsFloat               := AT
 else
 sp_Vis_LagerPOS_v1.ParamByName('@AT').AsFloat               := 0 ;
 if AB > 0 then
 sp_Vis_LagerPOS_v1.ParamByName('@AB').AsFloat               := AB
 else
 sp_Vis_LagerPOS_v1.ParamByName('@AB').AsFloat               := 0 ;

 if Length(Trim(Ref)) > 0 then
 sp_Vis_LagerPOS_v1.ParamByName('@Ref').AsString             := Trim(Ref)
 else
 sp_Vis_LagerPOS_v1.ParamByName('@Ref').AsString             := '' ;

 if Length(Trim(BL)) > 0 then
 sp_Vis_LagerPOS_v1.ParamByName('@BL').AsString              := Trim(BL)
 else
 sp_Vis_LagerPOS_v1.ParamByName('@BL').AsString             := '' ;

 if Length(Trim(Info2)) > 0 then
 sp_Vis_LagerPOS_v1.ParamByName('@Info2').AsString           := Trim(Info2)
 else
 sp_Vis_LagerPOS_v1.ParamByName('@Info2').AsString             := '' ;


 Try
 sp_Vis_LagerPOS_v1.Active := True ;
 Except
//  On E: Exception do
//  Begin
//   dmsSystem.FDoLog(E.Message + ' sp_Vis_LagerPOS_v1.Active ') ;
//   ShowMessage(E.Message+' :sp_MergeBookings.Exec') ;
//   Raise ;
//  End ;
 End ;
End ;

function TdmInventory.Refresh_sp_usersmonpu_piv : Boolean ; //Result true if rows available
Begin
  Refresh_allPkgsatoutput (ThisUser.CompanyNo) ;
  if sp_usersmonpu_piv.Active then
    sp_usersmonpu_piv.Active  := False ;
  Try
  sp_usersmonpu_piv.ParamByName('@UserID').AsInteger  := ThisUser.UserID ;
  sp_usersmonpu_piv.Active  := True ;
  if sp_usersmonpu_piv.RecordCount > 0 then
   Result := True
    else
     Result := False ;
  Except
{
           On E: Exception do
           Begin
            ShowMessage(E.Message+' :sp_GetCurrentSD.ExecProc') ;
            Raise ;
           End ;

}  End;
End;

function TdmInventory.GetProductDescriptionByPkgNoAndRegPointName(const PackageNoString : string;const RegPointname : String) : String ;
Begin
  sp_GetProdDescByPkgNoAndSifferPrefix.ParamByName('@PackageNo').AsString     :=  PackageNoString ;
  sp_GetProdDescByPkgNoAndSifferPrefix.ParamByName('@ClientNo').AsInteger     :=  ThisUser.CompanyNo ;
  sp_GetProdDescByPkgNoAndSifferPrefix.ParamByName('@RegPointName').AsString  :=  RegPointName ;
  sp_GetProdDescByPkgNoAndSifferPrefix.ParamByName('@LanguageID').AsInteger   :=  1 ;
  sp_GetProdDescByPkgNoAndSifferPrefix.Active :=  True ;
  Try
  if strToIntDef(PackageNoString,0) > 0 then
  Begin
    if not sp_GetProdDescByPkgNoAndSifferPrefix.Eof then
     Result := sp_GetProdDescByPkgNoAndSifferPrefix.FieldByName('ProductDisplayName').AsString
      else
      Begin
       if Length(PackageNoString) > 0 then
        Result := PackageNoString + ' / ' + RegPointName
         else
          Result  := '' ;
      End;
  End
   else
    Result  := '' ;
  Finally
    sp_GetProdDescByPkgNoAndSifferPrefix.Active :=  False ;
  End;
End;

procedure TdmInventory.Refresh_allPkgsatoutput (const VerkNo : integer) ;
Begin
 if sp_allPkgsatoutput.Active then
  sp_allPkgsatoutput.Active := False ;
 sp_allPkgsatoutput.ParamByName('@VerkNo').AsInteger      := VerkNo ;
 sp_allPkgsatoutput.ParamByName('@LanguageID').AsInteger  := 1 ;
 sp_allPkgsatoutput.Active  := True ;
End;

Function TdmInventory.GetPackageDescription(const PackageNoString : string) : String ;
Var PkgNo : integer ;
Begin
 PkgNo  := strtointDef(PackageNoString,-1) ;
  if sp_allPkgsatoutput.findkey([PkgNo]) then
   Result := sp_allPkgsatoutputPackageNo.AsString + ' ' +
   sp_allPkgsatoutputDIM_Grade.AsString + ' ' + sp_allPkgsatoutputMaxLength.AsString
    else
     Result := PackageNoString ;
End;

procedure TdmInventory.RefreshUsersOutputProdunits (const VerkNo, UserID : Integer) ;
Begin
  if sp_UsersOutputProdunits.Active then
   sp_UsersOutputProdunits.Active  := False ;
  sp_UsersOutputProdunits.ParamByName('@VerkNo').AsInteger := VerkNo ;
  sp_UsersOutputProdunits.ParamByName('@UserID').AsInteger := UserID ;
  sp_UsersOutputProdunits.Active  := True ;
End;

procedure TdmInventory.RefreshPositionerByVerkNo(const VerkNo : Integer) ;
Begin
  if sp_Positioner.Active then
   sp_Positioner.Active := False ;
   sp_Positioner.ParamByName('@VerkNo').AsInteger := VerkNo ;
   sp_Positioner.Active := True ;
End;

procedure TdmInventory.ChangeSelectedOutput(const ProductionUnitNo, UserID, Change, PositionID : Integer) ;
Begin
 Try
  sp_ChangeSelectedOutput.ParamByName('@ProductionUnitNo').AsInteger  := ProductionUnitNo ;
  sp_ChangeSelectedOutput.ParamByName('@UserID').AsInteger            := UserID ;
  sp_ChangeSelectedOutput.ParamByName('@Change').AsInteger            := Change ;
  sp_ChangeSelectedOutput.ParamByName('@PositionID').AsInteger        := PositionID ;
  sp_ChangeSelectedOutput.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
   ShowMessage(E.Message);
   Raise ;
  End ;
 end;
End;

end.


