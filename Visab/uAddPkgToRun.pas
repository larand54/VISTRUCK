unit uAddPkgToRun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLabel, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ActnList, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.DatS, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.DApt.Intf, kbmMemTable,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, SqlTimSt, cxSplitter, cxLookAndFeels,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions ;

type
  TfAddPkgToRun = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    ActionList1: TActionList;
    acClose: TAction;
    acAssignSelectedPkgToRun: TAction;
    lcPRODUCER: TcxDBLookupComboBox;
    deRegDate: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lcREGPOINT: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    Panel7: TPanel;
    Panel9: TPanel;
    grdNonAssignedPkgsDBTableView1: TcxGridDBTableView;
    grdNonAssignedPkgsLevel1: TcxGridLevel;
    grdNonAssignedPkgs: TcxGrid;
    grdSortingOrdersDBTableView1: TcxGridDBTableView;
    grdSortingOrdersLevel1: TcxGridLevel;
    grdSortingOrders: TcxGrid;
    ds_Props: TDataSource;
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
    dsProps: TDataSource;
    ds_Verk: TDataSource;
    ds_Producer: TDataSource;
    ds_RegPoint: TDataSource;
    ds_LengthGroup: TDataSource;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
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
    cds_UsedPkgs: TFDQuery;
    ds_UsedPkgs: TDataSource;
    cds_UsedPkgsPRODUKT: TStringField;
    cds_UsedPkgsANTPERLNGD: TStringField;
    cds_UsedPkgsPAKETNR: TIntegerField;
    cds_UsedPkgsLEVKOD: TStringField;
    cds_UsedPkgsAM3: TFloatField;
    cds_UsedPkgsNM3: TFloatField;
    cds_UsedPkgsSTYCK: TIntegerField;
    cds_UsedPkgsMFBM: TFloatField;
    cds_UsedPkgsPackageTypeNo: TIntegerField;
    cds_UsedPkgsProductNo: TIntegerField;
    cds_UsedPkgsAM1: TFloatField;
    cds_UsedPkgsMAXLENGTH: TFloatField;
    cds_UsedPkgsRegistrerad: TSQLTimeStampField;
    grdNonAssignedPkgsDBTableView1PRODUKT: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1ANTPERLNGD: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1PAKETNR: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1LEVKOD: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1AM3: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1NM3: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1STYCK: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1ProductNo: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1AM1: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1MAXLENGTH: TcxGridDBColumn;
    grdNonAssignedPkgsDBTableView1Registrerad: TcxGridDBColumn;
    acRefresh: TAction;
    bUpdate: TcxButton;
    cds_SorOrdRow: TFDQuery;
    ds_SorOrdRow: TDataSource;
    cds_SorOrdRowSortingOrderNo: TIntegerField;
    cds_SorOrdRowSortingOrderRowNo: TIntegerField;
    cds_SorOrdRowProdukt: TStringField;
    cds_SorOrdRowKvalitet: TStringField;
    cds_SorOrdRowTrslag: TStringField;
    cds_SorOrdRowUtfrande: TStringField;
    cds_SorOrdRowIMP: TStringField;
    cds_SorOrdRowAT: TFloatField;
    cds_SorOrdRowAB: TFloatField;
    cds_SorOrdRowNT: TFloatField;
    cds_SorOrdRowNB: TFloatField;
    cds_SorOrdRowSpeciesNo: TIntegerField;
    cds_SorOrdRowSurfacingNo: TIntegerField;
    cds_SorOrdRowProdAM1: TFloatField;
    cds_SorOrdRowProdAM3: TFloatField;
    cds_SorOrdRowProdPCS: TIntegerField;
    cds_SorOrdRowProdPKT: TIntegerField;
    cds_SorOrdRowProdNM3: TFloatField;
    grdSortingOrdersDBTableView1SortingOrderNo: TcxGridDBColumn;
    grdSortingOrdersDBTableView1SortingOrderRowNo: TcxGridDBColumn;
    grdSortingOrdersDBTableView1Produkt: TcxGridDBColumn;
    grdSortingOrdersDBTableView1Kvalitet: TcxGridDBColumn;
    grdSortingOrdersDBTableView1Trslag: TcxGridDBColumn;
    grdSortingOrdersDBTableView1Utfrande: TcxGridDBColumn;
    grdSortingOrdersDBTableView1IMP: TcxGridDBColumn;
    grdSortingOrdersDBTableView1AT: TcxGridDBColumn;
    grdSortingOrdersDBTableView1AB: TcxGridDBColumn;
    grdSortingOrdersDBTableView1NT: TcxGridDBColumn;
    grdSortingOrdersDBTableView1NB: TcxGridDBColumn;
    grdSortingOrdersDBTableView1SpeciesNo: TcxGridDBColumn;
    grdSortingOrdersDBTableView1SurfacingNo: TcxGridDBColumn;
    grdSortingOrdersDBTableView1ProdAM1: TcxGridDBColumn;
    grdSortingOrdersDBTableView1ProdAM3: TcxGridDBColumn;
    grdSortingOrdersDBTableView1ProdPCS: TcxGridDBColumn;
    grdSortingOrdersDBTableView1ProdPKT: TcxGridDBColumn;
    grdSortingOrdersDBTableView1ProdNM3: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxSplitter1: TcxSplitter;
    FD_AssignPkgToRun: TFDQuery;
    FD_PoductToRun: TFDQuery;
    cds_SorOrdRowProductNo: TIntegerField;
    cxButton2: TcxButton;
    acPktUtanKorOrder: TAction;
    grdSortingOrdersDBTableView1ProductNo: TcxGridDBColumn;
    siLangLinked_fAddPkgToRun: TsiLangLinked;
    procedure mtPropsProducerNoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acRefreshExecute(Sender: TObject);
    procedure acAssignSelectedPkgToRunExecute(Sender: TObject);
    procedure acAssignSelectedPkgToRunUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure AddProductToRun ;
    procedure AssignPkgToRun ;
    procedure GetMarkedRows ;
    procedure SaveUserProps (const Form : String) ;
    procedure LoadUserProps (const Form : String) ;
    procedure RefreshData ;
  public
    { Public declarations }
  end;

//var fAddPkgToRun: TfAddPkgToRun;

implementation

uses dm_SortOrder, dmsVidaContact, VidaUser, VidaConst , dmsDataConn,
  udmLanguage;

{$R *.dfm}

procedure TfAddPkgToRun.mtPropsProducerNoChange(Sender: TField);
begin
 mtPropsSupplierCode.AsString:= dmsContact.GetClientCode(mtPropsProducerNo.AsInteger) ;

 cds_RegPoint.Active:= False ;
 cds_RegPoint.ParamByName('ClientNo').AsInteger:= mtPropsProducerNo.AsInteger ;
 cds_RegPoint.Active:= True ;
 cds_RegPoint.Insert ;
 cds_RegPointProductionUnitName.AsString    := 'ALLA' ;
 cds_RegPointRegistrationPointNo.AsInteger  := -1 ;
 cds_RegPoint.Post ;
 cds_RegPoint.First ;
 mtPropsRegPointNo.AsInteger:= cds_RegPointRegistrationPointNo.AsInteger ;
end;

procedure TfAddPkgToRun.LoadUserProps (const Form : String) ;
Var x : Integer ;
Begin
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
  mtProps.Post ;
 End ;
 cds_Props.Active:= False ;
End ;

procedure TfAddPkgToRun.SaveUserProps (const Form : String) ;
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

  For x := 0 to 14 do
   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 cds_Props.Active:= False ;
End ;

procedure TfAddPkgToRun.FormCreate(Sender: TObject);
begin
 LoadUserProps(Self.Name) ;
end;

procedure TfAddPkgToRun.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 SaveUserProps(Self.Name) ;
end;

procedure TfAddPkgToRun.RefreshData ;
Var SortingOrderNo : Integer ;
Begin
 cds_SorOrdRow.DisableControls ;
 cds_UsedPkgs.DisableControls ;
 Try
 cds_UsedPkgs.Active  := False ;
 cds_UsedPkgs.ParamByName('SupplierNo').AsInteger         := mtPropsProducerNo.AsInteger ;
 cds_UsedPkgs.ParamByName('ProductionUnitNo').AsInteger   := mtPropsRegPointNo.AsInteger ;
 cds_UsedPkgs.ParamByName('ProducedSince').AsSQLTimeStamp := DateTimeToSQLTimeStamp(mtPropsRegDate.AsDateTime) ;
 cds_UsedPkgs.Active  := True ;


 SortingOrderNo  := cds_SorOrdRowSortingOrderNo.AsInteger ;

 cds_SorOrdRow.Active := False ;
 cds_SorOrdRow.ParamByName('ProducerNo').AsInteger         := mtPropsProducerNo.AsInteger ;
 cds_SorOrdRow.ParamByName('ProductionUnitNo').AsInteger   := mtPropsRegPointNo.AsInteger ;
 cds_SorOrdRow.Active := True ;

 if cds_SorOrdRow.Locate('SortingOrderNo', SortingOrderNo, []) then ;

 Finally
  cds_UsedPkgs.EnableControls ;
  cds_SorOrdRow.EnableControls ;
 End ;
End ;

procedure TfAddPkgToRun.acRefreshExecute(Sender: TObject);
begin
 RefreshData ;
end;

procedure TfAddPkgToRun.acAssignSelectedPkgToRunExecute(Sender: TObject);
begin
 //Koppla paket mot vald körorder
 GetMarkedRows ;
end;

procedure TfAddPkgToRun.acAssignSelectedPkgToRunUpdate(Sender: TObject);
begin
 acAssignSelectedPkgToRun.Enabled := (grdNonAssignedPkgsDBTableView1.Controller.SelectedRowCount > 0) ;
end;

procedure TfAddPkgToRun.GetMarkedRows ;
Var ColIdx,
    OutputVal,
    i,
    RecIDX      : Integer ;
    RecID       : Variant ;
    Save_Cursor : TCursor ;
    ADATASET    : TDATASET ;
    SortingOrderNo  : Integer ;
begin
// With dmsSortOrder do
 Begin
  SortingOrderNo  := cds_SorOrdRowSortingOrderNo.AsInteger ;
  Save_Cursor     := Screen.Cursor;
  Screen.Cursor   := crSQLWait;    { Show hourglass cursor }
//  mtMarkedCodes.Active:= False ;
//  mtMarkedCodes.Active:= True ;
  grdNonAssignedPkgsDBTableView1.BeginUpdate ;
  grdNonAssignedPkgsDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdNonAssignedPkgsDBTableView1.DataController.DataSource.DataSet ;
   For i := 0 to grdNonAssignedPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdNonAssignedPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

    RecIDx  := grdNonAssignedPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdNonAssignedPkgsDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PAKETNR;LEVKOD',RecID,[]) ;
//    ADataSet.Locate('SupplierShipPlanObjectNo',RecID,[]) ;

//    ColIdx := grdNonAssignedPkgsDBTableView1.DataController.GetItemByFieldName('PAKETNR;LEVKOD').Index;
//    OutputVal := grdNonAssignedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx];

//    ColIdx := grdNonAssignedPkgsDBTableView1.DataController.GetItemByFieldName('ProdInstructNo').Index;
//    if grdNonAssignedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
//    ProdInstruNo:= grdNonAssignedPkgsDBTableView1.DataController.Values[RecIdx, ColIdx]
//    else
//    ProdInstruNo:= -1 ;

    if cds_SorOrdRowProductNo.AsInteger <> cds_UsedPkgsProductNo.AsInteger then
    Begin
     if cds_SorOrdRow.Locate('SortingOrderNo;ProductNo', VarArrayOf([SortingOrderNo, cds_UsedPkgsProductNo.AsInteger]), []) then
     Begin
      AssignPkgToRun ;
     End
     else
     Begin
      if MessageDlg('Produkten finns inte upplagd i körordernr ' + inttostr(SortingOrderNo) + ', vill du lägga till den?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
       AddProductToRun ;
       cds_SorOrdRow.Active := False ;
       cds_SorOrdRow.ParamByName('ProducerNo').AsInteger         := mtPropsProducerNo.AsInteger ;
       cds_SorOrdRow.ParamByName('ProductionUnitNo').AsInteger   := mtPropsRegPointNo.AsInteger ;
       cds_SorOrdRow.Active := True ;
       if cds_SorOrdRow.Locate('SortingOrderNo;ProductNo', VarArrayOf([SortingOrderNo, cds_UsedPkgsProductNo.AsInteger]), []) then
        AssignPkgToRun
         else
          ShowMessage('Kan inte hitta/skapa passande körorderrad.') ;
      End ;
     End ;
    End
     else
      AssignPkgToRun ;
{
    if not mtMarkedCodes.Locate('PkgCodePPNo', OutputVal, []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
//     mtMarkedCodesProdInstruNo.AsInteger      := ProdInstruNo ;
     mtMarkedCodes.Post ;
    End ; }
   End ;//For..

   RefreshData ;

  Finally
   grdNonAssignedPkgsDBTableView1.DataController.EndLocate ;
   grdNonAssignedPkgsDBTableView1.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfAddPkgToRun.AssignPkgToRun ;
Begin
 Try
 FD_AssignPkgToRun.ParamByName('SortingOrderNo').AsInteger    := cds_SorOrdRowSortingOrderNo.AsInteger ;
 FD_AssignPkgToRun.ParamByName('SortingOrderRowNo').AsInteger := cds_SorOrdRowSortingOrderRowNo.AsInteger ;
 FD_AssignPkgToRun.ParamByName('PackageNo').AsInteger         := cds_UsedPkgsPAKETNR.AsInteger ;
 FD_AssignPkgToRun.ParamByName('SupplierCode').AsString       := cds_UsedPkgsLEVKOD.AsString ;
// FD_AssignPkgToRun.ParamByName('OLDLIPNo').AsInteger          :=
 FD_AssignPkgToRun.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
 FD_AssignPkgToRun.ParamByName('PackageTypeNo').AsInteger     := cds_UsedPkgsPackageTypeNo.AsInteger ;
 FD_AssignPkgToRun.ExecSQL ;
 Except
  on E: eDatabaseError do
  Begin
   ShowMessage('Fel i FD_AssignPkgToRun, Error message ' + E.Message) ;
   Raise ;
  End ;
 End ;

End ;


procedure TfAddPkgToRun.AddProductToRun ;
Var SortingOrderRowNo : Integer ;
Begin
 Try
 SortingOrderRowNo  := dmsConnector.NextSecondMaxNo('SortingOrderRow', cds_SorOrdRowSortingOrderNo.AsInteger) ;
 FD_PoductToRun.ParamByName('SortingOrderNo').AsInteger    := cds_SorOrdRowSortingOrderNo.AsInteger ;
 FD_PoductToRun.ParamByName('SortingOrderRowNo').AsInteger := SortingOrderRowNo ;
 FD_PoductToRun.ParamByName('ProductNo').AsInteger         := cds_UsedPkgsProductNo.AsInteger ;
 FD_PoductToRun.ParamByName('CreatedUser').AsInteger       := ThisUser.UserID ;
 FD_PoductToRun.ExecSQL ;
 Except
  on E: eDatabaseError do
  Begin
   ShowMessage('Fel i FD_PoductToRun, Error message ' + E.Message) ;
   Raise ;
  End ;
 End ;

End ;
end.
