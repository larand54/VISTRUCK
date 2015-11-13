unit dms_Vis_Vida;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.DApt.Intf, kbmMemTable,
  FireDAC.Comp.Client, DB, FireDAC.Comp.DataSet, VidaUser,
  VidaType, Dialogs,
  Forms, Controls, SqlTimSt, VidaConst, FireDAC.Stan.Async, FireDAC.DApt,
  Variants, siComp, siLngLnk ;

type
 TAmbiguityEventII = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    var LIPNo : Integer;
    var Status : Integer) of object;
    
  Tdm_Vis_Vida = class(TDataModule)
    cds_SortOrderList: TFDQuery;
    cds_SortOrderListSortingOrderNo: TIntegerField;
    cds_SortOrderListRegPointNo: TIntegerField;
    cds_SortOrderListMtpunkt: TStringField;
    cds_SortOrderListFrdigvara: TStringField;
    cds_SortOrderListRvara: TStringField;
    ds_SorOrdRow: TDataSource;
    ds_SORaw: TDataSource;
    cds_SorOrdRow: TFDQuery;
    cds_SorOrdRowKvalitet: TStringField;
    cds_SorOrdRowTrslag: TStringField;
    cds_SorOrdRowUtfrande: TStringField;
    cds_SorOrdRowIMP: TStringField;
    cds_SorOrdRowAT: TFloatField;
    cds_SorOrdRowAB: TFloatField;
    cds_SorOrdRowNT: TFloatField;
    cds_SorOrdRowNB: TFloatField;
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
    cds_SORawPricePerNM3: TBCDField;
    ds_NewPkgs: TDataSource;
    ds_UsedPkgs: TDataSource;
    cds_UsedPkgs: TFDQuery;
    cds_UsedPkgsPAKETNR: TIntegerField;
    cds_UsedPkgsLEVKOD: TStringField;
    cds_UsedPkgsPRODUKT: TStringField;
    cds_UsedPkgsANTPERLNGD: TStringField;
    cds_UsedPkgsAM3: TFloatField;
    cds_UsedPkgsSTYCK: TIntegerField;
    cds_UsedPkgsAM1: TFloatField;
    cds_UsedPkgsNM3: TFloatField;
    cds_UsedPkgsPackageTypeNo: TIntegerField;
    cds_UsedPkgsLIPNo: TIntegerField;
    cds_UsedPkgsLager: TStringField;
    cds_UsedPkgsProductNo: TIntegerField;
    cds_UsedPkgsMAXLENGTH: TFloatField;
    cds_UsedPkgsOldPackageNo: TIntegerField;
    cds_UsedPkgsOldSupplierCode: TStringField;
    cds_UsedPkgsOldPackageTypeNo: TIntegerField;
    cds_UsedPkgsRegistrerad: TSQLTimeStampField;
    cds_UsedPkgsSortingOrderNo: TIntegerField;
    cds_UsedPkgsMFBM: TFloatField;
    cds_NewPkgs: TFDQuery;
    cds_NewPkgsPackageNo: TIntegerField;
    cds_NewPkgsSUPPLIERCODE: TStringField;
    cds_NewPkgsPRODUKT: TStringField;
    cds_NewPkgsANTPERLNGD: TStringField;
    cds_NewPkgsAM3: TFloatField;
    cds_NewPkgsSTYCK: TIntegerField;
    cds_NewPkgsAM1: TFloatField;
    cds_NewPkgsNM3: TFloatField;
    cds_NewPkgsSortingOrderNo: TIntegerField;
    cds_NewPkgsSortingOrderRowNo: TIntegerField;
    cds_NewPkgsPackageTypeNo: TIntegerField;
    cds_NewPkgsLIPNo: TIntegerField;
    cds_NewPkgsMFBM: TFloatField;
    cds_NewPkgsStatus: TIntegerField;
    cds_NewPkgsOLDLIPNo: TIntegerField;
    cds_NewPkgsOLDMCClassNo: TIntegerField;
    cds_NewPkgsMAXLENGTH: TFloatField;
    cds_NewPkgsMAXProductLengthNo: TIntegerField;
    cds_NewPkgsVaruVarde: TFloatField;
    cds_NewPkgsPris: TBCDField;
    cds_NewPkgsPrice_SEKPerNM3: TBCDField;
    cds_NewPkgsPriceListNo: TIntegerField;
    cds_NewPkgsProductNo: TIntegerField;
    cds_NewPkgsPkgStatus: TIntegerField;
    cds_NewPkgsRegistrerad: TSQLTimeStampField;
    FDm_PaRegPkgs: TFDMemTable;
    FDm_PaRegPkgsPaketNr: TIntegerField;
    FDm_PaRegPkgsPrefix: TStringField;
    FDm_PaRegPkgsProdukt: TStringField;
    FDm_PaRegPkgsStyckPerLangd: TStringField;
    FDm_PaRegPkgsAM3: TFloatField;
    FDm_PaRegPkgsTotaltStyck: TIntegerField;
    FDm_PaRegPkgsAM1: TFloatField;
    FDm_PaRegPkgsNM3: TFloatField;
    FDm_PaRegPkgsStatus: TIntegerField;
    FDm_PaRegPkgsOperationStatus: TIntegerField;
    FDm_PaRegPkgsLager: TStringField;
    FDm_AvRegPkgs: TFDMemTable;
    FDm_AvRegPkgsPaketNr: TIntegerField;
    FDm_AvRegPkgsPrefix: TStringField;
    FDm_AvRegPkgsProdukt: TStringField;
    FDm_AvRegPkgsStyckPerLangd: TStringField;
    FDm_AvRegPkgsAM3: TFloatField;
    FDm_AvRegPkgsTotaltStyck: TIntegerField;
    FDm_AvRegPkgsAM1: TFloatField;
    FDm_AvRegPkgsNM3: TFloatField;
    FDm_AvRegPkgsStatus: TIntegerField;
    FDm_AvRegPkgsOperationStatus: TIntegerField;
    FDm_AvRegPkgsLager: TStringField;
    FDm_AvRegPkgsPaketnrAttAvReg: TIntegerField;
    FDm_AvRegPkgsPrefixAttAvReg: TStringField;
    FDm_AvRegPkgsRegPointNo: TIntegerField;
    FDm_AvRegPkgsLIPNoAttAvReg: TIntegerField;
    FDm_AvRegPkgsSortingOrderNo: TIntegerField;
    FDm_AvRegPkgsPackageTypeNo: TIntegerField;
    FDm_AvRegPkgsProducerNo: TIntegerField;
    FDm_AvRegPkgsOwnerNo: TIntegerField;
    FDm_AvRegPkgsLIPNo: TIntegerField;
    FDm_AvRegPkgsLengthSpecNo: TIntegerField;
    FDm_AvRegPkgsSurfacingNo: TIntegerField;
    FDm_AvRegPkgsNT: TFloatField;
    sp_vis_AvRegPkg: TFDStoredProc;
    FDq_GetLIPAttAvRegMot: TFDQuery;
    FDq_GetLIPAttAvRegMotSupplierCode: TStringField;
    FDq_GetLIPAttAvRegMotLIPGroupNo: TIntegerField;
    FDq_GetLIPAttAvRegMotInvenType: TIntegerField;
    FDq_GetLIPAttAvRegMotLIPNo: TIntegerField;
    FDq_GetLIPAttAvRegMotAvReg: TIntegerField;
    FDq_GetLIPAttAvRegMotPkgRealLIPNo: TIntegerField;
    FDq_GetAvRegPkgNo: TFDQuery;
    FDq_GetAvRegPkgNoPackageNo: TIntegerField;
    FDq_GetAvRegPkgNoSupplierCode: TStringField;
    FDq_GetAvRegPkgNoLogicalInventoryPointNo: TIntegerField;
    sq_OneUniquePkg: TFDQuery;
    sq_OneUniquePkgPRODUCT: TStringField;
    sq_OneUniquePkgPACKAGENO: TIntegerField;
    sq_OneUniquePkgPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgSUPP_CODE: TStringField;
    sq_OneUniquePkgM3_NET: TFloatField;
    sq_OneUniquePkgPCS: TIntegerField;
    sq_OneUniquePkgM3_NOM: TFloatField;
    sq_OneUniquePkgKVM: TFloatField;
    sq_OneUniquePkgLOPM: TFloatField;
    sq_OneUniquePkgPRODUCTNO: TIntegerField;
    sq_OneUniquePkgINVENTORY: TStringField;
    sq_OneUniquePkgONSTICKS: TIntegerField;
    sq_OneUniquePkgPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgOWNER: TStringField;
    sq_OneUniquePkgOWNERNO: TIntegerField;
    sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgBAR_CODE: TStringField;
    sq_OneUniquePkgBARCODE_ID: TIntegerField;
    sq_OneUniquePkgGRADE_STAMP: TStringField;
    sq_OneUniquePkgGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgWRAP_TYPE: TStringField;
    sq_OneUniquePkgWRAPTYPENO: TIntegerField;
    sq_OneUniquePkgSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgMCClassNo: TIntegerField;
    sq_OneUniquePkgExLog: TStringField;
    sq_OneUniquePkgTypeOfLog: TIntegerField;
    sq_OneUniquePkgproductgroupno: TIntegerField;
    sq_OneUniquePkgPIP: TIntegerField;
    sq_OneUniquePkgPcsPerBundle: TIntegerField;
    sq_OneUniquePkgBundlesPerPkg: TIntegerField;
    sq_OneUniquePkgOLDLIPNo: TIntegerField;
    sq_OneUniquePkgOLDMCClassNo: TIntegerField;
    sq_OneUniquePkgNTMM: TFloatField;
    sq_OneUniquePkgNBMM: TFloatField;
    sq_OneUniquePkgATMM: TFloatField;
    sq_OneUniquePkgABMM: TFloatField;
    sq_OneUniquePkgSpeciesNo: TIntegerField;
    sq_OneUniquePkgSurfacingNo: TIntegerField;
    sq_OneUniquePkgIMPNo: TIntegerField;
    sq_OneUniquePkgGradeNo: TIntegerField;
    sp_NewSplitPkg: TFDStoredProc;
    sp_SOUpdOldSplit: TFDStoredProc;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    mtLoadPackagesProductNo: TIntegerField;
    mtLoadPackagesINVENTORY: TStringField;
    mtLoadPackagesON_STICKS: TIntegerField;
    mtLoadPackagesPCS_PER_LENGTH: TStringField;
    mtLoadPackagesOWNER: TStringField;
    mtLoadPackagesOWNERNO: TIntegerField;
    mtLoadPackagesLOG_INVENTORY_NO: TIntegerField;
    mtLoadPackagesBAR_CODE: TStringField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADE_STAMP: TStringField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadPackagesWRAP_TYPE: TStringField;
    mtLoadPackagesWRAPTYPENO: TIntegerField;
    mtLoadPackagesSUPPLIERNO: TIntegerField;
    mtLoadPackagesOld_PackageTypeNo: TIntegerField;
    mtLoadPackagesMCClassNo: TIntegerField;
    mtLoadPackagesExLog: TStringField;
    mtLoadPackagesTypeOfLog: TIntegerField;
    mtLoadPackagesProductGroupNo: TIntegerField;
    mtLoadPackagesPIP: TIntegerField;
    mtLoadPackagesPcsPerBundle: TIntegerField;
    mtLoadPackagesBundlesPerPkg: TIntegerField;
    mtLoadPackagesOldLIPNo: TIntegerField;
    mtLoadPackagesOLDMCClassNo: TIntegerField;
    mtLoadPackagesNTMM: TFloatField;
    mtLoadPackagesNBMM: TFloatField;
    mtLoadPackagesAT: TFloatField;
    mtLoadPackagesAB: TFloatField;
    mtLoadPackagesSpeciesNo: TIntegerField;
    mtLoadPackagesSurfacingNo: TIntegerField;
    mtLoadPackagesIMPNo: TIntegerField;
    mtLoadPackagesGradeNo: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesOLDProductNo: TIntegerField;
    sp_RegretDeReg: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    cdsProdLength: TFDQuery;
    cdsProdLengthAM3: TBCDField;
    cdsProdLengthAM1: TBCDField;
    cdsProdLengthGroupNo: TIntegerField;
    cdsProdLengthSTYCK: TIntegerField;
    cdsProdLengthproductLengthno: TIntegerField;
    cdsProdLengthALMM: TFloatField;
    cdsProdLengthNLMM: TFloatField;
    cdsProdLengthFOT: TFloatField;
    cdsProdLengthTUM: TStringField;
    cdsProdLengthPET: TIntegerField;
    cdsProdLengthFJ: TIntegerField;
    sp_NewPackageType: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    cds_UsedPkgsProducerNo: TIntegerField;
    cds_UsedPkgsProductionUnitNo: TIntegerField;
    cds_UsedPkgsOwnerNo: TIntegerField;
    mtPcsPerLength: TkbmMemTable;
    mtPcsPerLengthProductLengthNo: TIntegerField;
    mtPcsPerLengthProductNo: TIntegerField;
    mtPcsPerLengthNoOfPieces: TIntegerField;
    mtPcsPerLengthUserID: TIntegerField;
    mtPcsPerLengthALMM: TFloatField;
    sp_PackageTypesPackageTypeNo: TIntegerField;
    cds_PksByInventoryPlaceIIII: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    cds_PksByInventoryPlaceIIIIStatus: TIntegerField;
    cds_PksByInventoryPlaceIIIILager: TStringField;
    cds_PksByInventoryPlaceIIIILIPNo: TIntegerField;
    ds_PksByInventoryPlaceIIII: TDataSource;
    FDm_AvRegPkgsPackageTypeNoAttAvReg: TIntegerField;
    sp_AngraSplitPkg: TFDStoredProc;
    FDm_Settings: TFDMemTable;
    FDm_SettingsOwnerNo: TIntegerField;
    FDm_SettingsSupplierNo: TIntegerField;
    FDm_SettingsSortingOrderNo: TIntegerField;
    FDm_SettingsProductInRun: TIntegerField;
    cds_PksByInventoryPlaceIIIIIncludedInRun: TStringField;
    cds_PksByInventoryPlaceIIIIInInventory: TIntegerField;
    FDm_SettingsOwnInventory: TIntegerField;
    cds_PksByInventoryPlaceIIIIOwnerNo: TIntegerField;
    sp_Pkg_Res: TFDStoredProc;
    sp_Delete_Res_Pkgs: TFDStoredProc;
    sp_lencolpcspkgtypeno: TFDStoredProc;
    sq_GetPkgPos: TFDQuery;
    sq_GetPkgPosClientCode: TStringField;
    sq_GetPkgPosPktNrLevKod: TStringField;
    sq_GetPkgPosPaketNoPos: TIntegerField;
    sq_GetPkgPosPaketNoLength: TIntegerField;
    sq_GetPkgPosSupplierCodePos: TIntegerField;
    sq_GetPkgPosSupplierCodeLength: TIntegerField;
    sq_GetPkgPrefix: TFDQuery;
    sq_GetPkgPrefixPkgPrefix: TStringField;
    FDm_AvRegPkgsAvRegistreratOK: TIntegerField;
    FDm_SelectPkgNo: TFDMemTable;
    FDm_SelectPkgNoPaketnr: TIntegerField;
    FDm_SelectPkgNoPrefix: TStringField;
    FDm_SelectPkgNoStyckPerLangd: TStringField;
    FDm_SelectPkgNoAM3: TFloatField;
    FDm_SelectPkgNoStyck: TIntegerField;
    FDm_SelectPkgNoNoOfLengths: TIntegerField;
    FDm_SelectPkgNoProductNo: TIntegerField;
    FDm_SelectPkgNoMarkerad: TIntegerField;
    FDm_SelectPkgNoPackageTypeNo: TIntegerField;
    FDm_SelectPkgNoLIPNo: TIntegerField;
    FDm_SelectPkgNoSpeciesNo: TIntegerField;
    FDm_SelectPkgNoSurfacingNo: TIntegerField;
    FDm_SelectPkgNoGradeNo: TIntegerField;
    FDm_SelectPkgNoIMPNo: TIntegerField;
    FDm_SelectPkgNoAT: TFloatField;
    FDm_SelectPkgNoAB: TFloatField;
    cds_ProdInLager: TFDQuery;
    cds_ProdInLagerProductDisplayName: TStringField;
    cds_ProdInLagerProductNo: TIntegerField;
    FDm_SelectPkgNoLager: TStringField;
    FDm_SelectPkgNoRegistrerat: TSQLTimeStampField;
    FDm_SettingsProducerNo: TIntegerField;
    cds_UsedPkgsLengthSpecNo: TIntegerField;
    FDm_AvRegPkgsOriginalPaketnr: TIntegerField;
    FDm_AvRegPkgsOriginalPrefix: TStringField;
    cds_UsedPkgsPkgNoInvCount: TIntegerField;
    cds_UsedPkgsPrefixInvCount: TStringField;
    spAccessRights: TFDStoredProc;
    ds_Prefix: TDataSource;
    sq_Prefix: TFDQuery;
    sq_PrefixClientCode: TStringField;
    sq_PrefixClientName: TStringField;
    sq_PrefixClientNo: TIntegerField;
    FDm_SettingsRegPointNo: TIntegerField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    ds_RegPoint: TDataSource;
    FD_SortingOrder: TFDQuery;
    FD_SortingOrderProducerNo: TIntegerField;
    FD_SortingOrderOwnerNo: TIntegerField;
    FD_SortingOrderSortingOrderNo: TIntegerField;
    FD_SortingOrderRegPointNo: TIntegerField;
    FDm_SettingsPIPNo: TIntegerField;
    cds_SortOrderListPIPNo: TIntegerField;
    FD_SortingOrderPIPNo: TIntegerField;
    cds_PksByInventoryPlaceIIIIPIPNo: TIntegerField;
    FDm_SettingsVisaAllaAvRegPkt: TIntegerField;
    FDm_AvRegPkgsRegistrerad: TDateTimeField;
    cds_SORawBookedNM3: TBCDField;
    FDm_SettingsKassationStyck: TIntegerField;
    dm_Settings: TDataSource;
    cds_PkgInfo: TFDQuery;
    cds_PkgInfoPaketNr: TIntegerField;
    cds_PkgInfoPrefix: TStringField;
    cds_PkgInfoProdukt: TStringField;
    cds_PkgInfoLngd: TStringField;
    cds_PkgInfoFinnsILager: TStringField;
    cds_PkgInfoRttLager: TStringField;
    cds_PkgInfoRttgare: TStringField;
    cds_PkgInfogare: TStringField;
    cds_PkgInfoLagerstatus: TStringField;
    cds_PkgInfoRttDimension: TStringField;
    cds_PkgInfoAvregistrerat: TStringField;
    cds_PkgInfoProductNo: TIntegerField;
    cds_PkgInfoLIPNo: TIntegerField;
    cds_PkgInfoProducerNo: TIntegerField;
    cds_PkgInfoOwnerNo: TIntegerField;
    cds_PkgInfoPIPNo: TIntegerField;
    ds_PkgInfo: TDataSource;
    FDm_AvRegPkgsShiftTeamNo: TIntegerField;
    siLangLinked_dm_Vis_Vida: TsiLangLinked;
    sp_AvregByRule: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDm_SettingsSortingOrderNoChange(Sender: TField);
    procedure FDm_SettingsOwnInventoryChange(Sender: TField);
    procedure FDm_SettingsAfterInsert(DataSet: TDataSet);
    procedure FDm_SettingsVisaAllaAvRegPktChange(Sender: TField);
  private
    { Private declarations }
    FOnAmbiguousPkgNoII: TAmbiguityEventII;
    Unique_No : Integer ;

    procedure GetDefaultSortingOrderParams ;
    procedure Set_OperationStatus ;
    procedure AddPkgTypeColumns(const PackageTypeNo : Integer) ;
    procedure SavePackageTypeLengths(const PackageTypeNo : Integer) ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
//    Function  GetLengthsEntered : String ;
    Function  GetNoOfOriginalLengthsInPkg(const UsingPackageTypeNoMall : Boolean) : String ;
    procedure getPkgs_PkgNoToSuppCode_IIII(const PkgNo, InventoryOwner: Integer;const Prefix : String) ;

  protected
      procedure ResolvePkgNoAmbiguityII(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      var LIPNo : Integer;
      var Status : Integer                            );

  public
    { Public declarations }
    Default_PIPNo,
    Default_RegPointNo,
    Default_ProducerNo,
    Default_OwnerNo,
    Default_SortingOrderNo  : Integer ;

    function  PkgInfoExist : Boolean ;
    procedure ClosePkgInfo ;
    procedure OpenPkgInfo(const PaketNr : Integer;const Prefix : String) ;

    function  PkgInList(const PaketNr : Integer;const Prefix : String) : Boolean ;
//    procedure FDoLog(s: string);
    function  Pkg_Has_ZERO_OperationStatus : Boolean ;
    function  AccessRights(
    const UserName : String;
    const UserPswd : String ) : TUserSpec;
    function  GetPkgPos (Var PackageNoString : String) : String ;
    procedure Delete_ReservedPkgs(const Modul : String) ;
    function  SP_Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String;
    function  Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String ;
    procedure OpenSortingOrder ;
    procedure LoadPkgs ;
    function  Regret_DeRegisterPackage
    (const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
    const SUPP_CODE : String; const WhenCreated : TDateTime) : Boolean ;
    Procedure AngraDelningAvPaket(const OldPackageNo,
          OldPackageTypeNo, NewPackageNo : Integer;
          const OldSupplierCode, NewSupplierCode : String) ;
    function  PkgNoToSuppCode_IIII(
    const PkgNo, InventoryOwner, PIPNo : Integer;
    var SupplierNo : Integer;
    Var ProductNo : Integer;
    var LIPNo : Integer;
    var Status : Integer;
    const Prefix : String3) : string3 ;
    function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;

    function  SkapaNyttPaket(const AvRegPkg : Boolean;const RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime;const UsingPackageTypeNoMall : Boolean;
                                               const OldPkgNo, OldPackageTypeNo : Integer; const OldPrefix  : String;
                                               const PkgNoInvCount : Integer;const PrefixInvCount : String) : Boolean ;
    function  AddPkgDataTo_mtLoadPackages_ToChangePackage(const Status, PkgNo : Integer;
    const PkgSupplierCode : String3;
    const OwnerNo : Integer) : Boolean ;
    function  GetPackageNo(const ProducerNo, RegpointNo, SeriesType : Integer;Var Prefix : String3) : Integer ;
    function  RemovePkgsFromInventory : Boolean ;
    Procedure GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo, InvType : Integer;const PackageNo : Integer) ;
    procedure PreparePackageForAvReg ;
    property  OnAmbiguousPkgNoII : TAmbiguityEventII read  FOnAmbiguousPkgNoII write FOnAmbiguousPkgNoII;
  end;

var
  dm_Vis_Vida: Tdm_Vis_Vida;

implementation

uses dlgPickPkg_IIII, //dmDB,
dmsDataConn, dmsVidaSystem, udmLanguage;//, {use dmDB only when compiling with vispakc}dmDB;

{$R *.dfm}

function GetFileSize(sFileName: string): Int64;
var
  f: Cardinal;
begin
  f := FileOpen(sFileName, fmOpenRead);
  Result := FileSeek(F, 0, 2);
  FileClose(F);
  {
  with TFileStream.Create(sFileName, fmOpenRead) do
  try
    Result := Size;
  finally
    Free;
  end;
  }
end;

(*procedure Tdm_Vis_Vida.FDoLog(s: string);
var
  sName: string;
  f: Text;
  bRename: Boolean;
begin
{  sName := ParamStr(0) + '.log';// + FormatDateTime('yyyy.mm.dd_hh.nn.ss_zzz.', now) + s;
  AssignFile(F, sName);
  if not FileExists(sName) then
    Rewrite(F)
  else
  begin
    Append(F);
  end;
  Writeln(F, FormatDateTime('yyyy.mm.dd hh:nn:ss zzz    ', now) + s);
  CloseFile(F);

//  if GetFileSize(sName) >= 512 * 1024 then
//    RenameFile(sName, sName + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now))

   if GetFileSize(sName) >= 512 * 1024 then
    //RenameFile(sName, sName + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now))
   Begin
    sysutils.DeleteFile(sName + '_Prev.txt') ;
    RenameFile(sName, sName + '_Prev.txt') ;
   End ;
  }
end;
*)

function Tdm_Vis_Vida.AccessRights(
  const UserName : String;
  const UserPswd : String ) : TUserSpec;
begin

  spAccessRights.ParamByName('@UserName').AsString := UserName;
  spAccessRights.ParamByName('@UserPswd').AsString := UserPswd;

  spAccessRights.ExecProc;

  Result.UserID    := spAccessRights.ParamByName('@UserID').AsInteger;
  Result.CompanyNo := spAccessRights.ParamByName('@Company').AsInteger;

  Result.AccessRights[dcProductSection]       := TAccessLevel(spAccessRights.ParamByName ('@ProdSec'  ).AsInteger);
  Result.AccessRights[dcClientSection]        := TAccessLevel(spAccessRights.ParamByName ('@CliSec'   ).AsInteger);
  Result.AccessRights[dcOrderSection]         := TAccessLevel(spAccessRights.ParamByName ('@OrdSec'   ).AsInteger);
  Result.AccessRights[dcInventorySection]     := TAccessLevel(spAccessRights.ParamByName ('@InvSec'   ).AsInteger);
  Result.AccessRights[dcBaseDataSection]      := TAccessLevel(spAccessRights.ParamByName ('@BaseSec'  ).AsInteger);
  Result.AccessRights[dcInternalOrderSection] := TAccessLevel(spAccessRights.ParamByName ('@IntOrdSec').AsInteger);

  Result.AccessRights[dcAvropSec]             := TAccessLevel(spAccessRights.ParamByName ('@fAvropSec').AsInteger);
  Result.AccessRights[dcARSec]                := TAccessLevel(spAccessRights.ParamByName ('@fARSec').AsInteger);
  Result.AccessRights[dcSkeppInstrSec]        := TAccessLevel(spAccessRights.ParamByName ('@fSkeppInstrSec').AsInteger);
  Result.AccessRights[dcKP_ListaSec]          := TAccessLevel(spAccessRights.ParamByName ('@fKP_ListaSec').AsInteger);
  Result.AccessRights[dcUtlastningSec]        := TAccessLevel(spAccessRights.ParamByName ('@fUtlastningSec').AsInteger);
  Result.AccessRights[dcFakturaSec]           := TAccessLevel(spAccessRights.ParamByName ('@fFakturaSec').AsInteger);
  Result.AccessRights[dcAvrakningSec]         := TAccessLevel(spAccessRights.ParamByName ('@fAvrakningSec').AsInteger);
  Result.AccessRights[dcFrakt_AvrakningSec]   := TAccessLevel(spAccessRights.ParamByName ('@fFrakt_AvrakningSec').AsInteger);

  Result.AccessRights[dcReport_AvropSec]      := TAccessLevel(spAccessRights.ParamByName ('@fReport_AvropSec').AsInteger);
  Result.AccessRights[dcEditLoadOrder]        := TAccessLevel(spAccessRights.ParamByName ('@EditLoadOrder').AsInteger);
  Result.AccessRights[dcShowPrice]            := TAccessLevel(spAccessRights.ParamByName ('@ShowPrice').AsInteger);
  Result.AccessRights[dcAdd_packagesSec]      := TAccessLevel(spAccessRights.ParamByName ('@fAdd_packagesSec').AsInteger);
  Result.AccessRights[dcAsk_packagesSec]      := TAccessLevel(spAccessRights.ParamByName ('@fAsk_packagesSec').AsInteger);

end;

Function Tdm_Vis_Vida.GetNoOfOriginalLengthsInPkg(const UsingPackageTypeNoMall : Boolean) : String ;
Begin
     Result:= '' ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       if UsingPackageTypeNoMall then
       Begin
        Try
        mtPcsPerLength.Insert ;
        mtPcsPerLengthProductLengthNo.AsInteger :=  sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
        mtPcsPerLengthNoOfPieces.AsInteger       := Round(sp_PackageTypeDetail.FieldValues['NoOfPieces']
        * (mtLoadPackagesPCS.AsInteger / FDm_AvRegPkgsTotaltStyck.AsInteger)) ;
        mtPcsPerLengthProductNo.AsInteger        := mtLoadPackagesProductNo.AsInteger ;
        mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
        mtPcsPerLength.Post ;
        except
         On E: Exception do
         Begin
          //dmsSystem.FDoLog(E.Message+' :mtPcsPerLength.Insert') ;
          Raise ;
         End ;
        end;
       End
       else
       Begin
        Try
        mtPcsPerLength.Insert ;
        mtPcsPerLengthProductLengthNo.AsInteger :=  sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
        mtPcsPerLengthNoOfPieces.AsInteger       := Round(
        ((sp_PackageTypeDetail.FieldValues['NoOfPieces']
        - mtLoadPackagesPCS.AsInteger)
        /FDm_AvRegPkgsTotaltStyck.AsInteger)

        * FDm_AvRegPkgsTotaltStyck.AsInteger) ;

        mtPcsPerLengthProductNo.AsInteger        := mtLoadPackagesProductNo.AsInteger ;
        mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
        mtPcsPerLength.Post ;
        except
         On E: Exception do
         Begin
          //dmsSystem.FDoLog(E.Message+' :mtPcsPerLength.Insert') ;
          Raise ;
         End ;
        end;
       End ;

       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;

     mtPcsPerLength.First ;
     While not mtPcsPerLength.Eof do
     Begin
      Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
      mtPcsPerLength.Next ;
     End ;

    End ;

//Split paket metoder
function Tdm_Vis_Vida.GetPackageNo(const ProducerNo, RegpointNo, SeriesType : Integer;Var Prefix : String3) : Integer ;
//Var     //StartPkgNo : Integer ;
//        NoOfErrorPkgnr : Integer;
//        Res_UserName : String ;
begin
// NoOfErrorPkgnr:= 0 ;
 Result:= 0 ;
// Try                         GetSOPkgNo(Var Prefix : String3;const ProducerNo, RegPointNo : Integer): Integer;
  Result:= dmsConnector.GetSOPkgNo(Prefix, ProducerNo, RegPointNo, SeriesType) ;
  if Result > 0 then
  Begin
   if PackageNumberExists(Result, Prefix) = False then
    Begin
//     if dmsSystem.Pkg_Reserved(Result, Prefix, Self.Name, Res_UserName ) = ThisUser.UserName+'/'+Self.Name then
//      Begin
//      End //if dmsSystem.Pkg_Reserved(
//      else
//       Begin
//        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
//        Result:= 0 ;
//       End ;
    End //if..
     else
      Begin
//        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= -1 ;
      End ;
  End ; //if Result > 0 then
End ;

function Tdm_Vis_Vida.AddPkgDataTo_mtLoadPackages_ToChangePackage(const Status, PkgNo : Integer;
  const PkgSupplierCode : String3;
  const OwnerNo : Integer)  : Boolean ;
var
 x            : Integer ;
// Res_UserName : String ;
Begin
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := OwnerNo ;
//     sq_OneUniquePkg.ParamByName('Status').AsInteger              := Status ;
//     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
      Try
      For x := 0 to 40 do
       mtLoadPackages.Fields.Fields[x].AsVariant  := sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger        := Unique_No ;
      mtLoadPackagesSUPPLIERNO.AsInteger          := FDm_SettingsProducerNo.AsInteger ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger    := FDm_AvRegPkgsLIPNo.AsInteger ;

      mtLoadPackages.Post ;
      Unique_No := Succ(Unique_No) ;
      Result    := True ;
      Except
       on eDatabaseError do
       Begin
        Result  := False ;
        mtLoadPackages.Cancel ;
        Raise ;
       End ;
      End ;

     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr ' + IntToStr(PkgNo) + '/' + PkgSupplierCode + ' finns inte') ;
       Result := False ;
      End ;

     sq_OneUniquePkg.Close ;
  Finally
   Delete_ReservedPkgs(Self.Name) ;
  End ;
end;

//Spapa nytt paket
function Tdm_Vis_Vida.SkapaNyttPaket(const AvRegPkg : Boolean;const RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime;const UsingPackageTypeNoMall : Boolean;
                                               const OldPkgNo, OldPackageTypeNo : Integer; const OldPrefix  : String;
                                               const PkgNoInvCount : Integer;const PrefixInvCount : String) : Boolean ;
Var
    Save_Cursor       : TCursor;

var
  PackagetypeNo   : Integer ;

//***************************************************

  procedure SavePkgType ;
//  Var
//     iDtls : Integer ;



    function SelectMatchingPkgTypeHdrs : Integer ;
    begin
      // First get all package type (header) records that match
      // First get all package type (header) records that match
      Try
      Result:= -1 ;
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesProductNo.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;
      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;


//      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
//       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered
//      else
       sp_PackageTypes.ParamByName('@PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg(UsingPackageTypeNoMall) ;

      sp_PackageTypes.Open;

      except
       On E: Exception do
        Begin
         ShowMessage(E.Message+' :sp_PackageTypes.Open') ;
         dmsSystem.FDoLog(E.Message+' :sp_PackageTypes.Open') ;
         Raise ;
        End ;
      end;

      try
        if not sp_PackageTypes.Eof then begin
          Result := sp_PackageTypes.FieldByName('PackageTypeNo').Value ;
        end
         else
          Result:= -1 ;
      finally
        sp_PackageTypes.Close;
      end;

    end;



    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
//    var
//      iDtl : Integer;
    begin
      Try
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      sp_NewPackageType.Close ;
      sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesProductNo.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType.ParamByName('@ProdInstruNo').AsInteger := -1 ;

      sp_NewPackageType.ExecProc;
     Except
      On E: Exception do
      Begin
       ShowMessage(E.Message+' :sp_NewPackageType.ExecProc') ;
       Raise ;
      End ;
     End ;


//************** Now add the PackageTypeDetail records. ********************

 mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Try
  sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).Value  := PackageTypeNo;
  sp_NewPackageDetail.ParamByName('@ProductLengthNo').Value  := mtPcsPerLengthProductLengthNo.AsInteger ;
  sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).Value  := mtPcsPerLengthNoOfPieces.AsInteger ;
  sp_NewPackageDetail.ParamByName('@UserID'         ).Value  := ThisUser.UserID ;
  sp_NewPackageDetail.ExecProc;
  except
   On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_NewPackageDetail.ExecProc') ;
     dmsSystem.FDoLog(E.Message+' :sp_NewPackageDetail.ExecProc') ;
     Raise ;
    End ;
  end;
  mtPcsPerLength.Next ;
 End ;     

    end;


    procedure SavePkgTotals( PackageTypeNo : Integer );
    begin
     Try
      sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
      sp_PackageTotals.ExecProc;
     Except
      On E: Exception do
      Begin
       ShowMessage(E.Message+' :sp_PackageTotals.ExecProc') ;
       Raise ;
      End ;
     End ;
      sp_PackageTotals.Close;
    end;


  begin
      PackagetypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths(PackageTypeNo);
        AddPkgTypeColumns(PackageTypeNo) ;
       End ;
  end;

  function SaveNewSplitPackage : Integer ;
  begin
   Try
    sp_NewSplitPkg.ParamByName('@PackageNo'              ).AsInteger      := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@PackageTypeNo'          ).AsInteger      := PackageTypeNo;
    sp_NewSplitPkg.ParamByName('@SupplierCode'           ).AsString       := mtLoadPackagesSUPP_CODE.AsString;
    sp_NewSplitPkg.ParamByName('@LogicalInventoryPointNo').AsInteger      := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@SupplierNo'             ).AsInteger      := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@RegistrationPointNo'    ).AsInteger      := RegistrationPointNo ;
    sp_NewSplitPkg.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_NewSplitPkg.ParamByName('@CreatedOfPkgStr'        ).AsInteger      := 0 ; // 0 = Manual entry
    sp_NewSplitPkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_NewSplitPkg.ParamByName('@SortingOrderNo'         ).AsInteger      := FDm_AvRegPkgsSortingOrderNo.AsInteger ;
    sp_NewSplitPkg.ParamByName('@OldPackageNo'           ).AsInteger      := OldPkgNo ;
    sp_NewSplitPkg.ParamByName('@OldPrefix'              ).AsString       := OldPrefix ;
    sp_NewSplitPkg.ParamByName('@OldPackageTypeNo'       ).AsInteger      := OldPackageTypeNo ;
    sp_NewSplitPkg.ParamByName('@PkgNoInvCount'          ).AsInteger      := PkgNoInvCount ;
    sp_NewSplitPkg.ParamByName('@PrefixInvCount'         ).AsString       := PrefixInvCount ;


    sp_NewSplitPkg.ExecProc;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_NewSplitPkg.ExecProc') ;
     Raise ;
    End ;
   End ;
  end;


  //Uppdatera original paketet och lägg tillbaka på lager
  function UpdatePackage : Integer ;
  begin
   Try
    sp_SOUpdOldSplit.ParamByName('@PackageNo'              ).AsInteger      := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@PackageTypeNo'          ).AsInteger      := PackageTypeNo ;
    sp_SOUpdOldSplit.ParamByName('@SupplierCode'           ).AsString       := mtLoadPackagesSUPP_CODE.AsString ;
    sp_SOUpdOldSplit.ParamByName('@LogicalInventoryPointNo').AsInteger      := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_SOUpdOldSplit.ParamByName('@RegistrationPointNo'    ).AsInteger      := RegistrationPointNo ;
    sp_SOUpdOldSplit.ParamByName('@OLD_PackageTypeNo'      ).AsInteger      := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_SOUpdOldSplit.ParamByName('@SupplierNo'             ).AsInteger      := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_SOUpdOldSplit.ParamByName('@MatPunktAgareNo'        ).AsInteger      := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@RunNo'                  ).AsInteger      := FDm_AvRegPkgsSortingOrderNo.AsInteger ;

    sp_SOUpdOldSplit.ExecProc;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_SOUpdOldSplit.ExecProc') ;
     Raise ;
    End ;
   End ;
  end;

//Start SkapaNyttPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtPcsPerLength.Active := True ;
Try

  Result:= False ;
//  AddPkgsTomtLoadPackages (MatPunktAgareNo) ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
//   dmsConnector.StartTransaction;
//   try

      SavePkgType ;
      Try
//if AvRegPkg skall nytt paket skapas och avregistreras
      if AvRegPkg then
      Begin
       SaveNewSplitPackage ;
       //Insert missing Rawmaterial record in query/SP i
      End
      else
      Begin
       //Ändra paket
       UpdatePackage ;
       //Ta bort från avregistrerade listan, fixas i huvud SP numera
      End ;


      except
       ShowMessage ('Kunde inte ändra paketnr ' + Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

//     dmsConnector.Commit ;
     Result:= True ;
{   except
    dmsConnector.Rollback ;
    Result:= False ;
   end;}

   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
  end;
 Finally
  mtPcsPerLength.Active := False ;
  Screen.Cursor         := Save_Cursor;  { Always restore to normal }
 End ;
end;

function Tdm_Vis_Vida.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function Tdm_Vis_Vida.RemovePkgsFromInventory : Boolean ;
Var
  Save_Cursor   : TCursor;
  WhenCreated   : TDateTime;


procedure PrepareONEPackageForAvReg ;
Var InvType,
    LIPNoAttAvReg : Integer ;

procedure HittaEttLikVardigtPaketILIPAttAvRegistrera ;
Begin
// FDq_GetAvRegPkgNo.ParamByName('PackageNo').AsInteger     := FDm_AvRegPkgsPaketnr.AsInteger ;
// FDq_GetAvRegPkgNo.ParamByName('SupplierCode').AsString   := FDm_AvRegPkgsPrefix.AsString ;
 FDq_GetAvRegPkgNo.ParamByName('LengthSpecNo').AsInteger  := FDm_AvRegPkgsLengthSpecNo.AsInteger ;
 FDq_GetAvRegPkgNo.ParamByName('OwnerNo').AsInteger       := FDm_AvRegPkgsOwnerNo.AsInteger ; //LIPNoAttAvReg ;
 FDq_GetAvRegPkgNo.Open ;
 Try
 if not FDq_GetAvRegPkgNo.Eof then
 Begin
  FDm_AvRegPkgsPaketnrAttAvReg.AsInteger  := FDq_GetAvRegPkgNoPackageNo.AsInteger ;
  FDm_AvRegPkgsPrefixAttAvReg.AsString    := FDq_GetAvRegPkgNoSupplierCode.AsString ;
  FDm_AvRegPkgsLIPNoAttAvReg.AsInteger    := LIPNoAttAvReg ;
 End
  else
   FDm_AvRegPkgsLIPNoAttAvReg.AsInteger :=  FDm_AvRegPkgsLIPNo.AsInteger ;
 Finally
  FDq_GetAvRegPkgNo.Close ;
 End ;
End ;
//PrepareONEPackageForAvReg ;
Begin
// FDm_AvRegPkgs.Filter   := 'OperationStatus = 0 AND Status < 5' ;
// FDm_AvRegPkgs.Filtered := True ;

// FDm_AvRegPkgs.First ;
// While not FDm_AvRegPkgs.Eof do
// Begin
  FDm_AvRegPkgs.Edit ;
  GetLIPNoByPackageNo(FDm_AvRegPkgsPrefix.AsString, LIPNoAttAvReg, InvType, FDm_AvRegPkgsPaketNr.AsInteger) ;
  //******************** ************************
  if InvType = 1 then //Pakettyp baserat
  Begin
  //om paketet är aktivt och ligger i
   if (FDm_AvRegPkgsStatus.AsInteger = 1) and (LIPNoAttAvReg = FDm_AvRegPkgsLIPNo.AsInteger) then
   Begin
    FDm_AvRegPkgsPaketnrAttAvReg.AsInteger := FDm_AvRegPkgsPaketnr.AsInteger ;
    FDm_AvRegPkgsPrefixAttAvReg.AsString   := FDm_AvRegPkgsPrefix.AsString ;
    FDm_AvRegPkgsLIPNoAttAvReg.AsInteger   := FDm_AvRegPkgsLIPNo.AsInteger ;
   End
   else
   Begin
    HittaEttLikVardigtPaketILIPAttAvRegistrera ;
   End ;
  End //if LIPNoAttAvReg = 1 then
  else
  //******************** ************************
  //if InvType <> 1 then allstå vanligt paketnr baserat
  Begin
   //Om statusen är 1 skall paketet avregistreras
   if FDm_AvRegPkgsStatus.AsInteger = 1 then
   Begin
    FDm_AvRegPkgsPaketnrAttAvReg.AsInteger := FDm_AvRegPkgsPaketnr.AsInteger ;
    FDm_AvRegPkgsPrefixAttAvReg.AsString   := FDm_AvRegPkgsPrefix.AsString ;
   End ;
   FDm_AvRegPkgsLIPNoAttAvReg.AsInteger    := FDm_AvRegPkgsLIPNo.AsInteger ;
  End ;


  if FDm_AvRegPkgs.State in [dsEdit] then
   FDm_AvRegPkgs.Post ;

//  FDm_AvRegPkgs.Next ;
// End ;//While
End ;

//RemovePkgsFromInventory
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 Result         := False ;
 WhenCreated    := Now ;
// PreparePackageForAvReg ;
// Try


// dmsConnector.StartTransaction ;
 try
 FDm_AvRegPkgs.Filter   := 'OperationStatus = 0 AND Status < 5' ;
 FDm_AvRegPkgs.Filtered := True ;
 FDm_AvRegPkgs.First ;

// om packagenoAttAvreg inte har något värde så avregistreras inte något paket fysiskt från lager
 While not FDm_AvRegPkgs.Eof do
 Begin
  dmsConnector.StartTransaction ;
  Try
  //  PrepareONEPackageForAvReg ;
    dmsSystem.FDoLog('________________________________________________________________________ ') ;
    dmsSystem.FDoLog('# FDm_AvRegPkgsPaketnr          = ' + FDm_AvRegPkgsPaketnr.AsString) ;
    dmsSystem.FDoLog('# FDm_AvRegPkgsPrefix           = ' + FDm_AvRegPkgsPrefix.AsString) ;
    dmsSystem.FDoLog('# FDm_AvRegPkgsPaketnrAttAvReg  = ' + FDm_AvRegPkgsPaketnrAttAvReg.AsString) ;
    dmsSystem.FDoLog('# FDm_AvRegPkgsPrefixAttAvReg   = ' + FDm_AvRegPkgsPrefixAttAvReg.AsString) ;


    sp_AvregByRule.ParamByName('@PackageNo').AsInteger            := FDm_AvRegPkgsPaketnr.AsInteger ;//Paketnr att registrera mot körning
    sp_AvregByRule.ParamByName('@Prefix').AsString                := FDm_AvRegPkgsPrefix.AsString ;
    sp_AvregByRule.ParamByName('@ShiftTeamNo').AsInteger          := FDm_AvRegPkgsShiftTeamNo.AsInteger ;
    sp_AvregByRule.ParamByName('@SortingOrderNo').AsInteger       := FDm_AvRegPkgsSortingOrderNo.AsInteger ;
    sp_AvregByRule.ParamByName('@UserID').AsInteger               := ThisUser.UserID ;
    sp_AvregByRule.ExecProc ;
    dmsConnector.Commit ;
   Except
    On E: Exception do
    Begin
     dmsConnector.Rollback ;
     dmsSystem.FDoLog(E.Message+' :sp_AvregByRule.ExecProc') ;
     ShowMessage(E.Message+' :sp_AvregByRule.ExecProc') ;
     Raise ;
    End ;
   End ;
   
//   Try
{    sp_vis_AvRegPkg.Close ;
    sp_vis_AvRegPkg.ParamByName('@PackageNo').AsInteger            := FDm_AvRegPkgsPaketnr.AsInteger ;//Paketnr att registrera mot körning
    sp_vis_AvRegPkg.ParamByName('@SupplierCode').AsString          := FDm_AvRegPkgsPrefix.AsString ;
    sp_vis_AvRegPkg.ParamByName('@RegistrationPointNo').AsInteger  := FDm_AvRegPkgsRegPointNo.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@PackageTypeNo').AsInteger        := FDm_AvRegPkgsPackageTypeNo.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@LogicalInventoryPointNo').AsInteger := FDm_AvRegPkgsLIPNoAttAvReg.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@UserID').AsInteger               := ThisUser.UserID ;
    sp_vis_AvRegPkg.ParamByName('@ProducerNo').AsInteger           := FDm_AvRegPkgsProducerNo.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@DateCreated').AsSQLTimeStamp     := DateTimeToSqlTimeStamp(WhenCreated) ;
//    sp_vis_AvRegPkg.ParamByName('@MatPunktAgareNo').AsInteger      := FDm_AvRegPkgsProducerNo.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@SortingOrderNo').AsInteger       := FDm_AvRegPkgsSortingOrderNo.AsInteger ;
    sp_vis_AvRegPkg.ParamByName('@PackageNoAttAvReg').AsInteger    := FDm_AvRegPkgsPaketnrAttAvReg.AsInteger ; //Paketnr att avregistrera från lager
    sp_vis_AvRegPkg.ParamByName('@SupplierCodeAttAvReg').AsString  := FDm_AvRegPkgsPrefixAttAvReg.AsString ;
    sp_vis_AvRegPkg.ParamByName('@ShiftTeamNo').AsInteger          := FDm_AvRegPkgsShiftTeamNo.AsInteger ;
    sp_vis_AvRegPkg.ExecProc ;
    dmsConnector.Commit ;
   Except
    On E: Exception do
    Begin
     dmsConnector.Rollback ;
     dmsSystem.FDoLog(E.Message+' :sp_vis_AvRegPkg.ExecProc') ;
     ShowMessage(E.Message+' :sp_vis_AvRegPkg.ExecProc') ;
     Raise ;
    End ;
   End ;      }

//    InsertUsedPkgsToSortingOrder ; SKÖTS numera av ovan SP "sp_vis_AvRegPkg"!
//
//    insertRawMtrlPost ; SKÖTS numera av ovan SP "sp_vis_AvRegPkg"!

  FDm_AvRegPkgs.Edit ;
  FDm_AvRegPkgsAvRegistreratOK.AsInteger  := 1 ;
  FDm_AvRegPkgs.Post ;

  FDm_AvRegPkgs.Next ;
 End ;//While


{    dmsConnector.Commit ;
    Result:= True ;
  except
   dmsConnector.Rollback ;
   Result:= False ;
  end; }
 Finally
  FDm_AvRegPkgs.Filter   := 'OperationStatus <> 1' ;
//  FDm_AvRegPkgs.Filtered  := False ;
 End ;

 Finally
  Screen.Cursor           := Save_Cursor;  { Always restore to normal }
 End ;
   Set_OperationStatus ;
 OpenSortingOrder ;
end;

procedure Tdm_Vis_Vida.Set_OperationStatus ;
Var
  Save_Cursor  : TCursor ;
Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 FDm_AvRegPkgs.DisableControls ;
 Try
 FDm_AvRegPkgs.Filter   := 'AvRegistreratOK = 1 AND OperationStatus = 0' ;
 FDm_AvRegPkgs.Filtered := True ;
 FDm_AvRegPkgs.First ;
 Try

// om packagenoAttAvreg inte har något värde så avregistreras inte något paket fysiskt från lager
 While FDm_AvRegPkgs.RecordCount > 0 do
 Begin
  FDm_AvRegPkgs.Edit ;
  FDm_AvRegPkgsOperationStatus.AsInteger  := 1 ;
  FDm_AvRegPkgs.Post ;
//  FDm_AvRegPkgs.Next ;
 End ;//While

 Finally
  FDm_AvRegPkgs.Filter   := 'OperationStatus <> 1' ;
//  FDm_AvRegPkgs.Filtered  := False ;
 End ;

 Finally
  FDm_AvRegPkgs.EnableControls ;
  Screen.Cursor           := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure Tdm_Vis_Vida.PreparePackageForAvReg ;
Var InvType,
    LIPNoAttAvReg : Integer ;

procedure HittaEttLikVardigtPaketILIPAttAvRegistrera ;
Begin
// FDq_GetAvRegPkgNo.ParamByName('PackageNo').AsInteger     := FDm_AvRegPkgsPaketnr.AsInteger ;
// FDq_GetAvRegPkgNo.ParamByName('SupplierCode').AsString   := FDm_AvRegPkgsPrefix.AsString ;
 FDq_GetAvRegPkgNo.ParamByName('LengthSpecNo').AsInteger  := FDm_AvRegPkgsLengthSpecNo.AsInteger ;
 FDq_GetAvRegPkgNo.ParamByName('LIPNo').AsInteger         := LIPNoAttAvReg ;
 FDq_GetAvRegPkgNo.Open ;
 Try
 if not FDq_GetAvRegPkgNo.Eof then
 Begin
  FDm_AvRegPkgsPaketnrAttAvReg.AsInteger  := FDq_GetAvRegPkgNoPackageNo.AsInteger ;
  FDm_AvRegPkgsPrefixAttAvReg.AsString    := FDq_GetAvRegPkgNoSupplierCode.AsString ;
  FDm_AvRegPkgsLIPNoAttAvReg.AsInteger    := LIPNoAttAvReg ;
 End
  else
   FDm_AvRegPkgsLIPNoAttAvReg.AsInteger :=  FDm_AvRegPkgsLIPNo.AsInteger ;
 Finally
  FDq_GetAvRegPkgNo.Close ;
 End ;
End ;

Begin
 FDm_AvRegPkgs.Filter   := 'OperationStatus = 0 AND Status < 5' ;
 FDm_AvRegPkgs.Filtered := True ;

 FDm_AvRegPkgs.First ;
 While not FDm_AvRegPkgs.Eof do
 Begin
  FDm_AvRegPkgs.Edit ;
  GetLIPNoByPackageNo(FDm_AvRegPkgsPrefix.AsString, LIPNoAttAvReg, InvType, FDm_AvRegPkgsPaketNr.AsInteger) ;
  //******************** ************************
  if InvType = 1 then
  Begin
   if (FDm_AvRegPkgsStatus.AsInteger = 1) and (LIPNoAttAvReg = FDm_AvRegPkgsLIPNo.AsInteger) then
   Begin
    FDm_AvRegPkgsPaketnrAttAvReg.AsInteger := FDm_AvRegPkgsPaketnr.AsInteger ;
    FDm_AvRegPkgsPrefixAttAvReg.AsString   := FDm_AvRegPkgsPrefix.AsString ;
    FDm_AvRegPkgsLIPNoAttAvReg.AsInteger   := FDm_AvRegPkgsLIPNo.AsInteger ;
   End
   else
   Begin
    HittaEttLikVardigtPaketILIPAttAvRegistrera ;
   End ;
  End //if LIPNoAttAvReg = 1 then
  else
  //******************** ************************
  //if InvType <> 1 then allstå vanligt paketnr baserat
  Begin
   //Om statusen är 1 skall paketet avregistreras
   if FDm_AvRegPkgsStatus.AsInteger = 1 then
   Begin
    FDm_AvRegPkgsPaketnrAttAvReg.AsInteger := FDm_AvRegPkgsPaketnr.AsInteger ;
    FDm_AvRegPkgsPrefixAttAvReg.AsString   := FDm_AvRegPkgsPrefix.AsString ;
   End ;
   FDm_AvRegPkgsLIPNoAttAvReg.AsInteger    := FDm_AvRegPkgsLIPNo.AsInteger ;
  End ;


  if FDm_AvRegPkgs.State in [dsEdit] then
   FDm_AvRegPkgs.Post ;

  FDm_AvRegPkgs.Next ;
 End ;//While
End ;

Procedure Tdm_Vis_Vida.GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo, InvType : Integer;const PackageNo : Integer) ;
const pkgType = 1 ;
Begin
 FDq_GetLIPAttAvRegMot.Active:= False ;
 FDq_GetLIPAttAvRegMot.ParamByName('PackageNo').AsInteger    := PackageNo ;
 FDq_GetLIPAttAvRegMot.ParamByName('SupplierCode').AsString  := SupplierCode ;
 FDq_GetLIPAttAvRegMot.Active:= True ;
 if not FDq_GetLIPAttAvRegMot.Eof then
 Begin
  if FDq_GetLIPAttAvRegMot.RecordCount = 1 then
  Begin
   if FDq_GetLIPAttAvRegMotInvenType.AsInteger = pkgType then
    LIPNo:= FDq_GetLIPAttAvRegMotAvReg.AsInteger
     else
      LIPNo := FDq_GetLIPAttAvRegMotPkgRealLIPNo.AsInteger ;//FDq_GetLIPAttAvRegMotLIPNo.AsInteger ;
  End
   else
    LIPNo := -1 ;
 End
  else
   LIPNo := -2 ; ;
 InvType  := FDq_GetLIPAttAvRegMotInvenType.AsInteger ;
 FDq_GetLIPAttAvRegMot.Active:= False ;
End ;


procedure Tdm_Vis_Vida.DataModuleCreate(Sender: TObject);
begin
 Unique_No          := 1 ;
 OnAmbiguousPkgNoII := ResolvePkgNoAmbiguityII;
end;

procedure Tdm_Vis_Vida.SavePackageTypeLengths(const PackageTypeNo : Integer) ;
Begin
 Try
  sp_Populate_One_PkgTypeLengths.Close ;
  sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
  sp_Populate_One_PkgTypeLengths.ExecProc ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_Populate_One_PkgTypeLengths.ExecProc') ;
     Raise ;
    End ;
  End ;
 sp_Populate_One_PkgTypeLengths.Close ;
End ;

function Tdm_Vis_Vida.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
Begin
 Result := 'N/A' ;

{ sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' var skapad av '+
 sp_PkgInfoCREATED_BY.AsString+' den: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsDateTime)+
 ' lager: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ; }
End ;

//Select package from duplicate list
procedure Tdm_Vis_Vida.getPkgs_PkgNoToSuppCode_IIII(const PkgNo, InventoryOwner: Integer;const Prefix : String);
begin
  cds_PksByInventoryPlaceIIII.Filtered := False ;
  cds_PksByInventoryPlaceIIII.Filter   := '' ;

  cds_PksByInventoryPlaceIIII.ParamByName('PkgNo').AsInteger              := PkgNo ;
  cds_PksByInventoryPlaceIIII.ParamByName('InvOwner').AsInteger           := InventoryOwner;
  cds_PksByInventoryPlaceIIII.ParamByName('SupplierCode').AsString        := Prefix ;
  cds_PksByInventoryPlaceIIII.ParamByName('SortingOrderNo').AsInteger     := FDm_SettingsSortingOrderNo.AsInteger ;
  cds_PksByInventoryPlaceIIII.ParamByName('PIPNo').AsInteger              := FDm_SettingsPIPNo.AsInteger ;

  if FDm_SettingsProductInRun.AsInteger = 1 then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   := 'IncludedInRun = ' + QuotedStr('Ja ') ;
   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End ;

  if (FDm_SettingsProductInRun.AsInteger = 1) and (FDm_SettingsOwnInventory.AsInteger = 1) then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   :=
   cds_PksByInventoryPlaceIIII.Filter + ' AND OwnerNo = ' + FDm_SettingsOwnerNo.AsString
   + ' AND PIPNo = ' + FDm_SettingsPIPNo.AsString ;
   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End
  else
  if (FDm_SettingsProductInRun.AsInteger = 0) and (FDm_SettingsOwnInventory.AsInteger = 1) then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   := 'OwnerNo = ' + FDm_SettingsOwnerNo.AsString
   + ' AND PIPNo = ' + FDm_SettingsPIPNo.AsString ;
   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End ;
end;

function Tdm_Vis_Vida.PkgNoToSuppCode_IIII(
  const PkgNo, InventoryOwner, PIPNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer;
  var LIPNo : Integer;
  var Status : Integer;
  const Prefix : String3) : string3 ;
var
  SuppCode : string3;
begin
// Result := 'AT' ;

  Try
  cds_PksByInventoryPlaceIIII.Active  := False ;
  getPkgs_PkgNoToSuppCode_IIII(PkgNo, InventoryOwner, Prefix);
  cds_PksByInventoryPlaceIIII.Active  := True ;
  case cds_PksByInventoryPlaceIIII.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
         end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := cds_PksByInventoryPlaceIIII.FieldByName('SupplierCode' ).AsString ;
           SupplierNo := cds_PksByInventoryPlaceIIII.FieldByName('SupplierNo'   ).AsInteger ;
           ProductNo  := cds_PksByInventoryPlaceIIII.FieldByName('ProductNo'    ).AsInteger ;
           LIPNo      := cds_PksByInventoryPlaceIIII.FieldByName('LIPNo'        ).AsInteger ;
           Status     := cds_PksByInventoryPlaceIIII.FieldByName('Status'       ).AsInteger ;
         end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNoII) then
             FOnAmbiguousPkgNoII(Self,Self.ds_PksByInventoryPlaceIIII,SuppCode,SupplierNo, ProductNo, LIPNo, Status);
            if Length(SuppCode) = 0 then
             SuppCode := '4x4' ;
           end;
    end;

  Finally
   Result := SuppCode;
   cds_PksByInventoryPlaceIIII.Active:= False ;
  End ;
end;

procedure Tdm_Vis_Vida.ResolvePkgNoAmbiguityII(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  var LIPNo : Integer;
  var Status : Integer);
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to pick. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_IIII.Create(Nil) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice      := SupplierCodeForSelectedPkg;
      SupplierNo  := SupplierNoForSelectedpkg;
      ProductNo   := ProductNoForSelectedpkg ;
      LIPNo       := LIPNoForSelectedpkg ;
      Status      := StatusForSelectedpkg ;
      end
    else
      Choice := '';
  finally
    free;
    end;
end;

//Ångra avreg
function  Tdm_Vis_Vida.Regret_DeRegisterPackage
(const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
const SUPP_CODE : String; const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor  : TCursor ;

 //Main Regret_DeRegisterPackage
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
Try
  dmsConnector.StartTransaction;
  try
     Try
      sp_RegretDeReg.Close ;
      sp_RegretDeReg.ParamByName('@PackageNo').AsInteger             := PACKAGENO ;
      sp_RegretDeReg.ParamByName('@SupplierCode').AsString           := SUPP_CODE ;
      sp_RegretDeReg.ParamByName('@RegistrationPointNo').AsInteger   := RegistrationPointNo ;
      sp_RegretDeReg.ParamByName('@PackageTypeNo').AsInteger         := PACKAGETYPENO ;
      sp_RegretDeReg.ParamByName('@LIPNo').AsInteger                 := LIPNo ;
      sp_RegretDeReg.ParamByName('@UserID').AsInteger                := ThisUser.UserID ;
      sp_RegretDeReg.ParamByName('@SupplierNo').AsInteger            := SupplierNo ;
      sp_RegretDeReg.ParamByName('@DateCreated').AsSQLTimeStamp      := DateTimeToSqlTimeStamp(WhenCreated) ;
      sp_RegretDeReg.ParamByName('@SortingOrderNo').AsInteger        := FDm_SettingsSortingOrderNo.AsInteger ;
      sp_RegretDeReg.ExecProc ;
     Except
      On E: Exception do
      Begin
       ShowMessage(E.Message+' :sp_RegretDeReg.ExecSQL') ;
       Raise ;
      End ;
     End ;


    FDm_AvRegPkgs.Delete ;
    dmsConnector.Commit ;
    Result:= True ;

    cds_UsedPkgs.Active:= False ;
    cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := FDm_AvRegPkgsSortingOrderNo.AsInteger ;
    cds_UsedPkgs.Active:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
    Raise ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

Procedure Tdm_Vis_Vida.AngraDelningAvPaket(const OldPackageNo,
          OldPackageTypeNo, NewPackageNo : Integer;
          const OldSupplierCode, NewSupplierCode : String) ;

procedure DeletePackagesFromSystem ;
Begin
 Try
  sp_AngraSplitPkg.Close ;
  sp_AngraSplitPkg.ParamByName('@PackageNo').AsInteger           := NewPACKAGENO ;
  sp_AngraSplitPkg.ParamByName('@SupplierCode').AsString         := NewSupplierCode ;
  sp_AngraSplitPkg.ParamByName('@RegistrationPointNo').AsInteger := FDm_AvRegPkgsRegPointNo.AsInteger ;
  sp_AngraSplitPkg.ParamByName('@UserID').AsInteger              := ThisUser.UserID ;
  sp_AngraSplitPkg.ParamByName('@ShiftNo').AsInteger             := -1 ;
  sp_AngraSplitPkg.ParamByName('@SortingOrderNo').AsInteger      := FDm_SettingsSortingOrderNo.AsInteger ;
  sp_AngraSplitPkg.ParamByName('@SupplierNo').AsInteger          := FDm_SettingsProducerNo.AsInteger ;  
  sp_AngraSplitPkg.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_AngraSplitPkg.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;//procedure DeletePackagesFromSystem ;


//Main AngraDelningAvPaket
Begin
 dmsConnector.StartTransaction;
 try
  //denna underbara sp gör hela grejen!!
  DeletePackagesFromSystem ;
 //Ta bort från used pkgs list
//  RemoveNewSplitPkgFromSortOrder ;
 //
//  ReSetOldSplitPackage ;
 //
//  ReinstateOldPackageToSortingOrder ;
//
//  DeleteSplitPackageRecord ;


  dmsConnector.Commit ;
{  dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ; }
 except
  dmsConnector.Rollback ;
  Raise ;
 end;
End ;

    //Ångra split
//Ett split paket kan inte ångras avregistrering men ångra split först
{ 1)Ta bort nya paketet från systemet och usedpkgs
 2) Registrera gamla PackageTypeNo på gamla paketnr och lägg mot usedpkgs
 Vi hittar gamla paketnr och packagetypeno i
 SortingOrderSplitPkgs
  SortingOrderNo
  PackageNo     (old)
  SupplierCode  (old)
  PackageTypeNo (old)
  NewPackageNo
  NewSupplierCode }

procedure Tdm_Vis_Vida.OpenSortingOrder ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 With dm_Vis_Vida do
 Begin
  if (cds_SortOrderList.Active) and (cds_SortOrderList.RecordCount > 0) then
  Begin
  cds_SorOrdRow.DisableControls ;
  cds_SORaw.DisableControls ;
  Try

  cds_SorOrdRow.Active  := False ;
  cds_SorOrdRow.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
  cds_SorOrdRow.Active  := True ;

  cds_SORaw.Active  := False ;
  cds_SORaw.ParamByName('SortingOrderNo').AsInteger     := FDm_SettingsSortingOrderNo.AsInteger ;
  cds_SORaw.Active  := True ;

{  cds_NewPkgs.Active  := False ;
  cds_NewPkgs.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
  cds_NewPkgs.Active  := True ;}

{use dmDB only when compiling with vispakc}
  {
    dmsSystem.cdsPkgInRun.Active  := False ;
     dmsSystem.cdsPkgInRun.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
     dmsSystem.cdsPkgInRun.Active  := True ;
 }

  cds_UsedPkgs.Active  := False ;
  cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
  cds_UsedPkgs.Active  := True ;

  LoadPkgs ;

  Finally
   cds_SorOrdRow.EnableControls ;
   cds_SORaw.EnableControls ;
  End ;
  End ;//if (cds_SortOrderList.Active) and (cds_SortOrderList.RecordCount > 0) then
 End ;//With
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure Tdm_Vis_Vida.LoadPkgs ;
Var x : Integer ;
begin
 With dm_Vis_Vida do
 Begin
  FDm_AvRegPkgs.DisableControls ;
  FDm_PaRegPkgs.DisableControls ;
  Try
  FDm_AvRegPkgs.Active  := False ;
  FDm_AvRegPkgs.Active  := True ;

  FDm_PaRegPkgs.Active  := False ;
  FDm_PaRegPkgs.Active  := True ;

  cds_UsedPkgs.Active  := False ;
  cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
  cds_UsedPkgs.Active  := True ;
  cds_UsedPkgs.First ;
  While not cds_UsedPkgs.Eof do
  Begin
   FDm_AvRegPkgs.Insert ;
   For x := 0 to 10 do
   FDm_AvRegPkgs.Fields.Fields[x].AsVariant := cds_UsedPkgs.Fields.Fields[x].AsVariant ;

   FDm_AvRegPkgsRegistrerad.AsDateTime      := SQLTimeStampToDateTime(cds_UsedPkgsRegistrerad.AsSQLTimeStamp) ;
   FDm_AvRegPkgsOperationStatus.AsInteger   := 1 ;
   FDm_AvRegPkgsProducerNo.AsInteger        := cds_UsedPkgsProducerNo.AsInteger ;
   FDm_AvRegPkgsRegPointNo.AsInteger        := cds_UsedPkgsProductionUnitNo.AsInteger ;
   FDm_AvRegPkgsOwnerNo.AsInteger           := cds_UsedPkgsOwnerNo.AsInteger ;
   FDm_AvRegPkgsSortingOrderNo.AsInteger    := FDm_SettingsSortingOrderNo.AsInteger ;


   FDm_AvRegPkgsPackageTypeNo.AsInteger    := cds_UsedPkgsPackageTypeNo.AsInteger ;
   FDm_AvRegPkgsLengthSpecNo.AsInteger     := cds_UsedPkgsLengthSpecNo.AsInteger ;
   FDm_AvRegPkgsLIPNo.AsInteger            := cds_UsedPkgsLIPNo.AsInteger ;
   FDm_AvRegPkgsOwnerNo.AsInteger          := cds_UsedPkgsOwnerNo.AsInteger ;

   FDm_AvRegPkgsOriginalPaketnr.AsInteger  := cds_UsedPkgsOldPackageNo.AsInteger ;
   FDm_AvRegPkgsOriginalPrefix.AsString    := cds_UsedPkgsOldSupplierCode.AsString ;

   FDm_AvRegPkgsPaketnrAttAvReg.AsInteger  := cds_UsedPkgsPkgNoInvCount.AsInteger ;
   FDm_AvRegPkgsPrefixAttAvReg.AsString    := cds_UsedPkgsPrefixInvCount.AsString ;
   FDm_AvRegPkgsPackageTypeNoAttAvReg.AsInteger  := cds_UsedPkgsOldPackageTypeNo.AsInteger ;

   FDm_AvRegPkgs.Post ;
   cds_UsedPkgs.Next ;
  End ;


  cds_NewPkgs.Active  := False ;
  cds_NewPkgs.ParamByName('SortingOrderNo').AsInteger :=  FDm_SettingsSortingOrderNo.AsInteger ;
  cds_NewPkgs.Active  := True ;
  cds_NewPkgs.First ;
  While not cds_NewPkgs.Eof do
  Begin
   FDm_PaRegPkgs.Insert ;
   For x := 0 to 7 do
   FDm_PaRegPkgs.Fields.Fields[x].AsVariant := cds_NewPkgs.Fields.Fields[x].AsVariant ;
   FDm_PaRegPkgs.Post ;
   cds_NewPkgs.Next ;
  End ;


  Finally
   FDm_PaRegPkgs.EnableControls ;
   FDm_AvRegPkgs.EnableControls ;
  End ;
 End ;//With
end;

procedure Tdm_Vis_Vida.FDm_SettingsSortingOrderNoChange(Sender: TField);
begin
 OpenSortingOrder ;
 GetDefaultSortingOrderParams ;
 FDm_SettingsVisaAllaAvRegPkt.AsInteger := 0 ;
end;

procedure Tdm_Vis_Vida.GetDefaultSortingOrderParams ;
Begin
 if FDm_SettingsSortingOrderNo.AsInteger > 0 then
 Begin
  FD_SortingOrder.ParamByName('SortingOrderNo').AsInteger  := FDm_SettingsSortingOrderNo.AsInteger ;
  FD_SortingOrder.Open ;
  Try
   if not FD_SortingOrder.Eof then
   Begin
    FDm_SettingsOwnerNo.AsInteger     := FD_SortingOrderOwnerNo.AsInteger ;
    FDm_SettingsProducerNo.AsInteger  := FD_SortingOrderProducerNo.AsInteger ;
    FDm_SettingsRegPointNo.AsInteger  := FD_SortingOrderRegPointNo.AsInteger ;
    FDm_SettingsPIPNo.AsInteger       := FD_SortingOrderPIPNo.AsInteger ;
   End ;
  Finally
   FD_SortingOrder.Close ;
  End ;
 End ;//if..
End ;

procedure Tdm_Vis_Vida.FDm_SettingsOwnInventoryChange(Sender: TField);
begin
  cds_PksByInventoryPlaceIIII.Filtered := False ;
  cds_PksByInventoryPlaceIIII.Filter   := '' ;

  if FDm_SettingsProductInRun.AsInteger = 1 then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   := 'IncludedInRun = ' + QuotedStr('Ja ') ;
//   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End ;
  if (FDm_SettingsProductInRun.AsInteger = 1) and (FDm_SettingsOwnInventory.AsInteger = 1) then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   := cds_PksByInventoryPlaceIIII.Filter + ' AND OwnerNo = ' + FDm_SettingsOwnerNo.AsString ;
//   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End
  else
  if (FDm_SettingsProductInRun.AsInteger = 0) and (FDm_SettingsOwnInventory.AsInteger = 1) then
  Begin
   cds_PksByInventoryPlaceIIII.Filter   := 'OwnerNo = ' + FDm_SettingsOwnerNo.AsString ;
//   cds_PksByInventoryPlaceIIII.Filtered := True ;
  End ;
 if Length(cds_PksByInventoryPlaceIIII.Filter) > 0 then
  cds_PksByInventoryPlaceIIII.Filtered  := True ;
end;

function Tdm_Vis_Vida.Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String ;
begin
  Result := SP_Pkg_Reserved(PkgNo,PkgSupplierCode, Modul, Res_UserName) ;
end;

//Check if package is reserved, if not then the sp reservs the package for user.
function Tdm_Vis_Vida.SP_Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode : string3;const Modul : String;Var Res_UserName : String): String;
begin
  Try
  Try
  sp_Pkg_Res.ParamByName('@PackageNo').AsInteger      := PkgNo;
  sp_Pkg_Res.ParamByName('@SupplierCode').AsString    := PkgSupplierCode;
  sp_Pkg_Res.ParamByName('@Asking_Modul').AsString    := Modul;
  sp_Pkg_Res.ParamByName('@UserID').AsInteger         := ThisUser.UserID ;
  sp_Pkg_Res.ParamByName('@Asking_UserName').AsString := ThisUser.UserName ;
  sp_Pkg_Res.ExecProc;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_Pkg_Res.ExecSQL') ;
    Raise ;
   End ;
  End ;
  Res_UserName:= Trim(sp_Pkg_Res.ParamByName('@UserName').AsString)
  +'/'+ Trim(sp_Pkg_Res.ParamByName('@Modul').AsString) ;
  Result := Res_UserName ;
  Finally
   sp_Pkg_Res.Close;
  End ;
end;

procedure Tdm_Vis_Vida.Delete_ReservedPkgs(const Modul : String) ;
Begin
 Try
 sp_Delete_Res_Pkgs.Close ;
 sp_Delete_Res_Pkgs.ParamByName('@UserID').AsInteger  := ThisUser.UserID ;
 sp_Delete_Res_Pkgs.ParamByName('@Modul').AsString    := Modul ;
 sp_Delete_Res_Pkgs.ExecProc ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_Delete_Res_Pkgs.ExecSQL') ;
    Raise ;
   End ;
  End ;
End ;

procedure Tdm_Vis_Vida.AddPkgTypeColumns(const PackageTypeNo : Integer) ;
Begin
 //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
 Try
 sp_lencolpcspkgtypeno.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
 sp_lencolpcspkgtypeno.ExecProc ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_lencolpcspkgtypeno.ExecSQL') ;
    Raise ;
   End ;
  End ;
End ;

//Result = Prefix
function Tdm_Vis_Vida.GetPkgPos (Var PackageNoString : String) : String ;
Var ClientID, PktnrLevKod : String ;
Begin
 dmsSystem.FDoLog('PackageNoString = ' + PackageNoString) ;
 ClientID :=  Trim(Copy(PackageNoString, 1, 11)) ;
// FDoLog('ClientID = ' + ClientID) ;

 Try
 sq_GetPkgPos.Close ;
 sq_GetPkgPos.ParamByName('ClientID').Value:= ClientID ;
 sq_GetPkgPos.Open ;
 Try
 except
  On E: Exception do
  Begin
   dmsSystem.FDoLog(E.Message+' :sq_GetPkgPos.Open') ;
   ShowMessage(E.Message+' :sq_GetPkgPos.Open') ;
   Raise ;
  End ;
 end;

 if not sq_GetPkgPos.Eof then
 Begin
  //Kopierar 2 siffrigt prefix från paketnrsträngen
  PktnrLevKod:= Trim(Copy(PackageNoString, sq_GetPkgPosSupplierCodePos.AsInteger, sq_GetPkgPosSupplierCodeLength.AsInteger)) ;
//  FDoLog('sq_GetPkgPosSupplierCodePos.AsString = ' + sq_GetPkgPosSupplierCodePos.AsString) ;
//  FDoLog('sq_GetPkgPosSupplierCodeLength.AsString = ' + sq_GetPkgPosSupplierCodeLength.AsString) ;

  PackageNoString:= Trim(Copy(PackageNoString, sq_GetPkgPosPaketNoPos.AsInteger, sq_GetPkgPosPaketNoLength.AsInteger)) ;
//  FDoLog('PackageNoString = ' + PackageNoString) ;

//Hämta in paketprefix från tabellen PkgPrefix
   Try
   Try
   sq_GetPkgPrefix.ParamByName('ProductionUnitCode').Value := PktnrLevKod ;
   sq_GetPkgPrefix.ParamByName('ClientID').Value           := ClientID ;
   sq_GetPkgPrefix.Open ;

  except
   On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message+' :sq_GetPkgPrefix.Open') ;
     ShowMessage(E.Message+' :sq_GetPkgPrefix.Open') ;
    Raise ;
   End ;
  end;
//   FDoLog('sq_GetPkgPrefixPkgPrefix.AsString = ' + sq_GetPkgPrefixPkgPrefix.AsString) ;

   if (not sq_GetPkgPrefix.Eof) or (Length(sq_GetPkgPrefixPkgPrefix.AsString) > 1) then
    Result  := sq_GetPkgPrefixPkgPrefix.AsString
     else
      Begin
       Result           := '' ;
       PackageNoString  := '-1' ;
       dmsSystem.FDoLog('1:PackageNoString = ' + PackageNoString) ;
      End ;
   Finally
    sq_GetPkgPrefix.Close ;
   End ;
 End
 else//if not sq_GetPkgPos.Eof then
 Begin
  Result  := '' ;
  PackageNoString:= '-1' ;
  dmsSystem.FDoLog('2:PackageNoString = ' + PackageNoString) ;
 End ;

 Finally
  sq_GetPkgPos.Close ;
 End ;

End ;

function Tdm_Vis_Vida.Pkg_Has_ZERO_OperationStatus : Boolean ;
Var
  Save_Cursor   : TCursor ;
  OldFilter     : String ;
Begin
 if FDm_AvRegPkgs.Active then
 Begin
 Result         := False ;
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 FDm_AvRegPkgs.DisableControls ;
 Try
 OldFilter              := FDm_AvRegPkgs.Filter ;
 FDm_AvRegPkgs.Filter   := 'OperationStatus = 0' ;
 FDm_AvRegPkgs.Filtered := True ;
 FDm_AvRegPkgs.First ;
 Try

// om packagenoAttAvreg inte har något värde så avregistreras inte något paket fysiskt från lager
 While not FDm_AvRegPkgs.EOF do
 Begin
  Result  := True ;
  FDm_AvRegPkgs.Next ;
 End ;//While

 Finally

//  FDm_AvRegPkgs.Filtered  := False ;
 End ;

 Finally
  FDm_AvRegPkgs.Filter   := OldFilter ;
  FDm_AvRegPkgs.EnableControls ;
  Screen.Cursor           := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//if FDm_AvRegPkgs.Active then
End ;

procedure Tdm_Vis_Vida.FDm_SettingsAfterInsert(DataSet: TDataSet);
begin
// FDm_SettingsPIPNo.AsInteger  :=  0 ;
end;

procedure Tdm_Vis_Vida.FDm_SettingsVisaAllaAvRegPktChange(Sender: TField);
begin
 if FDm_SettingsVisaAllaAvRegPkt.AsInteger  = 0 then
 Begin
  FDm_AvRegPkgs.Filter   := 'OperationStatus <> 1' ;
  FDm_AvRegPkgs.Filtered := True ;
 End
 else
 Begin
//  FDm_AvRegPkgs.Filter   := 'OperationStatus <> 1' ;
  FDm_AvRegPkgs.Filtered := False ;
 End ;
end;

function Tdm_Vis_Vida.PkgInList(const PaketNr : Integer;const Prefix : String) : Boolean ;
Var Filter      : String ;
    WasFiltered : Boolean ;
Begin
 if FDm_AvRegPkgs.Filtered then
 Begin
  Filter := FDm_AvRegPkgs.Filter ;
  FDm_AvRegPkgs.Filtered := False ;
  WasFiltered := True ;
 End
 else
 WasFiltered := False ;

 Try
 if FDm_AvRegPkgs.Locate('Paketnr;Prefix', VarArrayOf([PaketNr, Prefix]), []) then
  Result  := True
   else
    Result  := False ;
 Finally
  FDm_AvRegPkgs.Filter    := Filter ;
  FDm_AvRegPkgs.Filtered  := WasFiltered ;
 End ;
End ;

procedure Tdm_Vis_Vida.OpenPkgInfo(const PaketNr : Integer;const Prefix : String) ;
Var LPrefix : String ;
Begin
 if cds_PkgInfo.Active then
  cds_PkgInfo.Active  := False ;
 cds_PkgInfo.ParamByName('PkgNo').AsInteger           := PaketNr ;
 if Length(Prefix) = 0 then
  LPrefix  := '___'
  else
  LPrefix := Prefix ;
 cds_PkgInfo.ParamByName('SupplierCode').AsString     := LPrefix ;
 cds_PkgInfo.ParamByName('InvOwner').AsInteger        := FDm_SettingsOwnerNo.AsInteger ;
 cds_PkgInfo.ParamByName('InvOwnerII').AsInteger      := FDm_SettingsOwnerNo.AsInteger ;
 cds_PkgInfo.ParamByName('SortingOrderNo').AsInteger  := FDm_SettingsSortingOrderNo.AsInteger ;
// cds_PkgInfo.ParamByName('OrtNo').AsInteger           := FDm_SettingsLocationNo.AsInteger ;
 cds_PkgInfo.Active := True ;
End ;

procedure Tdm_Vis_Vida.ClosePkgInfo ;
Begin
 if cds_PkgInfo.Active then
  cds_PkgInfo.Active  := False ;
End ;

function Tdm_Vis_Vida.PkgInfoExist : Boolean ;
Begin
 Result := (cds_PkgInfo.Active) and (cds_PkgInfo.RecordCount > 0) ;
End ;

end.
