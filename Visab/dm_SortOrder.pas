unit dm_SortOrder;

interface

uses
  SysUtils, Classes, DB, SqlTimSt, VidaType, Dialogs,
  kbmMemTable, Variants, DateUtils, jpeg, Graphics, Controls, Forms,
  FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Def, FireDAC.UI.Intf, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Stan.Async, FireDAC.DApt, Math, siComp, siLngLnk ;


type
  TdmsSortOrder = class(TDataModule)
    ds_SortOrder: TDataSource;
    ds_SorOrdRow: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    ds_ProductionUnit: TDataSource;
    ds_SORaw: TDataSource;
    ds_AO: TDataSource;
    ds_FeedBack: TDataSource;
    mtProps: TkbmMemTable;
    mtPropsVerkNo: TIntegerField;
    mtPropsOwnerNo: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    mtPropsInputOption: TIntegerField;
    mtPropsRegPointNo: TIntegerField;
    mtPropsRegDate: TDateTimeField;
    mtPropsCopyPcs: TIntegerField;
    mtPropsRunNo: TIntegerField;
    mtPropsProducerNo: TIntegerField;
    mtPropsAutoColWidth: TIntegerField;
    mtPropsSupplierCode: TStringField;
    mtPropsLengthOption: TIntegerField;
    mtPropsLengthGroupNo: TIntegerField;
    mtPropsNewItemRow: TIntegerField;
    mtPropsLengthGroup: TStringField;
    mtPropsREGPOINT: TStringField;
    mtPropsPRODUCER: TStringField;
    mtPropsOWNER: TStringField;
    mtPropsRoleType: TIntegerField;
    ds_Verk: TDataSource;
    ds_Producer: TDataSource;
    ds_RegPoint: TDataSource;
    dsProps: TDataSource;
    ds_LengthGroup: TDataSource;
    ds_ProdInstruct: TDataSource;
    ds_SOLayout: TDataSource;
    ds_Products: TDataSource;
    dsrcBooking: TDataSource;
    ds_SOVerkParams: TDataSource;
    ds_SOCngProd: TDataSource;
    ds_SOLegoCost: TDataSource;
    ds_RawPIP: TDataSource;
    ds_RawLIP: TDataSource;
    ds_Raw: TDataSource;
    ds_SOoutput: TDataSource;
    ds_LOinAO: TDataSource;
    mtLengthFormat: TkbmMemTable;
    mtLengthFormatLengthFormatNo: TSmallintField;
    mtLengthFormatLengthFormat: TStringField;
    mtVolumeFormat: TkbmMemTable;
    mtVolumeFormatVolumeFormatNo: TSmallintField;
    mtVolumeFormatVolumeFormat: TStringField;
    dsLengthFormat: TDataSource;
    dsVolumeFormat: TDataSource;
    mtSizeFormat: TkbmMemTable;
    mtSizeFormatSizeFormatNo: TSmallintField;
    mtSizeFormatSizeFormat: TStringField;
    dsSizeFormat: TDataSource;
    ds_LegoPris: TDataSource;
    ds_UrlLayout: TDataSource;
    ds_AOMall: TDataSource;
    mtUrlaggProduct: TkbmMemTable;
    mtUrlaggProductUrlaggProductNo: TIntegerField;
    mtUrlaggProductUrlaggProdukt: TStringField;
    ds_SOShift: TDataSource;
    mtRawMtrl: TkbmMemTable;
    mtRawMtrlRawMtrlProductNo: TIntegerField;
    mtRawMtrlRawProdukt: TStringField;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosLevKod: TStringField;
    FD_SortOrderRawSum: TFDQuery;
    FD_SortOrderRawSumSortingOrderNo: TIntegerField;
    FD_SortOrderRawSumProductNo: TIntegerField;
    FD_SortOrderRawSumRawMtrlNo: TIntegerField;
    FD_SortOrderRawSumPieces: TIntegerField;
    FD_SortOrderRawSumAM3: TFloatField;
    FD_SortOrderRawSumNM3: TFloatField;
    FD_SortOrderRawSumAM1: TFloatField;
    FD_SortOrderRawSumUrlaggPcs: TIntegerField;
    FD_SortOrderRawSumLameller: TIntegerField;
    FD_SortOrderRawSumKapSnitt: TIntegerField;
    FD_SortOrderRawSumExpectedPcsOut: TIntegerField;
    FD_SortOrderRawSumATMM: TFloatField;
    FD_SortOrderRawSumABMM: TFloatField;
    FD_SortOrderRawSumALMM: TFloatField;
    FD_NewPkgSum: TFDQuery;
    FD_NewPkgSumActualLengthMM: TFloatField;
    FD_NewPkgSumActualThicknessMM: TFloatField;
    FD_NewPkgSumActualWidthMM: TFloatField;
    FD_NewPkgSumAM3: TFloatField;
    FD_NewPkgSumNM3: TFloatField;
    FD_NewPkgSumSTYCK: TIntegerField;
    FD_NewPkgSumAM1: TFloatField;
    FD_NewPkgSumSurfacingNo: TIntegerField;
    FD_SortOrderRawSumSizePercentOfTotal: TFloatField;
    FD_GenRawSum: TFDQuery;
    FD_SortOrderRawSumNTMM: TFloatField;
    FD_SortOrderRawSumNBMM: TFloatField;
    FD_SortOrderRawSumNLMM: TFloatField;
    FD_RawSum: TFDQuery;
    FD_RawSumProductDisplayName: TStringField;
    FD_RawSumSortingOrderNo: TIntegerField;
    FD_RawSumProductNo: TIntegerField;
    FD_RawSumRawMtrlNo: TIntegerField;
    FD_RawSumSTYCK: TIntegerField;
    FD_RawSumAM3: TFloatField;
    FD_RawSumNM3: TFloatField;
    FD_RawSumAM1: TFloatField;
    FD_RawSumUrlaggPcs: TIntegerField;
    FD_RawSumLameller: TIntegerField;
    FD_RawSumKapSnitt: TIntegerField;
    FD_RawSumExpectedPcsOut: TIntegerField;
    FD_RawSumATMM: TFloatField;
    FD_RawSumABMM: TFloatField;
    FD_RawSumALMM: TFloatField;
    FD_RawSumNTMM: TFloatField;
    FD_RawSumNBMM: TFloatField;
    FD_RawSumNLMM: TFloatField;
    FD_RawSumSizePercentOfTotal: TFloatField;
    FD_NewProduction: TFDQuery;
    FD_NewProductionSortingOrderNo: TIntegerField;
    FD_NewProductionProdukt: TStringField;
    FD_NewProductionActualLengthMM: TFloatField;
    FD_NewProductionActualThicknessMM: TFloatField;
    FD_NewProductionActualWidthMM: TFloatField;
    FD_NewProductionAM3: TFloatField;
    FD_NewProductionNM3: TFloatField;
    FD_NewProductionSTYCK: TIntegerField;
    FD_NewProductionAM1: TFloatField;
    FD_NewProductionSurfacingNo: TIntegerField;
    FD_NewProductionProductNo: TIntegerField;
    cds_SortOrder: TFDQuery;
    FD_GenRawSum_II: TFDQuery;
    FD_GenSOoutput: TFDQuery;
    cds_SOoutput: TFDQuery;
    cds_SOoutputProductNo: TIntegerField;
    cds_SOoutputProductDisplayName: TStringField;
    cds_SOoutputSTYCK: TIntegerField;
    cds_SortOrderSortingOrderNo: TIntegerField;
    cds_SortOrderPIPNo: TIntegerField;
    cds_SortOrderLIPNo: TIntegerField;
    cds_SortOrderStartTime: TSQLTimeStampField;
    cds_SortOrderEndTime: TSQLTimeStampField;
    cds_SortOrderComments: TMemoField;
    cds_SortOrderRealProductionTime: TBCDField;
    cds_SortOrderStopTime: TIntegerField;
    cds_SortOrderDateCreated: TSQLTimeStampField;
    cds_SortOrderCreatedUser: TIntegerField;
    cds_SortOrderPrioNo: TIntegerField;
    cds_SortOrderPercentTrimloss: TBCDField;
    cds_SortOrderMCClassNo: TIntegerField;
    cds_SortOrderMoveToLIPNo: TIntegerField;
    cds_SortOrderChipsM3Solid: TBCDField;
    cds_SortOrderChipsValue: TBCDField;
    cds_SortOrderRawMtrlCost: TBCDField;
    cds_SortOrderRawMtrlAM3: TBCDField;
    cds_SortOrderProductionCost: TBCDField;
    cds_SortOrderProductionAM3: TBCDField;
    cds_SortOrderCostPerAM3: TBCDField;
    cds_SortOrderSawdustM3Solid: TBCDField;
    cds_SortOrderSawdustValue: TBCDField;
    cds_SortOrderShiftNo: TIntegerField;
    cds_SortOrderTypeOfRunNo: TIntegerField;
    cds_SortOrderResponsibleUser: TIntegerField;
    cds_SortOrderAnsvarigSaljareNo: TIntegerField;
    cds_SortOrderNoOfWorkers: TBCDField;
    cds_SortOrderPostningstid: TBCDField;
    cds_SortOrderNoOfWorkersPostning: TBCDField;
    cds_SortOrderAntalBitarUt: TIntegerField;
    cds_SortOrderAvkapAM3: TBCDField;
    cds_SortOrderAvkapLPM: TBCDField;
    cds_SortOrderKassationAM3: TBCDField;
    cds_SortOrderKassationLPM: TBCDField;
    cds_SortOrderKassationStyck: TIntegerField;
    cds_SortOrderAvkapValue: TBCDField;
    cds_SortOrderKassationValue: TBCDField;
    cds_SortOrderSizeFormat: TIntegerField;
    cds_SortOrderLengthFormat: TIntegerField;
    cds_SortOrderTotalSalaryCost: TBCDField;
    cds_SortOrderFeedSpeed: TBCDField;
    cds_SortOrderRawMtrlAM1: TBCDField;
    cds_SortOrderRawMtrlPcs: TIntegerField;
    cds_SortOrderProductionAM1: TBCDField;
    cds_SortOrderProductionPcs: TIntegerField;
    cds_SortOrderProductionValue: TBCDField;
    cds_SortOrderAntalKapSnitt: TIntegerField;
    cds_SortOrderTotalValue: TBCDField;
    cds_SortOrderTotalAM3: TBCDField;
    cds_SortOrderTotalAM1: TBCDField;
    cds_SortOrderTotalPcs: TIntegerField;
    cds_SortOrderTotalCost: TBCDField;
    cds_SortOrderResultAO: TBCDField;
    cds_SortOrderCostPerAM1: TBCDField;
    cds_SortOrderAvgRawMtrlPriceAM3: TBCDField;
    cds_SortOrderAvgProductPriceAM3: TBCDField;
    cds_SortOrderAvgProductPriceAM1: TBCDField;
    cds_SortOrderAvgRawMtrlPriceAM1: TBCDField;
    cds_SortOrderEfficiencyFactor: TBCDField;
    cds_SortOrderStopTimeNotIncl: TIntegerField;
    cds_SortOrderLego: TIntegerField;
    cds_SortOrderLegoCostPerAM3: TBCDField;
    cds_SortOrderRawPIPNo: TIntegerField;
    cds_SortOrderRawLIPNo: TIntegerField;
    cds_SortOrderRealLpmMinute: TBCDField;
    cds_SortOrderSeqNo: TIntegerField;
    cds_SortOrderHyvelInfo: TMemoField;
    cds_SortOrderPrintRawMtrlPart: TIntegerField;
    cds_SortOrderTemplate: TIntegerField;
    cds_SortOrderTemplateName: TStringField;
    cds_SortOrderTemplateUser: TIntegerField;
    cds_SortOrderAnsvarig: TStringField;
    cds_SortOrderAnsvarigSaljare: TStringField;
    cds_SortOrderPIPName: TStringField;
    cds_SortOrderLIPName: TStringField;
    cds_SortOrderTypeOfRunName: TStringField;
    cds_SortOrderRawPIPName: TStringField;
    cds_SortOrderRawLipName: TStringField;
    cds_SorOrdRow: TFDQuery;
    cds_SorOrdRowSortingOrderNo: TIntegerField;
    cds_SorOrdRowSortingOrderRowNo: TIntegerField;
    cds_SorOrdRowCSDNo: TIntegerField;
    cds_SorOrdRowProductNo: TIntegerField;
    cds_SorOrdRowMCClassNo: TIntegerField;
    cds_SorOrdRowProductLengthNo: TIntegerField;
    cds_SorOrdRowLengthDescription: TStringField;
    cds_SorOrdRowPlannedAM3: TBCDField;
    cds_SorOrdRowNoOfUnits: TBCDField;
    cds_SorOrdRowVolumeUnitNo: TIntegerField;
    cds_SorOrdRowDateCreated: TSQLTimeStampField;
    cds_SorOrdRowCreatedUser: TIntegerField;
    cds_SorOrdRowPPP: TIntegerField;
    cds_SorOrdRowProdInstructNo: TIntegerField;
    cds_SorOrdRowPcsIn: TFMTBCDField;
    cds_SorOrdRowAM1In: TFMTBCDField;
    cds_SorOrdRowTargetProduct: TIntegerField;
    cds_SorOrdRowCostDist: TBCDField;
    cds_SorOrdRowPrice: TBCDField;
    cds_SorOrdRowPriceUnit: TIntegerField;
    cds_SorOrdRowPrio: TIntegerField;
    cds_SorOrdRowStatus: TIntegerField;
    cds_SorOrdRowMark: TStringField;
    cds_SorOrdRowCustomer: TStringField;
    cds_SorOrdRowExportRow: TIntegerField;
    cds_SorOrdRowPriceListNo: TIntegerField;
    cds_SorOrdRowSortOrder: TIntegerField;
    cds_SorOrdRowNoteMark: TStringField;
    cds_SorOrdRowNoteStamp: TStringField;
    cds_SorOrdRowLIPNo: TIntegerField;
    cds_SorOrdRowAM3: TBCDField;
    cds_SorOrdRowNM3: TBCDField;
    cds_SorOrdRowPCS: TIntegerField;
    cds_SorOrdRowAM1: TBCDField;
    cds_SorOrdRowOutturnOfInputAM3: TBCDField;
    cds_SorOrdRowProductValue: TBCDField;
    cds_SorOrdRowLanguagecode: TIntegerField;
    cds_SorOrdRowSizeFormat: TIntegerField;
    cds_SorOrdRowLengthFormat: TIntegerField;
    cds_SorOrdRowVolumeFormat: TIntegerField;
    cds_SorOrdRowUrlagg: TIntegerField;
    cds_SorOrdRowEndPkgAllowed: TIntegerField;
    cds_SorOrdRowPkgPrefix: TStringField;
    cds_SorOrdRowNotering: TStringField;
    cds_SorOrdRowStickRecipe: TStringField;
    cds_SorOrdRowRefCopies: TIntegerField;
    cds_SorOrdRowStackerNo: TIntegerField;
    cds_SorOrdRowAntalBitarUt: TIntegerField;
    cds_SorOrdRowAntalKapSnitt: TIntegerField;
    cds_SorOrdRowPlannedNM3: TBCDField;
    cds_SorOrdRowArtikelKod: TStringField;
    cds_SorOrdRowMRKE: TStringField;
    cds_SorOrdRowProdAM1: TFloatField;
    cds_SorOrdRowProdAM3: TFloatField;
    cds_SorOrdRowProdPCS: TIntegerField;
    cds_SorOrdRowProdPKT: TIntegerField;
    cds_SorOrdRowProdNM3: TFloatField;
    cds_SorOrdRowLONR: TIntegerField;
    cds_SorOrdRowSpeciesNo: TIntegerField;
    cds_SorOrdRowSurfacingNo: TIntegerField;
    cds_SorOrdRowProdukt: TStringField;
    cds_SorOrdRowPrisEnhet: TStringField;
    cds_SorOrdRowPrislista: TStringField;
    cds_SorOrdRowLagergrupp: TStringField;
    cds_SorOrdRowLggare: TStringField;
    cds_SORaw: TFDQuery;
    cds_SORawProductNo: TIntegerField;
    cds_SORawMCClassNo: TIntegerField;
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
    cds_ProdInstruct: TFDQuery;
    cds_ProdInstructProdInstruNo: TIntegerField;
    cds_ProdInstructFOHCpercent: TFloatField;
    cds_ProdInstructMiniBundleHeight: TIntegerField;
    cds_ProdInstructMiniBundleWidth: TIntegerField;
    cds_ProdInstructMinNoOfSticks: TIntegerField;
    cds_ProdInstructNoOfStraps: TIntegerField;
    cds_ProdInstructCornerProtection: TStringField;
    cds_ProdInstructPackageWidth: TIntegerField;
    cds_ProdInstructPackageHeight: TIntegerField;
    cds_ProdInstructStamp: TIntegerField;
    cds_ProdInstructPET: TIntegerField;
    cds_ProdInstructMiniBundle: TIntegerField;
    cds_ProdInstructStressGrade: TIntegerField;
    cds_ProdInstructFingerJoint: TIntegerField;
    cds_ProdInstructPackageCut: TIntegerField;
    cds_ProdInstructExLog: TStringField;
    cds_ProdInstructCreated: TSQLTimeStampField;
    cds_ProdInstructModified: TSQLTimeStampField;
    cds_ProdInstructPackageTagLayout: TIntegerField;
    cds_ProdInstructPET_Tolerance: TStringField;
    cds_ProdInstructBarCodeID: TIntegerField;
    cds_ProdInstructExtraID: TStringField;
    cds_ProdInstructCreatedUser: TIntegerField;
    cds_ProdInstructModifiedUser: TIntegerField;
    cds_ProdInstructDateCreated: TSQLTimeStampField;
    cds_ProdInstructPackageType: TIntegerField;
    cds_ProdInstructWrapType: TIntegerField;
    cds_ProdInstructPressureTreated: TIntegerField;
    cds_ProdInstructSequenceNo: TIntegerField;
    cds_ProdInstructPicture: TStringField;
    cds_ProdInstructNote: TMemoField;
    cds_ProdInstructShrinkWrap: TIntegerField;
    cds_ProdInstructPiecesPerMiniBundle: TIntegerField;
    cds_ProdInstructPackage_Size: TIntegerField;
    cds_ProdInstructBILD: TBlobField;
    cds_ProdInstructCornerProtectionNo: TIntegerField;
    cds_ProdInstructExternalNote: TMemoField;
    cds_ProdInstructTruckSticksNo: TIntegerField;
    cds_ProdInstructStrapTypeNo: TIntegerField;
    cds_ProdInstructPaperWrap: TStringField;
    cds_ProdInstructGradeStamp: TStringField;
    cds_ProdInstructBarCode: TStringField;
    cds_ProdInstructCornProt: TStringField;
    cds_ProdInstructPkgSize: TStringField;
    cds_ProdInstructIMP: TStringField;
    cds_ProdInstructPackageTypeName: TStringField;
    cds_ProdInstructTruckStro: TStringField;
    cds_SOLayout: TFDQuery;
    cds_SOLayoutSortingOrderNo: TIntegerField;
    cds_SOLayoutSortingOrderRowNo: TIntegerField;
    cds_SOLayoutLayoutNo: TIntegerField;
    cds_SOLayoutAntalKopior: TIntegerField;
    cds_SOLayoutLayout: TStringField;
    cds_ProductLength: TFDQuery;
    cds_ProductLengthLngdgrupp: TStringField;
    cds_ProductLengthProductLengthNo: TIntegerField;
    cds_ProductLengthALMM: TFloatField;
    cds_ProductLengthNLMM: TFloatField;
    cds_ProductLengthFeet: TFloatField;
    cds_ProductLengthTum: TStringField;
    FD_genValue: TFDQuery;
    FD_RawSumPercentAdjPcs: TFloatField;
    FD_RawSumKassPcs: TFloatField;
    FD_RawSumKassAM3: TFloatField;
    FD_RawSumKassAM1: TFloatField;
    FD_RawSumPricePerNM3: TFloatField;
    FD_RawSumProductValue: TFloatField;
    FD_NewProductionPris: TBCDField;
    FD_NewProductionVrde: TFloatField;
    FD_GetCost: TFDQuery;
    FD_GetCostProductValue: TFMTBCDField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLAGERGRUPP: TStringField;
    cds_LIPPIPNo: TIntegerField;
    cds_RawPIP: TFDQuery;
    cds_RawPIPPIPNo: TIntegerField;
    cds_RawPIPORT: TStringField;
    cds_RawPIPOwnerNo: TIntegerField;
    cds_RawLIP: TFDQuery;
    cds_RawLIPLIPNo: TIntegerField;
    cds_RawLIPLAGERGRUPP: TStringField;
    cds_RawLIPPIPNo: TIntegerField;
    cds_FeedBack: TFDQuery;
    cds_FeedBackSortingOrderNo: TIntegerField;
    cds_FeedBackFeedBackNo: TIntegerField;
    cds_FeedBackNotering: TMemoField;
    cds_FeedBackDateCreated: TSQLTimeStampField;
    cds_FeedBackDateModified: TSQLTimeStampField;
    cds_FeedBackCreatedUser: TIntegerField;
    cds_FeedBackModifiedUser: TIntegerField;
    cds_PriceUnit: TFDQuery;
    cds_PriceUnitTemplateUnitNo: TIntegerField;
    cds_PriceUnitTemplateUnitName: TStringField;
    cds_ProdInLager: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    sq_ProdOnly: TFDQuery;
    sq_ProdOnlyPackageNo: TIntegerField;
    sq_ProdOnlyLEVKOD: TStringField;
    sq_ProdOnlyproductno: TIntegerField;
    sq_ProdOnlyPcsPerLength: TStringField;
    sq_ProdOnlyAM3: TFloatField;
    sq_ProdOnlySTYCK: TIntegerField;
    sq_ProdOnlyDateCreated: TSQLTimeStampField;
    sq_ProdOnlyNOOFLENGTHS: TIntegerField;
    sq_ProdOnlypackagetypeno: TIntegerField;
    cds_LegoPris: TFDQuery;
    cds_LegoPrisProductionUnitNo: TIntegerField;
    cds_LegoPrisATMM: TFloatField;
    cds_LegoPrisABMM: TFloatField;
    cds_LegoPrisNoOfSplit: TIntegerField;
    cds_LegoPrisCreatedUser: TIntegerField;
    cds_LegoPrisModifiedUser: TIntegerField;
    cds_LegoPrisDateCreated: TSQLTimeStampField;
    cds_LegoPrisDateModified: TSQLTimeStampField;
    cds_LegoPrisPrice: TFloatField;
    cds_LegoPrisPriceUnitNo: TIntegerField;
    cds_LegoPrisUserName: TStringField;
    cds_LegoVerk: TFDQuery;
    cds_LegoVerkClientNo: TIntegerField;
    cds_LegoVerkClientName: TStringField;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthPET: TIntegerField;
    cds_ProdLengthFingerJoint: TIntegerField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    cds_ProdLengthProductLengthGroupNo: TIntegerField;
    cds_ProdLengthAct: TIntegerField;
    cds_ProductionUnit: TFDQuery;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitMTPUNKT: TStringField;
    cds_ProductionUnitProducerNo: TIntegerField;
    cds_ProductionUnitTypeOfUnit: TIntegerField;
    cds_ProductionUnitProdUnitNo: TIntegerField;
    cds_UrlLayout: TFDQuery;
    cds_UrlLayoutVerkNo: TIntegerField;
    cds_UrlLayoutLayoutNo: TIntegerField;
    cds_UrlLayoutAntalKopior: TIntegerField;
    cds_UrlLayoutLayout: TStringField;
    cds_AOMall: TFDQuery;
    cds_AOMallSortingOrderNo: TIntegerField;
    cds_AOMallTemplateName: TStringField;
    cds_SOVerkParams: TFDQuery;
    cds_SOVerkParamsVerkNo: TIntegerField;
    cds_SOVerkParamsRawMtrlPricePerNM3: TBCDField;
    cds_SOVerkParamsSawdustPriceFM3: TBCDField;
    cds_SOVerkParamsAvkapPriceFM3: TBCDField;
    cds_SOVerkParamsPIPNo: TIntegerField;
    cds_SOVerkParamsLIPNo: TIntegerField;
    cds_SOVerkParamsOrt: TStringField;
    cds_SOVerkParamsLagergrupp: TStringField;
    cds_AO: TFDQuery;
    cds_AOAONr: TIntegerField;
    cds_AOAORadNr: TStringField;
    cds_AOLinje: TStringField;
    cds_AOProduct: TStringField;
    cds_AOLengthDescription: TStringField;
    cds_AOALMM: TFloatField;
    cds_AOPPP: TIntegerField;
    cds_AOPaket: TBCDField;
    cds_AOBarCode: TStringField;
    cds_AOGradeStamp: TStringField;
    cds_AOWrapType: TStringField;
    cds_AOPackageWidth: TIntegerField;
    cds_AOPackageHeight: TIntegerField;
    cds_AONoOfStraps: TIntegerField;
    cds_AOMark: TStringField;
    cds_AOSortOrder: TIntegerField;
    cds_Raw: TFDQuery;
    cds_RawAONr: TIntegerField;
    cds_RawProduct: TStringField;
    cds_RawLengthDescription: TStringField;
    cds_RawVolym: TBCDField;
    cds_SOCngProd: TFDQuery;
    cds_SOCngProdSortingOrderNo: TIntegerField;
    cds_SOCngProdSpeciesNo: TIntegerField;
    cds_SOCngProdGradeNo: TIntegerField;
    cds_SOCngProdSurfacingNo: TIntegerField;
    cds_SOCngProdIMPNo: TIntegerField;
    cds_SOCngProdNewProductNo: TIntegerField;
    cds_SOCngProdKvalitet: TStringField;
    cds_SOCngProdTrslag: TStringField;
    cds_SOCngProdUtfrande: TStringField;
    cds_SOCngProdImpregnering: TStringField;
    sq_SOMarkPkgs: TFDQuery;
    sq_SODELMarkPkgs: TFDQuery;
    cds_FindRaw: TFDQuery;
    cds_FindRawProductDisplayName: TStringField;
    cds_FindRawProductNo: TIntegerField;
    cds_FindRawProductLengthNo: TIntegerField;
    cds_FindRawLengthDescription: TStringField;
    cds_FindRawALMM: TFloatField;
    sq_INS_SplitPkg: TFDQuery;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    sq_DelMall: TFDQuery;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    cds_LengthGroup: TFDQuery;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cds_SOLegoCost: TFDQuery;
    cds_SOLegoCostProductionUnitNo: TIntegerField;
    cds_SOLegoCostProductionUnitName: TStringField;
    cds_SOLegoCostClientNo: TIntegerField;
    cds_SOLegoCostSequenceNo: TIntegerField;
    cds_SOLegoCostCreatedUser: TSmallintField;
    cds_SOLegoCostModifiedUser: TSmallintField;
    cds_SOLegoCostDateCreated: TSQLTimeStampField;
    cds_SOLegoCostLogicalInventoryPointNo: TIntegerField;
    cds_SOLegoCostRegistrationPointNo: TIntegerField;
    cds_SOLegoCostOnSticks: TIntegerField;
    cds_SOLegoCostSurfacingNo: TIntegerField;
    cds_SOLegoCostDIM_DIV: TIntegerField;
    cds_SOLegoCostTerminalNo: TIntegerField;
    cds_SOLegoCostPhysicalInventoryPointNo: TIntegerField;
    cds_SOLegoCostLIPGroupNo: TIntegerField;
    cds_SOLegoCostProductionUnitCode: TStringField;
    cds_SOLegoCostPkgPrefix: TStringField;
    cds_SOLegoCostStoppOrsakFil: TStringField;
    cds_SOLegoCostStoppTidFil: TStringField;
    cds_SOLegoCostLegoverk: TStringField;
    cds_SOLegoCostMtpunkt: TStringField;
    cds_Products: TFDQuery;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductGroupNo: TIntegerField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    cds_ProductsProductCategoryName: TStringField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsNominalThicknessMM: TFloatField;
    cds_ProductsNominalWidthMM: TFloatField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsGradeNo: TIntegerField;
    cds_ProductsSpeciesNo: TIntegerField;
    cds_ProductsProductCategoryNo: TIntegerField;
    cds_ProductsSurfacingNo: TIntegerField;
    cds_ProductsNominalThicknessINCH: TStringField;
    cds_ProductsNominalWidthINCH: TStringField;
    sq_GetProductNo: TFDQuery;
    sq_GetProductNoProductNo: TIntegerField;
    sq_GetBiProductPrice: TFDQuery;
    sq_GetBiProductPriceVerkNo: TIntegerField;
    sq_GetBiProductPriceRawMtrlPricePerNM3: TBCDField;
    sq_GetBiProductPriceSawdustPriceFM3: TBCDField;
    sq_GetBiProductPriceAvkapPriceFM3: TBCDField;
    sq_GetBiProductPricePIPNo: TIntegerField;
    sq_GetBiProductPriceLIPNo: TIntegerField;
    cds_NewPkgSum: TFDQuery;
    cds_NewPkgSumActualThicknessMM: TFloatField;
    cds_NewPkgSumActualWidthMM: TFloatField;
    cds_NewPkgSumActualLengthMM: TFloatField;
    cds_NewPkgSumAM3: TFloatField;
    cds_NewPkgSumNM3: TFloatField;
    cds_NewPkgSumSTYCK: TIntegerField;
    cds_NewPkgSumAM1: TFloatField;
    sq_GetStoppTime: TFDQuery;
    sq_GetStoppTimeAntalStopp: TIntegerField;
    sq_GetStoppTimeTotalStoppTid: TFloatField;
    sq_GetSONoByLO: TFDQuery;
    cdsBooking: TFDQuery;
    sq_GetSONoByLOSortingOrderNo: TIntegerField;
    cdsBookingStartvecka: TIntegerField;
    cdsBookingSlutvecka: TIntegerField;
    cdsBookingShipTo: TStringField;
    cdsBookingDestination: TStringField;
    cdsBookingLOText: TMemoField;
    cdsBookingInternnotering: TStringField;
    cdsBookingReferens: TStringField;
    cdsBookingObjectType: TIntegerField;
    cdsBookingCarrierName: TStringField;
    cdsBookingETD: TSQLTimeStampField;
    cdsBookingBookingNo: TIntegerField;
    cdsBookingShippersShipDate: TSQLTimeStampField;
    cdsBookingShippersShipTime: TSQLTimeStampField;
    cdsBookingShippingCompanyBookingID: TStringField;
    cdsBookingSupplierReference: TStringField;
    cdsBookingPreliminaryRequestedPeriod: TStringField;
    cdsBookingClientName: TStringField;
    cdsBookingshippingplanno: TIntegerField;
    cdsBookingPanic_Note: TStringField;
    cds_PriceList: TFDQuery;
    cds_PriceListTemplateNo: TIntegerField;
    cds_PriceListPriceListName: TStringField;
    cds_LOinAO: TFDQuery;
    cds_LOinAOLONR: TIntegerField;
    cds_FindUrlagg: TFDQuery;
    cds_FindUrlaggProductDisplayName: TStringField;
    cds_FindUrlaggProductNo: TIntegerField;
    cds_FindUrlaggProductLengthNo: TIntegerField;
    cds_FindUrlaggPPP: TIntegerField;
    cds_FindUrlaggLengthDescription: TStringField;
    cds_FindUrlaggALMM: TFloatField;
    sq_InsShift: TFDQuery;
    cds_SOShift: TFDQuery;
    cds_SOShiftSortingOrderNo: TIntegerField;
    cds_SOShiftShiftNo: TIntegerField;
    cds_SOShiftNoOfOperators: TIntegerField;
    cds_SOShiftSkift: TStringField;
    sq_StdSOReport: TFDQuery;
    sq_StdSOReportReportName: TStringField;
    sq_MoveUsedPkgs: TFDQuery;
    sp_GetStartTime: TFDStoredProc;
    sp_GetEndTime: TFDStoredProc;
    sp_GetStartTimeRegistrerad: TSQLTimeStampField;
    sp_GetEndTimeRegistrerad: TSQLTimeStampField;
    sp_CopyAOtoTemplate: TFDStoredProc;
    sp_CopyLOToAO: TFDStoredProc;
    sp_NewLoad: TFDStoredProc;
    FD_GenFinSum: TFDQuery;
    FD_SortOrderFinSum: TFDQuery;
    FD_SortOrderFinSumProdukt: TStringField;
    FD_SortOrderFinSumSortingOrderNo: TIntegerField;
    FD_SortOrderFinSumProductNo: TIntegerField;
    FD_SortOrderFinSumSortingOrderRowNo: TIntegerField;
    FD_SortOrderFinSumPieces: TIntegerField;
    FD_SortOrderFinSumAM3: TFloatField;
    FD_SortOrderFinSumNM3: TFloatField;
    FD_SortOrderFinSumAM1: TFloatField;
    FD_SortOrderFinSumATMM: TFloatField;
    FD_SortOrderFinSumABMM: TFloatField;
    FD_SortOrderFinSumALMM: TFloatField;
    FD_SortOrderFinSumNTMM: TFloatField;
    FD_SortOrderFinSumNBMM: TFloatField;
    FD_SortOrderFinSumNLMM: TFloatField;
    FD_SortOrderFinSumPricePerNM3: TFloatField;
    FD_SortOrderFinSumProductValue: TFloatField;
    FD_SortOrderFinSumAvrUrlaggPcs: TIntegerField;
    FD_SortOrderFinSumUrlagg: TIntegerField;
    FD_SortOrderFinSumSurfacingNo: TIntegerField;
    FD_SortOrderRawSumPercentAdjPcs: TFloatField;
    FD_SortOrderRawSumKassPcs: TFloatField;
    FD_SortOrderRawSumKassAM3: TFloatField;
    FD_SortOrderRawSumKassAM1: TFloatField;
    FD_SortOrderRawSumPricePerNM3: TFloatField;
    FD_SortOrderRawSumProductValue: TFloatField;
    FD_SortOrderRawSumPcsAttAvrakna: TIntegerField;
    FD_SortOrderFinSumPcsAttAvrakna: TIntegerField;
    FD_GenRawSum_III: TFDQuery;
    FD_GetLPMHyvlat: TFDQuery;
    FD_SortOrderFinSumLameller: TIntegerField;
    FD_SortOrderFinSumHyvelLPM: TFloatField;
    FD_GetLPMHyvlatHyvlatLPM: TFloatField;
    cds_ProductionUnitCost: TFloatField;
    cds_ProductionUnitLonPerTimme: TFloatField;
    cds_ProductionUnitLegoCostPerAM3: TBCDField;
    FD_NewPkgSumUrlagg: TIntegerField;
    FD_NewPkgSumMCClassNo: TIntegerField;
    FD_SortOrderFinSumMCClassNo: TIntegerField;
    cds_SORawPricePerNM3: TBCDField;
    FD_ProdTimeSeg: TFDQuery;
    FD_ProdTimeSegSortingOrderNo: TIntegerField;
    FD_ProdTimeSegSegmentNo: TIntegerField;
    FD_ProdTimeSegStartSegment: TSQLTimeStampField;
    FD_ProdTimeSegEndSegment: TSQLTimeStampField;
    FD_ProdTimeSegProductionTime: TBCDField;
    FD_vis_PkgRegInOtherRunsBetweenDates: TFDStoredProc;
    FD_vis_PkgRegInOtherRunsBetweenDatesSortingOrderNo: TIntegerField;
    FD_DelProdTimeSeg: TFDQuery;
    ds_ProdTimeSeg: TDataSource;
    FD_vis_PkgRegInOtherRunsBetweenDatesDateCreated: TSQLTimeStampField;
    FD_ProdTimeSegPrevSortingOrderNo: TIntegerField;
    sp_GetStartTimeSortingOrderNo: TIntegerField;
    FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates: TFDStoredProc;
    FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDatesSortingOrderNo: TIntegerField;
    FD_SetTargetProduct: TFDQuery;
    cds_SOoutputAM3: TFMTBCDField;
    cds_SOoutputAM1: TFMTBCDField;
    cds_SOoutputNM3: TFMTBCDField;
    cds_SOoutputUtfall: TFMTBCDField;
    cds_SOoutputProduktVrde: TFMTBCDField;
    cds_SOoutputmedelpris: TFMTBCDField;
    cds_SOoutputPrisutfall: TFMTBCDField;
    cds_SortOrderAvgProductPriceNM3: TBCDField;
    cds_SortOrderAvgRawMtrlPriceNM3: TBCDField;
    cds_SortOrderProductionNM3: TBCDField;
    cds_SortOrderRawMtrlNM3: TBCDField;
    cds_SortOrderSalaryCostPerHour: TBCDField;
    cds_SortOrderEfficiencyFactorWOStopptime: TBCDField;
    cds_SortOrderCostPerNM3: TBCDField;
    cds_SortOrderProdTimeHour: TFMTBCDField;
    cds_SortOrderStopTimeHour: TIntegerField;
    cds_SortOrderStopTimeNotInclHour: TIntegerField;
    cds_SortOrderPostTimeHour: TFMTBCDField;
    FD_GenRawSum_IIb: TFDQuery;
    FD_DeleteSortOrderRawSum: TFDQuery;
    FD_getAdjPcs: TFDQuery;
    FD_getAdjPcsAdjPcs: TIntegerField;
    cds_SortOrderManualProdTime: TIntegerField;
    cds_SorOrdRowLengthSpec: TStringField;
    cds_SORawLengthSpec: TStringField;
    cds_SorOrdRowALMM: TFloatField;
    cds_SORawALMM: TFloatField;
    cds_SOLegoCostCost: TFloatField;
    cds_SOLegoCostCapitalCost: TFloatField;
    cds_SOLegoCostOverheadCost: TFloatField;
    cds_SOLegoCostSalaryCost: TFloatField;
    cds_SOLegoCostLegoCostPerAM3: TBCDField;
    sq_DelSortOrder: TFDQuery;
    cds_SortOrderPreCalcEfficiencyFactor: TBCDField;
    cds_VolResDtl: TFDQuery;
    cds_VolResDtlReservationNo: TIntegerField;
    cds_VolResDtlProductNo: TIntegerField;
    cds_VolResDtlProductLengthNo: TIntegerField;
    cds_VolResDtlLengthSpec: TStringField;
    cds_VolResDtlNM3: TFloatField;
    cds_VolResDtlAM3: TFloatField;
    cds_VolResDtlYearWeek: TStringField;
    cds_VolResDtlClientNo: TIntegerField;
    cds_VolResDtlShippingPlanNo: TIntegerField;
    ds_VolResDtl: TDataSource;
    cds_VolResDtlProdukt: TStringField;
    cds_VolResDtlSumWeeks: TFloatField;
    cds_VolResDtlWeek1: TFloatField;
    cds_VolResDtlWeek2: TFloatField;
    cds_VolResDtlWeek3: TFloatField;
    cds_VolResDtlWeek4: TFloatField;
    cds_VolResDtlWeek5: TFloatField;
    cds_VolResDtlWeek6: TFloatField;
    cds_VolResDtlWeek7: TFloatField;
    cds_VolResDtlWeek8: TFloatField;
    cds_VolResDtlWeek9: TFloatField;
    cds_VolResDtlDateCreated: TSQLTimeStampField;
    cds_VolResDtlCreatedUser: TIntegerField;
    cds_VolResDtlDateModified: TSQLTimeStampField;
    cds_VolResDtlModifiedUser: TIntegerField;
    cds_SorOrdRowKvalitet: TStringField;
    cds_SorOrdRowTrslag: TStringField;
    cds_SorOrdRowUtfrande: TStringField;
    cds_SorOrdRowIMP: TStringField;
    cds_SorOrdRowAT: TFloatField;
    cds_SorOrdRowAB: TFloatField;
    cds_SorOrdRowNT: TFloatField;
    cds_SorOrdRowNB: TFloatField;
    cds_SorOrdRowII: TFDQuery;
    cds_SorOrdRowIIMCClassNo: TIntegerField;
    cds_SorOrdRowIIUrlagg: TIntegerField;
    cds_SorOrdRowIIAT: TFloatField;
    cds_SorOrdRowIIAB: TFloatField;
    FDCopyTo: TFDMemTable;
    cds_ProdUtfall: TFDQuery;
    cds_ProdUtfallProductNo: TIntegerField;
    cds_ProdUtfallAM3: TFMTBCDField;
    cds_ProdUtfallAM1: TFMTBCDField;
    cds_ProdUtfallNM3: TFMTBCDField;
    cds_ProdUtfallSTYCK: TIntegerField;
    cds_ProdUtfallUtfall: TFMTBCDField;
    cds_ProdUtfallProduktVrde: TFMTBCDField;
    cds_ProdUtfallmedelpris: TFMTBCDField;
    cds_ProdUtfallPrisutfall: TFMTBCDField;
    ds_ProdUtfall: TDataSource;
    cds_ProdUtfallSortingOrderNo: TIntegerField;
    cds_ProdUtfallRegPointName: TStringField;
    cds_ProdUtfallAT: TFloatField;
    cds_ProdUtfallAB: TFloatField;
    cds_ProdUtfallKV: TStringField;
    cds_SORawUtfall: TFDQuery;
    cds_SORawUtfallSortingOrderNo: TIntegerField;
    cds_SORawUtfallRawMtrlNo: TIntegerField;
    cds_SORawUtfallProductNo: TIntegerField;
    cds_SORawUtfallMCClassNo: TIntegerField;
    cds_SORawUtfallPlannedAM3: TBCDField;
    cds_SORawUtfallPlannedPcs: TIntegerField;
    cds_SORawUtfallProgramNo: TIntegerField;
    cds_SORawUtfallDateCreated: TSQLTimeStampField;
    cds_SORawUtfallModifiedUser: TIntegerField;
    cds_SORawUtfallKassationStyck: TIntegerField;
    cds_SORawUtfallKassationAM3: TBCDField;
    cds_SORawUtfallAvgLength: TBCDField;
    cds_SORawUtfallLengthDescription: TStringField;
    cds_SORawUtfallPlannedAM1: TBCDField;
    cds_SORawUtfallCreatedUser: TIntegerField;
    cds_SORawUtfallAntalBitarUt: TIntegerField;
    cds_SORawUtfallPercentPcsOfTotal: TFMTBCDField;
    cds_SORawUtfallKassationAM1: TBCDField;
    cds_SORawUtfallTrimAM1: TFMTBCDField;
    cds_SORawUtfallTrimAM3: TFMTBCDField;
    cds_SORawUtfallMainRawMtrl: TIntegerField;
    cds_SORawUtfallRealLPM: TBCDField;
    cds_SORawUtfallProductLengthNo: TIntegerField;
    cds_SORawUtfallAntalKapSnitt: TIntegerField;
    cds_SORawUtfallAntalLamellerUt: TIntegerField;
    cds_SORawUtfallUrlaggsProcent: TBCDField;
    cds_SORawUtfallaPcs: TIntegerField;
    cds_SORawUtfallaAM1: TBCDField;
    cds_SORawUtfallAM3: TFloatField;
    cds_SORawUtfallNM3: TFloatField;
    cds_SORawUtfallPCS: TIntegerField;
    cds_SORawUtfallAM1: TFloatField;
    cds_SORawUtfallGradeNo: TIntegerField;
    cds_SORawUtfallSpeciesNo: TIntegerField;
    cds_SORawUtfallSurfacingNo: TIntegerField;
    cds_SORawUtfallProductCategoryNo: TIntegerField;
    cds_SORawUtfallAT: TFloatField;
    cds_SORawUtfallAB: TFloatField;
    cds_SORawUtfallNT: TFloatField;
    cds_SORawUtfallNB: TFloatField;
    cds_SORawUtfallProdukt: TStringField;
    cds_SORawUtfallPricePerNM3: TBCDField;
    cds_SORawUtfallLengthSpec: TStringField;
    cds_SORawUtfallALMM: TFloatField;
    ds_SORawUtfall: TDataSource;
    FD_StoppSum: TFDQuery;
    FD_StoppSumStoppTidsNamn: TStringField;
    FD_StoppSumStoppTid: TIntegerField;
    FD_StoppSumStoppTidFloat: TFloatField;
    FD_StoppSumAntal: TFDQuery;
    FD_StoppSumTid: TFDQuery;
    mtPropsTimeUnit: TIntegerField;
    mtPropsNoOfTop: TIntegerField;
    mtPropsVisaKortStopp: TIntegerField;
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
    ds_SortOrderRes: TDataSource;
    cds_SortOrderResSortingOrderNo: TIntegerField;
    cds_SortOrderResTotValPerNM3In: TFMTBCDField;
    cds_SortOrderResTotCostPerNM3In: TFMTBCDField;
    cds_SortOrderResRawMtrlCostPerNM3In: TFMTBCDField;
    cds_SortOrderResResultAOPerNM3In: TFMTBCDField;
    cds_ProdUtfallRaw: TFDQuery;
    cds_ProdUtfallFardig: TFDQuery;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    IntegerField2: TIntegerField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField2: TStringField;
    cds_SorOrdRowExcludeFromTotal: TIntegerField;
    cds_SORawExcludeFromTotal: TIntegerField;
    cds_SortOrderRawMtrlNM3NoOmSort: TBCDField;
    sp_stp_CopyAORow: TFDStoredProc;
    mCopyLengths: TFDMemTable;
    mCopyLengthsProductLengthNo: TIntegerField;
    mCopyLengthsLengthSpec: TStringField;
    mCopyLengthsALMM: TFloatField;
    dsCopyLengths: TDataSource;
    cds_Scheduler: TFDQuery;
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
    cds_SchedulerBookingNo: TIntegerField;
    cds_SchedulerPostningstid: TBCDField;
    cds_SchedulerPreCalcEfficiencyFactor: TBCDField;
    cds_SchedulerFeedSpeed: TBCDField;
    cds_SchedulerPlannedProductionTime: TBCDField;
    cds_SchedulerPlannedWorkingTime: TBCDField;
    cds_SchedulerDateCreated: TSQLTimeStampField;
    cds_SchedulerUserName: TStringField;
    cds_SchedulerFixedDate: TIntegerField;
    ds_Scheduler: TDataSource;
    sp_CopyLOToAO_II: TFDStoredProc;
    cds_SchedulerOwnerNo: TIntegerField;
    cds_SchedulerFinish: TSQLTimeStampField;
    cds_SchedulerWeekNo: TIntegerField;
    cds_SchedulerYearNo: TIntegerField;
    sp_Raw: TFDStoredProc;
    cds_SORawOLD: TFDQuery;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    BCDField1: TBCDField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    StringField3: TStringField;
    BCDField4: TBCDField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FMTBCDField8: TFMTBCDField;
    BCDField5: TBCDField;
    FMTBCDField9: TFMTBCDField;
    FMTBCDField10: TFMTBCDField;
    IntegerField14: TIntegerField;
    BCDField6: TBCDField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    BCDField7: TBCDField;
    IntegerField18: TIntegerField;
    BCDField8: TBCDField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField19: TIntegerField;
    FloatField5: TFloatField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField4: TStringField;
    BCDField9: TBCDField;
    StringField5: TStringField;
    FloatField10: TFloatField;
    IntegerField24: TIntegerField;
    cds_SORawBookingNo: TIntegerField;
    cds_SORawBookedProductNo: TIntegerField;
    cds_SORawBookedALMM: TFloatField;
    cds_SORawBookedNM3: TBCDField;
    cds_SORawPIPNo: TIntegerField;
    cds_SORawUtfall2: TBCDField;
    cds_SORawBookedAM3: TBCDField;
    cds_SORawStatus: TIntegerField;
    cds_SORawUsedAM3: TBCDField;
    cds_SORawPlannedOutputAM3: TBCDField;
    cds_SORawPkgFormat: TIntegerField;
    cds_SORawBookedLIPGroupNo: TIntegerField;
    cds_SORawID: TIntegerField;
    cds_SORawsspNo: TIntegerField;
    cds_SORawBookedProductLengthNo: TIntegerField;
    cds_SortOrderProducerNo: TIntegerField;
    cds_SortOrderOwnerNo: TIntegerField;
    cds_SortOrderProductionUnitNo: TIntegerField;
    cds_SortOrderStatus: TIntegerField;
    sq_DeleteCX: TFDQuery;
    sp_MergeSortingOrderRow: TFDStoredProc;
    cds_SORawM1: TFloatField;
    cds_SORawPlannedOutputNoOfUnits: TFloatField;
    cds_SORawPlannedOutputNM3: TBCDField;
    cds_Dim: TFDQuery;
    cds_DimNT: TFloatField;
    cds_DimNB: TFloatField;
    cds_DimAT: TFloatField;
    cds_DimAB: TFloatField;
    sp_OrderList: TFDStoredProc;
    sp_OrderListOrderNoText: TStringField;
    sp_OrderListOrderNo: TIntegerField;
    cds_SORawOrderNo: TIntegerField;
    cds_SORawOrderName: TStringField;
    sp_SortingOrderRowCX_add: TFDStoredProc;
    cds_RawMtrlBookedLink: TFDQuery;
    cds_RawMtrlBookedLinkBookingNo: TIntegerField;
    cds_RawMtrlBookedLinksspNo: TIntegerField;
    cds_RawMtrlBookedLinkSortingOrderNo: TIntegerField;
    cds_RawMtrlBookedLinkSortingOrderRowNo: TIntegerField;
    cds_RawMtrlBookedLinkOldBookingNo: TIntegerField;
    cds_SorOrdRowVP_ProductCode: TStringField;
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
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsProducer: TStringField;
    cds_PropsOwner: TStringField;
    cds_PropsProductionUnit: TStringField;
    sp_CopyLOToAO_II_Manual: TFDStoredProc;
    cds_SortOrderVP_ProductCodePrefix: TStringField;
    cds_SorOrdRowPlannedPcs: TIntegerField;
    cds_SchedulerLocationNo: TIntegerField;
    cds_uapCity: TFDQuery;
    cds_uapCityCityNo: TIntegerField;
    cds_uapCityCityName: TStringField;
    cds_SchedulerORT: TStringField;
    cds_uapCityUserID: TSmallintField;
    cds_SchedulerTaskCompleteField: TIntegerField;
    siLangLinked_dmsSortOrder: TsiLangLinked;
    sq_GetProductDesc: TFDQuery;
    sq_GetProductDescProductNo: TIntegerField;
    sq_GetProductDescProductGroupNo: TIntegerField;
    sq_GetProductDescProductDisplayName: TStringField;
    sq_GetProductDescActualThicknessMM: TFloatField;
    sq_GetProductDescActualWidthMM: TFloatField;
    FD_RawSumADjustedPieces: TIntegerField;
    FD_RawSumADjustedAM3: TFloatField;
    FD_RawSumADjustedNM3: TFloatField;
    FD_RawSumADjustedAM1: TFloatField;
    FD_SortOrderRawSumAdjustedPieces: TIntegerField;
    FD_SortOrderRawSumAdjustedAM3: TFloatField;
    FD_SortOrderRawSumAdjustedNM3: TFloatField;
    FD_SortOrderRawSumAdjustedAM1: TFloatField;
    procedure dsp_SorOrdRowGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_SortOrderGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_CPBeforePost(DataSet: TDataSet);
    procedure cds_SortOrdLenPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dsp_SORawGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure ppDBText4GetText(Sender: TObject; var Text: String);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure mtPropsProducerNoChange(Sender: TField);
    procedure ds_SorOrdRowDataChange(Sender: TObject; Field: TField);
    procedure ds_SortOrderDataChange(Sender: TObject; Field: TField);

    procedure DataModuleCreate(Sender: TObject);
    procedure dsp_LegoPrisGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_SortOrderAfterInsert(DataSet: TDataSet);
    procedure cds_SortOrderAfterScroll(DataSet: TDataSet);
    procedure cds_SortOrderBeforePost(DataSet: TDataSet);
    procedure cds_SortOrderRawPIPNoChange(Sender: TField);
    procedure cds_SortOrderResponsibleUserChange(Sender: TField);
    procedure cds_SortOrderOwnerNoChange(Sender: TField);
    procedure cds_SortOrderProducerNoChange(Sender: TField);
    procedure cds_SortOrderPIPNoChange(Sender: TField);
    procedure cds_SorOrdRowAfterInsert(DataSet: TDataSet);
    procedure cds_SorOrdRowBeforePost(DataSet: TDataSet);
    procedure cds_SORawAfterInsert(DataSet: TDataSet);
    procedure cds_SORawBeforePost(DataSet: TDataSet);
    procedure cds_ProdInstructAfterInsert(DataSet: TDataSet);
    procedure cds_SOLayoutAfterInsert(DataSet: TDataSet);
    procedure cds_FeedBackAfterInsert(DataSet: TDataSet);
    procedure cds_LegoPrisAfterInsert(DataSet: TDataSet);
    procedure cds_LegoPrisBeforePost(DataSet: TDataSet);
    procedure cds_UrlLayoutAfterInsert(DataSet: TDataSet);
    procedure cds_AOMallAfterPost(DataSet: TDataSet);
    procedure cds_SOVerkParamsPIPNoChange(Sender: TField);
    procedure cds_SOCngProdAfterInsert(DataSet: TDataSet);
    procedure cds_SOLegoCostAfterInsert(DataSet: TDataSet);
    procedure FD_SortOrderRawSumCalcFields(DataSet: TDataSet);
    procedure FD_SortOrderFinSumCalcFields(DataSet: TDataSet);
    procedure FD_ProdTimeSegAfterInsert(DataSet: TDataSet);
    procedure cds_ProdInstructPackageWidthChange(Sender: TField);
    procedure cds_ProdInstructPackageHeightChange(Sender: TField);
    procedure cds_SorOrdRowPPPChange(Sender: TField);
    procedure cds_SortOrderProdTimeHourChange(Sender: TField);
    procedure cds_SorOrdRowLengthSpecChange(Sender: TField);
    procedure cds_SORawLengthSpecChange(Sender: TField);
    procedure cds_AOMallAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cds_SorOrdRowAfterPost(DataSet: TDataSet);
    procedure cds_VolResDtlAfterInsert(DataSet: TDataSet);
    procedure cds_SortOrderRealStartTimeChange(Sender: TField);
    procedure mCopyLengthsLengthSpecChange(Sender: TField);
    procedure cds_SchedulerAfterInsert(DataSet: TDataSet);
    procedure cds_SchedulerBeforePost(DataSet: TDataSet);
    procedure cds_SchedulerTaskStatusFieldChange(Sender: TField);
    procedure cds_SchedulerYearWeekChange(Sender: TField);
    procedure cds_SORawCalcFields(DataSet: TDataSet);
    procedure cds_SORawUtfall2Change(Sender: TField);
    procedure cds_SORawPlannedOutputNM3Change(Sender: TField);
    procedure cds_SORawOrderNoChange(Sender: TField);
    procedure cds_SortOrderVP_ProductCodePrefixChange(Sender: TField);
    procedure cds_SOoutputAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }


    procedure CalcRunTime_For_cds_Scheduler ;
    function  GetPlanAM1 : Double ;
    procedure SetWidthAndHeightToZero(const ProdInstructNo : Integer) ;
    function  GetSUMOfVariousWidths  : Double ;
    procedure SetTargetProduct(const SortingOrderNo : Integer) ;
    Function  CheckIfAnyPkgRegInOtherRunsBetweenDates(
    const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer) : Boolean ;
    Function  IsPkgFromOtherRunRegisteredBetweenDates(NextDate, PrevDate : TSQLTimeStamp;
    const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer;Var NewStartDate : TSQLTimeStamp;Var PrevSortingOrderNo : Integer) : Boolean ;
    Function  GetLPMHyvlat(const SortingOrderNo : Integer) : Double ;
    function  GetNoOfLamellerOnOutPut(const SortingOrderNo : Integer;const ATMM, ABMM : Double) : Integer ;
    procedure CalcLPMGenomHyvel (const SortingOrderNo : Integer) ;
    function  GetOutPutCost(const SortingOrderNo, ProductNo : Integer) : Double ;
//    procedure SummarizeToSortOrder ;
    procedure genValue(const SortingOrderNo : Integer) ;
    procedure GenSOoutput(const SortingOrderNo : Integer) ;
    function  CalcNoOfKapSnitt(const SortingOrderNo : Integer;const RawALMM : Double) : Integer ;
//    procedure CalcAdjustmentValuesDueToUrlagg (const SortingOrderNo : Integer) ;
    function  CalcNoOfLameller(const SortingOrderNo : Integer;const RawATMM, RawABMM : Double) : Integer ;
    function  GetRealStartTime : TDateTime ;
    function  GetAntalLamellerOfRawMtrl : Integer ;
    function  NotPlanedAM3 : Double ;
    function  NotPlanedLPM : Double ;
    function  GetProductionCost(const ProductionUnitNo : Integer) : Double ;
    function  GetLegoCost(const ProductionUnitNo : Integer) : Double ;
    function  GetSalaryPerHour(const ProductionUnitNo : Integer) : Double ;
    function  GetProductionTypeOfUnit(const ProductionUnitNo : Integer) : Integer ;

    function  GetRawMtrlCost : Double ;
    procedure CalcVerkningsGrad ;
    Function  GetBiProductPrice(const Item : String) : Double ;
    function  GetUrlaggLIPNo : Integer ;
    procedure ResfreshFindUrlagg ;
    procedure ResfreshFindRawMtrl ;

  public
    { Public declarations }
    VisaMeddelande  : Boolean ;
    ManualUserID    : Integer ;
    ActivePage      : Integer ;
    SupplierCode    : String3 ;

    Function  GetAT (const ProductNo : Integer) : Double ;
    Function  GetAB (const ProductNo : Integer) : Double ;
    procedure GetKassationStycketal ;
    procedure Init_cds_uapCity ;
    procedure UppdateraKontraktsPris ;
    procedure UpdateVP_ProductCodePrefix ;
    procedure Add_RawMtrlBookedLink ;
    Procedure AddBookingToRun(const ID, Add_ID : Integer) ;
    Procedure Raw(const SortingOrderNo, BookingNo : Integer) ;
    procedure CopyLOToAO_II(const ID, sspNo : Integer) ;
    Procedure CopyAORow(const SortingOrderNo, SortingOrderRowNo, ProductLengthNo : Integer) ;
    procedure Populate_cds_StoppSum (StartPeriod, EndPeriod : TSQLTimeStamp; const Orsak, TimeUnit, NoOfTop, VisaKortStopp : Integer ) ;
    function  ThereIsProductsWithPlanedSurface : Boolean ;
    procedure CopyToCopyTo ;
    procedure CalcPreCalc ;
    procedure DeleteSortOrder(const SortingOrderNo : Integer;const DeleteBooking : Boolean) ;
    procedure RefreshNewAndUsedPkgs ;
    procedure OpenWorkOrder (const SortingOrderNo, ProductionUnitNo : Integer) ;
    Procedure GenerateValues (const SortingOrderNo : Integer) ;
    procedure CalcUrlaggPieces(const SortingOrderNo : Integer) ;
    procedure GenFinSum(const SortingOrderNo : Integer) ;
    procedure SummarizeToSortOrder(const SortingOrderNo : Integer) ;
    procedure CalcLamellerAndKapSnitt (const SortingOrderNo : Integer) ;
    procedure PrepareForPostCalc (const SortingOrderNo : Integer) ;
    procedure SummarizeRawMtrlPackages_I(const SortingOrderNo : Integer) ;
    procedure SummarizeRawMtrlPackages_II(const SortingOrderNo : Integer) ;
    procedure SummarizeRawMtrlPackages_III(const SortingOrderNo : Integer) ;
    Procedure GetStoppTimeTotalStoppTid ;
    procedure MoveUsedPkgs(const MoveToSortingOrderNo : Integer) ;
    function  CalculateSawDustVolume : Double ;
    procedure CalcStartSlutochProdTidWithMoreTimeSegments ;
    procedure CalcStartSlutochProdTid ;
    function  GetPrice(const SortingOrderNo, SortingOrderRowNo : Integer) : Double ;
    Procedure ChangeMarkedRows(const Value : Variant;const FieldName : String) ;
    function  Ordered_NM3_Volume : Double ;
    Function  GetStandardAOReportName : String ;
    procedure Load_SOShift ;
    procedure DelMall(const SortingOrderNo : Integer) ;
    function  CopyAOtoTemplate(const TemplateName : String;const SortingOrderNo, Template : Integer) : Integer ;
    procedure OpenAOMall ;
    procedure CloseAOMall ;
    Function  GetEndTime(const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer) : TSQLTimeStamp ;
    Function  GetStartTime(const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer;Var PrevSortingOrderNo : Integer) : TSQLTimeStamp ;
    procedure MakeControllOfSortingOrderRows(InfoList : TStrings) ;
    procedure GetStandardPkgLayouts ;
    function  GetProdUnitNo(const ClientNo, RegPointNo : Integer) : Integer ;
    procedure INS_SplitPkg(const SortingOrderNo, PackageNo, PackageTypeNo, NewPackageNo : Integer;const SupplierCode, NewSupplierCode : String) ;
    function  NewLoad(const LONo : Integer) : Integer ;
   // procedure SetLagerIAO(const ProducerNo, LoadingLocationNo : Integer) ;
    function  GetProductNo (const ATMM, AWMM : Double;const GradeNo, IMPNo, SpeciesNo, SurfacingNo : Integer) : Integer ;
    Function  GetSONoByLOSortingOrderNo(const LORowNo : Integer) : Integer ;
    procedure Refresh_CdsBooking ;
    procedure CopyLOToAO(const SSPNo, SortingOrderNo : Integer;const IsLegoOnLL : Integer;const AddLOLength : Boolean) ;
    procedure CalculateSortingOrderResult ;
//    procedure InsertSorOrder (const ClientNo : Integer) ;


    procedure LoadAOTabIndex (const Form : String;Var MainTabIndex, SubTabIndex : Integer) ;
    procedure SaveAOUserProps (const Form : String) ;
    procedure LoadAOUserProps (const Form : String) ;
  end;

var
  dmsSortOrder: TdmsSortOrder;

implementation

uses dmsDataConn, VidaUser , dmsVidaSystem , dmsVidaContact,
  dmsPkgWorkOrder, VidaConst , dmsVidaProduct,
  dmsProdPlan, WorkMinutesU , dm_SortOrderList , dms_Vis_Vida, udmLanguage;

{$R *.dfm}

function TdmsSortOrder.GetRawMtrlCost : Double ;
Begin
 With dm_PkgWorkOrder do
 Begin
  Try
  Result:= 0 ;
  sq_PkgCosts.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  sq_PkgCosts.Open ;
  sq_PkgCosts.First ;
  While not sq_PkgCosts.Eof do
  Begin
   Result:= Result + sq_PkgCostsKOSTNAD.AsFloat ;
   sq_PkgCosts.Next ;
  End ;
  Finally
   sq_PkgCosts.Close ;
  End ;
 End ;//With
End ;

function TdmsSortOrder.GetOutPutCost(const SortingOrderNo, ProductNo : Integer) : Double ;
Begin
  Result:= 0 ;
  Try
  FD_GetCost.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_GetCost.ParamByName('ProductNo').AsInteger       := ProductNo ; //
  FD_GetCost.Open ;
  if not FD_GetCost.Eof then
   Result := FD_GetCostProductValue.AsFloat
    else
     Result := 0 ;

  Finally
   FD_GetCost.Close ;
  End ;
End ;

function TdmsSortOrder.GetSalaryPerHour(const ProductionUnitNo : Integer) : Double ;
Begin
 if not cds_ProductionUnit.Active then
  cds_ProductionUnit.Active  := True ;
 if cds_ProductionUnit.Locate('ProductionUnitNo',ProductionUnitNo, []) then
  Result:= cds_ProductionUnitLonPerTimme.AsFloat
   else
    Result:= 0 ;
End ;

function TdmsSortOrder.GetProductionTypeOfUnit(const ProductionUnitNo : Integer) : Integer ;
Begin
 if not cds_ProductionUnit.Active then
  cds_ProductionUnit.Active  := True ;
 if cds_ProductionUnit.Locate('ProductionUnitNo',ProductionUnitNo, []) then
  Result:= cds_ProductionUnitTypeOfUnit.AsInteger
   else
    Result:= -1 ;
End ;

function TdmsSortOrder.GetProductionCost(const ProductionUnitNo : Integer) : Double ;
Begin
 if not cds_ProductionUnit.Active then
  cds_ProductionUnit.Active  := True ;
 if cds_ProductionUnit.Locate('ProductionUnitNo',ProductionUnitNo, []) then
  Result:= cds_ProductionUnitCost.AsFloat
   else
    Result:= 0 ;
End ;

function TdmsSortOrder.GetLegoCost(const ProductionUnitNo : Integer) : Double ;
Begin
 if not cds_ProductionUnit.Active then
  cds_ProductionUnit.Active  := True ;
 if cds_ProductionUnit.Locate('ProductionUnitNo',ProductionUnitNo, []) then
  Result:= cds_ProductionUnitLegoCostPerAM3.AsFloat
   else
    Result:= 0 ;
End ;

procedure TdmsSortOrder.Load_SOShift ;
Begin
 Try
 sq_InsShift.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
 sq_InsShift.ParamByName('ClientNo').AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 sq_InsShift.ParamByName('RegPointNo').AsInteger      := cds_SchedulerResourceID.AsInteger ;
 sq_InsShift.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('sq_InsShift ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
 cds_SOShift.Active := False ;
 cds_SOShift.Active := True ;
End ;

procedure TdmsSortOrder.dsp_SorOrdRowGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SortingOrderRow' ;
end;

procedure TdmsSortOrder.dsp_SortOrderGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SortingOrder' ;
end;

procedure TdmsSortOrder.cds_CPBeforePost(DataSet: TDataSet);
begin
// cds_CPCPName.AsString:= CreateCPName ;
end;

procedure TdmsSortOrder.cds_SortOrdLenPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('Längd dublett.  '+e.Message) ;
  DataSet.Delete ;
 Action:= daAbort ;
end;

//Räkna ut kassation för hyvel på annat sätt än för justerverk.
//Kan inte använda stycketal för kassation på hyveln.
//Om man inte anger bit ut på varje råmaterial rad.



procedure TdmsSortOrder.dsp_SORawGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SortingOrderRawMtrl' ;
end;

procedure TdmsSortOrder.ppDBText4GetText(Sender: TObject;
  var Text: String);
begin
 if Text = '0' then
  Text:= '' ;
end;

procedure TdmsSortOrder.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
 if Text = '0' then
  Text:= '' ;
end;


function TdmsSortOrder.NotPlanedLPM : Double ;
Begin
 Result := 0 ;
 cds_SorOrdRow.First ;
 While not cds_SorOrdRow.Eof do
 Begin
  Result  := Result + cds_SorOrdRowAM1.AsFloat ;
  cds_SorOrdRow.Next ;
 End ; //While
End ;

procedure TdmsSortOrder.CalcVerkningsGrad ;
Var Total_LPM_ConsumedFromAO, TeoritisktAM1 : Double ;
Begin
// Total_LPM_ConsumedFromAO  := dm_PkgWorkOrder.GetTotal_LPM_ConsumedFromAO  - (NotPlanedLPM) ;


 if cds_SortOrder.State = dsBrowse then
  cds_SortOrder.Edit ;
 TeoritisktAM1:= (cds_SortOrderRealProductionTime.AsInteger)
  * cds_SortOrderFeedSpeed.AsFloat ;

 if TeoritisktAM1 > 0 then
  cds_SortOrderEfficiencyFactor.AsFloat:= (cds_SortOrderProductionAM1.AsFloat / TeoritisktAM1) * 100 ;


 TeoritisktAM1:= (cds_SortOrderRealProductionTime.AsInteger - cds_SortOrderStopTime.AsInteger)
  * cds_SortOrderFeedSpeed.AsFloat ;
 if TeoritisktAM1 > 0 then
  cds_SortOrderEfficiencyFactorWOStopptime.AsFloat:= (cds_SortOrderProductionAM1.AsFloat / TeoritisktAM1) * 100 ;
//  Total_LPM_ConsumedFromAO / TeoritisktAM1) * 100 ;


 if cds_SortOrderRealProductionTime.AsInteger > 0 then
 cds_SortOrderRealLpmMinute.AsFloat := //Total_LPM_ConsumedFromAO /
 cds_SortOrderProductionAM1.AsFloat /
 cds_SortOrderRealProductionTime.AsInteger ;

 if cds_SortOrder.State in [dsEdit, dsInsert] then
 cds_SortOrder.Post ;
{ cds_SortOrderTotalAM1.AsFloat
 VerkligAM1 :=
 cds_SortOrderFeedSpeed.AsFloat
 cds_SortOrderPlannedProductionTime.AsInteger
 cds_SortOrderRealProductionTime.AsInteger
 cds_SortOrderStopTimeNotIncl.AsInteger
 cds_SortOrderEfficiencyFactor.AsFloat:= }
End ;

procedure TdmsSortOrder.CalculateSortingOrderResult ;
Var NM3Raw : Double ;
Begin
 With dm_PkgWorkOrder do
 Begin
  if cds_SortOrder.State in [dsBrowse] then
   cds_SortOrder.Edit ;
  //Hämta in pris per paket
//  dm_PkgWorkOrder.SetPriceOnEachPackage ;
 //Hämta in produktvärdet av varor
  cds_SortOrderProductionValue.AsFloat := dm_PkgWorkOrder.GetVaruVardeFromAO ;

//Hämta lönekostnad
  if cds_SortOrderLego.AsInteger <> 1 then
  Begin
   cds_SortOrderSalaryCostPerHour.AsFloat := GetSalaryPerHour (cds_SchedulerResourceID.AsInteger) ;
   cds_SortOrderTotalSalaryCost.AsFloat:= -1 * (cds_SortOrderSalaryCostPerHour.AsFloat
   * ((cds_SortOrderRealProductionTime.AsFloat / 60) * cds_SortOrderNoOfWorkers.AsFloat))
  End
   else
   Begin
    cds_SortOrderTotalSalaryCost.AsFloat    := 0 ;
    cds_SortOrderSalaryCostPerHour.AsFloat  := 0 ;
   End ;


//Hämta produktionskostnad
  if cds_SortOrderLego.AsInteger <> 1 then
  cds_SortOrderProductionCost.AsFloat:= (-1 * GetProductionCost (cds_SchedulerResourceID.AsInteger)
  * (cds_SortOrderRealProductionTime.AsFloat / 60))
  else
  Begin
   cds_SortOrderProductionCost.AsFloat  := (-1 * cds_SortOrderProductionAM3.AsFloat * GetLegoCost(cds_SchedulerResourceID.AsInteger)) ;
   cds_SortOrderLegoCostPerAM3.AsFloat  := GetLegoCost(cds_SchedulerResourceID.AsInteger) ;
  End ;

//Hämta kostnad för råmtrl
  cds_SortOrderRawMtrlCost.AsFloat  := GetRawMtrlCost;

//  cds_SortOrderChipsM3Solid.AsFloat:= 0 ;
//  cds_SortOrderChipsValue.AsFloat := 0 ;

//  cds_SortOrderSawdustM3Solid.AsFloat := cds_SortOrderSawdustM3Solid.AsFloat * 50 ;
  if cds_SortOrderLego.AsInteger <> 1 then
  Begin
   cds_SortOrderSawdustValue.AsFloat   := GetSOOutPut_Value(cds_SortOrderSortingOrderNo.AsInteger, -2) ;
//   cds_SortOrderSawdustM3Solid.AsFloat  * GetBiProductPrice('SawdustPriceFM3') ;
//   cds_SortOrderAvkapValue.AsFloat     := cds_SortOrderAvkapAM3.AsFloat        * GetBiProductPrice('AvkapPriceFM3') ;
   cds_SortOrderKassationValue.AsFloat := 0 ;//Kassation ska inte ha ett värde!!!!! GetSOOutPut_Value(cds_SortOrderSortingOrderNo.AsInteger, -1) ;
   //cds_SortOrderKassationAM3.AsFloat    * GetBiProductPrice('AvkapPriceFM3') ;
  End
  else
  Begin
   cds_SortOrderSawdustValue.AsFloat   := 0 ;
   cds_SortOrderAvkapValue.AsFloat     := 0 ;
   cds_SortOrderKassationValue.AsFloat := 0 ;
  End ;

  cds_SortOrderKassationValue.AsFloat := 0 ;

//Räkna ut kostnad per utgående AM3
  if cds_SortOrderProductionAM3.AsFloat > 0 then
  cds_SortOrderCostPerAM3.AsFloat:=
   (cds_SortOrderProductionCost.AsFloat + cds_SortOrderRawMtrlCost.AsFloat + cds_SortOrderChipsValue.AsFloat)
   / cds_SortOrderProductionAM3.AsFloat
   else
   cds_SortOrderCostPerAM3.AsFloat:= 0 ;

//Räkna ut kostnad per utgående NM3
  if cds_SortOrderProductionNM3.AsFloat > 0 then
  cds_SortOrderCostPerNM3.AsFloat:=
   (cds_SortOrderProductionCost.AsFloat + cds_SortOrderRawMtrlCost.AsFloat + cds_SortOrderChipsValue.AsFloat)
   / cds_SortOrderProductionNM3.AsFloat
   else
   cds_SortOrderCostPerNM3.AsFloat:= 0 ;

//Räkna ut AM1 kostnad per utgående AM3
  if cds_SortOrderProductionAM1.AsFloat > 0 then
  cds_SortOrderCostPerAM1.AsFloat:=
   (cds_SortOrderProductionCost.AsFloat + cds_SortOrderRawMtrlCost.AsFloat + cds_SortOrderChipsValue.AsFloat)
   / cds_SortOrderProductionAM1.AsFloat
   else
   cds_SortOrderCostPerAM1.AsFloat:= 0 ;

  cds_SortOrderTotalValue.AsFloat:=
   cds_SortOrderSawdustValue.AsFloat + //cds_SortOrderAvkapValue.AsFloat
   + cds_SortOrderKassationValue.AsFloat + cds_SortOrderProductionValue.AsFloat ;
//Räkna ut total produktionskostnad (ej råvara)
  cds_SortOrderTotalCost.AsFloat:= cds_SortOrderProductionCost.AsFloat + cds_SortOrderTotalSalaryCost.AsFloat ;
//Räkna ut resultat av körningen
  cds_SortOrderResultAO.AsFloat:= cds_SortOrderTotalValue.AsFloat + (cds_SortOrderTotalCost.AsFloat + cds_SortOrderRawMtrlCost.AsFloat) ;
//Räkna ut medelpriser
  if cds_SortOrderRawMtrlAM3.AsFloat > 0 then
  cds_SortOrderAvgRawMtrlPriceAM3.AsFloat:= cds_SortOrderRawMtrlCost.AsFloat / cds_SortOrderRawMtrlAM3.AsFloat ;

  if cds_SortOrderRawMtrlNM3.AsFloat > 0 then
  cds_SortOrderAvgRawMtrlPriceNM3.AsFloat:= cds_SortOrderRawMtrlCost.AsFloat / cds_SortOrderRawMtrlNM3.AsFloat ;

  if cds_SortOrderProductionAM3.AsFloat > 0 then
  cds_SortOrderAvgProductPriceAM3.AsFloat:= cds_SortOrderProductionValue.AsFloat / cds_SortOrderProductionAM3.AsFloat ;

  if cds_SortOrderProductionNM3.AsFloat > 0 then
  cds_SortOrderAvgProductPriceNM3.AsFloat:= cds_SortOrderProductionValue.AsFloat / cds_SortOrderProductionNM3.AsFloat ;

  if cds_SortOrderProductionAM1.AsFloat > 0 then
  cds_SortOrderAvgProductPriceAM1.AsFloat:= cds_SortOrderProductionValue.AsFloat / cds_SortOrderProductionAM1.AsFloat ;

  if cds_SortOrderRawMtrlAM1.AsFloat > 0 then
  cds_SortOrderAvgRawMtrlPriceAM1.AsFloat:= cds_SortOrderRawMtrlCost.AsFloat / cds_SortOrderRawMtrlAM1.AsFloat ;

  NM3Raw  := GetRAWSUM_NM3(cds_SortOrderSortingOrderNo.AsInteger) ;
  if NM3Raw > 0 then
  cds_SortOrderChipsM3Solid.AsFloat := (cds_SortOrderTotalCost.AsFloat + cds_SortOrderRawMtrlCost.AsFloat) / NM3Raw
  else
  cds_SortOrderChipsM3Solid.AsFloat := 0 ;

 End ;
End ;

(*
procedure TdmsSortOrder.LoadUserProps (const Form : String) ;
Var x : Integer ;
Begin
 cds_RegPoint.Active  := False ;
 cds_RegPoint.Active  := True ;

 cds_producer.Active  := False ;
 cds_producer.Active  := True ;

 cds_RegPoint.Active  := False ;
 cds_RegPoint.Active  := True ;

 mtProps.Active:= True ;
 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  mtProps.Insert ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  For x := 0 to 14 do
   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  mtProps.Post ;

//  mtPropsOwnerNo.OnChange     := nil ;
//  mtPropsPIPNo.OnChange       := nil ;
  mtPropsProducerNo.OnChange  := nil ;
  Try
  mtProps.Edit ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  For x := 0 to 14 do
   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  mtPropsRegDate.AsDateTime := Now ;
  mtPropsRunNo.AsInteger    := -1 ;
  mtPropsTimeUnit.AsInteger := cds_PropsLOObjectType.AsInteger  ;
  mtPropsNoOfTop.AsInteger  := cds_PropsBarCodeNo.AsInteger ;
  mtPropsVisaKortStopp.AsInteger  := cds_PropsGradeStampNo.AsInteger ;

  mtProps.Post ;
  Finally
   mtPropsProducerNo.OnChange   := mtPropsProducerNoChange ;
//   mtPropsPIPNo.OnChange        := mtPropsPIPNoChange ;
//   mtPropsOwnerNo.OnChange      := mtPropsOwnerNoChange ;
  End ;
 End
 else
 Begin
  mtProps.Insert ;
  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  mtPropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;

  if mtPropsRoleType.AsInteger = cLego then
  Begin
   mtPropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
   mtPropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  mtPropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ;

  mtPropsInputOption.AsInteger  :=  0 ;
  mtPropsRegDate.AsDateTime     :=  Now ;
  mtPropsCopyPcs.AsInteger      :=  1 ;
  mtPropsRunNo.AsInteger        :=  -1 ;
  mtPropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  mtPropsAutoColWidth.AsInteger :=  1 ;
  mtPropsSupplierCode.AsString  := dmsContact.GetClientCode(mtPropsProducerNo.AsInteger) ;
  mtPropsLengthGroupNo.AsInteger:= 1 ;
  mtPropsTimeUnit.AsInteger     := 0 ;
  mtPropsNoOfTop.AsInteger      := 5 ;
  mtPropsVisaKortStopp.AsInteger:= 1 ;

  mtProps.Post ;
 End ;
 cds_Props.Active:= False ;
End ;

procedure TdmsSortOrder.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
 if mtProps.State in [dsEdit, dsInsert] then
 mtProps.Post ;
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

  cds_PropsOwnerNo.AsInteger      := mtPropsOwnerNo.AsInteger ;
  cds_PropsProducerNo.AsInteger   := mtPropsProducerNo.AsInteger ;
  cds_PropsRegPointNo.AsInteger   := mtPropsRegPointNo.AsInteger ;
//  For x := 0 to 14 do
//   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 cds_Props.Active:= False ;
End ;

*)



//This is for unit UPkgWorkOrder only
procedure TdmsSortOrder.SaveAOUserProps (const Form : String) ;
Begin
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

  cds_PropsPIPNo.AsInteger          := cds_SortOrderPIPNo.AsInteger ;
  cds_PropsLIPNo.AsInteger          := cds_SortOrderLIPNo.AsInteger ;
  cds_PropsOwnerNo.AsInteger        := cds_SchedulerOwnerNo.AsInteger ;
  cds_PropsProducerNo.AsInteger     := cds_SchedulerVerkNo.AsInteger ;
  cds_PropsRegPointNo.AsInteger     := cds_SchedulerResourceID.AsInteger ;
  cds_PropsInputOption.AsInteger    := cds_SortOrderTypeOfRunNo.AsInteger ;
  cds_PropsCopyPcs.AsInteger        := cds_SortOrderNoOfWorkers.AsInteger ;
  cds_PropsRunNo.AsInteger          := cds_SortOrderAntalBitarUt.AsInteger ;
  cds_PropsLengthOption.AsInteger   := cds_SortOrderAntalKapSnitt.AsInteger ;
  cds_PropsLengthGroupNo.AsInteger  := cds_SortOrderRawPIPNo.AsInteger ;
  cds_PropsNewItemRow.AsInteger     := cds_SortOrderRawLIPNo.AsInteger ;

  cds_PropsLOObjectType.AsInteger   := mtPropsTimeUnit.AsInteger ;
  cds_PropsBarCodeNo.AsInteger      := mtPropsNoOfTop.AsInteger ;

//  cds_PropsBarCodeNo.AsInteger      := MainTabIndex ;
//  cds_PropsGradeStampNo.AsInteger   := SubTabIndex ;
  cds_PropsAgentNo.AsInteger        := cds_SortOrderPrintRawMtrlPart.AsInteger ;

{  For x := 0 to 14 do
   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ; }
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 cds_Props.Active:= False ;
End ;

//This is for unit UPkgWorkOrder only
procedure TdmsSortOrder.LoadAOUserProps (const Form : String) ;
Begin
 Try
  if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;
  cds_SchedulerOwnerNo.AsInteger          := dmSotOrderList.cds_PropsOwnerNo.AsInteger ;//cds_PropsOwnerNo.AsInteger ;
  cds_SchedulerVerkNo.AsInteger           := dmSotOrderList.cds_PropsProducerNo.AsInteger ;//cds_PropsProducerNo.AsInteger ;
  cds_SchedulerResourceID.AsInteger       := dmSotOrderList.cds_PropsRegPointNo.AsInteger ;// cds_PropsRegPointNo.AsInteger ;

  cds_SortOrderPIPNo.AsInteger            := dmSotOrderList.cds_PropsPIPNo.AsInteger ;
  cds_SortOrderLIPNo.AsInteger            := dmSotOrderList.cds_PropsLIPNo.AsInteger ;

  cds_SchedulerLocationNo.AsInteger       := dmSotOrderList.cds_PropsLoadingLocationNo.AsInteger ;

  cds_SortOrderTypeOfRunNo.AsInteger      := dmSotOrderList.cds_PropsInputOption.AsInteger ;

 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  cds_SortOrderNoOfWorkers.AsInteger      := cds_PropsCopyPcs.AsInteger ;
  cds_SortOrderAntalBitarUt.AsInteger     := cds_PropsRunNo.AsInteger ;
  cds_SortOrderAntalKapSnitt.AsInteger    := cds_PropsLengthOption.AsInteger ;
  cds_SortOrderRawPIPNo.AsInteger         := cds_PropsLengthGroupNo.AsInteger ;
  cds_SortOrderRawLIPNo.AsInteger         := cds_PropsNewItemRow.AsInteger ;
  cds_SortOrderPrintRawMtrlPart.AsInteger := cds_PropsAgentNo.AsInteger ;
 End ;

 Finally
  cds_Props.Active:= False ;
 End ;
End ;

procedure TdmsSortOrder.LoadAOTabIndex (const Form : String;Var MainTabIndex, SubTabIndex : Integer) ;
Begin
 MainTabIndex  := -1 ;
 SubTabIndex   := -1 ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  MainTabIndex  := cds_PropsBarCodeNo.AsInteger ;
  SubTabIndex   := cds_PropsGradeStampNo.AsInteger ;
 End ;
 cds_Props.Active:= False ;
End ;

procedure TdmsSortOrder.mtPropsProducerNoChange(Sender: TField);
begin
 mtPropsSupplierCode.AsString:= dmsContact.GetClientCode(mtPropsProducerNo.AsInteger) ;

 cds_RegPoint.Active:= False ;
 cds_RegPoint.ParamByName('ClientNo').AsInteger := mtPropsProducerNo.AsInteger ;
 cds_RegPoint.Active:= True ;

 cds_RegPoint.Insert ;
 cds_RegPointProductionUnitName.AsString    := 'ALLA' ;
 cds_RegPointRegistrationPointNo.AsInteger  := -1 ;
 cds_RegPoint.Post ;
 cds_RegPoint.First ;
 mtPropsRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
end;

procedure TdmsSortOrder.CopyLOToAO(const SSPNo, SortingOrderNo : Integer;const IsLegoOnLL : Integer;const AddLOLength : Boolean) ;
Begin
 Try
 sp_CopyLOToAO.ParamByName('@SSPNo').AsInteger            := SSPNo ;
 sp_CopyLOToAO.ParamByName('@SortingOrderNo').AsInteger   := SortingOrderNo ;

 if AddLOLength then
 sp_CopyLOToAO.ParamByName('@SSPNoLOL').AsInteger         := SSPNo
 else
 sp_CopyLOToAO.ParamByName('@SSPNoLOL').AsInteger         := -1 ;

 if IsLegoOnLL > 0 then
 sp_CopyLOToAO.ParamByName('@IsLegoOnLL').AsInteger       := 1
 else
 sp_CopyLOToAO.ParamByName('@IsLegoOnLL').AsInteger       := 0 ;
 sp_CopyLOToAO.ExecProc ;
 Except
  on E: eDatabaseError do
  Begin
   ShowMessage('sp_CopyLOToAO ' + E.Message) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.CopyLOToAO_II(const ID, sspNo : Integer) ;
Begin
 if sspNo > 0 then
 Begin
{  sp_CopyLOToAO_II.ParamByName('@ID').AsInteger            := ID ;
  Try
  sp_CopyLOToAO_II.ExecProc ;
     except
      on E: eDatabaseError do
      Begin
       dmsSystem.FDoLog(E.Message + ' CopyLOToAO_II ') ;

       ShowMessage('CopyLOToAO_II ' + E.Message) ;
       Raise ;
      End ;
     end;
     }
 // if (not dmsConnector.FDConn_VIS_VIDA.InTransaction) then
 // Begin
  dmsConnector.StartTransaction;
  Try
  sp_CopyLOToAO_II.ParamByName('@ID').AsInteger            := ID ;
  sp_CopyLOToAO_II.ExecProc ;
  dmsConnector.Commit ;

     except
      on E: eDatabaseError do
      Begin
       dmsSystem.FDoLog(E.Message + ' CopyLOToAO_II ') ;
       dmsConnector.Rollback ;

       ShowMessage('sp_PeriodBooking ' + E.Message) ;
       Raise ;
      End ;
     end;
 // End ;

{  Except
   on E: eDatabaseError do
   Begin
    dmsSystem.FDoLog(E.Message + ' :sp_CopyLOToAO_II') ;
    ShowMessage('sp_CopyLOToAO_II ' + E.Message) ;
    Raise ;
   End ;
  End ; }

 End
 else
 Begin
  Try
  sp_CopyLOToAO_II_Manual.ParamByName('@ID').AsInteger            := ID ;
  sp_CopyLOToAO_II_Manual.ExecProc ;
  Except
   on E: eDatabaseError do
   Begin
    dmsSystem.FDoLog(E.Message + ' :sp_CopyLOToAO_II') ;
    ShowMessage('sp_CopyLOToAO_II ' + E.Message) ;
    Raise ;
   End ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.ds_SorOrdRowDataChange(Sender: TObject;
  Field: TField);
Var Save_Cursor : TCursor;
begin
 Save_Cursor     := Screen.Cursor;
 Screen.Cursor   := crSQLWait;    { Show hourglass cursor }
 Try
 ResfreshFindUrlagg ;
 ResfreshFindRawMtrl ;


 if cds_SorOrdRowProdInstructNo.IsNull = False then
 cds_ProdInstruct.Filter:= 'ProdInstruNo = ' + cds_SorOrdRowProdInstructNo.AsString
 else
  cds_ProdInstruct.Filter:= 'ProdInstruNo = -1' ;

 cds_ProdInstruct.Filtered  := True ;  


 if cds_SorOrdRowSortingOrderRowNo.IsNull = False then
 cds_SOLayout.Filter:= 'SortingOrderRowNo = ' + cds_SorOrdRowSortingOrderRowNo.AsString
 else
 cds_SOLayout.Filter:= 'SortingOrderRowNo = -1' ;
 if ActivePage = 5 then
 Begin
  Refresh_CdsBooking ;
 End ;
 Finally
  Screen.Cursor             := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmsSortOrder.Refresh_CdsBooking ;
Begin
 cdsBooking.Active:= False ;
 cdsBooking.ParamByName('SSPNo').AsInteger  := cds_SorOrdRowCSDNo.AsInteger ;//CDSNo = SSPNo
 cdsBooking.Active:= True ;
End ;

procedure TdmsSortOrder.ds_SortOrderDataChange(Sender: TObject;
  Field: TField);
begin
// cds_ProdInstruct.Active:= False ;
// cds_ProdInstruct.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
// cds_ProdInstruct.Active:= True ;
end;

//Hämtar in AO nummer för en LO rad
Function TdmsSortOrder.GetSONoByLOSortingOrderNo(const LORowNo : Integer) : Integer ;
Begin
 sq_GetSONoByLO.ParamByName('CSDNo').AsInteger  := LORowNo ;
 sq_GetSONoByLO.Open ;
 Try
 if not sq_GetSONoByLO.Eof then
  Result:= sq_GetSONoByLOSortingOrderNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetSONoByLO.Close ;
 End ;
End ;

function TdmsSortOrder.GetProductNo (const ATMM, AWMM : Double;const GradeNo, IMPNo, SpeciesNo, SurfacingNo : Integer) : Integer ;
Begin
 sq_GetProductNo.ParamByName('ATMM').AsFloat           := ATMM ;
 sq_GetProductNo.ParamByName('AWMM').AsFloat           := AWMM ; 
 if cds_SOCngProdGradeNo.AsInteger > 0 then
  sq_GetProductNo.ParamByName('GradeNo').AsInteger           := cds_SOCngProdGradeNo.AsInteger
   else
    sq_GetProductNo.ParamByName('GradeNo').AsInteger           := GradeNo ;

 if cds_SOCngProdIMPNo.AsInteger > 0 then
  sq_GetProductNo.ParamByName('ProductCategoryNo').AsInteger := cds_SOCngProdIMPNo.AsInteger
   else
    sq_GetProductNo.ParamByName('ProductCategoryNo').AsInteger := IMPNo ;


 if cds_SOCngProdSpeciesNo.AsInteger > 0 then
  sq_GetProductNo.ParamByName('SpeciesNo').AsInteger         := cds_SOCngProdSpeciesNo.AsInteger
   else
    sq_GetProductNo.ParamByName('SpeciesNo').AsInteger := SpeciesNo ;

 if cds_SOCngProdSurfacingNo.AsInteger > 0 then
  sq_GetProductNo.ParamByName('SurfacingNo').AsInteger       := cds_SOCngProdSurfacingNo.AsInteger
   else
    sq_GetProductNo.ParamByName('SurfacingNo').AsInteger       := SurfacingNo ;

 sq_GetProductNo.Open ;
 Try
 if not sq_GetProductNo.Eof then
  Result:= sq_GetProductNoProductNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetProductNo.Close ;
 End ;
End ;

Function TdmsSortOrder.GetBiProductPrice(const Item : String) : Double ;
Begin
 sq_GetBiProductPrice.ParamByName('VerkNo').AsInteger := cds_SchedulerOwnerNo.AsInteger ;
 sq_GetBiProductPrice.Open ;
 if not sq_GetBiProductPrice.Eof then
  Result:= sq_GetBiProductPrice.FieldByName(Item).AsFloat
   else
    Result := 0 ;
 Try
 Finally
  sq_GetBiProductPrice.Close ;
 End ;
End ;

{
  procedure TdmsSortOrder.SetLagerIAO(const ProducerNo, LoadingLocationNo : Integer) ;
  Begin
   if cds_SortOrder.State in [dsBrowse] then
    cds_SortOrder.Edit ;
   cds_SortOrderPIPNo.AsInteger := dmsContact.GetPIPNoByLLandOwner(cds_SchedulerOwnerNo.AsInteger, LoadingLocationNo) ;
   if cds_SortOrderPIPNo.AsInteger > 0 then
   cds_SortOrderLIPNo.AsInteger := dmsContact.GetLIPNoByPIPNo(cds_SortOrderPIPNo.AsInteger) ;

  End ;
}

function TdmsSortOrder.NewLoad(const LONo : Integer) : Integer ;
Begin
 Try
 sp_NewLoad.ParamByName('@LONo').AsInteger   := LONo ;
 sp_NewLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
 sp_NewLoad.ExecProc ;
 Try
 Result:= sp_NewLoad.ParamByName('@LoadNo').AsInteger ;
 Finally
  sp_NewLoad.Close ;
 End ;
 Except
//  on eDatabaseError do
  On E: Exception do
  Begin
   ShowMessage('sp_NewLoad ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.INS_SplitPkg(const SortingOrderNo, PackageNo, PackageTypeNo, NewPackageNo : Integer;const SupplierCode, NewSupplierCode : String) ;
Begin
 Try
 sq_INS_SplitPkg.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 sq_INS_SplitPkg.ParamByName('OPkgNo').AsInteger          := PackageNo ;
 sq_INS_SplitPkg.ParamByName('PackageTypeNo').AsInteger   := PackageTypeNo ;
 sq_INS_SplitPkg.ParamByName('NewPkgNo').AsInteger        := NewPackageNo ;
 sq_INS_SplitPkg.ParamByName('OPrefix').AsString          := SupplierCode ;
 sq_INS_SplitPkg.ParamByName('NewPrefix').AsString        := NewSupplierCode ;
 sq_INS_SplitPkg.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('sq_INS_SplitPkg ' + E.Message) ;
   Raise ;
  End ;
 End ;
End ;

function TdmsSortOrder.GetProdUnitNo(const ClientNo, RegPointNo : Integer) : Integer ;
begin
 cds_ProductionUnit.Active:= False ;
 cds_ProductionUnit.ParamByName('ProducerNo').AsInteger:= cds_SchedulerVerkNo.AsInteger ;
 cds_ProductionUnit.Active:= True ;
 cds_ProductionUnit.Filter    := 'ProductionUnitNo = ' + inttostr(RegPointNo) ;
 Try
 cds_ProductionUnit.Filtered  := True ;
 if cds_ProductionUnit.RecordCount > 0 then
 Result:= cds_ProductionUnitProdUnitNo.AsInteger
 else
 Result:= -1 ;
 Finally
  cds_ProductionUnit.Filtered  := False ;
 End ;
end;

procedure TdmsSortOrder.DataModuleCreate(Sender: TObject);
begin
 
 VisaMeddelande := False ;
// dmsSystem.cds_Language.Active:= True ;
 mtLengthFormat.Active:= True ;
 mtLengthFormat.AppendRecord([1,'AKT.MM']);
// mtLengthFormat.AppendRecord([2,'NOM.MM']);
 mtLengthFormat.AppendRecord([3,'FEET']);
 mtLengthFormat.AppendRecord([4,'AKT.TUM']);
// mtLengthFormat.AppendRecord([5,'EGEN']);

 mtSizeFormat.Active:= True ;
 mtSizeFormat.AppendRecord([1,'AKT.MM']);
// mtSizeFormat.AppendRecord([2,'NOM.MM']);
 mtSizeFormat.AppendRecord([3,'TUM']);
// mtSizeFormat.AppendRecord([4,'EGEN']);

 mtVolumeFormat.Active:= True ;
 mtVolumeFormat.AppendRecord([1,'AM3']);
// mtVolumeFormat.AppendRecord([2,'NM3']);
 mtVolumeFormat.AppendRecord([3,'MFBM']);
 if not cds_Verk.Active then
 cds_Verk.Active  := True ;
end;

procedure TdmsSortOrder.dsp_LegoPrisGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'LegoPrisLista' ;
end;

procedure TdmsSortOrder.GetStandardPkgLayouts ;
Begin
  cds_UrlLayout.Active := False ;
  cds_UrlLayout.ParamByName('VerkNo').AsInteger := ThisUser.CompanyNo ;
  cds_UrlLayout.Active := True ;
  cds_UrlLayout.First ;
  While not cds_UrlLayout.eof do
  Begin
   if not cds_SOLayout.Locate('SortingOrderNo;SortingOrderRowNo;LayoutNo',
   VarArrayOf([cds_SorOrdRowSortingOrderNo.AsInteger, cds_SorOrdRowSortingOrderRowNo.AsInteger, cds_UrlLayoutLayoutNo.AsInteger]), []) then
   Begin
    cds_SOLayout.Insert ;
    cds_SOLayoutLayoutNo.AsInteger := cds_UrlLayoutLayoutNo.AsInteger ;
   End ;
   cds_UrlLayout.Next ;
  End ;
  cds_UrlLayout.Active := False ;
End ;

function TdmsSortOrder.GetUrlaggLIPNo : Integer ;
Begin
 Try
 cds_SOVerkParams.Active  := False ;
 cds_SOVerkParams.ParamByName('VerkNo').AsInteger  := cds_SchedulerVerkNo.AsInteger ;
 cds_SOVerkParams.Active  := True ;
 if not cds_SOVerkParams.Eof then
  Result:= cds_SOVerkParamsLIPNo.AsInteger
   else
    Result  := -1 ;
 Finally
  cds_SOVerkParams.Active  := False ;
 End ;
End ;

procedure TdmsSortOrder.MakeControllOfSortingOrderRows(InfoList : TStrings) ;
Begin
 Try

  if (cds_SortOrderPIPNo.IsNull) or (cds_SortOrderPIPNo.AsInteger < 1) then
   InfoList.Add('Lagerställe saknas!') ;

  if (cds_SortOrderLIPNo.IsNull) or (cds_SortOrderLIPNo.AsInteger < 1) then
   InfoList.Add('Lagergrupp saknas!') ;

  if (cds_SchedulerResourceID.IsNull) or (cds_SchedulerResourceID.AsInteger < 1) then
   InfoList.Add('Mätpunkt saknas!') ;

  if (cds_SchedulerLocationNo.IsNull) or (cds_SchedulerLocationNo.AsInteger < 1) then
   InfoList.Add('Ort saknas!') ; 

 cds_SorOrdRow.DisableControls ;
 cds_SorOrdRow.First ;
 if cds_SorOrdRowSortingOrderRowNo.IsNull = False then
 cds_SOLayout.Filter:= 'SortingOrderRowNo = ' + cds_SorOrdRowSortingOrderRowNo.AsString ;
 While not cds_SorOrdRow.eof do
 Begin
  if (cds_SorOrdRowProductLengthNo.IsNull) or (cds_SorOrdRowProductLengthNo.AsInteger < 1) then
   InfoList.Add('Radnr ' + cds_SorOrdRowSortingOrderRowNo.AsString + ' saknar Längd') ;

  if (cds_SOLayout.RecordCount = 0) and (cds_SchedulerResourceID.AsInteger <> 25) then
   InfoList.Add('Radnr ' + cds_SorOrdRowSortingOrderRowNo.AsString + ' saknar Layout') ;

  if ((cds_SorOrdRowPPP.AsInteger = 0) or (cds_SorOrdRowPPP.IsNull)) and (cds_SchedulerResourceID.AsInteger <> 25) then
   InfoList.Add('Radnr ' + cds_SorOrdRowSortingOrderRowNo.AsString + ' saknar Stycketal') ;

  if (cds_SorOrdRowPrice.AsFloat = 0) or (cds_SorOrdRowPrice.IsNull) then
   InfoList.Add('Radnr ' + cds_SorOrdRowSortingOrderRowNo.AsString + ' saknar Pris') ;

  cds_SorOrdRow.Next ;

  if cds_SorOrdRowSortingOrderRowNo.IsNull = False then
  cds_SOLayout.Filter:= 'SortingOrderRowNo = ' + cds_SorOrdRowSortingOrderRowNo.AsString ;
 End ;

 Finally
  cds_SorOrdRow.EnableControls ;
 End ;
End ;

Function TdmsSortOrder.GetStartTime(const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer;Var PrevSortingOrderNo : Integer) : TSQLTimeStamp ;
Begin
 Try
 sp_GetStartTime.ParamByName('@SortingOrderNo').AsInteger    := SortingOrderNo ;
 sp_GetStartTime.ParamByName('@ProducerNo').AsInteger        := ProducerNo ;
 sp_GetStartTime.ParamByName('@ProductionUnitNo').AsInteger  := ProductionUnitNo ;
 sp_GetStartTime.Open ;
 if not sp_GetStartTime.Eof then
  Begin
   Result             := sp_GetStartTimeRegistrerad.AsSQLTimeStamp ;//SQLTimeStampToDateTime(sp_GetStartTimeRegistrerad.AsSQLTimeStamp)
   PrevSortingOrderNo := sp_GetStartTimeSortingOrderNo.AsInteger ;
  End
   else
    Begin
     Result             := DateTimeToSqlTimeStamp(Now) ;
     PrevSortingOrderNo := -1 ;
    End ;
 Finally
  sp_GetStartTime.Close ;
 End ;
End ;

Function TdmsSortOrder.GetEndTime(const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer) : TSQLTimeStamp ;
Begin
 Try
 sp_GetEndTime.ParamByName('@SortingOrderNo').AsInteger    := SortingOrderNo ;
 sp_GetEndTime.ParamByName('@ProducerNo').AsInteger        := ProducerNo ;
 sp_GetEndTime.ParamByName('@ProductionUnitNo').AsInteger  := ProductionUnitNo ;
 sp_GetEndTime.Open ;
 if not sp_GetEndTime.Eof then
  Result  := sp_GetEndTimeRegistrerad.AsSQLTimeStamp //SQLTimeStampToDateTime(sp_GetStartTimeRegistrerad.AsSQLTimeStamp)
   else
    Result  := DateTimeToSQLTimeStamp(Now) ;
 Finally
  sp_GetEndTime.Close ;
 End ;
End ;

procedure TdmsSortOrder.OpenAOMall ;
Begin
 cds_AOMall.Active := False ;
 cds_AOMall.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
 cds_AOMall.Active := True ;
End ;

procedure TdmsSortOrder.CloseAOMall ;
Begin
 cds_AOMall.Active := False ;
End ;

function TdmsSortOrder.CopyAOtoTemplate(const TemplateName : String;const SortingOrderNo, Template : Integer) : Integer ;
Begin
 Try
 sp_CopyAOtoTemplate.ParamByName('@SortingOrderNo').AsInteger    := SortingOrderNo ;
 sp_CopyAOtoTemplate.ParamByName('@CreatedUser').AsInteger       := ThisUser.UserID ;
 sp_CopyAOtoTemplate.ParamByName('@TemplateName').AsString       := TemplateName ;
 sp_CopyAOtoTemplate.ParamByName('@Template').AsInteger          := Template ;
 sp_CopyAOtoTemplate.ExecProc ;
 Result:= sp_CopyAOtoTemplate.ParamByName('@NewSortingOrderNo').AsInteger ;
 sp_CopyAOtoTemplate.Close ;
 Except
  On E: Exception do
  Begin
   ShowMessage('Fel i sp_CopyAOtoTemplate, Error message ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;


procedure TdmsSortOrder.DelMall(const SortingOrderNo : Integer) ;
Begin
 Try
 sq_DelMall.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 sq_DelMall.ExecSQL ;
 Except
   on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('sq_DelMall ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.ResfreshFindUrlagg ;
Begin
 mtUrlaggProduct.Active := False ;
 mtUrlaggProduct.Active := True ;
 mtUrlaggProduct.Insert ;
 cds_FindUrlagg.Active  := False ;
 cds_FindUrlagg.ParamByName('ProductNo').AsInteger         := cds_SorOrdRowProductNo.AsInteger ;
 cds_FindUrlagg.ParamByName('ProductionUnitNo').AsInteger  := cds_SchedulerResourceID.AsInteger ;
 cds_FindUrlagg.ParamByName('ProducerNo').AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 cds_FindUrlagg.Active  := True ;
 if cds_FindUrlagg.RecordCount > 0 then
 mtUrlaggProductUrlaggProductNo.AsInteger := cds_FindUrlaggProductNo.AsInteger ;
 mtUrlaggProduct.Post ;
End ;

Function TdmsSortOrder.GetStandardAOReportName : String ;
Begin
 Try
 sq_StdSOReport.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_StdSOReport.Open ;
 if not sq_StdSOReport.Eof then
  Result  := sq_StdSOReportReportName.AsString
   else
    Result  := 'Standard report saknas' ;
 Finally
  sq_StdSOReport.Close ;
 End ;
End ;

function TdmsSortOrder.Ordered_NM3_Volume : Double ;
Var FDMemTable1 : TFDMemTable ;
Begin
 FDMemTable1 := TFDMemTable.Create(Self);
 FDMemTable1.Data := cds_SorOrdRow.Data ;
 Try
 Result                   := 0 ;
 FDMemTable1.First ;
 While not FDMemTable1.Eof do
 Begin
  Result  := Result + FDMemTable1.FieldByName('PlannedNM3').AsFloat ;
  FDMemTable1.Next ;
 End ;

 Finally
  FDMemTable1.Free ;
 End ;
End ;

procedure TdmsSortOrder.ResfreshFindRawMtrl ;
Begin
 mtRawMtrl.Active := False ;
 mtRawMtrl.Active := True ;
 mtRawMtrl.Insert ;
 cds_FindRaw.Active  := False ;
 cds_FindRaw.ParamByName('ProductNo').AsInteger         := cds_SorOrdRowProductNo.AsInteger ;
 cds_FindRaw.ParamByName('ProductionUnitNo').AsInteger  := cds_SchedulerResourceID.AsInteger ;
 cds_FindRaw.ParamByName('ProducerNo').AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 cds_FindRaw.Active  := True ;
 if cds_FindRaw.RecordCount > 0 then
 mtRawMtrlRawMtrlProductNo.AsInteger := cds_FindRawProductNo.AsInteger ;
 mtRawMtrl.Post ;
End ;

Procedure TdmsSortOrder.ChangeMarkedRows(const Value : Variant;const FieldName : String) ;
Var SortingOrderRowNo : Integer ;
Begin
 With dmsSystem, dmsSortOrder do
 Begin
  SortingOrderRowNo := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
  cds_SorOrdRow.DisableControls ;
  Try
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_SorOrdRow.Locate('SortingOrderRowNo', mtMarkedCodesPkgCodePPNo.AsInteger, []) then
   Begin
    cds_SorOrdRow.Edit ;
    cds_SorOrdRow.FieldByName(FieldName).AsVariant := Value ;
    cds_SorOrdRow.Post ;
   End ;
   mtMarkedCodes.Next ;
  End ;//While not mtMarkedCodes.Eof do
  if cds_SorOrdRow.Locate('SortingOrderRowNo', SortingOrderRowNo, []) then ;
  Finally
   cds_SorOrdRow.EnableControls ;
  End ;
 End ;//With dmsSystem, dmsSortOrder do
End ;

function TdmsSortOrder.GetPrice(const SortingOrderNo, SortingOrderRowNo : Integer) : Double ;
Begin
 if cds_SorOrdRow.Locate('SortingOrderNo;SortingOrderRowNo', VarArrayOf([SortingOrderNo,SortingOrderRowNo]), []) then
  Result  :=  cds_SorOrdRowPrice.AsFloat
   else
    Result  := 0 ;
End ;

procedure TdmsSortOrder.CalcStartSlutochProdTid ;
var
  Save_Cursor         : TCursor;
  TotalPcsProduced,
  PrevSortingOrderNo  : Integer ;
  TotalProdTime       : Double ;

begin
  inherited;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 with dmsSortOrder, dm_ProdPlan do
 Begin
  cds_SortOrder.DisableControls ;
  Try
//  cds_Calendar.Active := False ;
//  cds_Calendar.ParamByName('DriftPlatsNr').AsInteger := GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;
//  cds_Calendar.Active := True ;


  FD_DelProdTimeSeg.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  Try
  FD_DelProdTimeSeg.ExecSQL ;
  Except
//   On E: Exception do
   on E: eDatabaseError do
   Begin
    ShowMessage('FD_DelProdTimeSeg ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
    Raise ;
   End ;
  End ;

  dmsConnector.DeleteSecondNo('SOProductionTimeSegment', cds_SortOrderSortingOrderNo.AsInteger) ;

  FD_ProdTimeSeg.Active := False ;
  FD_ProdTimeSeg.Active := True ;

  FD_ProdTimeSeg.Insert ;
  FD_ProdTimeSegStartSegment.AsSQLTimeStamp   := GetStartTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger, PrevSortingOrderNo) ;
  FD_ProdTimeSegEndSegment.AsSQLTimeStamp     := GetEndTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;
  FD_ProdTimeSegPrevSortingOrderNo.AsInteger  := PrevSortingOrderNo ;
  FD_ProdTimeSeg.Post ;

//  FD_ProdTimeSeg.First ;
//  While not FD_ProdTimeSeg.Eof do
//  Begin
   TotalProdTime  := 0 ;
   FD_ProdTimeSeg.Edit ;
   FD_ProdTimeSegProductionTime.AsFloat :=
   WorkMinutesU.WorkMinutes(
   GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger),
   cds_Calendar,
   SQLTimeStampToDateTime(FD_ProdTimeSegStartSegment.AsSQLTimeStamp),
   SQLTimeStampToDateTime(FD_ProdTimeSegEndSegment.AsSQLTimeStamp)) ;
   FD_ProdTimeSeg.Post ;
   TotalProdTime  := FD_ProdTimeSegProductionTime.AsFloat ;
//   FD_ProdTimeSeg.Next ;
//  End ;

  if FD_ProdTimeSeg.ChangeCount > 0 then
  Begin
   FD_ProdTimeSeg.ApplyUpdates(0) ;
   FD_ProdTimeSeg.CommitUpdates ;
  End ;

  FD_ProdTimeSeg.Active := False ;
  FD_ProdTimeSeg.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_ProdTimeSeg.Active := True ;

  if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;
  if cds_SortOrder.State = dsBrowse then
  cds_SortOrder.Edit ;
  FD_ProdTimeSeg.First ;
  cds_SchedulerStart.AsSQLTimeStamp := FD_ProdTimeSegStartSegment.AsSQLTimeStamp ;
  FD_ProdTimeSeg.Last ;
  cds_SchedulerFinish.AsSQLTimeStamp   := FD_ProdTimeSegEndSegment.AsSQLTimeStamp ;
  
  cds_SortOrderRealProductionTime.AsFloat   := TotalProdTime ;
  cds_SortOrderProdTimeHour.AsFloat         := TotalProdTime / 60 ;



{  if cds_SortOrder.State = dsBrowse then
  cds_SortOrder.Edit ;
  cds_SchedulerStart.AsSQLTimeStamp := GetStartTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger, PrevSortingOrderNo) ;
  cds_SchedulerFinish.AsDateTime       := GetEndTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;

  cds_SortOrderRealProductionTime.AsFloat := WorkMinutesU.WorkMinutes(
  GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger),
  cds_Calendar,
  cds_SchedulerStart.AsDateTime,
  cds_SchedulerFinish.AsDateTime) ;
  cds_SortOrder.Post ; }

  Finally
   cds_SortOrder.EnableControls ;
  End ;
 End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmsSortOrder.CalcStartSlutochProdTidWithMoreTimeSegments ;
var
  Save_Cursor             : TCursor;
  TotalPcsProduced,
  PrevSortingOrderNo      : Integer ;
  PrevDate, NewStartDate  : TSQLTimeStamp ;
  TotalProdTime           : Double ;
begin
  inherited;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 with dmsSortOrder, dm_ProdPlan, dm_PkgWorkOrder do
 Begin
(*  if CheckIfAnyPkgRegInOtherRunsBetweenDates(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) then
  Begin
  cds_SortOrder.DisableControls ;
  cds_NewPkgs.DisableControls ;
  Try
//  cds_Calendar.Active := False ;
//  cds_Calendar.ParamByName('DriftPlatsNr').AsInteger := GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;
//  cds_Calendar.Active := True ;

  FD_DelProdTimeSeg.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  Try
  FD_DelProdTimeSeg.ExecSQL ;
  Except
//   On E: Exception do
   on E: eDatabaseError do
   Begin
    ShowMessage('FD_DelProdTimeSeg ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
    Raise ;
   End ;
  End ;

  dmsConnector.DeleteSecondNo('SOProductionTimeSegment', cds_SortOrderSortingOrderNo.AsInteger) ;

  FD_ProdTimeSeg.Active := False ;
  FD_ProdTimeSeg.Active := True ;

  cds_NewPkgs.First ;

  FD_ProdTimeSeg.Insert ;
  FD_ProdTimeSegStartSegment.AsSQLTimeStamp   := GetStartTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger, PrevSortingOrderNo) ;
  FD_ProdTimeSegEndSegment.AsSQLTimeStamp     := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;
  FD_ProdTimeSegPrevSortingOrderNo.AsInteger  := PrevSortingOrderNo ;
  FD_ProdTimeSeg.Post ;

  PrevDate  := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;

  cds_NewPkgs.Next ;
  While not cds_NewPkgs.Eof do
  Begin
  //om paket från annan körorder är registrerat före körorder som kalkyleras
   if IsPkgFromOtherRunRegisteredBetweenDates(cds_NewPkgsRegistrerad.AsSQLTimeStamp, PrevDate,
   cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger,
   NewStartDate, PrevSortingOrderNo)
   then
   Begin
    //save old segment
    FD_ProdTimeSeg.Edit ;
    FD_ProdTimeSegEndSegment.AsSQLTimeStamp   := PrevDate ;
    FD_ProdTimeSeg.Post ;

    //Start new segment
    FD_ProdTimeSeg.Insert ;
    FD_ProdTimeSegStartSegment.AsSQLTimeStamp   := NewStartDate ;//GetStartTime(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) ;
    FD_ProdTimeSegEndSegment.AsSQLTimeStamp     := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;
    FD_ProdTimeSegPrevSortingOrderNo.AsInteger  := PrevSortingOrderNo ;
    FD_ProdTimeSeg.Post ;
    PrevDate  := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;
   End
   else
   Begin
    FD_ProdTimeSeg.Edit ;
    FD_ProdTimeSegEndSegment.AsSQLTimeStamp   := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;
    FD_ProdTimeSeg.Post ;
    PrevDate  := cds_NewPkgsRegistrerad.AsSQLTimeStamp ;
   End ;

   cds_NewPkgs.Next ;
  End ;

  if FD_ProdTimeSeg.ChangeCount > 0 then
  Begin
   FD_ProdTimeSeg.ApplyUpdates(0) ;
   FD_ProdTimeSeg.CommitUpdates ;
  End ;



  FD_ProdTimeSeg.Active := False ;
  FD_ProdTimeSeg.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_ProdTimeSeg.Active := True ;

  TotalProdTime := 0 ;
  //Räkna ut tiden för varje segment
  FD_ProdTimeSeg.First ;
  While not FD_ProdTimeSeg.Eof do
  Begin
   FD_ProdTimeSeg.Edit ;
   FD_ProdTimeSegProductionTime.AsFloat :=
   WorkMinutesU.WorkMinutes(
   GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger),
   cds_Calendar,
   SQLTimeStampToDateTime(FD_ProdTimeSegStartSegment.AsSQLTimeStamp),
   SQLTimeStampToDateTime(FD_ProdTimeSegEndSegment.AsSQLTimeStamp)) ;
   FD_ProdTimeSeg.Post ;
   TotalProdTime  := TotalProdTime  + FD_ProdTimeSegProductionTime.AsFloat ;
   FD_ProdTimeSeg.Next ;
  End ;


  if FD_ProdTimeSeg.ChangeCount > 0 then
  Begin
   FD_ProdTimeSeg.ApplyUpdates(0) ;
   FD_ProdTimeSeg.CommitUpdates ;
  End ;  




  if cds_Scheduler.State in [dsBrowse] then
   cds_Scheduler.Edit ;  
  if cds_SortOrder.State = dsBrowse then
  cds_SortOrder.Edit ;
  FD_ProdTimeSeg.First ;
  cds_SchedulerStart.AsSQLTimeStamp := FD_ProdTimeSegStartSegment.AsSQLTimeStamp ;
  FD_ProdTimeSeg.Last ;
  cds_SchedulerFinish.AsSQLTimeStamp   := FD_ProdTimeSegEndSegment.AsSQLTimeStamp ;
  cds_SortOrderRealProductionTime.AsFloat   := TotalProdTime ;

//  cds_SortOrderRealProductionTime.AsFloat := GetTotalRunTimeOfSegment ;
{  WorkMinutesU.WorkMinutes(
  GetProdUnitNo(cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger),
  cds_Calendar,
  cds_SchedulerStart.AsDateTime,
  cds_SchedulerFinish.AsDateTime) ; }
  cds_SortOrder.Post ;
  Finally
   cds_NewPkgs.EnableControls ;
   cds_SortOrder.EnableControls ;
  End ;
  End //if CheckIfAnyPkgRegInOtherRunsBetweenDates(cds_SortOrderSortingOrderNo.AsInteger, cds_SchedulerVerkNo.AsInteger, cds_SchedulerResourceID.AsInteger) then
   else
   *)
    CalcStartSlutochProdTid ;
 End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

Function TdmsSortOrder.CheckIfAnyPkgRegInOtherRunsBetweenDates(
const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer) : Boolean ;
Begin
 Try
 //Kollar om det finns paket registrerade på andra körorders mellan första och sista paketet
 FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates.ParamByName('@SortingOrderNo').AsInteger    := SortingOrderNo ;
 FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates.ParamByName('@ProducerNo').AsInteger        := ProducerNo ;
 FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates.ParamByName('@ProductionUnitNo').AsInteger  := ProductionUnitNo ;
 FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates.Open ;
 Try
  Result := FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDatesSortingOrderNo.AsInteger > 0 ;
 Finally
  FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates.Close ;
 End ;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('FD_vis_CheckIfAnyPkgRegInOtherRunsBetweenDates ' + E.Message) ;
    Raise ;
   End ;
  End ;
End ;

Function TdmsSortOrder.IsPkgFromOtherRunRegisteredBetweenDates(NextDate, PrevDate : TSQLTimeStamp;
const SortingOrderNo, ProducerNo, ProductionUnitNo : Integer;Var NewStartDate : TSQLTimeStamp;
Var PrevSortingOrderNo : Integer) : Boolean ;
Begin
 //Kollar om det finns paket registrerade på andra körorders med datum före NextDate och efter prevdate
 FD_vis_PkgRegInOtherRunsBetweenDates.ParamByName('@NextDate').AsSQLTimeStamp     := NextDate ;
 FD_vis_PkgRegInOtherRunsBetweenDates.ParamByName('@PrevDate').AsSQLTimeStamp     := PrevDate ;
 FD_vis_PkgRegInOtherRunsBetweenDates.ParamByName('@SortingOrderNo').AsInteger    := SortingOrderNo ;
 FD_vis_PkgRegInOtherRunsBetweenDates.ParamByName('@ProducerNo').AsInteger        := ProducerNo ;
 FD_vis_PkgRegInOtherRunsBetweenDates.ParamByName('@ProductionUnitNo').AsInteger  := ProductionUnitNo ;
 FD_vis_PkgRegInOtherRunsBetweenDates.Open ;
 Try
  Try
  Result := FD_vis_PkgRegInOtherRunsBetweenDatesSortingOrderNo.AsInteger > 0 ;
  if Result then
   NewStartDate := FD_vis_PkgRegInOtherRunsBetweenDatesDateCreated.AsSQLTimeStamp ;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('FD_vis_PkgRegInOtherRunsBetweenDates ' + E.Message) ;
    Raise ;
   End ;
  End ;
 Finally
  FD_vis_PkgRegInOtherRunsBetweenDates.Close ;
 End ;
End ;

{Function TdmsSortOrder.FinishWidthLessThanSmallestRawWidth(const AB : Double) : Boolean ;
Var SmallestRawWidth : Double ;
Begin
 cds_SORaw.First ;
 SmallestRawWidth := cds_SORawAB.AsFloat ;
 While not cds_SORaw.Eof do
 Begin
  cds_SORaw.Next ;
  if SmallestRawWidth < cds_SORawAB.AsFloat then
   SmallestRawWidth := cds_SORawAB.AsFloat ;
 End ;//While

End ;
}

function TdmsSortOrder.NotPlanedAM3 : Double ;
Begin
 Result := 0 ;
 cds_SorOrdRow.First ;
 While not cds_SorOrdRow.Eof do
 Begin
  Result  := Result + cds_SorOrdRowAM3.AsFloat ;
  cds_SorOrdRow.Next ;
 End ; //While
End ;

function TdmsSortOrder.CalculateSawDustVolume : Double ;
Var SawDust, TotalAM3ConsumedFromAO : Double ;
    AntalLameller, EjHyvladAM3 : Double ;
Begin
 EjHyvladAM3            := NotPlanedAM3 ;
 TotalAM3ConsumedFromAO := 0 ;
 TotalAM3ConsumedFromAO := dm_PkgWorkOrder.GetTotalAM3ConsumedFromAO ;
 if TotalAM3ConsumedFromAO = 0 then
  Exit ;
 cds_SorOrdRow.First ;
 While not cds_SorOrdRow.Eof do
 Begin
//  if cds_SorOrdRowSurfacingNo.AsInteger <> 79 then
  if cds_SorOrdRowMCClassNo.AsInteger = 0 then //Hyvlas!
  Begin
   cds_SORaw.First ;
   While not cds_SORaw.Eof do
   Begin
    AntalLameller := int(cds_SORawAB.AsFloat / cds_SorOrdRowAB.AsFloat) ;

    if (AntalLameller > 0) and ((TotalAM3ConsumedFromAO - EjHyvladAM3) <> 0) then
    Result := Result +
    ((((cds_SORawAT.AsFloat/1000) * (cds_SORawAB.AsFloat/1000)) / AntalLameller)
     -
    ((cds_SorOrdRowAT.AsFloat/1000) * (cds_SorOrdRowAB.AsFloat/1000)))
    *
    cds_SorOrdRowProdAM1.AsFloat
    *
    (cds_SORawAM3.AsFloat / (TotalAM3ConsumedFromAO - EjHyvladAM3)) ;

    cds_SORaw.Next ;
   End ;//While
  End ;
  cds_SorOrdRow.Next ;
 End ; //While
End ;

//Flyttar förbrukade paket till annan körorder
procedure TdmsSortOrder.MoveUsedPkgs(const MoveToSortingOrderNo : Integer) ;
Begin
 mtPkgNos.First ;
 While not mtPkgNos.Eof do
 Begin
  Try
  sq_MoveUsedPkgs.ParamByName('SortingOrderNo').AsInteger := MoveToSortingOrderNo ;
  sq_MoveUsedPkgs.ParamByName('PackageNo').AsInteger      := mtPkgNosPackageNo.AsInteger ;
  sq_MoveUsedPkgs.ParamByName('SupplierCode').AsString    := mtPkgNosLevKod.AsString ;
  sq_MoveUsedPkgs.ExecSQL ;
  Except
//   On E: Exception do
   on E: eDatabaseError do
   Begin
    ShowMessage('sq_MoveUsedPkgs ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
    Raise ;
   End ;
  End ;
  mtPkgNos.Next ;
 End ;
End ;

Procedure TdmsSortOrder.GetStoppTimeTotalStoppTid ;
Begin
//ProductionUnitNo frågar RegPointNo
 Try
 sq_GetStoppTime.ParamByName('ProductionUnitNo').AsInteger  := cds_SchedulerResourceID.AsInteger ;
 sq_GetStoppTime.ParamByName('ProducerNo').AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 sq_GetStoppTime.ParamByName('StartDate').AsSQLTimeStamp    := DateTimeToSqlTimeStamp(cds_SchedulerStart.AsDateTime) ;
 sq_GetStoppTime.ParamByName('EndDate').AsSQLTimeStamp      := DateTimeToSqlTimeStamp(cds_SchedulerFinish.AsDateTime) ;
 sq_GetStoppTime.ParamByName('Kategori').AsInteger          := 1 ; 
 sq_GetStoppTime.Open ;
 if not sq_GetStoppTime.Eof then
 Begin
  cds_SortOrderStopTime.AsInteger := sq_GetStoppTimeTotalStoppTid.AsInteger ;
 End
 else
 cds_SortOrderStopTime.AsInteger := 0 ;
 Finally
  sq_GetStoppTime.Close ;
 End ;

 Try
 sq_GetStoppTime.ParamByName('ProductionUnitNo').AsInteger  := cds_SchedulerResourceID.AsInteger ;
 sq_GetStoppTime.ParamByName('ProducerNo').AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 sq_GetStoppTime.ParamByName('StartDate').AsSQLTimeStamp    := DateTimeToSqlTimeStamp(cds_SchedulerStart.AsDateTime) ;
 sq_GetStoppTime.ParamByName('EndDate').AsSQLTimeStamp      := DateTimeToSqlTimeStamp(cds_SchedulerFinish.AsDateTime) ;
 sq_GetStoppTime.ParamByName('Kategori').AsInteger          := 0 ;
 sq_GetStoppTime.Open ;
 if not sq_GetStoppTime.Eof then
 Begin
  cds_SortOrderStopTimeNotIncl.AsInteger := sq_GetStoppTimeTotalStoppTid.AsInteger ;
 End
 else
 cds_SortOrderStopTimeNotIncl.AsInteger := 0 ;
 Finally
  sq_GetStoppTime.Close ;
 End ;
End ;

function TdmsSortOrder.GetAntalLamellerOfRawMtrl : Integer ;
Var FDMemTable1 : TFDMemTable ;
Begin
 FDMemTable1 := TFDMemTable.Create(Self);
 FDMemTable1.Data := cds_SorOrdRow.Data ;
 Try
 FDMemTable1.Active  := True ;
 Result                   := 1 ;
 FDMemTable1.Filter    := 'MCClassNo <> 1' ;
 FDMemTable1.Filtered  := True ;
 FDMemTable1.First ;

 if FDMemTable1.FieldByName('Urlagg').AsInteger = 0 then
 Begin
  if FDMemTable1.FieldByName('AB').AsFloat > 0 then
  Result := trunc(cds_SORawAB.AsFloat / FDMemTable1.FieldByName('AB').AsFloat) ;
  if Result = 1 then
   Result := 0 ;
  if FDMemTable1.FieldByName('AT').AsFloat > 0 then
  Begin
   if trunc(cds_SORawAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) > 1 then
   Result := Result + trunc(cds_SORawAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) ;
  End ;

  if Result = 0 then
   Result := 1 ;
 End ;

 Finally
  FDMemTable1.Free ;
 End ;


//CLONING
(*
 FDMemTable1 := TFDMemTable.Create(Self);
 Try
 FDMemTable1.CloneCursor(cds_SorOrdRow, False, False);



 Result                   := 1 ;
// cds_SorOrdRow.Filter    := 'SurfacingNo <> 79' ;
 FDMemTable1.Filter    := 'MCClassNo <> 1' ;
 FDMemTable1.Filtered  := True ;


 FDMemTable1.First ;

 if FDMemTable1.FieldByName('Urlagg').AsInteger = 0 then
 Begin
  if FDMemTable1.FieldByName('AB').AsFloat > 0 then
  Result := trunc(cds_SORawAB.AsFloat / FDMemTable1.FieldByName('AB').AsFloat) ;
  if Result = 1 then
   Result := 0 ;
  if FDMemTable1.FieldByName('AT').AsFloat > 0 then
  Begin
   if trunc(cds_SORawAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) > 1 then
   Result := Result + trunc(cds_SORawAT.AsFloat / FDMemTable1.FieldByName('AT').AsFloat) ;
  End ;

  if Result = 0 then
   Result := 1 ;

 End ;



 Finally
  FDMemTable1.Free ;
 End ;


*)



(*
 Result                   := 1 ;
 cds_SorOrdRowII.Active := False ;
 cds_SorOrdRowII.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
 cds_SorOrdRowII.Active := True ;
 Try
 cds_SorOrdRowII.First ;
// if cds_SorOrdRowSurfacingNo.AsInteger <> 79 then
 if cds_SorOrdRowIIUrlagg.AsInteger = 0 then
 Begin
  if cds_SorOrdRowIIAB.AsFloat > 0 then
  Result := trunc(cds_SORawAB.AsFloat / cds_SorOrdRowIIAB.AsFloat) ;
  if Result = 1 then
   Result := 0 ;
  if cds_SorOrdRowIIAT.AsFloat > 0 then
  Begin
   if trunc(cds_SORawAT.AsFloat / cds_SorOrdRowIIAT.AsFloat) > 1 then
   Result := Result + trunc(cds_SORawAT.AsFloat / cds_SorOrdRowIIAT.AsFloat) ;
  End ;

  if Result = 0 then
   Result := 1 ;

 End ;
 Finally
  cds_SorOrdRowII.Active := False ;
 End ;
  *)
End ;

function TdmsSortOrder.GetRealStartTime : TDateTime ;
Begin

End ;

procedure TdmsSortOrder.SummarizeRawMtrlPackages_I(const SortingOrderNo : Integer) ;
Begin
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('Before FD_DeleteSortOrderRawSum');
 Try
 FD_DeleteSortOrderRawSum.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_DeleteSortOrderRawSum.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_DeleteSortOrderRawSum ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('Before FD_GenRawSum');


 Try
 FD_GenRawSum.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_GenRawSum.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenRawSum ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After FD_GenRawSum'); 
End ;

procedure TdmsSortOrder.SummarizeRawMtrlPackages_II(const SortingOrderNo : Integer) ;
Var SumAdjPcs  : Integer ;
Begin
 Try
 FD_GenRawSum_II.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_GenRawSum_II.ExecSQL ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
   ShowMessage('procedure FD_GenRawSum_II.ExecSQL') ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenRawSum_II ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
   ShowMessage('Before FD_getAdjpcs') ;


 FD_getAdjpcs.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 Try
 SumAdjPcs  := 0 ;
 FD_getAdjpcs.Open ;
 if not FD_getAdjpcs.Eof then
  SumAdjPcs  := FD_getAdjPcsAdjPcs.AsInteger ;
 Finally
  FD_getAdjpcs.Close ;
 End ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
   ShowMessage('After FD_getAdjpcs, SumAdjPcs = ' + inttostr(SumAdjPcs)) ;

 if SumAdjPcs > 0 then
 Begin
 Try
 FD_GenRawSum_IIb.ParamByName('SortingOrderNo').AsInteger   := SortingOrderNo ;
 FD_GenRawSum_IIb.ParamByName('SumAdjPcs').AsInteger        := SumAdjPcs ;
 FD_GenRawSum_IIb.ExecSQL ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
   ShowMessage('procedure FD_GenRawSum_IIb.ExecSQL') ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenRawSum_IIb ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
 End ;//if SumAdjPcs > 0
End ;

procedure TdmsSortOrder.SummarizeRawMtrlPackages_III(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_GenRawSum_III.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_GenRawSum_III.ExecSQL ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
   ShowMessage('procedure FD_GenRawSum_III.ExecSQL') ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenRawSum_III ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.genValue(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_genValue.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_genValue.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_genValue ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.SetTargetProduct(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_SetTargetProduct.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_SetTargetProduct.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_SetTargetProduct ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.PrepareForPostCalc (const SortingOrderNo : Integer) ;
Var TotalPcsProduced : Integer ;
Begin
// dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
// dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
// dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ;

 SetTargetProduct(SortingOrderNo) ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After SetTargetProduct');

  dm_PkgWorkOrder.cds_NewPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_NewPkgs.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
  dm_PkgWorkOrder.cds_NewPkgs.Active:= True ;


 dm_PkgWorkOrder.InsertMissingRawMtrlPost(SortingOrderNo) ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After InsertMissingRawMtrlPost');

 TotalPcsProduced          := dm_PkgWorkOrder.GetTotalPcsProducedFromAO ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After GetTotalPcsProducedFromAO');
 if TotalPcsProduced > 0 then
 Begin

// CalcStartSlutochProdTid ;
 if (cds_SortOrderManualProdTime.AsInteger <> 1)
 or (cds_SortOrderManualProdTime.IsNull) then
 Begin
  CalcStartSlutochProdTidWithMoreTimeSegments ;
  if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After CalcStartSlutochProdTidWithMoreTimeSegments');
 End ;

 GenFinSum(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After GenFinSum');
 SummarizeRawMtrlPackages_I(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After SummarizeRawMtrlPackages_I');
 CalcLamellerAndKapSnitt(SortingOrderNo) ;



 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After CalcLamellerAndKapSnitt');
 CalcUrlaggPieces(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After CalcUrlaggPieces');
 if FD_SortOrderFinSum.ChangeCount > 0 then
 Begin
  FD_SortOrderFinSum.ApplyUpdates(0) ;
  FD_SortOrderFinSum.CommitUpdates ;
 End ;

 if FD_SortOrderRawSum.ChangeCount > 0 then
 Begin
  FD_SortOrderRawSum.ApplyUpdates(0) ;
  FD_SortOrderRawSum.CommitUpdates ;
 End ;


 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
  showmessage('After ChangeCount');
 SummarizeRawMtrlPackages_II(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After SummarizeRawMtrlPackages_II');
 SummarizeRawMtrlPackages_III(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After SummarizeRawMtrlPackages_III');
 CalcLPMGenomHyvel(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After CalcLPMGenomHyvel');
 GenSOoutput(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After GenSOoutput');

 GenerateValues(SortingOrderNo) ;

 GetKassationStycketal ;

{ GenValue(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After GenValue');
 SummarizeToSortOrder(SortingOrderNo) ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After SummarizeToSortOrder'); }


 End ;
// CalcAdjustmentValuesDueToUrlagg (SortingOrderNo) ;
End ;

Procedure TdmsSortOrder.GenerateValues(const SortingOrderNo : Integer) ;
Begin
 GenValue(SortingOrderNo) ;

 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After GenValue');
 SummarizeToSortOrder(SortingOrderNo) ;
 if ((ThisUser.UserID = 8) or (ThisUser.UserID = ManualUserID)) and (VisaMeddelande) then
 showmessage('After SummarizeToSortOrder');
End ;

procedure TdmsSortOrder.GenSOoutput(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_GenSOoutput.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GenSOoutput.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenSOoutput ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

function TdmsSortOrder.CalcNoOfLameller(const SortingOrderNo : Integer;const RawATMM, RawABMM : Double) : Integer ;
Begin
 Result               := 0 ;
 FD_NewPkgSum.Active  := False ;
 FD_NewPkgSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_NewPkgSum.Active  := True ;
 FD_NewPkgSum.Filter    := 'MCClassNo <> 1' ;
 FD_NewPkgSum.Filtered  := True ;
 Try
  FD_NewPkgSum.First ;
  if FD_NewPkgSumActualWidthMM.AsFloat > 0 then
  Result := trunc(RawABMM / FD_NewPkgSumActualWidthMM.AsFloat) ;
  if Result = 1 then
   Result := 0 ;
  if FD_NewPkgSumActualThicknessMM.AsFloat > 0 then
  Begin
   if trunc(RawATMM / FD_NewPkgSumActualThicknessMM.AsFloat) > 1 then
   Result := Result + trunc(RawATMM / FD_NewPkgSumActualThicknessMM.AsFloat) ;
  End ;

  if Result = 0 then
   Result := 1 ;
 Finally
  FD_NewPkgSum.Filtered := False ;
  FD_NewPkgSum.Active   := False ;
 End ;
End ;

function TdmsSortOrder.CalcNoOfKapSnitt(const SortingOrderNo : Integer;const RawALMM : Double) : Integer ;
Begin
 Result               := 0 ;
 FD_NewPkgSum.Active  := False ;
 FD_NewPkgSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_NewPkgSum.Active  := True ;
 FD_NewPkgSum.Filter    := 'MCClassNo <> 1' ;
 FD_NewPkgSum.Filtered  := True ;
 Try
  FD_NewPkgSum.First ;
  if FD_NewPkgSumActualLengthMM.AsFloat > 0 then
  Result := trunc(RawALMM / FD_NewPkgSumActualLengthMM.AsFloat) ;

  if Result > 0 then
  Result := Result - 1 ;

 Finally
  FD_NewPkgSum.Filtered := False ;
  FD_NewPkgSum.Active   := False ;
 End ;
End ;

procedure TdmsSortOrder.CalcLamellerAndKapSnitt (const SortingOrderNo : Integer) ;
Begin
 FD_SortOrderRawSum.Active  := False ;
 FD_SortOrderRawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SortOrderRawSum.Active  := True ;
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  FD_SortOrderRawSum.Edit ;
  FD_SortOrderRawSumLameller.AsInteger  := CalcNoOfLameller(SortingOrderNo, FD_SortOrderRawSumATMM.AsFloat, FD_SortOrderRawSumABMM.AsFloat) ;
  FD_SortOrderRawSumKapSnitt.AsInteger  := CalcNoOfKapSnitt(SortingOrderNo, FD_SortOrderRawSumALMM.AsFloat) ;

  FD_SortOrderRawSumExpectedPcsOut.AsInteger  :=
   FD_SortOrderRawSumAdjustedPieces.AsInteger
  * FD_SortOrderRawSumLameller.AsInteger
  * (FD_SortOrderRawSumKapSnitt.AsInteger + 1) ;

  FD_SortOrderRawSum.Post ;
  FD_SortOrderRawSum.Next ;
 End ;
 if FD_SortOrderRawSum.ChangeCount > 0 then
 Begin
  FD_SortOrderRawSum.ApplyUpdates(0) ;
  FD_SortOrderRawSum.CommitUpdates ;
 End ;
 //FD_SortOrderRawSumPieces.AsInteger
End ;

(*
procedure TdmsSortOrder.CalcAdjustmentValuesDueToUrlagg (const SortingOrderNo : Integer) ;
Begin
 FD_NewPkgSum.Active  := False ;
 FD_NewPkgSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_NewPkgSum.Active  := True ;
 Try


 FD_SortOrderRawSum.Active  := False ;
 FD_SortOrderRawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SortOrderRawSum.Active  := True ;
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  if FD_NewPkgSum.Locate('ActualThicknessMM;ActualWidthMM;ActualLengthMM', VarArrayOf([FD_SortOrderRawSumATMM.AsFloat, FD_SortOrderRawSumABMM.AsFloat, FD_SortOrderRawSumALMM.AsFloat])) then
  Begin
   FD_SortOrderRawSum.Edit ;
   FD_SortOrderRawSumUrlaggPcs.AsInteger  := 1 ;
   FD_SortOrderRawSum.Post ;
  End ;


  FD_SortOrderRawSum.Next ;
 End ;//While
 Finally
  FD_NewPkgSum.Active       := False ;
  FD_SortOrderRawSum.Active := False ;
 End ;
End ;
*)

procedure TdmsSortOrder.cds_SortOrderAfterInsert(DataSet: TDataSet);
begin
 //cds_SortOrderStartTime skulle ha haft samma date värde i sortordern och package produktion för matchning


// cds_SortOrderSortingOrderNo.AsInteger      := dmsConnector.NextMaxNo('SortingOrder') ;

// cds_SortOrderSortingOrderNo.AsInteger      := cds_SchedulerID.AsInteger ;

// cds_SortOrderSortingOrderNo.AsInteger      := cds_SchedulerID.AsInteger ;

//Load Default values
 LoadAOUserProps ('frmSortOrder') ;

// if (cds_SchedulerVerkNo.AsInteger > 0) and (cds_SchedulerVerkNo.IsNull = False) then
// cds_SortOrderSortingOrderNo.AsInteger      := dmsConnector.NextSecondMaxNo('SortingOrder', cds_SchedulerVerkNo.AsInteger)
// else
// cds_SortOrderSortingOrderNo.AsInteger      := dmsConnector.NextSecondMaxNo('SortingOrder', ThisUser.CompanyNo) ;

 cds_SortOrderDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
 cds_SortOrderCreatedUser.AsInteger         := ThisUser.userid ;



 cds_SortOrderShiftNo.AsInteger             := -1 ;//dmsSystem.GetDefaultShiftNo(ThisUser.CompanyNo) ;

 if cds_SortOrderTypeOfRunNo.IsNull then
 cds_SortOrderTypeOfRunNo.AsInteger         := 1 ;//dmsSystem.GetDefaultTypeOfRunNo(ThisUser.CompanyNo) ;

 cds_SortOrderSizeFormat.AsInteger          := 1 ;
 cds_SortOrderLengthFormat.AsInteger        := 1 ;
 cds_SortOrderChipsM3Solid.AsFloat          := 0 ;
 cds_SortOrderChipsValue.AsFloat            := 0 ;
// cds_SchedulerStart.AsDateTime  := GetRealStartTime ;//DateTimeToSQLTimeStamp(Now) ;


 cds_SortOrderEfficiencyFactor.AsInteger    := 0 ;
 cds_SortOrderStopTimeNotIncl.AsInteger     := 0 ;
 cds_SortOrderLego.AsInteger                := 0 ;

 if cds_SortOrderPrintRawMtrlPart.IsNull then
 cds_SortOrderPrintRawMtrlPart.AsInteger      := 1 ;

 cds_SortOrderAntalBitarUt.AsInteger          := 0 ;
 cds_SortOrderKassationStyck.AsInteger        := 0 ;
 cds_SortOrderRawMtrlPcs.AsInteger            := 0 ;
 cds_SortOrderProductionPcs.AsInteger         := 0 ;
 cds_SortOrderAntalKapSnitt.AsInteger         := 0 ;
 cds_SortOrderTotalPcs.AsInteger              := 0 ;


 cds_SortOrderRealProductionTime.AsInteger    := 0 ;
 cds_SortOrderPercentTrimloss.AsInteger       := 0 ;
 cds_SortOrderChipsM3Solid.AsInteger          := 0 ;
 cds_SortOrderChipsValue.AsInteger            := 0 ;
 cds_SortOrderRawMtrlCost.AsInteger           := 0 ;
 cds_SortOrderRawMtrlAM3.AsInteger            := 0 ;
 cds_SortOrderProductionCost.AsInteger        := 0 ;
 cds_SortOrderProductionAM3.AsInteger         := 0 ;
 cds_SortOrderCostPerAM3.AsInteger            := 0 ;
 cds_SortOrderSawdustM3Solid.AsInteger        := 0 ;
 cds_SortOrderSawdustValue.AsInteger          := 0 ;
 cds_SortOrderPostningstid.AsInteger          := 0 ;
 cds_SortOrderNoOfWorkersPostning.AsInteger   := 0 ;
 cds_SortOrderAvkapAM3.AsInteger              := 0 ;
 cds_SortOrderAvkapLPM.AsInteger              := 0 ;
 cds_SortOrderKassationAM3.AsInteger          := 0 ;
 cds_SortOrderKassationLPM.AsInteger          := 0 ;
 cds_SortOrderAvkapValue.AsInteger            := 0 ;
 cds_SortOrderKassationValue.AsInteger        := 0 ;
 cds_SortOrderTotalSalaryCost.AsInteger       := 0 ;
 cds_SortOrderSalaryCostPerHour.AsFloat       := 0 ;
 cds_SortOrderFeedSpeed.AsInteger             := 0 ;
 cds_SortOrderRawMtrlAM1.AsInteger            := 0 ;
 cds_SortOrderProductionAM1.AsInteger         := 0 ;
 cds_SortOrderProductionValue.AsInteger       := 0 ;
 cds_SortOrderTotalValue.AsInteger            := 0 ;
 cds_SortOrderTotalAM3.AsInteger              := 0 ;
 cds_SortOrderTotalAM1.AsInteger              := 0 ;
 cds_SortOrderTotalCost.AsInteger             := 0 ;
 cds_SortOrderResultAO.AsInteger              := 0 ;
 cds_SortOrderCostPerAM1.AsInteger            := 0 ;
 cds_SortOrderAvgRawMtrlPriceAM3.AsInteger    := 0 ;
 cds_SortOrderAvgRawMtrlPriceNM3.AsInteger    := 0 ;
 cds_SortOrderAvgProductPriceAM3.AsInteger    := 0 ;
 cds_SortOrderAvgProductPriceAM1.AsInteger    := 0 ;
 cds_SortOrderAvgRawMtrlPriceAM1.AsInteger    := 0 ;
 cds_SortOrderEfficiencyFactor.AsInteger      := 0 ;
 cds_SortOrderStopTimeNotIncl.AsInteger       := 0 ;
 cds_SortOrderLegoCostPerAM3.AsInteger        := 0 ;
 cds_SortOrderRealLpmMinute.AsInteger         := 0 ;
 cds_SortOrderTemplate.AsInteger              := 0 ;

 cds_SortOrderMCClassNo.AsInteger             := 0 ; //Hyvlas EJ = 1, Hyvlas=1

 cds_SortOrderManualProdTime.AsInteger        := 0 ;

 cds_SortOrderVP_ProductCodePrefix.AsString   := 'KG' ;

 Load_SOShift ;
end;

procedure TdmsSortOrder.cds_SortOrderAfterScroll(DataSet: TDataSet);
begin
 cds_SOLayout.Active  := False ;
 cds_SOLayout.Active  := True ;
end;

procedure TdmsSortOrder.cds_SortOrderBeforePost(DataSet: TDataSet);

begin
{ if cds_SortOrderLIPNo.IsNull then
 Begin
  ShowMessage('Välj lagergrupp!') ;
  Abort ;
 End ;

 if cds_SchedulerResourceID.IsNull then
 Begin
  ShowMessage('Välj mätpunkt!') ;
  Abort ;
 End ;

 if cds_SchedulerStart.IsNull then
 Begin
  ShowMessage('Ange starttid!') ;
  Abort ;
 End ;

 if cds_SortOrderTypeOfRunNo.IsNull then
 Begin
  ShowMessage('Ange typ av körning!') ;
  Abort ;
 End ; }

 if (cds_SortOrderTypeOfRunNo.IsNull) or (cds_SortOrderTypeOfRunNo.AsInteger < 0) then
 cds_SortOrderTypeOfRunNo.AsInteger         := 1 ;

 if ((cds_SchedulerTaskStatusField.AsInteger >= 3) and (cds_SchedulerTaskStatusField.AsInteger <= 5))
 and  (cds_SortOrderRealProductionTime.AsFloat = 0) then
 Begin
  ShowMessage('Ange verklig produktionstid') ;
//  Abort ;
 End ;



 cds_SortOrderDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_SortOrderCreatedUser.AsInteger       := ThisUser.userid ;

 cds_SortOrderStatus.AsInteger            := cds_SchedulerTaskStatusField.AsInteger ;
 cds_SortOrderOwnerNo.AsInteger           := cds_SchedulerOwnerNo.AsInteger ;
 cds_SortOrderProducerNo.AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 cds_SortOrderProductionUnitNo.AsInteger  := cds_SchedulerResourceID.AsInteger ;

end;

procedure TdmsSortOrder.cds_SortOrderRawPIPNoChange(Sender: TField);
begin
  if not cds_SortOrderRawPIPNo.isNull then
  Begin
   cds_RawLIP.Filter:= 'PIPNo = ' + cds_SortOrderRawPIPNo.AsString ;
   cds_RawLIP.Filtered  := True ;
   if cds_RawLIP.RecordCount = 1 then
    cds_SortOrderRawLIPNo.AsInteger  := cds_RawLIPLIPNo.AsInteger ;
  End ;
end;

procedure TdmsSortOrder.cds_SortOrderResponsibleUserChange(Sender: TField);
begin
// if cds_SortOrderResponsibleUser.IsNull = False then
//  cds_SchedulerTaskStatusField.AsInteger:= 4 ;
end;

procedure TdmsSortOrder.cds_SortOrderOwnerNoChange(Sender: TField);
begin
 cds_SortOrderPIPNo.Clear ;
 cds_SortOrderLIPNo.Clear ;
end;

procedure TdmsSortOrder.cds_SortOrderProducerNoChange(Sender: TField);
begin
 SupplierCode                                           := dmsContact.GetClientCode(cds_SchedulerVerkNo.AsInteger) ;
 cds_ProductionUnit.Active                              := False ;
 cds_ProductionUnit.ParamByName('ProducerNo').AsInteger := cds_SchedulerVerkNo.AsInteger ;
 cds_ProductionUnit.Active                              := True ;
end;

procedure TdmsSortOrder.cds_SortOrderPIPNoChange(Sender: TField);
begin
  cds_SortOrderLIPNo.Clear ;
  if not cds_SortOrderPIPNo.isNull then
  Begin
   cds_LIP.Filter:= 'PIPNo = ' + cds_SortOrderPIPNo.AsString ;
   cds_LIP.Filtered  := True ;
   if cds_LIP.RecordCount = 1 then
    cds_SortOrderLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
  End ;
end;

procedure TdmsSortOrder.cds_SorOrdRowAfterInsert(DataSet: TDataSet);
begin
// cds_SorOrdRowCPSO_No.AsInteger:= cds_CPSOCPSO_No.AsInteger ;
 cds_SorOrdRowSortingOrderNo.AsInteger      := cds_SortOrderSortingOrderNo.AsInteger ;
 cds_SorOrdRowSortingOrderRowNo.AsInteger   := dmsConnector.NextSecondMaxNo('SortingOrderRow', cds_SortOrderSortingOrderNo.AsInteger) ;
// dmsConnector.NextMaxNo('SortingOrderRow') ;
 cds_SorOrdRowDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_SorOrdRowCreatedUser.AsInteger         := ThisUser.userid ;
// cds_SorOrdRowMCClassNo.AsInteger           := 0 ;
 cds_SorOrdRowProductLengthNo.AsInteger     := 453 ;
// cds_SorOrdRowBarCodeID.AsInteger:= 0 ;
// cds_SorOrdRowGradeStampNo.AsInteger:= 0 ;
// cds_SorOrdRowWrapTypeNo.AsInteger:= 0 ;
// cds_SorOrdRowPcsPerBundle.AsInteger:= 0 ;
 cds_SorOrdRowPPP.AsInteger                 := 0 ;
// cds_SorOrdRowExLog.AsString                := '' ;
// cds_SorOrdRowTypeOfBoard.AsInteger         := 0 ;
 cds_SorOrdRowTargetProduct.AsInteger       := 0 ;
 cds_SorOrdRowPriceUnit.AsInteger           := 4 ;//NM3
 cds_SorOrdRowPrio.AsInteger                := -1 ;
// cds_SorOrdRowTypeOfBoard
 cds_SorOrdRowLanguagecode.AsInteger        := 1 ;
 cds_SorOrdRowSizeFormat.AsInteger          := 1 ;
 cds_SorOrdRowLengthFormat.AsInteger        := 1 ;
 cds_SorOrdRowVolumeFormat.AsInteger        := 1 ;
// cds_SorOrdRowUrlagg.AsInteger              := 1 ;
 cds_SorOrdRowEndPkgAllowed.AsInteger       := 1 ;
 cds_SorOrdRowLIPNo.AsInteger               := GetUrlaggLIPNo ;
 GetStandardPkgLayouts ;


end;

procedure TdmsSortOrder.cds_SorOrdRowBeforePost(DataSet: TDataSet);
Var S : String ;
begin
 cds_SorOrdRowDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
 cds_SorOrdRowCreatedUser.AsInteger         := ThisUser.userid ;

 if (cds_SorOrdRowNoOfUnits.AsFloat > 0) and (cds_SorOrdRowALMM.AsFloat > 1) then
 Begin
 cds_SorOrdRowPlannedAM3.AsFloat            :=
 cds_SorOrdRowAT.AsFloat / 1000
 * cds_SorOrdRowAB.AsFloat / 1000
 * cds_SorOrdRowALMM.AsFloat / 1000
 * cds_SorOrdRowPPP.AsInteger
 * cds_SorOrdRowNoOfUnits.AsFloat ;

 cds_SorOrdRowPlannedNM3.AsFloat            :=
 cds_SorOrdRowNT.AsFloat / 1000
 * cds_SorOrdRowNB.AsFloat / 1000
 * cds_SorOrdRowALMM.AsFloat / 1000
 * cds_SorOrdRowPPP.AsInteger
 * cds_SorOrdRowNoOfUnits.AsFloat ;
 End ;

 S  := cds_SortOrderVP_ProductCodePrefix.AsString + FloatToStr(RoundTo(cds_SorOrdRowAT.AsFloat - 0.1,0)) ;

 if cds_SorOrdRowAB.AsFloat < 100 then
  S := S + '0' + FloatToStr(RoundTo(cds_SorOrdRowAB.AsFloat - 0.1,0))
   else
    S := S + FloatToStr(RoundTo(cds_SorOrdRowAB.AsFloat - 0.1,0)) ;

 if cds_SorOrdRowALMM.AsFloat < 1000 then
  S  := S + '0' + FloatToStr(RoundTo(cds_SorOrdRowALMM.AsFloat,0))
   else
    S  := S + FloatToStr(RoundTo(cds_SorOrdRowALMM.AsFloat,0)) ;


 cds_SorOrdRowVP_ProductCode.AsString := S ;

{ if cds_SorOrdRowNTMM.IsNull then
 Begin
  ShowMessage('Nominell tjocklek saknas') ;
 End
 else
 if cds_SorOrdRowNBMM.IsNull then
 Begin
  ShowMessage('Nominell bredd saknas') ;
 End ; }

{ if cds_SorOrdRowMCClassNo.AsInteger = 0 then
 Begin
  ShowMessage('Fuktkvot saknas') ;
  Abort ;
 End ;

 if cds_SorOrdRowExLog.AsString = '' then
 Begin
  ShowMessage('Exlog saknas') ;
  Abort ;
 End ; }
end;

procedure TdmsSortOrder.UpdateVP_ProductCodePrefix ;
Var S : String ;
    SortingOrderRowNo : Integer ;
Begin
 if cds_SorOrdRow.Active then
 Begin
 SortingOrderRowNo          := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
 cds_SortOrder.BeforePost   := nil ;

 cds_SorOrdRow.DisableControls ;
 Try
 cds_SorOrdRow.First ;
 While not cds_SorOrdRow.Eof do
 Begin
  S  := cds_SortOrderVP_ProductCodePrefix.AsString + FloatToStr(RoundTo(cds_SorOrdRowAT.AsFloat - 0.1,0)) ;

  if cds_SorOrdRowAB.AsFloat < 100 then
   S := S + '0' + FloatToStr(RoundTo(cds_SorOrdRowAB.AsFloat - 0.1,0))
    else
     S := S + FloatToStr(RoundTo(cds_SorOrdRowAB.AsFloat - 0.1,0)) ;

  if cds_SorOrdRowALMM.AsFloat < 1000 then
   S  := S + '0' + FloatToStr(RoundTo(cds_SorOrdRowALMM.AsFloat,0))
    else
     S  := S + FloatToStr(RoundTo(cds_SorOrdRowALMM.AsFloat,0)) ;


  cds_SorOrdRow.Edit ;
  cds_SorOrdRowVP_ProductCode.AsString := S ;
  cds_SorOrdRow.Post ;
  cds_SorOrdRow.Next ;
 End ;
 Finally
  cds_SortOrder.BeforePost := cds_SortOrderBeforePost ;
  cds_SorOrdRow.EnableControls ;
 End ;
 cds_SorOrdRow.Locate('SortingOrderRowNo', SortingOrderRowNo, []) ;
 End ;//if cds_SorOrdRow.Active then
End ;

procedure TdmsSortOrder.cds_SORawAfterInsert(DataSet: TDataSet);
begin
 cds_SORawBookingNo.AsInteger         := cds_SchedulerBookingNo.AsInteger ;
 cds_SORawProductNo.AsInteger         := cds_SorOrdRowProductNo.AsInteger ;
 cds_SORawProductLengthNo.AsInteger   := cds_SorOrdRowProductLengthNo.AsInteger ;
 cds_SORawBookedALMM.AsFloat          := 0 ;
 cds_SORawBookedLIPGroupNo.AsInteger  := -1 ;
 cds_SORawsspNo.AsInteger             := -1 ;
 cds_SORawBookedProductLengthNo.AsInteger := 453 ;
 cds_SORawLengthSpec.AsString         := '3-DM' ;
 cds_SORawPIPNo.AsInteger             := -1 ;
 cds_SORawDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_SORawModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_SORawCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_SORawID.AsInteger                := cds_SortOrderSortingOrderNo.AsInteger ;
// cds_SORawRawMtrlNo.AsInteger         := dmsConnector.NextSecondMaxNo('SortingOrderRawMtrl', cds_SortOrderSortingOrderNo.AsInteger) ;
// dmsConnector.NextMaxNo('RawMtrlNo') ;
// cds_SORawAntalBitarUt.AsInteger      := 1 ; //Not used for the moment
 cds_SORawMainRawMtrl.AsInteger       := 1 ;



 if (not cds_SortOrderAntalKapSnitt.IsNull) and (cds_SortOrderAntalKapSnitt.AsInteger > 0) then
 cds_SORawAntalKapSnitt.AsInteger     := cds_SortOrderAntalKapSnitt.AsInteger
 else
 cds_SORawAntalKapSnitt.AsInteger     := 1 ;

 if (not cds_SortOrderAntalBitarUt.IsNull) and (cds_SortOrderAntalBitarUt.AsInteger > 0)
 and (cds_SORawAntalLamellerUt.IsNull) then
 cds_SORawAntalLamellerUt.AsInteger   :=  cds_SortOrderAntalBitarUt.AsInteger ;
// else
// cds_SORawAntalLamellerUt.AsInteger   := 1 ;

 cds_SORawUtfall2.AsFloat      := 0 ;

 cds_SORawMCClassNo.AsInteger         := 0 ;
end;

procedure TdmsSortOrder.cds_SORawBeforePost(DataSet: TDataSet);
begin
 cds_SORawDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_SORawModifiedUser.AsInteger      := ThisUser.UserID ;
// cds_SORawCreatedUser.AsInteger       := ThisUser.UserID ;

// if cds_SORawAntalLamellerUt.IsNull then
// cds_SORawAntalLamellerUt.AsInteger   := GetAntalLamellerOfRawMtrl ;


 cds_SORawModifiedUser.AsInteger     := ThisUser.UserID ;

// cds_SORawBookedProductLengthNo.AsInteger  := dmsProduct.GetProdLengthNo(cds_SORawBookedALMM.AsFloat) ;
// cds_SORawLengthSpec.AsString              := cds_SORawBookedALMM.AsString ;

 cds_Dim.ParamByName('ProductNo').AsInteger     := cds_SORawBookedProductNo.AsInteger ;
 cds_Dim.Active := True ;
 Try
 cds_SORawAT.AsFloat := cds_DimAT.AsFloat ;
 cds_SORawAB.AsFloat := cds_DimAB.AsFloat ;
 cds_SORawNT.AsFloat := cds_DimNT.AsFloat ;
 cds_SORawNB.AsFloat := cds_DimNB.AsFloat ;
 Finally
  cds_Dim.Active := False ;
 End ;

 if (cds_SORawNT.AsFloat * cds_SORawNB.AsFloat) > 0 then
 Begin
  cds_SORawBookedAM3.AsFloat :=
  ((cds_SORawAT.AsFloat * cds_SORawAB.AsFloat)
  /
  (cds_SORawNT.AsFloat * cds_SORawNB.AsFloat))
  *
  cds_SORawBookedNM3.AsFloat ;
 End
 else
  cds_SORawBookedAM3.AsFloat           := cds_SORawBookedNM3.AsFloat ;


 if (cds_SORawNT.AsFloat * cds_SORawNB.AsFloat) > 0 then
 Begin
  cds_SORawPlannedOutputAM3.AsFloat :=
  ((cds_SORawAT.AsFloat * cds_SORawAB.AsFloat)
  /
  (cds_SORawNT.AsFloat * cds_SORawNB.AsFloat))
  *
  cds_SORawPlannedOutputNM3.AsFloat ;
 End
 else
 cds_SORawPlannedOutputAM3.AsFloat := cds_SORawPlannedOutputNM3.AsFloat ;

 cds_SORawAntalLamellerUt.AsInteger  := GetAntalLamellerOfRawMtrl ;



end;

procedure TdmsSortOrder.cds_ProdInstructAfterInsert(DataSet: TDataSet);
begin
 cds_ProdInstructProdInstruNo.AsInteger     := dmsConnector.NextMaxNo('ProdInstru') ;
 cds_ProdInstructCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_ProdInstructModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_ProdInstructDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;

 cds_ProdInstructMiniBundle.AsInteger       := 0 ;
 cds_ProdInstructStressGrade.AsInteger      := 0 ;
 cds_ProdInstructFingerJoint.AsInteger      := 0 ;
 cds_ProdInstructPackageCut.AsInteger       := 0 ;
 cds_ProdInstructShrinkWrap.AsInteger       := 0 ;

 cds_ProdInstructPET.AsInteger              := 1 ;//Default
 cds_ProdInstructPackage_Size.AsInteger     := 0 ;//Default
 cds_ProdInstructPackageType.AsInteger      := 0 ;//Default

 cds_ProdInstructStamp.AsInteger            := 0 ;
 cds_ProdInstructBarCodeID.AsInteger        := 0 ;
end;

procedure TdmsSortOrder.cds_SOLayoutAfterInsert(DataSet: TDataSet);
begin
 cds_SOLayoutSortingOrderNo.AsInteger     := cds_SortOrderSortingOrderNo.AsInteger ;
 cds_SOLayoutSortingOrderRowNo.AsInteger  := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
 cds_SOLayoutAntalKopior.AsInteger        := 1 ;
end;

procedure TdmsSortOrder.SummarizeToSortOrder(const SortingOrderNo : Integer) ;
Var TotKassaPCS,
    TotalPcsConsumed,
    TotalPcsProduced,
    TotalAntalKassationPcs    : Integer ;
    Total_LPM_ConsumedFromAO  : Double ;

    TotalAvkapAM3,
    TotalAvkapAM1,
    TotKassaLPM,
    TotKassaAM3               : Double ;

Begin

//snabba upp skiten!!
  TotKassaPCS               := 0 ;
  TotKassaLPM               := 0 ;
  TotKassaAM3               := 0 ;
  TotalAvkapAM3             := 0 ;
  TotalAvkapAM1             := 0 ;

  TotalPcsConsumed          := dm_PkgWorkOrder.GetTotalPcsConsumedFromAO ;
  Total_LPM_ConsumedFromAO  := dm_PkgWorkOrder.GetTotal_LPM_ConsumedFromAO ;

{  if TotalPcsConsumed > 0 then
   AverageLength_IN          := Total_LPM_ConsumedFromAO / TotalPcsConsumed
    else
     AverageLength_IN          := 0 ; }



 if cds_SortOrder.State in [dsBrowse] then
  cds_SortOrder.Edit ;


 cds_SortOrderProductionAM1.AsFloat   := GetLPMHyvlat(SortingOrderNo) ;// dm_PkgWorkOrder.GetTotal_LPM_ProducedFromAO ;
 cds_SortOrderProductionAM3.AsFloat   := dm_PkgWorkOrder.GetTotalAM3ProducedFromAO ;
 cds_SortOrderProductionNM3.AsFloat   := dm_PkgWorkOrder.GetTotalNM3ProducedFromAO ;
 cds_SortOrderProductionPcs.AsInteger := dm_PkgWorkOrder.GetTotalPcsProducedFromAO ;

 cds_SortOrderKassationLPM.AsFloat    := dm_PkgWorkOrder.GetSOOutPut_AM1(SortingOrderNo, -1) ;
 cds_SortOrderKassationAM3.AsFloat    := dm_PkgWorkOrder.GetSOOutPut_AM3(SortingOrderNo, -1) ;
 cds_SortOrderKassationStyck.AsInteger:= dm_PkgWorkOrder.GetSOOutPut_PCS(SortingOrderNo, -1) ;

 cds_SortOrderRawMtrlAM1.AsFloat      := dm_PkgWorkOrder.GetRAWSUM_AM1 (SortingOrderNo) ;
 cds_SortOrderRawMtrlAM3.AsFloat      := dm_PkgWorkOrder.GetRAWSUM_AM3 (SortingOrderNo) ;
 cds_SortOrderRawMtrlNM3.AsFloat      := dm_PkgWorkOrder.GetRAWSUM_NM3 (SortingOrderNo) ;
 cds_SortOrderRawMtrlPcs.AsInteger    := dm_PkgWorkOrder.GetRAWSUM_PCS (SortingOrderNo) ;

 cds_SortOrderRawMtrlNM3NoOmSort.AsFloat      := dm_PkgWorkOrder.GetRAWSUM_NM3_NoOmSort(SortingOrderNo, 'NM3') ;// dm_PkgWorkOrder.GetRAWSUM_NM3 (SortingOrderNo) ;


 cds_SortOrderSawdustM3Solid.AsFloat  := GetOutPutCost(cds_SortOrderSortingOrderNo.AsInteger, -2) ;

// cds_SortOrderTotalAM3.AsFloat  := cds_SortOrderProductionAM3.AsFloat + cds_SortOrderAvkapAM3.AsFloat + cds_SortOrderKassationAM3.AsFloat + cds_SortOrderSawdustM3Solid.AsFloat ;
// cds_SortOrderTotalAM1.AsFloat  := cds_SortOrderProductionAM1.AsFloat + cds_SortOrderAvkapLPM.AsFloat + cds_SortOrderKassationLPM.AsFloat ;
// cds_SortOrderTotalPcs.AsFloat  := cds_SortOrderProductionPcs.AsInteger + cds_SortOrderKassationStyck.AsInteger ;

 GetStoppTimeTotalStoppTid ;

 cds_SortOrder.Post ;
 CalculateSortingOrderResult ;
 CalcVerkningsGrad ;
 if cds_SortOrder.ChangeCount > 0 then
 Begin
  cds_SortOrder.ApplyUpdates(0) ;
  cds_SortOrder.CommitUpdates ;
 End ;

End ;

procedure TdmsSortOrder.cds_FeedBackAfterInsert(DataSet: TDataSet);
begin
 cds_FeedBackSortingOrderNo.AsInteger     := cds_SortOrderSortingOrderNo.AsInteger ;
 cds_FeedBackFeedBackNo.AsInteger         := dmsConnector.NextSecondMaxNo('FeedBack', cds_SortOrderSortingOrderNo.AsInteger) ;
// dmsConnector.NextMaxNo('FeedBack') ;
 cds_FeedBackDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_FeedBackDateModified.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_FeedBackCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_FeedBackModifiedUser.AsInteger       := ThisUser.UserID ;
end;

procedure TdmsSortOrder.cds_LegoPrisAfterInsert(DataSet: TDataSet);
begin
 cds_LegoPrisNoOfSplit.AsInteger          := 1 ;
 cds_LegoPrisCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_LegoPrisModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_LegoPrisDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_LegoPrisDateModified.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_LegoPrisPriceUnitNo.AsInteger        := 3 ;
end;

procedure TdmsSortOrder.cds_LegoPrisBeforePost(DataSet: TDataSet);
begin
 cds_LegoPrisModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_LegoPrisDateModified.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmsSortOrder.cds_UrlLayoutAfterInsert(DataSet: TDataSet);
begin
  cds_UrlLayoutVerkNo.AsInteger := ThisUser.CompanyNo ;
end;

procedure TdmsSortOrder.cds_AOMallAfterPost(DataSet: TDataSet);
begin
 dmsSortOrder.CopyAOtoTemplate(cds_AOMallTemplateName.AsString, cds_SortOrderSortingOrderNo.AsInteger, 1 {Template}) ;
end;

procedure TdmsSortOrder.cds_SOVerkParamsPIPNoChange(Sender: TField);
begin
  cds_SOVerkParamsLIPNo.Clear ;
  if not cds_SOVerkParamsPIPNo.isNull then
  Begin
   cds_LIP.Filter:= 'PIPNo = ' + cds_SOVerkParamsPIPNo.AsString ;
   cds_LIP.Filtered  := True ;
   if cds_LIP.RecordCount = 1 then
    cds_SOVerkParamsLIPNo.AsInteger  := cds_LIPLIPNo.AsInteger ;
  End ;
end;

procedure TdmsSortOrder.cds_SOCngProdAfterInsert(DataSet: TDataSet);
begin
 cds_SOCngProdSpeciesNo.AsInteger   := -1 ;
 cds_SOCngProdGradeNo.AsInteger     := -1 ;
 cds_SOCngProdSurfacingNo.AsInteger := -1 ;
 cds_SOCngProdIMPNo.AsInteger       := -1 ;
end;

procedure TdmsSortOrder.cds_SOLegoCostAfterInsert(DataSet: TDataSet);
begin
 cds_SOLegoCostProductionUnitNo.AsInteger := dmsConnector.NextMaxNo('ProductionUnit') ;
 cds_SOLegoCostCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_SOLegoCostModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_SOLegoCostDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
 cds_SOLegoCostClientNo.AsInteger         := -1 ;
end;

procedure TdmsSortOrder.GenFinSum(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_GenFinSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GenFinSum.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('FD_GenFinSum ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
End ;

procedure TdmsSortOrder.CalcUrlaggPieces(const SortingOrderNo : Integer) ;
Var PcsAvrMotRavara  : Integer ;

function FindExactMatch(UrlaggPcs : Integer;const ATMM, ABMM, ALMM : Double) : Integer ;
Var AvRaknaPcs : Integer ;
Begin
 AvRaknaPcs := 0 ;
 //FD_RawSum.Locate('', VarArrayOf([]), []) ;
 FD_SortOrderRawSum.Filter := 'ATMM = ' + FloatToStr(ATMM)
 + ' AND ABMM = ' + FloatToStr(ABMM)
 + ' AND ALMM = ' + FloatToStr(ALMM) ;

 FD_SortOrderRawSum.Filtered  := True ;
 Try
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  if FD_SortOrderRawSumPcsAttAvrakna.AsInteger > 0 then
  Begin
   if FD_SortOrderRawSumPcsAttAvrakna.AsInteger >= UrlaggPcs then
   Begin
    FD_SortOrderRawSum.Edit ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := FD_SortOrderRawSumUrlaggPcs.AsInteger + UrlaggPcs ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs + Result ;
    UrlaggPcs := 0 ;
    Break ;
   End
   else
   Begin
    FD_SortOrderRawSum.Edit ;  //100 - 200
    UrlaggPcs   := UrlaggPcs - (UrlaggPcs - FD_SortOrderRawSumPcsAttAvrakna.AsInteger) ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := UrlaggPcs + FD_SortOrderRawSumUrlaggPcs.AsInteger ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs + Result ;// AvRaknaPcs ;
   End ;
//   FD_SortOrderRawSumUrlaggPcs    FD_SortOrderRawSumPieces
  End ;
  FD_SortOrderRawSum.Next ;
 End ;
 Finally
  FD_SortOrderRawSum.Filtered := False ;
 End ;
End ;

function FindNearMatchOnDIMAndLength(UrlaggPcs : Integer;const ATMM, ABMM, ALMM : Double) : Integer ;
Var AvRaknaPcs : Integer ;
Begin
 //FD_RawSum.Locate('', VarArrayOf([]), []) ;
 FD_SortOrderRawSum.Filter := 'ATMM >= ' + FloatToStr(ATMM - 10)
 + ' AND ATMM <= ' + FloatToStr(ATMM + 10)
 + ' AND ABMM >= ' + FloatToStr(ABMM - 10)
 + ' AND ABMM <= ' + FloatToStr(ABMM + 10)
 + ' AND ALMM >= ' + FloatToStr(ALMM - 60)
 + ' AND ALMM <= ' + FloatToStr(ALMM + 60) ;

 FD_SortOrderRawSum.Filtered  := True ;
 Try
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  if FD_SortOrderRawSumPcsAttAvrakna.AsInteger > 0 then
  Begin
   if FD_SortOrderRawSumPcsAttAvrakna.AsInteger >= UrlaggPcs then
   Begin
    FD_SortOrderRawSum.Edit ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := FD_SortOrderRawSumUrlaggPcs.AsInteger + UrlaggPcs ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs ;
    UrlaggPcs := 0 ;
    Break ;
   End
   else
   Begin
    FD_SortOrderRawSum.Edit ;  //100 - 200
    UrlaggPcs   := UrlaggPcs - (UrlaggPcs - FD_SortOrderRawSumPcsAttAvrakna.AsInteger) ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := UrlaggPcs + FD_SortOrderRawSumUrlaggPcs.AsInteger ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs + Result ;// AvRaknaPcs ;
   End ;
//   FD_SortOrderRawSumUrlaggPcs    FD_SortOrderRawSumPieces
  End ;
  FD_SortOrderRawSum.Next ;
 End ;
 Finally
  FD_SortOrderRawSum.Filtered := False ;
 End ;
End ;

function FindNearMatchOnLength(UrlaggPcs : Integer;const ATMM, ABMM, ALMM : Double) : Integer ;
Var AvRaknaPcs : Integer ;
Begin
 //FD_RawSum.Locate('', VarArrayOf([]), []) ;
 FD_SortOrderRawSum.Filter := 'ATMM = ' + FloatToStr(ATMM)
 + ' AND ABMM = ' + FloatToStr(ABMM)
 + ' AND ALMM >= ' + FloatToStr(ALMM - 60)
 + ' AND ALMM <= ' + FloatToStr(ALMM + 60) ;


 FD_SortOrderRawSum.Filtered  := True ;
 Try
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  if FD_SortOrderRawSumPcsAttAvrakna.AsInteger > 0 then
  Begin
   if FD_SortOrderRawSumPcsAttAvrakna.AsInteger >= UrlaggPcs then
   Begin
    FD_SortOrderRawSum.Edit ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := FD_SortOrderRawSumUrlaggPcs.AsInteger + UrlaggPcs ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs ;
    UrlaggPcs := 0 ;
    Break ;
   End
   else
   Begin
    FD_SortOrderRawSum.Edit ;  //100 - 200
    UrlaggPcs   := UrlaggPcs - (UrlaggPcs - FD_SortOrderRawSumPcsAttAvrakna.AsInteger) ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := UrlaggPcs + FD_SortOrderRawSumUrlaggPcs.AsInteger ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs + Result ;// AvRaknaPcs ;
   End ;
//   FD_SortOrderRawSumUrlaggPcs    FD_SortOrderRawSumPieces
  End ;
  FD_SortOrderRawSum.Next ;
 End ;
 Finally
  FD_SortOrderRawSum.Filtered := False ;
 End ;
End ;

//=========================================
//Sista matchningen...
function FindNearMatchOnDIMAndLongerLength(UrlaggPcs : Integer;const ATMM, ABMM, ALMM : Double) : Integer ;
Var AvRaknaPcs : Integer ;
Begin
 //FD_RawSum.Locate('', VarArrayOf([]), []) ;
 FD_SortOrderRawSum.Filter := 'ATMM >= ' + FloatToStr(ATMM - 10)
 + ' AND ATMM <= ' + FloatToStr(ATMM + 10)
 + ' AND ABMM >= ' + FloatToStr(ABMM - 10)
 + ' AND ABMM <= ' + FloatToStr(ABMM + 10)
 + ' AND ALMM >= ' + FloatToStr(ALMM - 60) ;

 FD_SortOrderRawSum.Filtered  := True ;
 Try
 FD_SortOrderRawSum.First ;
 While not FD_SortOrderRawSum.Eof do
 Begin
  if FD_SortOrderRawSumPcsAttAvrakna.AsInteger > 0 then
  Begin
   if FD_SortOrderRawSumPcsAttAvrakna.AsInteger >= UrlaggPcs then
   Begin
    FD_SortOrderRawSum.Edit ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := FD_SortOrderRawSumUrlaggPcs.AsInteger + UrlaggPcs ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs ;
    UrlaggPcs := 0 ;
    Break ;
   End
   else
   Begin
    FD_SortOrderRawSum.Edit ;  //100 - 200
    UrlaggPcs   := UrlaggPcs - (UrlaggPcs - FD_SortOrderRawSumPcsAttAvrakna.AsInteger) ;
    FD_SortOrderRawSumUrlaggPcs.AsInteger := UrlaggPcs + FD_SortOrderRawSumUrlaggPcs.AsInteger ;
    FD_SortOrderRawSum.Post ;
    Result    := UrlaggPcs + Result ;// AvRaknaPcs ;
   End ;
//   FD_SortOrderRawSumUrlaggPcs    FD_SortOrderRawSumPieces
  End ;
  FD_SortOrderRawSum.Next ;
 End ;
 Finally
  FD_SortOrderRawSum.Filtered := False ;
 End ;
End ;

Begin
 FD_SortOrderFinSum.Active    := False ;
 FD_SortOrderFinSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SortOrderFinSum.Active    := True ;
 FD_SortOrderFinSum.Filter    := 'MCClassNo = 1' ;
 FD_SortOrderFinSum.Filtered  := True ;

 Try
 FD_SortOrderFinSum.First ;
 While not FD_SortOrderFinSum.Eof do
 Begin
  //Look For exact match of pcs in RawMtrl where FD_SortOrderRawSumPcsAttAvrakna > 0
  PcsAvrMotRavara := 0 ;
  PcsAvrMotRavara := FindExactMatch(FD_SortOrderFinSumPcsAttAvrakna.AsInteger,//FD_SortOrderFinSumPieces.AsInteger - FD_SortOrderFinSumAvrUrlaggPcs.AsInteger,
  FD_SortOrderFinSumATMM.AsFloat, FD_SortOrderFinSumABMM.AsFloat, FD_SortOrderFinSumALMM.AsFloat) ;

  FD_SortOrderFinSum.Edit ;
  FD_SortOrderFinSumAvrUrlaggPcs.AsInteger  := PcsAvrMotRavara + FD_SortOrderFinSumAvrUrlaggPcs.AsInteger ;
  FD_SortOrderFinSum.Post ;

  //Look for near match on Length if "FD_SortOrderFinSumPcsAttAvrakna.AsInteger" > 0
  if FD_SortOrderFinSumPcsAttAvrakna.AsInteger > 0 then
  Begin //Exakt dim and near length
   PcsAvrMotRavara := 0 ;
   PcsAvrMotRavara := FindNearMatchOnLength(FD_SortOrderFinSumPcsAttAvrakna.AsInteger,//FD_SortOrderFinSumPieces.AsInteger - FD_SortOrderFinSumAvrUrlaggPcs.AsInteger,
   FD_SortOrderFinSumATMM.AsFloat, FD_SortOrderFinSumABMM.AsFloat, FD_SortOrderFinSumALMM.AsFloat) ;

   FD_SortOrderFinSum.Edit ;
   FD_SortOrderFinSumAvrUrlaggPcs.AsInteger  := PcsAvrMotRavara + FD_SortOrderFinSumAvrUrlaggPcs.AsInteger ;
   FD_SortOrderFinSum.Post ;
  End ;

  //Look for near match on dimension if "FD_SortOrderFinSumPcsAttAvrakna.AsInteger" > 0
  if FD_SortOrderFinSumPcsAttAvrakna.AsInteger > 0 then
  Begin //Exakt dim and near length
   PcsAvrMotRavara := 0 ;
   PcsAvrMotRavara := FindNearMatchOnDIMAndLength(FD_SortOrderFinSumPcsAttAvrakna.AsInteger,//FD_SortOrderFinSumPieces.AsInteger - FD_SortOrderFinSumAvrUrlaggPcs.AsInteger,
   FD_SortOrderFinSumATMM.AsFloat, FD_SortOrderFinSumABMM.AsFloat, FD_SortOrderFinSumALMM.AsFloat) ;

   FD_SortOrderFinSum.Edit ;
   FD_SortOrderFinSumAvrUrlaggPcs.AsInteger  := PcsAvrMotRavara + FD_SortOrderFinSumAvrUrlaggPcs.AsInteger ;
   FD_SortOrderFinSum.Post ;
  End ;

  //Look for near match on dimension only if there is still "FD_SortOrderFinSumPcsAttAvrakna.AsInteger" > 0
  if FD_SortOrderFinSumPcsAttAvrakna.AsInteger > 0 then
  Begin //Exakt dim and near length
   PcsAvrMotRavara := 0 ;
   PcsAvrMotRavara := FindNearMatchOnDIMAndLongerLength(FD_SortOrderFinSumPcsAttAvrakna.AsInteger,//FD_SortOrderFinSumPieces.AsInteger - FD_SortOrderFinSumAvrUrlaggPcs.AsInteger,
   FD_SortOrderFinSumATMM.AsFloat, FD_SortOrderFinSumABMM.AsFloat, FD_SortOrderFinSumALMM.AsFloat) ;

   FD_SortOrderFinSum.Edit ;
   FD_SortOrderFinSumAvrUrlaggPcs.AsInteger  := PcsAvrMotRavara + FD_SortOrderFinSumAvrUrlaggPcs.AsInteger ;
   FD_SortOrderFinSum.Post ;
  End ;

  FD_SortOrderFinSum.Next ;
 End ;
 Finally
  FD_SortOrderFinSum.Filtered := False ;
 End ;
End ;

procedure TdmsSortOrder.FD_SortOrderRawSumCalcFields(DataSet: TDataSet);
begin
 FD_SortOrderRawSumPcsAttAvrakna.AsInteger := FD_SortOrderRawSumPieces.AsInteger - FD_SortOrderRawSumUrlaggPcs.AsInteger ;
end;

procedure TdmsSortOrder.FD_SortOrderFinSumCalcFields(DataSet: TDataSet);
begin
 if FD_SortOrderFinSumMCClassNo.AsInteger = 1 then
 FD_SortOrderFinSumPcsAttAvrakna.AsInteger  := FD_SortOrderFinSumPieces.AsInteger - FD_SortOrderFinSumAvrUrlaggPcs.AsInteger
 else
  FD_SortOrderFinSumPcsAttAvrakna.AsInteger  := 0 ;
end;

Function TdmsSortOrder.GetLPMHyvlat(const SortingOrderNo : Integer) : Double ;
Begin
 FD_GetLPMHyvlat.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 FD_GetLPMHyvlat.Open ;
 try
 if not FD_GetLPMHyvlat.Eof then
  Result  := FD_GetLPMHyvlatHyvlatLPM.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_GetLPMHyvlat.Close ;
 End ;
End ;

procedure TdmsSortOrder.CalcLPMGenomHyvel (const SortingOrderNo : Integer) ;
Begin
 FD_SortOrderFinSum.Active  := False ;
 FD_SortOrderFinSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SortOrderFinSum.Active  := True ;
 FD_SortOrderFinSum.Filter    := 'MCClassNo <> 1' ;
 FD_SortOrderFinSum.Filtered  := True ;
 Try

 FD_SortOrderFinSum.First ;
 While not FD_SortOrderFinSum.Eof do
 Begin
  FD_SortOrderFinSum.Edit ;
  FD_SortOrderFinSumLameller.AsInteger  := GetNoOfLamellerOnOutPut(SortingOrderNo, FD_SortOrderFinSumATMM.AsFloat, FD_SortOrderFinSumABMM.AsFloat) ;

  if cds_SortOrderMCClassNo.AsInteger = 1 then
  Begin
   FD_SortOrderFinSumHyvelLPM.AsFloat  := FD_SortOrderFinSumAM1.AsFloat ;
  End
  else
  Begin
   if FD_SortOrderFinSumLameller.AsInteger > 0 then
   FD_SortOrderFinSumHyvelLPM.AsFloat  :=
    FD_SortOrderFinSumAM1.AsFloat
    / FD_SortOrderFinSumLameller.AsInteger
   else
   FD_SortOrderFinSumHyvelLPM.AsFloat  := 0 ;
  End ;

  FD_SortOrderFinSum.Post ;
  FD_SortOrderFinSum.Next ;
 End ;
 if FD_SortOrderFinSum.ChangeCount > 0 then
 Begin
  FD_SortOrderFinSum.ApplyUpdates(0) ;
  FD_SortOrderFinSum.CommitUpdates ;
 End ;
 Finally
  FD_SortOrderFinSum.Filtered  := False ;
 End ;
 //FD_SortOrderRawSumPieces.AsInteger
End ;

function TdmsSortOrder.GetSUMOfVariousWidths  : Double ;
Var ab  : Double ;
Begin
 With dm_PkgWorkOrder do
 Begin
  cds_NewPkgs.Filter    := 'Ej_Hyvlat = 0' ;
  cds_NewPkgs.Filtered  := True ;
  Try
   cds_NewPkgs.First ;
   ab  := cds_NewPkgsABMM.AsFloat ;
   While not cds_NewPkgs.Eof do
   Begin
    ab  := cds_NewPkgsABMM.AsFloat ;
    cds_NewPkgs.Next ;
   End ;
  Finally
   cds_NewPkgs.Filtered := False ;
  End ;
 End ;//With
End ;

function TdmsSortOrder.GetNoOfLamellerOnOutPut(const SortingOrderNo : Integer;const ATMM, ABMM : Double) : Integer ;
Begin
 Result               := 0 ;

 FD_RawSum.Active  := False ;
 FD_RawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_RawSum.Active  := True ;
//Fixa LM
 Try
  FD_RawSum.First ;
  if ABMM > 0 then
  Result := trunc(FD_RawSumABMM.AsFloat / ABMM) ;
  if Result = 1 then
   Result := 0 ;
  if ATMM > 0 then
  Begin
   if trunc(FD_RawSumATMM.AsFloat / ATMM) > 1 then
   Result := Result + trunc(FD_RawSumATMM.AsFloat / ATMM) ;
  End ;

  if Result = 0 then
   Result := 1 ;
 Finally

 End ;

{ Result               := 0 ;

 FD_RawSum.Active  := False ;
 FD_RawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_RawSum.Active  := True ;

 Try
  FD_RawSum.First ;
  if ABMM > 0 then
  Result := trunc(FD_RawSumABMM.AsFloat / ABMM) ;
  if ATMM > 0 then
  Begin
   if trunc(FD_RawSumATMM.AsFloat / ATMM) > 1 then
   Result := Result + trunc(FD_RawSumATMM.AsFloat / ATMM) ;
  End ;

  if Result = 0 then
   Result := 1 ;
 Finally

 End ;}
End ;

procedure TdmsSortOrder.FD_ProdTimeSegAfterInsert(DataSet: TDataSet);
begin
 FD_ProdTimeSegSortingOrderNo.AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
 FD_ProdTimeSegSegmentNo.AsInteger      := dmsConnector.NextSecondMaxNo('SOProductionTimeSegment', FD_ProdTimeSegSortingOrderNo.AsInteger) ;
end;

procedure TdmsSortOrder.cds_ProdInstructPackageWidthChange(Sender: TField);
begin
 With dmsSortOrder do
 Begin
  ds_SorOrdRow.OnDataChange := nil ;
  cds_SorOrdRowPPP.OnChange := nil ;
  Try
  cds_ProdInstructPackageWidth.OnChange := nil ;
  Try
  if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
  Begin
   if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;
   if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
    cds_SorOrdRowPPP.AsInteger  :=
    cds_ProdInstructPackageWidth.AsInteger * cds_ProdInstructPackageHeight.AsInteger ;
  End ;
  Finally
   cds_ProdInstructPackageWidth.OnChange  :=  cds_ProdInstructPackageWidthChange ;
  End ;
  Finally
   cds_SorOrdRowPPP.OnChange := cds_SorOrdRowPPPChange ;
   ds_SorOrdRow.OnDataChange := ds_SorOrdRowDataChange ;
  End ;
 End ;
end;

procedure TdmsSortOrder.cds_ProdInstructPackageHeightChange(
  Sender: TField);
begin
 With dmsSortOrder do
 Begin
  ds_SorOrdRow.OnDataChange := nil ;
  cds_SorOrdRowPPP.OnChange := nil ;
  Try
  cds_ProdInstructPackageHeight.OnChange := nil ;
  Try
  if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
  Begin
   if cds_SorOrdRow.State in [dsBrowse] then
    cds_SorOrdRow.Edit ;
   if (not cds_ProdInstructPackageWidth.IsNull) and (not cds_ProdInstructPackageHeight.IsNull) then
    cds_SorOrdRowPPP.AsInteger  :=
    cds_ProdInstructPackageWidth.AsInteger * cds_ProdInstructPackageHeight.AsInteger ;
  End ;
  Finally
   cds_ProdInstructPackageHeight.OnChange  :=  cds_ProdInstructPackageHeightChange ;
  End ;
  Finally
   cds_SorOrdRowPPP.OnChange := cds_SorOrdRowPPPChange ;
   ds_SorOrdRow.OnDataChange := ds_SorOrdRowDataChange ;
  End ;
 End ;
end;

procedure TdmsSortOrder.cds_SorOrdRowPPPChange(Sender: TField);
begin
// SetWidthAndHeightToZero(cds_SorOrdRowProdInstructNo.AsInteger) ;
end;

procedure TdmsSortOrder.SetWidthAndHeightToZero(const ProdInstructNo : Integer) ;
begin
 With dmsSortOrder do
 Begin
  cds_ProdInstructPackageHeight.OnChange   := nil ;
  cds_ProdInstructPackageWidth.OnChange    := nil ;
  Try
   if (cds_ProdInstruct.Active) and (cds_ProdInstruct.RecordCount > 0) then
   Begin
    if cds_ProdInstruct.State in [dsBrowse] then
    cds_ProdInstruct.Edit ;
    cds_ProdInstructPackageWidth.AsInteger  := 0 ;
    cds_ProdInstructPackageHeight.AsInteger := 0 ;
    cds_ProdInstruct.Post ;
   End ;

  Finally
   cds_ProdInstructPackageHeight.OnChange   := cds_ProdInstructPackageHeightChange ;
   cds_ProdInstructPackageWidth.OnChange    := cds_ProdInstructPackageWidthChange ;
  End ;
 End ;//With
end;

procedure TdmsSortOrder.cds_SortOrderProdTimeHourChange(Sender: TField);
begin
 if (cds_SortOrder.Active) and ((cds_SchedulerTaskStatusField.AsInteger = 0)
 or (cds_SchedulerTaskStatusField.AsInteger = 1)
 or (cds_SchedulerTaskStatusField.AsInteger = 2)
 or (cds_SchedulerTaskStatusField.AsInteger = 3)) then
 Begin
  if cds_SortOrderManualProdTime.AsInteger = 1 then
   cds_SortOrderRealProductionTime.AsFloat := cds_SortOrderProdTimeHour.AsFloat * 60 ;
 End ;
end;



procedure TdmsSortOrder.cds_SorOrdRowLengthSpecChange(Sender: TField);
Var rLength         : String ;
    ProductLengthNo : Integer ;
begin
 With dmsSortOrder do
 Begin
  cds_SorOrdRowLengthSpec.OnChange := nil ;
  Try
  Try
   rLength  := (Sender AS TField).AsString ;
   ProductLengthNo  := dmsSystem.GetProductLengthNoByUserLengthSpec(TRIM(rLength)) ;
   if ProductLengthNo > -1 then
   Begin
//    cds_OrderRowNominalLengthMM.AsFloat   := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    cds_SorOrdRowALMM.AsFloat              := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    cds_SorOrdRowProductLengthNo.AsInteger := ProductLengthNo ;
   End
    else
     Begin
      if ProductLengthNo = -2 then
      (Sender AS TField).AsString := '**N/A**' ;
      cds_SorOrdRowProductLengthNo.AsInteger := ProductLengthNo ;
     End ;
  Except
   //Error := True ;
  End ;

  Finally
   cds_SorOrdRowLengthSpec.OnChange := cds_SorOrdRowLengthSpecChange ;
  End ;
 End ;//With
end;

procedure TdmsSortOrder.OpenWorkOrder (const SortingOrderNo, ProductionUnitNo : Integer) ;
Var Save_Cursor                 : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// LockWindowUpdate(Self.Handle);
 Try

// if ThisUser.UserID = 8 then
//  cbVisaMeddelande.Visible := True ;
//   else
//    cbVisaMeddelande.Visible := False ;


 With dmsSortOrder, dm_PkgWorkOrder do
 Begin
  cds_UsedPkgs.DisableControls ;
  cds_NewPkgs.DisableControls ;
  cds_SORaw.DisableControls ;
  cds_SorOrdRow.DisableControls ;
  cds_SortOrder.DisableControls ;
  Try


  dmsSystem.cds_ProductLength.Active := False ;
  dmsSystem.cds_ProductLength.Active := True ;
  cds_producer.Active       := False ;
  cds_producer.Active       := True ;

  cds_ProductionUnit.Active := False ;
  cds_ProductionUnit.Active := True ;

 // dmsContact.cdsClient.Active:= True ;

  cds_SortOrder.Active    := False ;
  cds_SortOrder.Active    := True ;

  cds_SorOrdRow.Active    := False ;
  cds_SorOrdRow.Active    := True ;

  cds_Scheduler.Active:= False ;
  cds_Scheduler.ParamByName('ID').AsInteger := -1 ;
  cds_Scheduler.Active:= True ;

  if SortingOrderNo = -1 then
  Begin
   cds_Scheduler.Insert ;
   if cds_SchedulerResourceID.IsNull then
   cds_SchedulerResourceID.AsInteger:= ProductionUnitNo ;
   cds_Scheduler.Post ;

   cds_SortOrder.Insert ;
   cds_SortOrderSortingOrderNo.AsInteger      := cds_SchedulerID.AsInteger ;
   cds_SortOrder.Post ;
  End
  else
   Begin
    cds_Scheduler.Active:= False ;
    cds_Scheduler.ParamByName('ID').AsInteger := SortingOrderNo ;
    cds_Scheduler.Active:= True ;

    cds_SortOrder.Active:= False ;
    cds_SortOrder.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
    cds_SortOrder.Active:= True ;

    cds_ProductionUnit.Active:= False ;
    cds_ProductionUnit.ParamByName('ProducerNo').AsInteger:= cds_SchedulerVerkNo.AsInteger ;
    cds_ProductionUnit.Active:= True ;
   End ;

  cds_ProdInstruct.Active:= False ;
  cds_ProdInstruct.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
  cds_ProdInstruct.Active:= True ;

  cds_SORaw.Active        := False ;
  cds_SORaw.Active        := True ;

  cds_SOCngProd.Active    := False ;
  cds_SOCngProd.Active    := True ;

  cds_FeedBack.Active     := False ;
  cds_FeedBack.Active     := True ;


  cds_SOShift.Active      := True ;

  FD_ProdTimeSeg.Active   := False ;
  FD_ProdTimeSeg.Active   := True ;

//  SupplierCode := dmsContact.GetClientCode(cds_SchedulerVerkNo.AsInteger) ;

{  if cds_SortOrderTemplate.AsInteger = 1 then
  Self.Caption:= 'Mall : ' + cds_SortOrderTemplateName.AsString
  else
  Self.Caption:= 'Körorder nr : ' + cds_SortOrderSortingOrderNo.AsString ;

  SetTitles ; }

  if not cds_ProdInstruct.Active then
   cds_ProdInstruct.Active:= True ;

   cds_SOLayout.Active:= False ;
   cds_SOLayout.Active:= True ;


  RefreshNewAndUsedPkgs ;


  Finally
   cds_SORaw.EnableControls ;
   cds_UsedPkgs.EnableControls ;
   cds_NewPkgs.EnableControls ;
   cds_SorOrdRow.EnableControls ;
   cds_SortOrder.EnableControls ;
  End ;
 End ;// With dmsSortOrder do

  finally
//    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;
End ;

procedure TdmsSortOrder.RefreshNewAndUsedPkgs ;
Begin
 With dmsSortOrder do
 Begin
  dm_PkgWorkOrder.cds_NewPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_NewPkgs.ParamByName('SortingOrderNo').AsInteger  := cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_NewPkgs.Active:= True ;

  dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ;

  cds_SOoutput.Active := False ;
  cds_SOoutput.ParamByName('SortingOrderNo').AsInteger                 := cds_SortOrderSortingOrderNo.AsInteger ;
  cds_SOoutput.Active := True ;

  FD_RawSum.Active  := False ;
  FD_RawSum.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_RawSum.Active  := True ;

  FD_SortOrderFinSum.Active  := False ;
  FD_SortOrderFinSum.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_SortOrderFinSum.Active  := True ;

  FD_NewProduction.Active  := False ;
  FD_NewProduction.ParamByName('SortingOrderNo').AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
  FD_NewProduction.Active  := True ;
 End ;//With
End ;


procedure TdmsSortOrder.cds_SORawLengthSpecChange(Sender: TField);
Var rLength         : String ;
    ProductLengthNo : Integer ;
begin
 With dmsSortOrder do
 Begin
  cds_SORawLengthSpec.OnChange := nil ;
  Try
  Try
   rLength  := (Sender AS TField).AsString ;
   ProductLengthNo  := dmsSystem.GetProductLengthNoByUserLengthSpec(TRIM(rLength)) ;
   if ProductLengthNo > -1 then
   Begin
//    cds_OrderRowNominalLengthMM.AsFloat   := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    cds_SORawBookedALMM.AsFloat               := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    cds_SORawALMM.AsFloat                     := cds_SORawBookedALMM.AsFloat ;
    cds_SORawBookedProductLengthNo.AsInteger  := ProductLengthNo ;
   End
    else
     Begin
      if ProductLengthNo = -2 then
      (Sender AS TField).AsString := '**N/A**' ;
      cds_SORawBookedProductLengthNo.AsInteger := ProductLengthNo ;
     End ;
  Except
   //Error := True ;
  End ;

  Finally
   cds_SORawLengthSpec.OnChange := cds_SORawLengthSpecChange ;
  End ;
 End ;//With
end;

procedure TdmsSortOrder.cds_AOMallAfterInsert(DataSet: TDataSet);
begin
 cds_AOMallSortingOrderNo.AsInteger := cds_SortOrderSortingOrderNo.AsInteger ;
end;

procedure TdmsSortOrder.DeleteSortOrder(const SortingOrderNo : Integer;const DeleteBooking : Boolean) ;
Begin
 Try

 sq_DelSortOrder.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 sq_DelSortOrder.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('sq_DelSortOrder ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;

 if DeleteBooking then
 Begin
 Try
 sq_DeleteCX.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
 sq_DeleteCX.ExecSQL ;
 Except
  on E: eDatabaseError do
//  On E: Exception do
  Begin
   ShowMessage('sq_DeleteCX ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
   Raise ;
  End ;
 End ;
 End ;
End ;

procedure TdmsSortOrder.DataModuleDestroy(Sender: TObject);
begin
 if cds_Verk.Active then
  cds_Verk.Active  := False ;
end;


procedure TdmsSortOrder.cds_SorOrdRowAfterPost(DataSet: TDataSet);
begin
 if (cds_SORaw.Active) and (cds_SORaw.RecordCount > 0) then
 Begin
  if cds_SORaw.State in [dsBrowse] then
   cds_SORaw.Edit ;
  cds_SORawDateCreated.AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
  cds_SORaw.Post ;
 End ; 
end;

//Get plan Am1
function TdmsSortOrder.GetPlanAM1 : Double ;
Var RawMtrlNo : Integer ;
begin
 if cds_SORaw.Active then
 Begin
  if cds_SORaw.State in [dsEdit, dsInsert] then
  cds_SORaw.Post ;
// RawMtrlNo  := cds_SORawRawMtrlNo.AsInteger ;
  Result := 0 ;
  cds_SORaw.First ;
  While not cds_SORaw.Eof do
  Begin
   Result  := Result + cds_SORawM1.AsFloat ;
   cds_SORaw.Next ;
  End ;
 End ; 
// cds_SORaw.Locate('RawMtrlNo', RawMtrlNo, []) ;
end;

procedure TdmsSortOrder.CalcPreCalc ;
Var PlanAM1 : Double ;
Begin
 PlanAM1 := GetPlanAM1 ;
 if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;

 if (cds_SchedulerFeedSpeed.AsFloat > 0) then
 Begin
  if (cds_SchedulerPreCalcEfficiencyFactor.AsFloat > 0) then
  Begin
   cds_SchedulerPlannedProductionTime.AsFloat :=
   PlanAM1
   / (cds_SchedulerFeedSpeed.AsFloat
   * (cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)) ;
  End
  else
  ShowMessage('Verkningsgrad saknas') ;
 End
 else
 ShowMessage('Matningshastighet saknas') ;

 cds_SchedulerPlannedWorkingTime.AsFloat  :=  cds_SchedulerPlannedWorkingTime.AsFloat / 60 ;

 cds_SchedulerDuration.AsFloat  := cds_SchedulerPlannedWorkingTime.AsFloat + (cds_SchedulerPostningstid.AsFloat / 60) ; 

 if cds_Scheduler.State in [dsEdit, dsInsert] then
  cds_Scheduler.Post ;
End ;

procedure TdmsSortOrder.cds_VolResDtlAfterInsert(DataSet: TDataSet);
begin
 cds_VolResDtlReservationNo.AsInteger       := dmsConnector.NextMaxNo('Reservationsnr') ;
 cds_VolResDtlDateCreated.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(Now) ;
 cds_VolResDtlDateModified.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 cds_VolResDtlCreatedUser.AsInteger         := ThisUser.UserID ;
 cds_VolResDtlModifiedUser.AsInteger        := ThisUser.UserID ;
 cds_VolResDtlProductLengthNo.AsInteger     := -1 ;
// cds_VolResDtlClientNo.AsInteger            :=

end;

procedure TdmsSortOrder.CopyToCopyTo ;
Begin
 FDCopyTo.CopyDataSet(cds_SorOrdRow, [coAppend, coStructure]);
End ;

function TdmsSortOrder.ThereIsProductsWithPlanedSurface : Boolean ;
Var FDMemTable1 : TFDMemTable ;
Begin
 FDMemTable1 := TFDMemTable.Create(Self);
 FDMemTable1.Data := cds_SorOrdRow.Data ;
 Try
 Result                   := False ;
 FDMemTable1.Filter       := 'SurfacingNo <> 79' ;
 FDMemTable1.Filtered     := True ;
 FDMemTable1.First ;
 While not FDMemTable1.Eof do
 Begin
  Result  := True ;
  FDMemTable1.Next ;
 End ;

 Finally
  FDMemTable1.Free ;
 End ;
End ;

procedure TdmsSortOrder.cds_SortOrderRealStartTimeChange(Sender: TField);
Var YearWeekString,
    Year    : String ;
    WeekNo  : Integer ;
begin
 WeekNo:= WeekOf(cds_SchedulerStart.AsDateTime) ;
 if WeekNo < 10 then
  cds_SchedulerWeekNo.AsString := '0'+inttostr(WeekNo)
   else
    cds_SchedulerWeekNo.AsString:= inttostr(WeekOf(cds_SchedulerStart.AsDateTime)) ;

 cds_SchedulerYearNo.AsInteger:= YearOf(cds_SchedulerStart.AsDateTime) ;

 Year:= IntToStr(cds_SchedulerYearNo.AsInteger-2000) ;


 if WeekNo < 10 then
  YearWeekString  := Year + '0' + Inttostr(WeekNo)
   else
    YearWeekString  := Year + Inttostr(WeekNo) ;

 cds_SchedulerYearWeek.AsInteger  := StrToInt(YearWeekString) ;

// cds_SchedulerYearWeek.AsInteger:= StrToInt(Year + cds_SchedulerWeekNo.AsString) ;
end;

procedure TdmsSortOrder.Populate_cds_StoppSum (StartPeriod, EndPeriod : TSQLTimeStamp; const Orsak, TimeUnit, NoOfTop, VisaKortStopp : Integer ) ;
Var Old_cds_Stopps_Filter : String ;
    Save_Cursor           : TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 FD_StoppSum.DisableControls ;
 Try
  if Orsak = 0 then
  Begin
   FD_StoppSum.SQL.Text := FD_StoppSumAntal.SQL.Text ;
  End
  else
  Begin
   FD_StoppSum.SQL.Text := FD_StoppSumTid.SQL.Text ;
  End ;

  FD_StoppSum.Active := False ;
  FD_StoppSum.ParamByName('StoppStart').AsSQLTimeStamp  := StartPeriod ;
  FD_StoppSum.ParamByName('StoppSlut').AsSQLTimeStamp   := EndPeriod ;
  FD_StoppSum.ParamByName('TimeUnit').AsInteger         := TimeUnit ;
  FD_StoppSum.ParamByName('VisaKortStopp').AsInteger    := VisaKortStopp ;

  if NoOfTop > 0 then
  FD_StoppSum.SQL.Strings[0]  := 'Select TOP ' + IntToStr(NoOfTop) ;
  FD_StoppSum.Active := True ;

//  FD_StoppSum.SQL.SaveToFile('FD_StoppSum.txt');
 Finally
  FD_StoppSum.EnableControls ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

End ;

Procedure TdmsSortOrder.CopyAORow(const SortingOrderNo, SortingOrderRowNo, ProductLengthNo : Integer) ;
Begin
 mCopyLengths.First ;
 While not mCopyLengths.Eof do
 Begin
  Try
  sp_stp_CopyAORow.ParamByName('@SortingOrderNo').AsInteger     := SortingOrderNo ;
  sp_stp_CopyAORow.ParamByName('@SortingOrderRowNo').AsInteger  := SortingOrderRowNo ;
  sp_stp_CopyAORow.ParamByName('@ProductLengthNo').AsInteger    := mCopyLengthsProductLengthNo.AsInteger ;
  sp_stp_CopyAORow.ParamByName('@CreatedUser').AsInteger        := ThisUser.UserID ;
  sp_stp_CopyAORow.ParamByName('@LengthSpec').AsString          := mCopyLengthsLengthSpec.AsString ;
  sp_stp_CopyAORow.ExecProc ;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('sp_stp_CopyAORow ' + E.Message) ;
    Raise ;
   End ;
  End ;
  mCopyLengths.Next ;
 End ;
End ;

Procedure TdmsSortOrder.Raw(const SortingOrderNo, BookingNo : Integer) ;
Begin
  Try
  sp_Raw.ParamByName('@SortingOrderNo').AsInteger   := SortingOrderNo ;
  sp_Raw.ParamByName('@BookingNo').AsInteger        := BookingNo ;
  sp_Raw.ExecProc ;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('sp_Raw ' + E.Message) ;
    Raise ;
   End ;
  End ;
End ;

Procedure TdmsSortOrder.AddBookingToRun(const ID, Add_ID : Integer) ;
Begin
  Try
  sp_SortingOrderRowCX_add.ParamByName('@ID').AsInteger     := ID ;
  sp_SortingOrderRowCX_add.ParamByName('@Add_ID').AsInteger := Add_ID ;
  sp_SortingOrderRowCX_add.ExecProc ;
  Except
   on E: eDatabaseError do
   Begin
    ShowMessage('sp_SortingOrderRowCX_add ' + E.Message) ;
    Raise ;
   End ;
  End ;
End ;

procedure TdmsSortOrder.mCopyLengthsLengthSpecChange(Sender: TField);
Var rLength         : String ;
    ProductLengthNo : Integer ;
begin
 With dmsSortOrder do
 Begin
  mCopyLengthsLengthSpec.OnChange := nil ;
  Try
  Try
   rLength  := (Sender AS TField).AsString ;
   ProductLengthNo  := dmsSystem.GetProductLengthNoByUserLengthSpec(TRIM(rLength)) ;
   if ProductLengthNo > -1 then
   Begin
//    cds_OrderRowNominalLengthMM.AsFloat   := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    mCopyLengthsALMM.AsFloat              := dmsSystem.GetALMMByProductLengthNo(ProductLengthNo) ;
    mCopyLengthsProductLengthNo.AsInteger := ProductLengthNo ;
   End
    else
     Begin
      if ProductLengthNo = -2 then
      (Sender AS TField).AsString := '**N/A**' ;
      mCopyLengthsProductLengthNo.AsInteger := ProductLengthNo ;
     End ;
  Except
   //Error := True ;
  End ;

  Finally
   mCopyLengthsLengthSpec.OnChange := mCopyLengthsLengthSpecChange ;
  End ;
 End ;//With
end;

procedure TdmsSortOrder.cds_SchedulerAfterInsert(DataSet: TDataSet);
begin
 cds_SchedulerID.AsInteger                    := dmsConnector.NextMaxNo('SortingOrder') ;
// cds_SchedulerBookingNo.AsInteger             := cds_BookingMasterBookingNo.AsInteger ;
 cds_SchedulerUserID.AsInteger                := ThisUser.userid ;
 cds_SchedulerPostningstid.AsFloat            := 0 ;
 cds_SchedulerPlannedProductionTime.AsFloat   := 0 ;
 cds_SchedulerPlannedWorkingTime.AsFloat      := 0 ;
 cds_SchedulerDateCreated.AsSQLTimeStamp      := DateTimeToSqlTimeStamp(Now) ;
// cds_SchedulerCaption.AsString                := cds_BookingHdrProdukt.AsString ;
 cds_SchedulerFixedDate.AsInteger             := 1 ;
 cds_SchedulerTaskStatusField.AsInteger       := 0 ;


 if cds_SchedulerOwnerNo.IsNull then
 cds_SchedulerOwnerNo.AsInteger               := Thisuser.CompanyNo ;

 cds_SchedulerPlannedProductionTime.AsInteger := 0 ;
 cds_SchedulerStart.AsSQLTimeStamp            := DateTimeToSQLTimeStamp(Now) ;

 if cds_SchedulerVerkNo.IsNull then
 cds_SchedulerVerkNo.AsInteger                := Thisuser.CompanyNo ;

 cds_SchedulerFixedDate.AsInteger             := 0 ; //Lås start-produktionstid
 cds_SchedulerTaskStatusField.AsInteger       := 0 ;
end;

procedure TdmsSortOrder.cds_SchedulerBeforePost(DataSet: TDataSet);
Var YearWeekString,
    Year                : String ;
    WeekNo              : Integer ;
    AYear, AWeekOfYear  : Word;

{    FDayOfWeek: Word ;
    sYear : String ;
    Start : TDateTime ; }
begin
 CalcRunTime_For_cds_Scheduler ;
{ FDayOfWeek   := 1 ;
 AYear        := StrToIntDef('20' + Copy(cds_SchedulerYearWeek.AsString, 1,2),0) ;
 AWeekOfYear  := StrToIntDef(Copy(cds_SchedulerYearWeek.AsString, 3,2),0) ;
 Start        := EncodeDateWeek(AYear, AWeekOfYear, FDayOfWeek) ;
 cds_SchedulerStart.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Start) ; }

 WeekNo:= WeekOf(cds_SchedulerStart.AsDateTime) ;

 if WeekNo < 10 then
  cds_SchedulerWeekNo.AsString := '0' + inttostr(WeekNo)
   else
    cds_SchedulerWeekNo.AsString:= inttostr(WeekOf(cds_SchedulerStart.AsDateTime)) ;

 cds_SchedulerYearNo.AsInteger    := YearOf(cds_SchedulerStart.AsDateTime) ;
 Year                             := IntToStr(cds_SchedulerYearNo.AsInteger - 2000) ;


 if WeekNo < 10 then
  YearWeekString  := Year + '0' + Inttostr(WeekNo)
   else
    YearWeekString  := Year + Inttostr(WeekNo) ;

 cds_SchedulerYearWeek.AsInteger  := StrToInt(YearWeekString) ;


// cds_SchedulerYearWeek.AsInteger  := StrToInt(Year + cds_SchedulerWeekNo.AsString) ;


{ if cds_SortOrder.State in [dsBrowse] then
  cds_SortOrder.Edit ;
 cds_SortOrderStatus.AsInteger            := cds_SchedulerTaskStatusField.AsInteger ;
 cds_SortOrderOwnerNo.AsInteger           := cds_SchedulerOwnerNo.AsInteger ;
 cds_SortOrderProducerNo.AsInteger        := cds_SchedulerVerkNo.AsInteger ;
 cds_SortOrderProductionUnitNo.AsInteger  := cds_SchedulerResourceID.AsInteger ;
 }

end;

procedure TdmsSortOrder.cds_SchedulerTaskStatusFieldChange(Sender: TField);
Var InfoList    : TStrings ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 InfoList:= TStringList.Create ;
 Try
 if cds_SchedulerTaskStatusField.AsInteger = 1 then
 Begin
  MakeControllOfSortingOrderRows(InfoList) ;
  if InfoList.Count > 0 then
  Begin
   dmsSystem.ShowMemo(InfoList) ;
   if MessageDlg('Det finns varningar, vill du ändå sätt status till "klar att köra"?',
   mtConfirmation, [mbYes, mbNo], 0) = mrNo then
   cds_SchedulerTaskStatusField.AsInteger  := 0 ;

  End ;
 End ;
 finally
  InfoList.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TdmsSortOrder.cds_SchedulerYearWeekChange(Sender: TField);
Var AYear, AWeekOfYear: Word;
    FDayOfWeek: Word ;
    sYear : String ;
    Start : TDateTime ;
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

procedure TdmsSortOrder.CalcRunTime_For_cds_Scheduler ;
Begin
 if cds_Scheduler.State in [dsBrowse] then
  cds_Scheduler.Edit ;

 if ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) > 0 then

 cds_SchedulerPlannedWorkingTime.AsFloat  :=
 GetPlanAM1 /
 ((cds_SchedulerPreCalcEfficiencyFactor.AsFloat/100)
 * cds_SchedulerFeedSpeed.AsFloat) ;

 cds_SchedulerPlannedWorkingTime.AsFloat  :=  cds_SchedulerPlannedWorkingTime.AsFloat / 60 ;

 cds_SchedulerDuration.AsFloat  := cds_SchedulerPlannedWorkingTime.AsFloat + (cds_SchedulerPostningstid.AsFloat / 60) ;
End ;


procedure TdmsSortOrder.cds_SORawCalcFields(DataSet: TDataSet);
begin
 if (cds_SORawNT.AsFloat * cds_SORawNB.AsFloat) > 0 then
 Begin
  if cds_SORawMCClassNo.AsInteger = 1 then
  cds_SORawM1.AsFloat := ((1/(cds_SORawNT.AsFloat / 1000) * 1/(cds_SORawNB.AsFloat / 1000))
  * (cds_SORawPlannedOutputNM3.AsFloat * (cds_SORawUtfall2.AsFloat / 100) ))
  * cds_SORawAntalLamellerUt.AsInteger
  else
  cds_SORawM1.AsFloat := ((1/(cds_SORawNT.AsFloat / 1000) * 1/(cds_SORawNB.AsFloat / 1000))
  * (cds_SORawPlannedOutputNM3.AsFloat * (cds_SORawUtfall2.AsFloat / 100) )) ;
 End ;
end;

procedure TdmsSortOrder.cds_SORawUtfall2Change(Sender: TField);
begin
 if cds_SORawUtfall2.AsFloat > 0 then
 cds_SORawBookedNM3.AsFloat  :=
 cds_SORawPlannedOutputNM3.AsFloat /
  (cds_SORawUtfall2.AsFloat/100)
  else
  cds_SORawBookedNM3.AsFloat  := 0 ;
end;

procedure TdmsSortOrder.cds_SORawPlannedOutputNM3Change(Sender: TField);
begin
 if cds_SORawUtfall2.AsFloat > 0 then
 cds_SORawBookedNM3.AsFloat  :=
 cds_SORawPlannedOutputNM3.AsFloat /
  (cds_SORawUtfall2.AsFloat/100)
  else
  cds_SORawBookedNM3.AsFloat  := 0 ;
end;

procedure TdmsSortOrder.cds_SORawOrderNoChange(Sender: TField);
begin
 cds_SORawPricePerNM3.AsFloat := dmsSystem.GetOrderPrice(cds_SORawOrderNo.AsInteger,
 cds_SORawBookedProductNo.AsInteger, cds_SORawBookedALMM.AsFloat) ;
end;

procedure TdmsSortOrder.Add_RawMtrlBookedLink ;
Begin
 cds_RawMtrlBookedLink.Active := False ;
 cds_RawMtrlBookedLink.ParamByName('BookingNo').AsInteger         := -1 ;
 cds_RawMtrlBookedLink.ParamByName('sspNo').AsInteger             := -1 ;
 cds_RawMtrlBookedLink.ParamByName('ID').AsInteger                := cds_SchedulerID.AsInteger ;
 cds_RawMtrlBookedLink.ParamByName('SortingOrderRowNo').AsInteger := -1 ;
 cds_RawMtrlBookedLink.Active := True ;
 Try
 if cds_RawMtrlBookedLink.Eof then
 Begin
  cds_RawMtrlBookedLink.Insert ;
  cds_RawMtrlBookedLinkSortingOrderNo.AsInteger     := cds_SchedulerID.AsInteger ;
  cds_RawMtrlBookedLinkBookingNo.AsInteger          := -1 ;
  cds_RawMtrlBookedLinksspNo.AsInteger              := -1 ;
  cds_RawMtrlBookedLinkSortingOrderRowNo.AsInteger  := -1 ;
  cds_RawMtrlBookedLinkOldBookingNo.AsInteger       := cds_SchedulerID.AsInteger ;
  cds_RawMtrlBookedLink.Post ;
  if cds_RawMtrlBookedLink.ChangeCount > 0 then
  Begin
   cds_RawMtrlBookedLink.ApplyUpdates(0) ;
   cds_RawMtrlBookedLink.CommitUpdates ;
  End ;
 End ;
 Finally
  cds_RawMtrlBookedLink.Active := False ;
 End ;
End ;


procedure TdmsSortOrder.cds_SortOrderVP_ProductCodePrefixChange(
  Sender: TField);
begin
 UpdateVP_ProductCodePrefix ;
end;

procedure TdmsSortOrder.UppdateraKontraktsPris ;
begin
 cds_SORaw.First ;
 While not cds_SORaw.Eof do
 Begin
  if not cds_SORawID.IsNull then
  Begin
   cds_SORaw.Edit ;
   cds_SORawPricePerNM3.AsFloat := dmsSystem.GetOrderPrice(cds_SORawOrderNo.AsInteger,
   cds_SORawBookedProductNo.AsInteger, cds_SORawBookedALMM.AsFloat) ;
   cds_SORaw.Post ;
  End ;
  cds_SORaw.Next ;
 End ;
 if cds_SORaw.ChangeCount > 0 then
 Begin
  cds_SORaw.ApplyUpdates(0) ;
  cds_SORaw.CommitUpdates ;
 End ;
end;

procedure TdmsSortOrder.Init_cds_uapCity ;
Begin
 cds_uapCity.Active  := False ;
// cds_uapCity.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_uapCity.Active  := True ;
end ;

procedure TdmsSortOrder.GetKassationStycketal ;
Begin
 With dm_Vis_Vida do
 Begin
 cds_SOoutput.Filter    := 'ProductNo = -1' ;
 cds_SOoutput.Filtered  := True ;
 Try
 if (FDm_Settings.Active) and (FDm_Settings.RecordCount > 0) then
 Begin
  if FDm_Settings.State in [dsBrowse] then
  FDm_Settings.Edit ;
  FDm_SettingsKassationStyck.AsInteger := cds_SOoutputSTYCK.AsInteger ;
  FDm_Settings.Post ;
 End ;

 Finally
 cds_SOoutput.Filtered  := False ;
 End ;
 End ;//With
End ;

Function TdmsSortOrder.GetAT (const ProductNo : Integer) : Double ;
Begin
 sq_GetProductDesc.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetProductDesc.Active := True ;
 Try
 if not sq_GetProductDesc.Eof then
  Result          := sq_GetProductDescActualThicknessMM.AsFloat
 else
  Result          := 0 ;
 Finally
  sq_GetProductDesc.Active  := False ;
 End ;
End ;

Function TdmsSortOrder.GetAB (const ProductNo : Integer) : Double ;
Begin
 sq_GetProductDesc.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetProductDesc.Active := True ;
 Try
 if not sq_GetProductDesc.Eof then
  Result          := sq_GetProductDescActualWidthMM.AsFloat
 else
  Result          := 0 ;
 Finally
  sq_GetProductDesc.Active  := False ;
 End ;
End ;


procedure TdmsSortOrder.cds_SOoutputAfterOpen(DataSet: TDataSet);
begin
 GetKassationStycketal ;
end;

end.
