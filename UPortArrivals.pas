unit UPortArrivals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, StdCtrls, DB, Menus, SqlTimSt,
  DateUtils, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxSplitter, cxCalc, ActnList, cxImageComboBox,
  cxGridExportLink,  cxExport, kbmMemTable, cxLookAndFeels, cxCheckBox,
  FMTBcd, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ComCtrls, dxCore, dxSkinsdxBarPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxNavigator, cxDateUtils,
  siComp, siLngLnk, System.Actions, dxSkinOffice2019Colorful, dxDateRanges,
  dxScrollbarAnnotations, System.ImageList ;

type
  TfrmPortArrivals = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbConfirmLoad: TdxBarLargeButton;
    lbPrintLoad: TdxBarLargeButton;
    lbUndoConfirm: TdxBarLargeButton;
    imglistActions: TImageList;
    DataSource1: TDataSource;
    lbPkgInfo: TdxBarLargeButton;
    lbExportToExcel: TdxBarLargeButton;
    bbCustomizeLayout: TdxBarButton;
    pmPrint: TdxBarPopupMenu;
    il_LastStatus: TImageList;
    bbSamlingsspecifikation: TdxBarButton;
    lbLO_To_Invoice: TListBox;
    bbTally_Ver: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    grdPortPkgsDBTableView1: TcxGridDBTableView;
    grdPortPkgsLevel1: TcxGridLevel;
    grdPortPkgs: TcxGrid;
    grdPortPkgsDBTableView1LO: TcxGridDBColumn;
    grdPortPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdPortPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdPortPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdPortPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdPortPkgsDBTableView1PCS: TcxGridDBColumn;
    grdPortPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdPortPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdPortPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdPortPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdPortPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdPortPkgsDBTableView1PSCPERLENGTH: TcxGridDBColumn;
    grdPortPkgsDBTableView1MFBM: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    grdPortLoadsDBTableView1: TcxGridDBTableView;
    grdPortLoadsLevel1: TcxGridLevel;
    grdPortLoads: TcxGrid;
    grdPortLoadsDBTableView1LO: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOADNO: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdPortLoadsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdPortLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdPortLoadsDBTableView1INVPOINTNO: TcxGridDBColumn;
    grdPortLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn;
    grdPortLoadsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdPortLoadsDBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdPortLoadsDBTableView1ORDER_NO: TcxGridDBColumn;
    grdPortLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdPortLoadsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdPortLoadsDBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdPortLoadsDBTableView1FS: TcxGridDBColumn;
    grdPortLoadsDBTableView1INITIALS: TcxGridDBColumn;
    grdPortLoadsDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn;
    grdPortLoadsDBTableView1AVROP_CUSTOMER: TcxGridDBColumn;
    grdPortLoadsDBTableView1OrderType: TcxGridDBColumn;
    grdPortLoadsDBTableView1CountryCode: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOINI: TcxGridDBColumn;
    grdPortLoadsDBTableView1LASTSTLLE: TcxGridDBColumn;
    ActionList1: TActionList;
    acFS: TAction;
    acFS_DK: TAction;
    acPrintSamLast: TAction;
    acPrintSamLastMedPktNr: TAction;
    acPkgInfo: TAction;
    pmPkgs: TdxBarPopupMenu;
    acChangeLoadLayout: TAction;
    acChangePkgLayout: TAction;
    dxBarButton3: TdxBarButton;
    pmLoads: TdxBarPopupMenu;
    acSetLoadToConfirmed: TAction;
    acConfirmedLoad: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    bcConfirmed: TcxComboBox;
    acClose: TAction;
    acExportLoadsToExcel: TAction;
    acRefresh: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    acUndoAR: TAction;
    grdPortPkgsDBTableView1GS: TcxGridDBColumn;
    grdPortPkgsDBTableView1BC: TcxGridDBColumn;
    acShowGroupBox: TAction;
    dxBarButton4: TdxBarButton;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    mtSelectedLoads: TkbmMemTable;
    mtSelectedLoadsLoadNo: TIntegerField;
    mtSelectedLoadsLONo: TIntegerField;
    mtSelectedLoadsLIPNo: TIntegerField;
    grdPortLoadsDBTableView1LipNo: TcxGridDBColumn;
    mtSelectedLoadsCustomerNo: TIntegerField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1: TcxStyle;
    cxStyle_0: TcxStyle;
    cxStyle_4: TcxStyle;
    cxLabel3: TcxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxLabel4: TcxLabel;
    fomdate: TcxDateEdit;
    tomdate: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    grdPortLoadsDBTableView1TYP: TcxGridDBColumn;
    grdPortLoadsDBTableView1LOTYP: TcxGridDBColumn;
    acPrintTallyUSNote: TAction;
    acConfirmOneLoad: TAction;
    dxBarButton7: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    acPrintDirectFS: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    acPrintDirectFS_USA: TAction;
    acSamlingsFS_USA: TAction;
    dxBarButton11: TdxBarButton;
    Timer1: TTimer;
    Timer2: TTimer;
    acGetIntPrices: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    ds_Props: TDataSource;
    cbShowAll: TcxDBCheckBox;
    lcShipper: TcxDBLookupComboBox;
    grdPortLoadsDBTableView1MRKNING: TcxGridDBColumn;
    grdPortPkgsDBTableView1MRKNING: TcxGridDBColumn;
    grdPortLoadsDBTableView1Verk_LoadNo: TcxGridDBColumn;
    ePkgNo: TEdit;
    cxLabel7: TcxLabel;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
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
    cds_PropsShipper: TStringField;
    siLangLinked_frmPortArrivals: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);



    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure fomdate2Change(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure fomdatePropertiesChange(Sender: TObject);
    procedure tomdatePropertiesChange(Sender: TObject);
    procedure acFSExecute(Sender: TObject);
    procedure acFS_DKExecute(Sender: TObject);
    procedure acPrintSamLastExecute(Sender: TObject);
    procedure acPrintSamLastMedPktNrExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acChangePkgLayoutExecute(Sender: TObject);
    procedure acSetLoadToConfirmedExecute(Sender: TObject);
    procedure acConfirmedLoadExecute(Sender: TObject);
    procedure acConfirmedLoadUpdate(Sender: TObject);
    procedure acPrintSamLastUpdate(Sender: TObject);
    procedure acPrintSamLastMedPktNrUpdate(Sender: TObject);
    procedure acFSUpdate(Sender: TObject);
    procedure acFS_DKUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure bcConfirmedPropertiesChange(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportLoadsToExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExportLoadsToExcelUpdate(Sender: TObject);
    procedure acUndoARExecute(Sender: TObject);
    procedure acUndoARUpdate(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure acConfirmOneLoadExecute(Sender: TObject);
    procedure acPrintDirectFSExecute(Sender: TObject);
    procedure acPrintDirectFS_USAExecute(Sender: TObject);
    procedure acSamlingsFS_USAExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure ePkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }
    SomethingChanged : Boolean ;
    fSupplierNo : Integer ;
//    procedure ConfirmManyINTADDLoads(Sender: TObject);
//    procedure ConfirmManySALESLoads(Sender: TObject);
//    procedure ConfirmManyPOLoads(Sender: TObject);
//    Function IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
    procedure RefreshLoads ;
    procedure LoadArrivalLoadQuery (const LONo, LoadNo : Integer) ;
    function  BackgroundColor(iObjectType: integer) : TColor;
//    procedure SetConfirmed_Load_Table(Sender: TObject) ;

    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
    procedure GetMarkedLoads (Sender: TObject) ;
//    procedure ConfirmedINTLoad(Sender: TObject);
//    procedure ConfirmedORDERLoad(Sender: TObject);
    procedure InsertMarkedLoadsToTempTable (Sender: TObject) ;
//    procedure TaBortAnkomstRegistreradeLaster ;
//    function  AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
//    function  AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
    procedure PrintDirectFS(Sender: TObject);
    procedure PrintDirectFS_USA(Sender: TObject);
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var frmPortArrivals: TfrmPortArrivals;

implementation

uses //UnitCRViewReport,
dmc_ArrivingLoads, VidaUtils, Vidauser,
  UnitPkgInfo, dmsVidaContact, dmcVidaSystem, dmsDataConn ,
//  fConfirmIntLoad,
  //fConfirmManyIntLoads,
  uSelectLIP, uAnkomstRegProgress, VidaConst ,
//  fConfirmManyNormalLoad,
  //UnitCRPrintOneReport,
  dmsVidaSystem, //dmc_Filter,
  dmc_UserProps, udmFR, uFastReports, uReportController;

{$R *.dfm}

Procedure TfrmPortArrivals.CreateCo(CompanyNo: Integer);
begin
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPortLoadsDBTableView1.Name, grdPortLoadsDBTableView1) ;
 dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPortPkgsDBTableView1.Name, grdPortPkgsDBTableView1) ;

  grdPortLoadsDBTableView1INVPOINTNO.Visible        := False ;
  grdPortLoadsDBTableView1LipNo.Visible             := False ;
  grdPortLoadsDBTableView1SUPPLIERNO.Visible        := False ;
  grdPortLoadsDBTableView1OrderType.Visible         := False ;
  grdPortLoadsDBTableView1AVROP_CUSTOMERNO.Visible  := False ;
  grdPortLoadsDBTableView1CUSTOMERNO.Visible        := False ;
  grdPortLoadsDBTableView1OBJECTTYPE.Visible        := False ;
  grdPortLoadsDBTableView1ORDER_NO.Visible          := False ;


 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Self.Name ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
  cds_Props.Insert ;


 if ThisUser.CompanyNo = 132 then
 Begin
  lcShipper.Enabled:= False ;
 End
 else
 Begin
  lcShipper.Enabled:= True ;
 End ;


 dmArrivingLoads.cdsPortArrivingLoads.Active:= True ;
 if (ThisUser.UserID = 4) OR (ThisUser.UserID = 8) then
  acSetLoadToConfirmed.Enabled:= True ;
// if cds_PropsNewItemRow.AsInteger = 1 then RefreshLoads ;
end;

procedure TfrmPortArrivals.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmPortArrivals.FormDestroy(Sender: TObject);
begin
 frmPortArrivals := NIL;

  if dmsSystem.DeleteAssigned('TfrmPortArrivals', 'dmArrivingLoads') = True then
  Begin
   dmArrivingLoads.Free ;
   dmArrivingLoads := Nil ;
  End ;
end;

procedure TfrmPortArrivals.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
  Begin
   dmArrivingLoads  := TdmArrivingLoads.Create(nil);
  End ;
 dmsSystem.AssignDMToThisWork('TfrmPortArrivals', 'dmArrivingLoads') ;

  bcConfirmed.ItemIndex:= 0 ;
  SomethingChanged := True ;
  tomdate.Date:= now ;
  fomdate.Date:= now ;
end;

procedure TfrmPortArrivals.RefreshLoads ;
var
  Save_Cursor : TCursor;
  LoadNo      : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 SomethingChanged := True ;
 With dmArrivingLoads do
 Begin
 cdsPortArrivingLoads.DisableControls ;
 dsrcArrivingLoads.DataSet:= Nil ;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
  if cds_PropsOwnerNo.AsInteger > 0 then
  Begin
   LoadNo                       := cdsPortArrivingLoadsLoadNo.AsInteger ;
   cdsPortArrivingLoads.Active      := False ;
   cdsPortArrivingLoads.Close ;
   if SomethingChanged = True then
   LoadArrivalLoadQuery (-1, -1) ;
   cdsPortArrivingLoads.Active      := True ;
//   cdsPortArrivingLoads.LogChanges  := False ;
   cdsPortArrivingLoads.FindKey([LoadNo]) ;
  end ;
 finally
  dsrcArrivingLoads.DataSet:= cdsPortArrivingLoads ;
  cdsPortArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

(*
Function TfrmPortArrivals.IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
begin
 Result := False ;
 With dmArrivingLoads do
 Begin
//  cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex1' ;

  cdsPortArrivingLoads.Filter:= 'LoadNo = '+IntToStr(LoadNo) ;
  cdsPortArrivingLoads.Filtered:= True ;
  cdsPortArrivingLoads.First ;
  Try
  While Not cdsPortArrivingLoads.Eof do
  Begin
   if cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
   Begin
    sq_Check_CDS_Link.Close ;
    sq_Check_CDS_Link.ParamByName('LoadNo').AsInteger:= cdsPortArrivingLoadsLoadNo.AsInteger ;
    sq_Check_CDS_Link.ParamByName('ShippingPlanNo').AsInteger:= cdsPortArrivingLoadsLO.AsInteger ;
    sq_Check_CDS_Link.Open ;
    if sq_Check_CDS_Link.Eof then
     Result:= True
     else
       ShowMessage('Kan inte AR lasten. Problem med LO# '+cdsPortArrivingLoadsLO.AsString+' l?nkning till LO, kolla att LO samt Last ?r OK ') ;
    sq_Check_CDS_Link.Close ;
   End ;
   if cdsPortArrivingLoadsObjectType.AsInteger = 2 then
   Begin
    sq_CheckObject2Link.Close ;
    sq_CheckObject2Link.ParamByName('LoadNo').AsInteger:= cdsPortArrivingLoadsLoadNo.AsInteger ;
    sq_CheckObject2Link.ParamByName('ShippingPlanNo').AsInteger:= cdsPortArrivingLoadsLO.AsInteger ;
    sq_CheckObject2Link.Open ;
    if sq_CheckObject2Link.Eof then
     Result:= True
      else
       ShowMessage('Kan inte AR lasten. Problem med LO# '+cdsPortArrivingLoadsLO.AsString+' l?nkning till Avrop eller LO, kolla att AVROP / LO samt LAST ?r OK ') ;
    sq_CheckObject2Link.Close ;
   End ;
   cdsPortArrivingLoads.Next ;
  End ; //While
  cdsPortArrivingLoads.Filtered:= False ;
  if not cdsPortArrivingLoads.FindKey([LoadNo]) then
   Result:= False ;
  Finally
//   cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex2' ;
  End ;
 End ; //With
End ;
  *)
(*procedure TfrmLoadArrivals.grdLoadHeadCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iObjectTypeColumn: integer;
  iObjectType: integer;
  iObjectTypeColumn2: integer;
  iObjectType2: integer;
begin
{ if ColumnIsGrouped(AColumn, grdLoadHead) then
    Exit;

  iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];

  iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
  iObjectType := ANode.Values[iObjectTypeColumn];

  if ANode.Values[iObjectTypeColumn] <> null then
  Begin
  // Set the color for this row, based on LO status
   if iObjectType2 = 1 then
   iObjectType := 4 ;
   if AColor <> clOlive then
   AColor := BackgroundColor(iObjectType);
  End ; }
end; *)

function TfrmPortArrivals.BackgroundColor(iObjectType: integer) : TColor;
begin
 if iObjectType = 1 then
 Begin
   Result:= $00E6FFFF ;
 End
 else
 if iObjectType = 0 then
 Begin
   Result:= $00FFEEDD ;
 End
 else
 if iObjectType = 4 then
 Begin
   Result:= $0095FFFF ;
 End
  else
    Result := clWindow
end;

procedure TfrmPortArrivals.LoadArrivalLoadQuery (const LONo, LoadNo : Integer) ;
Begin
with dmArrivingLoads do
Begin
 cdsPortArrivingLoads.SQL.Clear ;
 cdsPortArrivingLoads.SQL.Add('SELECT DISTINCT') ;
 cdsPortArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;
// cdsPortArrivingLoads.SQL.Add('RTRIM(CONVERT(varchar(30), LSP.ShippingPlanNo))+') ;
// cdsPortArrivingLoads.SQL.Add('RTRIM(CONVERT(varchar(30), L.LoadNo)) +') ;
// cdsPortArrivingLoads.SQL.Add('RTRIM(CONVERT(varchar(30), isNull(ST_AdrCY.CityName,'+QuotedStr('NA')+'))) AS LIST_ID,') ;

 cdsPortArrivingLoads.SQL.Add('CSH.ShippingPlanNo			AS	LO,');

 cdsPortArrivingLoads.SQL.Add('L.LoadNo				AS	VERK_LOADNO,');

// cdsPortArrivingLoads.SQL.Add('(Select isNull(cl.Confirmed_LoadNo, L.LoadNo) FROM dbo.Confirmed_Load cl ');
// cdsPortArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS LOADNO,') ;

 cdsPortArrivingLoads.SQL.Add(' isNull((Select Top 1 cl.Confirmed_LoadNo FROM dbo.Confirmed_Load cl') ;
 cdsPortArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = LSP.LoadNo') ;
 cdsPortArrivingLoads.SQL.Add('AND cl.NewShippingPlanNo = LSP.ShippingPlanNo), L.LoadNo) AS LOADNO,') ;

 cdsPortArrivingLoads.SQL.Add('L.FS				        AS	FS,');
 cdsPortArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
 cdsPortArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
 cdsPortArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
 cdsPortArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
 cdsPortArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,');
 cdsPortArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
 cdsPortArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
 cdsPortArrivingLoads.SQL.Add('-1				AS	OBJECTTYPE,');
 cdsPortArrivingLoads.SQL.Add('-1		AS	INVPOINTNO,');
 cdsPortArrivingLoads.SQL.Add(QuotedStr('NA')+'		AS	INVPOINTNAME,');
 cdsPortArrivingLoads.SQL.Add('OH.CustomerNo                           AS      CUSTOMERNO,');
 cdsPortArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,');
 cdsPortArrivingLoads.SQL.Add('L.OriginalSupplierNo                    AS      SUPPLIERNO,');
 cdsPortArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
 cdsPortArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
 cdsPortArrivingLoads.SQL.Add('-1 AS OBJECTTYPE,');

 cdsPortArrivingLoads.SQL.Add(QuotedStr('NA')+ ' INITIALS,');

 cdsPortArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
 cdsPortArrivingLoads.SQL.Add('CASE');
 cdsPortArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN '+QuotedStr('SALES'));
 cdsPortArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN '+QuotedStr('PO'));
 cdsPortArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN '+QuotedStr('INTERN'));
 cdsPortArrivingLoads.SQL.Add('End AS TYP,');

 cdsPortArrivingLoads.SQL.Add(QuotedStr('NA')+ ' AS LOTYP,');

 cdsPortArrivingLoads.SQL.Add('US.INITIALS                             AS LOINI,') ;

 cdsPortArrivingLoads.SQL.Add(QuotedStr('NA')+ ' AS LASTST?LLE, -1 AS LipNo,');
 cdsPortArrivingLoads.SQL.Add('OL.Reference AS M?RKNING') ;

 cdsPortArrivingLoads.SQL.Add('FROM  dbo.Booking		Bk');
 cdsPortArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.UnitName			UNBo	ON	UNBo.VolumeUnit_No	= BK.FreightCostVolUnit');
 cdsPortArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Currency			CUBo	ON	CUBo.CurrencyNo		= BK.FreightCostCurrency');
 cdsPortArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Voyage			Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo');
 cdsPortArrivingLoads.SQL.Add('Inner JOIN dbo.Client			SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
 cdsPortArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo');

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = Bk.ShippingPlanNo');

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');


// cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   	ON	CLL.PhyInvPointNameNo = SP.ShipToInvPointNo');
 cdsPortArrivingLoads.SQL.Add('Left Outer Join dbo.Users US ON US.UserID = Bk.CreatedUser');

// cdsPortArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo') ;

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = CSH.ShippingPlanNo');

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Loaddetail LD		ON 	LD.LoadNo = LSP.LoadNo');
 cdsPortArrivingLoads.SQL.Add('						and LD.ShippingPlanNo = LSP.ShippingPlanNo');

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD 	ON CSD.CustShipPlanDetailObjectNo = LD.DefaultCustShipObjectNo');
 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.OrderLine	OL ON OL.OrderNo = CSD.OrderNo AND OL.OrderLineNo = CSD.OrderLineNo');
// cdsPortArrivingLoads.SQL.Add(' AND LSP.LoadingLocationNo = SP.LoadingLocationNo') ;

{ if bcConfirmed.ItemIndex = 2 then
 Begin
  cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
  cdsPortArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
 End ; }

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
// cdsPortArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
// cdsPortArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');


 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.OriginalSupplierNo');

 cdsPortArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= OH.CustomerNo');


 cdsPortArrivingLoads.SQL.Add('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
 cdsPortArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
 cdsPortArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
 cdsPortArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
 cdsPortArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
 cdsPortArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference');


 cdsPortArrivingLoads.SQL.Add('WHERE Bk.ShippingCompanyNo          = ' + cds_PropsOwnerNo.AsString);

// cdsPortArrivingLoads.SQL.Add('AND L.LOADNO NOT IN (SELECT IL.LoadNo FROM dbo.Invoiced_Load IL') ;
// cdsPortArrivingLoads.SQL.Add('WHERE IL.LoadNo = L.LoadNo') ;
// cdsPortArrivingLoads.SQL.Add('AND IL.ShippingPlanNo = LSP.ShippingPlanNo)') ;

 cdsPortArrivingLoads.SQL.Add(' AND L.LOADNO NOT IN (SELECT IL.LoadNo FROM dbo.Invoiced_Load IL') ;
 cdsPortArrivingLoads.SQL.Add('WHERE IL.LoadNo = L.LoadNo') ;
 cdsPortArrivingLoads.SQL.Add('AND IL.ShippingPlanNo = LSP.ShippingPlanNo') ;
 cdsPortArrivingLoads.SQL.Add('AND ( (IL.InternalInvoiceNo in (Select INo.InternalInvoiceNo') ;
 cdsPortArrivingLoads.SQL.Add('FROM dbo.InvoiceNumber INo))') ;

 cdsPortArrivingLoads.SQL.Add('OR (IL.InternalInvoiceNo in (Select INo.InternalInvoiceNo') ;
 cdsPortArrivingLoads.SQL.Add('FROM dbo.InvoiceNumber_PO INo))') ;

 cdsPortArrivingLoads.SQL.Add('OR (IL.InternalInvoiceNo in (Select INo.InternalInvoiceNo') ;
 cdsPortArrivingLoads.SQL.Add('FROM dbo.ProformaInvoiceNumber INo))))') ;



 cdsPortArrivingLoads.SQL.Add('AND (L.CustomerNo <> 741 AND L.CustomerNo <> 25 AND L.CustomerNo <> 76') ;
 cdsPortArrivingLoads.SQL.Add('AND L.CustomerNo <> 172 AND L.CustomerNo <> 212 AND L.CustomerNo <> 232') ;
 cdsPortArrivingLoads.SQL.Add('AND L.CustomerNo <> 578 AND L.CustomerNo <> 2878)') ;


// if thisuser.UserID = 8 then cdsPortArrivingLoads.SQL.SaveToFile('cdsPortArrivingLoads.TXT');
  SomethingChanged := False ;
 End ;
End ;

//make an entry for the load that is confirmed
(*procedure TfrmPortArrivals.SetConfirmed_Load_Table(Sender: TObject) ;
Begin
 if MessageDlg('This Confirmation does only insert a record in the Confirmed_Load table, Continue?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 with dmArrivingLoads do
 Begin
 Try
 cdsConfirmed_Load.Active:= True ;
 cdsPortArrivingLoads.Filter:= 'LOADNO = '+cdsPortArrivingLoadsLOADNO.AsString ;
 cdsPortArrivingLoads.Filtered:= True ;
  While not cdsPortArrivingLoads.Eof do
  Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger:= cdsPortArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger:= cdsPortArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger:= cdsPortArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger:= cdsPortArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
   cdsPortArrivingLoads.Next ;
  End ;
  if cdsConfirmed_Load.ChangeCount > 0 then
   if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
    ShowMessage('Inmatning av post misslyckades, kontakta support med LO och LastNr.')
     else
      Begin
       cdsPortArrivingLoads.Refresh ;
       cdsPortArrivingLoads.Last ;
      End ;

 Finally
  cdsPortArrivingLoads.Filtered:= False ;
  cdsConfirmed_Load.Active:= False ;
 End ;
 End ; //with
 End ;
End ; *)

procedure TfrmPortArrivals.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //ShippingPlanNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdPortLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
  cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex2' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsPortArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
//  Begin
   cdsPortArrivingLoads.active:= False ;
   LoadArrivalLoadQuery (StrToIntDef(Trim(Edit1.Text),0), -1) ;
   cdsPortArrivingLoads.active:= True ;
//   cdsPortArrivingLoads.LogChanges:= False ;
   if not cdsPortArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
   Begin
    ShowMessage(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_4' (* 'No luck' *) )) ;
    SomethingChanged := True ;
   End
   else
    Timer1.Enabled:= True ;
//  End
//  else
//  Timer1.Enabled:= True ;
{  else
  Begin
   ShippingPlanNo := cdsPortArrivingLoadsLO.AsInteger ;
   While (ShippingPlanNo = cdsPortArrivingLoadsLO.AsInteger) and
   (cdsPortArrivingLoads.Eof = False) do
   Begin
    cdsPortArrivingLoads.Next ;
   End ; //while
   if not cdsPortArrivingLoads.Eof then
   cdsPortArrivingLoads.Prior ;
  End ; }

//  Edit1.Text:= '' ;
//  Edit1.SetFocus ;
// Timer1.Enabled:= True ;

 Finally
  cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex1' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ; //with
end;

procedure TfrmPortArrivals.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //LoadNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdPortLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
//  cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex1' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsPortArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
//  begin
   cdsPortArrivingLoads.Active:= False ;
   LoadArrivalLoadQuery (-1, StrToIntDef(Trim(Edit2.Text),0)) ;
   cdsPortArrivingLoads.active:= True ;
//   cdsPortArrivingLoads.LogChanges:= False ;
   if not cdsPortArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
   Begin
    ShowMessage(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_4' (* 'No luck' *) )) ;
    SomethingChanged := True ;
   End
   else
   Timer2.Enabled:= True ;
//  End
//  else
//  Timer2.Enabled:= True ;
{  else
  Begin
   LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
   While (LoadNo = cdsPortArrivingLoadsLoadNo.AsInteger) and
   (cdsPortArrivingLoads.Eof = False) do
   Begin
    cdsPortArrivingLoads.Next ;
   End ; //while
   if not cdsPortArrivingLoads.Eof then
   cdsPortArrivingLoads.Prior ;
  End ; }

//  Edit2.Text:= '' ;
//  Edit2.SetFocus ;
// Timer2.Enabled:= True ;
 Finally
//  cdsPortArrivingLoads.IndexName:= 'cdsPortArrivingLoadsIndex3' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ; //with
end;

procedure TfrmPortArrivals.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;

   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   FormCRViewReport.CreateCo('SAM_LAST.RPT') ;
   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;

procedure TfrmPortArrivals.PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    FormCRViewReport.CreateCo('SAM_LAST_USA.RPT') ;
    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
    Finally
       FreeAndNil(FormCRViewReport)  ;
    End ;
 }
end;

procedure TfrmPortArrivals.PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;

   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT') ;
   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(SamLastNr) ;
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;

procedure TfrmPortArrivals.fomdate2Change(Sender: TObject);
begin
  SomethingChanged := True ;
end;

procedure TfrmPortArrivals.GetMarkedLoads (Sender: TObject) ;
 Var i, RecIDX  : Integer ;
// RecID          : Variant ;
 Save_Cursor    : TCursor;
 Duplicate      : Boolean ;
 samLastnr, y,x : Integer ;
 OutPutVal      : Integer ;
 ColIdx         : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 lbLO_To_Invoice.Items.Clear ;
 with dmArrivingLoads do
 Begin
  grdPortLoadsDBTableView1.BeginUpdate ;
  grdPortLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdPortLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    Duplicate := False ;
    RecIDx:= grdPortLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;
    OutputVal := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
//    lbPPNo.Items.Add(IntToStr(OutPutVal)) ;

    For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
    Begin
     if IntToStr(OutPutVal) = lbLO_To_Invoice.Items[y] then
     Duplicate := True ;
    End ;
    if Duplicate = False then
    Begin
     lbLO_To_Invoice.Items.Add(IntToStr(OutPutVal)) ;
    End ;
   End ;//for y

  if lbLO_To_Invoice.Items.Count < 1 then
   Begin
    ShowMessage(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_6' (* 'M?ste v?lja en last' *) )) ;
    Exit ;
   End ;

    Try
   samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
   sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= samLastnr ;
   sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

   For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
   Begin
    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger := samLastNr ;
    sq_samLast.ParamByName('LoadNo').AsInteger    := StrToInt(lbLO_To_Invoice.Items[x]) ;
    sq_samLast.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   End ;

 Finally
  grdPortLoadsDBTableView1.DataController.EndLocate ;
  grdPortLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmPortArrivals.InsertMarkedLoadsToTempTable (Sender: TObject) ;
 Var i, RecIDX  : Integer ;
// RecID          : Variant ;
 Save_Cursor    : TCursor;
 //samLastnr, y,x : Integer ;
// OutPutVal      : Integer ;
 ColIdx         : Integer ;
 LIPNo, LoadNo,
 LONo,
 CustomerNo     : Integer ;
begin
 Save_Cursor              := Screen.Cursor;
 Screen.Cursor            := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active   := False ;
 mtSelectedLoads.Active   := True ;
 with dmArrivingLoads do
 Begin
  grdPortLoadsDBTableView1.BeginUpdate ;
  grdPortLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdPortLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdPortLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;

    LoadNo      := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('LO').Index;

    LONo        := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('LIPNo').Index;

    if grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    LIPNo       := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('CUSTOMERNO').Index;
    CustomerNo  := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];


//    if not mtSelectedLoads.Locate('LoadNo;LONo', VarArrayOf([LoadNo, LONo]), []) then
    if not mtSelectedLoads.Locate('LoadNo', LoadNo, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsLoadNo.AsInteger    := LoadNo ;
     mtSelectedLoadsLONo.AsInteger      := LONo ;
     mtSelectedLoadsLIPNo.AsInteger     := LIPNo ;
     mtSelectedLoadsCustomerNo.AsInteger:= CustomerNo ;
     mtSelectedLoadsStatus.AsInteger    := 0 ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

 Finally
  grdPortLoadsDBTableView1.DataController.EndLocate ;
  grdPortLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmPortArrivals.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if cds_Props.State in [dsEdit, dsInsert] then
 cds_Props.Post ;
 if cds_Props.ChangeCount > 0 then
 cds_Props.ApplyUpdates(0) ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPortLoadsDBTableView1.Name, grdPortLoadsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPortPkgsDBTableView1.Name, grdPortPkgsDBTableView1) ;
 dmArrivingLoads.cdsPortArrivingLoads.Active  := False ;
 CanClose:= True ;
end;

procedure TfrmPortArrivals.fomdatePropertiesChange(Sender: TObject);
begin
 SomethingChanged:= True ;
end;

procedure TfrmPortArrivals.tomdatePropertiesChange(Sender: TObject);
begin
 SomethingChanged:= True ;
end;

procedure TfrmPortArrivals.acFSExecute(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
    FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
    else
    Begin
     Try
     dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
     FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT') ;
    End ;

    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_DelPkgType.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
    Finally
       FreeAndNil(FormCRViewReport)  ;
    End ;
 }
end;


procedure TfrmPortArrivals.acFS_DKExecute(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
    FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT')
    else
    Begin
     Try
     dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
     FormCRViewReport.CreateCo('TALLY_VER2_NOTE_dk.RPT') ;
    End ;

    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_DelPkgType.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
    Finally
     FreeAndNil(FormCRViewReport)  ;
    End ;
 }
end;


procedure TfrmPortArrivals.acPrintSamLastExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation(Sender, ThisUser.UserID) ;
end;

procedure TfrmPortArrivals.acPrintSamLastMedPktNrExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;
end;

procedure TfrmPortArrivals.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmArrivingLoads.cdsPortArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode := dmArrivingLoads.cdsPortArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;


procedure TfrmPortArrivals.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdPortLoads.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPortLoads.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmPortArrivals.acChangePkgLayoutExecute(Sender: TObject);
begin
  if grdPortPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPortPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmPortArrivals.acSetLoadToConfirmedExecute(Sender: TObject);
begin
// SetConfirmed_Load_Table(Sender) ;
end;

procedure TfrmPortArrivals.acConfirmedLoadExecute(Sender: TObject);
begin
(* With dmArrivingLoads do
 Begin
      if grdPortLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
      Begin
       if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
        ConfirmManyINTADDLoads(Sender)
        else
         if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
         Begin
          if mtSelectedLoadsOrderType.AsInteger = 0 then
           ConfirmManySALESLoads(Sender)
            else
             ConfirmManyPOLoads(Sender) ;
         End
         else
         ShowMessage('Markerade laster m?ste vara av samma LO typ, (LO, add LO eller interna LO) och samma ordertyp (sales, PO eller interna)');
      End
      else
       if cdsPortArrivingLoadsObjectType.AsInteger = 2 then
        ConfirmedORDERLoad(Sender)
         else
          ConfirmedINTLoad(Sender) ;
//     End ;
 End ; //with
 *)
end;

procedure TfrmPortArrivals.acConfirmedLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmedLoad.Enabled:= (bcConfirmed.ItemIndex = 0) and (cdsPortArrivingLoads.Active) and (cdsPortArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmPortArrivals.acPrintSamLastUpdate(Sender: TObject);
begin
 acPrintSamLast.Enabled:= grdPortLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmPortArrivals.acPrintSamLastMedPktNrUpdate(Sender: TObject);
begin
 acPrintSamLastMedPktNr.Enabled:= grdPortLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmPortArrivals.acFSUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS.Enabled:= (cdsPortArrivingLoads.Active) and (cdsPortArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmPortArrivals.acFS_DKUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS_DK.Enabled:= (cdsPortArrivingLoads.Active) and (cdsPortArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmPortArrivals.acPkgInfoUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acPkgInfo.Enabled:= cdsPortArrivingPackages.RecordCount > 0 ;
 End ;
end;

procedure TfrmPortArrivals.bcConfirmedPropertiesChange(Sender: TObject);
begin
 SomethingChanged := True ;
 if bcConfirmed.ItemIndex = 0 then
  Begin
   acConfirmedLoad.Enabled:= True ;
   acUndoAR.Enabled:= False ;
//   MittARDatum.Enabled:= False ;
   fomdate.Enabled:= False ;
   tomdate.Enabled:= False ;
  End
  else
  if bcConfirmed.ItemIndex = 1 then
   Begin
    acConfirmedLoad.Enabled:= False ;
    acUndoAR.Enabled:= True ;
//    MittARDatum.Enabled:= False ;
    fomdate.Enabled:= True ;
    tomdate.Enabled:= True ;
   End
   else
    Begin
     acConfirmedLoad.Enabled:= False ;
     acUndoAR.Enabled:= True ;
//     MittARDatum.Enabled:= True ;
     fomdate.Enabled:= True ;
     tomdate.Enabled:= True ;
    End ;

 acRefreshExecute(Sender) ;
end;

procedure TfrmPortArrivals.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPortArrivals.acExportLoadsToExcelExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName    : String ;
begin
 if MessageDlg(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_7' (* 'Vill du exportera till excel?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
// SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
// SaveDialog2.DefaultExt:= 'xls';
// SaveDialog2.InitialDir:= ExcelDir ;
// if SaveDialog2.Execute then
// Begin
  FileName:= siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_8' (* 'C:\AnkomstLast.XLS' *) ) ; //SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdPortLoads, False, False, True,'xls');
  ShowMessage(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_9' (* 'Tabell exporterad till Excel fil ' *) )+FileName);
  Except
  End ;
// End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 End ;
end;

procedure TfrmPortArrivals.acRefreshExecute(Sender: TObject);
 var Year, Month, Day: Word ;
begin
{ if bcConfirmed.ItemIndex > 1 then
 Begin
  DecodeDate(fomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett FOM datum') ;
   Exit ;
  End ;
  DecodeDate(tomdate.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett TOM datum') ;
   Exit ;
  End ;
 End ;
 }

{ else
 if bcConfirmed.ItemIndex = 2 then
 Begin
  DecodeDate(MittARDatum.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett ditt datum') ;
   Exit ;
  End ;
 End ; }
 RefreshLoads ;
end;

procedure TfrmPortArrivals.acExportLoadsToExcelUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acExportLoadsToExcel.Enabled:= (cdsPortArrivingLoads.Active) and (cdsPortArrivingLoads.RecordCount > 0) ;
 End ;
end;


procedure TfrmPortArrivals.acUndoARExecute(Sender: TObject);
Var LoadNo, LONo : Integer ;
    Save_Cursor  : TCursor;
begin
(* if MessageDlg('Vill du ?ngra ankomstregistreringen p? markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsPortArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if UndoConfirmLoad then
    Begin
     mtSelectedLoads.Edit ;
     mtSelectedLoadsStatus.AsInteger  := 1 ;
     mtSelectedLoads.Post ;
    End ; //if LoadConfirmedOK then
   End ;//if cdsPortArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 TaBortAnkomstRegistreradeLaster ;
 Finally
  cdsPortArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
 *)
end;

procedure TfrmPortArrivals.acUndoARUpdate(Sender: TObject);
begin
// With dmArrivingLoads do
// Begin
//  acUndoAR.Enabled:= (bcConfirmed.ItemIndex > 0) and (cdsPortArrivingLoads.Active) and (cdsPortArrivingLoads.RecordCount > 0) ;
// End ;
end;

(*
procedure TfrmPortArrivals.ConfirmedINTLoad(Sender: TObject);
Var
  LoadNo, LONo        : Integer ;
  formConfirmINTLoad  : TformConfirmINTLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsPortArrivingLoadsLoadNo.AsInteger, cdsPortArrivingLoadsLO.AsInteger, cdsPortArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmINTLoad:= TformConfirmINTLoad.Create(Nil);
      Try
       LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
       LONo   := cdsPortArrivingLoadsLO.AsInteger ;
       formConfirmINTLoad.LO_CUSTOMERNO      := cdsPortArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmINTLoad.LoadNo             := cdsPortArrivingLoadsLOADNO.AsInteger ;
       formConfirmINTLoad.ShowModal ;
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ;
      Finally
       FreeAndNil(formConfirmINTLoad) ;
      End ;
      TaBortAnkomstRegistreradeLaster ;
     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten ?r redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;
 End ; //with
end;

procedure TfrmPortArrivals.ConfirmedORDERLoad(Sender: TObject);
Var
  LoadNo          : Integer ;
  formConfirmLoad : TformConfirmLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsPortArrivingLoadsLoadNo.AsInteger, cdsPortArrivingLoadsLO.AsInteger, cdsPortArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmLoad:= TformConfirmLoad.Create(Nil);
      Try
       LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
       formConfirmLoad.OBJECTTYPE         :=  cdsPortArrivingLoadsOBJECTTYPE.AsInteger ;
       formConfirmLoad.LO_CUSTOMERNO      :=  cdsPortArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmLoad.LO_SUPPLIERNO      :=  cdsPortArrivingLoadsSUPPLIERNO.AsInteger ;
       formConfirmLoad.AVROP_CUSTOMERNO   :=  cdsPortArrivingLoadsAVROP_CUSTOMERNO.AsInteger ;
       formConfirmLoad.LoadNo             := cdsPortArrivingLoadsLOADNO.AsInteger ;
       formConfirmLoad.OrderType          := cdsPortArrivingLoadsOrderType.AsInteger ;
       formConfirmLoad.ShowModal ;
       if formConfirmLoad.dxBarConfirmLoad.Enabled = False then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ;
      Finally
       FreeAndNil(formConfirmLoad) ;
      End ;
      TaBortAnkomstRegistreradeLaster ;
     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten ?r redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;

 End ; //with
end;
  *)
procedure TfrmPortArrivals.acShowGroupBoxExecute(Sender: TObject);
begin
 if grdPortLoadsDBTableView1.OptionsView.GroupByBox then
  grdPortLoadsDBTableView1.OptionsView.GroupByBox:= False
   else
    grdPortLoadsDBTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmPortArrivals.acExpandAllExecute(Sender: TObject);
begin
 grdPortLoadsDBTableView1.ViewData.Expand(True);
end;

procedure TfrmPortArrivals.acCollapseAllExecute(Sender: TObject);
begin
 grdPortLoadsDBTableView1.ViewData.Collapse(True);
end;

(*
procedure TfrmPortArrivals.ConfirmManyINTADDLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  formConfirmManyIntLoads   : TformConfirmManyIntLoads ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress ;
  Save_Cursor               : TCursor ;
  ChangeToIMPProduct        : Boolean ;
  ObjectType                : Integer ;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;
  if (ObjectType = 1) or (ObjectType = 0) then
  Begin
   if MessageDlg('Vill du ?ndra kvalitet till kvalitet + impregnerat p? alla produkter? (i annat fall g?r varorna till lagret som de ?r)',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ChangeToIMPProduct:= True
    else
    ChangeToIMPProduct:= False ;
  End
  else
  ChangeToIMPProduct:= False ;

//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdPortLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsPortArrivingLoads.DisableControls ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;
  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du m?ste v?lja ett lager!') ;
   Exit ;
  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsPortArrivingLoadsLoadNo.AsInteger, cdsPortArrivingLoadsLO.AsInteger, cdsPortArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
      Try
//       LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsPortArrivingLoadsLO.AsInteger ;
       formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsPortArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmManyIntLoads.LoadNo             := cdsPortArrivingLoadsLOADNO.AsInteger ;
       formConfirmManyIntLoads.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
//       TformConfirmanyNormalLoad
//g?ra det h?r n?r alla laster ?r OK, med nadra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       FreeAndNil(formConfirmManyIntLoads) ;
      End ;
     End //if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten ?r redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdPortLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsPortArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;
*)
(*
procedure TfrmPortArrivals.ConfirmManySALESLoads(Sender: TObject);
Var
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;

//  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdPortLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsPortArrivingLoads.DisableControls ;
//  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
//  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
//  fSelectLIP.LoadDefaultLager ;

{  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du m?ste v?lja ett lager!') ;
   Exit ;
  End ; }

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsPortArrivingLoadsLoadNo.AsInteger, cdsPortArrivingLoadsLO.AsInteger, cdsPortArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsPortArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsPortArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsPortArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := -1 ;//LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad
//       TformConfirmanyNormalLoad
//g?ra det h?r n?r alla laster ?r OK, med andra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten ?r redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
//  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
//   FreeAndNil(fSelectLIP) ;
   grdPortLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsPortArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;

procedure TfrmPortArrivals.ConfirmManyPOLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  Save_Cursor := Screen.Cursor;
//  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  InsertMarkedLoadsToTempTable (Sender) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdPortLoadsDBTableView1.DataController.DataSource:= Nil ;
//  cdsPortArrivingLoads.DisableControls ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;

  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du m?ste v?lja ett lager!') ;
   Exit ;
  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsPortArrivingLoadsLoadNo.AsInteger, cdsPortArrivingLoadsLO.AsInteger, cdsPortArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       LoadNo := cdsPortArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsPortArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsPortArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsPortArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad ;
//       TformConfirmanyNormalLoad
//g?ra det h?r n?r alla laster ?r OK, med nadra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsPortArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten ?r redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdPortLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
//   cdsPortArrivingLoads.EnableControls ;
//   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;

 End ; //with
end;

procedure TfrmPortArrivals.TaBortAnkomstRegistreradeLaster ;
Begin
 With dmArrivingLoads do
 Begin
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if mtSelectedLoadsStatus.AsInteger = 1 then
//   While cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) do
   While cdsPortArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) do
    cdsPortArrivingLoads.Delete ;
   mtSelectedLoads.Next ;
  End ;//while
 End ;//with
End ;
  *)
procedure TfrmPortArrivals.grdLoadsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  iObjectType: integer;
  iObjectType2: integer;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('OBJECTTYPE') ;
//  if ARecord.Values[AColumn.Index] > 0 then    AStyle := cxStyle1 ;

  iObjectType:= ARecord.Values[AColumn.Index] ;

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ORDERTYPE') ;
  iObjectType2:= ARecord.Values[AColumn.Index] ;


{  iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];

  iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
  iObjectType := ANode.Values[iObjectTypeColumn]; }

//  if ANode.Values[iObjectTypeColumn] <> null then
  Begin
  // Set the color for this row, based on LO status
   if iObjectType2 = 1 then
   iObjectType := 4 ;

//   if AColor <> clOlive then
//   AColor :=
   Case iObjectType of
    0 : AStyle := cxStyle_0 ;
    1 : AStyle := cxStyle_1 ;
    4 : AStyle := cxStyle_4 ;
   End ;
  End ;
end;

(*
function TfrmPortArrivals.AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
 Var i, RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE     : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdPortLoadsDBTableView1.BeginUpdate ;
  grdPortLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdPortLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdPortLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE', OBJECTTYPE, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger    := OBJECTTYPE ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y
//?r det fler ?n en record ?r valda laster av olika "sort"
 if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger < 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdPortLoadsDBTableView1.DataController.EndLocate ;
  grdPortLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

function TfrmPortArrivals.AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE,
 OrderType      : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdPortLoadsDBTableView1.BeginUpdate ;
  grdPortLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdPortLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdPortLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdPortLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPortLoadsDBTableView1.DataController.GetItemByFieldName('OrderType').Index;
    OrderType   := grdPortLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE;OrderType', VarArrayOf([OBJECTTYPE, OrderType]), []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger  := OBJECTTYPE ;
     mtSelectedLoadsOrderType.AsInteger   := OrderType ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

//?r det fler ?n en record ?r valda laster av olika "sort"
  if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger = 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdPortLoadsDBTableView1.DataController.EndLocate ;
  grdPortLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;
  *)
procedure TfrmPortArrivals.acPrintTallyUSNoteExecute(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;
   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try
   if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
   FormCRViewReport.CreateCo('TALLY_INT_USA.RPT')
   else
   Begin
    Try
    dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
       except
        On E: Exception do
        Begin
         dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
         Raise ;
        End ;
       end;
    FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;
   End ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
    Try
    dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    dmsSystem.sq_DelPkgType.ExecSQL ;
       except
        On E: Exception do
        Begin
         dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
         Raise ;
        End ;
       end;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;

procedure TfrmPortArrivals.acConfirmOneLoadExecute(Sender: TObject);
begin
(* With dmArrivingLoads do
 Begin
  if cdsPortArrivingLoadsObjectType.AsInteger = 2 then
   ConfirmedORDERLoad(Sender)
    else
     ConfirmedINTLoad(Sender) ;
 End ;//with
 *)
end;

procedure TfrmPortArrivals.PrintDirectFS(Sender: TObject);
var
 // FormCRPrintOneReport  : TFormCRPrintOneReport;
  A : array of variant;
  FR: TFastReports;
  ClientNo,
  lang,
  loadNo,
  ReportType: integer;
begin
  dmFR.SaveCursor;
  try
    ClientNo := dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger;
    Lang := dmsContact.getCustomerLanguage(ClientNo);
    loadNo := dmArrivingLoads.cdsPortArrivingLoadsLoadNo.AsInteger;
    if LoadNo < 1 then
      Exit;

    if useFR then
    begin
      FR := TFastReports.createForPrint(false);
      try
        if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
          ReportType := cFoljesedelIntern
        else
          ReportType := cFoljesedel;

        FR.Tally_Pkg_Matched(loadNo, ReportType, lang, '', '', '',0);
      finally
        FR.Free;
      end;
    end
    else
    begin
          {
        FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
             Try
               // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

               SetLength(A, 1);
               A[0] := dmArrivingLoads.cdsPortArrivingLoadsLoadNo.AsInteger;
               if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
                 FormCRPrintOneReport.CreateCo(1, False, False, A,
                   'TALLY_INTERNAL_VER3_NOTE.RPT')
               else
               Begin
                 Try
                   dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
                     dmArrivingLoads.cdsPortArrivingLoadsLoadNo.AsInteger;
                   dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
                 except
                   On E: Exception do
                   Begin
                     dmsSystem.FDoLog(E.Message);
                     // ShowMessage(E.Message);
                     Raise;
                   End;
                 end;
                 FormCRPrintOneReport.CreateCo(1, False, False, A,
                   'TALLY_VER3_NOTE.RPT');
               End;

               Try
                 dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
                   dmArrivingLoads.cdsPortArrivingLoadsLoadNo.AsInteger;
                 dmsSystem.sq_DelPkgType.ExecSQL;
               except
                 On E: Exception do
                 Begin
                   dmsSystem.FDoLog(E.Message);
                   // ShowMessage(E.Message);
                   Raise;
                 End;
               end;
             Finally
               FreeAndNil(FormCRPrintOneReport);
             End;
     }
    end;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmPortArrivals.acPrintDirectFSExecute(Sender: TObject);
Var Save_Cursor  : TCursor;
begin
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsPortArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    PrintDirectFS(Sender) ;
   End ;//if cdsPortArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 Finally
  cdsPortArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmPortArrivals.PrintDirectFS_USA(Sender: TObject);
var //FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
  {
   if dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger < 1 then exit ;
    FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
    Try
   //CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

    SetLength(A, 1);
    A[0]:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
    if dmArrivingLoads.cdsPortArrivingLoadsObjectType.AsInteger <> 2 then
    FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_INT_USA.RPT')
    else
    Begin
     Try
     dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
     FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_US_NOTE.RPT') ;
    End ;

     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsPortArrivingLoadsLOADNO.AsInteger ;
     dmsSystem.sq_DelPkgType.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;
    Finally
     FreeAndNil(FormCRPrintOneReport)  ;
    End ;
 }
end;

procedure TfrmPortArrivals.acPrintDirectFS_USAExecute(Sender: TObject);
Var Save_Cursor   : TCursor;
begin
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsPortArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    PrintDirectFS_USA(Sender) ;
   End ;//if cdsPortArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 Finally
  cdsPortArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
end;

procedure TfrmPortArrivals.acSamlingsFS_USAExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation_USA(Sender, ThisUser.UserID) ;
end;

procedure TfrmPortArrivals.Timer1Timer(Sender: TObject);
begin
// grdPortLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdPortLoadsDBTableView1.DataController.SetFocus ;
// grdPortLoads.SetFocus ;
 Edit1.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfrmPortArrivals.Timer2Timer(Sender: TObject);
begin
// grdPortLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdPortLoadsDBTableView1.DataController.SetFocus ;
// grdPortLoads.SetFocus ;
 Edit2.SetFocus ;
 Timer2.Enabled:= False ;
end;

procedure TfrmPortArrivals.acGetIntPricesExecute(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
//   if cdsPortArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
//   Begin
//    if UndoConfirmLoad then
//    Begin
     GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
//     mtSelectedLoads.Edit ;
//     mtSelectedLoadsStatus.AsInteger  := 1 ;
//     mtSelectedLoads.Post ;
//    End ; //if LoadConfirmedOK then
//   End ;//if cdsPortArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 End ;
end;


procedure TfrmPortArrivals.ePkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var S           : String ;
    LoadNo      : Integer ;
    Save_Cursor : TCursor;
begin
 LoadNo:= -1 ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 if Key <> VK_RETURN then Exit;
 S:= dmArrivingLoads.PkgNoToSuppCode(strToIntDef(ePkgNo.text,0)) ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 if Length(S) > 0 then
  LoadNo:= dmArrivingLoads.SearchLoadNoByPkgNo(strToIntDef(ePkgNo.text,0), cds_PropsOwnerNo.AsInteger, S) ;

 if LoadNo > -1 then
  ShowMessage(siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_10' (* 'Paketnr ' *) ) + ePkgNo.text + siLangLinked_frmPortArrivals.GetTextOrDefault('IDS_11' (* ' finns p? lastnr ' *) ) + IntToStr(LoadNo)) ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmPortArrivals.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString        := Self.Name ;
  cds_PropsUserID.AsInteger     := ThisUser.UserID ;
  cds_PropsNewItemRow.AsInteger := 1 ;
end;

end.
