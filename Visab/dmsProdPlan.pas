unit dmsProdPlan;

interface

uses
  SysUtils, Classes, FMTBcd, DB, FireDAC.Stan.Intf,
  FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  DBClient, DateUtils, SqlTimSt, Variants, siComp, siLngLnk ;

type
  Tdm_ProdPlan = class(TDataModule)
    ds_SortOrders: TDataSource;
    ds_SorOrdRow: TDataSource;
    ds_Calendar: TDataSource;
    cds_Calendar: TFDQuery;
    cds_CalendarDriftPlatsNr: TIntegerField;
    cds_CalendarType: TIntegerField;
    cds_CalendarTypeValue: TStringField;
    cds_CalendarWorkHours: TIntegerField;
    cds_CalendarStartTime: TSQLTimeStampField;
    cds_CalendarEndTime: TSQLTimeStampField;
    cds_CalendarNote: TStringField;
    cds_CalendarVeckoDag: TStringField;
    cds_CalendarTypAvDag: TStringField;
    cds_SorOrdRow: TFDQuery;
    dsStandardWorkingSchedule: TFDQuery;
    dsFixedExceptions: TFDQuery;
    dsVariableExceptions: TFDQuery;
    dsWorkCalendar: TFDQuery;
    cds_SortOrders: TFDQuery;
    cds_SortOrdersActualStart: TIntegerField;
    cds_SortOrdersActualFinish: TIntegerField;
    cds_SortOrdersCaption: TStringField;
    cds_SortOrdersEventType: TIntegerField;
    cds_SortOrdersFinish: TSQLTimeStampField;
    cds_SortOrdersID: TIntegerField;
    cds_SortOrdersLabelColor: TIntegerField;
    cds_SortOrdersLocation: TStringField;
    cds_SortOrdersMessage: TStringField;
    cds_SortOrdersOptions: TIntegerField;
    cds_SortOrdersParentID: TIntegerField;
    cds_SortOrdersRecurrenceIndex: TIntegerField;
    cds_SortOrdersRecurrenceInfo: TBlobField;
    cds_SortOrdersReminderDate: TSQLTimeStampField;
    cds_SortOrdersReminderMinutesBeforeStart: TIntegerField;
    cds_SortOrdersReminderResourcesData: TBlobField;
    cds_SortOrdersResourceID: TIntegerField;
    cds_SortOrdersStart: TSQLTimeStampField;
    cds_SortOrdersState: TIntegerField;
    cds_SortOrdersTaskCompleteField: TIntegerField;
    cds_SortOrdersTaskIndexField: TIntegerField;
    cds_SortOrdersTaskLinksField: TIntegerField;
    cds_SortOrdersTaskStatusField: TIntegerField;
    cds_SortOrdersLONo: TIntegerField;
    cds_SortOrdersFlashField: TIntegerField;
    cds_SortOrdersProductionUnitNo: TIntegerField;
    cds_SortOrdersUserID: TIntegerField;
    cds_SortOrdersDuration: TFloatField;
    cds_SortOrdersFixedDate: TIntegerField;
    cds_SortOrdersInfoText: TStringField;
    cdsInfoText: TFDQuery;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    cds_SortOrdersNM3In: TFloatField;
    cds_SortOrderRes: TFDQuery;
    cds_SortOrderResProducerNo: TIntegerField;
    cds_SortOrderResOwnerNo: TIntegerField;
    cds_SortOrderResProductionUnitNo: TIntegerField;
    cds_SortOrderResPIPNo: TIntegerField;
    cds_SortOrderResLIPNo: TIntegerField;
    cds_SortOrderResProgramNo: TIntegerField;
    cds_SortOrderResStartTime: TSQLTimeStampField;
    cds_SortOrderResEndTime: TSQLTimeStampField;
    cds_SortOrderResPlannedProductionTime: TBCDField;
    cds_SortOrderResStatus: TIntegerField;
    cds_SortOrderResComments: TMemoField;
    cds_SortOrderResRealStartTime: TSQLTimeStampField;
    cds_SortOrderResRealEndTime: TSQLTimeStampField;
    cds_SortOrderResRealProductionTime: TBCDField;
    cds_SortOrderResStopTime: TIntegerField;
    cds_SortOrderResDateCreated: TSQLTimeStampField;
    cds_SortOrderResCreatedUser: TIntegerField;
    cds_SortOrderResWeekNo: TStringField;
    cds_SortOrderResYearNo: TIntegerField;
    cds_SortOrderResPrioNo: TIntegerField;
    cds_SortOrderResYearWeek: TStringField;
    cds_SortOrderResPercentTrimloss: TBCDField;
    cds_SortOrderResMCClassNo: TIntegerField;
    cds_SortOrderResMoveToLIPNo: TIntegerField;
    cds_SortOrderResChipsM3Solid: TBCDField;
    cds_SortOrderResChipsValue: TBCDField;
    cds_SortOrderResRawMtrlCost: TBCDField;
    cds_SortOrderResRawMtrlAM3: TBCDField;
    cds_SortOrderResProductionCost: TBCDField;
    cds_SortOrderResProductionAM3: TBCDField;
    cds_SortOrderResCostPerAM3: TBCDField;
    cds_SortOrderResSawdustM3Solid: TBCDField;
    cds_SortOrderResSawdustValue: TBCDField;
    cds_SortOrderResShiftNo: TIntegerField;
    cds_SortOrderResTypeOfRunNo: TIntegerField;
    cds_SortOrderResResponsibleUser: TIntegerField;
    cds_SortOrderResAnsvarigSaljareNo: TIntegerField;
    cds_SortOrderResNoOfWorkers: TBCDField;
    cds_SortOrderResPostningstid: TBCDField;
    cds_SortOrderResNoOfWorkersPostning: TBCDField;
    cds_SortOrderResAntalBitarUt: TIntegerField;
    cds_SortOrderResAvkapAM3: TBCDField;
    cds_SortOrderResAvkapLPM: TBCDField;
    cds_SortOrderResKassationAM3: TBCDField;
    cds_SortOrderResKassationLPM: TBCDField;
    cds_SortOrderResKassationStyck: TIntegerField;
    cds_SortOrderResAvkapValue: TBCDField;
    cds_SortOrderResKassationValue: TBCDField;
    cds_SortOrderResSizeFormat: TIntegerField;
    cds_SortOrderResLengthFormat: TIntegerField;
    cds_SortOrderResTotalSalaryCost: TBCDField;
    cds_SortOrderResFeedSpeed: TBCDField;
    cds_SortOrderResRawMtrlAM1: TBCDField;
    cds_SortOrderResRawMtrlPcs: TIntegerField;
    cds_SortOrderResProductionAM1: TBCDField;
    cds_SortOrderResProductionPcs: TIntegerField;
    cds_SortOrderResProductionValue: TBCDField;
    cds_SortOrderResAntalKapSnitt: TIntegerField;
    cds_SortOrderResTotalValue: TBCDField;
    cds_SortOrderResTotalAM3: TBCDField;
    cds_SortOrderResTotalAM1: TBCDField;
    cds_SortOrderResTotalPcs: TIntegerField;
    cds_SortOrderResTotalCost: TBCDField;
    cds_SortOrderResResultAO: TBCDField;
    cds_SortOrderResCostPerAM1: TBCDField;
    cds_SortOrderResAvgRawMtrlPriceAM3: TBCDField;
    cds_SortOrderResAvgProductPriceAM3: TBCDField;
    cds_SortOrderResAvgProductPriceAM1: TBCDField;
    cds_SortOrderResAvgRawMtrlPriceAM1: TBCDField;
    cds_SortOrderResEfficiencyFactor: TBCDField;
    cds_SortOrderResStopTimeNotIncl: TIntegerField;
    cds_SortOrderResLego: TIntegerField;
    cds_SortOrderResLegoCostPerAM3: TBCDField;
    cds_SortOrderResRawPIPNo: TIntegerField;
    cds_SortOrderResRawLIPNo: TIntegerField;
    cds_SortOrderResRealLpmMinute: TBCDField;
    cds_SortOrderResSeqNo: TIntegerField;
    cds_SortOrderResHyvelInfo: TMemoField;
    cds_SortOrderResPrintRawMtrlPart: TIntegerField;
    cds_SortOrderResTemplate: TIntegerField;
    cds_SortOrderResTemplateName: TStringField;
    cds_SortOrderResTemplateUser: TIntegerField;
    cds_SortOrderResAnsvarig: TStringField;
    cds_SortOrderResAnsvarigSaljare: TStringField;
    cds_SortOrderResTypeOfRunName: TStringField;
    cds_SortOrderResAvgProductPriceNM3: TBCDField;
    cds_SortOrderResAvgRawMtrlPriceNM3: TBCDField;
    cds_SortOrderResProductionNM3: TBCDField;
    cds_SortOrderResRawMtrlNM3: TBCDField;
    cds_SortOrderResSalaryCostPerHour: TBCDField;
    cds_SortOrderResEfficiencyFactorWOStopptime: TBCDField;
    cds_SortOrderResCostPerNM3: TBCDField;
    cds_SortOrderResProdTimeHour: TFMTBCDField;
    cds_SortOrderResStopTimeHour: TIntegerField;
    cds_SortOrderResStopTimeNotInclHour: TIntegerField;
    cds_SortOrderResPostTimeHour: TFMTBCDField;
    cds_SortOrderResManualProdTime: TIntegerField;
    cds_SortOrderResPreCalcEfficiencyFactor: TBCDField;
    cds_SortOrderResSortingOrderNo: TIntegerField;
    cds_SortOrderResTotValPerNM3In: TFMTBCDField;
    cds_SortOrderResTotCostPerNM3In: TFMTBCDField;
    cds_SortOrderResRawMtrlCostPerNM3In: TFMTBCDField;
    cds_SortOrderResResultAOPerNM3In: TFMTBCDField;
    ds_SortOrderRes: TDataSource;
    cds_SORaw: TFDQuery;
    cds_SORawSortingOrderNo: TIntegerField;
    cds_SORawRawMtrlNo: TIntegerField;
    cds_SORawProductNo: TIntegerField;
    cds_SORawMCClassNo: TIntegerField;
    cds_SORawPlannedAM3: TBCDField;
    cds_SORawPlannedPcs: TIntegerField;
    cds_SORawProgramNo: TIntegerField;
    cds_SORawDateCreated: TSQLTimeStampField;
    cds_SORawModifiedUser: TIntegerField;
    cds_SORawKassationStyck: TIntegerField;
    cds_SORawKassationAM3: TBCDField;
    cds_SORawAvgLength: TBCDField;
    cds_SORawLengthDescription: TStringField;
    cds_SORawPlannedAM1: TBCDField;
    cds_SORawCreatedUser: TIntegerField;
    cds_SORawAntalBitarUt: TIntegerField;
    cds_SORawPercentPcsOfTotal: TFMTBCDField;
    cds_SORawKassationAM1: TBCDField;
    cds_SORawTrimAM1: TFMTBCDField;
    cds_SORawTrimAM3: TFMTBCDField;
    cds_SORawMainRawMtrl: TIntegerField;
    cds_SORawRealLPM: TBCDField;
    cds_SORawProductLengthNo: TIntegerField;
    cds_SORawAntalKapSnitt: TIntegerField;
    cds_SORawAntalLamellerUt: TIntegerField;
    cds_SORawUrlaggsProcent: TBCDField;
    cds_SORawaPcs: TIntegerField;
    cds_SORawaAM1: TBCDField;
    cds_SORawAM3: TFloatField;
    cds_SORawNM3: TFloatField;
    cds_SORawPCS: TIntegerField;
    cds_SORawAM1: TFloatField;
    cds_SORawGradeNo: TIntegerField;
    cds_SORawSpeciesNo: TIntegerField;
    cds_SORawSurfacingNo: TIntegerField;
    cds_SORawProductCategoryNo: TIntegerField;
    cds_SORawAT: TFloatField;
    cds_SORawAB: TFloatField;
    cds_SORawNT: TFloatField;
    cds_SORawNB: TFloatField;
    cds_SORawProdukt: TStringField;
    cds_SORawPricePerNM3: TBCDField;
    cds_SORawLengthSpec: TStringField;
    cds_SORawALMM: TFloatField;
    ds_SORaw: TDataSource;
    cds_SORawBookedAM3: TBCDField;
    cds_SORawBookedALMM: TFloatField;
    cds_SORawExcludeFromTotal: TIntegerField;
    cds_SORawUtfall: TBCDField;
    cds_SorOrdRowID: TIntegerField;
    cds_SorOrdRowprodukt: TStringField;
    cds_SorOrdRowALMM: TFloatField;
    cds_SorOrdRowNM3: TBCDField;
    cds_SorOrdRowProdAM1: TFloatField;
    cds_SorOrdRowProdAM3: TFloatField;
    cds_SorOrdRowProdPCS: TIntegerField;
    cds_SorOrdRowProdPKT: TIntegerField;
    cds_SorOrdRowLONR: TIntegerField;
    cds_cxScheduler: TFDQuery;
    cds_cxSchedulerActualStart: TIntegerField;
    cds_cxSchedulerActualFinish: TIntegerField;
    cds_cxSchedulerCaption: TStringField;
    cds_cxSchedulerEventType: TIntegerField;
    cds_cxSchedulerFinish: TSQLTimeStampField;
    cds_cxSchedulerID: TIntegerField;
    cds_cxSchedulerLabelColor: TIntegerField;
    cds_cxSchedulerLocation: TStringField;
    cds_cxSchedulerMessage: TStringField;
    cds_cxSchedulerOptions: TIntegerField;
    cds_cxSchedulerParentID: TIntegerField;
    cds_cxSchedulerRecurrenceIndex: TIntegerField;
    cds_cxSchedulerRecurrenceInfo: TBlobField;
    cds_cxSchedulerReminderDate: TSQLTimeStampField;
    cds_cxSchedulerReminderMinutesBeforeStart: TIntegerField;
    cds_cxSchedulerReminderResourcesData: TBlobField;
    cds_cxSchedulerResourceID: TIntegerField;
    cds_cxSchedulerStart: TSQLTimeStampField;
    cds_cxSchedulerState: TIntegerField;
    cds_cxSchedulerTaskCompleteField: TIntegerField;
    cds_cxSchedulerTaskIndexField: TIntegerField;
    cds_cxSchedulerTaskLinksField: TIntegerField;
    cds_cxSchedulerTaskStatusField: TIntegerField;
    cds_cxSchedulerLONo: TIntegerField;
    cds_cxSchedulerFlashField: TIntegerField;
    cds_cxSchedulerProductionUnitNo: TIntegerField;
    cds_cxSchedulerUserID: TIntegerField;
    cds_cxSchedulerDuration: TFloatField;
    cds_cxSchedulerSeqNo: TIntegerField;
    cds_cxSchedulerFixedDate: TIntegerField;
    cds_cxSchedulerInfoText: TStringField;
    cds_cxSchedulerNM3In: TFloatField;
    cds_cxSchedulerYearWeek: TStringField;
    cds_cxSchedulerVerkNo: TIntegerField;
    cds_cxSchedulerBookingNo: TIntegerField;
    cds_cxSchedulerPostningstid: TBCDField;
    cds_cxSchedulerPreCalcEfficiencyFactor: TBCDField;
    cds_cxSchedulerFeedSpeed: TBCDField;
    cds_cxSchedulerPlannedProductionTime: TBCDField;
    cds_cxSchedulerPlannedWorkingTime: TBCDField;
    cds_cxSchedulerDateCreated: TSQLTimeStampField;
    ds_cxScheduler: TDataSource;
    cds_SortOrdersYearWeek: TStringField;
    cds_SortOrdersVerkNo: TIntegerField;
    cds_SortOrdersBookingNo: TIntegerField;
    cds_SortOrdersPostningstid: TBCDField;
    cds_SortOrdersPreCalcEfficiencyFactor: TBCDField;
    cds_SortOrdersFeedSpeed: TBCDField;
    cds_SortOrdersPlannedProductionTime: TBCDField;
    cds_SortOrdersPlannedWorkingTime: TBCDField;
    cds_SortOrdersDateCreated: TSQLTimeStampField;
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
    cds_PropsForm: TStringField;
    cds_PropsUserID: TIntegerField;
    ds_Props: TDataSource;
    cds_SortOrdersOwnerNo: TIntegerField;
    cds_SortOrdersWeekNo: TIntegerField;
    cds_SortOrdersYearNo: TIntegerField;
    cds_ProductionUnitResourceImageIndex: TIntegerField;
    cds_BookingHdr: TFDQuery;
    cds_BookingHdrBookingNo: TIntegerField;
    cds_BookingHdrsspNo: TIntegerField;
    cds_BookingHdrUtfall: TBCDField;
    cds_BookingHdrProductNo: TIntegerField;
    cds_BookingHdrProductLengthNo: TIntegerField;
    cds_BookingHdrDateCreated: TSQLTimeStampField;
    cds_BookingHdrCreatedUser: TIntegerField;
    cds_BookingHdrProdukt: TStringField;
    cds_BookingHdrALMM: TFloatField;
    cds_BookingHdrLngdbeskrivning: TStringField;
    cds_BookingHdrNM3: TBCDField;
    cds_BookingHdrAM3: TBCDField;
    cds_BookingHdrSortingOrderNo: TIntegerField;
    cds_BookingHdrLONr: TIntegerField;
    cds_BookingHdrKund: TStringField;
    cds_BookingHdrStartWeek: TStringField;
    cds_BookingHdrEndWeek: TStringField;
    cds_BookingHdrBokadNM3: TFMTBCDField;
    cds_BookingHdrNM3PlanFardig: TFMTBCDField;
    cds_BookingHdrM1: TFloatField;
    cds_BookingHdrRestNM3: TFloatField;
    cds_BookingHdrNoOfUnits: TFloatField;
    cds_BookingHdrPackageWidth: TIntegerField;
    cds_BookingHdrPackageHeight: TIntegerField;
    cds_BookingHdrVolumeUnitNo: TIntegerField;
    cds_BookingHdrBookedByID: TFMTBCDField;
    cds_BookingHdrAT: TFloatField;
    cds_BookingHdrAB: TFloatField;
    cds_BookingHdrUnit: TStringField;
    ds_BookingHdr: TDataSource;
    cds_BookingDtl: TFDQuery;
    cds_BookingDtlBookingNo: TIntegerField;
    cds_BookingDtlBookedProductNo: TIntegerField;
    cds_BookingDtlBookedNM3: TBCDField;
    cds_BookingDtlDateCreated: TSQLTimeStampField;
    cds_BookingDtlCreatedUser: TIntegerField;
    cds_BookingDtlProdukt: TStringField;
    cds_BookingDtlProductNo: TIntegerField;
    cds_BookingDtlUtfall: TBCDField;
    cds_BookingDtlBookedALMM: TFloatField;
    cds_BookingDtlProductLengthNo: TIntegerField;
    cds_BookingDtlBookedAM3: TBCDField;
    cds_BookingDtlUserName: TStringField;
    cds_BookingDtlPIPNo: TIntegerField;
    cds_BookingDtlStatus: TIntegerField;
    cds_BookingDtlUsedAM3: TBCDField;
    cds_BookingDtlPlannedOutputAM3: TBCDField;
    cds_BookingDtlPkgFormat: TIntegerField;
    cds_BookingDtlNT: TFloatField;
    cds_BookingDtlNB: TFloatField;
    cds_BookingDtlBookedLIPGroupNo: TIntegerField;
    cds_BookingDtlLager: TStringField;
    cds_BookingDtlID: TIntegerField;
    cds_BookingDtlsspNo: TIntegerField;
    cds_BookingDtlM1: TFloatField;
    cds_BookingDtlBookedProductLengthNo: TIntegerField;
    cds_BookingDtlModifiedUser: TIntegerField;
    cds_BookingDtlMainRawMtrl: TIntegerField;
    cds_BookingDtlAntalLamellerUt: TIntegerField;
    cds_BookingDtlLengthSpec: TStringField;
    cds_BookingDtlPlannedOutputNoOfUnits: TFloatField;
    cds_BookingDtlMCClassNo: TIntegerField;
    cds_BookingDtlPlannedOutputNM3: TBCDField;
    cds_BookingDtlAT: TFloatField;
    cds_BookingDtlAB: TFloatField;
    cds_BookingDtlUsedNM3: TBCDField;
    ds_BookingDtl: TDataSource;
    ds_CalcSortOrders: TDataSource;
    cds_CalcSortOrders: TFDQuery;
    cds_CalcSortOrdersActualStart: TIntegerField;
    cds_CalcSortOrdersActualFinish: TIntegerField;
    cds_CalcSortOrdersCaption: TStringField;
    cds_CalcSortOrdersEventType: TIntegerField;
    cds_CalcSortOrdersFinish: TSQLTimeStampField;
    cds_CalcSortOrdersID: TIntegerField;
    cds_CalcSortOrdersMessage: TStringField;
    cds_CalcSortOrdersResourceID: TIntegerField;
    cds_CalcSortOrdersStart: TSQLTimeStampField;
    cds_CalcSortOrdersTaskStatusField: TIntegerField;
    cds_CalcSortOrdersLONo: TIntegerField;
    cds_CalcSortOrdersFlashField: TIntegerField;
    cds_CalcSortOrdersDuration: TFloatField;
    cds_CalcSortOrdersFixedDate: TIntegerField;
    cds_CalcSortOrdersInfoText: TStringField;
    cds_CalcSortOrdersNM3In: TFloatField;
    cds_CalcSortOrdersYearWeek: TStringField;
    cds_CalcSortOrdersVerkNo: TIntegerField;
    cds_CalcSortOrdersDateCreated: TSQLTimeStampField;
    cds_CalcSortOrdersWeekNo: TIntegerField;
    cds_CalcSortOrdersYearNo: TIntegerField;
    cds_SortOrdersSeqNo: TIntegerField;
    cds_CalcSortOrdersSeqNo: TIntegerField;
    ds_Producer: TDataSource;
    ds_RegPoint: TDataSource;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    cds_PropsProducer: TStringField;
    cds_PropsMatpunkt: TStringField;
    cds_CalExists: TFDQuery;
    cds_CalExistsDriftPlatsNr: TIntegerField;
    up_CalcSortOrders: TFDUpdateSQL;
    cds_SortOrderList: TFDQuery;
    cds_SortOrderListPIPNo: TIntegerField;
    cds_SortOrderListLIPNo: TIntegerField;
    cds_SortOrderListProgramNo: TIntegerField;
    cds_SortOrderListComments: TMemoField;
    cds_SortOrderListRealStartTime: TSQLTimeStampField;
    cds_SortOrderListRealEndTime: TSQLTimeStampField;
    cds_SortOrderListRealProductionTime: TBCDField;
    cds_SortOrderListPrioNo: TIntegerField;
    cds_SortOrderListMCClassNo: TIntegerField;
    cds_SortOrderListMoveToLIPNo: TIntegerField;
    cds_SortOrderListTypeOfRunNo: TIntegerField;
    cds_SortOrderListLego: TIntegerField;
    cds_SortOrderListTemplate: TIntegerField;
    cds_SortOrderListTemplateName: TStringField;
    cds_SortOrderListTemplateUser: TIntegerField;
    cds_SortOrderListLAGERSTLLE: TStringField;
    cds_SortOrderListPRODENHET: TStringField;
    cds_SortOrderListLAGERGRUPP: TStringField;
    cds_SortOrderListPRODUCENT: TStringField;
    cds_SortOrderListGARE: TStringField;
    cds_SortOrderListRvara: TStringField;
    cds_SortOrderListFrdigvara: TStringField;
    cds_SortOrderListKund: TStringField;
    cds_SortOrderListTypeOfRunName: TStringField;
    cds_SortOrderListSurfacingBkgColor: TIntegerField;
    cds_SortOrderListSurfacingTextColor: TIntegerField;
    cds_SortOrderListID: TIntegerField;
    cds_SortOrderListStart: TSQLTimeStampField;
    cds_SortOrderListFinish: TSQLTimeStampField;
    cds_SortOrderListTaskStatusField: TIntegerField;
    cds_SortOrderListResourceID: TIntegerField;
    cds_SortOrderListDuration: TFloatField;
    cds_SortOrderListFixedDate: TIntegerField;
    cds_SortOrderListYearWeek: TStringField;
    cds_SortOrderListVerkNo: TIntegerField;
    cds_SortOrderListBookingNo: TIntegerField;
    cds_SortOrderListPostningstid: TBCDField;
    cds_SortOrderListPreCalcEfficiencyFactor: TBCDField;
    cds_SortOrderListFeedSpeed: TBCDField;
    cds_SortOrderListPlannedProductionTime: TBCDField;
    cds_SortOrderListPlannedWorkingTime: TBCDField;
    cds_SortOrderListOwnerNo: TIntegerField;
    cds_SortOrderListWeekNo: TIntegerField;
    cds_SortOrderListYearNo: TIntegerField;
    cds_SortOrderListStopTime: TIntegerField;
    cds_SortOrderListLONR: TIntegerField;
    cds_SortOrderListLabelColor: TIntegerField;
    cds_SortOrderListOrgYearWeek: TStringField;
    cds_SortOrderListNM3PlanFardig: TFMTBCDField;
    cds_SortOrderListUtfall: TBCDField;
    cds_SortOrderListBookedNM3: TFMTBCDField;
    cds_SortOrderListsspNo: TIntegerField;
    cds_SortOrderListBookedAM1: TFMTBCDField;
    cds_SortOrderListLOS: TStringField;
    cds_CalcSortOrdersPreCalcEfficiencyFactor: TBCDField;
    cds_CalcSortOrdersFeedSpeed: TBCDField;
    cds_CalcSortOrdersPlannedWorkingTime: TBCDField;
    cds_CalcSortOrdersPostningstid: TBCDField;
    cds_CalcSortOrdersPlannedAM1: TFMTBCDField;
    cds_CalcSortOrdersProductionUnitNo: TFMTBCDField;
    siLangLinked_dm_ProdPlan: TsiLangLinked;
    procedure dsp_SortOrdersGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_SortOrdersBeforePost(DataSet: TDataSet);
    procedure cds_CalcSortOrdersBeforePost(DataSet: TDataSet);
    procedure cds_PropsProducerNoChange(Sender: TField);
    procedure cds_CalcSortOrdersUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
  private
    { Private declarations }
    procedure GetFinishTime ;
    procedure RefreshAfterChangeProducer ;
  public
    { Public declarations }
    procedure ReCalcKorOrderID(const ID : Integer) ;
    procedure CalcRunTime ;
    procedure ReCalcPagaendeKorOrderDuration (const RegPointNo : Integer) ;
    Function  IsObjectLocked(const ID : Integer) : Boolean ;
    procedure Empty_cds_CalcSortOrders ;
    procedure Load_cds_CalcSortOrders(const RegPointNo, ProducerNo : Integer) ;
    procedure SetAsBookedStatus(const ID : Integer) ;
    procedure ToggleFixedDate(const ID : Integer) ;
    procedure SaveUserProps (const Form : String) ;
    procedure LoadUserProps (const Form : String) ;
  end;

var
  dm_ProdPlan: Tdm_ProdPlan;

implementation

uses dmsDataConn, VidaUser , dmsVidaContact, WorkMinutesU, udmLanguage;

{$R *.dfm}

procedure Tdm_ProdPlan.dsp_SortOrdersGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'SortingOrder' ;
end;

procedure Tdm_ProdPlan.cds_SortOrdersBeforePost(DataSet: TDataSet);
Var YearWeekString,
    sYear,
    sWeek   : String ;
    WeekNo  : Integer ;
begin
// CalcRunTime ;

// FDayOfWeek   := 1 ;
// AYear        := StrToInt('20' + Copy(cds_SchedulerYearWeek.AsString, 1,2)) ;
// AWeekOfYear  := StrToInt(Copy(cds_SchedulerYearWeek.AsString, 3,2)) ;


// Start        := EncodeDateWeek(AYear, AWeekOfYear, FDayOfWeek) ;

 WeekNo       := WeekOf(SQLTimeStampToDateTime(cds_SortOrdersStart.AsSQLTimeStamp)) ;
 sYear        := Copy(IntToStr(YearOf(SQLTimeStampToDateTime(cds_SortOrdersStart.AsSQLTimeStamp))),3,2) ;
 sWeek        := inttoStr(WeekOf(SQLTimeStampToDateTime(cds_SortOrdersStart.AsSQLTimeStamp))) ;


 cds_SortOrdersYearNo.AsInteger := StrToInt(sYear) ;
 cds_SortOrdersWeekNo.AsInteger := StrToInt(sWeek) ;

 if WeekNo < 10 then
  YearWeekString  := sYear + '0' + Inttostr(WeekNo)
   else
    YearWeekString  := sYear + Inttostr(WeekNo) ;

  cds_SortOrdersYearWeek.AsInteger  := StrToInt(YearWeekString) ;
end;

procedure Tdm_ProdPlan.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
{ cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
 Begin
  cds_Props.Insert ;
  cds_PropsForm.AsString    := Form ;
  cds_PropsUserID.AsInteger := ThisUser.UserID ;
 End
   else
    cds_Props.Edit ; }

  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;
{  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ; }

 cds_Props.Active:= False ;
End ;

procedure Tdm_ProdPlan.LoadUserProps (const Form : String) ;
Var x           : Integer ;
    RegPointNo  : Integer ;
Begin
 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  RegPointNo  := cds_PropsRegPointNo.AsInteger ;
//  cds_PropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;

//  cds_PropsOwnerNo.OnChange     := nil ;
//  cds_PropsPIPNo.OnChange       := nil ;
  cds_PropsProducerNo.OnChange  := nil ;
  Try
  cds_Props.Edit ;
//  cds_PropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsRegDate.AsDateTime := Now ;
  cds_PropsRunNo.AsInteger    := -1 ;
  if (cds_PropsProducerNo.AsInteger < 1) or (cds_PropsProducerNo.isNull) then
   cds_PropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;

   RefreshAfterChangeProducer ;
  cds_PropsRegPointNo.AsInteger := RegPointNo ;

  cds_Props.Post ;
  Finally
   cds_PropsProducerNo.OnChange   := cds_PropsProducerNoChange ;
//   cds_PropsPIPNo.OnChange        := cds_PropsPIPNoChange ;
//   cds_PropsOwnerNo.OnChange      := cds_PropsOwnerNoChange ;
  End ;
 End
 else
 Begin
  cds_Props.Insert ;
//  cds_PropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsUserID.AsInteger       := ThisUser.UserID ;
  cds_PropsForm.AsString          := Form ;
  cds_PropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;

{  if cds_PropsRoleType.AsInteger = cLego then
  Begin
   cds_PropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
   cds_PropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  cds_PropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ; }

  cds_PropsInputOption.AsInteger  :=  0 ;
  cds_PropsRegDate.AsDateTime     :=  Now ;
  cds_PropsCopyPcs.AsInteger      :=  1 ;
  cds_PropsRunNo.AsInteger        :=  -1 ;
  cds_PropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  cds_PropsAutoColWidth.AsInteger :=  1 ;
//  cds_PropsSupplierCode.AsString  := dmsContact.GetClientCode(cds_PropsProducerNo.AsInteger) ;
  cds_PropsLengthGroupNo.AsInteger:= -1 ;
  cds_Props.Post ;
 End ;
// cds_Props.Active:= False ;
End ;

procedure Tdm_ProdPlan.cds_CalcSortOrdersBeforePost(DataSet: TDataSet);
Var YearWeekString,
    sYear,
    sWeek   : String ;
    WeekNo  : Integer ;
begin
 WeekNo       := WeekOf(SQLTimeStampToDateTime(cds_CalcSortOrdersStart.AsSQLTimeStamp)) ;
 sYear        := Copy(IntToStr(YearOf(SQLTimeStampToDateTime(cds_CalcSortOrdersStart.AsSQLTimeStamp))),3,2) ;
 sWeek        := inttoStr(WeekOf(SQLTimeStampToDateTime(cds_CalcSortOrdersStart.AsSQLTimeStamp))) ;

 cds_CalcSortOrdersYearNo.AsInteger := StrToInt(sYear) ;
 cds_CalcSortOrdersWeekNo.AsInteger := StrToInt(sWeek) ;

 if WeekNo < 10 then
  YearWeekString  := sYear + '0' + Inttostr(WeekNo)
   else
    YearWeekString  := sYear + Inttostr(WeekNo) ;

 cds_CalcSortOrdersYearWeek.AsString  := YearWeekString ; 
end;

procedure Tdm_ProdPlan.ToggleFixedDate(const ID : Integer) ;
Begin
 if cds_CalcSortOrders.Locate('ID', ID, []) then
 Begin
  cds_CalcSortOrders.Edit ;
  if cds_CalcSortOrdersFixedDate.AsInteger = 1 then
  cds_CalcSortOrdersFixedDate.AsInteger := 0
  else
  cds_CalcSortOrdersFixedDate.AsInteger := 1 ;
  cds_CalcSortOrders.Post ;
  if cds_CalcSortOrders.ChangeCount > 0 then
  Begin
   cds_CalcSortOrders.ApplyUpdates(0) ;
   cds_CalcSortOrders.CommitUpdates ;
  End ;
 End ;
End ;

Function Tdm_ProdPlan.IsObjectLocked(const ID : Integer) : Boolean ;
Begin
 Result := False ;
 if cds_CalcSortOrders.Locate('ID', ID, []) then
 Begin
  if cds_CalcSortOrdersFixedDate.AsInteger = 1 then
  Result  := True ;
 End ;
End ;

procedure Tdm_ProdPlan.cds_PropsProducerNoChange(Sender: TField);
begin
 RefreshAfterChangeProducer ;
end;

procedure Tdm_ProdPlan.RefreshAfterChangeProducer ;
begin
 if (not cds_PropsProducerNo.IsNull) and (cds_PropsProducerNo.AsInteger > 0) then
 Begin
 cds_RegPoint.Active:= False ;
 cds_RegPoint.ParamByName('ClientNo').AsInteger := cds_PropsProducerNo.AsInteger ;
 cds_RegPoint.Active:= True ;

 cds_RegPoint.Insert ;
 cds_RegPointProductionUnitName.AsString    := 'ALLA' ;
 cds_RegPointRegistrationPointNo.AsInteger  := -1 ;
 cds_RegPoint.Post ;
 cds_RegPoint.First ;


{ if cds_Props.State in [dsBrowse] then
 cds_Props.Edit ;
// cds_PropsSupplierCode.AsString := dmsContact.GetClientCode(cds_PropsProducerNo.AsInteger) ;
 cds_PropsRegPointNo.AsInteger  := cds_RegPointRegistrationPointNo.AsInteger ;
// cds_Props.Post ;
}
 End ;
end;

procedure Tdm_ProdPlan.SetAsBookedStatus(const ID : Integer) ;
Begin
 if cds_CalcSortOrders.Locate('ID', ID, []) then
 Begin
  if cds_CalcSortOrders.State in [dsBrowse] then
  cds_CalcSortOrders.Edit ;
  cds_CalcSortOrdersFixedDate.AsInteger       := 1 ;
  cds_CalcSortOrdersTaskStatusField.AsInteger := 7 ;
  cds_CalcSortOrders.Post ;
 End ;
End ;

procedure Tdm_ProdPlan.Load_cds_CalcSortOrders(const RegPointNo, ProducerNo : Integer) ;
Begin
  cds_CalcSortOrders.Filtered  := False ;
  cds_CalcSortOrders.DisableControls ;
  ds_CalcSortOrders.DataSet := nil ;
  Try
  if not cds_CalcSortOrders.Active then
  Begin

   cds_CalcSortOrders.Open ;
  End ;

{  cds_CalcSortOrders.Params[0].AsInteger := LONo ;
  cds_CalcSortOrders.Open;
  cds_CalcSortOrders.FetchAll;
  }


  cds_CalcSortOrders.FetchAgain;
  with cds_CalcSortOrders.Command do begin
    CloseAll;
    Params[0].AsInteger := ProducerNo ;
    Params[1].AsInteger := RegPointNo ;
    Open;
  end;
  cds_CalcSortOrders.FetchAll;

  Finally
   ds_CalcSortOrders.DataSet := cds_CalcSortOrders ;
   cds_CalcSortOrders.EnableControls ;
   cds_CalcSortOrders.Filtered  := True ;
  End ;
End ;

procedure Tdm_ProdPlan.Empty_cds_CalcSortOrders ;
Begin
 Try
 cds_CalcSortOrders.Active  := False ;
 cds_CalcSortOrders.ParamByName('PRODUCTIONUNITNO').AsInteger := -1 ;
 cds_CalcSortOrders.ParamByName('VERKNO').AsInteger           := -1 ;
 cds_CalcSortOrders.Active  := True ;
   Except
    On E: Exception do
    Begin
//     ShowMessage('Error Empty_cds_CalcSortOrders, Error message ' + E.Message) ;
   E.CreateFmt ('Fel i cds_CalcSortOrders, Error message %s', [E.Message]) ;
     Raise ;
    End ;
   End ;
End ;

procedure Tdm_ProdPlan.cds_CalcSortOrdersUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
  up_CalcSortOrders.ConnectionName := cds_CalcSortOrders.ConnectionName;
  up_CalcSortOrders.DataSet := cds_CalcSortOrders;
  up_CalcSortOrders.Apply(ARequest, AAction, AOptions);

  AAction := eaApplied;
end;

procedure Tdm_ProdPlan.ReCalcKorOrderID(const ID : Integer) ;
Begin
 if cds_CalcSortOrders.Locate('ID', ID, []) then
 Begin
 if cds_CalcSortOrders.State in [dsBrowse] then
  cds_CalcSortOrders.Edit ;
  CalcRunTime ;
  GetFinishTime ;
  if cds_CalcSortOrders.State in [dsEdit, dsInsert] then
   cds_CalcSortOrders.Post ;
 End ;
End ;

procedure Tdm_ProdPlan.ReCalcPagaendeKorOrderDuration(const RegPointNo : Integer) ;
Begin
 if cds_CalcSortOrders.Locate('ResourceID;TaskStatusField', VarArrayof([RegPointNo, 2]), []) then
 Begin
 if cds_CalcSortOrders.State in [dsBrowse] then
  cds_CalcSortOrders.Edit ;
  CalcRunTime ;
  GetFinishTime ;
  if cds_CalcSortOrders.State in [dsEdit, dsInsert] then
   cds_CalcSortOrders.Post ;
 End ;
End ;

procedure Tdm_ProdPlan.CalcRunTime ;
Begin
// cds_CalcSortOrdersLPM.Active := True ;
 if ((cds_CalcSortOrdersPreCalcEfficiencyFactor.AsFloat/100)
 * cds_CalcSortOrdersFeedSpeed.AsFloat) > 0 then
 Begin

 if cds_CalcSortOrdersPlannedAM1.AsFloat > 0 then
 Begin
  cds_CalcSortOrdersPlannedWorkingTime.AsFloat  :=
// GetAM1ToRun
  cds_CalcSortOrdersPlannedAM1.AsFloat /
  ((cds_CalcSortOrdersPreCalcEfficiencyFactor.AsFloat/100)
  * cds_CalcSortOrdersFeedSpeed.AsFloat) ;

   cds_CalcSortOrdersPlannedWorkingTime.AsFloat   :=  cds_CalcSortOrdersPlannedWorkingTime.AsFloat / 60 ;
   cds_CalcSortOrdersDuration.AsFloat             := cds_CalcSortOrdersPlannedWorkingTime.AsFloat + (cds_CalcSortOrdersPostningstid.AsFloat / 60) ;
 End ;
 End ;

End ;

procedure Tdm_ProdPlan.GetFinishTime ;
Var
  dCurTime, dEndTime: TDateTime;
  ResolvedStartDateTime, ResolvedEndDateTime: TDateTime;
  ProductionUnitNo  : Integer ;
begin

 ProductionUnitNo  := dmsContact.Get_GetProdUnitNo(cds_CalcSortOrdersVerkNo.AsInteger, cds_CalcSortOrdersResourceID.AsInteger) ;

// if ProductionUnitNo > 0 then
// Begin
    dm_ProdPlan.dsStandardWorkingSchedule.Active  := False ;
    dm_ProdPlan.dsStandardWorkingSchedule.ParamByName('DriftPlatsNr').AsInteger := ProductionUnitNo ;
    dm_ProdPlan.dsStandardWorkingSchedule.Active  := True ;
    Try
    if dm_ProdPlan.dsStandardWorkingSchedule.RecordCount > 0 then
    Begin
        dCurTime :=  cds_CalcSortOrdersStart.AsDateTime ;
// cds_SchedulerFinish.AsSQLTimeStamp := DateTimeToSQLTimeStamp(cds_SchedulerStart.AsDateTime + (cds_SchedulerDuration.AsFloat / 100)) ;//cds_SchedulerDuration.AsFloat;

//          if not ( DataSet.FieldByName('TaskStatusField').AsInteger in [3, 4] ) then // NOT FINISHED
//          begin
            // When Fixed or Active then the start time Should be FIXED.
            if ( cds_CalcSortOrdersFixedDate.AsInteger = 1 )
              or ( cds_CalcSortOrdersTaskStatusField.AsInteger in [2] ) then
                dCurTime :=  cds_CalcSortOrdersStart.AsDateTime ;




            dEndTime := WorkMinutesU.GetNextMDate(dm_ProdPlan.dsStandardWorkingSchedule// HolidayDataSet//cdsStandardHours
                                                 , dCurTime
                                                 , Round(cds_CalcSortOrdersDuration.AsFloat) //DataSet.FieldByName('Duration').AsInteger
                                                 , ProductionUnitNo
                                                 , ResolvedStartDateTime
                                                 , ResolvedEndDateTime
                                                 );

//            DataSet.Edit;
//            DataSet.FieldByName('Start').AsDateTime  := ResolvedStartDateTime; //dCurTime;
            cds_CalcSortOrdersFinish.AsSQLTimeStamp       := DateTimeToSQLTimeStamp(ResolvedEndDateTime) ;   //dEndTime;
//            DataSet.Post;
//            dCurTime := dEndTime;
    End ;
//     else
//      ShowMessage('Arbetsschema saknas.') ;
    Finally
     dm_ProdPlan.dsStandardWorkingSchedule.Active  := False ;
    end;
// End
//  else
//   ShowMessage('Ange mätpunkt!') ;
end;

end.
