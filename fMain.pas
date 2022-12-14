unit fMain;

interface

uses
  DateUtils,
  ActnList,
  Classes,
  Controls,
  dxBar,
  ExtCtrls,
  Forms,
  ImgList,
  SysUtils,
  Windows, ShellApi,   inifiles, StdCtrls, jpeg, Graphics,
  printers, ComCtrls, Messages,
  cxShellBrowserDialog, cxPropertiesStore, cxClasses,
  dxRibbonGallery, dxRibbon, dxStatusBar, dxRibbonStatusBar, cxControls,
  dxNavBar, dxNavBarBase, dxNavBarCollns, cxSplitter, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxContainer, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCalc, cxCheckBox, cxTextEdit,
  Menus, cxButtons, dxSkinOffice2013DarkGray,
  dxRibbonCustomizationForm, siComp, siLngLnk,
  System.Actions, udmFR, uReportController, dxSkinscxPCPainter, cxNavigator,
  System.Variants, cxGridChartView, cxGridDBChartView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridBandedTableView,
  cxGridDBBandedTableView, dxBarBuiltInMenu, cxPC, dxSkinOffice2019Colorful,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxSkinsCore,
  dxRibbonSkins, dxBarApplicationMenu, dxScreenTip, dxSkinsForm, dxSkinBasic,
  dxCore, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue ;



const
 cFirstColumnNoWithRegPoint = 1 ;

type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    atDataCountry: TAction;
    atDeliveryTerm: TAction;
    atPaymentTerm: TAction;
    atCurrency: TAction;
    atPackUnit: TAction;
    atUnitName: TAction;
    atExit: TAction;
    atPackageCode: TAction;
    atAbout: TAction;
    atMarketRegion: TAction;
    atStatisticalCode: TAction;
    atLanguage: TAction;
    imglOutbar_large: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    bbPkgInfo: TdxBarButton;
    bbAddPackage: TdxBarButton;
    bbUserPreference: TdxBarButton;
    acUserPreference: TAction;
    bbCurrency: TdxBarButton;
    test: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    panelBase: TPanel;
    bbGeneralShippingCost: TdxBarButton;
    bbMarketPriceTemplates: TdxBarButton;
    bbMarketPrices: TdxBarButton;
    bbMatPunkterVerk: TdxBarButton;
    bbBasMatPunkter: TdxBarButton;
    bbMainGrade: TdxBarButton;
    bbPkgNoSerie: TdxBarButton;
    bbProductCodes: TdxBarButton;
    bbInternalSpeciesCodes: TdxBarButton;
    bbInternalSurfacingCodes: TdxBarButton;
    bbPktNrPositioner: TdxBarButton;
    bbPaketNrPos_INI: TdxBarButton;
    bbAndraPkt: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    acBytAnvandare: TAction;
    Timer1: TTimer;
    acFTPSetup: TAction;
    dxBarButton6: TdxBarButton;
    acReportNames: TAction;
    dxBarButton7: TdxBarButton;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxRibbon1: TdxRibbon;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    acAvrop: TAction;
    dxBarButton8: TdxBarButton;
    acAR: TAction;
    acSkeppningsinstruktion: TAction;
    acKPLista: TAction;
    acFragaAvrop: TAction;
    acEjFakturerat: TAction;
    acUtlastningVerk: TAction;
    acLevereradeLaster: TAction;
    acFakturalista: TAction;
    acSamlingsFakturaLista: TAction;
    acRegistreraFraktAvrakning: TAction;
    acRegistreradeFraktAvrakningar: TAction;
    acLagerRapport: TAction;
    acRegistreraAvrakning: TAction;
    acRegistreradeAvrakningar: TAction;
    acAnkomnaHamn: TAction;
    acPaketinfo: TAction;
    acKontrolleraAvrakningslaster: TAction;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    acKontoLogik: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    acOrderstock: TAction;
    dxBarLargeButton19: TdxBarLargeButton;
    acIntraStat: TAction;
    dxBarLargeButton20: TdxBarLargeButton;
    acTradingAnalyze: TAction;
    acAttestCommisionAndExtFreight: TAction;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    acPayControl: TAction;
    dxBarButton11: TdxBarButton;
    acImportFromHampen: TAction;
    dxBarLargeButton23: TdxBarLargeButton;
    acCreditInsurance: TAction;
    dxBarLargeButton24: TdxBarLargeButton;
    acCreditAnalysis: TAction;
    dxBarLargeButton25: TdxBarLargeButton;
    acLagervy: TAction;
    acFragaPaket: TAction;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    acAndraPaket: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    acPkgStdSizeIntervall: TAction;
    dxBarLargeButton30: TdxBarLargeButton;
    siLangLinked1: TsiLangLinked;
    acTorkhanteraren: TAction;
    acChangeLanguage: TAction;
    dxBarButton12: TdxBarButton;
    dxBarLargeButton31: TdxBarLargeButton;
    acDeRegisterPackages: TAction;
    dxBarLargeButton32: TdxBarLargeButton;
    acPositionView: TAction;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    acRefresh_Usersmonpu_piv: TAction;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyleMarkedPkgs: TcxStyle;
    acSetupUserOutput: TAction;
    acSelectPosition: TAction;
    acShowAllOutput: TAction;
    dxBarLargeButton35: TdxBarLargeButton;
    acAskAvrop: TAction;
    dxBarLargeButton36: TdxBarLargeButton;
    acPositionPkgs: TAction;
    PanelA: TPanel;
    Panel7: TPanel;
    grdSelectedPkgs: TcxGrid;
    grdSelectedPkgsDBTableView1: TcxGridDBTableView;
    grdSelectedPkgsDBTableView1PackageNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1suppliercode: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1REFERENCE: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1Product: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1position: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PositionID: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PackageTypeNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PCS: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1AM3: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1NM3: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1MaxLength: TcxGridDBColumn;
    grdSelectedPkgsLevel1: TcxGridLevel;
    pcPositioning: TcxPageControl;
    tsUttag: TcxTabSheet;
    tsPositionPkgs: TcxTabSheet;
    PanelMain: TPanel;
    PanelBottom: TPanel;
    Panelgrid: TPanel;
    Panel4: TPanel;
    grdPkgOutput: TcxGrid;
    grdPkgOutputDBTableView1: TcxGridDBTableView;
    grdPkgOutputLevel1: TcxGridLevel;
    PanelPkgsPerLine: TPanel;
    grdPkgsPerMP: TcxGrid;
    grdPkgsPerMPDBCardView1: TcxGridDBCardView;
    grdPkgsPerMPDBCardView1RegPointName: TcxGridDBCardViewRow;
    grdPkgsPerMPDBCardView1Packages: TcxGridDBCardViewRow;
    grdPkgsPerMPDBChartView1: TcxGridDBChartView;
    grdPkgsPerMPDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    grdPkgsPerMPDBChartView1Series1: TcxGridDBChartSeries;
    grdPkgsPerMPLevel1: TcxGridLevel;
    PanelTop: TPanel;
    cxButton1: TcxButton;
    mePackageNo: TcxTextEdit;
    cxButton2: TcxButton;
    bShowAllOutput: TcxButton;
    cxButton4: TcxButton;
    Panel3: TPanel;
    cxButton3: TcxButton;
    Panel8: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    acGoToUttag: TAction;
    cxButton5: TcxButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    grdMatchingGrid: TcxGrid;
    grdMatchingGridDBCardView1: TcxGridDBCardView;
    grdMatchingGridDBCardView1Vald: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1Position: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1REFERENCE: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1ProductNo: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1ActualLengthMM: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1PositionID: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1PhysicalInventoryPointNo: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1PosStatus: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1ALMM: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1PIPNo: TcxGridDBCardViewRow;
    grdMatchingGridDBCardView1StoredDate: TcxGridDBCardViewRow;
    grdMatchingGridDBBandedTableView1: TcxGridDBBandedTableView;
    grdMatchingGridDBBandedTableView1Vald: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1Position: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1ActualLengthMM: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PositionID: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PhysicalInventoryPointNo: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1PosStatus: TcxGridDBBandedColumn;
    grdMatchingGridDBBandedTableView1StoredDate: TcxGridDBBandedColumn;
    grdMatchingGridLevel1: TcxGridLevel;
    grdAreaDBTableView1: TcxGridDBTableView;
    grdAreaLevel1: TcxGridLevel;
    grdArea: TcxGrid;
    grdPosition: TcxGrid;
    cxPositionDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    grdAreaDBTableView1AreaName: TcxGridDBColumn;
    grdAreaDBTableView1AreaID: TcxGridDBColumn;
    cxPositionDBTableView1Position: TcxGridDBColumn;
    cxPositionDBTableView1PositionID: TcxGridDBColumn;
    cxPositionDBTableView1PosStatus: TcxGridDBColumn;
    cxPositionDBTableView1AreaID: TcxGridDBColumn;
    cxStyleContentOdd: TcxStyle;
    cxStyleContentEven: TcxStyle;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    sp_GetGroupClientRegionNo: TFDStoredProc;
    dxSkinController1: TdxSkinController;
    dxBarCombo1: TdxBarCombo;
    cds_PropsInv: TFDQuery;
    cds_PropsInvUserID: TIntegerField;
    cds_PropsInvForm: TStringField;
    cds_PropsInvName: TStringField;
    cds_PropsInvVerkNo: TIntegerField;
    cds_PropsInvOwnerNo: TIntegerField;
    cds_PropsInvPIPNo: TIntegerField;
    cds_PropsInvLIPNo: TIntegerField;
    cds_PropsInvInputOption: TIntegerField;
    cds_PropsInvRegPointNo: TIntegerField;
    cds_PropsInvRegDate: TSQLTimeStampField;
    cds_PropsInvCopyPcs: TIntegerField;
    cds_PropsInvRunNo: TIntegerField;
    cds_PropsInvProducerNo: TIntegerField;
    cds_PropsInvAutoColWidth: TIntegerField;
    cds_PropsInvSupplierCode: TStringField;
    cds_PropsInvLengthOption: TIntegerField;
    cds_PropsInvLengthGroupNo: TIntegerField;
    cds_PropsInvNewItemRow: TIntegerField;
    cds_PropsInvSalesRegionNo: TIntegerField;
    cds_PropsInvMarketRegionNo: TIntegerField;
    cds_PropsInvOrderTypeNo: TIntegerField;
    cds_PropsInvStatus: TIntegerField;
    cds_PropsInvFilterOrderDate: TIntegerField;
    cds_PropsInvStartPeriod: TSQLTimeStampField;
    cds_PropsInvEndPeriod: TSQLTimeStampField;
    cds_PropsInvClientNo: TIntegerField;
    cds_PropsInvSalesPersonNo: TIntegerField;
    cds_PropsInvVerkSupplierNo: TIntegerField;
    cds_PropsInvVerkKundNo: TIntegerField;
    cds_PropsInvLOObjectType: TIntegerField;
    cds_PropsInvBarCodeNo: TIntegerField;
    cds_PropsInvGradeStampNo: TIntegerField;
    cds_PropsInvVolumeUnitNo: TIntegerField;
    cds_PropsInvLengthFormatNo: TIntegerField;
    cds_PropsInvLengthVolUnitNo: TIntegerField;
    cds_PropsInvGroupByBox: TIntegerField;
    cds_PropsInvGroupSummary: TIntegerField;
    cds_PropsInvAgentNo: TIntegerField;
    cds_PropsInvLoadingLocationNo: TIntegerField;
    cds_PropsInvShipperNo: TIntegerField;
    cds_PropsInvBookingTypeNo: TIntegerField;
    cds_PropsInvCustomerNo: TIntegerField;
    cds_PropsInvShowProduct: TIntegerField;
    cds_PropsInvMarknad: TStringField;
    cds_PropsInvKund: TStringField;
    cds_PropsInvSR: TStringField;
    cds_PropsInvSaljgrupp: TStringField;
    cds_PropsInvVerk: TStringField;
    cds_PropsInvShipper: TStringField;
    cds_PropsInvBokningstyp: TStringField;
    cds_PropsInvLaststalle: TStringField;
    cds_PropsInvAgentNamn: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure acUserPreferenceExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acBytAnvandareExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acARExecute(Sender: TObject);
    procedure acUtlastningVerkExecute(Sender: TObject);
    procedure acAnkomnaHamnExecute(Sender: TObject);
    procedure acLagervyExecute(Sender: TObject);
    procedure acLevereradeLasterExecute(Sender: TObject);
    procedure acFragaPaketExecute(Sender: TObject);
    procedure acPkgStdSizeIntervallExecute(Sender: TObject);
    procedure acAndraPaketExecute(Sender: TObject);
    procedure acTorkhanterarenExecute(Sender: TObject);
    procedure acChangeLanguageExecute(Sender: TObject);
    procedure acDeRegisterPackagesExecute(Sender: TObject);
    procedure acPositionViewExecute(Sender: TObject);
    procedure acRefresh_Usersmonpu_pivExecute(Sender: TObject);
    procedure grdPkgOutputDBTableView1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
    procedure grdPkgOutputDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgOutputDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure acSetupUserOutputExecute(Sender: TObject);
    procedure grdPkgOutputDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdPkgsPerMPDBChartView1ValueClick(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHandled: Boolean);
    procedure grdPkgOutputDBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure acShowAllOutputExecute(Sender: TObject);
    procedure acAskAvropExecute(Sender: TObject);
    procedure acPositionPkgsExecute(Sender: TObject);
    procedure acGoToUttagExecute(Sender: TObject);
    procedure grdMatchingGridDBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarCombo1Change(Sender: TObject);
    procedure cds_PropsInvAfterInsert(DataSet: TDataSet);

  private
    ShowAllOutput   : Boolean ;
    ScanningEnabled : Boolean ;
    TempEditString  : String ;
    OriginalUserID  : Integer ;
    a : String ;
    procedure Open_cds_PropsInv ;
    procedure Save_cds_PropsInv ;
    Function  GetGroupClientRegionNo(VerkNo, SalesRegionNo  : Integer) : Boolean ;
    function  ScannedPkg(const AViewInfo  : String) : Boolean ;
    procedure GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
    procedure SetGridParamsFor_Usersmonpu_piv(Sender: TObject;const ShowAll : Boolean);
    Procedure InitOnStartOfProgram;
    function  SelectSortingOrderNo : Integer ;
    procedure AvregistreraPaket ;
    procedure ChangeUserSettingsOnStartUp ;
    function  FormOpen : Boolean ;
    procedure AppException(Sender: TObject; E: Exception);
    procedure CleanUpForms(Sender: TObject);
    procedure CheckMappar ;
    procedure CheckDrive ;
  public
  end;
// end of TfrmMain 
var
  FrmMain: TfrmMain;

implementation

uses
  SynLog,
  Dialogs,
  VidaConst,
  VidaType,
  VidaUser,
  dmcVidaSystem, UnitSetup,
  fLoadOrder, dmcVidaOrder, UnitAboutBox,
  UnitLoadArrivals, UnitPkgInfo, dmsDataConn,
  dmsVidaProduct,
  dmsVidaSystem,
  uUserPreference,
  uEncode,
  UPortArrivals, uChangeLogins ,
  dmc_UserProps , uLager, uLastLista, uSetStdPkgSizeIntervall, UchgPkgVard,
  uKilnHandling, ufrmChangeLanguage, udmLanguage, fSortOrder,
  uSelectSortingOrderNo, dmsVidaContact, uPositionView, dm_Inventory,
  uSetupUserOutput, UnitSokAvropFormular, dmsUserAdm, uMailMadExcept ;



{$R *.DFM}

Procedure TfrmMain.InitOnStartOfProgram;
Begin
 if Assigned(dm_UserProps) then
  FreeAndNil(dm_UserProps) ;
 dm_UserProps := Tdm_UserProps.Create(Application);
 With dmsContact do
 Begin
{
    if sp_Customers.Active then
     sp_Customers.Active  := False ;
    sp_Customers.ParamByName('@SalesRegionNo').AsInteger  := GetSalesRegionNo(ThisUser.CompanyNo) ;
    sp_Customers.Active := True ;
}

  cds_Verk.Active := False ;
  cds_Verk.ParamByName('SalesRegionNo').AsInteger :=  GetSalesRegionNo(ThisUser.CompanyNo) ;
  cds_Verk.Active := True ;


{
    if cds_Shippers.Active then
     cds_Shippers.Active  := False ;
    cds_Shippers.ParamByName('@SalesRegionNo').AsInteger  := GetSalesRegionNo(ThisUser.CompanyNo) ;
    cds_Shippers.Active := True ;
}
 End;
End;


function TfrmMain.FormOpen : Boolean ;
Begin
  Result:= False ;
  if Assigned(frmLoadArrivals) then
   Result:= True ;

  if Assigned(frmVisTruckLoadOrder) then
   Result:= True ;

  if Assigned(frmPortArrivals) then
   Result:= True ;

  if Assigned(fLager) then
   Result:= True ;
End ;

function GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfrmMain.CheckDrive ;
Begin
  if not DirectoryExists('h:\') then
  Begin
   cxShellBrowserDialog1.Title:= siLangLinked1.GetTextOrDefault('IDS_0' (* 'Disk drive H: finns ej, ange en annan.' *) ) ;
   cxShellBrowserDialog1.Execute ;
   dmsConnector.DriveLetter:= cxShellBrowserDialog1.Path ;
  End
   else
    dmsConnector.DriveLetter:= 'h:\';
 IncludeTrailingBackslash(dmsConnector.DriveLetter) ;
End ;

//---------------------------------------------------------------------
procedure TfrmMain.AppException(Sender: TObject; E: Exception);
begin
  if Pos('547', E.Message) > 0 then
    ShowMessage(siLangLinked1.GetTextOrDefault('IDS_1' (* 'The system can not insert record due to data conflict!' *) ))
  else
    if Pos('2601', E.Message) > 0 then
      ShowMessage(siLangLinked1.GetTextOrDefault('IDS_2' (* 'The system can not insert record due to data duplication!' *) ))
    else
      if Pos('10015', E.Message) > 0 then
        ShowMessage(siLangLinked1.GetTextOrDefault('IDS_2' (* 'The system can not insert record due to data duplication!' *) ))
      else
        ShowMessage('System Error. Original Message: ' + E.Message)
end;


//---------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
Var I : integer ;
begin
 dxBarCombo1.OnChange := nil ;
 Try
  for i:=0 to cxLookAndFeelPaintersManager.Count-1 do
   begin
    dxBarCombo1.Items.Add(cxLookAndFeelPaintersManager.Items[i].LookAndFeelName) ;
   end;
 Finally
    dxBarCombo1.OnChange :=  dxBarCombo1Change ;
 End;

// ExceptionNotify := MyNotify; // Assign ExceptionNotify variable to MyNotify procedure.
  Application.OnException := AppException;
  ShowAllOutput := False ;

   with TSynLog.Family do begin
    Level := LOG_VERBOSE;
    if GetEnvironmentVariable('COMPUTERNAME')= 'CARMAK-FASTER'  then
      DestinationPath := 'C:\VIS\TEMP\Logs'
    else
      DestinationPath := '\\vida.se\dfs\System\VIS\VIS_TEMP\';
//    EchoToConsole := LOG_VERBOSE; // log all events to the console
  end;
end;


//---------------------------------------------------------------------
procedure TfrmMain.atExitExecute(Sender: TObject);
begin
  close
end;



//-------------------------------------------------------------
procedure TfrmMain.atAboutExecute(Sender: TObject);
begin
 TAboutBox.Execute ;
end;

procedure TfrmMain.CheckMappar ;
Var EditCRFolder, EditIniFiles, eUserDir, eExcelDir, eLODir : String ;
Begin
 if DirectoryExists(dmsConnector.DriveLetter) then
 Begin
  if not DirectoryExists(dmsConnector.DriveLetter+'VIS') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS') then
    raise Exception.Create(siLangLinked1.GetTextOrDefault('IDS_4' (* 'Cannot create ' *) )+dmsConnector.DriveLetter+'VIS');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\KONFIG') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\KONFIG') then
    raise Exception.Create(siLangLinked1.GetTextOrDefault('IDS_4' (* 'Cannot create ' *) )+dmsConnector.DriveLetter+'VIS\KONFIG');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\MALL') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\MALL') then
    raise Exception.Create(siLangLinked1.GetTextOrDefault('IDS_4' (* 'Cannot create ' *) )+dmsConnector.DriveLetter+'VIS\MALL');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\TEMP') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\TEMP') then
    raise Exception.Create(siLangLinked1.GetTextOrDefault('IDS_4' (* 'Cannot create ' *) )+dmsConnector.DriveLetter+'VIS\TEMP');
 End ;
End ;

procedure TfrmMain.ChangeUserSettingsOnStartUp ;
Var HostName : String ;
Begin
 HostName := dmsConnector.GetHostName(ThisUser.UserID) ;
 if Length(HostName) > 0 then
 Begin
  ThisUser.Database := HostName ;
  if not ThisUser.Logon then
  Close
  else
  Begin
    InitOnStartOfProgram ;
    Timer1.Enabled := True;
    dmsConnector.LoginChanged := True;
    // dxNavBar1.DefaultStyles.Background.BackColor:= clGreen ;

    Application.Title := 'VIS';
    a := Application.Title + '/' + dmsConnector.GetCompanyName
      (ThisUser.CompanyNo) + '/' + ThisUser.UserName + ' ver ' +
      GetVersion + ' - ' + dmsConnector.FDConnection1.Params.Values
      ['Server'] + '/' + dmsConnector.FDConnection1.Params.Values
      ['Database'] + ' ';



  End;
 End;
End;


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
var Height, Width, Top, Left, LanguageNo : Integer ;
    lCaption  : String ;
begin
// PanelMain.Visible  := False ;

 dmInventory.mtScannedPkgs.Active  := True ;
 ScanningEnabled  := True ;
 PanelPkgsPerLine.Align := alClient ;
 dmsConnector.DriveLetter := 'H:\' ;
 if dmsConnector.DriveLetter = 'C:\' then
  ShowMessage('Change drive to H:\') ;

// CheckMappar ;

// ThisUser.Database:= 'carmak-faster\sqlexpress:vis_vida' ;
//ThisUser.Database:= 'carmak-speed\sqlexpress:vis_vida' ;
// ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;


// ThisUser.Database:= 'alvesqltest01:vis_vida' ;


// -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
{$IFDEF DEBUG}
  if (Pos('CARMAK',GetEnvironmentVariable('COMPUTERNAME')) > 0) then begin
    dmsConnector.DriveLetter := 'C:\';
    ThisUser.Database:= 'vistestsql.vida.se:vis_vida' ;
      with dmsConnector.FDConnection1 do begin
        Params.Clear;
        Params.Add('Server=vistestsql.vida.se');
        Params.Add('Database=vis_vida');
        Params.Add('OSAuthent=No');
        Params.add('MetaDefCatalog=vis_vida');
        Params.Add('MetaDefSchema=dbo');
        Params.Add('User_Name=sa');
        Params.Add('Password=woods2011');
        Params.Add('DriverID=MSSQL');
        Params.Add('ApplicationName=VIS_LAGER');
      end;
  end
  else begin
    ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;
  end;
{$ELSE}
  ThisUser.Database:= 'visprodsql.vida.se:vis_vida' ;
{$ENDIF}
// -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-

 dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       OriginalUserID := ThisUser.UserID ;
       lCaption  := Forms.Application.Title + '/' + dmsConnector.GetCompanyName (ThisUser.CompanyNo) + '/' + ThisUser.UserName + ' ver ' + GetVersion
       + ' - ' + dmsConnector.FDConnection1.Params.Values['Server']
       + '/' + dmsConnector.FDConnection1.Params.Values['Database'] + ' ' ;

       dmsSystem.vis_Del_OLD_Load_Res ;
       InitOnStartOfProgram;
      End
      else
      Begin
       Close ;
      End ;

 ChangeUserSettingsOnStartUp ;
 uMailMadExcept.setUpMailBugreport(dmsConnector.FDConnection1.Params, ThisUser.UserID, ThisUser.UserEmail);

 if forms.Screen.MonitorCount = 2 then
 Begin
   dm_UserProps.GetAppFormSize(frmMain.Name, Height, Width, Top, Left) ;
   if (Height > 0) and (Width > 0) then //and (Top > 0) and (Left > 0) then
   Begin
    frmMain.Height  := Height ;
    frmMain.Width   := Width ;
    frmMain.Top     := Top ;
    frmMain.Left    := Left ;
   End ;
 End;

  LanguageNo  :=  dmsSystem.GetLanguageNo ;
  if LanguageNo > -1 then
  Begin
   dmLanguage.siLangDispatcher1.ActiveLanguage := LanguageNo ;
   dmLanguage.siLangDispatcher1.LoadAllFromFile(dmLanguage.siLangDispatcher1.FileName);
  End;
  dmFR.SetUpConnection(dmsConnector.FDConnection1);
  uReportController.useFR := true;
  Caption  := lCaption ;

 dmInventory.Set_mtUserUserID ;

 if ThisUser.UserID <> 258 then
 Begin
   PanelA.Visible    := False ;
//   PanelBottom.Visible  := False ;
//   PanelTop.Visible     := False ;
 End
 else
 Begin
   dmInventory.Open_AreasAndPositions(10220) ;              //Get users PIPNo of verk, but more PIPs can exists in...
   PanelA.Visible    := True ;
   PanelA.Align      := alClient ;
//   PanelBottom.Visible  := True ;
//   PanelTop.Visible     := True ;
 End;


  if self.WindowState=wsNormal then
       begin
        self.WindowState:=wsMaximized;
      //  self.SetBounds(0,0,screen.Width,screen.Height-getHeightOfTaskBar);
       end
       else
       begin
         self.WindowState:=wsNormal;
       end;

  // Setup connection for policycontrol
  dmUserAdm.SetUpConnection(dmsConnector.FDConnection1);
  dmUserAdm.ApplyRestrictionsOnForm(thisUser.UserID, self);



  Open_cds_PropsInv ;
end;


//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;


procedure TfrmMain.dxBarCombo1Change(Sender: TObject);
begin
  dxSkinController1.SkinName  :=   ///cbSkins.Properties.
  dxBarCombo1.Items.Strings[dxBarCombo1.ItemIndex] ;
  dxRibbon1.ColorSchemeName   :=   dxSkinController1.SkinName ;
  Save_cds_PropsInv ;

  if Assigned(frmVisTruckLoadOrder) then
   frmVisTruckLoadOrder.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;

  if Assigned(fLager) then
   fLager.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;

  if Assigned(frmLoadArrivals) then
    frmLoadArrivals.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;

 if Assigned(fkilnHandling) then
  fkilnHandling.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;

 if Assigned(frmSokAvropFormular) then
  frmSokAvropFormular.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;

end;

procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
//  ; var DisplayValue: Variant; var ErrorText: TCaption;
//  var Error: Boolean);
var
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ProductLengthNo   : Integer ;
  NoOfLengths       : Integer ;
  Error             : Boolean ;
  NewPkgNo          : Integer ;
  PktNrLevKod       : String3 ;//Lev koden i paketnrstr?ngen
  ErrorText         : String ;
  NumberPrefix      : String ;
  LongPkgNo         : String ;
begin
 With dmInventory do
 Begin
  NewPkgNo := 0 ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   if Length(Trim(PackageNo)) > 0 then
   Begin
    if Length(Trim(PackageNo)) > 10 then
    Begin //L?NGA KODEN
     Try
     Action := eaAccept ;
     dmsSystem.ParsePkgID(PackageNo, NewPkgNo, PkgSupplierCode, NumberPrefix) ;

   //  NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
     Except
      on E: EConvertError do
         ShowMessage(E.ClassName + E.Message);
     End ;
     if NewPkgNo < 1 then
       Action :=  eaREJECT ;

     if Length(PkgSupplierCode) < 1 then
       Action :=  eaREJECT ;



      if not mtScannedPkgs.Active then
       mtScannedPkgs.Active := True ;

       if Action =  eaAccept then
       Begin
        LongPkgNo := inttoStr(NewPkgNo) + NumberPrefix ;
        if sp_allPkgsatoutput.FindKey([LongPkgNo]) then
        Begin
          Action := eaAccept ;
     //     ChangeClickedPackage(NewPkgNo, NumberPrefix, ADisplayText, sp_allPkgsatoutputSupplierCode.AsString);
          mtScannedPkgs.InsertRecord([NewPkgNo, NumberPrefix, LongPkgNo, sp_allPkgsatoutputSupplierCode.AsString]);
        End
         else
          Action :=  eaREJECT ;
       End;


    End
     else //Length < 11
      Begin
         NewPkgNo:= StrToIntDef(PackageNo,0) ;
       if NewPkgNo = 0 then
       Begin
//        Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_33' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) ) ;
        Exit ;
       End ;


       sp_allPkgsatoutput.IndexName := 'allPkgsAtOutput_Index02' ;
       Try
       if sp_allPkgsatoutput.FindKey([NewPkgNo]) then
        Begin
          NumberPrefix  := sp_allPkgsatoutputProductionUnitCode.AsString ;
          Action        := eaAccept ;
          LongPkgNo     := inttoStr(NewPkgNo) + NumberPrefix ;
          ChangeClickedPackage(NewPkgNo, NumberPrefix, LongPkgNo, sp_allPkgsatoutputSupplierCode.AsString);

//          mtScannedPkgs.InsertRecord([NewPkgNo, NumberPrefix, LongPkgNo, sp_allPkgsatoutputSupplierCode.AsString]);
        End
       Finally
        sp_allPkgsatoutput.IndexName := 'allPkgsAtOutput_Index01' ;
       End;

{
          Action := IdentifyPackageSupplier(
          NewPkgNo,
          dmLoadEntrySSP.FSupplierNo,
          PkgSupplierCode,
          PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );
}
      End ;
   End ; //if StrToInt(Trim(PackageNo)) > 0 then

{
     if (NewPkgNo > 0) and (Length(PkgSupplierCode) > 0) then
     Begin

  //F?r inte anv?nda post sj?lv, det g?r rutinen automatiskt
    if Action = eaACCEPT then
    Begin
        AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
    //L?ngsamt h?r
        if AfterAddedPkgNo(Sender, NewPkgNo, PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths ) <> eaACCEPT then
        Begin
         Errortext := 'Paketnr ' + IntToStr(NewPkgNo) +  ' prefix:'  + PkgSupplierCode +  ' does not exist in inventory ' + Trim(lcPIP.Text) ;
         Error      := True ;
        End
        else
        Begin
         Error:= False ;
        End ;
    End
       else
       if Action = eaREJECT then
        Begin
         Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_28' (* ' finns inte i lager ' *) ) + Trim(lcPIP.Text) ;
         Error      := True ;
        End
        else
         if Action = eaReserved then
          Begin
           Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) ) + Res_UserName ;
           Error      := True ;
          End
          else
           if Action = eaDuplicate then
            Begin
             Errortext  := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode + siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_99' (* ' ?r redan inmatat' *) ) ;
             Error      := True ;
            End ;
        End
         else
          Begin
           Errortext := 'Paketnr saknas.' ;
           Error      := True ;
          End ;
     if Error then
      ShowPkgInfo(NewPkgNo, PkgSupplierCode, Errortext) ;

}

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if ScanningEnabled then
 Begin
  if (Key = #13) and (Length(mePackageNo.Text) > 0) then
  Begin
   Try
//    ScanningPkgNo(Sender, mePackageNo.Text) ;
    GetpackageNoEntered(Sender, mePackageNo.Text) ;
    dmInventory.Refresh_PkgsToReposition ;
    grdPkgOutputDBTableView1.Invalidate(false);
//    grdPkgOutput.Invalidate();
//    SaveLoad ;
    mePackageNo.Text:= '' ;
   Except
    mePackageNo.Text:= '' ;
   End ;
  End//if (Key = #13) and (Length(mePackageNo.Text) > 0) then
  else
  if (Key = #8) and (Length(mePackageNo.Text) > 0) then
  Begin
   Try
    if Length(TempEditString) > 1 then
    TempEditString  := Copy(TempEditString, 1, Length(TempEditString) - 1)
    else
    TempEditString  := '' ;
    mePackageNo.Text  := TempEditString ;
   Except
//    mePackageNo.Text:= '' ;
   End ;
  End//if (Key = #13) and (Length(mePackageNo.Text) > 0) then

  else
   Begin
//    if (acStart.Caption = 'Stoppa inl?sning med skanner F10') then
     if key in ['0','1','2','3','4','5','6','7','8','9'] then
      mePackageNo.Text:= mePackageNo.Text + Key ;
   End ;
//  End ;//if sender
 End ;



 TempEditString := mePackageNo.Text ;

end;

procedure TfrmMain.CleanUpForms(Sender: TObject);
begin
 if Assigned(frmLoadArrivals) then
  FreeAndNil(frmLoadArrivals) ;

 if Assigned(frmVisTruckLoadOrder) then
 Begin
  frmVisTruckLoadOrder.Close ;
  FreeAndNil(frmVisTruckLoadOrder) ;
 End ;

 if Assigned(frmPortArrivals) then
  FreeAndNil(frmPortArrivals) ;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Try
 With dmsSystem do
 Begin
  Try
  if dmsConnector.FDConnection1.Connected then
  Begin
   Delete_UserReservedPkgs ;
   dmsSystem.DelLoad_Res(0) ;
  End;
  Except
  End ;
 End ;
 Finally
  Try
  CleanUpForms(Sender) ;
  Except
  End ;
 End ;

 dm_UserProps.SetAppFormSize(frmMain.Name, frmMain.Height, frmMain.Width, frmMain.Top, frmMain.Left) ;

 Try
 ThisUser.Free ;
 Except
 End ;
 CanClose := True ;
end;

procedure TfrmMain.acBytAnvandareExecute(Sender: TObject);
var OKHelpBottomDlg: TOKHelpBottomDlg;
begin
 if dmsConnector.CanChangeUser(OriginalUserID) then
 Begin
 if FormOpen then
 Begin
  ShowMessage('Close all forms first.');
  Exit ;
 End ;


 OKHelpBottomDlg:= TOKHelpBottomDlg.Create(nil);
 try
 if OKHelpBottomDlg.ShowModal = mrOK then
 Begin
//  dmsConnector.FDConnection1.de .CloseDataSets ;
  dmsConnector.FDConnection1.Connected:= False ;

  if Length(OKHelpBottomDlg.EFD_Name.Text) > 0 then
  ThisUser.DBUserName:= OKHelpBottomDlg.EFD_Name.Text ;

  if Length(OKHelpBottomDlg.eDatabas.Text) > 0 then
  ThisUser.Database:= OKHelpBottomDlg.eDatabas.Text ;

   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       if ((dmsConnector.Get_AD_Name <> OKHelpBottomDlg.EFD_Name.Text) and (Length(OKHelpBottomDlg.EFD_Name.Text) > 0) )
       or ((OKHelpBottomDlg.eDatabas.Text <> dmsConnector.Org_DB_Name) and (Length(OKHelpBottomDlg.eDatabas.Text) > 0)) then
       Begin
        InitOnStartOfProgram;
        Timer1.Enabled:= True ;
        dmsConnector.LoginChanged:= True ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clGreen ;

        Application.Title:= 'VISTRUCK' ;
        a:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;

        Open_cds_PropsInv ;
       End
       else
       Begin
        InitOnStartOfProgram;
        dmsConnector.LoginChanged:= False ;
        Timer1.Enabled:= False ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clWhite ;

        Application.Title:= 'VISTRUCK' ;
        frmMain.Caption:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;
       End ;

      End
      else
      Begin
       Close ;
      End ;
 End ;

 finally
  FreeAndNil(OKHelpBottomDlg) ;
 end;
 End
  else
   ShowMessage(siLangLinked1.GetTextOrDefault('IDS_10' (* 'No access' *) ));

  dmInventory.Set_mtUserUserID ;
  dmInventory.Open_AreasAndPositions(10076) ;
end;

procedure TfrmMain.acChangeLanguageExecute(Sender: TObject);
var
  frm: TfrmChangeLanguage;
begin
  try
    frm := TfrmChangeLanguage.Create(nil);
    if (frm <> nil) then
    begin
      if (frm.ShowModal = mrOk) then
      Begin
        dmLanguage.siLangDispatcher1.LoadAllFromFile(dmLanguage.siLangDispatcher1.FileName);
        dmsSystem.SaveLanguage(dmLanguage.siLangDispatcher1.ActiveLanguage) ;
      End;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

function TfrmMain.SelectSortingOrderNo : Integer ;
var fSelectSortingOrderNo : TfSelectSortingOrderNo;
    KorNr : String ;
    ID    : Integer ;
Begin
 KorNr  := '' ;
 with dmsSystem do
 Begin
  fSelectSortingOrderNo  := TfSelectSortingOrderNo.Create(nil) ;
  Try
  if fSelectSortingOrderNo.ShowModal = mrOK then
  Begin
   if (Length(fSelectSortingOrderNo.meRunNo.Text)-2) >= 5 then
    Begin
      ID   := StrToIntDef(Copy(fSelectSortingOrderNo.meRunNo.Text, 3, Length(fSelectSortingOrderNo.meRunNo.Text)-2), -1) ;
      Result  := ID ;//StrToIntDef(Trim(KorNr),-1) ;
    End
     else
      Result  := -1 ; // Wrong input
//   KorNr  := Copy(fSelectSortingOrderNo.meRunNo.Text, 1, 5) ;

  End
    else
     Result := 0 ; // Cancelled input
  Finally
   FreeAndNil(fSelectSortingOrderNo) ;
  End ;
  Application.ProcessMessages ;
 End ;
End ;

Function TfrmMain.GetGroupClientRegionNo(VerkNo, SalesRegionNo  : Integer) : Boolean ;
Begin
  sp_GetGroupClientRegionNo.paramByName('@VerkNo').AsInteger        := VerkNo ;
  sp_GetGroupClientRegionNo.paramByName('@SalesRegionNo').AsInteger := SalesRegionNo ;
  sp_GetGroupClientRegionNo.Active  := True ;
  Try
  if not sp_GetGroupClientRegionNo.Eof then
   Result := True
    else
     Result := False ;
  Finally
    sp_GetGroupClientRegionNo.Active  := False ;
  End;

End;

procedure TfrmMain.AvregistreraPaket ;
var frmSortOrder        : TfrmSortOrder;
    Default_SortingOrderNo,
    Default_RegPointNo  : Integer ;
    Save_Cursor         : TCursor;
    VerkNo              : Integer ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  try
    Default_SortingOrderNo := SelectSortingOrderNo;
    if Default_SortingOrderNo < 1 then
    begin
      if Default_SortingOrderNo = -1 then
        Showmessage('Mata in ett giltigt k?rordernummer!');
      exit;
    end;

    VerkNo := dmsSystem.GetVerkNoForSortingOrderServer(Default_SortingOrderNo);
    if VerkNo = -1 then
    begin
      showmessage('K?rordernummer: ' + intToStr(Default_SortingOrderNo) + ' saknas!');
      exit;
    end;

    if GetGroupClientRegionNo(VerkNo, ThisUser.CompanyNo) then
    begin
      Default_RegPointNo := -1;
      frmSortOrder := TfrmSortOrder.Create(nil);
      try
        frmSortOrder.PopupParent  := self ;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        frmSortOrder.CreateCo(VerkNo);
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        frmSortOrder.LOpenWorkOrder(Default_SortingOrderNo, -1);
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        frmSortOrder.ShowModal;

      finally
        FreeAndNil(frmSortOrder);
      end
    end
    else
      ShowMessage('K?rordernr ' + IntToStr(Default_SortingOrderNo) + ' producent st?mmer inte med inloggad anv?ndare');

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
End;

procedure TfrmMain.cds_PropsInvAfterInsert(DataSet: TDataSet);
begin
  cds_PropsInvUserID.AsInteger        := thisuser.userid;
  cds_PropsInvForm.AsString           := 'Truck_frmMain';
end;

procedure TfrmMain.acDeRegisterPackagesExecute(Sender: TObject);
begin
  AvregistreraPaket ;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
  Forms.Application.Title   := a;
  frmMain.Caption     := a;
  for i := 1 to (Length(a) - 1) do
    a[i] := Application.Title[i + 1];
  a[Length(a)] := Application.Title[1];
end;


procedure TfrmMain.acTorkhanterarenExecute(Sender: TObject);
begin
if ThisUser.CanView[dcInventorySection] then
 Begin
 if not Assigned(fkilnHandling) then
  Begin
   fkilnHandling        := TfkilnHandling.Create(Nil) ;
   fkilnHandling.CreateCo( Sender,ThisUser.CompanyNo);
   fkilnHandling.Parent := panelBase;
   fkilnHandling.Show;
   fkilnHandling.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;
//   fkilnHandling.Edit1.SetFocus ;
  End
  else
    begin
     fkilnHandling.Parent := panelBase;
     fkilnHandling.Show;
//     fInvCtrl.Edit1.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acARExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmLoadArrivals) then
    Begin
     frmLoadArrivals := TfrmLoadArrivals.Create(Nil) ;
     frmLoadArrivals.CreateCo(  ThisUser.CompanyNo);
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
     frmLoadArrivals.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
    end ;
  End ;
end;

procedure TfrmMain.acAskAvropExecute(Sender: TObject);
begin
  // const_SOKAVROP :
  if ThisUser.CanView[dcUtlastningSec] then
  Begin
    if not Assigned(frmSokAvropFormular) then
    Begin
      frmSokAvropFormular := TfrmSokAvropFormular.Create(Nil);
      frmSokAvropFormular.CreateCo(Sender, ThisUser.CompanyNo);
      frmSokAvropFormular.Parent := panelBase;
      frmSokAvropFormular.Show;
      frmSokAvropFormular.lcSR.SetFocus;
    End
    else
    begin
      frmSokAvropFormular.Parent := panelBase;
      frmSokAvropFormular.Show;
      frmSokAvropFormular.lcSR.SetFocus;
    End;
  End;
end;

procedure TfrmMain.acUtlastningVerkExecute(Sender: TObject);
begin
// const_ShipMill_Delivery           :  //if ThisUser.CanView[dcOrderSection] then
 if ThisUser.CanView[dcUtlastningSec] then
 Begin
 if not Assigned(frmVisTruckLoadOrder) then
  Begin
   frmVisTruckLoadOrder := TfrmVisTruckLoadOrder.Create(Nil) ;
   frmVisTruckLoadOrder.CreateCo( Sender,ThisUser.CompanyNo);
   frmVisTruckLoadOrder.Parent := panelBase;
   frmVisTruckLoadOrder.Show;
   frmVisTruckLoadOrder.teSearchLONo.SetFocus ;
   frmVisTruckLoadOrder.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;
  End
  else
    begin
     frmVisTruckLoadOrder.Parent := panelBase;
     frmVisTruckLoadOrder.Show;
//     frmVisTruckLoadOrder.teSearchLONo.SetFocus ;
    end ;
 End ;
 dxRibbon1.ShowTabGroups  := False ;
end;

procedure TfrmMain.acAnkomnaHamnExecute(Sender: TObject);
begin
// const_AnkomnaHamn :
 if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmPortArrivals) then
    Begin
     frmPortArrivals := TfrmPortArrivals.Create(Nil) ;
     frmPortArrivals.CreateCo(  ThisUser.CompanyNo);
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    End
    else
    begin
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then

end;

procedure TfrmMain.acLagervyExecute(Sender: TObject);
begin
  if not Assigned(fLager) then
  Begin
   fLager := TfLager.Create(Application) ;
   fLager.CreateCo(Sender, ThisUser.CompanyNo, 0,0) ;

//   fLager.Align         := alClient ;
//   fLager.BorderStyle   := bsNone ;
   fLager.Parent        := panelBase;

   fLager.Show;
   fLager.dxBarManager1.LookAndFeel.SkinName := dxSkinController1.SkinName ;
//   fLager.lcAgent.SetFocus ;
  End
  else
    begin
     fLager.Parent := panelBase;
     fLager.Show;
//     fLager.lcAgent.SetFocus ;
    end ;
   dxRibbon1.ShowTabGroups  := False ;
end;

procedure TfrmMain.acLevereradeLasterExecute(Sender: TObject);
begin
  if not Assigned(fLastLista) then
  Begin
   fLastLista := TfLastLista.Create(nil) ;
   fLastLista.CreateCo ;

//   fLastLista.Align         := alClient ;
//   fLastLista.BorderStyle   := bsNone ;
   fLastLista.Parent        := panelBase;

   fLastLista.Show;
//   fLastLista.lcAgent.SetFocus ;
  End
  else
    begin
     fLastLista.Parent := panelBase;
     fLastLista.Show;
//     fLastLista.lcAgent.SetFocus ;
    end ;

end;

procedure TfrmMain.acFragaPaketExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 if ThisUser.CanView[dcAsk_packagesSec] then
 Begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= 0 ;
  frmPkgInfo.SupplierCode:= '';
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
 End ;
end;

procedure TfrmMain.acGoToUttagExecute(Sender: TObject);
begin
  pcPositioning.ActivePage := tsUttag ;
end;

procedure TfrmMain.acPkgStdSizeIntervallExecute(Sender: TObject);
var fSetStdPkgSizeIntervall: TfSetStdPkgSizeIntervall ;
begin
 fSetStdPkgSizeIntervall:= TfSetStdPkgSizeIntervall.Create(Nil);
 Try
  fSetStdPkgSizeIntervall.ShowModal ;
 Finally
  FreeAndNil(fSetStdPkgSizeIntervall) ;
 End ;
end;

procedure TfrmMain.acPositionPkgsExecute(Sender: TObject);
begin
  pcPositioning.ActivePage := tsPositionPkgs ;
  dmInventory.FindMatchingPositionFromSelectedPkgs ;
end;

procedure TfrmMain.acPositionViewExecute(Sender: TObject);
begin
  if not assigned(uPositionView.fPositionView) then
    fPositionView := TfPositionView.Create(self);
  fPositionView.Parent := panelBase;
  dxRibbon1.ShowTabGroups  := False ;
  fPositionView.Show;
end;

procedure TfrmMain.acRefresh_Usersmonpu_pivExecute(Sender: TObject);
begin
// dmInventory.sp_invpiv.DisableControls ;
// grdPkgOutput.ClearItems ;
 dmInventory.Refresh_sp_usersmonpu_piv ;

 SetGridParamsFor_Usersmonpu_piv(Sender, ShowAllOutput);
 PanelPkgsPerLine.Visible := True ;
end;

procedure TfrmMain.acSetupUserOutputExecute(Sender: TObject);
var fSetupUserOutput: TfSetupUserOutput;
begin
  fSetupUserOutput  := TfSetupUserOutput.Create(nil);
  Try
  fSetupUserOutput.ShowModal ;
  Finally
    FreeAndNil(fSetupUserOutput) ;
  End;
end;

procedure TfrmMain.acShowAllOutputExecute(Sender: TObject);
begin
 //Show all outputs linked to current user
 if bShowAllOutput.Caption =  'Visa alla uttag' then
 Begin
  ShowAllOutput           :=  True ;
  bShowAllOutput.Caption  :=  'Visa mina uttag' ;
 End
 else
 Begin
  ShowAllOutput           :=  False ;
  bShowAllOutput.Caption  :=  'Visa alla uttag' ;
 End;

 dmInventory.Refresh_sp_usersmonpu_piv ;

 SetGridParamsFor_Usersmonpu_piv(Sender, ShowAllOutput);
// PanelPkgsPerLine.Visible := True ;
end;

procedure TfrmMain.grdMatchingGridDBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 with dmInventory do
 Begin
   Mem_MatchaProduct.DisableControls;
   Try
   if Mem_MatchaProductVald.AsInteger = 1 then
    begin
     with Mem_MatchaProduct do
     begin
       Edit;
       FieldByName('Vald').AsInteger := 0;
       Post;
     end
    end
   else
    begin
     with Mem_MatchaProduct do
      begin
       Edit;
       FieldByName('Vald').AsInteger := 1;
       Post;
      end;
    end;
   Finally
     Mem_MatchaProduct.EnableControls;
   End;
 End;

  AHandled := True;
end;

procedure TfrmMain.grdPkgOutputDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
Var AColIndex, NewPkgNo: integer ;
    AValue  : Variant ;
    ADisplayText, NumberPrefix  : String ;
begin
        //

  AColIndex     := Sender.Controller.FocusedItemIndex;
  AValue        := Sender.Controller.FocusedRecord.Values[AColIndex];
  ADisplayText  := Sender.Controller.FocusedRecord.DisplayTexts[AColIndex];

  if Length(ADisplayText) > 0 then
  with dmInventory do
  Begin
    NewPkgNo  := strToInt(Copy(ADisplayText, 1, 6)) ;
    sp_allPkgsatoutput.IndexName := 'allPkgsAtOutput_Index02' ;
     Try
     if sp_allPkgsatoutput.FindKey([NewPkgNo]) then
      Begin
        NumberPrefix  :=  Copy(ADisplayText, 7,2) ;
      //  Action := eaAccept ;
      //  LongPkgNo := AValue ;//inttoStr(NewPkgNo) + NumberPrefix ;

        ChangeClickedPackage(NewPkgNo, NumberPrefix, ADisplayText, sp_allPkgsatoutputSupplierCode.AsString);
        dmInventory.Refresh_PkgsToReposition ;
//        PanelPkgToPosition
      End
     Finally
      sp_allPkgsatoutput.IndexName := 'allPkgsAtOutput_Index01' ;
     End;
   grdPkgOutputDBTableView1.Invalidate();
  End;
end;

procedure TfrmMain.grdPkgOutputDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
//  if AViewInfo.Value < 0 then
//    ACanvas.FillRect(AViewInfo.Bounds, <AColor>);

  if ((AViewInfo.Value) <> null) and (ScannedPkg(AViewInfo.Value)) then
   ACanvas.FillRect(AViewInfo.Bounds, clGreen);
end;

function TfrmMain.ScannedPkg(const AViewInfo  : String) : Boolean ;
Begin
 with dmInventory do
 Begin
   if mtScannedPkgs.FindKey([AViewInfo]) then
    Result  := True
     else
      Result  := False ;
 End;
End;

procedure TfrmMain.grdPkgOutputDBTableView1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin

{
    if AText = '283276' then
     AText  := Sender.Caption
      else
        if AText = '914195' then
          AText  := Sender.Caption ;
}

 AText  := dmInventory.GetPackageDescription(AText) ;

end;

procedure TfrmMain.grdPkgOutputDBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
// ShowMessage('mouse down');
end;

procedure TfrmMain.grdPkgOutputDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;
begin
{
    aValue := ARecord.Values[AItem.Index];

    if (ARecord.Values[AItem.Index] <> null) and (AItem <> nil) and
    (aValue = '86457518') then
     AStyle:= cxStyleMarkedPkgs ;

}
end;

procedure TfrmMain.grdPkgsPerMPDBChartView1ValueClick(Sender: TcxGridChartView;
  ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHandled: Boolean);
begin
 PanelPkgsPerLine.Visible := False ;
end;

procedure TfrmMain.SetGridParamsFor_Usersmonpu_piv(Sender: TObject;const ShowAll : Boolean);
Var Save_Cursor : TCursor;
    ColumnName  : String ;
 //   aColumn     : TcxGridDBBandedColumn ;
    x           : Integer ;
begin
 Try
 grdPkgOutputDBTableView1.ClearItems ;

 grdPkgOutputDBTableView1.DataController.CreateAllItems(True) ;

  Except
   on E: eDatabaseError do
   Begin
    ShowMessage(
{TSI:IGNORE ON}
	'ClearItems, CreateAllItems '
{TSI:IGNORE OFF}
 + E.Message) ;
    Raise ;
   End ;
  End ;

   for x := cFirstColumnNoWithRegPoint to grdPkgOutputDBTableView1.ColumnCount - 1 do
   Begin
//    grdPkgOutputDBTableView1.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle ;
//    grdDBBandedPerSortiment.Columns[x].OnCustomDrawHeader       := grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader ;


    grdPkgOutputDBTableView1.Columns[x].OnGetDisplayText  := grdPkgOutputDBTableView1GetDisplayText ;
    ColumnName                                            := grdPkgOutputDBTableView1.Columns[x].Caption ;
    if not ShowAll then
     grdPkgOutputDBTableView1.Columns[x].Visible           := dmInventory.CheckIfColumnVisible(ColumnName)
      else
       grdPkgOutputDBTableView1.Columns[x].Visible           := True ;
   End;

{
   for x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount - 1 do
   Begin
    grdDBBandedPerSortiment.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle ;
    grdDBBandedPerSortiment.Columns[x].OnCustomDrawHeader       := grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader ;
   End;



  // SetFilter ;

   dmInventory.sp_invpiv.FieldByName('Paket').DisplayLabel              := 'Paket' ;
   dmInventory.sp_invpiv.FieldByName('LP').DisplayLabel                 := 'PT' ;
   dmInventory.sp_invpiv.FieldByName('PIP').DisplayLabel                := 'St?lle' ;
   dmInventory.sp_invpiv.FieldByName('LIP').DisplayLabel                := 'Grupp' ;
   dmInventory.sp_invpiv.FieldByName('ProductDisplayName').DisplayLabel := 'Produkt' ;
   dmInventory.sp_invpiv.FieldByName('PackageSizeName').DisplayLabel    := 'Storlek' ;

   dmInventory.sp_invpiv.FieldByName('AT').DisplayLabel                 := 'AT' ;
   dmInventory.sp_invpiv.FieldByName('AB').DisplayLabel                 := 'AB' ;

   dmInventory.sp_invpiv.FieldByName('AvgLength').DisplayLabel          := 'Medell?ngd' ;



   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('productNo');
   aColumn.Visible  := False ;
   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PIPNo');
   aColumn.Visible  := False ;
   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LIPNo');
   aColumn.Visible  := False ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('MFBM');
   aColumn.Visible  := False ;
   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('ProductValue');
   aColumn.Visible  := False ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('InventorySource');
   aColumn.Visible  := False ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AT');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 1 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AB');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 1 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('ProductDisplayName');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 1 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PackageSizeName');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 1 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Package_Size');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 1 ;


   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LP');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 1 ;
   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('NM3');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM3');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM1');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM2');
   aColumn.Visible  := False ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Styck');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Paket');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AvgLength');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PIP');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 3 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LIP');
   aColumn.Visible  := True ;
   aColumn.Position.BandIndex := 3 ;

   For x := cFirstLengthFieldNumber to dmInventory.sp_invpiv.FieldCount -1 do
   Begin
    dmInventory.sp_invpiv.Fields.Fields[x].ReadOnly  := False ;
    dmInventory.sp_invpiv.Fields.Fields[x].Required  := False ;
   End ;

   For x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount - 1 do
    Begin
     grdDBBandedPerSortiment.Columns[x].Position.BandIndex  := 2 ;
    End ;


      LoadGridLayoutSortimentsVy ;

   grdDBBandedPerSortiment.BeginUpdate ;
   Try
     For x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount -1 do

     if Length(grdDBBandedPerSortiment.Columns[x].Caption) = 0 then
     Begin
      grdDBBandedPerSortiment.Columns[x].Visible  := False ;
     End
       else
       Begin
        grdDBBandedPerSortiment.Columns[x].Visible  := True ;

       End;

   Finally
    grdDBBandedPerSortiment.EndUpdate ;
   End ;

   SetSummary_grdDBBandedPerSortiment(Sender) ;

   grdDBBandedPerSortiment.Bands[0].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_11' (* 'PAKET ID' *) );
   grdDBBandedPerSortiment.Bands[1].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_12' (* 'PRODUKT' *) );
   grdDBBandedPerSortiment.Bands[2].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_5' (* 'NM3 PER L?NGD' *) );
   grdDBBandedPerSortiment.Bands[3].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_14' (* 'LAGER' *) );
   grdDBBandedPerSortiment.Bands[4].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_15' (* 'KVANTITET' *) );

   FormatLengthColumns ;


   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PIP');
   aColumn.Position.BandIndex := 3 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LIP');
   aColumn.Position.BandIndex := 3 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('NM3');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM3');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM1');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AM2');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('MFBM');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Styck');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Paket');
   aColumn.Position.BandIndex := 4 ;

   aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AvgLength');
   aColumn.Position.BandIndex := 4 ;
}
end;

procedure TfrmMain.acAndraPaketExecute(Sender: TObject);
var  fchgPkgVard: TfchgPkgVard;
begin
 fchgPkgVard:= TfchgPkgVard.Create(nil) ;
 try
  fchgPkgVard.ShowModal ;
 finally
  FreeAndNil(fchgPkgVard) ;
 end;
end;

procedure TfrmMain.Open_cds_PropsInv ;
Var IndexNo : integer ;
Begin
    if cds_PropsInv.Active then
    cds_PropsInv.Active := False;
    Try
    cds_PropsInv.ParamByName('UserID').AsInteger := thisuser.userid;
//    cds_PropsInv.ParamByName('Name').AsString := cds_mallName.AsString;
    cds_PropsInv.ParamByName('Form').AsString := 'Truck_frmMain';
    // cds_mallName.AsString ;
//    cds_PropsInv.ParamByName('LOObjectType').AsInteger := 1;
    cds_PropsInv.Active := True;
    if (cds_PropsInv.RecordCount > 0) AND (cds_PropsInvName.AsString > '') then
    Begin
      dxSkinController1.SkinName  := cds_PropsInvName.AsString ;
      dxRibbon1.ColorSchemeName   := dxSkinController1.SkinName ;
      IndexNo := dxBarCombo1.Items.IndexOf(cds_PropsInvName.AsString) ;
      if IndexNo > -1 then
      dxBarCombo1.ItemIndex := IndexNo ;
    End
    else
   Begin
    dxSkinController1.SkinName  := 'Office2013DarkGray' ;
    dxRibbon1.ColorSchemeName   := 'Office2013DarkGray' ;
   End;
    Finally
      cds_PropsInv.Active := False;
    End;
End;

procedure TfrmMain.Save_cds_PropsInv ;
Var IndexNo : integer ;
Begin

    if cds_PropsInv.Active then
    cds_PropsInv.Active := False;
    cds_PropsInv.ParamByName('UserID').AsInteger := thisuser.userid;
//    cds_PropsInv.ParamByName('Name').AsString := cds_mallName.AsString;
    cds_PropsInv.ParamByName('Form').AsString := 'Truck_frmMain';
    // cds_mallName.AsString ;
//    cds_PropsInv.ParamByName('LOObjectType').AsInteger := 1;
    cds_PropsInv.Active := True;
    if (cds_PropsInv.RecordCount > 0) AND (cds_PropsInvName.AsString > '') then
    Begin
     cds_PropsInv.Edit ;
     cds_PropsInvName.AsString  := dxBarCombo1.Items.Strings[dxBarCombo1.ItemIndex] ;
     cds_PropsInv.Post ;
    End
    else
    Begin
     cds_PropsInv.Insert ;
     cds_PropsInvName.AsString  := dxBarCombo1.Items.Strings[dxBarCombo1.ItemIndex] ;
     cds_PropsInv.Post ;
    End;

End;


end.
