unit dmcPkgs;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, kbmMemTable, SqlTimSt, Dialogs,
  VidaType, Controls, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type

  TdmPkgs = class(TDataModule)
    ds_LoadPackages: TDataSource;
    sp_DeletePackage: TSQLStoredProc;
    mtPackages: TkbmMemTable;
    dsmtPackages: TDataSource;
    sq_ProductLengths2: TSQLQuery;
    sq_ProductLengths2ProductLengthNo: TIntegerField;
    sq_ProductLengths2ActualLengthMM: TFloatField;
    sq_ProductLengths2NominalLengthMM: TFloatField;
    sq_ProductLengths2NominalLengthFEET: TFloatField;
    sq_ProductLengths2ActualLengthINCH: TStringField;
    sq_ProductLengths2PET: TIntegerField;
    sq_ProductLengths2FingerJoint: TIntegerField;
    mtProdSpecificLengths: TkbmMemTable;
    mtProdSpecificLengthsProductGroupNo: TIntegerField;
    mtProdSpecificLengthsProductLengthNo: TIntegerField;
    sp_ProdLeng: TSQLStoredProc;
    sp_ProdLengProductLengthNo: TIntegerField;
    mtStandardLengths: TkbmMemTable;
    mtStandardLengthsProductLengthNo: TIntegerField;
    sp_StandardLengths: TSQLStoredProc;
    sp_StandardLengthsProductLengthNo: TIntegerField;
    sp_PkgInfo: TSQLStoredProc;
    sp_PkgInfoCREATED: TSQLTimeStampField;
    sp_PkgInfoCREATED_BY: TStringField;
    sp_PkgInfoOWNER: TStringField;
    sp_PkgInfoPKG_STATUS: TIntegerField;
    sp_PkgInfoINVENTORY: TStringField;
    sp_ChangePkg: TSQLStoredProc;
    sq_GetPkgsByLONo: TSQLQuery;
    sq_GetPkgsByLONoPRODUCT: TStringField;
    sq_GetPkgsByLONoPACKAGENO: TIntegerField;
    sq_GetPkgsByLONoPACKAGETYPENO: TIntegerField;
    sq_GetPkgsByLONoSUPP_CODE: TStringField;
    sq_GetPkgsByLONoM3_NET: TFloatField;
    sq_GetPkgsByLONoPCS: TIntegerField;
    sq_GetPkgsByLONoM3_NOM: TFloatField;
    sq_GetPkgsByLONoKVM: TFloatField;
    sq_GetPkgsByLONoLOPM: TFloatField;
    sq_GetPkgsByLONoPRODUCTNO: TIntegerField;
    sq_GetPkgsByLONoINVENTORY: TStringField;
    sq_GetPkgsByLONoPCS_PER_LENGTH: TStringField;
    sq_GetPkgsByLONoOWNER: TStringField;
    sq_GetPkgsByLONoOWNERNO: TIntegerField;
    sq_GetPkgsByLONoLOG_INVENTORY_NO: TIntegerField;
    sq_GetPkgsByLONoBAR_CODE: TStringField;
    sq_GetPkgsByLONoBARCODE_ID: TIntegerField;
    sq_GetPkgsByLONoGRADE_STAMP: TStringField;
    sq_GetPkgsByLONoGRADESTAMPNO: TIntegerField;
    sq_GetPkgsByLONoSUPPLIERNO: TIntegerField;
    sq_GetPkgsByLONoOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg1: TSQLQuery;
    sq_OneUniquePkg1PRODUCT: TStringField;
    sq_OneUniquePkg1PACKAGENO: TIntegerField;
    sq_OneUniquePkg1PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg1SUPP_CODE: TStringField;
    sq_OneUniquePkg1M3_NET: TFloatField;
    sq_OneUniquePkg1PCS: TIntegerField;
    sq_OneUniquePkg1M3_NOM: TFloatField;
    sq_OneUniquePkg1KVM: TFloatField;
    sq_OneUniquePkg1LOPM: TFloatField;
    sq_OneUniquePkg1PRODUCTNO: TIntegerField;
    sq_OneUniquePkg1INVENTORY: TStringField;
    sq_OneUniquePkg1PCS_PER_LENGTH: TStringField;
    sq_OneUniquePkg1OWNER: TStringField;
    sq_OneUniquePkg1OWNERNO: TIntegerField;
    sq_OneUniquePkg1LOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkg1BAR_CODE: TStringField;
    sq_OneUniquePkg1BARCODE_ID: TIntegerField;
    sq_OneUniquePkg1GRADE_STAMP: TStringField;
    sq_OneUniquePkg1GRADESTAMPNO: TIntegerField;
    sq_OneUniquePkg1SUPPLIERNO: TIntegerField;
    sq_OneUniquePkg1OLD_PACKAGETYPENO: TIntegerField;
    sq_Prod_In_LO: TSQLQuery;
    dsp_Prod_In_LO: TDataSetProvider;
    cds_Prod_In_LO: TClientDataSet;
    ds_Prod_In_LO: TDataSource;
    cds_Prod_In_LOPRODUCT: TStringField;
    cds_Prod_In_LOPRODUCTNO: TIntegerField;
    sp_Del_PkgProd: TSQLStoredProc;
    sp_updateFelReg: TSQLStoredProc;
    sp_MovePkg_old: TSQLStoredProc;
    sq_PkgInLoad: TSQLQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sp_PaRegPaket: TSQLStoredProc;
    sq_OnePkg: TSQLQuery;
    sq_OnePkgPRODUCT: TStringField;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgPACKAGETYPENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgM3_NET: TFloatField;
    sq_OnePkgPCS: TIntegerField;
    sq_OnePkgM3_NOM: TFloatField;
    sq_OnePkgKVM: TFloatField;
    sq_OnePkgLOPM: TFloatField;
    sq_OnePkgPRODUCTNO: TIntegerField;
    sq_OnePkgINVENTORY: TStringField;
    sq_OnePkgPCS_PER_LENGTH: TStringField;
    sq_OnePkgOWNER: TStringField;
    sq_OnePkgOWNERNO: TIntegerField;
    sq_OnePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgBAR_CODE: TStringField;
    sq_OnePkgBARCODE_ID: TIntegerField;
    sq_OnePkgGRADE_STAMP: TStringField;
    sq_OnePkgGRADESTAMPNO: TIntegerField;
    sq_OnePkgSUPPLIERNO: TIntegerField;
    sq_OnePkgOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg1PIP: TIntegerField;
    sp_changePkgInventering: TSQLStoredProc;
    sp_NewPackageNo_old: TSQLStoredProc;
    sp_OnePackageNo: TSQLStoredProc;
    sq_PkgNoAvail: TSQLQuery;
    sq_PkgNoAvailPackageNo: TIntegerField;
    sq_PkgNoAvailSupplierCode: TStringField;
    sq_PkgNoAvailPackageTypeNo: TIntegerField;
    sp_ExtMovePkg: TSQLStoredProc;
    sq_OneUniquePkg1Status: TIntegerField;
    sq_PkgAvReg: TSQLQuery;
    sq_PkgAvRegRegPointName: TStringField;
    sq_PkgAvRegProductionDate: TSQLTimeStampField;
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
    mtLoadPackagesPCS_PER_LENGTH: TStringField;
    mtLoadPackagesOWNER: TStringField;
    mtLoadPackagesOWNERNO: TIntegerField;
    mtLoadPackagesLOG_INVENTORY_NO: TIntegerField;
    mtLoadPackagesBAR_CODE: TStringField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADE_STAMP: TStringField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadPackagesSUPPLIERNO: TIntegerField;
    mtLoadPackagesOld_PackageTypeNo: TIntegerField;
    mtLoadPackagesSurfacingNo: TIntegerField;
    mtLoadPackagesPIP: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesACTTHICK: TFloatField;
    mtLoadPackagesACTWIDTH: TFloatField;
    mtLoadPackagesNOMTHICK: TFloatField;
    mtLoadPackagesNOMWIDTH: TFloatField;
    mtLoadPackagesROWNO: TIntegerField;
    mtLoadPackagesStatus: TIntegerField;
    mtLoadPackagesStatusText: TStringField;
    sq_GetPkgsByLONoSurfacingNo: TIntegerField;
    sq_OneUniquePkg1SurfacingNo: TIntegerField;
    sp_VardaBortPaket: TSQLStoredProc;
    mtPcsPerLength: TkbmMemTable;
    mtPcsPerLengthProductLengthNo: TIntegerField;
    mtPcsPerLengthProductNo: TIntegerField;
    mtPcsPerLengthNoOfPieces: TIntegerField;
    mtPcsPerLengthUserID: TIntegerField;
    mtPcsPerLengthALMM: TFloatField;
    mtLoadPackagesInvNr: TIntegerField;
    sq_OneUniquePkgExt: TSQLQuery;
    sq_OneUniquePkgExtPRODUCT: TStringField;
    sq_OneUniquePkgExtPACKAGENO: TIntegerField;
    sq_OneUniquePkgExtPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgExtSUPP_CODE: TStringField;
    sq_OneUniquePkgExtM3_NET: TFloatField;
    sq_OneUniquePkgExtPCS: TIntegerField;
    sq_OneUniquePkgExtM3_NOM: TFloatField;
    sq_OneUniquePkgExtKVM: TFloatField;
    sq_OneUniquePkgExtLOPM: TFloatField;
    sq_OneUniquePkgExtPRODUCTNO: TIntegerField;
    sq_OneUniquePkgExtINVENTORY: TStringField;
    sq_OneUniquePkgExtPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgExtOWNER: TStringField;
    sq_OneUniquePkgExtOWNERNO: TIntegerField;
    sq_OneUniquePkgExtLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgExtBAR_CODE: TStringField;
    sq_OneUniquePkgExtBARCODE_ID: TIntegerField;
    sq_OneUniquePkgExtGRADE_STAMP: TStringField;
    sq_OneUniquePkgExtGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgExtSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgExtOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgExtSurfacingNo: TIntegerField;
    sq_OneUniquePkgExtPIP: TIntegerField;
    sq_OneUniquePkgExtStatus: TIntegerField;
    sp_AktiveraPktExt: TSQLStoredProc;
    FDsp_vida_ChgPkgVard: TFDStoredProc;
    FDsp_vis_PkgType_II: TFDStoredProc;
    FDsp_vis_NewPkgType: TFDStoredProc;
    FDsp_vida_NewPackageDetail: TFDStoredProc;
    FDsp_vida_Populate_One_PackageTypeLengths: TFDStoredProc;
    FDsp_vida_PackageTotals: TFDStoredProc;
    sq_OneUniquePkg_old: TFDQuery;
    sq_OneUniquePkg_oldPRODUCT: TStringField;
    sq_OneUniquePkg_oldPACKAGENO: TIntegerField;
    sq_OneUniquePkg_oldPACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg_oldSUPP_CODE: TStringField;
    sq_OneUniquePkg_oldM3_NET: TFloatField;
    sq_OneUniquePkg_oldPCS: TIntegerField;
    sq_OneUniquePkg_oldM3_NOM: TFloatField;
    sq_OneUniquePkg_oldKVM: TFloatField;
    sq_OneUniquePkg_oldLOPM: TFloatField;
    sq_OneUniquePkg_oldPRODUCTNO: TIntegerField;
    sq_OneUniquePkg_oldINVENTORY: TStringField;
    sq_OneUniquePkg_oldONSTICKS: TIntegerField;
    sq_OneUniquePkg_oldPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkg_oldOWNER: TStringField;
    sq_OneUniquePkg_oldOWNERNO: TIntegerField;
    sq_OneUniquePkg_oldLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkg_oldBAR_CODE: TStringField;
    sq_OneUniquePkg_oldBARCODE_ID: TIntegerField;
    sq_OneUniquePkg_oldGRADE_STAMP: TStringField;
    sq_OneUniquePkg_oldGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkg_oldPKG_HEIGHT: TIntegerField;
    sq_OneUniquePkg_oldPKGWIDTH: TIntegerField;
    sq_OneUniquePkg_oldMINI_BUNDLE: TIntegerField;
    sq_OneUniquePkg_oldSHRINK_WRAP: TIntegerField;
    sq_OneUniquePkg_oldWRAP_TYPE: TStringField;
    sq_OneUniquePkg_oldWRAPTYPENO: TIntegerField;
    sq_OneUniquePkg_oldSUPPLIERNO: TIntegerField;
    sq_OneUniquePkg_oldOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkg_oldPIP: TIntegerField;
    sq_OneUniquePkg_oldStatus: TIntegerField;
    sq_OneUniquePkg_oldSurfacingNo: TIntegerField;
    sq_ProductLengths: TFDQuery;
    sq_ProductLengthsProductLengthNo: TIntegerField;
    sq_ProductLengthsActualLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthMM: TFloatField;
    sq_ProductLengthsNominalLengthFEET: TFloatField;
    sq_ProductLengthsActualLengthINCH: TStringField;
    sq_ProductLengthsPET: TIntegerField;
    sq_ProductLengthsFingerJoint: TIntegerField;
    FDsp_vida_PackageTypeDetail: TFDStoredProc;
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
    sq_OneUniquePkgPCS_PER_LENGTH: TStringField;
    sq_OneUniquePkgOWNER: TStringField;
    sq_OneUniquePkgOWNERNO: TIntegerField;
    sq_OneUniquePkgLOG_INVENTORY_NO: TIntegerField;
    sq_OneUniquePkgBAR_CODE: TStringField;
    sq_OneUniquePkgBARCODE_ID: TIntegerField;
    sq_OneUniquePkgGRADE_STAMP: TStringField;
    sq_OneUniquePkgGRADESTAMPNO: TIntegerField;
    sq_OneUniquePkgSUPPLIERNO: TIntegerField;
    sq_OneUniquePkgOLD_PACKAGETYPENO: TIntegerField;
    sq_OneUniquePkgSurfacingNo: TIntegerField;
    sq_OneUniquePkgPIP: TIntegerField;
    sq_OneUniquePkgPKG_HEIGHT: TIntegerField;
    sq_OneUniquePkgPKGWIDTH: TIntegerField;
    sq_OneUniquePkgMINI_BUNDLE: TIntegerField;
    sq_OneUniquePkgSHRINK_WRAP: TIntegerField;
    sq_OneUniquePkgWRAP_TYPE: TStringField;
    sq_OneUniquePkgWRAPTYPENO: TIntegerField;
    sq_OneUniquePkgStatus: TIntegerField;
    sq_OneUniquePkgONSTICKS: TIntegerField;
    sq_OneUniquePkgActualThicknessMM: TFloatField;
    sq_OneUniquePkgActualWidthMM: TFloatField;
    sq_OneUniquePkgNominalThicknessMM: TFloatField;
    sq_OneUniquePkgNominalWidthMM: TFloatField;
    cds_PkgStatus: TFDQuery;
    cds_PkgStatusSupplierCode: TStringField;
    cds_PkgStatusLIPGroupNo: TIntegerField;
    cds_PkgStatusInvenType: TIntegerField;
    cds_PkgStatusLIPNo: TIntegerField;
    cds_PkgStatusAvReg: TIntegerField;
    cds_PkgStatusPkgRealLIPNo: TIntegerField;
    sp_RemovePackageFromInventory: TFDStoredProc;
    sp_NewPackageNo: TFDStoredProc;
    sp_MovePkg: TFDStoredProc;
    sq_OnePkgDetailData: TFDQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPRODUCTNO: TIntegerField;
    sq_OnePkgDetailDataINVENTORY: TStringField;
    sq_OnePkgDetailDataONSTICKS: TIntegerField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataOWNER: TStringField;
    sq_OnePkgDetailDataOWNERNO: TIntegerField;
    sq_OnePkgDetailDataLOG_INVENTORY_NO: TIntegerField;
    sq_OnePkgDetailDataBAR_CODE: TStringField;
    sq_OnePkgDetailDataBARCODE_ID: TIntegerField;
    sq_OnePkgDetailDataGRADE_STAMP: TStringField;
    sq_OnePkgDetailDataGRADESTAMPNO: TIntegerField;
    sq_OnePkgDetailDataPKG_HEIGHT: TIntegerField;
    sq_OnePkgDetailDataPKGWIDTH: TIntegerField;
    sq_OnePkgDetailDataMINI_BUNDLE: TIntegerField;
    sq_OnePkgDetailDataSHRINK_WRAP: TIntegerField;
    sq_OnePkgDetailDataWRAP_TYPE: TStringField;
    sq_OnePkgDetailDataWRAPTYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPPLIERNO: TIntegerField;
    sq_OnePkgDetailDataOLD_PACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtPackagesBeforePost(DataSet: TDataSet);
    procedure mtLoadPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure mtLoadPackagesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
//   fChangePkgSize: Boolean ;
//   fPkg_Width, fPkg_Height : Integer ;
   procedure PrepareLocalPkgTable (mtUserProp : TkbmMemTable) ;
   function  LengthWHERE_II(const ProductGroupNo : Integer) : String ;
   Procedure InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
   function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
   function  PkgExistInLoad : Boolean ;
   function  GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
   function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
   Function  GetLengthsEntered : String ;
   Function  GetNoOfOriginalLengthsInPkg : String ;
  public
    { Public declarations }
    ROWNO : Integer ;
//    RoleType : Integer ;
//    fGradeStampNo, fBarCodeID : Integer ;
//    PcsPerLengthArray : Array[0..300] of Integer ; //to copy no of pcs to new row
//    ActualLengthMMArray : Array[0..300] of Double ;
//    NominalLengthMMArray : Array[0..300] of Double ;

//   fRegistrationPointNo : Integer ;
//    InputOption : Integer ;
    SupplierCode : String3 ;
    SupplierNo : Integer ;
//    InventoryOwnerNo : Integer ;
//    fLogicalInventoryNo: Integer ;
//    ProductLengthNo_For_LPM_Entry : Integer ;
//    InventoryNo : Integer ;

//   GlobalLoadDetailNo : Integer ;
//   fProductNo, fProductGroupNo : Integer ;
   function  AterStallPktTillInventoryEXT (mtUserProp : TkbmMemTable;const LIPNo, OwnerNo : Integer) : Boolean ;
   function  SaveChgPkgVard(mtUserProp : TkbmMemTable) : Boolean ;
   procedure MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
   function  DeletePackagesFromSystem (mtUserProp : TkbmMemTable) : Boolean ;
   function  RemovePkgsFromInventory (mtUserProp : TkbmMemTable) : Boolean ;
   function  AterStallPktTillInventory (mtUserProp : TkbmMemTable) : Boolean ;
   procedure SummarizePkg ;
   function  FlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
   function  ExtFlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
   function  SaveFelRegPkgs(mtUserProp : TkbmMemTable) : Boolean ;

   procedure LoadGroupLengths(const GroupNo : Integer);
   procedure MakeLengthQuery_II (const ProductGroupNo : Integer) ;

   function  AddPkgsByPktType (const RegistrationPointNo : Integer;
        WhenCreated : TDateTime) : Boolean ;

   function  Preparera_mtLoadPackages (SupplierCode : String;OwnerNo_ofPkgNo, LOG_INVENTORY_NO, PackageTypeNo, NoOfPkgs : Integer) : Boolean ;
   function  GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
   function  RemovePkgsFromInventering (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;

   function  IsPkgAvregistrerat (const PackageNo, SupplierNo : Integer; const SupplierCode : String) : String ;
   Procedure GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo : Integer;const SupplierNo, PackageNo : Integer) ;
   function  VardaBortPaket (mtUserProp : TkbmMemTable) : Boolean ;
  end;

var
  dmPkgs: TdmPkgs;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem ,
  dm_Inventory;

{$R *.dfm}

Procedure TdmPkgs.GetLIPNoByPackageNo(const SupplierCode : String;Var LIPNo : Integer;const SupplierNo, PackageNo : Integer) ;
const pkgType = 1 ;
Begin
 cds_PkgStatus.Active:= False ;
// sq_PkgStatus.Close ;
 cds_PkgStatus.ParamByName('PackageNo').AsInteger    := PackageNo ;
 cds_PkgStatus.ParamByName('ClientNo').AsInteger     := SupplierNo ;
// sq_PkgStatus.ParamByName('SupplierNo').AsInteger   := SupplierNo ;
 cds_PkgStatus.ParamByName('SupplierCode').AsString  := SupplierCode ;
 cds_PkgStatus.Active:= True ;
 if not cds_PkgStatus.Eof then
 Begin
  if cds_PkgStatus.RecordCount = 1 then
  Begin
//   SupplierCode := sq_PkgStatusSupplierCode.AsString ;
//   LIPNo:= cds_PkgStatusLIPNo.AsInteger ;
   if cds_PkgStatusInvenType.AsInteger = pkgType then
    LIPNo:= cds_PkgStatusAvReg.AsInteger
     else
      LIPNo := cds_PkgStatusPkgRealLIPNo.AsInteger ;//cds_PkgStatusLIPNo.AsInteger ;
  End
   else
    LIPNo := -1 ;
 End
  else
   LIPNo := -2 ; ;
 cds_PkgStatus.Active:= False ;
End ;

procedure TdmPkgs.DataModuleCreate(Sender: TObject);
begin
 //GlobalLoadDetailNo := 1 ;
 ROWNO:= 1 ;
end;

procedure TdmPkgs.mtPackagesBeforePost(DataSet: TDataSet);
begin
 SummarizePkg ;
end;

procedure TdmPkgs.SummarizePkg ;
var x : Integer ;
begin
  if mtpackages.State <> dsBrowse then
  Begin
//PCS
    mtpackages.Fields[1].AsInteger:= 0 ;

    For x:= 2 to mtpackages.Fields.Count - 1 do
    mtpackages.Fields[1].AsInteger:= mtpackages.Fields[1].AsInteger +
    mtpackages.Fields[x].AsInteger ;

  End ;
end;

//for package entry without LO
procedure TdmPkgs.MakeLengthQuery_II(const ProductGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH , PL.PET , PL.FingerJoint');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductGroupLengths PGL INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add(LengthWHERE_II(ProductGroupNo)) ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

 function TdmPkgs.LengthWHERE_II(const ProductGroupNo : Integer) : String ;
 Var  SQL : String ;
 Begin
  SQL:= '' ;
     SQL:= ' WHERE ((PGL.ProductGroupNo = '+IntToStr(ProductGroupNo)+')' ;
     InsertProductGroupSpecificLengths(ProductGroupNo) ;
    SQL:= SQL +') AND PL.ActualLengthMM > 0.5' ;
    SQL:= SQL + ' AND PL.Act = 1' ;
    SQL:= SQL +' ORDER BY PL.ActualLengthMM ' ;
   Result:= SQL ;
 End ;

Procedure TdmPkgs.InsertProductGroupSpecificLengths(const ProductGroupNo : Integer) ;
Begin
 if not mtProdSpecificLengths.FindKey([ProductGroupNo]) then
 Begin
  sp_ProdLeng.Close ;
  sp_ProdLeng.ParamByName('ProductGroupNo').AsInteger:= ProductGroupNo ;
  sp_ProdLeng.Open ;
  sp_ProdLeng.First ;
  While not sp_ProdLeng.Eof do
  Begin
   mtProdSpecificLengths.Insert ;
   mtProdSpecificLengthsProductGroupNo.AsInteger  := ProductGroupNo ;
   mtProdSpecificLengthsProductLengthNo.AsInteger := sp_ProdLengProductLengthNo.AsInteger ;
   mtProdSpecificLengths.Post ;
   sp_ProdLeng.Next ;
  End ;
  sp_ProdLeng.Close ;
 End ; //with

End ;

procedure TdmPkgs.LoadGroupLengths(const GroupNo : Integer);

begin
  mtStandardLengths.Active:= False ;
  mtStandardLengths.Active:= True ;
  // Populate the list with std lengths applicable to the selected length group
  sp_StandardLengths.Close;
  sp_StandardLengths.ParamByName('LengthGroupNo').AsInteger := GroupNo;
  sp_StandardLengths.Open;
  sp_StandardLengths.First;
  while not sp_StandardLengths.Eof do
  begin
   mtStandardLengths.Insert ;
   mtStandardLengthsProductLengthNo.AsInteger:= sp_StandardLengthsProductLengthNo.AsInteger ;
   mtStandardLengths.Post ;
   sp_StandardLengths.Next;
  end;
  sp_StandardLengths.Close;
end;



function TdmPkgs.Pkg_Info(const PkgNo: Integer; const SuppCode : String) : String ;
Begin
 sp_PkgInfo.ParamByName('PackageNo').AsInteger:= PkgNo ;
 sp_PkgInfo.ParamByName('SupplierCode').AsString:= SuppCode ;
 sp_PkgInfo.Open ;
 Result:= intToStr(PkgNo)+'/'+SuppCode+' It was created by '+
 sp_PkgInfoCREATED_BY.AsString+' at: '+SQLTimeStampToStr('',sp_PkgInfoCREATED.AsSQLTimeStamp)+
 ' inventory: '+sp_PkgInfoINVENTORY.AsString ;
 sp_PkgInfo.Close ;
End ;

// Update packages with the selections the user has done
procedure TdmPkgs.PrepareLocalPkgTable(mtUserProp : TkbmMemTable) ;
Var TOTALPCS : Integer ;
Begin
 TOTALPCS:= 0 ;
//if no of pieces was entered by user then assign to TOTALPCS
 if mtpackages.State in [dsbrowse] then
  if mtpackages.Fields[1].AsInteger > 0 then
   TOTALPCS:= mtpackages.Fields[1].AsInteger ;

   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     mtLoadPackages.Edit ;

     if mtUserProp.fieldByName('VerkNo').AsInteger > 0 then
      mtLoadPackagesOWNERNO.AsInteger     := mtUserProp.fieldByName('VerkNo').AsInteger ;

//     if mtUserProp.fieldByName('LIPNo').AsInteger > 0 then
//      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= mtUserProp.fieldByName('LIPNo').AsInteger ;

     if mtUserProp.fieldByName('ProductNo').AsInteger > 0 then
     Begin
      mtLoadPackagesProductNo.AsInteger   := mtUserProp.fieldByName('ProductNo').AsInteger ;
      mtLoadPackagesSurfacingNo.AsInteger := mtUserProp.fieldByName('SurfacingNo').AsInteger ;
      mtLoadPackagesNOMTHICK.AsFloat      := mtUserProp.fieldByName('NOMTHICK').AsFloat ;
     End ;

     if TOTALPCS > 0 then
      mtLoadPackagesPCS.AsInteger:= TOTALPCS ;

     if mtUserProp.fieldByName('BarCodeNo').AsInteger > 0 then
      mtLoadPackagesBARCODE_ID.AsInteger := mtUserProp.fieldByName('BarCodeNo').AsInteger ;

     if mtUserProp.fieldByName('GradeStampNo').AsInteger > 0 then
      mtLoadPackagesGRADESTAMPNO.AsInteger := mtUserProp.fieldByName('GradeStampNo').AsInteger ;

     if (mtUserProp.fieldByName('LIPChange').AsInteger = 1) and
      (mtUserProp.fieldByName('LIPNo').AsInteger > 0) then
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger := mtUserProp.fieldByName('LIPNo').AsInteger ;


     mtLoadPackages.Post ;
     mtLoadPackages.Next ;
    End ; //While
End ;

function TdmPkgs.DeletePackagesFromSystem (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor  : TCursor;
 TransactionNo : LongWord;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
      sp_DeletePackage.Close ;
      sp_DeletePackage.ParamByName('PackageNo').AsInteger               := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_DeletePackage.ParamByName('SupplierCode').AsString             := mtLoadPackagesSUPP_CODE.AsString ;
      sp_DeletePackage.ParamByName('RegistrationPointNo').AsInteger     := mtUserProp.FieldByName('RegPointNo').AsInteger ;
      sp_DeletePackage.ParamByName('PackageTypeNo').AsInteger           := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_DeletePackage.ParamByName('LogicalInventoryPointNo').AsInteger := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_DeletePackage.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;

      if PkgExistInLoad = False then
       sp_DeletePackage.ExecProc
        else
         ShowMessage('Kan ej ta bort paketnr ' + mtLoadPackagesPACKAGENO.AsString + ', det är upptaget i en leverans.') ;
     mtLoadPackages.Next ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_DeletePackage.ExecProc') ;
      Raise ;
     End ;
    end;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.RemovePkgsFromInventory (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
 mtLoadPackages.DisableControls ;

 Try
  dmsConnector.StartTransaction ;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     //LIPNo är en variabel som hämtar in värdet
      GetLIPNoByPackageNo(mtLoadPackagesSUPP_CODE.AsString, LIPNo, mtLoadPackagesSupplierNo.AsInteger,  mtLoadPackagesPACKAGENO.AsInteger) ;
      mtLoadPackages.Edit ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= LIPNo ;
      mtLoadPackages.Post ;
      if LIPNo > 0 then
      Begin
       Try
       sp_RemovePackageFromInventory.Close ;
       sp_RemovePackageFromInventory.ParamByName('@PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_RemovePackageFromInventory.ParamByName('@RegistrationPointNo').AsInteger      := mtUserProp.FieldByName('RegPointNo').AsInteger ;
//       sp_RemovePackageFromInventory.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
//       sp_RemovePackageFromInventory.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_RemovePackageFromInventory.ParamByName('@MatPunktAgareNo').AsInteger          := mtUserProp.FieldByName('ProducerNo').AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;
       sp_RemovePackageFromInventory.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_RemovePackageFromInventory.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
      Raise ;
     End ;
    end;
      End
       else
        ShowMessage('Paketnr '+ mtLoadPackagesPACKAGENO.AsString +' har avregistrerats tidigare...') ;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 Finally
  mtLoadPackages.EnableControls ;
 End ;
end;

function TdmPkgs.AterStallPktTillInventory (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  TransactionNo := dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try

       sp_PaRegPaket.Close ;
       sp_PaRegPaket.ParamByName('PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_PaRegPaket.ParamByName('SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_PaRegPaket.ParamByName('RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_PaRegPaket.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_PaRegPaket.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_PaRegPaket.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
//       sp_PaRegPaket.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_PaRegPaket.ParamByName('DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_PaRegPaket.ParamByName('MatPunktAgareNo').AsInteger          := mtLoadPackagesOWNERNO.AsInteger ;// mtUserProp.FieldByName('ProducerNo').AsInteger ;
//       sp_PaRegPaket.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_PaRegPaket.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_PaRegPaket.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.VardaBortPaket (mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 mtLoadPackages.DisableControls ;
 Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     Try
       sp_VardaBortPaket.Close ;
       sp_VardaBortPaket.ParamByName('PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_VardaBortPaket.ParamByName('SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_VardaBortPaket.ParamByName('RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_VardaBortPaket.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_VardaBortPaket.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
       sp_VardaBortPaket.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
//       sp_VardaBortPaket.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_VardaBortPaket.ParamByName('DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_VardaBortPaket.ParamByName('MatPunktAgareNo').AsInteger          := mtLoadPackagesOWNERNO.AsInteger ;// mtUserProp.FieldByName('ProducerNo').AsInteger ;
//       sp_VardaBortPaket.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_VardaBortPaket.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_VardaBortPaket.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  mtLoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmPkgs.mtLoadPackagesAfterInsert(DataSet: TDataSet);
begin
 mtLoadPackagesROWNO.AsInteger  := ROWNO ;
 mtLoadPackagesStatus.AsInteger := 0 ;
 ROWNO                          := SUCC(ROWNO) ;
 mtLoadPackagesInvNr.AsInteger  := 0 ;    
end;


function TdmPkgs.SaveChgPkgVard(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor : TCursor;
  TransactionNo   : LongWord;
  PackagetypeNo   : Integer ;

  procedure SavePkgType ;
//  Var
//     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      FDsp_vis_PkgType_II.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      FDsp_vis_PkgType_II.ParamByName('@BarCodeID'    ).AsInteger := 0
      else
      FDsp_vis_PkgType_II.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger < 1 then
      FDsp_vis_PkgType_II.ParamByName('@GradeStamp'   ).AsInteger := 0
      else
      FDsp_vis_PkgType_II.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      FDsp_vis_PkgType_II.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;

      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
       FDsp_vis_PkgType_II.ParamByName('@PcsPerLength'  ).AsString := GetLengthsEntered
      else
       FDsp_vis_PkgType_II.ParamByName('@PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg ;

      FDsp_vis_PkgType_II.Open;
      try
//        FDsp_vis_PkgType_II.First;
        if not FDsp_vis_PkgType_II.Eof then begin
          Result := FDsp_vis_PkgType_II.FieldByName('PackageTypeNo').AsInteger ;
//          FDsp_vis_PkgType_II.Next;
        end
         else
          Result:= -1 ;

      finally
        FDsp_vis_PkgType_II.Close;
        end;

    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
//    var
//      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      Try
      FDsp_vis_NewPkgType.Close ;
      FDsp_vis_NewPkgType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      FDsp_vis_NewPkgType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      FDsp_vis_NewPkgType.ParamByName('@BarCodeID'       ).AsInteger := 0
      else
      FDsp_vis_NewPkgType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger < 1 then
      FDsp_vis_NewPkgType.ParamByName('@GradeStamp'      ).AsInteger := 0
      else
      FDsp_vis_NewPkgType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      FDsp_vis_NewPkgType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      FDsp_vis_NewPkgType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
//      FDsp_vis_NewPkgType.ParamByName('ProdInstruNo').AsInteger := -1 ;
      FDsp_vis_NewPkgType.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vis_NewPkgType.ExecProc') ;
      Raise ;
     End ;
    end;

//************** Now add the PackageTypeDetail records. ********************
      mtPcsPerLength.First ;
      While not mtPcsPerLength.Eof do
      Begin
       Try
        FDsp_vida_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        FDsp_vida_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := mtPcsPerLengthProductLengthNo.AsInteger ;
        FDsp_vida_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := mtPcsPerLengthNoOfPieces.AsInteger ;
        FDsp_vida_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        FDsp_vida_NewPackageDetail.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_NewPackageDetail.ExecProc') ;
      Raise ;
     End ;
    end;
        mtPcsPerLength.Next ;
      End ;
    end;

    procedure  SavePackageTypeLengths ;
    Begin
     Try
      FDsp_vida_Populate_One_PackageTypeLengths.Close ;
      FDsp_vida_Populate_One_PackageTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
      FDsp_vida_Populate_One_PackageTypeLengths.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_Populate_One_PackageTypeLengths.ExecProc') ;
      Raise ;
     End ;
    end;
      FDsp_vida_Populate_One_PackageTypeLengths.Close ;
    End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
   Try
    FDsp_vida_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    FDsp_vida_PackageTotals.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_PackageTotals.ExecProc') ;
      Raise ;
     End ;
    end;
    FDsp_vida_PackageTotals.Close;
  end;


  begin
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;


  function AndraPaket : Integer ;
  begin
    Try
    FDsp_vida_ChgPkgVard.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    FDsp_vida_ChgPkgVard.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    FDsp_vida_ChgPkgVard.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    FDsp_vida_ChgPkgVard.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    FDsp_vida_ChgPkgVard.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    FDsp_vida_ChgPkgVard.ParamByName('@RegistrationPointNo'    ).AsInteger  := 2 ; //2 = Lagevård. mtUserProp.FieldByName('RegPointNo').AsInteger ;
    FDsp_vida_ChgPkgVard.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
//    FDsp_vida_ChgPkgVard.ParamByName('SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    FDsp_vida_ChgPkgVard.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    FDsp_vida_ChgPkgVard.ParamByName('@Package_Size'           ).AsInteger      := mtUserProp.FieldByName('NewItemRow').AsInteger ;
//    FDsp_vida_ChgPkgVard.ParamByName('MatPunktAgareNo'        ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
//    FDsp_vida_ChgPkgVard.ParamByName('RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;

    //Result:=
    FDsp_vida_ChgPkgVard.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_ChgPkgVard.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main SaveChgPkgVard
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
 PrepareLocalPkgTable(mtUserProp) ;

Try
  Result:= False ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     dmsConnector.StartTransaction;
     try
      mtPcsPerLength.Active:= False ;
      mtPcsPerLength.Active:= True ;
      SavePkgType ;
      Try
      AndraPaket ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
 end;


 Finally
  mtPcsPerLength.Active:= False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.SaveFelRegPkgs(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor : TCursor;
  TransactionNo   : LongWord;
  PackagetypeNo   : Integer ;

  procedure SavePkgType ;
//  Var
//     iDtls : Integer ;

    function SelectMatchingPkgTypeHdrs : Integer;
    begin
      // First get all package type (header) records that match
      FDsp_vis_PkgType_II.ParamByName('ProductNo'    ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      FDsp_vis_PkgType_II.ParamByName('BarCodeID'    ).AsInteger := 0
      else
      FDsp_vis_PkgType_II.ParamByName('BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNo.AsInteger < 1 then
      FDsp_vis_PkgType_II.ParamByName('GradeStamp'   ).AsInteger := 0
      else
      FDsp_vis_PkgType_II.ParamByName('GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      FDsp_vis_PkgType_II.ParamByName('TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;

      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
       FDsp_vis_PkgType_II.ParamByName('PcsPerLength'  ).AsString := GetLengthsEntered
      else
       FDsp_vis_PkgType_II.ParamByName('PcsPerLength'  ).AsString := GetNoOfOriginalLengthsInPkg ;

      FDsp_vis_PkgType_II.Open;
      try
//        FDsp_vis_PkgType_II.First;
        if not FDsp_vis_PkgType_II.Eof then begin
          Result := FDsp_vis_PkgType_II.FieldByName('PackageTypeNo').AsInteger ;
//          FDsp_vis_PkgType_II.Next;
        end
         else
          Result:= -1 ;

      finally
        FDsp_vis_PkgType_II.Close;
        end;

    end;



    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
//    var
//      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');

      Try
      FDsp_vis_NewPkgType.Close ;
      FDsp_vis_NewPkgType.ParamByName('PackageTypeNo'   ).AsInteger := PackageTypeNo;
      FDsp_vis_NewPkgType.ParamByName('ProductNo'       ).AsInteger := mtLoadPackagesPRODUCTNO.AsInteger ;

      if mtLoadPackagesBARCODE_ID.AsInteger < 1 then
      FDsp_vis_NewPkgType.ParamByName('BarCodeID'       ).AsInteger := 0
      else
      FDsp_vis_NewPkgType.ParamByName('BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

      if mtLoadPackagesGRADESTAMPNO.AsInteger < 1 then
      FDsp_vis_NewPkgType.ParamByName('GradeStamp'      ).AsInteger := 0
      else
      FDsp_vis_NewPkgType.ParamByName('GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
      FDsp_vis_NewPkgType.ParamByName('TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
      FDsp_vis_NewPkgType.ParamByName('UserID').AsInteger := ThisUser.UserID;
      FDsp_vis_NewPkgType.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vis_NewPkgType.ExecProc') ;
      Raise ;
     End ;
    end;

//************** Now add the PackageTypeDetail records. ********************
      mtPcsPerLength.First ;
      While not mtPcsPerLength.Eof do
      Begin
       Try
        FDsp_vida_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        FDsp_vida_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := mtPcsPerLengthProductLengthNo.AsInteger ;
        FDsp_vida_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := mtPcsPerLengthNoOfPieces.AsInteger ;
        FDsp_vida_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        FDsp_vida_NewPackageDetail.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_NewPackageDetail.ExecProc') ;
      Raise ;
     End ;
    end;

        mtPcsPerLength.Next ;
      End ;

    end;

    procedure  SavePackageTypeLengths ;
    Begin
     Try
      FDsp_vida_Populate_One_PackageTypeLengths.Close ;
      FDsp_vida_Populate_One_PackageTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
      FDsp_vida_Populate_One_PackageTypeLengths.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_Populate_One_PackageTypeLengths.ExecProc') ;
      Raise ;
     End ;
    end;
      FDsp_vida_Populate_One_PackageTypeLengths.Close ;
    End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
   Try
    FDsp_vida_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
    FDsp_vida_PackageTotals.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :FDsp_vida_PackageTotals.ExecProc') ;
      Raise ;
     End ;
    end;
    FDsp_vida_PackageTotals.Close;
  end;


  begin
      PackageTypeNo:= SelectMatchingPkgTypeHdrs ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
        dmsSystem.AddPkgTypeColumns(PackageTypeNo);
       End ;
  end;


  function UpdatePackage : Integer ;
  begin
   Try
    sp_updateFelReg.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_updateFelReg.ParamByName('PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_updateFelReg.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_updateFelReg.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_updateFelReg.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_updateFelReg.ParamByName('RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_updateFelReg.ParamByName('OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_updateFelReg.ParamByName('SupplierNo'             ).AsInteger  := mtUserProp.FieldByName('OwnerNo').AsInteger ;
    sp_updateFelReg.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_updateFelReg.ParamByName('MatPunktAgareNo'        ).AsInteger  := mtUserProp.FieldByName('ProducerNo').AsInteger ;
    sp_updateFelReg.ParamByName('RunNo'                  ).AsInteger  := mtUserProp.FieldByName('RunNo').AsInteger ;

    Result:= sp_updateFelReg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_updateFelReg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main SaveFelRegPkgs
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
 PrepareLocalPkgTable(mtUserProp) ;

Try
  Result:= False ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     dmsConnector.StartTransaction;
     try
      mtPcsPerLength.Active:= False ;
      mtPcsPerLength.Active:= True ;
      SavePkgType ;
      Try
      UpdatePackage ;
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
 end;

 Finally
  mtPcsPerLength.Active:= False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TdmPkgs.FlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
Var
  Save_Cursor:TCursor;
  TransactionNo : LongWord;

  function MovePackage : Integer ;
  begin
   Try
    sp_MovePkg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_MovePkg.ParamByName('@PackageTypeNo'          ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_MovePkg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_MovePkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_MovePkg.ParamByName('@RegistrationPointNo'    ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_MovePkg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_MovePkg.ParamByName('@SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_MovePkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
    sp_MovePkg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_MovePkg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
  dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Kan inte flytta paketnr ' + Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit ;
   Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

function TdmPkgs.PkgExistInLoad : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  mtLoadPackages.Edit ;
  mtLoadPackagesStatus.AsInteger    := 1 ;
  mtLoadPackagesStatusText.AsString := 'Pkt finns upptaget i lastnr ' + sq_PkgInLoadLastNr.AsString + ' LO: ' + sq_PkgInLoadLO.AsString ;
  mtLoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;


function TdmPkgs.AddPkgsByPktType (const RegistrationPointNo : Integer;
WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor:TCursor;
//  TransactionNo : LongWord;

  function SavePackage : Integer ;
  begin
    Try
    sp_NewPackageNo.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_NewPackageNo.ParamByName('PackageTypeNo'          ).AsInteger  := mtLoadPackagesPackageTypeNo.AsInteger;
    sp_NewPackageNo.ParamByName('SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString ;
    sp_NewPackageNo.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_NewPackageNo.ParamByName('SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewPackageNo.ParamByName('RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_NewPackageNo.ParamByName('UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewPackageNo.ParamByName('CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewPackageNo.ParamByName('DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;

    sp_NewPackageNo.ParamByName('OwnerNo'                ).AsInteger  := mtLoadPackagesOWNERNO.AsInteger ;
    sp_NewPackageNo.ParamByName('ProducerNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewPackageNo.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_NewPackageNo.ExecProc') ;
      Raise ;
     End ;
    end;
  end;
//Main AddPkgsByPktType
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
// Update packages with the selections the user has done
// PrepareLocalPkgTable ;

Try
  Result:= True ;
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try
      SavePackage
      except
       ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;
     mtLoadPackages.Next ;
  end;
 Finally
 End ;
end;

function TdmPkgs.Preparera_mtLoadPackages (SupplierCode : String;OwnerNo_ofPkgNo, LOG_INVENTORY_NO, PackageTypeNo, NoOfPkgs : Integer) : Boolean ;
Var x : Integer ;
Begin
 For x := 0 to NoOfPkgs-1 do
 Begin
  Try
  mtLoadPackages.Insert ;
  mtLoadPackagesPackageTypeNo.AsInteger     := PackageTypeNo ;
  mtLoadPackagesPACKAGENO.AsInteger         := Get_Me_A_PackageNo (OwnerNo_ofPkgNo,SupplierCode) ;
  mtLoadPackagesSUPP_CODE.AsString          := SupplierCode ;
  mtLoadPackagesLOG_INVENTORY_NO.AsInteger  := LOG_INVENTORY_NO ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo_ofPkgNo ;
  mtLoadPackagesSUPPLIERNO.AsInteger        := OwnerNo_ofPkgNo ;
  if mtLoadPackagesPACKAGENO.AsInteger = 0 then
  Begin
   mtLoadPackages.Cancel ;
   Result:= False ;
   Exit ;
  End ;
  Result:= True ;
  mtLoadPackages.Post ;

  Except
   on eDatabaseError do
   Begin
    Result:= False ;
    Raise ;
    mtpackages.Cancel ;
   End ;
  End ;
 End ;

End ;

function TdmPkgs.Get_Me_A_PackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var x : Integer ;
Begin
 x := 1 ;
 Result:= 0 ;
 While (Result = 0) and (x < 9000000) do
 Begin
  Result:= GetPackageNo (OwnerNo,SupplierCode) ;
  x := succ(x) ;
 End ;
End ;

function TdmPkgs.GetPackageNo(const OwnerNo : Integer;const SupplierCode : String3) : Integer ;
Var     //StartPkgNo : Integer ;
        NoOfErrorPkgnr : Integer;
        Res_UserName : String ;
begin
 NoOfErrorPkgnr:= 0 ;
 Result:= 0 ;
// Try
  Result:= dmsConnector.GetCurrentPkgNo(OwnerNo, 1) ;
  if Result > 0 then
  Begin
   if PackageNumberExists(Result, SupplierCode) = False then
    Begin
     if dmsSystem.Pkg_Reserved(Result, SupplierCode, Self.Name, Res_UserName ) = ThisUser.UserName+'/'+Self.Name then
      Begin
      End //if dmsSystem.Pkg_Reserved(
      else
       Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
       End ;
    End //if..
     else
      Begin
        NoOfErrorPkgnr:= succ(NoOfErrorPkgnr) ;
        Result:= 0 ;
      End ;

    End ; //if StartPkgNo > 0 then
End ;

function TdmPkgs.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;

function TdmPkgs.GetAvailablePkgNos (const OwnerNo, PackageTypeNo, LogicalInventoryPointNo, NoOfPkgs : Integer) : Boolean ;
Var x : Integer ;
Begin
 x := 0 ;
 Try
 sq_PkgNoAvail.ParamByName('PackageTypeNo').AsInteger:= PackageTypeNo ;
 sq_PkgNoAvail.ParamByName('LogicalInventoryPointNo').AsInteger:= LogicalInventoryPointNo ;
 sq_PkgNoAvail.Open ;
 While (not sq_PkgNoAvail.Eof) and (x<NoOfPkgs) do
 Begin
  Try
  mtLoadPackages.Insert ;
  mtLoadPackagesPackageTypeNo.AsInteger     := PackageTypeNo ;
  mtLoadPackagesPACKAGENO.AsInteger         := sq_PkgNoAvailPackageNo.AsInteger ;
  mtLoadPackagesSUPP_CODE.AsString          := sq_PkgNoAvailSupplierCode.AsString ;
  mtLoadPackagesLOG_INVENTORY_NO.AsInteger  := LogicalInventoryPointNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  mtLoadPackagesOWNERNO.AsInteger           := OwnerNo ;
  if mtLoadPackagesPACKAGENO.AsInteger = 0 then
  Begin
   mtLoadPackages.Cancel ;
   Result:= False ;
   Exit ;
  End ;
  Result:= True ;
  mtLoadPackages.Post ;
  x:= succ(x) ;

           Except
            on eDatabaseError do
            Begin
             Result:= False ;
             Raise ;
             mtpackages.Cancel ;
            End ;
           End ;


  sq_PkgNoAvail.Next ;
 End ;
 if x < NoOfPkgs then
 Begin
  ShowMessage('Det finns inte tillräckligt med paket att avregistrera') ;
  Result:= False ;
 End ;
 Finally
  sq_PkgNoAvail.Close ;
 End ;
End ;

function TdmPkgs.RemovePkgsFromInventering (const MatPunktAgareNo, RegistrationPointNo : Integer; const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
     Try
      sp_RemovePackageFromInventory.Close ;
      sp_RemovePackageFromInventory.ParamByName('PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
      sp_RemovePackageFromInventory.ParamByName('RegistrationPointNo').AsInteger      := RegistrationPointNo ;
      sp_RemovePackageFromInventory.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemovePackageFromInventory.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
      sp_RemovePackageFromInventory.ParamByName('DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(WhenCreated) ;
      sp_RemovePackageFromInventory.ParamByName('MatPunktAgareNo').AsInteger          := MatPunktAgareNo ;

      sp_RemovePackageFromInventory.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    Result:= True ;
  except
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TdmPkgs.MakeLengthQuery_STD_Lengths (const STD_LengthGroupNo : Integer) ;
Begin
 sq_ProductLengths.SQL.Clear ;
 sq_ProductLengths.SQL.Add('SELECT Distinct PL.ProductLengthNo, PL.ActualLengthMM, PL.NominalLengthMM, PL.NominalLengthFEET ,');
 sq_ProductLengths.SQL.Add('PL.ActualLengthINCH , PL.PET , PL.FingerJoint');
 sq_ProductLengths.SQL.Add('FROM   dbo.ProductLengthGroup PGL');
 sq_ProductLengths.SQL.Add('INNER JOIN ProductLength PL ON PL.ProductLengthNo = PGL.ProductLengthNo');
 sq_ProductLengths.SQL.Add('WHERE  PGL.GroupNo = '+IntToStr(STD_LengthGroupNo)) ;
 sq_ProductLengths.SQL.Add(' AND PL.ActualLengthMM > 0.5') ;
 sq_ProductLengths.SQL.Add(' AND PL.Act = 1') ;
 sq_ProductLengths.SQL.Add(' ORDER BY PL.ActualLengthMM ') ;
// if ThisUser.UserID = 8 then  sq_ProductLengths.SQL.SaveToFile('sq_ProductLengths.txt');
End ;

procedure TdmPkgs.DataModuleDestroy(Sender: TObject);
begin
 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
 End ;
end;

function TdmPkgs.ExtFlyttaPaket(mtUserProp : TkbmMemTable) : Boolean ;
//const RegistrationPointNo, NewLogicalInventoryPointNo, ToOwnerNo : Integer) : Boolean ;
Var
  Save_Cursor:TCursor;
  TransactionNo : LongWord;

  function MovePackage : Integer ;
  begin
   Try
    sp_ExtMovePkg.ParamByName('@PackageNo'                 ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@PackageTypeNo'             ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@SupplierCode'              ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_ExtMovePkg.ParamByName('@OldLogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@NewLogicalInventoryPointNo').AsInteger  := mtUserProp.FieldByName('LIPNo').AsInteger ;
    sp_ExtMovePkg.ParamByName('@UserID'                    ).AsInteger  := ThisUser.UserID;
    sp_ExtMovePkg.ParamByName('@RegistrationPointNo'       ).AsInteger  := mtUserProp.FieldByName('RegPointNo').AsInteger ;
    sp_ExtMovePkg.ParamByName('@OLD_PackageTypeNo'         ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@OldSupplierNo'             ).AsInteger  := mtLoadPackagesOWNERNO.AsInteger ;
    sp_ExtMovePkg.ParamByName('@NewSupplierNo'             ).AsInteger  := mtUserProp.FieldByName('VerkNo').AsInteger ;
    Result:= sp_ExtMovePkg.ExecProc;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_ExtMovePkg.ExecProc') ;
      Raise ;
     End ;
    end;
  end;


//Main FlyttaPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 Result:= False ;

 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
  dmsConnector.StartTransaction;
  try
    Try
     MovePackage ;
    except
     ShowMessage ('Could not save Package no '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
     Result:= False ;
     Raise ;
    End ;

   dmsConnector.Commit ;
   Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;

  mtLoadPackages.Next ;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end; //end proc

procedure TdmPkgs.mtLoadPackagesBeforePost(DataSet: TDataSet);
begin
 if mtLoadPackagesPACKAGENO.IsNull then
 Begin
  ShowMessage('Ange ett paketnr') ;
  Abort ;
 End ;
end;

function TdmPkgs.IsPkgAvregistrerat (const PackageNo, SupplierNo : Integer; const SupplierCode : String) : String ;
Begin
 sq_PkgAvReg.ParamByName('PackageNo').AsInteger   := PackageNo ;
 sq_PkgAvReg.ParamByName('SupplierNo').AsInteger  := SupplierNo ;
 sq_PkgAvReg.ParamByName('SupplierCode').AsString := SupplierCode ;
 sq_PkgAvReg.Open ;
 Try
  if not sq_PkgAvReg.Eof then
   Result:= sq_PkgAvRegRegPointName.AsString+' den '+SQLTimeStampToStr('yyyymmdd',sq_PkgAvRegProductionDate.AsSQLTimeStamp)
    else
     Result:= 'NO' ;
 Finally
  sq_PkgAvReg.Close ;
 End ;

End ;

Function TdmPkgs.GetLengthsEntered : String ;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
//     for x := FirstLengthColumn to mtPackages.FieldCount - 1 do
     for x := 2 to mtPackages.FieldCount - 1 do
     Begin
      if mtPackages.Fields[x].AsInteger > 0 then
      Begin
       mtPcsPerLength.Insert ;
{       mtPcsPerLengthProductLengthNo.AsInteger  :=  dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                   mtPackages.FieldByName('NOM_THICK').AsFloat,
                                                   mtPackages.FieldByName('SurfacingNo').AsInteger) ;
                                                   }
       mtPcsPerLengthProductLengthNo.AsInteger  :=   dmsSystem.GetProductLengthNoByLengthRule(mtPackages.Fields[x].DisplayLabel,
                                                    mtLoadPackagesNOMTHICK.AsFloat,
                                                    mtLoadPackagesSurfacingNo.AsInteger) ;
       mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[x].AsInteger ;
//       mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
       mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
       mtPcsPerLength.Post ;
      End ;
     End ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[cTOTALLPM].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := 1 ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

    Function GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION : Integer ;
    Var ML : Double ;
    Begin
     ML                                       := (mtpackages.Fields[FirstLengthColumn].AsFloat*1000) ;
     mtPcsPerLength.Insert ;
     mtPcsPerLengthProductLengthNo.AsInteger  := dmsSystem.GetProductLengthNoByALMM(FloatToStr(ML)) ;
     mtPcsPerLengthNoOfPieces.AsInteger       := mtPackages.Fields[cTOTALPCS].AsInteger ;
     mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
     mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
     mtPcsPerLengthALMM.AsFloat               := ML ;
     mtPcsPerLength.Post ;
    End ;

Begin
// if (mtUserPropInputOption.AsInteger = INPUT_PIECES) or (mtUserPropInputOption.AsInteger = INPUT_SPECIAL_LENGTH) then
  GetNoOfLengthsInPkg ;
{   else
    if mtUserPropInputOption.AsInteger = INPUT_LOPM_TOTAL_LOPM then
     GetNoOfLengthsInPkg_LPM_Entry
      else
       GetNoOfLengthsInPkg_LPM_Entry_AVERAGE_LENGTH_OPTION ; }

 mtPcsPerLength.First ;
 While not mtPcsPerLength.Eof do
 Begin
  Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
  mtPcsPerLength.Next ;
 End ;
End ;

Function TdmPkgs.GetNoOfOriginalLengthsInPkg : String ;
Begin
     Result:= '' ;
     FDsp_vida_PackageTypeDetail.Close;
     FDsp_vida_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;
     FDsp_vida_PackageTypeDetail.Open;
     FDsp_vida_PackageTypeDetail.First;
          // NB We know that both the data retrieved from FDsp_vida_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not FDsp_vida_PackageTypeDetail.Eof  do
      begin
       mtPcsPerLength.Insert ;
       mtPcsPerLengthProductLengthNo.AsInteger :=  FDsp_vida_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       mtPcsPerLengthNoOfPieces.AsInteger       := FDsp_vida_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       mtPcsPerLengthProductNo.AsInteger        := mtPackages.Fields[cPRODUCTNO].AsInteger ;
       mtPcsPerLengthUserID.AsInteger           := ThisUser.UserID ;
//       mtPcsPerLengthALMM.AsFloat               := StrToFloat(mtPackages.Fields[x].DisplayLabel) ;
       mtPcsPerLength.Post ;


{       New(ARecord);
       ARecord^.ProductLengthNo:= FDsp_vida_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.NoOfPieces:= FDsp_vida_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);      }
       FDsp_vida_PackageTypeDetail.Next;
      end;
     FDsp_vida_PackageTypeDetail.Close;

     mtPcsPerLength.First ;
     While not mtPcsPerLength.Eof do
     Begin
      Result:= Result + mtPcsPerLengthProductLengthNo.AsString
                                     + '/'
                                     + mtPcsPerLengthNoOfPieces.AsString + '|' ;
      mtPcsPerLength.Next ;
     End ;

End ;//end proc


function TdmPkgs.AterStallPktTillInventoryEXT (mtUserProp : TkbmMemTable;const LIPNo, OwnerNo : Integer) : Boolean ;
Var
  Save_Cursor   : TCursor;
  TransactionNo : LongWord;
//  LIPNo         : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Result         := False ;
 Try
  dmsConnector.StartTransaction;
  try
   mtLoadPackages.First ;
   While not mtLoadPackages.Eof do
    Begin
      Try

       sp_AktiveraPktExt.Close ;
       sp_AktiveraPktExt.ParamByName('PackageNo').AsInteger                := mtLoadPackagesPACKAGENO.AsInteger ;
       sp_AktiveraPktExt.ParamByName('SupplierCode').AsString              := mtLoadPackagesSUPP_CODE.AsString ;
       sp_AktiveraPktExt.ParamByName('RegistrationPointNo').AsInteger      := 2 ;//2 = Lagervård //mtUserProp.FieldByName('RegPointNo').AsInteger ;
       sp_AktiveraPktExt.ParamByName('PackageTypeNo').AsInteger            := mtLoadPackagesPACKAGETYPENO.AsInteger ;
       sp_AktiveraPktExt.ParamByName('LogicalInventoryPointNo').AsInteger  := LIPNo ;
       sp_AktiveraPktExt.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
//       sp_AktiveraPktExt.ParamByName('SupplierNo').AsInteger               := mtLoadPackagesSupplierNo.AsInteger ;
       sp_AktiveraPktExt.ParamByName('DateCreated').AsSQLTimeStamp         := DateTimeToSQLTimeStamp(mtUserProp.FieldByName('RegDate').AsDateTime) ;
       sp_AktiveraPktExt.ParamByName('MatPunktAgareNo').AsInteger          := OWNERNO ;
//       sp_AktiveraPktExt.ParamByName('RunNo').AsInteger                    := mtUserProp.FieldByName('RunNo').AsInteger ;

       sp_AktiveraPktExt.ExecProc ;
    except
     On E: Exception do
     Begin
      dmsSystem.FDoLog(E.Message+' :sp_AktiveraPktExt.ExecProc') ;
      Raise ;
     End ;
    end;
     mtLoadPackages.Next ;
    end; //While...

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


end.
