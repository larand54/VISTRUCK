unit dmcLoadEntrySSP;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable, SqlTimSt, Dialogs,
  VidaType , Controls, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Variants ;

type
 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var ProductLengthNo : Integer;
    Var NoOfLengths : Integer
    ) of object;

  TdmLoadEntrySSP = class(TDataModule)
    ds_LoadHead: TDataSource;
    dsrcPkgsByInvOwner: TDataSource;
    ds_LO_LookUp: TDataSource;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    mtPkgNosproductno: TIntegerField;
    mtPkgNosproductlengthno: TIntegerField;
    ds_LoadPackages2: TDataSource;
    dsLORows: TDataSource;
    ds_LSP: TDataSource;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesChanged: TBooleanField;
    mtLoadPackagesSupplierShipPlanObjectNo: TIntegerField;
    mtLoadPackagesCustcdsNo: TIntegerField;
    cds_LoadHead: TFDQuery;
    cds_LSP: TFDQuery;
    cds_LoadHeadLoadNo: TIntegerField;
    cds_LoadHeadSupplierNo: TIntegerField;
    cds_LoadHeadLoadedDate: TSQLTimeStampField;
    cds_LoadHeadSenderLoadStatus: TIntegerField;
    cds_LoadHeadLoadID: TStringField;
    cds_LoadHeadMsgToShipper: TMemoField;
    cds_LoadHeadInternalNote: TMemoField;
    cds_LoadHeadPackageEntryOption: TIntegerField;
    cds_LoadHeadLocalShippingCompanyNo: TIntegerField;
    cds_LoadHeadLocalLoadingLocation: TIntegerField;
    cds_LoadHeadLocalDestinationNo: TIntegerField;
    cds_LoadHeadCreatedUser: TIntegerField;
    cds_LoadHeadModifiedUser: TIntegerField;
    cds_LoadHeadDateCreated: TSQLTimeStampField;
    cds_LoadHeadFS: TStringField;
    cds_LoadHeadOriginalSupplierNo: TIntegerField;
    cds_LoadHeadCustomerNo: TIntegerField;
    cds_LoadHeadNotering: TMemoField;
    cds_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadAR: TIntegerField;
    cds_LoadHeadShippingPlanNo: TIntegerField;
    cds_LSPShipping: TIntegerField;
    cds_LSPLoadNo: TIntegerField;
    cds_LSPLoadingLocationNo: TIntegerField;
    cds_LSPShipToInvPointNo: TIntegerField;
    cds_LSPSupplierNo: TIntegerField;
    cds_LSPShippingPlanNo: TIntegerField;
    cds_LSPCUSTOMER: TStringField;
    cds_LSPSHIPPER: TStringField;
    cds_LSPREADYDATE: TStringField;
    cds_LSPVESSEL: TStringField;
    cds_LSPETD: TSQLTimeStampField;
    cds_LSPETA: TSQLTimeStampField;
    cds_LSPSHIPPER_REF: TStringField;
    cds_LSPSHIPPERID: TStringField;
    cds_LSPSHIPPERS_SHIPDATE: TSQLTimeStampField;
    cds_LSPSHIPPERS_SHIPTIME: TSQLTimeStampField;
    cds_LSPORDERNO: TStringField;
    cds_LSPORDERTYPE: TStringField;
    cds_LSPCreatedUser: TIntegerField;
    cds_LSPModifiedUser: TIntegerField;
    cds_LSPDateCreated: TSQLTimeStampField;
    cds_LSPCustomerNo: TIntegerField;
    cds_LSPSUPPLIER: TStringField;
    cds_LSPLOC_CUST: TStringField;
    cds_LSPObjectType: TIntegerField;
    cds_LSPAvrop_CustomerNo: TIntegerField;
    cds_LSPLOADING_LOCATION: TStringField;
    cds_LSPSHIP_TO: TStringField;
    cds_LSPFunction: TIntegerField;
    cds_LSPLIPNo: TIntegerField;
    cds_LSPPIPNo: TIntegerField;
    cdsLORows: TFDQuery;
    cdsLORowsLoadNo: TIntegerField;
    cdsLORowsShippingPlanNo: TIntegerField;
    cdsLORowsLoadingLocationNo: TIntegerField;
    cdsLORowsShipToInvPointNo: TIntegerField;
    cdsLORowsCustomerNo: TIntegerField;
    cdsLORowsCustShipPlanDetailObjectNo: TIntegerField;
    cdsLORowsPKGCODE: TStringField;
    cdsLORowsProductNo: TIntegerField;
    cdsLORowsINTERNPRODDESC: TStringField;
    cdsLORowsLENGTHDESC: TStringField;
    cdsLORowsNOOFUNITS: TFloatField;
    cdsLORowsVOLUNIT: TStringField;
    cdsLORowsPRICE: TFloatField;
    cdsLORowsPRICEUNIT: TStringField;
    cdsLORowsMIN_LENGTH: TFloatField;
    cdsLORowsMAX_LENGTH: TFloatField;
    cdsLORowsACT_THICK: TFloatField;
    cdsLORowsACT_WIDTH: TFloatField;
    cdsLORowsACT_LENGTH: TFloatField;
    cdsLORowsREFERENCE: TStringField;
    cdsLORowsProductLengthNo: TIntegerField;
    cdsLORowsLEV_PERIOD_START: TIntegerField;
    cdsLORowsLEV_PERIOD_END: TIntegerField;
    cdsLORowsORDERNO: TStringField;
    cdsLORowsKR_Ref: TStringField;
    cdsLORowsPCSPERPKG: TIntegerField;
    cdsLORowsPRODUCTGROUPNO: TIntegerField;
    cdsLORowsPRODUCTDESCRIPTION: TStringField;
    cdsLORowsNOM_THICK: TFloatField;
    cdsLORowsNOM_WIDTH: TFloatField;
    cdsLORowsSupplierShipPlanObjectNo: TIntegerField;
    cdsLORowsProductLengthGroupNo: TIntegerField;
    cdsLORowsINCH_THICK: TStringField;
    cdsLORowsINVCH_WIDTH: TStringField;
    cdsLORowsSurfacingNo: TIntegerField;
    cdsLORowsSpeciesNo: TIntegerField;
    cdsLORowsGradeNo: TIntegerField;
    cdsLORowsPackageTypeNo: TIntegerField;
    cdsLORowsMATCH: TIntegerField;
    cdsLORowsPriceListName: TStringField;
    cdsLORowsProductCategoryNo: TIntegerField;
    cdsLORowsOverrideRL: TIntegerField;
    sq_GetLO_Records: TFDQuery;
    sq_GetLO_RecordsCustomerNo: TIntegerField;
    sq_GetLO_RecordsCustShipPlanDetailObjectNo: TIntegerField;
    sq_GetLO_RecordsLO_NUMBER: TIntegerField;
    sq_GetLO_RecordsPKGCODE: TStringField;
    sq_GetLO_RecordsProductNo: TIntegerField;
    sq_GetLO_RecordsINTERNPRODDESC: TStringField;
    sq_GetLO_RecordsLENGTHDESC: TStringField;
    sq_GetLO_RecordsNOOFUNITS: TFloatField;
    sq_GetLO_RecordsVOLUNIT: TStringField;
    sq_GetLO_RecordsPRICE: TFloatField;
    sq_GetLO_RecordsPRICEUNIT: TStringField;
    sq_GetLO_RecordsMIN_LENGTH: TFloatField;
    sq_GetLO_RecordsMAX_LENGTH: TFloatField;
    sq_GetLO_RecordsACT_THICK: TFloatField;
    sq_GetLO_RecordsACT_WIDTH: TFloatField;
    sq_GetLO_RecordsACT_LENGTH: TFloatField;
    sq_GetLO_RecordsREFERENCE: TStringField;
    sq_GetLO_RecordsProductLengthNo: TIntegerField;
    sq_GetLO_RecordsLEV_PERIOD_START: TIntegerField;
    sq_GetLO_RecordsLEV_PERIOD_END: TIntegerField;
    sq_GetLO_RecordsORDERNO: TStringField;
    sq_GetLO_RecordsKR_Ref: TStringField;
    sq_GetLO_RecordsPCSPERPKG: TIntegerField;
    sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField;
    sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField;
    sq_GetLO_RecordsNOM_THICK: TFloatField;
    sq_GetLO_RecordsNOM_WIDTH: TFloatField;
    sq_GetLO_RecordsSupplierShipPlanObjectNo: TIntegerField;
    sq_GetLO_RecordsProductLengthGroupNo: TIntegerField;
    sq_GetLO_RecordsINCH_THICK: TStringField;
    sq_GetLO_RecordsINVCH_WIDTH: TStringField;
    sq_GetLO_RecordsSurfacingNo: TIntegerField;
    sq_GetLO_RecordsSpeciesNo: TIntegerField;
    sq_GetLO_RecordsMainGradeNo: TIntegerField;
    sq_GetLO_RecordsPackageTypeNo: TIntegerField;
    sq_GetLO_RecordsLoadingLocationNo: TIntegerField;
    sq_GetLO_RecordsShipToInvPointNo: TIntegerField;
    sq_GetLO_RecordsOverrideRL: TIntegerField;
    sq_GetLO_RecordsProductCategoryNo: TIntegerField;
    cds_LoadPackages: TFDQuery;
    cds_LoadPackagesLoadNo: TIntegerField;
    cds_LoadPackagesShippingPlanNo: TIntegerField;
    cds_LoadPackagesPRODUCT: TStringField;
    cds_LoadPackagesLoadDetailNo: TIntegerField;
    cds_LoadPackagesPACKAGENO: TIntegerField;
    cds_LoadPackagesNoOfPackages: TIntegerField;
    cds_LoadPackagesPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesSupplierCode: TStringField;
    cds_LoadPackagesPackageOK: TIntegerField;
    cds_LoadPackagesProblemPackageLog: TStringField;
    cds_LoadPackagesCreatedUser: TIntegerField;
    cds_LoadPackagesModifiedUser: TIntegerField;
    cds_LoadPackagesDateCreated: TSQLTimeStampField;
    cds_LoadPackagesPCS: TIntegerField;
    cds_LoadPackagesM3_NOM: TFloatField;
    cds_LoadPackagesProductNo: TIntegerField;
    cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesNoOfLengths: TIntegerField;
    cds_LoadPackagesProductLengthNo: TIntegerField;
    cds_LoadPackagesALMM: TFloatField;
    cds_LoadPackagesActualThicknessMM: TFloatField;
    cds_LoadPackagesActualWidthMM: TFloatField;
    cds_LoadPackagesSurfacingNo: TIntegerField;
    cds_LoadPackagesSpeciesNo: TIntegerField;
    cds_LoadPackagesMainGradeNo: TIntegerField;
    cds_LoadPackagesOverrideMatch: TIntegerField;
    cds_LoadPackagesLIPNo: TIntegerField;
    cds_LoadPackagesPkg_State: TIntegerField;
    cds_LoadPackagesPkg_Function: TIntegerField;
    cds_LoadPackagesChanged: TIntegerField;
    cds_LoadPackagesDefsspno: TIntegerField;
    cds_LoadPackagesProductCategoryNo: TIntegerField;
    cds_LoadPackagesOverrideRL: TIntegerField;
    cds_LoadPackagesOldPackageTypeNo: TIntegerField;
    cds_LoadPackagesInvNr: TIntegerField;
    cds_LO_LookUp: TFDQuery;
    cds_LO_LookUpSHIPPING: TIntegerField;
    cds_LO_LookUpShippingPlanNo: TIntegerField;
    cds_LO_LookUpCustomerNo: TIntegerField;
    cds_LO_LookUpCUSTOMER: TStringField;
    cds_LO_LookUpORDERNO: TStringField;
    cds_LO_LookUpORDERTYPE: TStringField;
    cds_LO_LookUpSupplierNo: TIntegerField;
    cds_LO_LookUpSUPPLIER: TStringField;
    cds_LO_LookUpLOCAL_CUST: TStringField;
    cds_LO_LookUpLoadingLocation: TStringField;
    cds_LO_LookUpSHIP_TO: TStringField;
    cds_LO_LookUpOBJECTTYPE: TIntegerField;
    cds_LO_LookUpAVROP_CUSTOMERNO: TIntegerField;
    cds_LO_LookUpLoadingLocationNo: TIntegerField;
    cds_LO_LookUpShipToInvPointNo: TIntegerField;
    cds_LO_LookUpLIPNo: TIntegerField;
    cds_LO_LookUpPIPNo: TIntegerField;
    cdsPkgsByInvOwner: TFDQuery;
    cdsPkgsByInvOwnerPackageNo: TIntegerField;
    cdsPkgsByInvOwnerSupplierCode: TStringField;
    cdsPkgsByInvOwnerSupplierNo: TIntegerField;
    cdsPkgsByInvOwnerLengthDescription: TStringField;
    cdsPkgsByInvOwnerProductDisplayName: TStringField;
    cdsPkgsByInvOwnerProductNo: TIntegerField;
    cdsPkgsByInvOwnerNoOfLengths: TIntegerField;
    cdsPkgsByInvOwnerProductLengthNo: TIntegerField;
    sq_CheckLoadNo: TFDQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_Booking_Data: TFDQuery;
    sq_Booking_DataSHIPPER: TStringField;
    sq_Booking_DataREADYDATE: TStringField;
    sq_Booking_DataVESSEL: TStringField;
    sq_Booking_DataETD: TSQLTimeStampField;
    sq_Booking_DataETA: TSQLTimeStampField;
    sq_Booking_DataSHIPPER_REF: TStringField;
    sq_Booking_DataSHIPPERID: TStringField;
    sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField;
    sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField;
    sq_PkgInLoad: TFDQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sq_GetPkgNos: TFDQuery;
    sq_GetPkgNospackageno: TIntegerField;
    sq_GetPkgNossuppliercode: TStringField;
    sq_GetPkgNosLogicalInventoryPointNo: TIntegerField;
    sq_GetPkgNosdatecreated: TSQLTimeStampField;
    sq_GetPkgNospackagetypeno: TIntegerField;
    sq_GetPkgNosproductno: TIntegerField;
    sq_GetPkgNosproductlengthno: TIntegerField;
    sq_OnePkgDetailData: TFDQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataOnSticks: TIntegerField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataMFBM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataNoOfLengths: TIntegerField;
    sq_OnePkgDetailDataProductLengthNo: TIntegerField;
    sq_OnePkgDetailDataALMM: TFloatField;
    sq_OnePkgDetailDataProductNo: TIntegerField;
    sq_OnePkgDetailDataActualThicknessMM: TFloatField;
    sq_OnePkgDetailDataActualWidthMM: TFloatField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_OnePkgDetailDataSpeciesNo: TIntegerField;
    sq_OnePkgDetailDataMainGradeNo: TIntegerField;
    sq_OnePkgDetailDataLIPNo: TIntegerField;
    sq_OnePkgDetailDataProductCategoryNo: TIntegerField;
    sq_UpdateLSP: TFDQuery;
    sq_UpdateLoad: TFDQuery;
    sq_OkToDeleteLSP: TFDQuery;
    sq_OkToDeleteLSPLoadDetailNo: TIntegerField;
    sp_DeleteOneLoad: TFDStoredProc;
    sp_RemPkgFromLoad: TFDStoredProc;
    sp_ProcessPkgAND_Log: TFDStoredProc;
    sp_DeletePackage: TFDStoredProc;
    sp_creIntLO: TFDStoredProc;
    sp_UpdIntLO: TFDStoredProc;
    sp_RemPkgFromLoad_II: TFDStoredProc;
    sp_chgManLoadPkgs: TFDStoredProc;
    mtLoadProp: TkbmMemTable;
    mtLoadPropPIPNo: TIntegerField;
    mtLoadPropLIPNo: TIntegerField;
    mtLoadPropPIP: TStringField;
    mtLoadPropLIP: TStringField;
    cds_LoadHeadPIPNo: TIntegerField;
    cds_LoadHeadLIPNo: TIntegerField;
    cds_LoadHeadPIP: TStringField;
    cds_LoadHeadLIP: TStringField;
    FD_GetMaxLoadDetailNo: TFDQuery;
    FD_GetMaxLoadDetailNoMaxLoadDetailNo: TIntegerField;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    cds_LoadPackagesM3_NET: TFloatField;
    cds_LoadPackagesMFBM: TFloatField;
    cds_LoadPackagesKVM: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
    sq_IsLoadAvraknad: TFDQuery;
    sq_IsLoadAvraknadPaymentNo: TIntegerField;
    sq_IsLoadAvraknadLoadNo: TIntegerField;
    sq_PkgExistInInventory: TFDQuery;
    sq_PkgExistInInventoryPackageNo: TIntegerField;
    cdsLORowsCERTI: TStringField;
    cdsLORowsTr?slag: TStringField;
    cdsLORowsPkgDiff: TFloatField;
    cds_LoadPackagesPaketstorlek: TStringField;
    cds_LoadPackagesCertfiering: TStringField;
    cdsLORowsPaketstorlek: TStringField;
    cds_Props: TFDQuery;
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
    cds_PropsName: TStringField;
    cds_PropsForm: TStringField;
    cds_PropsUserID: TIntegerField;
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
    sp_LOBSetChanged: TFDStoredProc;
    cdsLORowsObjectType: TIntegerField;
    cds_LoadHeadShowOriginalLO: TIntegerField;
    cds_ObjecType: TFDQuery;
    cds_ObjecTypeMaxObjectType: TIntegerField;
    cdsLORowsInternnotering: TStringField;
    sp_SetPosition: TFDStoredProc;
    cds_LoadPackagesPositionName: TStringField;
    cds_LoadHeadShortNote: TStringField;
    cds_LoadPackagesREFERENCE: TStringField;
    cds_LoadPackagesINFO1: TStringField;
    cds_LoadPackagesINFO2: TStringField;
    cds_PropsFilter1: TStringField;
    cds_SaveFormSettings: TFDQuery;
    cds_SaveFormSettingsFilter1: TStringField;
    cds_SaveFormSettingsUserID: TIntegerField;
    cds_SaveFormSettingsForm: TStringField;
    sp_AdjustPkgArticleNoOnLoadPkgs: TFDStoredProc;
    sp_CtrlCorrectMainLO: TFDStoredProc;
    cds_getPkgArticleNo: TFDQuery;
    cds_GetActivePackage: TFDQuery;
    cds_DeActivatePackage: TFDQuery;
    cdsLORowsPkgArticleNo: TIntegerField;
    cdsLORowsPackageSizeNo: TIntegerField;
    sp_CreateNewBulkPkg: TFDStoredProc;
    cds_LoadPackagesArticleNo: TIntegerField;
    cds_GetPkgArticleNo_2: TFDQuery;
    cds_GetPkgArticleNo_2PkgArticleNo: TIntegerField;
    sp_CreatePalletPkgs: TFDStoredProc;
    cds_VE_Pallets_In_Load: TFDQuery;
    ds_VE_Pallets_In_Load: TDataSource;
    ds1: TDataSource;
    cds_LikedArticleUsage: TFDQuery;
    sq_OnePkgDetailDataREFERENCE: TStringField;
    sp_AddLoadPkgErrorLog: TFDStoredProc;
    cds_AddLoadPkgErrorLog: TFDQuery;
    ds_AddLoadPkgErrorLog: TDataSource;
    sp_LoadPkgErrorExists: TFDStoredProc;
    cds_LoadHeadLagerkod: TStringField;
    cdsLORowsLagerkod: TStringField;
    sp_CtrlPkgSavedToLoad: TFDStoredProc;
    cdsLORowsLoadedPkgs: TFloatField;
    sp_RegisterToLoadArrivalReg: TFDStoredProc;
    sp_RemPkgFromLoad_III: TFDStoredProc;
    sp_IsOrderPrepaid_Terms: TFDStoredProc;
    sp_IsLoadPrepaid_Terms: TFDStoredProc;
    sp_SetCallOffLoadStatus: TFDStoredProc;
    cdsLORowsLoadingAddressNo: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_LoadHead1SenderLoadStatusChange(Sender: TField);
    procedure ds_LoadPackages2DataChange(Sender: TObject; Field: TField);
    procedure dspLORowsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_LoadPackages1PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ds_LSPDataChange(Sender: TObject; Field: TField);
    procedure cds_LoadHeadAfterInsert(DataSet: TDataSet);
    procedure cds_LoadHeadBeforePost(DataSet: TDataSet);
    procedure cds_LSPAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesBeforePost(DataSet: TDataSet);
    procedure cds_LoadHeadPIPNoChange(Sender: TField);
    procedure cds_LoadHeadSupplierNoChange(Sender: TField);
    procedure cds_LoadPackagesPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cdsLORowsCalcFields(DataSet: TDataSet);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure cds_LoadHeadShowOriginalLOChange(Sender: TField);
    procedure cds_SaveFormSettingsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
   FOnAmbiguousPkgNo: TAmbiguityEvent;
   FWarningForRefMismatch: integer;


   procedure CtrlPkgSavedToLoad(const PackageNo : Integer;
                                  const SupplierCode : String; const LoadNo : Integer) ;
   procedure updateFlagForNoWarnings;
   procedure AdjustPkgArticleNoOnLoadPkgs(const LoadNo : Integer) ;
   Function  SetShowOriginalLO(const LONo : Integer) : Integer ;
   procedure LOBSetChanged (const PackageNo : Integer;Prefix : String3) ;
   procedure RemovePkgFromLoad_II(const Status, Operation : Integer) ;
   function  PkgExistInLoad : Boolean ;
   function  IS_Load_OK : Word ;
   procedure SaveLoadPkgs(const WhenPosted : TDateTime;const LoadNo:Integer);
   function  SaveLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer) : Boolean ;
   procedure ModifyLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer);
   procedure getPkgsByInvOwner(const PkgNo, InventoryOwner, PIPNo : Integer);
   function  DeletePackage(const LoadNo : Integer)   : Boolean ;
   procedure CleanUpLoadPkgsGrid(Sender: TObject);
   function  CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
   procedure ProcessPkgAND_Log(const Status, Operation : Integer) ;
   procedure RemovePkgFromLoad(const Status, Operation : Integer) ;

  public
    { Public declarations }
   PrepaidLoad  : Boolean ;
   LoadStatus,
   LIPNo, InventoryNo : Integer ;//, GlobalLoadDetailNo : Integer ;
   FLONo, FSupplierNo, FCustomerNo   : integer;
   function  CheckPkgsLoaded: Boolean;
   procedure SetCallOffLoadStatus(const LoadNo : Integer) ;
   function  IsLoadPrepaid_Terms(const LoadNo : Integer) : Integer ;
   function  IsOrderPrepaid_Terms(const LONo : Integer) : Integer ;
   procedure RemPkgFromLoad_III(const LoadNo, LoadDetailNo : Integer) ;
   function  ErrorPkgExist(const LoadNo : Integer) : Boolean ;
   procedure AddLoadPkgErrorLog(const LoadNo, NewPkgNo : Integer;const PkgSupplierCode, Errortext : String) ;
   function  noWarningForRefMismatch: boolean;
   function  isLinkedArticle(const aArticleNo: integer): boolean;
   function  Is_Load_Confirmed(const LoadNo : Integer) : Boolean ;
   function  createPalletPkg(const aLoadNo, aUserID: integer): integer;
   function  getNewBULKPackageNo: Integer;
   function  TestLOrow(const ArticleNo  : Integer) : integer ;
   function  getActivePackage(const aPkgArticleNo, aPIPNo: integer; const aSupplierCode: string): integer;
   procedure inactivatePackage(const aPkgNo: integer;const aSupplierCode : String);
   function  getPkgArticleNo_2(const aPkgNo: integer; aSupplierCode: string): integer;
   function  getPkgArticleNo(const aPkgNo, aPIPNo, aLONo: integer; VAR aSupplierCode: string3; VAR aLagerStatus: integer): integer;
   function  CtrlCorrectMainLO(const LONo, PackageNo  : Integer;const Prefix : String) : String ;
   procedure SetPositionOnSelectedPkgs (const PackageNo : Integer; const SupplierCode : String; const PositionID : Integer) ;
   function  OriginalFilter(const Add_AND : Boolean) : String ;
   procedure LoadUserProps (const Form : String) ;
   procedure SaveUserProps ;//(const Form : String) ;
   procedure CloseDataSets ;
   function  PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
   function  IsLoadOpen(const LoadNo : Integer) : Boolean ;
   function  DuplicatePackageNo(const PackageNo : Integer;const Prefix : String) : Boolean ;
   procedure csdUnit_OpenLagerLookup ;
   Function  GetMaxLoadDetailNoMaxLoadDetailNo(const LoadNo : Integer) : Integer ;
   //Procedure Refresh_PkgList (const LoadNo : Integer) ;
   procedure chgManLoadPkgs(const LoadNo : Integer) ;
   function  OkToDeleteLSP(const LoadNo, ShippingPlanNo : Integer) : Integer ;
   procedure UpdateLoad(const LoadNo : Integer) ;
   procedure UpdateLSP(const ShippingPlanNo : Integer) ;
   procedure UpdateLO(const LoadNo : Integer) ;
   function  CreateLO(const LoadNo, CustomerNo, SalesRegionNo, SupplierNo  : Integer) : Integer ;
   Function  DoesLOHavePackages (const LONo : Integer) : Boolean ;
   function  GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
   procedure DeleteONELoad(const LoadNo : Integer);
   function  IS_Packages_OK : Boolean ;
   Procedure Get_LO_LinesMatched (const PackageNo : Integer;const Supp_Code : String3) ;
   procedure SaveLOData(LoadNo: Integer);
   function  PkgNoToSuppCode(
              const PkgNo,
              InventoryOwner,
              PIPNo           : Integer;
              var SupplierNo  : Integer;
              var ProductNo   : Integer;
              Var ProductLengthNo, NoOfLengths : Integer): string3;
   property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmLoadEntrySSP: TdmLoadEntrySSP;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem ,
  dmc_ArrivingLoads, dmc_UserProps;

{$R *.dfm}


function TdmLoadEntrySSP.OriginalFilter(const Add_AND : Boolean) : String ;
Begin
 With dmLoadEntrySSP do
 Begin
  if cds_LoadHeadShowOriginalLO.AsInteger  <> 1 then
   Begin
    if Add_AND then
     Result  := ' and ObjectType > 2'
      else
       Result  := ' ObjectType > 2' ;
   End
    else
     Result  := '' ;
 End;
End ;

//Set checkbox on LO Lines when package rows change
Procedure TdmLoadEntrySSP.Get_LO_LinesMatched (const PackageNo : Integer;const Supp_Code : String3) ;
 Begin
  if (cdsLORows.RecordCount > 0) and (cds_LoadPackages.RecordCount > 0) then
  Begin
  Try
   cdsLORows.DisableControls ;
   With dmLoadEntrySSP do
   Begin
//S?tt current match till 0, vi vill bara se en LO rad kryssad i match kolumnen
    if cdsLORows.State in [dsEdit, dsInsert] then cdsLORows.Post ;
    cdsLORows.Filter    := 'Match = 1' ;
    cdsLORows.Filtered  := True ;
    Try
    cdsLORows.First ;
    While not cdsLORows.Eof do
    Begin
     cdsLORows.Edit ;
     cdsLORowsMATCH.AsInteger:= 0 ;
     cdsLORows.Post ;
    End ;
    Finally
     cdsLORows.Filter := dmLoadEntrySSP.OriginalFilter(False) ;
     //cdsLORows.Filtered:= False ;
    End ;
      if cdsLORows.FindKey([cds_LoadPackagesDefsspno.AsInteger]) then
      Begin
       cdsLORows.Edit ;
       cdsLORowsMATCH.AsInteger:= 1 ;
       cdsLORows.Post ;
      End
      else
      Begin
       cdsLORows.Edit ;
       cdsLORowsMATCH.AsInteger:= 0 ;
       cdsLORows.Post ;
      End ;
   End ; //with
  Finally
   cdsLORows.EnableControls ;
  End ;
 End ;//if...
End ;

procedure TdmLoadEntrySSP.inactivatePackage(const aPkgNo: integer;const aSupplierCode : String);
begin
  cds_DeActivatePackage.paramByName('PkgNo').AsInteger        := aPkgNo;
  cds_DeActivatePackage.paramByName('SupplierCode').AsString  := aSupplierCode ;
  try
    cds_DeActivatePackage.ExecSQL;
  except
    ON e: Exception do begin
      showMessage('Paket: ' + intToStr(aPkgNo) + ' kunde ej inaktiveras! se felmeddelande: '+e.message);
    end;
  end;
end;

function TdmLoadEntrySSP.isLinkedArticle(const aArticleNo: integer): boolean;
begin
  result := false;
  try
    cds_LikedArticleUsage.Active := false;
    cds_LikedArticleUsage.ParamByName('ARTICLENO').AsInteger := aArticleNo;
    cds_LikedArticleUsage.Active := true;
  finally
    result := cds_LikedArticleUsage.RecordCount > 0;
    cds_LikedArticleUsage.Active := false;
  end;
end;

function TdmLoadEntrySSP.CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
Begin
 sq_CheckLoadNo.Close ;
 sq_CheckLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_CheckLoadNo.Open ;
 if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
 Result := False
 else
 Result := True ;
 sq_CheckLoadNo.Close ;
End ;

procedure TdmLoadEntrySSP.SaveLOData(LoadNo: Integer);
// We have been passed data to be saved in the database. The data passed includes the original
// data(if any) and the modified/new data, so we can handle any concurrency issues that arise.
var
  WhenPosted: TDateTime;
  NewLoad: Boolean;
  Save_Cursor: TCursor;
begin
  NewLoad := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    WhenPosted := Now; // Make sure all records get same time of posting.

    if ThisUser.UserID <> 8 then
      if (Is_Load_Confirmed(cds_LoadHeadLoadNo.AsInteger)) and (PrepaidLoad = False) then
      begin
        ShowMessage('Kan inte spara f?r att lasten ?r ankomstregistrerad');
        Exit;
      end;

    dmsConnector.StartTransaction;
    try
      if NewLoad = TRUE then
      begin
        if SaveLoadHeader(WhenPosted, cds_LoadHeadLoadNo.AsInteger) = False then
        begin
          ShowMessage('A Load No conflict occured, please try save again or close the load form and try again.');
//        dmsConnector.Rollback ;
          cds_LoadHead.Edit;
          cds_LoadHeadLoadNo.AsInteger := 0;
          cds_LoadHead.Post;
          Exit;
        end;
      end
      else
      begin
    //Modify Existing load
        if not cds_LoadHead.UpdateOptions.ReadOnly then
          ModifyLoadHeader(WhenPosted, LoadNo);
      end; //Else

//     try
      // Now write the data to the database
      if cds_LSP.ChangeCount > 0 then
      begin
        cds_LSP.ApplyUpdates(0);
        cds_LSP.CommitUpdates;
      end;

      SaveLoadPkgs(WhenPosted, LoadNo);

      //Check and change package size and articleno

      if cds_LoadPackages.ChangeCount > 0 then
      begin
        cds_LoadPackages.ApplyUpdates(0);
        cds_LoadPackages.CommitUpdates;
      end;

      //Om status = 2 then check and change manuell overriden packages
      if cds_LoadHeadSenderLoadStatus.AsInteger = 2 then
      begin
        chgManLoadPkgs(LoadNo);
        AdjustPkgArticleNoOnLoadPkgs(LoadNo);
      end;

//      CleanUpLoadpkgsGrid(Sender) ;
      dmsConnector.Commit;
{    except
      on Exception do begin
        if NewLoad then
          LoadNo := NEW_ENTRY;
        raise;
        end;
      end; }

    except
      dmsConnector.Rollback;
      raise;
    end;

    if (not Assigned(dmArrivingLoads)) then
    begin
      dmArrivingLoads := TdmArrivingLoads.Create(nil);
    end;
    dmsSystem.AssignDMToThisWork('TdmLoadEntrySSP', 'dmArrivingLoads');
    try

      if cds_LoadHeadSenderLoadStatus.AsInteger >= 2 then
        dmArrivingLoads.GetIntPrice(-1, 0, -1, cds_LoadHeadLoadNo.AsInteger, True);

    finally
      if dmsSystem.DeleteAssigned('TdmLoadEntrySSP', 'dmArrivingLoads') = True then
      begin
        dmArrivingLoads.Free;
        dmArrivingLoads := Nil;
      end;
    end;

  finally
    Screen.Cursor := Save_Cursor;
  end;
end;

function TdmLoadEntrySSP.IS_Load_OK: Word;
Var Status : integer ;
begin
  Status := cds_LoadHeadSenderLoadStatus.AsInteger ;

  Result := 2;
  cds_LoadPackages.First;
  while not cds_LoadPackages.Eof do
  begin
    if ((cds_LoadPackagesPackageOK.AsInteger > 0) and (cds_LoadPackagesPackageOK.AsInteger <> VP_LengthNotInLengthGroup) and (cds_LoadPackagesOverrideRL.AsInteger = 0) and (dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))
 or ((dmLoadEntrySSP.cds_LSPObjectType.AsInteger = 2) and (cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup) and (cds_LoadPackagesOverrideRL.AsInteger = 0) and (dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))
 or ((cds_LoadPackagesShippingPlanNo.AsInteger < 1) and (dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))
 or (cds_LoadPackagesDefsspno.AsInteger = -1) then
      Result := 1;
    cds_LoadPackages.Next;

  if (Status = 3) or (Status = 4) then
   Result := Status ;

  end;
end;

function TdmLoadEntrySSP.SaveLoadHeader(const WhenPosted: TDateTime; const LoadNo: Integer): Boolean;
const
  ALWAYS_ZERO = 0;
begin
  if cds_LoadHead.State = dsBrowse then
    cds_LoadHead.Edit;
//  cds_LoadHeadLoadNo.AsInteger              := LoadNo ;

  cds_LoadHeadSupplierNo.AsInteger          := FSupplierNo;
  cds_LoadHeadPackageEntryOption.AsInteger  := 0;
  cds_LoadHeadCreatedUser.AsInteger         := ThisUser.UserID;
  cds_LoadHeadModifiedUser.AsInteger        := ThisUser.UserID;
  cds_LoadHeadDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now);
  cds_LoadHeadOriginalSupplierNo.AsInteger  := FSupplierNo;
  cds_LoadHeadCustomerNo.AsInteger          := FCustomerNo;

  cds_LoadHead.Post;

  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  begin
    cds_LoadHead.Edit;
    cds_LoadHeadSenderLoadStatus.AsInteger := IS_Load_OK;
    cds_LoadHead.Post;
  end;

  cds_LoadHead.Edit;
  cds_LoadHeadLoadOK.AsInteger := IS_Load_OK;
  cds_LoadHead.Post;

  if cds_LoadHead.ChangeCount > 0 then
  begin
    if cds_LoadHead.ApplyUpdates(0) > 0 then
    begin
      Result := False;
    end
    else
      Result := True;
  end
  else
    Result := True;
end;


procedure TdmLoadEntrySSP.ModifyLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer);
const
  ALWAYS_ZERO = 0;
begin
 Try
 if cds_LoadHead.State in [dsEdit, dsInsert] then
 cds_LoadHead.Post ;
 cds_LoadHead.Edit ;
 if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;

  cds_LoadHeadLoadOK.AsInteger            := IS_Load_OK ;
  cds_LoadHeadModifiedUser.AsInteger      := ThisUser.UserID ;

  cds_LoadHeadSupplierNo.AsInteger        := FSupplierNo;

  cds_LoadHeadOriginalSupplierNo.AsInteger:= FSupplierNo ;
  cds_LoadHeadCustomerNo.AsInteger        := FCustomerNo ;


  cds_LoadHead.Post ;


 if cds_LoadHead.ChangeCount > 0 then
 if cds_LoadHead.ApplyUpdates(0) > 0 then
 Begin
 End
 else
 cds_LoadHead.CommitUpdates ;

 Finally
    sp_RegisterToLoadArrivalReg.ParamByName('@LoadNo').AsInteger  := cds_LoadHeadLoadNo.AsInteger ;
    sp_RegisterToLoadArrivalReg.ExecProc ;
 End;
end;

function TdmLoadEntrySSP.noWarningForRefMismatch: boolean;
begin
  if FWarningForRefMismatch = -1 then begin
     updateFlagForNoWarnings;
  end;
  result := FWarningForRefMismatch = 0;
end;

procedure TdmLoadEntrySSP.CtrlPkgSavedToLoad(const PackageNo : Integer;
                                  const SupplierCode : String; const LoadNo : Integer) ;
Begin
 Try
  sp_CtrlPkgSavedToLoad.ParamByName('@PackageNo').AsInteger     := PackageNo ;
  sp_CtrlPkgSavedToLoad.ParamByName('@SupplierCode').AsString   := SupplierCode ;
  sp_CtrlPkgSavedToLoad.ParamByName('@LoadNo').AsInteger        := LoadNo ;
  sp_CtrlPkgSavedToLoad.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
  // Raise ;
  End ;
 end;
End;

procedure TdmLoadEntrySSP.SaveLoadPkgs(const WhenPosted : TDateTime;const LoadNo:Integer);
var
  Save_Cursor : TCursor;
  PackageNo   : Integer ;
  Prefix      : String ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try

    cds_LoadPackages.Filter   := 'Changed = 1' ;
    cds_LoadPackages.Filtered := True ;
    cds_LoadPackages.First ;
    While cds_LoadPackages.RecordCount > 0 do
    Begin
     PackageNo  := cds_LoadPackagesPackageNo.AsInteger ;
     Prefix     := cds_LoadPackagesSupplierCode.AsString ;
     LOBSetChanged(cds_LoadPackagesPackageNo.AsInteger, cds_LoadPackagesSupplierCode.AsString) ;
       if cds_LoadPackagesChanged.AsInteger = 1 then
       Begin
       if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
       Begin
        Case cds_LoadPackagesPkg_Function.AsInteger of
            ADD_PKG_TO_LOAD       : Begin
                                     //No log operations as nothing happened with the package
                                     // UpdateLoadDtl s?tter status och loggen
    //                                 UpdateLoadDtl(Sender, WhenPosted, LoadNo) ;
    //                                 SaveLoadDetailMatch(Sender, WhenPosted, LoadNo) ;
    //                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                     cds_LoadPackages.Edit ;
                                     cds_LoadPackagesPkg_State.AsInteger  := EXISTING_PACKAGE ;
                                     cds_LoadPackagesChanged.AsInteger    := 0 ;
                                     cds_LoadPackages.Post ;
                                      if cds_LoadPackages.ChangeCount > 0 then
                                      begin
                                        cds_LoadPackages.ApplyUpdates(0);
                                        cds_LoadPackages.CommitUpdates;
                                      end;

                                      CtrlPkgSavedToLoad(PackageNo,
                                      Prefix, LoadNo) ;
                                    End ;
            DELETE_PKG            : Begin
                                    //DeletePackage proc also makes an entry to PackageNumberLog
                                     DeletePackage(LoadNo) ;
                                     cds_LoadPackages.Delete ;
                                      if cds_LoadPackages.ChangeCount > 0 then
                                      begin
                                        cds_LoadPackages.ApplyUpdates(0);
                                        cds_LoadPackages.CommitUpdates;
                                      end;
                                    End ;
            REMOVE_PKG_FROM_LOAD  : Begin
                                    //Make an entry to PackageNumberLog and set pkgStatus = 1
                                     if cds_LoadPackagesOldPackageTypeNo.AsInteger > 0 then
                                     RemovePkgFromLoad_II(status_Pkg_IN_Inventory, oper_Remove_From_Load)
                                     else
                                     RemovePkgFromLoad(status_Pkg_IN_Inventory, oper_Remove_From_Load) ;

                                     cds_LoadPackages.Delete ;

                                       if cds_LoadPackages.ChangeCount > 0 then
                                      begin
                                        cds_LoadPackages.ApplyUpdates(0);
                                        cds_LoadPackages.CommitUpdates;
                                      end;
                                    End ;
        End ; //case
       End
        else //NEW_PACKAGE
           Begin
            Case cds_LoadPackagesPkg_Function.AsInteger of
                ADD_PKG_TO_LOAD       : Begin
                                        //Remove pkg from inventory pkgStatus = 0 and make entry in PackageNumberLog
                                        //SaveLoadDetail makes entry to sp_UpdatePackages and LoadDetailMatch
        //                                 SaveLoadDetail(Sender, WhenPosted, LoadNo) ;
        //                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                         //Change packageNumber.status and make entry to PackageNumberLog
                                         ProcessPkgAND_Log(status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load) ;

                                         //Package is now an existing package.
                                         if cds_LoadPackages.State in [dsbrowse] then
                                         cds_LoadPackages.Edit ;
                                         cds_LoadPackagesPkg_State.AsInteger  := EXISTING_PACKAGE ;
                                         cds_LoadPackagesChanged.AsInteger    := 0 ;
                                         cds_LoadPackages.Post ;


                                          if cds_LoadPackages.ChangeCount > 0 then
                                          begin
                                            cds_LoadPackages.ApplyUpdates(0);
                                            cds_LoadPackages.CommitUpdates;
                                          end;

                                          CtrlPkgSavedToLoad(PackageNo,
                                          Prefix, LoadNo) ;

                                        End ;
                DELETE_PKG            : Begin
                                        //DeletePackage proc also makes an entry to PackageNumberLog
                                         DeletePackage(LoadNo) ;
                                         cds_LoadPackages.Delete ;
                                        //cds_LoadPackages
                                          if cds_LoadPackages.ChangeCount > 0 then
                                          begin
                                            cds_LoadPackages.ApplyUpdates(0);
                                            cds_LoadPackages.CommitUpdates;
                                          end;
                                        End ;
                REMOVE_PKG_FROM_LOAD  : Begin
                                         //Do nothing as package is still in inventory
                                         //no set pkg status is needed as it set to 1 already
                                         cds_LoadPackages.Delete ;
                                          if cds_LoadPackages.ChangeCount > 0 then
                                          begin
                                            cds_LoadPackages.ApplyUpdates(0);
                                            cds_LoadPackages.CommitUpdates;
                                          end;
                                        End ;
            End ; //case
           End ;  //else begin

       End ;//if..


     cds_LoadPackages.Next ;
    end; //While

 Finally
  cds_LoadPackages.Filtered := False ;
  Screen.Cursor             := Save_Cursor ;
 End ;
end;

procedure TdmLoadEntrySSP.LOBSetChanged (const PackageNo : Integer;Prefix : String3) ;
Begin
  Try
  sp_LOBSetChanged.ParamByName('@PackageNo').AsInteger  := PackageNo ;
  sp_LOBSetChanged.ParamByName('@Prefix').AsString      := Prefix ;
  sp_LOBSetChanged.ExecProc ;

  except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
  // Raise ;
  End ;
 end;
End;

procedure TdmLoadEntrySSP.CleanUpLoadPkgsGrid(Sender: TObject);
begin
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 cds_LoadPackages.Post ;
                                 cds_LoadPackages.Next ;
                                End ;
        DELETE_PKG            : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   cds_LoadPackages.Next ;
  End; //While
end;

function TdmLoadEntrySSP.PkgNoToSuppCode(
  const PkgNo,  InventoryOwner, PIPNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer;
  Var ProductLengthNo, NoOfLengths : Integer): string3;
var
  SuppCode : string3;
begin
  cdsPkgsByInvOwner.Active:= False ;
  getPkgsByInvOwner(PkgNo, InventoryOwner, PIPNo);
//  cdsPkgsByInvOwner.SetProvider(provPkgsByInvOwner);
  cdsPkgsByInvOwner.Active:= True ;
  case cdsPkgsByInvOwner.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode           := cdsPkgsByInvOwner.FieldByName('SupplierCode').AsString ;
           SupplierNo         := cdsPkgsByInvOwner.FieldByName('SupplierNo'  ).AsInteger ;
           ProductNo          := cdsPkgsByInvOwner.FieldByName('ProductNo'  ).AsInteger ;
           ProductLengthNo    := cdsPkgsByInvOwner.FieldByName('ProductLengthNo'  ).AsInteger ;
           NoOfLengths        := cdsPkgsByInvOwner.FieldByName('NoOfLengths'  ).AsInteger ;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner,SuppCode,SupplierNo, ProductNo,
             ProductLengthNo, NoOfLengths);
           end;
    end;

  Result := SuppCode;
end;

function TdmLoadEntrySSP.getNewBULKPackageNo: Integer;
var
  sp: TFDStoredProc;
begin
  // Get next available ID-number using a storedprocedure
  sp := TFDStoredProc.create(nil);
  result := -1;
  try
    sp.Connection := TFDConnection(dmsConnector.FDConnection1);;
    sp.StoredProcName := 'dbo.vida_GetMaxNo';
    sp.Prepare;
    sp.ParamByName('@TableName').AsString := 'BLK';
    sp.Execute;
    result := sp.ParamByName('@MaxNo').AsInteger;
  finally
    sp.Free;
  end;
end;

function TdmLoadEntrySSP.getPkgArticleNo(const aPkgNo, aPIPNo, aLONo: integer; VAR aSupplierCode: string3; VAR aLagerStatus: integer): integer;
begin
  result := -1;
  if aSupplierCode = '' then
  try
    cds_getPkgArticleNo.Active := False;
    cds_getPkgArticleNo.paramByName('PackageNo').AsInteger := aPkgNo;
    cds_getPkgArticleNo.paramByName('PIPNo').AsInteger := aPIPNo;
//    cds_getPkgArticleNo.paramByName('LONo').AsInteger := aLONo;
//    cds_getPkgArticleNo.paramByName('SupplierCode').AsString := aSupplierCode;
    cds_getPkgArticleNo.Active := True;
    cds_getPkgArticleNo.First;
    if not cds_getPkgArticleNo.Eof then
    begin
      Result := cds_getPkgArticleNo.FieldByName('pkgArticleNo').AsInteger;
      aSupplierCode := cds_getPkgArticleNo.FieldByName('SupplierCode').AsString;
      aLagerStatus := cds_getPkgArticleNo.FieldByName('LagerStatus').AsInteger
    end
    else
      //raise Exception.Create('Package (' + intToStr(aPkgNo) + ' : ' + intToStr(aPIPNo) + ' : ' + aSupplierCode + ' not found!');
  finally
    cds_getPkgArticleNo.Active := False;
  end
  else 
    result := getPkgArticleNo_2(aPkgNo, aSupplierCode); 
end;

function TdmLoadEntrySSP.getPkgArticleNo_2(const aPkgNo: integer; aSupplierCode: string): integer;
begin
  result := -1;
  cds_GetPkgArticleNo_2.Active := false;
  cds_GetPkgArticleNo_2.ParamByName('PACKAGENO').AsInteger := aPkgNo;
  cds_GetPkgArticleNo_2.ParamByName('SUPPLIERCODE').AsString := aSupplierCode;
  try
    cds_GetPkgArticleNo_2.Active := true;
    cds_GetPkgArticleNo_2.First;
    if not cds_GetPkgArticleNo_2.Eof then
      result := cds_GetPkgArticleNo_2PkgArticleNo.AsInteger;
    cds_GetPkgArticleNo_2.Active := false;
    exit;

  except
    on E:Exception do begin
      showMessage('Kunde ej l?sa in artikelnummer pg DB-Fel:'+#10#13+E.Message);
    end;
  end;

end;

procedure TdmLoadEntrySSP.getPkgsByInvOwner(const PkgNo, InventoryOwner, PIPNo : Integer);
begin
//  sp_PksByInvOwner.Close;
  cdsPkgsByInvOwner.ParamByName('PkgNo').AsInteger     := PkgNo ;
  cdsPkgsByInvOwner.ParamByName('InvOwner').AsInteger  := InventoryOwner ;
  cdsPkgsByInvOwner.ParamByName('PIPNo').AsInteger     := PIPNo ;
//  sp_PksByInvOwner.Open;
end;

procedure TdmLoadEntrySSP.DataModuleCreate(Sender: TObject);
begin
 //GlobalLoadDetailNo := 1 ;
end;

function TdmLoadEntrySSP.DeletePackage(const LoadNo : Integer)   : Boolean ;
begin
 Result := False ;
 //Delete Package
 Try
 //Operation is set to 4 in the SP.
 //Kan inte ta bort paket fr?n systemet om paketet finns upptaget p? en annan last
 if PkgExistInLoad = False then
 Begin
  Try
  sp_DeletePackage.ParamByName('@PackageNo').AsInteger               := cds_LoadPackagesPackageNo.AsInteger ;
  sp_DeletePackage.ParamByName('@SupplierCode').AsString             := cds_LoadPackagesSupplierCode.AsString ;
  sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen m?tpunkt
  sp_DeletePackage.ParamByName('@PackageTypeNo').AsInteger           := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
  sp_DeletePackage.ParamByName('@LogicalInventoryPointNo').AsInteger := -1 ;
  sp_DeletePackage.ParamByName('@UserID').AsInteger                  := ThisUser.UserID ;
  sp_DeletePackage.ExecProc ;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
     Raise ;
    End ;
   end;
 End ;

 Except
  Result := False ;
 End ;
end;

procedure TdmLoadEntrySSP.RemovePkgFromLoad(const Status, Operation : Integer) ;
Begin
      Try
      sp_RemPkgFromLoad.Close ;
      sp_RemPkgFromLoad.ParamByName('@PackageNo').AsInteger                := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@SupplierCode').AsString              := cds_LoadPackagesSupplierCode.AsString ;
      sp_RemPkgFromLoad.ParamByName('@RegistrationPointNo').AsInteger      := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen m?tpunkt
      sp_RemPkgFromLoad.ParamByName('@PackageTypeNo').AsInteger            := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@LogicalInventoryPointNo').AsInteger  := cds_LoadPackagesLIPNo.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad.ParamByName('@Status').AsInteger                   := Status ;
      sp_RemPkgFromLoad.ParamByName('@Operation').AsInteger                := Operation ;
      sp_RemPkgFromLoad.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSP.RemovePkgFromLoad_II(const Status, Operation : Integer) ;
Begin
      Try
      sp_RemPkgFromLoad_II.Close ;
      sp_RemPkgFromLoad_II.ParamByName('@PackageNo').AsInteger                := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@SupplierCode').AsString              := cds_LoadPackagesSupplierCode.AsString ;
      sp_RemPkgFromLoad_II.ParamByName('@RegistrationPointNo').AsInteger      := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen m?tpunkt
      sp_RemPkgFromLoad_II.ParamByName('@PackageTypeNo').AsInteger            := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@LogicalInventoryPointNo').AsInteger  := cds_LoadPackagesLIPNo.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad_II.ParamByName('@Status').AsInteger                   := Status ;
      sp_RemPkgFromLoad_II.ParamByName('@Operation').AsInteger                := Operation ;
      sp_RemPkgFromLoad_II.ParamByName('@OldPackageTypeNo').AsInteger         := cds_LoadPackagesOLDPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad_II.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSP.ProcessPkgAND_Log(const Status, Operation : Integer) ;
Begin
//Set PackageNumber.Status = 0
//Make entry to PackageNumberLog
      Try
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('@PackageNo').AsInteger               := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@SupplierCode').AsString             := cds_LoadPackagesSupplierCode.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('@RegistrationPointNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen m?tpunkt
      sp_ProcessPkgAND_Log.ParamByName('@PackageTypeNo').AsInteger           := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@LogicalInventoryPointNo').AsInteger := cds_LoadPackagesLIPNo.AsInteger ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@UserID').AsInteger                  := ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('@Status').AsInteger                  := Status ;
      sp_ProcessPkgAND_Log.ParamByName('@Operation').AsInteger               := Operation ;
      sp_ProcessPkgAND_Log.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSP.DeleteONELoad(const LoadNo : Integer);
var
  Save_Cursor   : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  dmsConnector.StartTransaction;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    Try
    sp_DeleteONELoad.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_DeleteONEload.ExecProc;

    cds_LoadHead.Active := False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger  := -1000 ;
    cds_LoadHead.Active := True ;

    cds_LSP.Active := False ;
    cds_LSP.ParamByName('LoadNo').AsInteger  := -1000 ;
    cds_LSP.Active := True ;

    cdsLORows.Active := False ;
    cdsLORows.ParamByName('LoadNo').AsInteger  := -1000 ;
    cdsLORows.Active := True ;

    cds_LoadPackages.Active := False ;
    cds_LoadPackages.ParamByName('LoadNo').AsInteger  := -1000 ;
    cds_LoadPackages.Active := True ;




     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    dmsConnector.Commit ;
  except
    dmsConnector.Rollback ;
    raise;
  end;
  Finally
   Screen.Cursor := Save_Cursor ;
  End ;
end;


function TdmLoadEntrySSP.Is_Load_Confirmed (const LoadNo : Integer) : Boolean ;
Begin
 Result :=  dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;
{  Result:= False ;
  dmsSystem.sp_OneLoad.Close ;
  dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  dmsSystem.sp_OneLoad.Open ;
  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
   Result:= True ;
  dmsSystem.sp_OneLoad.Close ; }
End ;

function TdmLoadEntrySSP.IS_Packages_OK : Boolean ;
begin
 cds_LoadPackages.DisableControls ;
 Try
  Result:= True ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   if cds_LoadPackagesPackageNo.AsInteger < 1 then
    Begin
     Result:= False ;
     ShowMessage('Paketnr saknas p? rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   if cds_LoadPackagesSupplierCode.AsString < '0' then
    Begin
     Result:= False ;
     ShowMessage('Leverant?rskod saknas p? rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   cds_LoadPackages.Next ;
  End; //While
 Finally
  cds_LoadPackages.EnableControls ;
 End ;
end;

function TdmLoadEntrySSP.PkgExistInLoad : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger    := cds_LoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString  := cds_LoadPackagesSupplierCode.AsString ;
 sq_PkgInLoad.ParamByName('LoadNo').AsInteger       := cds_LoadHeadLoadNo.AsInteger ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  cds_LoadPackages.Edit ;
  cds_LoadPackagesProblemPackageLog.AsString:= 'Pkt finns upptaget i lastnr '
  +sq_PkgInLoadLastNr.AsString+' LO: '+sq_PkgInLoadLO.AsString ;
  cds_LoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;

function TdmLoadEntrySSP.GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
Var x : Integer ;
Begin
 x := 0 ;
 sq_GetPkgNos.ParamByName('packagecodeno').AsString             := Trim(packagecodeno) ;
 sq_GetPkgNos.ParamByName('LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
 sq_GetPkgNos.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
 sq_GetPkgNos.Open ;
 if not sq_GetPkgNos.Eof then
 While (not sq_GetPkgNos.Eof) and (noofpkgs > x) do
 begin
  if cds_LoadPackages.FindKey([sq_GetPkgNospackageno.AsInteger, Trim(sq_GetPkgNossuppliercode.AsString)]) then
  Begin
  End
  else
  begin
   mtPkgNos.Insert ;
   mtPkgNosPackageNo.AsInteger        := sq_GetPkgNospackageno.AsInteger ;
   mtPkgNosSuppliercode.AsString      := sq_GetPkgNossuppliercode.AsString ;
   mtPkgNosproductlengthno.AsInteger  := sq_GetPkgNosproductlengthno.AsInteger ;
   mtPkgNosproductno.AsInteger        := sq_GetPkgNosproductno.AsInteger ;
   mtPkgNos.Post ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNos.Next ;
 end ;
 sq_GetPkgNos.Close ;
 Result:= x ;
End ;

Function TdmLoadEntrySSP.DoesLOHavePackages (const LONo : Integer) : Boolean ;
Begin
 cds_LoadPackages.Filter:= 'ShippingPlanNo = '+IntToStr(LONo) ;
 cds_LoadPackages.Filtered:= True ;
 Try
  Result:= cds_LoadPackages.RecordCount > 0 ;
 Finally
  cds_LoadPackages.Filtered:= False ;
 End ;
End ;

//H?ller p? med packagetypeno osv, se till att inga dubletter skapas!!!
procedure TdmLoadEntrySSP.cdsLORowsCalcFields(DataSet: TDataSet);
begin
 //       5                :=     10  - 5 ;
 cdsLORowsPkgDiff.AsFloat := cdsLORowsNOOFUNITS.AsFloat - cdsLORowsLoadedPkgs.AsInteger ;
end;

procedure TdmLoadEntrySSP.cds_LoadHead1SenderLoadStatusChange(
  Sender: TField);
begin
{ if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (LoadStatus <> 2) then
 Begin
  cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 End ; }
 LoadStatus:= cds_LoadHeadSenderLoadStatus.AsInteger ;
end;

procedure TdmLoadEntrySSP.ds_LoadPackages2DataChange(Sender: TObject;
  Field: TField);
begin
 dmLoadEntrySSP.Get_LO_LinesMatched (cds_LoadpackagesPackageNo.AsInteger, Trim(cds_LoadPackagesSupplierCode.AsString)) ;
end;

procedure TdmLoadEntrySSP.dspLORowsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadShippingPlan' ;
end;

procedure TdmLoadEntrySSP.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDetail' ;
end;

procedure TdmLoadEntrySSP.cds_LoadPackages1PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('System Error. Paketnr '+DataSet.FieldByName('PACKAGENO').AsString
  +'/'+DataSet.FieldByName('SupplierCode').AsString
  +' ?r redan inmatat'+' Original Message: ' + E.Message) ;
  Action:= daAbort ;
end;

procedure TdmLoadEntrySSP.ds_LSPDataChange(Sender: TObject; Field: TField);
begin
 With dmsContact do
 Begin
  cdsAddressAndReference.Active:= False ;
  cdsAddressAndReference.ParamByName('@LO1').AsInteger:= cds_LSPShippingPlanNo.AsInteger ;
  cdsAddressAndReference.Active:= True ;
 End ; //with
end;

function TdmLoadEntrySSP.CreateLO(const LoadNo, CustomerNo, SalesRegionNo, SupplierNo  : Integer) : Integer ;
Begin
 Try
 sp_creIntLO.ParamByName('@LoadNo').AsInteger                  := LoadNo ;
 sp_creIntLO.ParamByName('@CustomerNo').AsInteger              := CustomerNo ;
 sp_creIntLO.ParamByName('@CreatedUser').AsInteger             := ThisUser.UserID ;
// sp_creIntLO.ParamByName('DefaultShipToInvPointNo').AsInteger := DefaultShipToInvPointNo ;
 sp_creIntLO.ParamByName('@SalesRegionNo').AsInteger           := SalesRegionNo ;
// sp_creIntLO.ParamByName('DefaultLIPNo').AsInteger            := DefaultLIPNo ;
 sp_creIntLO.ParamByName('@SupplierNo').AsInteger              := SupplierNo ;
// sp_creIntLO.ParamByName('Def_LoadingLocationNo').AsInteger   := Def_LoadingLocationNo ;
 sp_creIntLO.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Result:= sp_creIntLO.ParamByName('ShippingPlanNo').AsInteger ;
 sp_creIntLO.Close ;
End ;

procedure TdmLoadEntrySSP.UpdateLO(const LoadNo : Integer) ;
Begin
 Try
 sp_UpdIntLO.ParamByName('@LoadNo').AsInteger  := LoadNo ;
 sp_UpdIntLO.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSP.UpdateLSP(const ShippingPlanNo : Integer) ;
Begin
 Try
 sq_UpdateLSP.ParamByName('ShippingPlanNo').AsInteger  := ShippingPlanNo ;
 sq_UpdateLSP.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSP.UpdateLoad(const LoadNo : Integer) ;
Begin
 Try
 sq_UpdateLoad.ParamByName('LoadNo').AsInteger  := LoadNo ;
 sq_UpdateLoad.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

function TdmLoadEntrySSP.OkToDeleteLSP(const LoadNo, ShippingPlanNo : Integer) : Integer ;
Begin
 sq_OkToDeleteLSP.ParamByName('LoadNo').AsInteger         := LoadNo ;
 sq_OkToDeleteLSP.ParamByName('ShippingPlanNo').AsInteger := ShippingPlanNo ;
 sq_OkToDeleteLSP.Open ;
 Try
 if not sq_OkToDeleteLSP.Eof then
  Result:= sq_OkToDeleteLSPLoadDetailNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_OkToDeleteLSP.Close ;
 End ;
End ;

procedure TdmLoadEntrySSP.chgManLoadPkgs(const LoadNo : Integer) ;
Begin
    Try
    sp_chgManLoadPkgs.ParamByName('@LoadNo').AsInteger := LoadNo ;
    sp_chgManLoadPkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
    sp_chgManLoadPkgs.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

{ Procedure TdmLoadEntrySSP.Refresh_PkgList(const LoadNo : Integer) ;
 Begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadPackages.DisableControls ;
//    cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex2' ;//LoadDetailNo
    Try
     cds_LoadPackages.Active  := False ;
     cds_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active  := True ;
     cds_LoadPackages.Last ;
     GlobalLoadDetailNo := cds_LoadPackagesLoadDetailNo.AsInteger + 1 ;
    Finally
//     cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex1' ;//PkgNo och SuppCode
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ; }

Function TdmLoadEntrySSP.SetShowOriginalLO(const LONo : Integer) : Integer ;
Begin
 cds_ObjecType.ParamByName('LONo').AsInteger  := LONo ;
 cds_ObjecType.Active := True ;
 Try
 if not cds_ObjecType.Eof then
 Begin
  if cds_ObjecTypeMaxObjectType.AsInteger > 2 then
   Result := 0
    else
     Result := 1 ;
 End
  else
   Result := 1 ;
 Finally
  cds_ObjecType.Active := False ;
 End;
End;

procedure TdmLoadEntrySSP.cds_LoadHeadAfterInsert(DataSet: TDataSet);
begin
 cds_LoadHeadLoadNo.AsInteger             := dmsConnector.NextMaxNo('Loads') ;
 cds_LoadHeadLoadAR.AsInteger             := 0 ;//
 cds_LoadHeadDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_LoadHeadPackageEntryOption.AsInteger := 0 ;

 cds_LoadHeadShowOriginalLO.AsInteger     := SetShowOriginalLO(FLONo) ;

 if CheckIfLoadNoIsOK(cds_LoadHeadLoadNo.AsInteger) = False then
 Begin
  cds_LoadHeadLoadNo.AsInteger:= dmsConnector.NextMaxNo('Loads') ;
 End ;
end;

procedure TdmLoadEntrySSP.cds_LoadHeadBeforePost(DataSet: TDataSet);
begin
 if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp)  > Now then
 Begin
  ShowMessage('Utlastat datum ?r inom st?ngd period, var v?nlig justera.') ;
  Abort ;
 End ;
end;

function TdmLoadEntrySSP.IsOrderPrepaid_Terms(const LONo : Integer) : Integer ;
Begin
  sp_IsOrderPrepaid_Terms.ParamByName('@LONo').AsInteger := LONo ;
  sp_IsOrderPrepaid_Terms.ExecProc ;
  Result := sp_IsOrderPrepaid_Terms.ParamByName('@Prepaid').AsInteger ;
End ;

function TdmLoadEntrySSP.IsLoadPrepaid_Terms(const LoadNo : Integer) : Integer ;
Begin
  sp_IsLoadPrepaid_Terms.ParamByName('@LoadNo').AsInteger := LoadNo ;
  sp_IsLoadPrepaid_Terms.ExecProc ;
  Result := sp_IsLoadPrepaid_Terms.ParamByName('@Prepaid').AsInteger ;
End ;

procedure TdmLoadEntrySSP.SetCallOffLoadStatus(const LoadNo : Integer) ;
Begin
 Try
  sp_SetCallOffLoadStatus.ParamByName('@LoadNo').AsInteger := LoadNo ;
  sp_SetCallOffLoadStatus.ExecProc ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
  // Raise ;
  End ;
 end;
End;

procedure TdmLoadEntrySSP.cds_LSPAfterInsert(DataSet: TDataSet);
begin
   cds_LSPLoadNo.AsInteger              := cds_LoadHeadLoadNo.AsInteger ;
//   cds_LSPConfirmedByReciever.AsInteger := 0 ;
//   cds_LSPConfirmedBySupplier.AsInteger := 0 ;
   cds_LSPCreatedUser.AsInteger         := ThisUser.UserID ;
   cds_LSPModifiedUser.AsInteger        := ThisUser.UserID ;
   cds_LSPDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmLoadEntrySSP.cds_PropsAfterInsert(DataSet: TDataSet);
begin
 cds_PropsUserID.AsInteger := ThisUser.UserID ;
end;

procedure TdmLoadEntrySSP.cds_SaveFormSettingsAfterInsert(DataSet: TDataSet);
begin
  cds_SaveFormSettingsUserID.AsInteger  := ThisUser.UserID ;
end;

procedure TdmLoadEntrySSP.cds_LoadPackagesAfterInsert(DataSet: TDataSet);
begin
 if cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  Abort ;
  ShowMessage('Spara lasten f?rst.') ;
  Exit ;
 End ;
 cds_LoadPackagesPkg_State.AsInteger        := NEW_PACKAGE ;
 cds_LoadPackagesPkg_Function.AsInteger     := ADD_PKG_TO_LOAD ;
 cds_LoadPackagesOverrideMatch.AsInteger    := 0 ;
 cds_LoadPackagesChanged.AsInteger          := 1 ;
 cds_LoadPackagesLoadNo.AsInteger           := cds_LoadHeadLoadNo.AsInteger ;
 cds_LoadPackagesCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_LoadPackagesModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_LoadPackagesDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;

 cds_LoadPackagesLoadDetailNo.AsInteger     := dmsConnector.NextSecondMaxNo('Loads',
 cds_LoadHeadLoadNo.AsInteger) ;
end;

procedure TdmLoadEntrySSP.cds_LoadPackagesBeforePost(DataSet: TDataSet);
begin
 if cds_LoadPackagesPACKAGENO.IsNull then
 Abort ;

// if DataSet.FieldByName('LoadDetailNo').AsInteger < 1 then
// Begin
//  DataSet.FieldByName('LoadDetailNo').AsInteger := dmsConnector.GetMaxLoadDetailNo(cds_LoadHeadLoadNo.AsInteger) ;
//   GlobalLoadDetailNo ;
//  GlobalLoadDetailNo                            := Succ(GlobalLoadDetailNo) ;
// End ;
end;

procedure TdmLoadEntrySSP.cds_LoadHeadPIPNoChange(Sender: TField);
begin
   cds_LIP2.Active  := False ;
   if not cds_LoadHeadPIP.IsNull then
   cds_LIP2.ParamByName('PIPNo').AsInteger      := cds_LoadHeadPIPNo.AsInteger
   else
   cds_LIP2.ParamByName('PIPNo').AsInteger      := -1 ;
   cds_LIP2.Active  := True ;
end;

Function TdmLoadEntrySSP.GetMaxLoadDetailNoMaxLoadDetailNo(const LoadNo : Integer) : Integer ;
Begin
 Try
 FD_GetMaxLoadDetailNo.ParamByName('LoadNo').AsInteger  := LoadNo ;
 FD_GetMaxLoadDetailNo.Open ;
 if not  FD_GetMaxLoadDetailNo.Eof then
   Result := FD_GetMaxLoadDetailNoMaxLoadDetailNo.AsInteger
    else
     Result := 0 ;
 Finally
  FD_GetMaxLoadDetailNo.Close ;
 End ;
End ;

function TdmLoadEntrySSP.createPalletPkg(const aLoadNo, aUserID: integer): integer;
begin
  result := -1;
  try
    sp_CreatePalletPkgs.Active := false;
    sp_CreatePalletPkgs.Params.ParamByName('@LoadNo').AsInteger := aLoadNo;
    sp_CreatePalletPkgs.Params.ParamByName('@UserId').AsInteger := aUserId;
    sp_CreatePalletPkgs.Active := true;
    result := 0;
  finally

  end;
end;

procedure TdmLoadEntrySSP.csdUnit_OpenLagerLookup ;
Begin
  With dmLoadEntrySSP do
  Begin

   cds_PIP2.Active  := False ;
   cds_PIP2.ParamByName('OwnerNo').AsInteger      := cds_LoadHeadSupplierNo.AsInteger ;
   cds_PIP2.ParamByName('LegoOwnerNo').AsInteger  := ThisUser.CompanyNo ;
   cds_PIP2.Active  := True ;


   cds_LIP2.Active  := False ;
   if not cds_LoadHeadPIPNo.IsNull then
   cds_LIP2.ParamByName('PIPNo').AsInteger      := cds_LoadHeadPIPNo.AsInteger
   else
   cds_LIP2.ParamByName('PIPNo').AsInteger      := -1 ;
   cds_LIP2.Active  := True ;
  End ;
End ;


procedure TdmLoadEntrySSP.cds_LoadHeadShowOriginalLOChange(Sender: TField);
begin
 cdsLORows.Filter := dmLoadEntrySSP.OriginalFilter(False) ;
end;

procedure TdmLoadEntrySSP.cds_LoadHeadSupplierNoChange(Sender: TField);
begin
 csdUnit_OpenLagerLookup ;
end;

procedure TdmLoadEntrySSP.cds_LoadPackagesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  dmsSystem.FDoLog(E.Message + '  unit: ' + dmLoadEntrySSP.Name) ;

  ShowMessage('Paketnumret ' + DataSet.FieldByName('PACKAGENO').AsString + ' ?r inte unikt i lasten.') ;

//  Action  := daAbort ;
  Action  := daFail ;
end;

function TdmLoadEntrySSP.DuplicatePackageNo(const PackageNo : Integer;const Prefix : String) : Boolean ;
Var TempDataSet: TFDMemTable ;
Begin
 TempDataSet := TFDMemTable.Create(nil);
 try
 { clone the real dataset with Reset set to True }
 { so that the current range is not cloned }
// TempDataSet.CloneCursor(cdsLoads, True);
 TempDataSet.CloneCursor(cds_LoadPackages, False, False);

 TempDataSet.Filter := 'PackageNo = ' + inttostr(PackageNo) + ' and SupplierCode = ' + QuotedStr(Prefix) ;
 TempDataSet.Filtered := True ;
 if TempDataSet.RecordCount > 1 then
  Result  := True
   else
    Result  := False ;

{ if TempDataSet.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Prefix]), []) then
  Result  := True
   else
    Result  := False ; }

 finally
  TempDataSet.Filtered := False ;
  TempDataSet.Free; { free the temporary data set }
 end;
End ;

function TdmLoadEntrySSP.getActivePackage(const aPkgArticleNo, aPIPNo: integer;
  const aSupplierCode: string): integer;
begin
  cds_getActivePackage.Active := false;
  cds_getActivePackage.ParamByName('PkgArticleNo').AsInteger := aPkgArticleNo;
  //Tog bort denna parameter d? det kan vara olika prefix p? det som finns i lager och det prefix som anv?nds som parameterv?rde.
//  cds_getActivePackage.ParamByName('SupplierCode').AsString := aSupplierCode;
  cds_getActivePackage.ParamByName('PIPNo').AsInteger := aPIPNo;
  cds_getActivePackage.Active := true;
  if not cds_getActivePackage.Eof then
    result :=   cds_getActivePackage.FieldByName('PackageNo').AsInteger
  else
    raise Exception.Create('Active Package  for articleNo (' + intToStr(aPkgArticleNo) + ' : ' + intToStr(aPIPNo) + ' : ' + aSupplierCode + ' not found!');
end;

function TdmLoadEntrySSP.IsLoadOpen(const LoadNo : Integer) : Boolean ;
Begin
 if cds_LoadHead.Active then
 Begin
  if cds_LoadHead.FindKey([LoadNo]) then
   Result := True
    else
     Result := False ;
 End
 else
 Result := False ;
End ;

function TdmLoadEntrySSP.PkgExistInInventory(const PackageNo, PIPNo : Integer;const SupplierCode : String3) : Boolean ;
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

procedure TdmLoadEntrySSP.CloseDataSets ;
begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadHead.Active                           := False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger  := -100 ;
    cds_LoadPackages.Active                       := False ;

    cdsLORows.Active                              := False ;
    cdsLORows.ParamByName('LoadNo').AsInteger     := -100 ;
    cdsLORows.Active                              := True ;

    dmsContact.cds_LocalShipper.Active            := False ;

    cds_LoadPackages.Active:= False ;
    cds_LoadPackages.ParamByName('LoadNo').AsInteger:= -100 ;
    cds_LoadPackages.Active:= True ;
   End ;
end;

procedure TdmLoadEntrySSP.SaveUserProps ;//(const Form : String) ;
Var x : Integer ;
Begin
// if mtProps.State in [dsEdit, dsInsert] then
// mtProps.Post ;
 if cds_Props.State in [dsEdit, dsInsert] then
  cds_Props.Post ;
 if cds_Props.ChangeCount > 0 then
 Begin
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;
{
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
 Begin
  cds_Props.Insert ;
  cds_PropsForm.AsString    := Form ;
  cds_PropsUserID.AsInteger := ThisUser.UserID ;
 End
   else
    cds_Props.Edit ;

//  For x := 0 to 14 do
//   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 cds_Props.Active:= False ;
 }
End ;

procedure TdmLoadEntrySSP.LoadUserProps (const Form : String) ;
Var VerkNo : Integer ;
Begin
// mtProps.Active:= True ;
 cds_Props.Active := False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  cds_Props.Edit ;
  VerkNo  := cds_PropsVerkNo.AsInteger ;
  cds_PropsVerkNo.AsInteger := VerkNo ;
  cds_Props.Post ;

//  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
//  For x := 0 to 14 do
//   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
//  mtProps.Post ;

//  mtPropsOwnerNo.OnChange     := nil ;
//  mtPropsPIPNo.OnChange       := nil ;
//  mtPropsProducerNo.OnChange  := nil ;
//  Try
//  mtProps.Edit ;
//  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
//  For x := 0 to 14 do
//   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
//  mtPropsRegDate.AsDateTime := Now ;
//  mtPropsRunNo.AsInteger    := -1 ;
//  mtProps.Post ;
//  Finally
//   mtPropsProducerNo.OnChange   := mtPropsProducerNoChange ;
//   mtPropsPIPNo.OnChange        := mtPropsPIPNoChange ;
//   mtPropsOwnerNo.OnChange      := mtPropsOwnerNoChange ;
//  End ;
 End
 else
 Begin
  cds_Props.Insert ;
//  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;
  cds_PropsForm.AsString          := Form ;

{  if mtPropsRoleType.AsInteger = cLego then
  Begin
   mtPropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
   mtPropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  mtPropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ; }

  cds_PropsInputOption.AsInteger  :=  0 ;
  cds_PropsRegDate.AsDateTime     :=  Now ;
  cds_PropsCopyPcs.AsInteger      :=  1 ;
  cds_PropsRunNo.AsInteger        :=  -1 ;
  cds_PropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  cds_PropsAutoColWidth.AsInteger :=  1 ;
  cds_PropsSupplierCode.AsString  := dmsContact.GetClientCode(ThisUser.CompanyNo) ;
  cds_PropsLengthGroupNo.AsInteger:= -1 ;
  cds_Props.Post ;
 End ;
// cds_Props.Active:= False ;
  FWarningForRefMismatch        := -1;  // Mark it unread.
End ;

procedure TdmLoadEntrySSP.SetPositionOnSelectedPkgs (const PackageNo : Integer; const SupplierCode : String; const PositionID : Integer) ;
Begin
  Try
  sp_SetPosition.ParamByName('@PackageNo').AsInteger    :=  PackageNo ;
  sp_SetPosition.ParamByName('@Prefix').AsString        :=  SupplierCode ;
  sp_SetPosition.ParamByName('@PositionID').AsInteger   :=  PositionID ;
  sp_SetPosition.ExecProc ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
  // Raise ;
   End ;
  End;
End;

procedure TdmLoadEntrySSP.AdjustPkgArticleNoOnLoadPkgs(const LoadNo : Integer) ;
Begin
    Try
    sp_AdjustPkgArticleNoOnLoadPkgs.ParamByName('@LoadNo').AsInteger := LoadNo ;
    sp_AdjustPkgArticleNoOnLoadPkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
    sp_AdjustPkgArticleNoOnLoadPkgs.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

function TdmLoadEntrySSP.TestLOrow(const ArticleNo  : Integer) : integer ;
Begin
  if cdsLORows.Locate('PkgArticleNo', ArticleNo, []) then
    Result := cdsLORowsSupplierShipPlanObjectNo.asinteger
  else
    Result := -1;
end;

procedure TdmLoadEntrySSP.updateFlagForNoWarnings;
var
  qry: TFDQuery;
begin
  qry := TFDQuery.Create(self);
  try
    qry.Connection := dmsConnector.FDConnection1;
    qry.SQL.Clear;
    qry.SQL.Add(format('SELECT WarningForRefMismatch FROM dbo.Users U WHERE U.UserID = %d', [ThisUser.UserID]));
    qry.Open();
    FWarningForRefMismatch := qry.FieldByName('WarningForRefMismatch').AsInteger;
    qry.Close;
  finally
    if assigned(qry) then
      qry.Free;
  end;
end;

function TdmLoadEntrySSP.CtrlCorrectMainLO(const LONo, PackageNo  : Integer;const Prefix : String) : String ;
Begin
    Try
    sp_CtrlCorrectMainLO.ParamByName('@RegLONo').AsInteger    := LONo ;
    sp_CtrlCorrectMainLO.ParamByName('@PackageNo').AsInteger  := PackageNo ;
    sp_CtrlCorrectMainLO.ParamByName('@Prefix').AsString      := Prefix ;
    sp_CtrlCorrectMainLO.ExecProc ;
    Result  := sp_CtrlCorrectMainLO.ParamByName('@CorrectLO').AsString  ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;


{
  procedure TdmLoadEntrySSP.AddLoadPkgErrorLog(const LoadNo, NewPkgNo : Integer;const PkgSupplierCode, Errortext : String) ;
  Begin
   Try
    sp_AddLoadPkgErrorLog.ParamByName('@LoadNo').AsInteger    := LoadNo ;
    sp_AddLoadPkgErrorLog.ParamByName('@PackgeNo').AsInteger  := NewPkgNo ;
    sp_AddLoadPkgErrorLog.ParamByName('@Prefix').AsString     := PkgSupplierCode ;
    sp_AddLoadPkgErrorLog.ParamByName('@ErrorText').AsString  := Errortext ;
    sp_AddLoadPkgErrorLog.ParamByName('@UserID').AsInteger    := ThisUser.UserID ;
    sp_AddLoadPkgErrorLog.ExecProc ;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
     Raise ;
    End ;
   end;
  End;
}

procedure TdmLoadEntrySSP.AddLoadPkgErrorLog(const LoadNo, NewPkgNo : Integer;const PkgSupplierCode, Errortext : String) ;
Begin
 Try
  if not cds_AddLoadPkgErrorLog.Active then
   cds_AddLoadPkgErrorLog.Active  := True ;
  cds_AddLoadPkgErrorLog.Insert ;
  cds_AddLoadPkgErrorLog.FieldByName('LoadNo').AsInteger            := LoadNo ;
  cds_AddLoadPkgErrorLog.FieldByName('PackageNo').AsInteger         := NewPkgNo ;
  cds_AddLoadPkgErrorLog.FieldByName('Prefix').AsString             := PkgSupplierCode ;
  cds_AddLoadPkgErrorLog.FieldByName('ErrorText').AsString          := Errortext ;
  cds_AddLoadPkgErrorLog.FieldByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  cds_AddLoadPkgErrorLog.FieldByName('UserID').AsInteger            := ThisUser.UserID ;
  cds_AddLoadPkgErrorLog.Post ;
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
   Raise ;
  End ;
 end;
End;

function TdmLoadEntrySSP.ErrorPkgExist(const LoadNo : Integer) : Boolean ;
begin
  sp_LoadPkgErrorExists.ParamByName('@LoadNo').AsInteger  := LoadNo ;
  sp_LoadPkgErrorExists.ExecProc ;
  if sp_LoadPkgErrorExists.ParamByName('@Error').AsInteger = 1 then
   Result := True
    else
     Result := False ;
End;

procedure TdmLoadEntrySSP.RemPkgFromLoad_III(const LoadNo, LoadDetailNo : Integer) ;
Begin
    Try
    sp_RemPkgFromLoad_III.ParamByName('@LoadNo').AsInteger        := LoadNo ;
    sp_RemPkgFromLoad_III.ParamByName('@LoadDetailNo').AsInteger  := LoadDetailNo ;
    sp_RemPkgFromLoad_III.ParamByName('@UserID').AsInteger        := ThisUser.UserID ;
    sp_RemPkgFromLoad_III.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;




function TdmLoadEntrySSP.CheckPkgsLoaded ;
Begin
 Result := True ;
 if cdsLORowsLoadingAddressNo.AsInteger = 1 then
 Begin
     cdsLORows.first ;


     while not cdsLORows.eof do
     Begin
       if cdsLORowsPkgDiff.asinteger <> 0 then
       Begin
        Result := False ;
        Exit ;
       End;

       cdsLORows.next ;
     End;
 End ;
End ;


end.
