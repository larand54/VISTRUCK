unit UnitdmModule1;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable,
  dxmdaset, SqlTimSt, Dialogs, Controls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type
  TdmModule1 = class(TDataModule)
    dsClient: TDataSource;
    dsDestination: TDataSource;
    dsClientAddress: TDataSource;
    dsLoadFreightCost: TDataSource;
    ds_PkgInfo: TDataSource;
    ds_LoadPkgInfo: TDataSource;
    ds_LoadFreightCostHeader: TDataSource;
    mtShippers: TkbmMemTable;
    mtShippersShipper: TStringField;
    mtShippersShippersInvoiceNo: TStringField;
    dsShippers: TDataSource;
    mtShippersShipperNo: TIntegerField;
    mtShippersAvrakningsNr: TIntegerField;
    ds_LoadFC: TDataSource;
    cds_PkgInfo: TFDQuery;
    cds_PkgInfoPKG_CREATED_BY: TStringField;
    cds_PkgInfoPKG_NO: TIntegerField;
    cds_PkgInfoPKG_CREATED: TSQLTimeStampField;
    cds_PkgInfoSUPP_CODE: TStringField;
    cds_PkgInfoPRODUCT: TStringField;
    cds_PkgInfoINVENTORY_OWNER: TStringField;
    cds_PkgInfoPRODUCER: TStringField;
    cds_PkgInfoINVENTORY: TStringField;
    cds_PkgInfoINVENTORY_GROUP: TStringField;
    cds_PkgInfoPKG_STATUS: TStringField;
    cds_PkgInfoBARCODE: TStringField;
    cds_PkgInfoGRADESTAMP: TStringField;
    cds_PkgInfoPKG_HEIGHT: TIntegerField;
    cds_PkgInfoPKG_WIDTH: TIntegerField;
    cds_PkgInfoMINI_BUNDLED: TStringField;
    cds_PkgInfoSTICKS: TStringField;
    cds_PkgInfoWRAP: TStringField;
    cds_PkgInfoSHRINK_WRAP: TStringField;
    cds_PkgInfoM3_ACT: TFloatField;
    cds_PkgInfoM3_NOM: TFloatField;
    cds_PkgInfoPIECES: TIntegerField;
    cds_PkgInfoMFBM: TFloatField;
    cds_PkgInfoACT_LINEAL_METER: TFloatField;
    cds_PkgInfoNOM_LINEAL_METER: TFloatField;
    cds_PkgInfoM2: TFloatField;
    cds_PkgInfoPACKAGETYPENO: TIntegerField;
    cds_PkgInfoKORTAKODEN: TStringField;
    cds_PkgInfoLANGAKODEN: TStringField;
    sqGetSupplierNo: TFDQuery;
    cds_LoadPkgInfo: TFDQuery;
    cds_LoadPkgInfoLOAD_CUSTOMER: TStringField;
    cds_LoadPkgInfoLOAD_SUPPLIER: TStringField;
    cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoLOAD_NO: TIntegerField;
    cds_LoadPkgInfoLO_NUMBER: TIntegerField;
    cds_LoadPkgInfoFS: TStringField;
    cds_LoadPkgInfoLOAD_CREATED_BY: TStringField;
    cds_LoadPkgInfoLOAD_STATUS: TStringField;
    cds_LoadPkgInfoINVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINV_CREATED_BY: TStringField;
    cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINVOICETYPE: TStringField;
    cds_LoadPkgInfoDEBIT_CREDIT: TStringField;
    cds_LoadPkgInfoORDER_NO: TStringField;
    cds_LoadPkgInfoORDER_CUSTOMER: TStringField;
    cds_LoadFreightCostHeader: TFDQuery;
    cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField;
    cds_LoadFreightCostHeaderStatus: TIntegerField;
    cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField;
    cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField;
    cds_LoadFreightCostHeaderCreatedUser: TSmallintField;
    cds_LoadFreightCostHeaderModifiedUser: TSmallintField;
    cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField;
    cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField;
    cds_LoadFreightCostHeaderNote: TMemoField;
    cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField;
    cds_LoadFreightCostHeaderVerkNo: TIntegerField;
    cdsClient: TFDStoredProc;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    sq_ClientData: TFDQuery;
    sq_ClientDataDefaultBillingAddressNo: TIntegerField;
    sq_ClientDataClientName: TStringField;
    sq_ClientDataClientNo: TIntegerField;
    sq_ClientDataInvoiceText: TStringField;
    sq_ClientDataLanguageCode: TIntegerField;
    sq_ClientDataDeliveryTerm: TStringField;
    sq_ClientDataDeliveryTerm_No: TIntegerField;
    sq_ClientDataPaymentTermsNo: TIntegerField;
    sq_ClientDataPayDesc: TStringField;
    sq_ClientDataFreightInDiscount: TSmallintField;
    sq_ClientDataFreightInCommission: TSmallintField;
    sq_ClientDataCommissionPaidByCustomer: TSmallintField;
    sq_ClientDataDiscount1: TFloatField;
    sq_ClientDataCurrencyNo: TIntegerField;
    sq_ClientDataCURRENCYNAME: TStringField;
    sq_ClientDataBILL_ADDRESS_NAME: TStringField;
    sq_ClientDataBILL_ADDRESSLINE1: TStringField;
    sq_ClientDataBILL_ADDRESSLINE2: TStringField;
    sq_ClientDataBILL_ADDRESSLINE3: TStringField;
    sq_ClientDataBILL_ADDRESSLINE4: TStringField;
    sq_ClientDataBILL_STATEORPROVINCE: TStringField;
    sq_ClientDataBILL_POSTALCODE: TStringField;
    sq_ClientDataBILL_ADDRESSCITY: TStringField;
    sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField;
    sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField;
    sq_ClientDataSHIPTO_PROVINCE: TStringField;
    sq_ClientDataSHIPTO_POSTALCODE: TStringField;
    sq_ClientDataSHIPTO_CITY: TStringField;
    sq_ClientDataSHIPTO_COUNTRY: TStringField;
    cdsDestination: TFDStoredProc;
    cdsDestinationCityNo: TIntegerField;
    cdsDestinationCityName: TStringField;
    sq_UpdateLoad: TFDQuery;
    sq_UpdLoadII: TFDQuery;
    sq_InsFakturaLoads: TFDQuery;
    cdsClientAddress: TFDQuery;
    cdsClientAddressADDRESS_NO: TIntegerField;
    cdsClientAddressADDRESS_NAME: TStringField;
    cdsClientAddressADDRESSLINE1: TStringField;
    cdsClientAddressADDRESSLINE2: TStringField;
    cdsClientAddressADDRESSLINE3: TStringField;
    cdsClientAddressADDRESSLINE4: TStringField;
    cdsClientAddressPROVINCE: TStringField;
    cdsClientAddressPOSTALCODE: TStringField;
    cdsClientAddressCITY: TStringField;
    cdsClientAddressCOUNTRY: TStringField;
    cds_LoadFC: TFDQuery;
    cds_LoadFCLastnr: TIntegerField;
    cds_LoadFCFS: TStringField;
    cds_LoadFCLastID: TStringField;
    cds_LoadFCUtlastad: TSQLTimeStampField;
    cds_LoadFCSpeditr: TStringField;
    cds_LoadFCUtlastningsort: TStringField;
    cds_LoadFCDestination: TStringField;
    cds_LoadFCAM3: TFloatField;
    cds_LoadFCPaket: TIntegerField;
    cds_LoadFCSupplierNo: TIntegerField;
    cds_LoadFCLO: TIntegerField;
    cds_LoadFCMarkerad: TIntegerField;
    cds_LoadFCBelopp: TBCDField;
    cds_LoadFCPrisPerAM3SEK: TBCDField;
    cds_LoadFCNoOfFS: TIntegerField;
    cds_LoadFCShippingCompanyNo: TIntegerField;
    cds_LoadFCLoadingLocationNo: TIntegerField;
    cds_LoadFCCustomerNo: TIntegerField;
    cds_LoadFCssp_CustomerNo: TIntegerField;
    cds_LoadFCNote: TStringField;
    cdsLoadFreightCost: TFDQuery;
    cdsLoadFreightCostAvrakningsNo: TIntegerField;
    cdsLoadFreightCostLoadNo: TIntegerField;
    cdsLoadFreightCostM3_NET: TFloatField;
    cdsLoadFreightCostPricePerM3_NET: TFloatField;
    cdsLoadFreightCostTotalSUM: TFloatField;
    cdsLoadFreightCostCreatedUser: TIntegerField;
    cdsLoadFreightCostModifiedUser: TIntegerField;
    cdsLoadFreightCostDateCreated: TSQLTimeStampField;
    cdsLoadFreightCostDateModified: TSQLTimeStampField;
    cdsLoadFreightCostNote: TStringField;
    cds_LF: TFDQuery;
    cds_LFAM3: TFloatField;
    cds_LFInternalInvoiceNo: TIntegerField;
    sq_GetLoadNo: TFDQuery;
    sq_GetLoadNoLoadNo: TIntegerField;
    sq_FindAvr: TFDQuery;
    sq_FindAvrAvrakningsNo: TIntegerField;
    sq_FindAvrVERK: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    sq_GetAddressNo: TFDQuery;
    sq_GetAddressNoAddressNo: TIntegerField;
    sp_PcsPerLength: TFDStoredProc;
    sqGetSupplierNoSupplierNo: TIntegerField;
    cds_LFKommission_Percent: TFloatField;
    cds_LFKommission_Sum: TFloatField;
    cds_LFKommission_villkor: TIntegerField;
    cds_LFValutaFaktura: TStringField;
    cds_LFAgent: TStringField;
    cds_LFKund: TStringField;
    cds_LFShippingPlanNo: TIntegerField;
    cds_LFFakturanr: TIntegerField;
    cds_LFFraktValuta: TStringField;
    cds_LFFraktEnhet: TStringField;
    cds_LFFraktkostnad: TFloatField;
    cds_LFConfirmFrakt: TIntegerField;
    cds_LFFraktkostnad_sum: TFloatField;
    cds_LFUtlastad: TSQLTimeStampField;
    cds_LFSpeditr: TStringField;
    cds_LFShippingCompanyNo: TIntegerField;
    cds_LFVaruvrde: TFloatField;
    cds_LFFakturavrde: TFloatField;
    cds_LFConfirmKomm: TIntegerField;
    FDmSelectedRows: TFDMemTable;
    FDmSelectedRowsInternalInvoiceNo: TIntegerField;
    FDmSelectedRowsLONo: TIntegerField;
    FDmSelectedRowsSupplier_InvoiceNo: TStringField;
    FDmSelectedRowsSupplier_InvoiceDate: TDateTimeField;
    cds_LFFrakt: TFloatField;
    cds_LFKomm: TFloatField;
    FDmSelectedRowsTotalAmount: TFloatField;
    FDmSelectedRowsAmount: TFloatField;
    FDmSelectedRowsSHIPPINGCOMPANYNO: TIntegerField;
    FDmSelectedRowsCURRENCYNO: TIntegerField;
    cds_LFFraktCurrencyNo: TIntegerField;
    cds_LFKommCurrencyNo: TIntegerField;
    FDmSelectedRowsFakturanr: TIntegerField;
    cds_LFAgentNo: TIntegerField;
    cds_LFInvoiceType: TIntegerField;
    cds_LFValutaNr: TIntegerField;
    cds_LFEgenValuta: TStringField;
    ds_LFALL: TDataSource;
    FDmSelectedRowsNote: TStringField;
    cds_PkgInfoTork: TStringField;
    procedure cds_LFFraktChange(Sender: TField);
    procedure cds_LFConfirmFraktChange(Sender: TField);
    procedure cds_LFConfirmKommChange(Sender: TField);
    procedure cds_LFKommChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
//    grpNo : Integer ;
    function  GetCreditGroupName (const ClientNo : Integer) : String ;



    function  GetSupplierNo(const LoadNo : Integer) : Integer ;
    procedure UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
    procedure UpdateLoadII(const LocalLoadingLocation, LocalDestinationNo, LoadNo : Integer) ;
  end;

var
  dmModule1: TdmModule1;

implementation

uses dmsDataConn, recerror, VidaUser, dmsVidaContact , dmsVidaSystem;

{$R *.dfm}


function TdmModule1.GetSupplierNo(const LoadNo : Integer) : Integer ;
Begin
 sqGetSupplierNo.Close ;
 sqGetSupplierNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sqGetSupplierNo.Open ;
 if not sqGetSupplierNo.Eof then
  Result:= sqGetSupplierNoSupplierNo.AsInteger
   else
    Result:= -1 ;
 sqGetSupplierNo.Close ;
End ;

procedure TdmModule1.UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
Begin
 Try
 sq_UpdateLoad.ParamByName('LocalShippingCompanyNo').AsInteger:= LocalShippingCompanyNo ;
 sq_UpdateLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;
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

procedure TdmModule1.UpdateLoadII(const LocalLoadingLocation, LocalDestinationNo, LoadNo : Integer) ;
Begin
 Try
 sq_UpdLoadII.ParamByName('LocalLoadingLocation').AsInteger := LocalLoadingLocation ;
 sq_UpdLoadII.ParamByName('LocalDestinationNo').AsInteger   := LocalDestinationNo ;
 sq_UpdLoadII.ParamByName('LoadNo').AsInteger               := LoadNo ;
 sq_UpdLoadII.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmModule1.cds_LFFraktChange(Sender: TField);
begin
 cds_LFConfirmFrakt.OnChange  := nil ;
 Try
 if cds_LFFrakt.AsFloat <> 0 then
 cds_LFConfirmFrakt.AsInteger := 1
 else
 cds_LFConfirmFrakt.AsInteger := 0 ;
 Finally
  cds_LFConfirmFrakt.OnChange  := cds_LFConfirmFraktChange ;
 End ;
end;

procedure TdmModule1.cds_LFConfirmFraktChange(Sender: TField);
begin
 cds_LFFrakt.OnChange  := nil ;
 Try
 if cds_LFConfirmFrakt.AsInteger = 1 then
 cds_LFFrakt.AsFloat := cds_LFFraktkostnad_sum.AsFloat
 else
 cds_LFFrakt.AsFloat := 0 ;
 Finally
  cds_LFFrakt.OnChange := cds_LFFraktChange ;
 End ;
end;

procedure TdmModule1.cds_LFConfirmKommChange(Sender: TField);
begin
 cds_LFKomm.OnChange  := nil ;
 Try
 if cds_LFConfirmKomm.AsInteger = 1 then
 cds_LFKomm.AsFloat := cds_LFKommission_Sum.AsFloat
 else
 cds_LFKomm.AsFloat := 0 ;
// if cds_LF.State in [dsEdit, dsInsert] then
//  cds_LF.Post ;
 Finally
  cds_LFKomm.OnChange := cds_LFKommChange ;
 End ;
end;

procedure TdmModule1.cds_LFKommChange(Sender: TField);
begin
 cds_LFConfirmKomm.OnChange  := nil ;
 Try
 if cds_LFKomm.AsFloat <> 0 then
 cds_LFConfirmKomm.AsInteger := 1
 else
 cds_LFConfirmKomm.AsInteger := 0 ;
 Finally
  cds_LFConfirmKomm.OnChange  := cds_LFConfirmKommChange ;
 End ;
end;


function TdmModule1.GetCreditGroupName (const ClientNo : Integer) : String ;
Begin
End ;

end.
