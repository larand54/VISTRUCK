unit dm_SortOrderList;

interface

uses
  SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, siComp, siLngLnk;

type
  TdmSotOrderList = class(TDataModule)
    ds_Producer: TDataSource;
    ds_RegPoint: TDataSource;
    cds_producer: TFDQuery;
    cds_producerClientNo: TIntegerField;
    cds_producerClientName: TStringField;
    cds_producerSearchName: TStringField;
    cds_RegPoint: TFDQuery;
    cds_RegPointProductionUnitName: TStringField;
    cds_RegPointRegistrationPointNo: TIntegerField;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    ds_Verk: TDataSource;
    ds_Props: TDataSource;
    cds_Props: TFDQuery;
    cds_PropsProducer: TStringField;
    cds_PropsOwner: TStringField;
    cds_PropsProductionUnit: TStringField;
    cds_RegPointClientNo: TIntegerField;
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
    cds_PropsPIP: TStringField;
    cds_PropsLIP: TStringField;
    cds_City: TFDQuery;
    cds_CityCityNo: TIntegerField;
    cds_CityCityName: TStringField;
    cds_PropsORT: TStringField;
    cds_CityUserID: TSmallintField;
    cds_PropsTypeOfRun: TStringField;
    siLangLinked_dmSotOrderList: TsiLangLinked;
    cds_Props2: TFDQuery;
    cds_Props2UserID: TIntegerField;
    cds_Props2Form: TStringField;
    cds_Props2VerkNo: TIntegerField;
    cds_Props2OwnerNo: TIntegerField;
    cds_Props2PIPNo: TIntegerField;
    cds_Props2LIPNo: TIntegerField;
    cds_Props2InputOption: TIntegerField;
    cds_Props2RegPointNo: TIntegerField;
    cds_Props2RegDate: TSQLTimeStampField;
    cds_Props2CopyPcs: TIntegerField;
    cds_Props2RunNo: TIntegerField;
    cds_Props2ProducerNo: TIntegerField;
    cds_Props2AutoColWidth: TIntegerField;
    cds_Props2SupplierCode: TStringField;
    cds_Props2LengthOption: TIntegerField;
    cds_Props2LengthGroupNo: TIntegerField;
    cds_Props2NewItemRow: TIntegerField;
    cds_Props2SalesRegionNo: TIntegerField;
    cds_Props2MarketRegionNo: TIntegerField;
    cds_Props2OrderTypeNo: TIntegerField;
    cds_Props2Status: TIntegerField;
    cds_Props2FilterOrderDate: TIntegerField;
    cds_Props2StartPeriod: TSQLTimeStampField;
    cds_Props2EndPeriod: TSQLTimeStampField;
    cds_Props2ClientNo: TIntegerField;
    cds_Props2SalesPersonNo: TIntegerField;
    cds_Props2VerkSupplierNo: TIntegerField;
    cds_Props2VerkKundNo: TIntegerField;
    cds_Props2LOObjectType: TIntegerField;
    cds_Props2BarCodeNo: TIntegerField;
    cds_Props2GradeStampNo: TIntegerField;
    cds_Props2VolumeUnitNo: TIntegerField;
    cds_Props2LengthFormatNo: TIntegerField;
    cds_Props2LengthVolUnitNo: TIntegerField;
    cds_Props2GroupByBox: TIntegerField;
    cds_Props2GroupSummary: TIntegerField;
    cds_Props2AgentNo: TIntegerField;
    cds_Props2LoadingLocationNo: TIntegerField;
    cds_Props2ShipperNo: TIntegerField;
    cds_Props2BookingTypeNo: TIntegerField;
    cds_Props2CustomerNo: TIntegerField;
    cds_Props2ShowProduct: TIntegerField;
    cds_Props2Name: TStringField;
    cds_Props2Filter1: TStringField;
    cds_Props2Filter2: TStringField;
    cds_Props2Producent: TStringField;
    cds_Props2Ägare: TStringField;
    cds_Props2ProductionUnit: TStringField;
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
    cds_PropsFilter2: TStringField;
  private
    { Private declarations }
    procedure RefreshAfterChangeProducer ;
  public
    { Public declarations }
    procedure Init_cds_City ;
    procedure SaveUserProps (const Name : String) ;
    procedure LoadUserProps (const Name : String) ;

  end;

var
  dmSotOrderList: TdmSotOrderList;

implementation

uses dmsDataConn, dmsVidaContact, vidauser, vidaconst , udmLanguage;

{$R *.dfm}

procedure TdmSotOrderList.LoadUserProps (const Name : String) ;
Var x           : Integer ;
    RegPointNo  : Integer ;
Begin
 cds_RegPoint.Active  := False ;
 cds_RegPoint.Active  := True ;

 cds_producer.Active  := False ;
 cds_producer.Active  := True ;

 cds_RegPoint.Active  := False ;
 cds_RegPoint.Active  := True ;

 Init_cds_City ;

 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Name').AsString    := Name ;
 cds_Props.Active:= True ;

 cds_Props.Filter   := 'NewItemRow = 1' ;
 cds_Props.Filtered := True ;
 if cds_Props.Eof then
 cds_Props.Filtered := False ;

 if not cds_Props.Eof then
 Begin
  cds_Props.Edit ;
  RegPointNo                            := cds_PropsRegPointNo.AsInteger ;
  cds_PropsAutoColWidth.AsInteger       :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsStatus.AsInteger             := 10 ;
//  cds_PropsProducerNo.OnChange  := nil ;
//  Try

  cds_PropsRegDate.AsDateTime := Now ;
  if cds_PropsProducerNo.IsNull then
  cds_PropsProducerNo.AsInteger := ThisUser.CompanyNo ;
  cds_PropsRegPointNo.AsInteger := RegPointNo ;

  if cds_PropsOwnerNo.IsNull then
   cds_PropsOwnerNo.AsInteger := ThisUser.CompanyNo ;

  cds_Props.Post ;

//  Finally
//   cds_PropsProducerNo.OnChange   := cds_PropsProducerNoChange ;
//  End ;
 End
 else
 Begin
  cds_Props.Insert ;
  cds_PropsName.AsString          := Name ;
  cds_PropsUserID.AsInteger       := ThisUser.UserID ;
  cds_PropsForm.AsString          := 'Standard' ;
  cds_PropsNewItemRow.AsInteger   := 1 ;

  cds_PropsStatus.AsInteger       := 10 ;

  cds_PropsAutoColWidth.AsInteger :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;

  if cds_PropsAutoColWidth.AsInteger = cLego then
  Begin
   cds_PropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
   cds_PropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  cds_PropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ;

  cds_PropsInputOption.AsInteger  :=  0 ;
  cds_PropsRegDate.AsDateTime     :=  Now ;
  cds_PropsCopyPcs.AsInteger      :=  1 ;
  cds_PropsRunNo.AsInteger        :=  -1 ;
  cds_PropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  cds_PropsAutoColWidth.AsInteger :=  1 ;
  cds_PropsSupplierCode.AsString  := dmsContact.GetClientCode(cds_PropsProducerNo.AsInteger) ;
  cds_PropsLengthGroupNo.AsInteger:= 1 ;

  cds_Props.Post ;
 End ;

 RefreshAfterChangeProducer ;

 if cds_Props.ChangeCount > 0 then
 Begin
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;
End ;

procedure TdmSotOrderList.SaveUserProps (const Name : String) ;
Var x : Integer ;
Begin
 if cds_Props.State in [dsEdit, dsInsert] then
 cds_Props.Post ;

 if cds_Props.ChangeCount > 0 then
 Begin
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;
End ;

procedure TdmSotOrderList.RefreshAfterChangeProducer ;
begin
 if (not cds_PropsProducerNo.IsNull) and (cds_PropsProducerNo.AsInteger > 0) then
 Begin
  cds_RegPoint.Active:= False ;
  cds_RegPoint.Active:= True ;

  cds_RegPoint.Insert ;
  cds_RegPointProductionUnitName.AsString    := 'ALLA' ;
  cds_RegPointRegistrationPointNo.AsInteger  := -1 ;
  cds_RegPointClientNo.AsInteger             := -1 ;
  cds_RegPoint.Post ;
  cds_RegPoint.First ;
 End ;
end;

procedure TdmSotOrderList.Init_cds_City ;
Begin
 cds_City.Active  := False ;
 cds_City.Active  := True ;
end ;

end.
