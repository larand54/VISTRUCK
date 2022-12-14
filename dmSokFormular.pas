unit dmSokFormular;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm_SokFormular = class(TDataModule)
    ds_SokAvrop: TDataSource;
    ds_MakeSokAvrop: TDataSource;
    ds_PropsTaBort: TDataSource;
    cds_MakeSokAvrop: TFDQuery;
    cds_MakeSokAvropUKEY: TStringField;
    cds_MakeSokAvropAVROP_STATUS: TStringField;
    cds_MakeSokAvropLO: TIntegerField;
    cds_MakeSokAvropLOADING_LOCATION: TStringField;
    cds_MakeSokAvropSUPPLIER: TStringField;
    cds_MakeSokAvropORDER_NO: TStringField;
    cds_MakeSokAvropCUST_REFERENCE: TStringField;
    cds_MakeSokAvropFROM_WEEK: TIntegerField;
    cds_MakeSokAvropTO_WEEK: TIntegerField;
    cds_MakeSokAvropCUSTOMER: TStringField;
    cds_MakeSokAvropAGENT: TStringField;
    cds_MakeSokAvropDELIVERY_TERM: TStringField;
    cds_MakeSokAvropPOSTAL_CODE_DESTINATION: TStringField;
    cds_MakeSokAvropSHIPTO_REFERENCE: TStringField;
    cds_MakeSokAvropPreliminaryRequestedPeriod: TStringField;
    cds_MakeSokAvropSHIPPER: TStringField;
    cds_MakeSokAvropSHIPPINGCOMPANYBOOKINGID: TStringField;
    cds_MakeSokAvropSHIPPERSSHIPDATE: TSQLTimeStampField;
    cds_MakeSokAvropTRANSPORT: TStringField;
    cds_MakeSokAvropMARKET_REGION: TStringField;
    cds_MakeSokAvropBookingNo: TIntegerField;
    cds_MakeSokAvropPROD_DESC: TStringField;
    cds_MakeSokAvropLENGTH_DESC: TStringField;
    cds_MakeSokAvropPANIC_NOTE: TStringField;
    cds_MakeSokAvropVESSEL: TStringField;
    cds_MakeSokAvropETD: TSQLTimeStampField;
    cds_MakeSokAvropETA: TSQLTimeStampField;
    cds_MakeSokAvropLEVLO: TFloatField;
    cds_MakeSokAvropSupplierReference: TStringField;
    cds_MakeSokAvropNoOfSuppliers: TIntegerField;
    cds_MakeSokAvropCustomerNo: TIntegerField;
    cds_MakeSokAvropOrderType: TIntegerField;
    cds_SokAvrop: TFDQuery;
    cds_SokAvropUKEY: TStringField;
    cds_SokAvropUSERID: TIntegerField;
    cds_SokAvropAVROP_STATUS: TStringField;
    cds_SokAvropLO: TIntegerField;
    cds_SokAvropLOADING_LOCATION: TStringField;
    cds_SokAvropSUPPLIER: TStringField;
    cds_SokAvropORDER_NO: TStringField;
    cds_SokAvropCUST_REFERENCE: TStringField;
    cds_SokAvropFROM_WEEK: TIntegerField;
    cds_SokAvropTO_WEEK: TIntegerField;
    cds_SokAvropCUSTOMER: TStringField;
    cds_SokAvropAGENT: TStringField;
    cds_SokAvropDELIVERY_TERM: TStringField;
    cds_SokAvropPOSTAL_CODE_DESTINATION: TStringField;
    cds_SokAvropSHIPTO_REFERENCE: TStringField;
    cds_SokAvropREADY_DAY: TStringField;
    cds_SokAvropSHIPPER: TStringField;
    cds_SokAvropSHIPPINGCOMPANYBOOKINGID: TStringField;
    cds_SokAvropSHIPPERSSHIPDATE: TSQLTimeStampField;
    cds_SokAvropTRANSPORT: TStringField;
    cds_SokAvropINVOICENO: TIntegerField;
    cds_SokAvropMARKET_REGION: TStringField;
    cds_SokAvropBOOKINGNO: TIntegerField;
    cds_SokAvropPRODUCT_DESC: TStringField;
    cds_SokAvropPANIC_NOTE: TStringField;
    cds_SokAvropLENGTH_DESC: TStringField;
    cds_SokAvropVESSEL: TStringField;
    cds_SokAvropETD: TSQLTimeStampField;
    cds_SokAvropETA: TSQLTimeStampField;
    cds_SokAvropSupplierReference: TStringField;
    cds_SokAvropNoOfSuppliers: TIntegerField;
    cds_SokAvropAM3_REST: TFMTBCDField;
    cds_Booking: TFDQuery;
    cds_BookingBookingNo: TIntegerField;
    cds_BookingShippingPlanNo: TIntegerField;
    cds_BookingVoyageNo: TIntegerField;
    cds_BookingShippingCompanyNo: TIntegerField;
    cds_BookingDestinationNo: TIntegerField;
    cds_BookingShippingCompanyBookingID: TStringField;
    cds_BookingBookingTypeNo: TIntegerField;
    cds_BookingVolumeBooked: TFloatField;
    cds_BookingVolumeUnitNo: TIntegerField;
    cds_BookingRequestedShipDate: TSQLTimeStampField;
    cds_BookingRequestedShipTime: TSQLTimeStampField;
    cds_BookingShippersShipDate: TSQLTimeStampField;
    cds_BookingShippersShipTime: TSQLTimeStampField;
    cds_BookingSupplierReference: TStringField;
    cds_BookingFreightCost: TFloatField;
    cds_BookingFreightCostVolUnit: TIntegerField;
    cds_BookingFreightCostCurrency: TIntegerField;
    cds_BookingSequenceNo: TIntegerField;
    cds_BookingCreatedUser: TSmallintField;
    cds_BookingModifiedUser: TSmallintField;
    cds_BookingDateCreated: TSQLTimeStampField;
    cds_BookingStatus: TIntegerField;
    cds_BookingPreliminaryRequestedPeriod: TStringField;
    cds_BookingLOText: TMemoField;
    cds_BookingInvoiceText: TMemoField;
    cds_BookingNoteForLoadSheet: TMemoField;
    cds_BookingVesselOrPort: TStringField;
    cds_BookingPanic_Note: TStringField;
    cds_PropsTaBort: TFDQuery;
    cds_PropsTaBortUserID: TIntegerField;
    cds_PropsTaBortForm: TStringField;
    cds_PropsTaBortName: TStringField;
    cds_PropsTaBortVerkNo: TIntegerField;
    cds_PropsTaBortOwnerNo: TIntegerField;
    cds_PropsTaBortPIPNo: TIntegerField;
    cds_PropsTaBortLIPNo: TIntegerField;
    cds_PropsTaBortInputOption: TIntegerField;
    cds_PropsTaBortRegPointNo: TIntegerField;
    cds_PropsTaBortRegDate: TSQLTimeStampField;
    cds_PropsTaBortCopyPcs: TIntegerField;
    cds_PropsTaBortRunNo: TIntegerField;
    cds_PropsTaBortProducerNo: TIntegerField;
    cds_PropsTaBortAutoColWidth: TIntegerField;
    cds_PropsTaBortSupplierCode: TStringField;
    cds_PropsTaBortLengthOption: TIntegerField;
    cds_PropsTaBortLengthGroupNo: TIntegerField;
    cds_PropsTaBortNewItemRow: TIntegerField;
    cds_PropsTaBortSalesRegionNo: TIntegerField;
    cds_PropsTaBortMarketRegionNo: TIntegerField;
    cds_PropsTaBortOrderTypeNo: TIntegerField;
    cds_PropsTaBortStatus: TIntegerField;
    cds_PropsTaBortFilterOrderDate: TIntegerField;
    cds_PropsTaBortStartPeriod: TSQLTimeStampField;
    cds_PropsTaBortEndPeriod: TSQLTimeStampField;
    cds_PropsTaBortClientNo: TIntegerField;
    cds_PropsTaBortSalesPersonNo: TIntegerField;
    cds_PropsTaBortVerkSupplierNo: TIntegerField;
    cds_PropsTaBortVerkKundNo: TIntegerField;
    cds_PropsTaBortLOObjectType: TIntegerField;
    cds_PropsTaBortBarCodeNo: TIntegerField;
    cds_PropsTaBortGradeStampNo: TIntegerField;
    cds_PropsTaBortVolumeUnitNo: TIntegerField;
    cds_PropsTaBortLengthFormatNo: TIntegerField;
    cds_PropsTaBortLengthVolUnitNo: TIntegerField;
    cds_PropsTaBortGroupByBox: TIntegerField;
    cds_PropsTaBortGroupSummary: TIntegerField;
    cds_PropsTaBortAgentNo: TIntegerField;
    cds_PropsTaBortLoadingLocationNo: TIntegerField;
    cds_PropsTaBortShipperNo: TIntegerField;
    cds_PropsTaBortBookingTypeNo: TIntegerField;
    cds_PropsTaBortCustomerNo: TIntegerField;
    cds_PropsTaBortShowProduct: TIntegerField;
    cds_MakeSokAvropREST: TFloatField;
    FDUpdateSQL1: TFDUpdateSQL;
    FDUpdateSQL2: TFDUpdateSQL;
    cds_MakeSokAvropShippingPlanNo: TIntegerField;
    cds_MakeSokAvropVoyageNo: TIntegerField;
    cds_MakeSokAvropLand: TStringField;
    cds_SokAvropAM3_ORDER: TFMTBCDField;
    cds_SokAvropAM3_DEL: TFMTBCDField;
    cds_MakeSokAvropAM3: TFMTBCDField;
    procedure dsp_MakeSokAvropGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_MakeSokAvropBeforePost(DataSet: TDataSet);
    procedure cds_BookingAfterPost(DataSet: TDataSet);
    procedure cds_MakeSokAvropUpdateRecord(ASender: TDataSet;
      ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
      AOptions: TFDUpdateRowOptions);
  private
    { Private declarations }
    procedure SetBookingValuesInIdenticalBookings;
  public
    { Public declarations }
    // cdsClone : TClientDataSet ;
  end;

var
  dm_SokFormular: Tdm_SokFormular;

implementation

uses dmsDataConn, recerror, UnitSokAvropFormular, VidaUser;

{$R *.dfm}

procedure Tdm_SokFormular.dsp_MakeSokAvropGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'Booking';
end;

procedure Tdm_SokFormular.SetBookingValuesInIdenticalBookings;
Var
  FDMemTable1: TFDMemTable;
begin
  // LMX1
  cds_MakeSokAvrop.BeforePost := nil;
  Try

    FDMemTable1 := TFDMemTable.Create(nil);
    FDMemTable1.CloneCursor(cds_MakeSokAvrop, False, False);

    // cdsClone := TClientDataSet.Create(Nil);
    // cdsClone.CloneCursor(cds_MakeSokAvrop, False, False);

    Try
      FDMemTable1.SetRange([cds_MakeSokAvropBookingNo.AsInteger],
        [cds_MakeSokAvropBookingNo.AsInteger]);
      Try
        FDMemTable1.First;
        While not FDMemTable1.Eof do
        Begin
          if FDMemTable1.FieldByName('UKEY').AsString <> cds_MakeSokAvropUKEY.AsString
          then
          Begin
            FDMemTable1.Edit;
            FDMemTable1.FieldByName('SHIPPINGCOMPANYBOOKINGID').AsString :=
              cds_MakeSokAvropSHIPPINGCOMPANYBOOKINGID.AsString;
            if cds_MakeSokAvropSHIPPERSSHIPDATE.IsNull then
              FDMemTable1.FieldByName('SHIPPERSSHIPDATE').Clear
            else
              FDMemTable1.FieldByName('SHIPPERSSHIPDATE').AsSQLTimeStamp :=
                cds_MakeSokAvropSHIPPERSSHIPDATE.AsSQLTimeStamp;
            FDMemTable1.FieldByName('PreliminaryRequestedPeriod').AsString :=
              cds_MakeSokAvropPreliminaryRequestedPeriod.AsString;
            FDMemTable1.FieldByName('PANIC_NOTE').AsString :=
              cds_MakeSokAvropPANIC_NOTE.AsString;
            FDMemTable1.FieldByName('SupplierReference').AsString :=
              cds_MakeSokAvropSupplierReference.AsString;

            FDMemTable1.Post;
          End;
          FDMemTable1.Next;
        End; // while
      Finally
        FDMemTable1.CancelRange;
      End;
    Finally
      FDMemTable1.Free;
    End;

  Finally
    cds_MakeSokAvrop.BeforePost := cds_MakeSokAvropBeforePost;
  End;

end;

procedure Tdm_SokFormular.cds_MakeSokAvropBeforePost(DataSet: TDataSet);
begin
  SetBookingValuesInIdenticalBookings;
end;

procedure Tdm_SokFormular.cds_BookingAfterPost(DataSet: TDataSet);
begin
  (*
    Try
    cdsClone.SetRange([cds_SokAvropBOOKINGNO.AsInteger],[cds_SokAvropBOOKINGNO.AsInteger]);
    Try
    cdsClone.First ;
    While not cdsClone.Eof do
    Begin
    if cdsClone.FieldByName('UKEY').AsString <> cds_SokAvropUKEY.AsString then
    Begin
    cdsClone.Edit ;
    cdsClone.FieldByName('SHIPPINGCOMPANYBOOKINGID').AsString:= cds_SokAvropSHIPPINGCOMPANYBOOKINGID.AsString ;
    if cds_SokAvropSHIPPERSSHIPDATE.IsNull then
    cdsClone.FieldByName('SHIPPERSSHIPDATE').Clear
    else
    cdsClone.FieldByName('SHIPPERSSHIPDATE').AsSQLTimeStamp:=  cds_SokAvropSHIPPERSSHIPDATE.AsSQLTimeStamp ;
    cdsClone.FieldByName('PreliminaryRequestedPeriod').AsString:=  cds_SokAvropREADY_DAY.AsString ;
    cdsClone.FieldByName('PANIC_NOTE').AsString:=  cds_SokAvropPANIC_NOTE.AsString ;
    cdsClone.FieldByName('SupplierReference').AsString:=  cds_SokAvropSupplierReference.AsString ;


    cdsClone.Post ;
    End ;
    cdsClone.Next ;
    End ;//while
    Finally
    cdsClone.CancelRange ;
    End ;
    Finally
    End ;
  *)
end;

procedure Tdm_SokFormular.cds_MakeSokAvropUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);
begin
  FDUpdateSQL1.ConnectionName := cds_MakeSokAvrop.ConnectionName;
  FDUpdateSQL1.DataSet := cds_MakeSokAvrop;
  FDUpdateSQL1.Apply(ARequest, AAction, AOptions);
end;

end.
