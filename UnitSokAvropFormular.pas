unit UnitSokAvropFormular;

interface

uses
  Windows, Messages
  , synCommons
  , SysUtils, Variants, Classes, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxLabel, cxTextEdit, cxCalendar, cxCalc, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, siComp,
  siLngLnk, cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, dxPSCore,
  dxPScxCommon, dxBar, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.Dialogs, Vcl.ImgList, Vcl.Controls, dxBarExtItems,
  cxDBLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGrid, cxGridExportLink, cxDBEdit, cxCheckBox, cxImageComboBox, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.ExtCtrls, Data.SQLTimst,
  system.Generics.collections, Forms, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinOffice2019Colorful, dxDateRanges, dxScrollbarAnnotations,
  dxBarBuiltInMenu, System.ImageList, dxSkinBasic, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light
  ;

type
  TfrmSokAvropFormular = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    bcAvropStatus: TdxBarCombo;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbApplyUpdates: TdxBarLargeButton;
    lbExportToExcel: TdxBarLargeButton;
    lbBooking: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    lbOpenTemplate: TdxBarLargeButton;
    lbSaveTemplate: TdxBarLargeButton;
    Label10: TLabel;
    pmClearShipDate: TPopupMenu;
    ClearShipDate: TMenuItem;
    SaveDialog2: TSaveDialog;
    ActionList1: TActionList;
    acRefresh: TAction;
    acSave: TAction;
    acExportToExcel: TAction;
    acCancelChanges: TAction;
    acBooking: TAction;
    acPrint: TAction;
    acExit: TAction;
    pmShortcut: TPopupMenu;
    Bokning1: TMenuItem;
    ngra1: TMenuItem;
    Stng1: TMenuItem;
    ExptillExcel1: TMenuItem;
    Skrivut1: TMenuItem;
    Uppdatera1: TMenuItem;
    Spara1: TMenuItem;
    Label11: TLabel;
    acChangeLayout: TAction;
    acShowGroupByBox: TAction;
    pmAvropGrd: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    grdAvropSok: TcxGrid;
    grdAvropSokDBBandedTableView1: TcxGridDBBandedTableView;
    grdAvropSokDBBandedTableView1AVROP_STATUS: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1LO: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1LOADING_LOCATION: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SUPPLIER: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1ORDER_NO: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1CUST_REFERENCE: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1FROM_WEEK: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1TO_WEEK: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1CUSTOMER: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1AGENT: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1DELIVERY_TERM: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1POSTAL_CODE_DESTINATION: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SHIPTO_REFERENCE: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1PreliminaryRequestedPeriod
      : TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SHIPPER: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SHIPPINGCOMPANYBOOKINGID
      : TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SHIPPERSSHIPDATE: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1TRANSPORT: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1MARKET_REGION: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1UKEY: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1BookingNo: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1PANIC_NOTE: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1VESSEL: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1ETD: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1ETA: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1LEVLO: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1SupplierReference: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1NoOfSuppliers: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1PROD_DESC: TcxGridDBBandedColumn;
    grdAvropSokDBBandedTableView1LENGTH_DESC: TcxGridDBBandedColumn;
    grdAvropSokLevel1: TcxGridLevel;
    acWYSIWYG: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acSummary: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxLookAndFeelController1: TcxLookAndFeelController;
    grdAvropSokDBBandedTableView1REST: TcxGridDBBandedColumn;
    acSelectAllRows: TAction;
    dxBarButton5: TdxBarButton;
    Label12: TLabel;
    acMailaTrpOrder: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    pmMaila: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    acMailaTrpOrderAvropDK: TAction;
    dxBarButton7: TdxBarButton;
    acEmailMeny: TAction;
    acOpenMall: TAction;
    acSaveMall: TAction;
    WYSIWYG1: TMenuItem;
    ppnamallF91: TMenuItem;
    SparamallShiftF31: TMenuItem;
    EmailF81: TMenuItem;
    dxBarStatic1: TdxBarStatic;
    acMailaManyTrpOrders: TAction;
    dxBarButton8: TdxBarButton;
    lcSR: TcxDBLookupComboBox;
    lcLaststalle: TcxDBLookupComboBox;
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
    cds_PropsMarknad: TStringField;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    cds_PropsSaljgrupp: TStringField;
    ds_Props: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    lcBokningstyp: TcxDBLookupComboBox;
    lcShipper: TcxDBLookupComboBox;
    lcKund: TcxDBLookupComboBox;
    lcMarknad: TcxDBLookupComboBox;
    lcAgentNamn: TcxDBLookupComboBox;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    icOrderTypeNo: TcxDBImageComboBox;
    icAvropStatus: TcxDBImageComboBox;
    cbShowProduct: TcxDBCheckBox;
    deFilterOrderDate: TcxDBDateEdit;
    cbFilterInvoiceDate: TcxDBCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    cds_PropsVerk: TStringField;
    deRegDate: TcxDBDateEdit;
    cds_PropsShipper: TStringField;
    cds_PropsBokningstyp: TStringField;
    cds_PropsLaststalle: TStringField;
    cds_PropsAgentNamn: TStringField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acSaveMallAs: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    cbFilter_ETD: TcxDBCheckBox;
    dblTemplateName: TcxDBLabel;
    meAvropsPeriodStart: TcxDBMaskEdit;
    meAvropsPeriodEnd: TcxDBMaskEdit;
    cxLabel1: TcxLabel;
    cds_mall: TFDQuery;
    ds_mall: TDataSource;
    cds_mallUserID: TIntegerField;
    cds_mallForm: TStringField;
    cds_mallName: TStringField;
    cds_mallVerkNo: TIntegerField;
    cds_mallLOObjectType: TIntegerField;
    acAngeSomStandardMall: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acSetAsSTDMall: TAction;
    cxGridPopupMenu2: TcxGridPopupMenu;
    grdAvropSokDBBandedTableView1Land: TcxGridDBBandedColumn;
    siLangLinked_frmSokAvropFormular: TsiLangLinked;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveUpdate(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure acShowGroupByBoxExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acWYSIWYGExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acSummaryExecute(Sender: TObject);
    procedure grdAvropSokDBBandedTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdAvropSokDBBandedTableView1Editing
      (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acSelectAllRowsExecute(Sender: TObject);
    procedure acMailaTrpOrderExecute(Sender: TObject);
    procedure acMailaTrpOrderAvropDKExecute(Sender: TObject);
    procedure acBookingUpdate(Sender: TObject);
    procedure acEmailMenyExecute(Sender: TObject);
    procedure acOpenMallExecute(Sender: TObject);
    procedure acSaveMallExecute(Sender: TObject);
    procedure acMailaManyTrpOrdersExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acSaveMallAsExecute(Sender: TObject);
    procedure cds_PropsInputOptionChange(Sender: TField);
    procedure cds_PropsGroupSummaryChange(Sender: TField);
    procedure acAngeSomStandardMallExecute(Sender: TObject);
    procedure cbShowProductPropertiesChange(Sender: TObject);
    procedure acSetAsSTDMallExecute(Sender: TObject);
  private
    { Private declarations }
    AA: array of variant;
    LO: Integer;
    ExcelDir: String;
    procedure MailTrpOrders(const aLONos: TList<integer>);
    procedure BuildSQL(Sender: TObject);
    procedure GetUserPrefs(Sender: TObject);
    function OpenMall: Boolean;
    procedure OpenStandardMall(Sender: TObject);
    procedure PrintReport(Sender: TObject);
    function DataSaved: Boolean;
    function GetSelectedLONos: Boolean;
  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject; const CompanyNo: Integer);
  end;

var
  frmSokAvropFormular: TfrmSokAvropFormular;

implementation

uses VidaUser, dmSokFormular, dmcVidaOrder, dmsVidaContact,
  UnitBookingFormorg, //UnitCRViewReport,
  dmsDataConn, VidaConst,
  dmsVidaSystem, uSokAvropMall, uSendMapiMail,
  uEntryField, dmBooking, udmLanguage, uReport, uReportController
  , uVIS_UTILS, uFRConstants, uFastReports2, uOAuthMail, udmFR;

{$R *.dfm}

function TfrmSokAvropFormular.DataSaved: Boolean;
begin
  Result := True;
  With dm_SokFormular do
  Begin
    if cds_MakeSokAvrop.State in [dsInsert, dsEdit] then
      Result := False;
    if cds_MakeSokAvrop.ChangeCount > 0 then
      Result := False;
  End;
end;

Procedure TfrmSokAvropFormular.CreateCo(Sender: TObject;
  const CompanyNo: Integer);
var
  Save_Cursor: TCursor;
  // x : Integer ;
begin
  GetUserPrefs(Sender);
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }

  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then // = VIDA_WOOD_COMPANY_NO then
  Begin
    lcVerk.Properties.ReadOnly  := False ;
    lcSR.Properties.ReadOnly    := False ;
  End
  else
    Begin
      lcVerk.Properties.ReadOnly  := True;
      lcSR.Properties.ReadOnly    := True ;
    End;

  Try
    OpenStandardMall(Sender);

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmSokAvropFormular.BuildSQL(Sender: TObject);
const
  CRLF = #13 + #10;
begin
  With dm_SokFormular do
  Begin

    Try
      if cds_PropsInputOption.AsInteger = 1 then
      Begin
        { esStart.Date:= RecodeHour(esStart.Date,0) ;
          esStart.Date:= RecodeMinute(esStart.Date,0) ;
          esStart.Date:= RecodeSecond(esStart.Date,0) ;

          esEnd.Date:= RecodeHour(esEnd.Date,23) ;
          esEnd.Date:= RecodeMinute(esEnd.Date,59) ;
          esEnd.Date:= RecodeSecond(esEnd.Date,59) ;
        }
      End;

      if cds_PropsGroupSummary.AsInteger = 1 then
      Begin
        { esETDStart.Date:= RecodeHour(esETDStart.Date,0) ;
          esETDStart.Date:= RecodeMinute(esETDStart.Date,0) ;
          esETDStart.Date:= RecodeSecond(esETDStart.Date,0) ;

          esETDEnd.Date:= RecodeHour(esETDEnd.Date,23) ;
          esETDEnd.Date:= RecodeMinute(esETDEnd.Date,59) ;
          esETDEnd.Date:= RecodeSecond(esETDEnd.Date,59) ; }
      End;
    Except
      on E: EConvertError do
        ShowMessage(E.ClassName + CRLF + E.Message);
    End;

    if cds_Props.State = dsBrowse then
      cds_Props.Edit;

    if Length(lcSR.Text) = 0 then
      cds_PropsSalesRegionNo.Clear;

    if Length(lcLaststalle.Text) = 0 then
      cds_PropsLoadingLocationNo.Clear;

    if Length(lcVerk.Text) = 0 then
      cds_PropsVerkNo.Clear;

    if Length(lcBokningstyp.Text) = 0 then
      cds_PropsBookingTypeNo.Clear;

    if Length(lcShipper.Text) = 0 then
      cds_PropsShipperNo.Clear;

    if Length(lcKund.Text) = 0 then
      cds_PropsClientNo.Clear;

    if Length(lcMarknad.Text) = 0 then
      cds_PropsMarketRegionNo.Clear;

    if Length(lcAgentNamn.Text) = 0 then
      cds_PropsAgentNo.Clear;

    if cds_Props.State in [dsEdit, dsInsert] then
      cds_Props.Post;

    cds_MakeSokAvrop.Close;
    cds_MakeSokAvrop.SQL.Clear;

    cds_MakeSokAvrop.SQL.Add('Select DISTINCT ');
    cds_MakeSokAvrop.SQL.Add
      ('  RTRIM(CONVERT(varchar(20),isnull(CSH.ShippingPlanNo,' + ''''')))+');
    cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(20),isnull(Supp.ClientName,'
      + ''''')))+');
    cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(20),isnull(Bk.BookingNo,' +
      ''''')))+');
    cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(20),isnull(ST.Reference,' +
      ''''')))+');
    cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(20),isnull(LL.CityName,' +
      ''''')))+');
    cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(20),isnull(OH.OrderNoText,'
      + ''''')))+');

    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      // cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(100),isnull(OL.OrderLineDescription,'+''''')))+') ;
      // cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(100),isnull(CSD.LengthDescription,'+''''')))+') ;
      cds_MakeSokAvrop.SQL.Add('RTRIM(CONVERT(varchar(6),isnull(OL.ProductNo,' +
        ''''')))+');
      cds_MakeSokAvrop.SQL.Add
        ('RTRIM(CONVERT(varchar(6),isnull(CSD.ProductLengthNo,' + ''''')))+');
      cds_MakeSokAvrop.SQL.Add
        ('RTRIM(CONVERT(varchar(10),isnull(CSD.CustShipPlanDetailObjectNo,' +
        ''''')))+');
    End;

    cds_MakeSokAvrop.SQL.Add
      ('RTRIM(CONVERT(varchar(20),isnull(ST_AdrCY.CityName,' +
      '''''))) AS UKEY, ');

    cds_MakeSokAvrop.SQL.Add('CASE');
    cds_MakeSokAvrop.SQL.Add('WHEN CSH.SHIPPINGPLANSTATUS = 0 THEN ' +
      '''CANCEL''' + '');
    cds_MakeSokAvrop.SQL.Add('WHEN CSH.SHIPPINGPLANSTATUS = 1 THEN ' +
      '''PROGRESS''' + '');
    cds_MakeSokAvrop.SQL.Add('WHEN CSH.SHIPPINGPLANSTATUS = 2 THEN ' +
      '''COMPLETE''' + '');
    cds_MakeSokAvrop.SQL.Add('END AS AVROP_STATUS,');

    cds_MakeSokAvrop.SQL.Add('	CSH.ShippingPlanNo        	AS LO, ');
    cds_MakeSokAvrop.SQL.Add('CSH.ShippingPlanNo,');

    cds_MakeSokAvrop.SQL.Add('CASE');
    cds_MakeSokAvrop.SQL.Add
      ('WHEN SP.ShippingPlanNo is null THEN LLCSH.CityName');
    cds_MakeSokAvrop.SQL.Add('ELSE');
    cds_MakeSokAvrop.SQL.Add
      ('LL.CityName	END             AS LOADING_LOCATION, ');

    cds_MakeSokAvrop.SQL.Add('	Supp.SearchName			        AS SUPPLIER, ');
    cds_MakeSokAvrop.SQL.Add('	OH.OrderNoText			        AS ORDER_NO, ');
    cds_MakeSokAvrop.SQL.Add
      ('	CSH.Reference			          AS CUST_REFERENCE, ');
    cds_MakeSokAvrop.SQL.Add('	CSH.ETDYearWeek			        AS FROM_WEEK, ');
    cds_MakeSokAvrop.SQL.Add('	CSH.ETDWeekEnd			        AS TO_WEEK, ');

    cds_MakeSokAvrop.SQL.Add('	C.SearchName            	  AS CUSTOMER, ');
    cds_MakeSokAvrop.SQL.Add('	AG.SearchName			          AS AGENT, ');
    cds_MakeSokAvrop.SQL.Add
      ('	DT.DeliveryTerm			        AS DELIVERY_TERM, ');
    cds_MakeSokAvrop.SQL.Add('	isnull(RTRIM(ST_ADR.PostalCode' + ')+' +
      ''' / ''   ,' + ''''')  +');
    cds_MakeSokAvrop.SQL.Add
      ('	RTRIM(CONVERT(varchar(20),isnull(ST_AdrCY.CityName,' +
      '''''))) AS POSTAL_CODE_DESTINATION, ');

    cds_MakeSokAvrop.SQL.Add('ST_AdrCtry.CountryName AS Land,');

    cds_MakeSokAvrop.SQL.Add
      ('	ST.Reference			          AS SHIPTO_REFERENCE, ');

    cds_MakeSokAvrop.SQL.Add('	BK.PreliminaryRequestedPeriod, ');
    cds_MakeSokAvrop.SQL.Add('	SC.SearchName			          AS SHIPPER, ');
    cds_MakeSokAvrop.SQL.Add
      ('	Bk.ShippingCompanyBookingID	AS SHIPPINGCOMPANYBOOKINGID, ');
    cds_MakeSokAvrop.SQL.Add
      ('	Bk.ShippersShipDate		      AS SHIPPERSSHIPDATE, ');

    cds_MakeSokAvrop.SQL.Add('	Bt.BookingType			        AS TRANSPORT, ');
    cds_MakeSokAvrop.SQL.Add
      ('	MR.MarketRegionName		      AS MARKET_REGION, ');
    cds_MakeSokAvrop.SQL.Add('	Bk.BookingNo    		        AS BookingNo, ');

    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add('	OL.OrderLineDescription		AS PROD_DESC, ');
      cds_MakeSokAvrop.SQL.Add
        ('	CSD.LengthDescription           AS LENGTH_DESC, ');
    End
    else
    Begin
      cds_MakeSokAvrop.SQL.Add
        (QuotedStr
        ('----------------------------------------------------------------------------------------------------')
        + '		AS PROD_DESC, ');
      cds_MakeSokAvrop.SQL.Add
        (QuotedStr
        ('----------------------------------------------------------------------------------------------------')
        + '		AS LENGTH_DESC, ');
    End;

    cds_MakeSokAvrop.SQL.Add('Bk.Panic_Note AS PANIC_NOTE, ');
    cds_MakeSokAvrop.SQL.Add('CR.CarrierName AS VESSEL, ');
    cds_MakeSokAvrop.SQL.Add('VG.ETD, ');
    cds_MakeSokAvrop.SQL.Add('VG.ETA, ');
    // cds_MakeSokAvrop.SQL.Add('ROUND(CAST((   SUM(CSD.m3Net)    ) As decimal(18,3)),3)  	 AS AM3,') ;

    // ======================================== ORDER VOLYM ============================================
    cds_MakeSokAvrop.SQL.Add('CASE');
    cds_MakeSokAvrop.SQL.Add
      ('WHEN SP.ShippingPlanNo is null THEN ROUND(CAST((   SUM(CSD.m3Net)    ) As decimal(18,3)),3)');
    cds_MakeSokAvrop.SQL.Add('ELSE');
    cds_MakeSokAvrop.SQL.Add
      ('ROUND(CAST((   SUM(SP.ActualM3Net)    ) As decimal(18,3)),3)');
    cds_MakeSokAvrop.SQL.Add('END AS AM3,');
    // ======================================== LEVERERAD VOLYM ============================================
    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add('CASE');
      cds_MakeSokAvrop.SQL.Add('WHEN SP.ShippingPlanNo is null THEN');
      cds_MakeSokAvrop.SQL.Add('(Select AM3 From  DelperCSDLO LD');
      cds_MakeSokAvrop.SQL.Add
        ('WHERE LD.DefaultCustShipObjectNo = CSD.CustShipPlanDetailObjectNo');
      cds_MakeSokAvrop.SQL.Add('AND LD.CustomerNo = CSH.CustomerNo)');
      cds_MakeSokAvrop.SQL.Add('ELSE');
      cds_MakeSokAvrop.SQL.Add('(Select AM3 From  dbo.DelperSSPCDS LD');
      cds_MakeSokAvrop.SQL.Add
        ('WHERE LD.DefaultCustShipObjectNo = SP.CustShipPlanDetailObjectNo');
      // cds_MakeSokAvrop.SQL.Add('WHERE LD.defsspno = SP.SupplierShipPlanObjectNo') ;
      cds_MakeSokAvrop.SQL.Add('AND LD.SupplierNo = Supp.ClientNo)');
      cds_MakeSokAvrop.SQL.Add('END AS LEVLO,');
    End
    else
    Begin
      cds_MakeSokAvrop.SQL.Add('CASE');
      cds_MakeSokAvrop.SQL.Add('WHEN SP.ShippingPlanNo is null THEN');
      cds_MakeSokAvrop.SQL.Add(' (Select AM3 From dbo.DelperCSHLO LD');
      cds_MakeSokAvrop.SQL.Add(' WHERE LD.ShippingPlanNo = CSH.ShippingPlanNo');
      cds_MakeSokAvrop.SQL.Add(' AND LD.CustomerNo = CSH.CustomerNo)');
      cds_MakeSokAvrop.SQL.Add(' ELSE');
      cds_MakeSokAvrop.SQL.Add(' (Select AM3 From dbo.DelperSSPLO_II LD');
      cds_MakeSokAvrop.SQL.Add(' WHERE LD.ShippingPlanNo = SP.ShippingPlanNo');
      cds_MakeSokAvrop.SQL.Add
        (' AND LD.SupplierNo = Supp.ClientNo AND LD.LoadingLocationNo = SP.LoadingLocationNo)');
      cds_MakeSokAvrop.SQL.Add('END AS LEVLO,');
    End;

    // ======================================== CALC RESTVOLYM ============================================
    // ======================================== ORDER VOLYM ============================================
    cds_MakeSokAvrop.SQL.Add('CASE');
    cds_MakeSokAvrop.SQL.Add
      ('WHEN SP.ShippingPlanNo is null THEN ROUND(CAST((   SUM(CSD.m3Net)    ) As decimal(18,3)),3)');
    cds_MakeSokAvrop.SQL.Add('ELSE');
    cds_MakeSokAvrop.SQL.Add
      ('ROUND(CAST((   SUM(SP.ActualM3Net)    ) As decimal(18,3)),3)');
    cds_MakeSokAvrop.SQL.Add('END -');
    // ======================================== - LEVERERAD VOLYM ============================================
    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add('CASE');
      cds_MakeSokAvrop.SQL.Add('WHEN SP.ShippingPlanNo is null THEN');
      cds_MakeSokAvrop.SQL.Add('(Select isnull(AM3,0) From DelperCSDLO LD');
      cds_MakeSokAvrop.SQL.Add
        ('WHERE LD.DefaultCustShipObjectNo = CSD.CustShipPlanDetailObjectNo');
      cds_MakeSokAvrop.SQL.Add('AND LD.CustomerNo = CSH.CustomerNo)');
      cds_MakeSokAvrop.SQL.Add('ELSE');
      cds_MakeSokAvrop.SQL.Add
        ('(Select isnull(AM3,0) From  dbo.DelperSSPCDS LD');
      cds_MakeSokAvrop.SQL.Add
        ('WHERE LD.DefaultCustShipObjectNo = SP.CustShipPlanDetailObjectNo');
      cds_MakeSokAvrop.SQL.Add('AND LD.SupplierNo = Supp.ClientNo)');
      cds_MakeSokAvrop.SQL.Add('END AS REST,');
    End
    else
    Begin
      cds_MakeSokAvrop.SQL.Add('CASE');
      cds_MakeSokAvrop.SQL.Add('WHEN SP.ShippingPlanNo is null THEN');
      cds_MakeSokAvrop.SQL.Add
        (' (Select isnull(AM3,0) From dbo.DelperCSHLO LD');
      cds_MakeSokAvrop.SQL.Add(' WHERE LD.ShippingPlanNo = CSH.ShippingPlanNo');
      cds_MakeSokAvrop.SQL.Add(' AND LD.CustomerNo = CSH.CustomerNo)');
      cds_MakeSokAvrop.SQL.Add(' ELSE');
      cds_MakeSokAvrop.SQL.Add
        (' (Select isnull(AM3,0) From dbo.DelperSSPLO_II LD');
      cds_MakeSokAvrop.SQL.Add(' WHERE LD.ShippingPlanNo = SP.ShippingPlanNo');
      cds_MakeSokAvrop.SQL.Add
        (' AND LD.SupplierNo = Supp.ClientNo AND LD.LoadingLocationNo = SP.LoadingLocationNo)');
      cds_MakeSokAvrop.SQL.Add('END AS REST,');
    End;

    cds_MakeSokAvrop.SQL.Add('Bk.SupplierReference ,');

    // cds_MakeSokAvrop.SQL.Add('(Select Count(ShippingPlanNo) from dbo.SupplierShippingPlan SPP') ;
    // cds_MakeSokAvrop.SQL.Add('WHERE  SPP.ShippingPlanNo = CSH.ShippingPlanNo ) AS NoOfSuppliers') ;

    cds_MakeSokAvrop.SQL.Add
      ('(Select  Count(distinct SPP.LoadingLocationNo) from dbo.SupplierShippingPlan SPP');
    cds_MakeSokAvrop.SQL.Add('WHERE  SPP.ShippingPlanNo = CSH.ShippingPlanNo');
    cds_MakeSokAvrop.SQL.Add('AND (SPP.ShippingPlanStatus <> 7');
    cds_MakeSokAvrop.SQL.Add(' AND SPP.ShippingPlanStatus <> 8)');
    cds_MakeSokAvrop.SQL.Add
      (') AS NoOfSuppliers, CSH.CustomerNo, OH.OrderType, Bk.VoyageNo');

    cds_MakeSokAvrop.SQL.Add('FROM	dbo.CustomerShippingPlanHeader CSH ');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.Client 			C	ON 	C.ClientNo		= CSH.CustomerNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN dbo.MarketRegion	MR	ON	MR.MarketRegionNo	= C.MarketRegionNo ');

    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN dbo.PhysicalInventoryPoint PIP');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.CITY		LLCSH	ON	LLCSH.CityNo 		= PIP.PhyInvPointNameNo');
    cds_MakeSokAvrop.SQL.Add
      ('	on PIP.PhysicalInventoryPointNo = CSH.LoadingLocationNo');

    if cds_PropsInputOption.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add
        ('	inner JOIN dbo.InvoiceLO		IL	ON	IL.ShippingPlanNo	= CSH.ShippingPlanNo');
      cds_MakeSokAvrop.SQL.Add
        ('	inner JOIN dbo.InvoiceHeader       IH	ON	IH.InternalInvoiceNo	= IL.InternalInvoiceNo');
      cds_MakeSokAvrop.SQL.Add
        ('	inner JOIN dbo.InvoiceNumber	INV	ON	INV.InternalInvoiceNo	= IL.InternalInvoiceNo');
    End;

    cds_MakeSokAvrop.SQL.Add
      ('	Left outer JOIN dbo.CustomerShippingPlanDetails CSD 	');

    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add
        ('	INNER JOIN dbo.OrderLine OL ON OL.OrderNo = CSD.OrderNo ');
      cds_MakeSokAvrop.SQL.Add('	AND OL.OrderLineNo = CSD.OrderLineNo ');
    End;

    cds_MakeSokAvrop.SQL.Add
      ('	ON 	CSD.ShippingPlanNo 	= CSH.ShippingPlanNo  ');

    cds_MakeSokAvrop.SQL.Add('	INNER JOIN dbo.Orders 			OH ');
    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN dbo.Client 			AG	ON 	AG.ClientNo		= OH.AgentNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN dbo.DeliveryTerm	DT	ON	DT.DeliveryTerm_No		= OH.DeliveryTermsNo ');
    cds_MakeSokAvrop.SQL.Add
      ('							ON 	OH.OrderNo			= CSH.OrderNo ');

    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST ');

    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo ');
    cds_MakeSokAvrop.SQL.Add
      ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo ');
    // LARS MAR 18 Varf?r var nedan rad inte med i sql, den var bortkommenterad.s
    cds_MakeSokAvrop.SQL.Add
      ('							AND	ST.Reference		= CSD.Reference ');

    cds_MakeSokAvrop.SQL.Add('    	LEFT OUTER JOIN dbo.Booking		Bk ');

    // cds_MakeSokAvrop.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo ') ;

    cds_MakeSokAvrop.SQL.Add
      ('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo ');
    cds_MakeSokAvrop.SQL.Add
      ('							ON  	CSD.ShippingPlanNo 	= Bk.ShippingPlanNo ');

    cds_MakeSokAvrop.SQL.Add
      ('	LEFT OUTER JOIN dbo.SupplierShippingPlan          SP ');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.CITY		LL	ON	LL.CityNo 		= SP.LoadingLocationNo ');
    cds_MakeSokAvrop.SQL.Add
      ('	INNER JOIN dbo.Client 		Supp	ON 	Supp.ClientNo		= SP.SupplierNo ');

    // Sept 13 Koppling mot SSP ?ndrad

    cds_MakeSokAvrop.SQL.Add
      ('     ON 	SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo');

    if cds_PropsOrderTypeNo.IsNull then
    Begin
      cds_MakeSokAvrop.SQL.Add('WHERE ((SP.ShippingPlanStatus <> 7');
      cds_MakeSokAvrop.SQL.Add(' AND SP.ShippingPlanStatus <> 8)');
      cds_MakeSokAvrop.SQL.Add('OR SP.ShippingPlanStatus is null)');
    End
    else
    Begin
      cds_MakeSokAvrop.SQL.Add('WHERE OH.OrderType = ' +
        cds_PropsOrderTypeNo.AsString);
      cds_MakeSokAvrop.SQL.Add('AND ((SP.ShippingPlanStatus <> 7');
      cds_MakeSokAvrop.SQL.Add(' AND SP.ShippingPlanStatus <> 8)');
      cds_MakeSokAvrop.SQL.Add('OR SP.ShippingPlanStatus is null)');
    End;

    Case cds_PropsCopyPcs.AsInteger of
      // 0 :  cds_MakeSokAvrop.SQL.Add('CSH.ShippingPlanStatus <> 9 ') ;
      1:
        cds_MakeSokAvrop.SQL.Add(' AND CSH.ShippingPlanStatus = 0 ');
      2:
        cds_MakeSokAvrop.SQL.Add(' AND CSH.ShippingPlanStatus = 1 ');
      3:
        cds_MakeSokAvrop.SQL.Add(' AND CSH.ShippingPlanStatus = 2 ');
    End; // case

    cds_MakeSokAvrop.SQL.Add('AND sp.ObjectType in (0,1,2)');

    if cds_PropsSalesRegionNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND OH.SalesRegionNo = ' +
        cds_PropsSalesRegionNo.AsString);

    if cds_PropsVerkNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND SP.SupplierNo = ' +
        cds_PropsVerkNo.AsString);

    if cds_PropsLoadingLocationNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND SP.LoadingLocationNo = ' +
        cds_PropsLoadingLocationNo.AsString);

    if cds_PropsShipperNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND Bk.ShippingCompanyNo = ' +
        cds_PropsShipperNo.AsString);

    if cds_PropsBookingTypeNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND Bk.BookingTypeNo = ' +
        cds_PropsBookingTypeNo.AsString);

    if cds_PropsMarketRegionNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND C.MarketRegionNo = ' +
        cds_PropsMarketRegionNo.AsString);

    if cds_PropsClientNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND CSH.CustomerNo = ' +
        cds_PropsClientNo.AsString);

    if cds_PropsAgentNo.AsInteger > 0 then
      cds_MakeSokAvrop.SQL.Add(' AND OH.AgentNo = ' +
        cds_PropsAgentNo.AsString);

    if cds_PropsInputOption.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add(' AND IH.InvoiceDate >= :StartInvoiceDate');
      cds_MakeSokAvrop.SQL.Add(' AND IH.InvoiceDate <= :EndInvoiceDate');
    End;

    if cds_PropsGroupSummary.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add(' AND Vg.ETD >= :StartETD');
      cds_MakeSokAvrop.SQL.Add(' AND Vg.ETD <= :EndETD');
    End;

    Try

      if cds_PropsBarCodeNo.AsInteger > 0 then
        cds_MakeSokAvrop.SQL.Add(' AND CSH.ETDYearWeek >= ' +
          cds_PropsBarCodeNo.AsString);
    Except
    End;

    Try
      if cds_PropsGradeStampNo.AsInteger > 0 then
        cds_MakeSokAvrop.SQL.Add(' AND CSH.ETDWeekEnd <= ' +
          cds_PropsGradeStampNo.AsString);
    Except
    End;

    if cds_PropsInputOption.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.ParamByName('StartInvoiceDate').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(deStartPeriod.Date);
      cds_MakeSokAvrop.ParamByName('EndInvoiceDate').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(deEndPeriod.Date);
    End;

    if cds_PropsGroupSummary.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.ParamByName('StartETD').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(deFilterOrderDate.Date);
      cds_MakeSokAvrop.ParamByName('EndETD').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(deRegDate.Date);
    End;

    cds_MakeSokAvrop.SQL.Add
      ('GROUP BY CSH.SHIPPINGPLANSTATUS, CSH.ShippingPlanNo, LL.CityName, Supp.SearchName,');
    cds_MakeSokAvrop.SQL.Add
      ('OH.OrderNoText, CSH.Reference, CSH.ETDYearWeek, CSH.ETDWeekEnd, C.SearchName, AG.SearchName,');
    cds_MakeSokAvrop.SQL.Add
      ('DT.DeliveryTerm,  ST_ADR.PostalCode, ST_AdrCY.CityName, ST_AdrCtry.CountryName, ST.Reference, BK.PreliminaryRequestedPeriod,');
    cds_MakeSokAvrop.SQL.Add
      ('SC.SearchName, Bk.ShippingCompanyBookingID, Bk.ShippersShipDate, Bt.BookingType, MR.MarketRegionName,');
    cds_MakeSokAvrop.SQL.Add
      ('Bk.BookingNo, Bk.Panic_Note, CR.CarrierName, Vg.ETD, VG.ETA, Supp.ClientName, Bk.SupplierReference,');
    cds_MakeSokAvrop.SQL.Add
      ('CSH.CustomerNo, SP.ShippingPlanNo, Supp.ClientNo, SP.LoadingLocationNo, OH.OrderType, LLCSH.CityName,');
    cds_MakeSokAvrop.SQL.Add('Bk.VoyageNo');

    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      cds_MakeSokAvrop.SQL.Add
        (', CSD.CustShipPlanDetailObjectNo, SP.CustShipPlanDetailObjectNo, OL.ProductNo, CSD.ProductLengthNo');
      cds_MakeSokAvrop.SQL.Add
        (',OL.OrderLineDescription , CSD.LengthDescription');
    End;

     if ThisUser.UserID = 258 then  cds_MakeSokAvrop.SQL.SaveToFile('cds_MakeSokAvrop.txt');
    // Try
    // cds_MakeSokAvrop.ExecSQL ;
    { except
      On E: Exception do
      Begin
      dmsSystem.FDoLog(E.Message) ;
      //   ShowMessage(E.Message);
      Raise ;
      End ;
      end;
    }

  End;
end;

procedure TfrmSokAvropFormular.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
End;

procedure TfrmSokAvropFormular.FormDestroy(Sender: TObject);
begin
  frmSokAvropFormular := Nil;
  FreeAndNil(dm_SokFormular);
end;

procedure TfrmSokAvropFormular.GetUserPrefs(Sender: TObject);
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
end;

procedure TfrmSokAvropFormular.FormCreate(Sender: TObject);
begin
  dm_SokFormular := Tdm_SokFormular.Create(Nil);
  LO := 0;
end;

Function TfrmSokAvropFormular.OpenMall: Boolean;
Var
  fSokAvropMall: TfSokAvropMall;
begin
  Result := False;
  With dm_SokFormular do
  Begin
    cds_mall.Active := False;
    cds_mall.ParamByName('UserID').AsInteger := ThisUser.UserID;
    cds_mall.ParamByName('Name').AsString := 'SokAvropFormular';
    cds_mall.ParamByName('LOObjectType').AsInteger := 0;
    cds_mall.Active := True;
    fSokAvropMall := TfSokAvropMall.Create(nil);
    Try
      fSokAvropMall.ds_mall.DataSet := cds_mall;
      if (fSokAvropMall.ShowModal = mrOK) and (cds_mall.RecordCount > 0) AND
        (cds_mallName.AsString > '') then
      Begin
        cds_Props.Active := False;
        cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
        cds_Props.ParamByName('Name').AsString := cds_mallName.AsString;
        cds_Props.ParamByName('Form').AsString := cds_mallForm.AsString;
        // cds_mallName.AsString ;
        cds_Props.ParamByName('LOObjectType').AsInteger := 0;
        cds_Props.Active := True;

        if cds_Props.RecordCount > 0 then
        Begin
          Result := True;
          Application.ProcessMessages;
          // dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_mallName.AsString + '/' + cds_mallForm.AsString, grdAvropSokDBBandedTableView1) ;
          dmsSystem.LoadGridLayout_Specialv2(ThisUser.UserID, Self.Name,
            cds_PropsName.AsString + '/' + cds_PropsForm.AsString,
            grdAvropSokDBBandedTableView1);
        End;

        if cds_PropsRegPointNo.AsInteger = 1 then
        Begin
          grdAvropSokDBBandedTableView1PROD_DESC.Visible := True;
          grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := True;
        End
        else
        Begin
          grdAvropSokDBBandedTableView1PROD_DESC.Visible := False;
          grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := False;
        End;

        // if cds_Props.State in [dsEdit, dsInsert] then
        // cds_Props.Post ;

      End; // If ShowModal..
    Finally
      FreeAndNil(fSokAvropMall);
      // cds_Props.Active:= False ;
    End;
  End; // With dm_SokFormular do
end;

procedure TfrmSokAvropFormular.PrintReport(Sender: TObject);
Var
 // FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
{
    cbShowProduct.SetFocus;
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
  //    SetLength(A, 1);
  //    A[0] := ThisUser.UserID;

      if cds_PropsRegPointNo.AsInteger = 1 then
        FormCRViewReport.CreateCo('SokAvrop_PROD.RPT')
      else
        FormCRViewReport.CreateCo('SokAvrop.RPT');

        FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID) ;

      if FormCRViewReport.ReportFound then
      Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
}
end;

procedure TfrmSokAvropFormular.acRefreshExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    LO := dm_SokFormular.cds_MakeSokAvropLO.AsInteger;
    acSaveExecute(Sender);
    if cds_PropsRegPointNo.AsInteger = 1 then
    Begin
      grdAvropSokDBBandedTableView1PROD_DESC.Visible := True;
      grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := True;
    End
    else
    Begin
      grdAvropSokDBBandedTableView1PROD_DESC.Visible := False;
      grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := False;
    End;

    if (cds_PropsCopyPcs.AsInteger > -1) and (not cds_PropsCopyPcs.IsNull) then
    Begin
      With dm_SokFormular do
      Begin
        Try
          cds_MakeSokAvrop.DisableControls;
          cds_MakeSokAvrop.Active := False;
          BuildSQL(Sender);
          // cds_MakeSokAvrop.UpdateOptions.UpdateTableName  := 'Booking' ;
          cds_MakeSokAvrop.Active := True;
          cds_MakeSokAvrop.IndexName := 'cds_MakeSokAvropIndex2';
          if cds_MakeSokAvrop.FindKey([LO]) then;
        Finally
          cds_MakeSokAvrop.IndexName := 'cds_MakeSokAvropIndex1';
          cds_MakeSokAvrop.EnableControls;
        End;
      End; // with
    End // if (cds_PropsCopyPcs.AsInteger > -1) and (not cds_PropsCopyPcs.IsNull) then
    else
      ShowMessage('At least select call off status.');

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmSokAvropFormular.acSaveExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    With dm_SokFormular do
    Begin
      if cds_MakeSokAvrop.State in [dsInsert, dsEdit] then
        cds_MakeSokAvrop.Post;
      if cds_MakeSokAvrop.ChangeCount > 0 then
      Begin
        cds_MakeSokAvrop.ApplyUpdates(0);
        // cds_MakeSokAvrop.CancelUpdates ;
        cds_MakeSokAvrop.CommitUpdates;
      End;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmSokAvropFormular.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    SaveDialog1.Filter := 'Excel files (*.xlsx)|*.xlsx';
    SaveDialog1.DefaultExt := 'xlsx';
    SaveDialog1.InitialDir := ExcelDir;
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
      //ExportGridToExcel(FileName, grdAvropSok, False, False, True, 'xls');
      ExportGridToXLSX(FileName, grdAvropSok, true,true,true,'xlsx');
      ShowMessage('Table exportered to Excel file ' + FileName);
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmSokAvropFormular.acCancelChangesExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    With dm_SokFormular do
    Begin
      if cds_MakeSokAvrop.State in [dsInsert, dsEdit] then
        cds_MakeSokAvrop.Cancel;
      if cds_MakeSokAvrop.ChangeCount > 0 then
        cds_MakeSokAvrop.CancelUpdates;
    End; // with
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmSokAvropFormular.acBookingExecute(Sender: TObject);
var
  FormBookingForm: TFormBookingFormorg;
begin
  acSaveExecute(Sender);

  if (not Assigned(dm_Booking)) then
    dm_Booking := Tdm_Booking.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmSokAvropFormular', 'dm_Booking');

  FormBookingForm := TFormBookingFormorg.Create(Nil);
  try
    FormBookingForm.CreateCo(grdAvropSokDBBandedTableView1.DataController.
      DataSource.DataSet.FieldByName('LO').AsInteger);
    if FormBookingForm.ShowModal = mrOK then
      acRefreshExecute(Sender);
  finally
    FreeAndNil(FormBookingForm);
  end;

  if dmsSystem.DeleteAssigned('TfrmSokAvropFormular', 'dm_Booking') = True then
  Begin
    dm_Booking.Free;
    dm_Booking := Nil;
  End;

end;

procedure TfrmSokAvropFormular.acPrintExecute(Sender: TObject);
begin
  PrintReport(Sender);
end;

procedure TfrmSokAvropFormular.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmSokAvropFormular.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DataSaved = False then
  Begin
    if MessageDlg('Changes are not saved, do you want to continue closing anyway?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    Begin
      With dm_SokFormular do
      Begin
        cds_MakeSokAvrop.Active := False;
      End;
      CanClose := True;
    End
    else
      CanClose := False;
  End
  else
    CanClose := True;

  // if CanClose then    dmsContact.sp_Agent.Active := False ;
end;

procedure TfrmSokAvropFormular.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

procedure TfrmSokAvropFormular.acChangeLayoutExecute(Sender: TObject);
begin
  if grdAvropSok.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdAvropSok.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmSokAvropFormular.acShowGroupByBoxExecute(Sender: TObject);
begin
  grdAvropSokDBBandedTableView1.OptionsView.GroupByBox :=
    not grdAvropSokDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfrmSokAvropFormular.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfrmSokAvropFormular.acWYSIWYGExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Rapport');

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmSokAvropFormular.acExpandAllExecute(Sender: TObject);
begin
  grdAvropSokDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfrmSokAvropFormular.acCollapseAllExecute(Sender: TObject);
begin
  grdAvropSokDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfrmSokAvropFormular.acSummaryExecute(Sender: TObject);
begin
  grdAvropSokDBBandedTableView1.OptionsView.Footer :=
    not grdAvropSokDBBandedTableView1.OptionsView.Footer;
end;

procedure TfrmSokAvropFormular.
  grdAvropSokDBBandedTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  NoOfSuppliers: Integer;
begin
  { AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('NoOfSuppliers') ;
    //  if ARecord.Values[AColumn.Index] > 0 then    AStyle := cxStyle1 ;
    iObjectType:= ARecord.Values[AColumn.Index] ;
    if iObjectType > 1 then
    AStyle:= cxStyle1 ; }

  {
    if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfSuppliers').Index] <> null then
    NoOfSuppliers:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfSuppliers').Index] ;
    if NoOfSuppliers > 1 then
    AStyle:= cxStyle1 ;
  }

  Try
    if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
      ('NoOfSuppliers').Index] <> null then
    Begin
      AColumn := (Sender as TcxGridDBBandedTableView)
        .GetColumnByFieldName('NoOfSuppliers');
      NoOfSuppliers := ARecord.Values[AColumn.Index];
    End
    else
      NoOfSuppliers := 0;

    if NoOfSuppliers > 1 then
      AStyle := cxStyle1;
  Except
  End;
End;

procedure TfrmSokAvropFormular.grdAvropSokDBBandedTableView1Editing
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  With dm_SokFormular do
  Begin
    if cds_MakeSokAvropBookingNo.AsInteger > 0 then
      AAllow := True
    else
      AAllow := False;
  End;
end;

procedure TfrmSokAvropFormular.acSelectAllRowsExecute(Sender: TObject);
begin
  grdAvropSokDBBandedTableView1.Controller.SelectAllRecords;
end;

procedure TfrmSokAvropFormular.OpenStandardMall(Sender: TObject);
begin
  dmsContact.cds_SR.Active := False ;
  dmsContact.cds_SR.ParamByName('SalesRegionNo').AsInteger  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  dmsContact.cds_SR.Active := True ;

  dmsContact.cdsCities.Active := False;
  dmsContact.cdsCities.ParamByName('@SalesRegionNo').AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  dmsContact.cdsCities.Active := True;
  With dm_SokFormular do
  Begin
    cds_mall.Active := False;
    cds_mall.ParamByName('UserID').AsInteger := ThisUser.UserID;
    cds_mall.ParamByName('Name').AsString := 'SokAvropFormular';
    cds_mall.ParamByName('LOObjectType').AsInteger := 1;
    cds_mall.Active := True;

    if (cds_mall.RecordCount > 0) AND (cds_mallName.AsString > '') then
    Begin
      cds_Props.Active := False;
      cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
      cds_Props.ParamByName('Name').AsString := cds_mallName.AsString;
      cds_Props.ParamByName('Form').AsString := cds_mallForm.AsString;
      // cds_mallName.AsString ;
      cds_Props.ParamByName('LOObjectType').AsInteger := 1;
      cds_Props.Active := True;
      if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
      Begin
        cds_Props.Edit;
        Application.ProcessMessages;
        // dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString, grdAvropSokDBBandedTableView1) ;
        dmsSystem.LoadGridLayout_Specialv2(ThisUser.UserID, Self.Name,
          cds_PropsName.AsString + '/' + cds_PropsForm.AsString,
          grdAvropSokDBBandedTableView1);
        if cds_PropsRegPointNo.AsInteger = 1 then
        Begin
          grdAvropSokDBBandedTableView1PROD_DESC.Visible := True;
          grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := True;
        End
        else
        Begin
          grdAvropSokDBBandedTableView1PROD_DESC.Visible := False;
          grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := False;
        End;

        if cds_Props.State in [dsEdit, dsInsert] then
          cds_Props.Post;

      End; // if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
    End // if (fSokAvropMall.ShowModal = mrOK) and (cds_mall.RecordCount > 0) AND (cds_mallName.AsString > '') then
    else
    Begin
      ShowMessage
        ('You have no template set as standard or no templates at all, open and set a template as standard or create a new template') ;
      if not cds_Props.Active then
        cds_Props.Active := True ;
      cds_Props.Insert ;
      cds_PropsVerkNo.AsInteger         :=  ThisUser.CompanyNo ;
      cds_PropsSalesRegionNo.AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
      cds_PropsForm.AsString            :=  'STD' ;
      cds_PropsName.AsString            :=  'SokAvropFormular'  ;
      cds_PropsRegPointNo.AsInteger     := 0 ;
      cds_PropsInputOption.AsInteger    := 0 ;
      cds_PropsGroupSummary.AsInteger   := 0 ;
    End;
  End; // With dm_SokFormular do
end;

procedure TfrmSokAvropFormular.acMailaTrpOrderExecute(Sender: TObject);
var
  LONos: TList<integer>;
begin
  if (not dm_SokFormular.cds_MakeSokAvrop.Active) or (dm_SokFormular.cds_MakeSokAvrop.RecordCount < 1) then
    exit;
  LONos := TList<integer>.create;
  try
    LONos.add(dm_SokFormular.cds_MakeSokAvropLO.AsInteger);
    MailTrpOrders(LONos);
  finally
    LONos.Free;
  end;
end;

procedure TfrmSokAvropFormular.MailTrpOrders(const aLONos: TList<integer>);
var
  MailToAddress: string;
  ReportType: Integer;
  FR2: TFastReports2;
  sr: integer;
  lang: integer;
begin
  SaveCursor;
  try
  with dm_SokFormular do
  begin
    MailToAddress := dmsContact.GetEmailAddressForSpeditorByLO
    // Byter cursor !! B?r fixas!
      (cds_MakeSokAvropLO.AsInteger);
    if Length(MailToAddress) = 0 then
    begin
      MailToAddress := 'ange@adress.nu';
      ShowMessage('Email address missing, enter the address direct in the mail(outlook).');
    end;
    if Length(MailToAddress) <= 0 then
      MailToAddress := 'ange@adress.nu';

    if cds_MakeSokAvropORDERTYPE.AsInteger = 0 then
      ReportType := cfTrpOrder_Note
    else
      ReportType := cfTrpOrder_Note_Purchase;

    sr := dmsContact.GetSalesRegionNo(ThisUser.UserID);
    FR2 := TFastReports2.createForMail(dmFR, nil, ExcelDir, ThisUser.UserEmail, MailToAddress, ThisUser.LanguageID, sr, ThisUser.UserID);
    try
      FR2.mailTrpOrderByType(ReportType, aLONos);
    finally
      FR2.Free;
    end;
  end;
  finally
    RestoreCursor;
  end;
end;

procedure TfrmSokAvropFormular.acMailaTrpOrderAvropDKExecute(Sender: TObject);
const
  LF = #10;
var
 // FormCRExportOneReport: TFormCRExportOneReport;
  A: array of variant;
  Attach: array of RawUTF8;
  mailMsg, mailSubject: string;
  MailToList: string;
  mailFrom: string;
  mailStatus: string;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
  ExportFile: string;
  Save_Cursor: TCursor;

begin
  Save_Cursor := Screen.Cursor;
  with dm_SokFormular do
  begin
    MailToList := dmsContact.GetEmailAddressForSpeditorByLO(cds_MakeSokAvropLO.AsInteger);
    if Length(MailToList) = 0 then
    begin
      MailToList := 'ange@adress.nu';
      ShowMessage('Email address missing, enter the address direct in the mail(outlook).');
    end;
    if Length(MailToList) > 0 then
    begin
      // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
      if cds_MakeSokAvropORDERTYPE.AsInteger = 0 then
        ReportType := cTrpOrderAvrop // TRP_AVROPSORDER_NOTE_STATUS.fr3 (69)
      else
      begin
        ShowMessage('N/A');
      end;
      RoleType := 1;
      ClientNo := cds_MakeSokAvropCustomerNo.AsInteger;
      ExportFile := ExcelDir + 'LONo ' + cds_MakeSokAvropLO.AsString + '.pdf';
      DeleteFile(ExportFile);
      Params := TCMParams.Create();
      Params.Add('@Language', ThisUser.LanguageID);
      Params.Add('@SHIPPINGPLANNO', cds_MakeSokAvropLO.AsInteger);
      DocTyp := ReportType;
      RC := TCMReportController.Create;
      try
        RC.setExportFile(ExportFile);
        RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frFile);
      finally
        FreeAndNil(Params);
        FreeAndNil(RC);
      end;
      if not FileExists(ExportFile) then
      begin
        Screen.Cursor := Save_Cursor;
        Exit;
      end;
      SetLength(Attach, 1);
      Attach[0] := ExcelDir + 'LONo ' + cds_MakeSokAvropLO.AsString + '.pdf';
      mailSubject := 'Transportorder. LOnr: ' + cds_MakeSokAvropLO.AsString;
      mailMsg := 'Transportorder bifogad. ' + LF + '' + 'Transportorder attached. '
              + LF + '' + LF + '' + LF + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID);
      mailFrom := ThisUser.UserEmail;
      mailStatus := TOAuthMail.OASendMail(dmsConnector.FDConnection1.Params, mailSubject, mailMsg, mailFrom, mailToList,'',Attach, 0, ThisUser.UserID);
      if  (mailStatus = '') or (pos('"isError":true',mailStatus) > 0 )then
        showMessage('Mail could not be sent!')
      else
        ;
    end
    else
      ShowMessage('Email address missing.');
  end; // With dm_SokFormular do
end;

procedure TfrmSokAvropFormular.acBookingUpdate(Sender: TObject);
begin
  acBooking.Enabled :=
    (grdAvropSokDBBandedTableView1.DataController.DataSource.DataSet.Active) and
    (grdAvropSokDBBandedTableView1.DataController.DataSource.DataSet.RecordCount
    > 0) and (grdAvropSokDBBandedTableView1.DataController.DataSource.DataSet.
    FieldByName('LO').AsInteger > 0);
end;

procedure TfrmSokAvropFormular.acEmailMenyExecute(Sender: TObject);
begin
  pmMaila.Popup(300, 200);
end;

procedure TfrmSokAvropFormular.acOpenMallExecute(Sender: TObject);
begin
  if OpenMall then
    acRefreshExecute(Sender);
end;

procedure TfrmSokAvropFormular.acSaveMallExecute(Sender: TObject);
// Var x                 : Integer ;
// fSokAvropMall     : TfSokAvropMall;
begin
  With dm_SokFormular do
  Begin
    // cds_Props.Active:= False ;
    // cds_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
    // cds_Props.ParamByName('Name').AsString     := 'SokAvropFormular' ;
    // cds_Props.Active:= True ;
    // fSokAvropMall:= TfSokAvropMall.Create(nil) ;
    // Try
    // if (fSokAvropMall.ShowModal = mrOK) and
    if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
    Begin
      if MessageDlg('Do you want to save the current setup as a template ' +
        cds_PropsForm.AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then
      Begin

        dmsSystem.StoreGridLayout_Specialv2(ThisUser.UserID, Self.Name,
          cds_PropsName.AsString + '/' + cds_PropsForm.AsString,
          grdAvropSokDBBandedTableView1);

        if cds_Props.State in [dsBrowse] then
          cds_Props.Edit;

        cds_Props.Post;
        if cds_Props.ChangeCount > 0 then
        Begin
          cds_Props.ApplyUpdates(0);
          cds_Props.CommitUpdates;
        End;
      End; // if MessageDlg('Vill du spara aktuella inst?llningar som mall ' + cds_PropsName.AsString + '?',

    End; // if fSokAvropMall.ShowModal = mrOK then
    // Finally
    // FreeAndNil(fSokAvropMall) ;
    // End ;
  End; // With...
end;

procedure TfrmSokAvropFormular.acMailaManyTrpOrdersExecute(Sender: TObject);
var
  LONos: TList<integer>;
  i: integer;
begin
  if GetSelectedLONos then
  begin
    if high(AA) < 0 then
      exit;
    LONos := TList<integer>.create;
    for i := 0 to High(AA) do
    begin
      LONos.Add(AA[i]);
    end;
    try
      MailTrpOrders(LONos);
    finally
      LONos.Free;
    end;
  end
  else
    ShowMessage('Must be same freight company on all rows.');
end;

function TfrmSokAvropFormular.GetSelectedLONos: Boolean;
Var
  x, I, RecIDX, ColIdx: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  SHIPPER, OldSHIPPER: String;
begin
  SaveAndSetCursor(crSQLWait);
  Result := true;
  setLength(AA,0);
  x := 1;
  // with dmcOrder, dmArrivingLoads do
  Begin
    // V?lj alla lastrader
    grdAvropSokDBBandedTableView1.BeginUpdate;
    grdAvropSokDBBandedTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdAvropSokDBBandedTableView1.DataController.
        DataSource.DataSet;
      For I := 0 to grdAvropSokDBBandedTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdAvropSokDBBandedTableView1.Controller.SelectedRecords[I]
          .RecordIndex;
        ColIdx := grdAvropSokDBBandedTableView1.DataController.
          GetItemByFieldName('SHIPPER').Index;
        SHIPPER := grdAvropSokDBBandedTableView1.DataController.Values
          [RecIDX, ColIdx];
        if I = 0 then
          OldSHIPPER := SHIPPER;

        if SHIPPER <> OldSHIPPER then
          Result := False;

        RecIDX := grdAvropSokDBBandedTableView1.Controller.SelectedRecords[I]
          .RecordIndex;
        RecID := grdAvropSokDBBandedTableView1.DataController.
          GetRecordId(RecIDX);
        ADATASET.Locate('UKEY', RecID, []);

        SetLength(AA, x);
        AA[x - 1] := ADATASET.FieldByName('LO').AsInteger;

        x := succ(x);
      End; // For I...

    Finally
      grdAvropSokDBBandedTableView1.DataController.EndLocate;
      grdAvropSokDBBandedTableView1.EndUpdate;
      RestoreCursor;
    End;
  End; // with
End;

procedure TfrmSokAvropFormular.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger         := ThisUser.UserID  ;
  cds_PropsName.AsString            := 'SokAvropFormular' ;
  cds_PropsLOObjectType.AsInteger   := 0  ;
  cds_PropsCopyPcs.AsInteger        := 2  ;
  cds_PropsOrderTypeNo.AsInteger    := 0  ;
  cds_PropsSalesRegionNo.AsInteger  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo)  ;

  cds_PropsRegPointNo.AsInteger     := 0 ;
  cds_PropsInputOption.AsInteger    := 0 ;
  cds_PropsGroupSummary.AsInteger   := 0 ;
end;

procedure TfrmSokAvropFormular.acSaveMallAsExecute(Sender: TObject);
Var
  fEntryField: TfEntryField;
  Props: Array of variant;
  I: Integer;

  Procedure CopyOldProps;
  Var
    I: Integer;
  Begin
    SetLength(Props, cds_Props.FieldCount);
    for I := 0 to cds_Props.FieldCount - 1 do
    Begin
      Props[I] := cds_Props.Fields[I].Value;
    End;
  End;

begin
  With dm_SokFormular do
  Begin
    fEntryField := TfEntryField.Create(nil);
    Try
      fEntryField.Caption := 'Spara mall';
      fEntryField.Label1.Caption := 'Mall namn:';
      fEntryField.eNoofpkgs.Properties.EditMask := '';
      if fEntryField.ShowModal = mrOK then
      // if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
      Begin
        if MessageDlg('Do you want to save the current setup in template ' +
          fEntryField.eNoofpkgs.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
        then
        Begin
          if (cds_Props.Active) and (cds_Props.RecordCount > 0) then
          Begin
            CopyOldProps;
            cds_Props.Insert;
            For I := 0 to cds_Props.FieldCount - 1 do
              cds_Props.Fields[I].Value := Props[I];
            cds_PropsForm.AsString := fEntryField.eNoofpkgs.Text;
            cds_PropsVerkNo.AsInteger :=  ThisUser.CompanyNo ;
          End
          else
          Begin
            if not cds_Props.Active then
              cds_Props.Active := True;
            cds_Props.Insert;
            cds_PropsForm.AsString            := fEntryField.eNoofpkgs.Text;
            cds_PropsVerkNo.AsInteger         :=  ThisUser.CompanyNo ;
            cds_PropsSalesRegionNo.AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
          End;

          dmsSystem.StoreGridLayout_Specialv2(ThisUser.UserID, Self.Name,
            cds_PropsName.AsString + '/' + cds_PropsForm.AsString,
            grdAvropSokDBBandedTableView1);

          cds_Props.Post;
          if cds_Props.ChangeCount > 0 then
          Begin
            cds_Props.ApplyUpdates(0);
            cds_Props.CommitUpdates;
          End;
        End; // if MessageDlg('Vill du spara aktuella inst?llningar som mall ' + cds_PropsName.AsString + '?',
      End; // if fEntryField.ShowModal = mrOK then
    Finally
      FreeAndNil(fEntryField);
    End;
  End; // With...
end;

procedure TfrmSokAvropFormular.cds_PropsInputOptionChange(Sender: TField);
begin
  if cds_PropsInputOption.AsInteger = 1 then
  Begin
    deStartPeriod.Enabled := True;
    deEndPeriod.Enabled := True;
  End
  else
  Begin
    deStartPeriod.Enabled := False;
    deEndPeriod.Enabled := False;
  End;
end;

procedure TfrmSokAvropFormular.cds_PropsGroupSummaryChange(Sender: TField);
begin
  if cds_PropsGroupSummary.AsInteger = 1 then
  Begin
    deFilterOrderDate.Enabled := True;
    deRegDate.Enabled := True;
  End
  else
  Begin
    deFilterOrderDate.Enabled := False;
    deRegDate.Enabled := False;
  End
end;

procedure TfrmSokAvropFormular.acAngeSomStandardMallExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSokAvropFormular.cbShowProductPropertiesChange(Sender: TObject);
begin
  if cds_PropsRegPointNo.AsInteger = 1 then
  Begin
    grdAvropSokDBBandedTableView1PROD_DESC.Visible := True;
    grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := True;
  End
  else
  Begin
    grdAvropSokDBBandedTableView1PROD_DESC.Visible := False;
    grdAvropSokDBBandedTableView1LENGTH_DESC.Visible := False;
  End;
end;

procedure TfrmSokAvropFormular.acSetAsSTDMallExecute(Sender: TObject);
begin
  dmsSystem.Set_SetMallAsStd(cds_PropsName.AsString, cds_PropsForm.AsString);
end;

end.
