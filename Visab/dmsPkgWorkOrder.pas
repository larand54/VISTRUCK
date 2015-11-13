unit dmsPkgWorkOrder;

interface

uses
  Classes,   SysUtils, Controls, Forms,
  VidaType, DB, kbmMemTable, Dialogs, SqlTimSt,
  FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt, siComp, siLngLnk ;
//  QImport2, QImport2ASCII, QExport3, QExport3ASCII ;


type
  Tdm_PkgWorkOrder = class(TDataModule)
    ds_NewPkgs: TDataSource;
    ds_PkgInfo: TDataSource;
    ds_UsedPkgs: TDataSource;
    ds_LoadPackages: TDataSource;
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
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPcsPerBundle: TIntegerField;
    mtLoadPackagesBundlesPerPkg: TIntegerField;
    mtLoadPackagesOldLIPNo: TIntegerField;
    mtLoadPackagesOLDMCClassNo: TIntegerField;
    mtLoadPackagesNTMM: TFloatField;
    mtLoadPackagesNBMM: TFloatField;
    mtLoadPackagesSpeciesNo: TIntegerField;
    mtLoadPackagesSurfacingNo: TIntegerField;
    mtLoadPackagesGradeNo: TIntegerField;
    mtLoadPackagesIMPNo: TIntegerField;
    mtLoadPackagesAT: TFloatField;
    mtLoadPackagesAB: TFloatField;
    mtLoadPackagesOLDProductNo: TIntegerField;
    dsLengthGroup: TDataSource;
    dsProdLength: TDataSource;
    cds_UsedPkgs: TFDQuery;
    cds_UsedPkgsPRODUKT: TStringField;
    cds_UsedPkgsANTPERLNGD: TStringField;
    cds_UsedPkgsPAKETNR: TIntegerField;
    cds_UsedPkgsLEVKOD: TStringField;
    cds_UsedPkgsAM3: TFloatField;
    cds_UsedPkgsNM3: TFloatField;
    cds_UsedPkgsSTYCK: TIntegerField;
    cds_UsedPkgsMFBM: TFloatField;
    cds_UsedPkgsPackageTypeNo: TIntegerField;
    cds_UsedPkgsLIPNo: TIntegerField;
    cds_UsedPkgsProductNo: TIntegerField;
    cds_UsedPkgsAM1: TFloatField;
    cds_UsedPkgsMAXLENGTH: TFloatField;
    cds_UsedPkgsOldPackageNo: TIntegerField;
    cds_UsedPkgsOldSupplierCode: TStringField;
    cds_UsedPkgsOldPackageTypeNo: TIntegerField;
    cds_UsedPkgsRegistrerad: TSQLTimeStampField;
    sq_InsSortUsedPkgs: TFDQuery;
    sq_DelSortUSedPkgs: TFDQuery;
    cds_NewPkgs: TFDQuery;
    cds_NewPkgsPRODUKT: TStringField;
    cds_NewPkgsANTPERLNGD: TStringField;
    cds_NewPkgsPackageNo: TIntegerField;
    cds_NewPkgsSUPPLIERCODE: TStringField;
    cds_NewPkgsSortingOrderNo: TIntegerField;
    cds_NewPkgsSortingOrderRowNo: TIntegerField;
    cds_NewPkgsAM3: TFloatField;
    cds_NewPkgsNM3: TFloatField;
    cds_NewPkgsSTYCK: TIntegerField;
    cds_NewPkgsMFBM: TFloatField;
    cds_NewPkgsPackageTypeNo: TIntegerField;
    cds_NewPkgsLIPNo: TIntegerField;
    cds_NewPkgsStatus: TIntegerField;
    cds_NewPkgsOLDLIPNo: TIntegerField;
    cds_NewPkgsOLDMCClassNo: TIntegerField;
    cds_NewPkgsAM1: TFloatField;
    cds_NewPkgsMAXLENGTH: TFloatField;
    cds_NewPkgsMAXProductLengthNo: TIntegerField;
    cds_NewPkgsVaruVarde: TFloatField;
    cds_NewPkgsPris: TBCDField;
    cds_NewPkgsPrice_SEKPerNM3: TBCDField;
    cds_NewPkgsPriceListNo: TIntegerField;
    cds_NewPkgsProductNo: TIntegerField;
    cds_NewPkgsPkgStatus: TIntegerField;
    cds_NewPkgsRegistrerad: TSQLTimeStampField;
    sq_InsSortNewPkg: TFDQuery;
    sq_DelSortNewPkg: TFDQuery;
    sq_VaruVardeAO: TFDQuery;
    sq_VaruVardeAOVaruVarde: TFloatField;
    FD_GetSOOutPut: TFDQuery;
    FD_GetSOOutPutAM3: TFMTBCDField;
    FD_GetSOOutPutStyck: TIntegerField;
    FD_GetSOOutPutNM3: TFMTBCDField;
    FD_GetSOOutPutAM1: TFMTBCDField;
    FD_GetSOOutPutProductValue: TFMTBCDField;
    FD_SORawSum: TFDQuery;
    FD_SORawSumAM3: TFloatField;
    FD_SORawSumStyck: TIntegerField;
    FD_SORawSumNM3: TFloatField;
    FD_SORawSumAM1: TFloatField;
    FD_SORawSumProductValue: TFloatField;
    FD_GetProductValue: TFDQuery;
    FD_GetProductValueAM3: TFMTBCDField;
    FD_GetProductValueStyck: TIntegerField;
    FD_GetProductValueNM3: TFMTBCDField;
    FD_GetProductValueAM1: TFMTBCDField;
    FD_GetProductValueProductValue: TFMTBCDField;
    sq_PkgInfo: TFDQuery;
    sq_DEL_SplitPkg: TFDQuery;
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
    sq_OneUniquePkgPIP: TIntegerField;
    sq_OneUniquePkgMCClassNo: TIntegerField;
    sq_OneUniquePkgExLog: TStringField;
    sq_OneUniquePkgTypeOfLog: TIntegerField;
    sq_OneUniquePkgproductgroupno: TIntegerField;
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
    sq_ReinstateSplitPkg: TFDQuery;
    cdsProdLength: TFDQuery;
    cdsLengthGroup: TFDQuery;
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
    cdsLengthGroupGroupNo: TIntegerField;
    cdsLengthGroupGroupName: TStringField;
    sq_PkgInLoad: TFDQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sqTotUsed: TFDQuery;
    sqTotUsedAM3: TFloatField;
    sqTotUsedNM3: TFloatField;
    sqTotUsedSTYCK: TIntegerField;
    sqTotUsedMFBM: TFloatField;
    sqTotUsedM1AL: TFloatField;
    sqTotProd: TFDQuery;
    sq_PkgCosts: TFDQuery;
    sqTotProdAM3: TFloatField;
    sqTotProdNM3: TFloatField;
    sqTotProdSTYCK: TIntegerField;
    sqTotProdMFBM: TFloatField;
    sqTotProdM1AL: TFloatField;
    sq_PkgCostsSortingOrderNo: TIntegerField;
    sq_PkgCostsKOSTNAD: TFloatField;
    sp_DeletePackage: TFDStoredProc;
    sp_PkgInfo: TFDStoredProc;
    sp_RegretDeReg: TFDStoredProc;
    sp_RemovePackageFromInventory: TFDStoredProc;
    sp_AvregPareg: TFDStoredProc;
    sp_RgrAvregPareg: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_NewPackageType: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_NewSplitPkg: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_SOUpdOldSplit: TFDStoredProc;
    sp_OnePackageNo: TFDStoredProc;
    sq_GetPriceOfPriceList: TFDQuery;
    sq_GetPriceOfPriceListUnnamed1: TFloatField;
    cds_UsedPkgsSortingOrderNo: TIntegerField;
    FD_insMissingRawMtrl: TFDQuery;
    cds_NewPkgsATMM: TFloatField;
    cds_NewPkgsABMM: TFloatField;
    cds_NewPkgsEj_Hyvlat: TIntegerField;
    FD_SORawSumNoOmSort: TFDQuery;
    FD_SORawSumNoOmSortAM3: TFloatField;
    FD_SORawSumNoOmSortStyck: TIntegerField;
    FD_SORawSumNoOmSortNM3: TFloatField;
    FD_SORawSumNoOmSortAM1: TFloatField;
    FD_SORawSumNoOmSortProductValue: TFloatField;
    cds_UsedPkgsAvRegPktNr: TIntegerField;
    cds_UsedPkgsAvRegPrefix: TStringField;
    siLangLinked_dm_PkgWorkOrder: TsiLangLinked;
    procedure dsp_NewPkgsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_NewSawPkgsGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dsLengthGroupDataChange(Sender: TObject; Field: TField);
  private
    procedure RefreshLengths ;

    function  GetPriceOfOrderRow(const SortingOrderNo, SortingOrderRowNo : Integer;const LoadedDate : TDateTime;const SupplierNo, ProductNo, ProductLengthNo : Integer) : Double ;
    procedure SavePackageTypeLengths(const PackageTypeNo : Integer) ;
    function  RemoveUnSolvedPkgsFromInventory
        (const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, MatPunktAgareNo, RegistrationPointNo : Integer;
        const SUPP_CODE : String;
        const WhenCreated : TDateTime;Const ProductNo : Integer) : Boolean ;
    { Private declarations }
  public
    Unique_No         : Integer ;
//    SupplierNo : Integer ;
//    InventoryOwnerNo  : Integer ;
//    InventoryNo       : Integer ;
    function  GetPriceOfPriceList(const LoadedDate : TDateTime;const SupplierNo, PriceListNo, ProductNo, ProductLengthNo : Integer) : Double ;
    function  GetRAWSUM_NM3(const SortingOrderNo : Integer) : Double ;
    function  GetRAWSUM_AM3(const SortingOrderNo : Integer) : Double ;
    function  GetRAWSUM_AM1(const SortingOrderNo : Integer) : Double ;
    function  GetRAWSUM_PCS(const SortingOrderNo : Integer) : Integer ;

    function  GetRAWSUM_NM3_NoOmSort(const SortingOrderNo : Integer;const FieldName : String) : Double ;

    function  GetSOOutPut_AM1(const SortingOrderNo, ProductNo : Integer) : Double ;
    function  GetSOOutPut_AM3(const SortingOrderNo, ProductNo : Integer) : Double ;
    function  GetSOOutPut_PCS(const SortingOrderNo, ProductNo : Integer) : Integer ;
    function  GetSOOutPut_Value(const SortingOrderNo, ProductNo : Integer) : Double ;
    procedure InsertMissingRawMtrlPost (const SortingOrderNo : Integer) ;
    Function  GetNoOfPcsInNewPkg : Integer ;
    procedure CheckIfNonSolvedPkgsIsAvailableInInventory(const ProducerNo, OwnerNo, ProductionUnitNo : Integer;
          const WhenCreated : TDateTime) ;
    procedure DeleteUsedPkgsToSortingOrder(const PackageNo, SortingOrderNo : Integer;const Prefix : String) ;
 //   procedure InsertKoppladePaketMotSortingOrder(const SortingOrderRowNo : Integer) ;
    function  PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
    function  GetPackageNo(const ProducerNo, RegpointNo, SeriesType : Integer;Var Prefix : String3) : Integer ;
    Procedure AngraDelningAvPaket(const SortingOrderNo, RegistrationPointNo, OldPackageNo, OldPackageTypeNo, NewPackageNo : Integer;
          const OldSupplierCode, NewSupplierCode : String) ;
    function SkapaNyttPaket(const AvRegPkg : Boolean;const MatPunktAgareNo, RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime;const UsingPackageTypeNoMall : Boolean) : Boolean ;
    function  RemovePkgsFromInventory
      (const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, MatPunktAgareNo, RegistrationPointNo : Integer;
       const SUPP_CODE : String;
    const WhenCreated : TDateTime;Const ProductNo : Integer) : Boolean ;
    procedure AddPkgDataTo_mtLoadPackages_ToChangePackage(const Status, PkgNo : Integer;
       const PkgSupplierCode : String3;
       const OwnerNo : Integer)  ;

    function  PkgExistInLoad (const PACKAGENO : Integer; const SUPP_CODE : String) : Boolean ;
    function  DeletePackagesFromSystem(const PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
                                       const SUPP_CODE : String) : Boolean ;
    function  Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;

    function  Regret_DeRegisterPackage
     (const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
      const SUPP_CODE : String;
      const WhenCreated : TDateTime) : Boolean ;

   function GetTotal_LPM_ProducedFromAO : Double ;

   function GetTotal_LPM_ConsumedFromAO : Double ;

//   procedure SetPriceOnEachPackage ;
   function GetVaruVardeFromAO : Double ;
   function GetTotalPcsProducedFromAO : Integer ;
   function GetTotalNM3ProducedFromAO : Double ;
   function GetTotalAM3ProducedFromAO : Double ;
   function GetTotalPcsConsumedFromAO : Integer ;
   function GetTotalAM3ConsumedFromAO : Double ;

   procedure InsertNEWPkgsToSortingOrder (const PackageTypeNo, OLDMCClassNo, OLDLIPNo, PackageNo, SortingOrderRowNo : integer; const SUPP_CODE : String) ;

   function  ChangePkgAfterImpregnering(const MatPunktAgareNo, RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime) : Boolean ;

   function  RegretChangeToImpregnering(const RegistrationPointNo: Integer) : Boolean ;

   function  PackagePresentInUsedOrNewList : Boolean ;

   function  PackagePresentInSortOrderRow : Boolean ;
  end;//public

var
  dm_PkgWorkOrder: Tdm_PkgWorkOrder;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaProduct, dm_SortOrder, //dm_SawOrder,
  dmsVidaSystem, udmLanguage;

{ TDataModule1 }


 procedure Tdm_PkgWorkOrder.InsertNEWPkgsToSortingOrder (const PackageTypeNo, OLDMCClassNo, OLDLIPNo, PackageNo, SortingOrderRowNo : integer; const SUPP_CODE : String) ;
 Begin
  Try
  sq_InsSortNewPkg.ParamByName('OLDMCClassNo').AsInteger      := OLDMCClassNo ;
  sq_InsSortNewPkg.ParamByName('OLDLIPNo').AsInteger          := OLDLIPNo ;
  sq_InsSortNewPkg.ParamByName('PackageNo').AsInteger         := PackageNo ;
  sq_InsSortNewPkg.ParamByName('SortingOrderRowNo').AsInteger := SortingOrderRowNo ;
  sq_InsSortNewPkg.ParamByName('SupplierCode').AsString       := SUPP_CODE ;
  sq_InsSortNewPkg.ParamByName('Status').AsInteger            := 0 ;
  sq_InsSortNewPkg.ParamByName('SortingOrderNo').AsInteger    := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_InsSortNewPkg.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
  sq_InsSortNewPkg.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortNewPkg.ParamByName('PackageTypeNo').AsInteger     := PackageTypeNo ;
  sq_InsSortNewPkg.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_InsSortNewPkg.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;


procedure  Tdm_PkgWorkOrder.SavePackageTypeLengths(const PackageTypeNo : Integer) ;
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

function Tdm_PkgWorkOrder.Pkg_Info(const PkgNo: Integer;const SuppCode : String) : String ;
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


function Tdm_PkgWorkOrder.DeletePackagesFromSystem
(const PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
const SUPP_CODE : String) : Boolean ;
Var
 Save_Cursor  : TCursor;


 procedure DeleteSortNewPkgs ;
 Begin
  Try
  sq_DelSortNewPkg.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortNewPkg.ParamByName('PackageNo').AsInteger       := PACKAGENO ;
  sq_DelSortNewPkg.ParamByName('SupplierCode').AsString     := SUPP_CODE ;
  sq_DelSortNewPkg.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DelSortNewPkg.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

//Main DeletePackagesFromSystem
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
 if PkgExistInLoad (PackageNo, SUPP_CODE) = False then
 Begin
  dmsConnector.StartTransaction ;
  try
{@PackageNo				INT,
@SupplierCode			Char(3),
@RegistrationPointNo	INT,
@UserID					INT,
@ShiftNo				INT}
   sp_DeletePackage.Close ;
  Try
   sp_DeletePackage.ParamByName('@PackageNo').AsInteger           := PACKAGENO ;
   sp_DeletePackage.ParamByName('@SupplierCode').AsString         := SUPP_CODE ;
   sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger := RegistrationPointNo ;
   sp_DeletePackage.ParamByName('@UserID').AsInteger              := ThisUser.UserID ;
   sp_DeletePackage.ParamByName('@ShiftNo').AsInteger             := -1 ;
   sp_DeletePackage.ExecProc ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_DeletePackage.ExecProc') ;
     Raise ;
    End ;
  End ;

    DeleteSortNewPkgs ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
  End
   else
    ShowMessage('Kan inte ta bort paket för att det är med i en last.');

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function Tdm_PkgWorkOrder.PkgExistInLoad (const PACKAGENO : Integer;
const SUPP_CODE : String) : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger    := PACKAGENO ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString  := SUPP_CODE ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  ShowMessage('Paketet finns upptaget i lastnr ' + sq_PkgInLoadLastNr.AsString + ' LONr: ' + sq_PkgInLoadLO.AsString) ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;

function Tdm_PkgWorkOrder.Regret_DeRegisterPackage
(const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
const SUPP_CODE : String; const WhenCreated : TDateTime) : Boolean ;
Var
  Save_Cursor  : TCursor;

 procedure DeleteUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := PackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := SUPP_CODE ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

 //Main Regret_DeRegisterPackage
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
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
      sp_RegretDeReg.ParamByName('@SortingOrderNo').AsInteger        := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
      sp_RegretDeReg.ExecProc ;
     Except
      On E: Exception do
      Begin
       ShowMessage(E.Message+' :sp_RegretDeReg.ExecProc') ;
       Raise ;
      End ;
     End ;

    DeleteUsedPkgsToSortingOrder ;
    dmsConnector.Commit ;
    Result:= True ;
    cds_UsedPkgs.Active:= False ;
    cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
    cds_UsedPkgs.Active:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure Tdm_PkgWorkOrder.dsp_NewPkgsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SortingOrderNewPkgs' ;
end;

procedure Tdm_PkgWorkOrder.dsp_NewSawPkgsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SawOrderNewPkgs' ;
end;

function Tdm_PkgWorkOrder.GetPriceOfOrderRow(const SortingOrderNo, SortingOrderRowNo : Integer;const LoadedDate : TDateTime;const SupplierNo, ProductNo, ProductLengthNo : Integer) : Double ;
Var vwCost,
    Price       : Double ;
    PriceListNo : Integer ;
Begin
 Price            := 0 ;
 //Hämta OL pris och PriceListNo från relationen LO-row -> orderline
 //om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
 //defsspNo är LO-radens unika key

 //I direkt priset skall vwcostnaden dras ifrån om det är en försäljning.
// sq_GetOLPrice.ParamByName('defsspNo').AsInteger:= defsspno ;
// sq_GetOLPrice.Open ;


//******** Price  := cds_NewPkgsPris.AsFloat ;

(* Try
 if not sq_GetOLPrice.Eof then
  Begin
//   if InKop then
//    Price:= sq_GetOLPriceInternalPrice.AsFloat
//     else
      Begin
       vwCost := 0 ;
       sq_GetVWCost.ParamByName('LoadedDate').AsDateTime:= LoadedDate ;
       sq_GetVWCost.Open ;
       if not sq_GetVWCost.Eof then
        vwCost := sq_GetVWCostCOLUMN1.AsFloat ;
       sq_GetVWCost.Close ;
      Price:= sq_GetOLPriceInternalPrice.AsFloat  + vwCost ;
      End ;
   PriceListNo:= sq_GetOLPricePriceListNo.AsInteger ;
  End
  else
  Begin
   Result:= 0 ;
   Exit ;
  End ;
 Finally
  sq_GetOLPrice.Close ;
 End ; *)

 //om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
 Price  := 0 ;
 Price  := dmsSortOrder.GetPrice(SortingOrderNo, SortingOrderRowNo) ;
 if Price > 0 then
 Begin
  Result:= Price ;
//  Exit ;
 End
 else
 if PriceListNo > 0 then
 Begin
  Result:= GetPriceOfPriceList(LoadedDate, SupplierNo, PriceListNo, ProductNo, ProductLengthNo) ;
//   else
//    Result:= 0
 End
  else
   Result := 0 ;
// else
// GetPriceWithProductLength
End ;

{procedure Tdm_PkgWorkOrder.SetPriceOnEachPackage ;
Var Price : Double ;
Begin
 With dmsSortOrder do
 Begin
  cds_NewPkgs.First ;
  While not cds_NewPkgs.Eof do
  Begin
   cds_NewPkgs.Edit ;
   Price:= GetPriceOfOrderRow(cds_NewPkgsSortingOrderNo.AsInteger, cds_NewPkgsSortingOrderRowNo.AsInteger, cds_SortOrderRealStartTime.AsDateTime, cds_SortOrderOwnerNo.AsInteger, cds_NewPkgsProductNo.AsInteger, cds_NewPkgsMAXProductLengthNo.AsInteger) ;
   cds_NewPkgsPrice_SEKPerNM3.AsFloat  := Price ;
   cds_NewPkgsVaruVarde.AsFloat  := cds_NewPkgsPrice_SEKPerNM3.AsFloat * cds_NewPkgsNM3.AsFloat ;
//  GetPriceOfOrderRow(const Inkop : Boolean;const LoadedDate : TDateTime;const SupplierNo, defsspno, ProductNo, ProductLengthNo : Integer) : Double ;
   cds_NewPkgs.Post ;
   cds_NewPkgs.Next ;
  End ;
 End ;//With
End ; }

function Tdm_PkgWorkOrder.GetVaruVardeFromAO : Double ;
Begin
 Try
 FD_GetProductValue.Close ;
 FD_GetProductValue.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 FD_GetProductValue.Open ;
 if not FD_GetProductValue.Eof then
  Result:= FD_GetProductValueProductValue.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_GetProductValue.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotalPcsProducedFromAO : Integer ;
Begin
 sqTotProd.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotProd.Open ;
 Result:= sqTotProdSTYCK.AsInteger ;
 Finally
 sqTotProd.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotalPcsConsumedFromAO : Integer ;
Begin
 Result:= 0 ;
 sqTotUsed.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotUsed.Open ;
 Result:= sqTotUsedSTYCK.AsInteger ;
 Finally
 sqTotUsed.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotalAM3ProducedFromAO : Double ;
Begin
 sqTotProd.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotProd.Open ;
 Result:= sqTotProdAM3.AsFloat ;
 Finally
 sqTotProd.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotalNM3ProducedFromAO : Double ;
Begin
 sqTotProd.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotProd.Open ;
 Result:= sqTotProdNM3.AsFloat ;
 Finally
 sqTotProd.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotalAM3ConsumedFromAO : Double ;
Begin
 sqTotUsed.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotUsed.Open ;
 Result:= sqTotUsedAM3.AsFloat ;
 Finally
 sqTotUsed.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotal_LPM_ProducedFromAO : Double ;
Begin
 sqTotProd.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotProd.Open ;
 Result:= sqTotProdM1AL.AsFloat ;
 Finally
 sqTotProd.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetTotal_LPM_ConsumedFromAO : Double ;
Begin
 sqTotUsed.ParamByName('SortingOrderNo').AsInteger:= dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
 Try
 sqTotUsed.Open ;
 Result:= sqTotUsedM1AL.AsFloat ;
 Finally
 sqTotUsed.Close ;
 End ;
End ;


function ReplaceCommas(S : String) : String ;
begin
  { Convert commas to period }
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure Tdm_PkgWorkOrder.AddPkgDataTo_mtLoadPackages_ToChangePackage(const Status, PkgNo : Integer;
  const PkgSupplierCode : String3;
  const OwnerNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmsSortOrder, dm_PkgWorkOrder do
 Begin
  //ds_LoadPackages.OnDataChange:= Nil ;
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := OwnerNo ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := Status ;
//     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
//      mtLoadPackages.Insert ;
      For x := 0 to 40 do
       mtLoadPackages.Fields.Fields[x].AsVariant  := sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger        := Unique_No ;

      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' är reserverat av användare '+Res_UserName) ;
      End ;

//      End ;

     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
      End ;

     sq_OneUniquePkg.Close ;
  Finally
//   ds_LoadPackages.OnDataChange:= ds_LoadPackagesDataChange ;
  End ;
 End ; //with
end;

function Tdm_PkgWorkOrder.ChangePkgAfterImpregnering(const MatPunktAgareNo, RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime) : Boolean ;
Var
    Save_Cursor       : TCursor;
    OldIndexName      : String ;
    SortingOrderRowNo : Integer ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    Pcs: Integer;
  end;
var
  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;

  MyList: TList;
  ARecord: PMyList;

  procedure SavePkgType ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      // First get all package type (header) records that match
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
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;

    end;

    Function GetNoOfOriginalLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo:= sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.Pcs:= sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.Pcs) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with
    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
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

      // Now add the PackageTypeDetail records.
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.Pcs ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
        Except
         On E: Exception do
         Begin
          ShowMessage(E.Message+' :sp_NewPackageDetail.ExecProc') ;
          Raise ;
         End ;
        End ;
       end;

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
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths(PackageTypeNo);
        dmsSystem.AddPkgTypeColumns(PackageTypeNo) ;
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  function UpdatePackage : Integer ;
  begin
   Try
    sp_AvregPareg.ParamByName('@PackageNo'              ).AsInteger      := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_AvregPareg.ParamByName('@PackageTypeNo'          ).AsInteger      := PackageTypeNo;
    sp_AvregPareg.ParamByName('@SupplierCode'           ).AsString       := mtLoadPackagesSUPP_CODE.AsString;
    sp_AvregPareg.ParamByName('@LIPNo'                  ).AsInteger      := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_AvregPareg.ParamByName('@RegistrationPointNo'    ).AsInteger      := RegistrationPointNo ;
    sp_AvregPareg.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    sp_AvregPareg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger      := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_AvregPareg.ParamByName('@SupplierNo'             ).AsInteger      := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_AvregPareg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_AvregPareg.ParamByName('@MatPunktAgareNo'        ).AsInteger      := MatPunktAgareNo ;
    sp_AvregPareg.ExecProc  ;
//    Result:= sp_AvregPareg.e .ExecProc;
    Except
     On E: Exception do
     Begin
      ShowMessage(E.Message+' :sp_AvregPareg.ExecProc') ;
      Raise ;
     End ;
    End ;
  end;

 procedure InsertUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_InsSortUsedPkgs.ParamByName('SortingOrderNo').AsInteger    := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('PackageNo').AsInteger         := mtLoadPackagesPACKAGENO.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('SupplierCode').AsString       := mtLoadPackagesSUPP_CODE.AsString;
  sq_InsSortUsedPkgs.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSqlTimeStamp(Now) ;
  sq_InsSortUsedPkgs.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortUsedPkgs.ParamByName('PackageTypeNo').AsInteger     := mtLoadPackagesPACKAGETYPENO.AsInteger ;//Old used pkg type
  sq_InsSortUsedPkgs.ExecSQL ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sq_InsSortUsedPkgs.ExecSQL') ;
    Raise ;
   End ;
  End ;
 End ;

 procedure InsertRawMtrlPost ;
 Begin
  With dmsSortOrder do
  Begin
   if not cds_SORaw.Locate('BookedProductNo', mtLoadPackagesOLDProductNo.AsInteger, []) then
   Begin
    cds_SORaw.Insert ;
    cds_SORawBookedProductNo.AsInteger:= mtLoadPackagesOLDProductNo.AsInteger ;
    cds_SORaw.Post ;
   End ;
  End ;
 End ;//procedure insertRawMtrlPost ;

 procedure InsertEndProductPost ;
 Begin
  With dmsSortOrder do
  Begin
   if not cds_SorOrdRow.Locate('ProductNo', mtLoadPackagesProductNo.AsInteger, []) then
   Begin
    cds_SorOrdRow.Insert ;
    cds_SorOrdRowProductNo.AsInteger:= mtLoadPackagesProductNo.AsInteger ;
    cds_SorOrdRow.Post ;
   End ;
  End ;
 End ;//procedure InsertEndProductPost ;

//Start ChangePkgAfterImpregnering
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

Try
  Result:= False ;
//  AddPkgsTomtLoadPackages (MatPunktAgareNo) ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   dmsConnector.StartTransaction;

   try
      SavePkgType ;
      Try
      UpdatePackage ;

// (const PackageTypeNo, OLDMCClassNo, OLDLIPNo, PackageNo, RowNo : integer; const SUPP_CODE : String) ;

      InsertUsedPkgsToSortingOrder ;

      InsertRawMtrlPost ;

      InsertEndProductPost ;


      if dmsSortOrder.cds_SorOrdRow.Locate('ProductNo', mtLoadPackagesProductNo.AsInteger, []) then
       SortingOrderRowNo:= dmsSortOrder.cds_SorOrdRowSortingOrderRowNo.AsInteger
        else
         SortingOrderRowNo:= -1 ;
      InsertNEWPkgsToSortingOrder (
      PACKAGETYPENO,
      mtLoadPackagesPACKAGETYPENO.AsInteger,
      mtLoadPackagesOldLIPNo.AsInteger,
      mtLoadPackagesPACKAGENO.AsInteger,
      SortingOrderRowNo,//RowNo
      mtLoadPackagesSUPP_CODE.AsString) ;

      except
       ShowMessage ('Kunde inte ändra paketnr ' + Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
       Result:= False ;
       Raise ;
      End ;

     dmsConnector.Commit ;
     Result:= True ;
   except
    dmsConnector.Rollback ;
    Result:= False ;
//    raise;
   end;

   mtLoadPackages.Next ;
   PackageTypeNo:= -1 ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function Tdm_PkgWorkOrder.RegretChangeToImpregnering(const RegistrationPointNo: Integer) : Boolean ;
Var
    Save_Cursor   : TCursor;



  function UpdatePackage : Integer ;
  begin
   Try
    sp_RgrAvregPareg.ParamByName('@PackageNo'              ).AsInteger      := cds_NewPkgsPackageNo.AsInteger ;
    sp_RgrAvregPareg.ParamByName('@PackageTypeNo'          ).AsInteger      := cds_NewPkgsOLDMCClassNo.AsInteger ;
    sp_RgrAvregPareg.ParamByName('@SupplierCode'           ).AsString       := cds_NewPkgsSUPPLIERCODE.AsString ;
    sp_RgrAvregPareg.ParamByName('@LIPNo'                  ).AsInteger      := cds_NewPkgsOLDLIPNo.AsInteger ;
    sp_RgrAvregPareg.ParamByName('@RegistrationPointNo'    ).AsInteger      := RegistrationPointNo ;
    sp_RgrAvregPareg.ParamByName('@UserID'                 ).AsInteger      := ThisUser.UserID;
    //OLDMCClassNo är i detta fall original PackageType som det skall återställas till
    sp_RgrAvregPareg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger      := cds_NewPkgsOLDMCClassNo.AsInteger ; //this is the old pkgtype to change back to
    sp_RgrAvregPareg.ExecProc;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_RgrAvregPareg.ExecProc') ;
     Raise ;
    End ;
   End ;
  end;

 procedure DeleteSortNewPkgs ;
 Begin
  Try
  sq_DelSortNewPkg.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortNewPkg.ParamByName('PackageNo').AsInteger       := cds_NewPkgsPackageNo.AsInteger ;
  sq_DelSortNewPkg.ParamByName('SupplierCode').AsString     := cds_NewPkgsSUPPLIERCODE.AsString;
  sq_DelSortNewPkg.ExecSQL ;
 Except
  On E: Exception do
  Begin
   ShowMessage(E.Message+' :sq_DelSortNewPkg.ExecSQL') ;
   Raise ;
  End ;
 End ;
 End ;

 procedure DeleteUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := cds_NewPkgsPackageNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := cds_NewPkgsSUPPLIERCODE.AsString;
  sq_DelSortUSedPkgs.ExecSQL ;
 Except
  On E: Exception do
  Begin
   ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL') ;
   Raise ;
  End ;
 End ;
 End ;

//Start ChangePkgAfterImpregnering
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 Try
  Result:= False ;
  dmsConnector.StartTransaction;
  try
   UpdatePackage ;
   DeleteSortNewPkgs ;
   DeleteUsedPkgsToSortingOrder ;
   except
    ShowMessage ('Kunde inte återställe paketnr '+Pkg_Info(cds_NewPkgsPackageNo.AsInteger, cds_NewPkgsSUPPLIERCODE.AsString));
    Result:= False ;
    Raise ;
   End ;

  dmsConnector.Commit ;
  Result:= True ;
 except
  dmsConnector.Rollback ;
  Result:= False ;
//    raise;
 end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function Tdm_PkgWorkOrder.PackagePresentInUsedOrNewList : Boolean ;
Begin
 Result:= False ;
 if (cds_NewPkgs.Active) and (cds_NewPkgs.RecordCount > 0) then Result:= True ;
 if (cds_UsedPkgs.Active) and (cds_UsedPkgs.RecordCount > 0) then Result:= True ;
End ;

function Tdm_PkgWorkOrder.PackagePresentInSortOrderRow : Boolean ;
Begin
 if cds_NewPkgs.Locate('SortingOrderRowNo', dmsSortOrder.cds_SorOrdRowSortingOrderRowNo.AsInteger, []) then
  Result:= True
   else
    Result:= False ;
End ;

function Tdm_PkgWorkOrder.RemovePkgsFromInventory
(const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, MatPunktAgareNo, RegistrationPointNo : Integer;
const SUPP_CODE : String;
const WhenCreated : TDateTime;Const ProductNo : Integer) : Boolean ;
Var
  Save_Cursor  : TCursor;

 procedure insertRawMtrlPost ;
 Begin
  With dmsSortOrder do
  Begin
   if not cds_SORaw.Locate('BookedProductNo',ProductNo, []) then
   Begin
    cds_SORaw.Insert ;
    cds_SORawBookedProductNo.AsInteger:= ProductNo ;
    cds_SORaw.Post ;
   End ;
  End ;
 End ;//procedure insertRawMtrlPost ;

 procedure InsertUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := PackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := SUPP_CODE ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL_11') ;
     Raise ;
    End ;
  End ;

  Try
  sq_InsSortUsedPkgs.ParamByName('SortingOrderNo').AsInteger    := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('PackageNo').AsInteger         := PackageNo ;
  sq_InsSortUsedPkgs.ParamByName('SupplierCode').AsString       := SUPP_CODE ;
  sq_InsSortUsedPkgs.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(WhenCreated) ;
  sq_InsSortUsedPkgs.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortUsedPkgs.ParamByName('PackageTypeNo').AsInteger     := PACKAGETYPENO ;//Old used pkg type
  sq_InsSortUsedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_InsSortUsedPkgs.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;
//RemovePkgsFromInventory
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  dmsConnector.StartTransaction;
  try
   Try
    sp_RemovePackageFromInventory.Close ;
    sp_RemovePackageFromInventory.ParamByName('@PackageNo').AsInteger            := PACKAGENO ;
    sp_RemovePackageFromInventory.ParamByName('@SupplierCode').AsString          := SUPP_CODE ;
    sp_RemovePackageFromInventory.ParamByName('@RegistrationPointNo').AsInteger  := RegistrationPointNo ;
    sp_RemovePackageFromInventory.ParamByName('@PackageTypeNo').AsInteger        := PACKAGETYPENO ;
    sp_RemovePackageFromInventory.ParamByName('@LogicalInventoryPointNo').AsInteger := LIPNo ;
    sp_RemovePackageFromInventory.ParamByName('@UserID').AsInteger               := ThisUser.UserID ;
    sp_RemovePackageFromInventory.ParamByName('@SupplierNo').AsInteger           := SupplierNo ;
    sp_RemovePackageFromInventory.ParamByName('@DateCreated').AsSQLTimeStamp     := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_RemovePackageFromInventory.ParamByName('@MatPunktAgareNo').AsInteger      := MatPunktAgareNo ;
    sp_RemovePackageFromInventory.ParamByName('@RunNo').AsInteger                := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
    sp_RemovePackageFromInventory.ParamByName('@ShiftTeamNo').AsInteger          := 1 ;//dmc_DB.cds_MainParamsShiftTeamNo.AsInteger ;
    sp_RemovePackageFromInventory.ExecProc ;
    Result:= True ;
    InsertUsedPkgsToSortingOrder ;
    insertRawMtrlPost ;
//    dmsConnector.Commit ;

   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
     Raise ;
    End ;
   End ;

//    InsertUsedPkgsToSortingOrder ;
//    insertRawMtrlPost ;
    dmsConnector.Commit ;

  except
    dmsConnector.Rollback ;
    Result:= False ;
    Raise ;
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

//Spapa nytt paket
function Tdm_PkgWorkOrder.SkapaNyttPaket(const AvRegPkg : Boolean;const MatPunktAgareNo, RegistrationPointNo: Integer;
                                               const WhenCreated : TDateTime;const UsingPackageTypeNoMall : Boolean) : Boolean ;
Var
    Save_Cursor       : TCursor;
    OldIndexName      : String ;
    SortingOrderRowNo : Integer ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    Pcs: Integer;
  end;
var
  PkgTypeNumbers  : TList;
  PackagetypeNo   : Integer ;
  MyList          : TList;
  ARecord         : PMyList;


procedure TabortAvregistreratPaket
(const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, RegistrationPointNo : Integer;
const SUPP_CODE : String; const WhenCreated : TDateTime) ;


 procedure DeleteUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := PackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := SUPP_CODE ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL(False)') ;
    Raise ;
   End ;
  End ;
 End ;

 //Main TabortAvregistreratPaket
begin
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
      sp_RegretDeReg.ExecProc ;

      DeleteUsedPkgsToSortingOrder ;
      
     Except
      On E: Exception do
      Begin
       ShowMessage(E.Message+' :sp_RegretDeReg.ExecSQL') ;
       Raise ;
      End ;
     End ;
end;

//***************************************************

  procedure SavePkgType ;
  Var
     iDtls : Integer ;



    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      // First get all package type (header) records that match
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
      sp_PackageTypes.Open;
      try
        sp_PackageTypes.First;
        while not sp_PackageTypes.Eof do begin
          PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
          sp_PackageTypes.Next;
          end;
      finally
        sp_PackageTypes.Close;
        end;
    end;

    Function GetNoOfOriginalLengthsInPkg : Integer ;
    Begin
     Result:= 0 ;
     sp_PackageTypeDetail.Close;
     sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
     sp_PackageTypeDetail.Open;
     sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

      while not sp_PackageTypeDetail.Eof  do
      begin
       New(ARecord);
       ARecord^.ProductLengthNo := sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
       ARecord^.Pcs             := mtLoadPackagesPCS.AsInteger ;//sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
       MyList.Add(ARecord);
       sp_PackageTypeDetail.Next;
      end;
     sp_PackageTypeDetail.Close;
    End ;

    Function GetNoOfLengthsInPkg : Integer ;
    Begin
     cdsProdLength.Filter   := 'STYCK > 0' ;
     cdsProdLength.Filtered := True ;
     Try
     Result:= 0 ;
     cdsProdLength.First ;
     mtLoadPackages.Edit ;
     While not cdsProdLength.Eof do
     Begin
       New(ARecord);
       ARecord^.ProductLengthNo :=  dmsSystem.GetProductLengthNoByLengthRule(cdsProdLengthALMM.AsString,
                                    dmsSortOrder.cds_SorOrdRowNT.AsFloat,
                                    dmsSortOrder.cds_SorOrdRowSurfacingNo.AsInteger) ;


      ARecord^.Pcs         := cdsProdLengthSTYCK.AsInteger ;
      MyList.Add(ARecord);
      mtLoadPackagesPCS.AsInteger := mtLoadPackagesPCS.AsInteger + cdsProdLengthSTYCK.AsInteger ;
      cdsProdLength.Next ;
     End ;//While not
     if mtLoadPackages.State in [dsEdit, dsInsert] then
      mtLoadPackages.Post ;
     Finally
      cdsProdLength.Filtered  := False ;
     End ;
    End ;

    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
      if UsingPackageTypeNoMall then
      NoOfLengths :=  GetNoOfOriginalLengthsInPkg
      else
      NoOfLengths :=  GetNoOfLengthsInPkg ;

      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
          sp_PackageTypeDetail.Open;

          LengthMatched := TRUE;
          iDtl := 0;
          sp_PackageTypeDetail.First;
          // NB We know that both the data retrieved from sp_PackageTypeDetail and the
          // grid column info are in length order, smallest to largest.

          while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
          begin
           ARecord := MyList.Items[iDtl];


            if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
             ARecord^.ProductLengthNo)
              OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
              ARecord^.Pcs) then
               LengthMatched := FALSE
            else
              begin
               inc(iDtl);
               sp_PackageTypeDetail.Next;
              end;
          end;

          if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
            PackageTypeNo := Integer(PkgTypeNumbers[0]);

        finally
          PkgTypeNumbers.Delete(0);
        end;
      end; //with
    end;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
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

      // Now add the PackageTypeDetail records.
      for iDtl := 0 to MyList.Count - 1 do
       begin
        ARecord := MyList.Items[iDtl];
        Try
        sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
        sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
        sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.Pcs ;
        sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
        sp_NewPackageDetail.ExecProc;
        Except
         On E: Exception do
         Begin
          ShowMessage(E.Message+' :sp_NewPackageDetail.ExecProc') ;
          Raise ;
         End ;
        End ;
       end;

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
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths(PackageTypeNo);
        dmsSystem.AddPkgTypeColumns(PackageTypeNo) ;
       End ;
//Dispose
   for iDtls:= 0 to (MyList.Count - 1) do
   begin
     ARecord := MyList.Items[iDtls];
     Dispose(ARecord);
   end;

    finally
      PkgTypeNumbers.Free;
      MyList.Free ;
    end;
  end;

  function SaveNewSplitPackage : Integer ;
  begin
   Try
    sp_NewSplitPkg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
    sp_NewSplitPkg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
    sp_NewSplitPkg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_NewSplitPkg.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_NewSplitPkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_NewSplitPkg.ParamByName('@CreatedOfPkgStr'        ).AsInteger  := 0 ; // 0 = Manual entry
    sp_NewSplitPkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSqlTimeStamp(WhenCreated) ;

    sp_NewSplitPkg.ExecProc;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_NewSplitPkg.ExecProc') ;
     Raise ;
    End ;
   End ;
  end;


  function UpdatePackage : Integer ;
  begin
   Try
    sp_SOUpdOldSplit.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo ;
    sp_SOUpdOldSplit.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString ;
    sp_SOUpdOldSplit.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
    sp_SOUpdOldSplit.ParamByName('@RegistrationPointNo'    ).AsInteger  := RegistrationPointNo ;
    sp_SOUpdOldSplit.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
    sp_SOUpdOldSplit.ParamByName('@SupplierNo'             ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_SOUpdOldSplit.ParamByName('@MatPunktAgareNo'        ).AsInteger  := mtLoadPackagesSUPPLIERNO.AsInteger ;
    sp_SOUpdOldSplit.ParamByName('@RunNo'                  ).AsInteger  := -1 ;

    sp_SOUpdOldSplit.ExecProc;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_SOUpdOldSplit.ExecProc') ;
     Raise ;
    End ;
   End ;
  end;

 procedure InsertUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_InsSortUsedPkgs.ParamByName('SortingOrderNo').AsInteger    := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('PackageNo').AsInteger         := mtLoadPackagesPACKAGENO.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('SupplierCode').AsString       := mtLoadPackagesSUPP_CODE.AsString;
  sq_InsSortUsedPkgs.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  sq_InsSortUsedPkgs.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortUsedPkgs.ParamByName('PackageTypeNo').AsInteger     := PackageTypeNo ;//mtLoadPackagesPACKAGETYPENO.AsInteger ;//
  sq_InsSortUsedPkgs.ExecSQL ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sq_InsSortUsedPkgs.ExecSQL') ;
    Raise ;
   End ;
  End ;
 End ;

 procedure InsertRawMtrlPost ;
 Begin
  With dmsSortOrder do
  Begin
   if (not cds_SORaw.Locate('BookedProductNo', mtLoadPackagesOLDProductNo.AsInteger, []))
   and (mtLoadPackagesOLDProductNo.AsInteger > 0) then
   Begin
    cds_SORaw.Insert ;
    cds_SORawBookedProductNo.AsInteger:= mtLoadPackagesOLDProductNo.AsInteger ;
    cds_SORaw.Post ;
   End ;
  End ;
 End ;//procedure insertRawMtrlPost ;

 procedure InsertEndProductPost ;
 Begin
  With dmsSortOrder do
  Begin
   if not cds_SorOrdRow.Locate('ProductNo', mtLoadPackagesProductNo.AsInteger, []) then
   Begin
    cds_SorOrdRow.Insert ;
    cds_SorOrdRowProductNo.AsInteger:= mtLoadPackagesProductNo.AsInteger ;
    cds_SorOrdRow.Post ;
   End ;
  End ;
 End ;//procedure InsertEndProductPost ;

//Start SkapaNyttPaket
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

Try
  Result:= False ;
//  AddPkgsTomtLoadPackages (MatPunktAgareNo) ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   dmsConnector.StartTransaction;

   try
      SavePkgType ;
      Try
//if AvRegPkg skall nytt paket skapas och avregistreras
      if AvRegPkg then
      Begin
       SaveNewSplitPackage ;
       InsertUsedPkgsToSortingOrder ;
       InsertRawMtrlPost ;
      End
      else
      Begin
       //Ändra paket
       UpdatePackage ;
       //Ta bort från avregistrerade listan
       TabortAvregistreratPaket
       (dmsSortOrder.cds_SchedulerVerkNo.AsInteger,
       mtLoadPackagesPACKAGETYPENO.AsInteger,
       mtLoadPackagesLOG_INVENTORY_NO.AsInteger,
       mtLoadPackagesPACKAGENO.AsInteger,
       RegistrationPointNo,
       mtLoadPackagesSUPP_CODE.AsString,
       Now) ;
      End ;

// (const PackageTypeNo, OLDMCClassNo, OLDLIPNo, PackageNo, RowNo : integer; const SUPP_CODE : String) ;

//      InsertEndProductPost ;


{      if dmsSortOrder.cds_SorOrdRow.Locate('ProductNo', mtLoadPackagesProductNo.AsInteger, []) then
       SortingOrderRowNo:= dmsSortOrder.cds_SorOrdRowSortingOrderRowNo.AsInteger
        else
         SortingOrderRowNo:= -1 ; }
{      InsertNEWPkgsToSortingOrder (
      PACKAGETYPENO,
      mtLoadPackagesPACKAGETYPENO.AsInteger,
      mtLoadPackagesOldLIPNo.AsInteger,
      mtLoadPackagesPACKAGENO.AsInteger,
      SortingOrderRowNo,//RowNo
      mtLoadPackagesSUPP_CODE.AsString) ; }

      except
       ShowMessage ('Kunde inte ändra paketnr '+Pkg_Info(mtLoadPackagesPACKAGENO.AsInteger, mtLoadPackagesSUPP_CODE.AsString));
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
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

Procedure Tdm_PkgWorkOrder.AngraDelningAvPaket(const SortingOrderNo, RegistrationPointNo, OldPackageNo,
          OldPackageTypeNo, NewPackageNo : Integer;
          const OldSupplierCode, NewSupplierCode : String) ;

procedure DeletePackagesFromSystem ;
Begin
 Try
  sp_DeletePackage.Close ;
  sp_DeletePackage.ParamByName('@PackageNo').AsInteger           := NewPACKAGENO ;
  sp_DeletePackage.ParamByName('@SupplierCode').AsString         := NewSupplierCode ;
  sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger := RegistrationPointNo ;
  sp_DeletePackage.ParamByName('@UserID').AsInteger              := ThisUser.UserID ;
  sp_DeletePackage.ParamByName('@ShiftNo').AsInteger             := -1 ;
  sp_DeletePackage.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_DeletePackage.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;//procedure DeletePackagesFromSystem ;

 procedure RemoveNewSplitPkgFromSortOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := NewPackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := NewSupplierCode ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL') ;
    Raise ;
   End ;
  End ;
 End ;

 procedure ReinstateOldPackageToSortingOrder ;
 Begin
  Try
  sq_InsSortUsedPkgs.ParamByName('SortingOrderNo').AsInteger    := SortingOrderNo ;
  sq_InsSortUsedPkgs.ParamByName('PackageNo').AsInteger         := OldPackageNo ;
  sq_InsSortUsedPkgs.ParamByName('SupplierCode').AsString       := OldSupplierCode ;
  sq_InsSortUsedPkgs.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  sq_InsSortUsedPkgs.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortUsedPkgs.ParamByName('PackageTypeNo').AsInteger     := OldPACKAGETYPENO ;//Old used pkg type
  sq_InsSortUsedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_InsSortUsedPkgs.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

 procedure ReSetOldSplitPackage ;
 Begin
  Try
  sq_ReinstateSplitPkg.ParamByName('NewPackageNo').AsInteger    := NewPackageNo ;
  sq_ReinstateSplitPkg.ParamByName('NewSupplierCode').AsString  := NewSupplierCode ;
  sq_ReinstateSplitPkg.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
  sq_ReinstateSplitPkg.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_ReinstateSplitPkg.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

 procedure DeleteSplitPackageRecord ;
 Begin
  Try
   sq_DEL_SplitPkg.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
   sq_DEL_SplitPkg.ParamByName('NewPkgNo').AsInteger        := NewPackageNo ;
   sq_DEL_SplitPkg.ParamByName('NewPrefix').AsString        := NewSupplierCode ;
   sq_DEL_SplitPkg.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DEL_SplitPkg.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

//Main AngraDelningAvPaket
Begin
 dmsConnector.StartTransaction;
 try
  DeletePackagesFromSystem ;
 //Ta bort från used pkgs list
  RemoveNewSplitPkgFromSortOrder ;
 //
  ReSetOldSplitPackage ;
 //
  ReinstateOldPackageToSortingOrder ;
//
  DeleteSplitPackageRecord ;


  dmsConnector.Commit ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= False ;
  dm_PkgWorkOrder.cds_UsedPkgs.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
  dm_PkgWorkOrder.cds_UsedPkgs.Active:= True ;
 except
  dmsConnector.Rollback ;
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

function Tdm_PkgWorkOrder.GetPackageNo(const ProducerNo, RegpointNo, SeriesType : Integer;Var Prefix : String3) : Integer ;
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

function Tdm_PkgWorkOrder.PackageNumberExists(const PkgNo: Integer; const SupplierCode : String3): Boolean;
begin
  sp_OnePackageNo.Close;
  sp_OnePackageNo.ParamByName('@PackageNo').AsInteger := PkgNo;
  sp_OnePackageNo.ParamByName('@SupplierCode').AsString := Trim(SupplierCode);
  sp_OnePackageNo.Open;
  sp_OnePackageNo.First;
  Result := not sp_OnePackageNo.eof;
  sp_OnePackageNo.Close;
end;


(*
    procedure Tdm_PkgWorkOrder.InsertKoppladePaketMotSortingOrder(const SortingOrderRowNo : Integer) ;
    Var Save_Cursor  : TCursor ;
    Begin
     Save_Cursor    := Screen.Cursor;
     Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
     Try
     With dmsSystem, dmsSortOrder do
     Begin
      dmsConnector.StartTransaction;
      try
    //  cdsLORows.DisableControls ;
      mtSelectedPkgNo.Filter:= 'MARKERAD = 1' ;
      mtSelectedPkgNo.Filtered:= True ;
      Try
       mtSelectedPkgNo.First ;
        While not mtSelectedPkgNo.Eof do
        Begin
          InsertNEWPkgsToSortingOrder (
          mtSelectedPkgNoPackageTypeNo.AsInteger,
          mtSelectedPkgNoPackageTypeNo.AsInteger,
          mtSelectedPkgNoLIPNo.AsInteger,
          mtSelectedPkgNoPaketnr.AsInteger,
          SortingOrderRowNo,//RowNo
          mtSelectedPkgNoLevKod.AsString) ;

         mtSelectedPkgNo.Next ;
        End ; //While

      Finally
       mtSelectedPkgNo.Filtered:= False ;
    //   cdsLORows.EnableControls ;
      End ;

       dmsConnector.Commit ;
      except
       dmsConnector.Rollback ;
    //   Result:= False ;
      end;
     End ; // with
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;
*)


procedure Tdm_PkgWorkOrder.DeleteUsedPkgsToSortingOrder(const PackageNo, SortingOrderNo : Integer;const Prefix : String) ;
Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := SortingOrderNo ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := PackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := Prefix ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL_1') ;
     Raise ;
    End ;
  End ;
End ;

procedure Tdm_PkgWorkOrder.CheckIfNonSolvedPkgsIsAvailableInInventory(const ProducerNo, OwnerNo, ProductionUnitNo : Integer;
const WhenCreated : TDateTime) ;
Begin
 cds_UsedPkgs.DisableControls ;
 Try
 cds_UsedPkgs.First ;
 cds_UsedPkgs.Filter    := 'PackageTypeNo = 0' ;
 cds_UsedPkgs.Filtered  := True ;
 Try
 While not cds_UsedPkgs.Eof do
 Begin
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := cds_UsedPkgsPAKETNR.AsInteger ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := cds_UsedPkgsLevKod.AsString ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := OwnerNo ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 1 ;
//     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.Open ;
     Try
     if not sq_OneUniquePkg.Eof then
     Begin
      RemoveUnSolvedPkgsFromInventory(ProducerNo, sq_OneUniquePkgPackageTypeNo.AsInteger,
      sq_OneUniquePkgLOG_INVENTORY_NO.AsInteger, cds_UsedPkgsPAKETNR.AsInteger, OwnerNo,
      ProductionUnitNo, cds_UsedPkgsLevKod.AsString, WhenCreated, sq_OneUniquePkgPRODUCTNO.AsInteger) ;
     End ;
     Finally
      sq_OneUniquePkg.Close ;
     End ;

  cds_UsedPkgs.Next ;
 End ;
 Finally
  cds_UsedPkgs.Filtered := False ;
 End ;
 Finally
  cds_UsedPkgs.EnableControls ;
 End ;
End ;

function Tdm_PkgWorkOrder.RemoveUnSolvedPkgsFromInventory
(const SupplierNo, PACKAGETYPENO, LIPNO, PACKAGENO, MatPunktAgareNo, RegistrationPointNo : Integer;
const SUPP_CODE : String;
const WhenCreated : TDateTime;Const ProductNo : Integer) : Boolean ;
Var
  Save_Cursor  : TCursor;

 procedure insertRawMtrlPost ;
 Begin
  With dmsSortOrder do
  Begin
   if not cds_SORaw.Locate('BookedProductNo',ProductNo, []) then
   Begin
    cds_SORaw.Insert ;
    cds_SORawBookedProductNo.AsInteger:= ProductNo ;
    cds_SORaw.Post ;
   End ;
  End ;
 End ;//procedure insertRawMtrlPost ;

 procedure InsertUsedPkgsToSortingOrder ;
 Begin
  Try
  sq_DelSortUSedPkgs.ParamByName('SortingOrderNo').AsInteger  := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_DelSortUSedPkgs.ParamByName('PackageNo').AsInteger       := PackageNo ;
  sq_DelSortUSedPkgs.ParamByName('SupplierCode').AsString     := SUPP_CODE ;
  sq_DelSortUSedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_DelSortUSedPkgs.ExecSQL_12') ;
     Raise ;
    End ;
  End ;


  Try
  sq_InsSortUsedPkgs.ParamByName('SortingOrderNo').AsInteger    := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
  sq_InsSortUsedPkgs.ParamByName('PackageNo').AsInteger         := PackageNo ;
  sq_InsSortUsedPkgs.ParamByName('SupplierCode').AsString       := SUPP_CODE ;
  sq_InsSortUsedPkgs.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(WhenCreated) ;
  sq_InsSortUsedPkgs.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
  sq_InsSortUsedPkgs.ParamByName('PackageTypeNo').AsInteger     := PACKAGETYPENO ;//Old used pkg type
  sq_InsSortUsedPkgs.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sq_InsSortUsedPkgs.ExecSQL') ;
     Raise ;
    End ;
  End ;
 End ;

begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Result:= False ;
Try
  dmsConnector.StartTransaction;
  try
   Try
    sp_RemovePackageFromInventory.Close ;
    sp_RemovePackageFromInventory.ParamByName('@PackageNo').AsInteger            := PACKAGENO ;
    sp_RemovePackageFromInventory.ParamByName('@SupplierCode').AsString          := SUPP_CODE ;
    sp_RemovePackageFromInventory.ParamByName('@RegistrationPointNo').AsInteger  := RegistrationPointNo ;
    sp_RemovePackageFromInventory.ParamByName('@PackageTypeNo').AsInteger        := PACKAGETYPENO ;
    sp_RemovePackageFromInventory.ParamByName('@LogicalInventoryPointNo').AsInteger                := LIPNo ;
    sp_RemovePackageFromInventory.ParamByName('@UserID').AsInteger               := ThisUser.UserID ;
    sp_RemovePackageFromInventory.ParamByName('@SupplierNo').AsInteger           := SupplierNo ;
    sp_RemovePackageFromInventory.ParamByName('@DateCreated').AsSQLTimeStamp     := DateTimeToSqlTimeStamp(WhenCreated) ;
    sp_RemovePackageFromInventory.ParamByName('@MatPunktAgareNo').AsInteger      := MatPunktAgareNo ;
    sp_RemovePackageFromInventory.ParamByName('@RunNo').AsInteger                := dmsSortOrder.cds_SortOrderSortingOrderNo.AsInteger ;
    sp_RemovePackageFromInventory.ExecProc ;
   Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :sp_RemovePackageFromInventory.ExecProc') ;
     Raise ;
    End ;
   End ;

    InsertUsedPkgsToSortingOrder ;
    insertRawMtrlPost ;
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

procedure Tdm_PkgWorkOrder.RefreshLengths ;
Var ProductGroupNo, GroupNo : Integer ;
begin
 if cdsLengthGroupGroupNo.AsInteger = -1 then
 Begin
  GroupNo         := -1 ;
 End
  else
  Begin
   GroupNo        := cdsLengthGroupGroupNo.AsInteger ;
  End ;

 cdsProdLength.Active:= False ;
 cdsProdLength.ParamByName('GroupNo').AsInteger        := GroupNo ;
 cdsProdLength.Active:= True ;
end;

procedure Tdm_PkgWorkOrder.dsLengthGroupDataChange(Sender: TObject;
  Field: TField);
begin
 RefreshLengths ;
end;

Function Tdm_PkgWorkOrder.GetNoOfPcsInNewPkg : Integer ;
Var x : Integer ;
Begin
 cdsProdLength.Filter   := 'STYCK > 0' ;
 cdsProdLength.Filtered := True ;
 Try
  Result:= 0 ;
  cdsProdLength.First ;
  While not cdsProdLength.Eof do
  Begin
   Result:= Result + cdsProdLengthSTYCK.AsInteger ;
   cdsProdLength.Next ;
  End ;//While not
 Finally
   cdsProdLength.Filtered  := False ;
 End ;
End ;

procedure Tdm_PkgWorkOrder.InsertMissingRawMtrlPost(const SortingOrderNo : Integer) ;
Begin
 Try
 FD_insMissingRawMtrl.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_insMissingRawMtrl.ExecSQL ;
  Except
    On E: Exception do
    Begin
     ShowMessage(E.Message+' :FD_insMissingRawMtrl.ExecSQL') ;
     Raise ;
    End ;
  End ;

  With dmsSortOrder do
  Begin
   cds_SORaw.Active := False ;
   cds_SORaw.Active := True ;
  End ;//With


{
  With dmsSortOrder do
  Begin
   cds_UsedPkgs.First ;
   While not cds_UsedPkgs.Eof do
   Begin
    if not cds_SORaw.Locate('ProductNo', cds_UsedPkgsProductNo.AsInteger, []) then
    Begin
     cds_SORaw.Insert ;
     cds_SORawProductNo.AsInteger:= cds_UsedPkgsProductNo.AsInteger ;
     cds_SORaw.Post ;
    End ;
    cds_UsedPkgs.Next ;
   End ;//While
   if cds_SORaw.ChangeCount > 0 then
   Begin
    cds_SORaw.ApplyUpdates(0) ;
    cds_SORaw.CommitUpdates ;
   End ;
   cds_SORaw.Active := False ;
   cds_SORaw.Active := True ;
  End ;//With
  }
End ;//procedure insertMissingRawMtrlPost ;

function Tdm_PkgWorkOrder.GetSOOutPut_AM1(const SortingOrderNo, ProductNo : Integer) : Double ;
Begin
 Try
 FD_GetSOOutPut.Close ;
 FD_GetSOOutPut.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GetSOOutPut.ParamByName('ProductNo').AsInteger      := ProductNo ;
 FD_GetSOOutPut.Open ;
 if not FD_GetSOOutPut.Eof then
  Result:= FD_GetSOOutPutAM1.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_GetSOOutPut.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetSOOutPut_AM3(const SortingOrderNo, ProductNo : Integer) : Double ;
Begin
 Try
 FD_GetSOOutPut.Close ;
 FD_GetSOOutPut.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GetSOOutPut.ParamByName('ProductNo').AsInteger      := ProductNo ;
 FD_GetSOOutPut.Open ;
 if not FD_GetSOOutPut.Eof then
  Result:= FD_GetSOOutPutAM3.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_GetSOOutPut.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetSOOutPut_PCS(const SortingOrderNo, ProductNo : Integer) : Integer ;
Begin
 Try
// FD_GetSOOutPut.Close ;
 FD_GetSOOutPut.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GetSOOutPut.ParamByName('ProductNo').AsInteger      := ProductNo ;
 FD_GetSOOutPut.Open ;
 if not FD_GetSOOutPut.Eof then
  Result:= FD_GetSOOutPutStyck.AsInteger
   else
    Result  := 0 ;
 Finally
  FD_GetSOOutPut.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetSOOutPut_Value(const SortingOrderNo, ProductNo : Integer) : Double ;
Begin
 Try
// FD_GetSOOutPut.Close ;
 FD_GetSOOutPut.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_GetSOOutPut.ParamByName('ProductNo').AsInteger      := ProductNo ;
 FD_GetSOOutPut.Open ;
 if not FD_GetSOOutPut.Eof then
  Result:= FD_GetSOOutPutProductValue.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_GetSOOutPut.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetRAWSUM_PCS(const SortingOrderNo : Integer) : Integer ;
Begin
 Try
 FD_SORawSum.Close ;
 FD_SORawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SORawSum.Open ;
 if not FD_SORawSum.Eof then
  Result:= FD_SORawSumStyck.AsInteger
   else
    Result  := 0 ;
 Finally
  FD_SORawSum.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetRAWSUM_AM1(const SortingOrderNo : Integer) : Double ;
Begin
 Try
 FD_SORawSum.Close ;
 FD_SORawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SORawSum.Open ;
 if not FD_SORawSum.Eof then
  Result:= FD_SORawSumAM1.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_SORawSum.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetRAWSUM_AM3(const SortingOrderNo : Integer) : Double ;
Begin
 Try
 FD_SORawSum.Close ;
 FD_SORawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SORawSum.Open ;
 if not FD_SORawSum.Eof then
  Result:= FD_SORawSumAM3.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_SORawSum.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetRAWSUM_NM3(const SortingOrderNo : Integer) : Double ;
Begin
 Try
 FD_SORawSum.Close ;
 FD_SORawSum.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SORawSum.Open ;
 if not FD_SORawSum.Eof then
  Result:= FD_SORawSumNM3.AsFloat
   else
    Result  := 0 ;
 Finally
  FD_SORawSum.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetRAWSUM_NM3_NoOmSort(const SortingOrderNo : Integer;const FieldName : String) : Double ;
Begin
 Try
 FD_SORawSumNoOmSort.Close ;
 FD_SORawSumNoOmSort.ParamByName('SortingOrderNo').AsInteger := SortingOrderNo ;
 FD_SORawSumNoOmSort.Open ;
 if not FD_SORawSumNoOmSort.Eof then
  Result:= FD_SORawSumNoOmSort.FieldByName(FieldName).AsFloat
   else
    Result  := 0 ;
 Finally
  FD_SORawSumNoOmSort.Close ;
 End ;
End ;

function Tdm_PkgWorkOrder.GetPriceOfPriceList(const LoadedDate : TDateTime;const SupplierNo, PriceListNo, ProductNo, ProductLengthNo : Integer) : Double ;
Begin
  sq_GetPriceOfPriceList.ParamByName('PriceListNo').AsInteger         := PriceListNo ;
  sq_GetPriceOfPriceList.ParamByName('LoadedDate').AsSQLTimeStamp     := DateTimeToSqlTimeStamp(LoadedDate) ;
  sq_GetPriceOfPriceList.ParamByName('ProductNo').AsInteger           := ProductNo ;
  sq_GetPriceOfPriceList.ParamByName('ProductLengthNo').AsInteger     := ProductLengthNo ;
  sq_GetPriceOfPriceList.ParamByName('SupplierNo').AsInteger          := SupplierNo ;
  sq_GetPriceOfPriceList.Open ;

  if not sq_GetPriceOfPriceList.Eof then
   Result:= sq_GetPriceOfPriceListUnnamed1.AsFloat ;
  sq_GetPriceOfPriceList.Close ;
End ;


end.
