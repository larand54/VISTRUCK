unit fLoadOrder;

interface

uses
//  SyncObjs,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  fDBForm,
  ActnList,
  ImgList,
  ComCtrls,
  ExtCtrls,
  ToolWin,

  DBCtrls,
  StdCtrls,
  Menus,
  dxBar, dxBarExtItems,
  Buttons,


  SqlTimSt, DB, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxImageComboBox, cxTextEdit, dxPScxCommon,
  cxGridExportLink,
  cxExport, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeels, // DBTables,
  cxCurrencyEdit, kbmMemTable, cxSplitter,
  cxShellBrowserDialog, ShlObj, cxShellCommon, cxShellListView,
  cxLookAndFeelPainters, cxButtons, cxPC, cxCalendar, cxDBEdit, cxCheckBox,
 { clFTPUtils,
  clTcpClient, clFtp,} FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxPropertiesStore,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxRibbonPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu, siComp,
  siLngLnk, System.Actions, udmFR, uReportController, uReport, System.Generics.Collections, dxPScxPivotGridLnk,
  dxPSLbxLnk, dxPSTextLnk, dxSkinOffice2019Colorful, dxDateRanges,
  dxScrollbarAnnotations, cxImageList, System.ImageList, dxSkinBasic;

  Const
    CM_MOVEIT = WM_USER + 1;

    UM_AFTERDETAILCHANGEINQ = WM_USER + 10000;

type
  TeFdate32 = (modD, creaD, accD);

type
  TfrmVisTruckLoadOrder = class(TForm)
    pnlLOList: TPanel;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbOpenLoad: TdxBarLargeButton;
    lbNewLoad: TdxBarLargeButton;
    bPrintLOAllVerk: TdxBarButton;
    bPrintLODittVerk: TdxBarButton;
    bAllaLasterPerLO: TdxBarButton;
    imglistActions: TImageList;
    ActionList_DBForm: TActionList;
    atRefresh: TAction;
    atAcceptLoadOrder: TAction;
    atRejectLoadOrder: TAction;
    atCompletedLoadOrder: TAction;
    atNewLoad: TAction;
    atSetToONHOLD: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    atProductionComplete: TAction;
    atPreliminary: TAction;
    images1616: TImageList;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    ImageList1: TImageList;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    acSetToNEW: TAction;
    lbNewLoadWithLO: TdxBarLargeButton;
    bbAvropVerk: TdxBarButton;
    ccShowAll: TdxBarControlContainerItem;
    bbTallyUSA: TdxBarButton;
    bbTallyVer2: TdxBarButton;
    bbTally_USA: TdxBarButton;
    bbAvrakningSpecVer2: TdxBarButton;
    bbChangeLayout: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    acSamlingFS: TAction;
    dxBarButton1: TdxBarButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acChangeLOLayout: TAction;
    acSaveChanges: TAction;
    acCancelChanges: TAction;
    pmLOGrid: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acConfirmCancel: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acShowLOGroupByBox: TAction;
    dxBarButton12: TdxBarButton;
    acChangeLoadLayout: TAction;
    pmLoadGrid: TdxBarPopupMenu;
    acNewLoadWithLO: TAction;
    acOpenLoad: TAction;
    acPrintLOWYSWYG: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acExportToXLS: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    SaveDialog2: TSaveDialog;
    acSearchLoadNo: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    cxb: TPopupMenu;
    Ny1: TMenuItem;
    bcLastLoadNoOpen: TdxBarCombo;
    bbGoToLoad: TdxBarButton;
    acAddToLastLoadList: TAction;
    dxBarButton16: TdxBarButton;
    acSpec_ALLA_Laster: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    acClose: TAction;
    acBooking: TAction;
    pmShortcuts: TPopupMenu;
    Bokning1: TMenuItem;
    Stng1: TMenuItem;
    NyLastmotLOnr1: TMenuItem;
    ppnalast1: TMenuItem;
    WYSIWYG1: TMenuItem;
    Spara1: TMenuItem;
    Uppdatera1: TMenuItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Timer1: TTimer;
    Timer2: TTimer;
    acShowPriceList: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton24: TdxBarButton;
    acPrintLOStatus: TAction;
    acPrintMarkedLOs: TAction;
    mtMarkedRows: TkbmMemTable;
    mtMarkedRowsKeyField: TIntegerField;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    acSkapaPaketKoder: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    acLOLengths: TAction;
    dxBarButton27: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acLoadOrderListSetup: TAction;
    acNewLoadNoLo: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    cxSplitter1: TcxSplitter;
    acChangeLOonLoad: TAction;
    dxBarButton28: TdxBarButton;
    acAddLONrToSyncFile: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    acReadImportedPackages: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    acAddMarkedLOToSyncFile: TAction;
    acSelectFileToCreateLoad: TAction;
    mtImportedLoads: TkbmMemTable;
    mtImportedLoadsLoadNo: TIntegerField;
    mtImportedLoadsLONo: TIntegerField;
    acSaveBooking: TAction;
    acAngeSynkMappen: TAction;
    acPrintmeny: TAction;
    SkrivutF81: TMenuItem;
    SparaShiftF31: TMenuItem;
    SparaF31: TMenuItem;
    ngraF41: TMenuItem;
    ExptillXLSF111: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1clYellow: TcxStyle;
    acPrintFSMisMatch: TAction;
    acPrintFSMisMatch1: TMenuItem;
    dxBarButton29: TdxBarButton;
    acSearch: TAction;
    SkF71: TMenuItem;
    dxBarLargeButton9: TdxBarLargeButton;
    acBytMellanBTBochBTH: TAction;
    mtImportedLoadsAntalPaket: TIntegerField;
    acImportPkgs: TAction;
    acOpenFS: TAction;
    acDeleteLoad_Imp: TAction;
{    clFTP: TclFtp; }
    acSendLoadOrderNoToHH: TAction;
    acAddMarkedLONoToSendList: TAction;
    acAddLOnoToSendList: TAction;
    acPrintLOList: TAction;
    mtMarkedRowsSSPNo: TIntegerField;
    acRemoveLOHHRow: TAction;
    acRemoveALLLOHHRows: TAction;
    acDeleteALLLoad_Imp: TAction;
    Memo1: TMemo;
    acEmailaFS: TAction;
    dxBarButton30: TdxBarButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acUtlastningsSpec: TAction;
    cxStyle1Red: TcxStyle;
    dxBarLargeButton10: TdxBarLargeButton;
    lbLO_To_Invoice: TListBox;
    tcLO: TcxTabControl;
    pnlLoad: TPanel;
    pmPrintmenu: TPopupMenu;
    acPrintFS: TAction;
    Fljesedel1: TMenuItem;
    cxImageList1: TcxImageList;
    cxGridPopupMenu3: TcxGridPopupMenu;
    Panel1: TPanel;
    grdLO: TcxGrid;
    grdLODBTableView1: TcxGridDBTableView;
    grdLODBTableView1Supplier: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanStatus: TcxGridDBColumn;
    grdLODBTableView1LONumber: TcxGridDBColumn;
    grdLODBTableView1PKGCode: TcxGridDBColumn;
    grdLODBTableView1Product: TcxGridDBColumn;
    grdLODBTableView1Length: TcxGridDBColumn;
    grdLODBTableView1FromWeek: TcxGridDBColumn;
    grdLODBTableView1ToWeek: TcxGridDBColumn;
    grdLODBTableView1Volume: TcxGridDBColumn;
    grdLODBTableView1ShipTo: TcxGridDBColumn;
    grdLODBTableView1UnitName: TcxGridDBColumn;
    grdLODBTableView1Destination: TcxGridDBColumn;
    grdLODBTableView1ClientName: TcxGridDBColumn;
    grdLODBTableView1SUPP_NAME: TcxGridDBColumn;
    grdLODBTableView1LOADING: TcxGridDBColumn;
    grdLODBTableView1LOCAL_CUST: TcxGridDBColumn;
    grdLODBTableView1INITIALS: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1ShippersShipDate: TcxGridDBColumn;
    grdLODBTableView1BarCode: TcxGridDBColumn;
    grdLODBTableView1REFERENS: TcxGridDBColumn;
    grdLODBTableView1SKAPAD: TcxGridDBColumn;
    grdLODBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1NT: TcxGridDBColumn;
    grdLODBTableView1NB: TcxGridDBColumn;
    grdLODBTableView1AT: TcxGridDBColumn;
    grdLODBTableView1AB: TcxGridDBColumn;
    grdLODBTableView1TT: TcxGridDBColumn;
    grdLODBTableView1TB: TcxGridDBColumn;
    grdLODBTableView1TS: TcxGridDBColumn;
    grdLODBTableView1UT: TcxGridDBColumn;
    grdLODBTableView1KV: TcxGridDBColumn;
    grdLODBTableView1PK: TcxGridDBColumn;
    grdLODBTableView1CustomerShowInGrid: TcxGridDBColumn;
    grdLODBTableView1OrderNo: TcxGridDBColumn;
    grdLODBTableView1Delivery_WeekNo: TcxGridDBColumn;
    grdLODBTableView1CSH_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1CHCustomerNo: TcxGridDBColumn;
    grdLODBTableView1SPCustomerNo: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn;
    grdLODBTableView1OrderType: TcxGridDBColumn;
    grdLODBTableView1INTLNGD: TcxGridDBColumn;
    grdLODBTableView1RADREFERENS: TcxGridDBColumn;
    grdLODBTableView1KONTRAKTSBESKRIVNING: TcxGridDBColumn;
    grdLODBTableView1MARKNAD: TcxGridDBColumn;
    grdLODBTableView1Pris: TcxGridDBColumn;
    grdLODBTableView1ShowInGrid: TcxGridDBColumn;
    grdLODBTableView1ProductGroupNo: TcxGridDBColumn;
    grdLODBTableView1PriceListName: TcxGridDBColumn;
    grdLODBTableView1PcsPerPkg: TcxGridDBColumn;
    grdLODBTableView1PackageWidth: TcxGridDBColumn;
    grdLODBTableView1PackageHeight: TcxGridDBColumn;
    grdLODBTableView1PkgCodePPNo: TcxGridDBColumn;
    grdLODBTableView1ProdInstruNo: TcxGridDBColumn;
    grdLODBTableView1ProductNo: TcxGridDBColumn;
    grdLODBTableView1ProductLengthNo: TcxGridDBColumn;
    grdLODBTableView1LanguageCode: TcxGridDBColumn;
    grdLODBTableView1ALMM: TcxGridDBColumn;
    grdLODBTableView1SequenceNo: TcxGridDBColumn;
    grdLODBTableView1Lagergrupp: TcxGridDBColumn;
    grdLOLevel1: TcxGridLevel;
    PanelMainLOMenu: TPanel;
    teSearchLONo: TcxTextEdit;
    teSearchLoadNo: TcxTextEdit;
    lcVerk: TcxDBLookupComboBox;
    icStatus: TcxDBImageComboBox;
    icOrderTypeNo: TcxDBImageComboBox;
    lcLaststlle: TcxDBLookupComboBox;
    lcDestination: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton7: TcxButton;
    teMultiSearch: TcxTextEdit;
    PanelLoadDetail: TPanel;
    grdFS: TcxGrid;
    grdFSDBTableView1: TcxGridDBTableView;
    grdFSDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdFSDBTableView1LoadNo: TcxGridDBColumn;
    grdFSDBTableView1LoadID: TcxGridDBColumn;
    grdFSDBTableView1LoadedDate: TcxGridDBColumn;
    grdFSDBTableView1SenderLoadStatus: TcxGridDBColumn;
    grdFSDBTableView1Pcs: TcxGridDBColumn;
    grdFSDBTableView1ActualM3: TcxGridDBColumn;
    grdFSDBTableView1NominalM3: TcxGridDBColumn;
    grdFSDBTableView1LinealMeter: TcxGridDBColumn;
    grdFSDBTableView1MFBM: TcxGridDBColumn;
    grdFSDBTableView1FS: TcxGridDBColumn;
    grdFSDBTableView1VERK: TcxGridDBColumn;
    grdFSDBTableView1ANTPKT: TcxGridDBColumn;
    grdFSDBTableView1SupplierNo: TcxGridDBColumn;
    grdFSDBTableView1AR: TcxGridDBColumn;
    grdFSDBTableView1AR_AV: TcxGridDBColumn;
    grdFSDBTableView1LoadAR: TcxGridDBColumn;
    grdFSDBTableView1PackageEntryOption: TcxGridDBColumn;
    grdFSLevel1: TcxGridLevel;
    pnlLowerGridHdr: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bbBookingForm: TBitBtn;
    bbSave: TBitBtn;
    deShippersShipDate: TcxDBDateEdit;
    ePreliminaryRequestedPeriod: TcxDBTextEdit;
    ePanic_Note: TcxDBTextEdit;
    eSupplierReference: TcxDBTextEdit;
    eShippingCompanyBookingID: TcxDBTextEdit;
    eCarrierName: TcxDBTextEdit;
    deETD: TcxDBDateEdit;
    eClientName: TcxDBTextEdit;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    acIncreaseHeaderFont: TAction;
    acDecreaseHeaderFont: TAction;
    acIncreaseContentFont: TAction;
    acDecreaseContentFont: TAction;
    dxBarButton31: TdxBarButton;
    cxEditStyleControllerEditControls: TcxEditStyleController;
    cxEditStyleControllerFileldLabels: TcxEditStyleController;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    SpinEditRubrikFontSortimentsVy: TdxBarSpinEdit;
    SpinEditContentFontSortimentsVy: TdxBarSpinEdit;
    cxStylePopMenu: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    acSaveVyer: TAction;
    cxButton8: TcxButton;
    LOallaverk1: TMenuItem;
    Lastorderertverk1: TMenuItem;
    Specificationallalaster1: TMenuItem;
    Mailafljesedel1: TMenuItem;
    teREF: TcxTextEdit;
    cxLabel8: TcxLabel;
    acPrintCMR: TAction;
    acPrintCMR1: TMenuItem;
    cbShowOnlySelectedVerksLOs: TcxDBCheckBox;
    grdLODBTableView1ETD: TcxGridDBColumn;
    grdLODBTableView1ETA: TcxGridDBColumn;
    grdLODBTableView1Package_Size: TcxGridDBColumn;
    grdLODBTableView1PackageSizeName: TcxGridDBColumn;
    dxBarButton32: TdxBarButton;
    acChangePackage_Size: TAction;
    grdLODBTableView1Lngd: TcxGridDBColumn;
    grdLODBTableView1PkgArticleNo: TcxGridDBColumn;
    grdLODBTableView1LOGroupNo: TcxGridDBColumn;
    grdLODBTableView1LOBuffertName: TcxGridDBColumn;
    Timer3: TTimer;
    teReferens: TcxTextEdit;
    cxLabel9: TcxLabel;
    grdLODBTableView1LoadedPkgs: TcxGridDBColumn;
    grdLODBTableView1LoadedNM3: TcxGridDBColumn;
    grdLODBTableView1PlanPaket: TcxGridDBColumn;
    grdLODBTableView1PlanAM3: TcxGridDBColumn;
    grdLODBTableView1ProducedAM3: TcxGridDBColumn;
    grdLODBTableView1ProducedPKT: TcxGridDBColumn;
    grdLODBTableView1Order_AM3: TcxGridDBColumn;
    siLangLinked_frmVisTruckLoadOrder: TsiLangLinked;
    cxButton9: TcxButton;
    grdLODBTableView1Internnotering: TcxGridDBColumn;
    Label9: TLabel;
    tedbLength: TcxDBTextEdit;
    grdFSDBTableView1Position: TcxGridDBColumn;
    grdFSDBTableView1ShortNote: TcxGridDBColumn;
    grdLODBTableView1LoadedAM3: TcxGridDBColumn;
    grdLODBTableView1Produktnotering: TcxGridDBColumn;
    acPrintTO: TAction;
    acPrintTO_Manually: TAction;
    dxbbtnPrintTO_Manually: TdxBarButton;
    dxbbtnPrintTO: TdxBarButton;
    acPrintLO_Your_Mill_Manually: TAction;
    acPrintLO_All_Mills_Manually: TAction;
    LO_YourMill_Manually: TdxBarButton;
    LO_All_Mills_Manually: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    LOallaverkManuell1: TMenuItem;
    LOertverkManuell1: TMenuItem;
    O1: TMenuItem;
    OManuell1: TMenuItem;
    acPrintLO_Your_Mill: TAction;
    acPrintLO_All_Mills: TAction;
    acMailTO_Manually: TAction;
    acMailTOManually1: TMenuItem;
    LOkontroll1: TMenuItem;
    dxBarButton35: TdxBarButton;
    sq_GetLONos: TFDQuery;
    grdFSDBTableView1LocalShippingCompany: TcxGridDBColumn;
    cxLabel10: TcxLabel;
    grdLODBTableView1Lagerkod: TcxGridDBColumn;
    dxBarLargeButton11: TdxBarLargeButton;
    acSendWoodxDeliveryMessage: TAction;
    cxButton10: TcxButton;
    grdFSDBTableView1Lagerkod: TcxGridDBColumn;

    procedure atAcceptLoadOrderExecute(Sender: TObject);
    procedure atRejectLoadOrderExecute(Sender: TObject);
    procedure atCompletedLoadOrderExecute(Sender: TObject);
    procedure atRefreshExecute(Sender: TObject);
    procedure atNewLoadExecute     (Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure atSetToONHOLDExecute(Sender: TObject);
    procedure bPrintHyvelOrderClick(Sender: TObject);
    procedure bPrintLOAllVerkClick(Sender: TObject);
    procedure bPrintLODittVerkClick(Sender: TObject);
    procedure bAllaLasterPerLOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atProductionCompleteExecute(Sender: TObject);
    procedure atPreliminaryExecute(Sender: TObject);
    procedure acSetToNEWExecute(Sender: TObject);
    procedure bbAvropVerkClick(Sender: TObject);
    procedure eRedoDagExit(Sender: TObject);
    procedure Visagrupperingsrutan1Click(Sender: TObject);
    procedure bbTallyVer2Click(Sender: TObject);
    procedure bbTally_USAClick(Sender: TObject);
    procedure bbAvrakningSpecVer2Click(Sender: TObject);
    procedure acSamlingFSExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure acSaveChangesExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acConfirmCancelExecute(Sender: TObject);
    procedure acShowLOGroupByBoxExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acNewLoadWithLOExecute(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acPrintLOWYSWYGExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acSearchLoadNoExecute(Sender: TObject);
    procedure acSpec_ALLA_LasterExecute(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acNewLoadWithLOUpdate(Sender: TObject);
    procedure acOpenLoadUpdate(Sender: TObject);
    procedure acPrintLOWYSWYGUpdate(Sender: TObject);
    procedure acExportToXLSUpdate(Sender: TObject);
    procedure acSaveChangesUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acBookingUpdate(Sender: TObject);
    procedure acPrintLOStatusExecute(Sender: TObject);
    procedure acPrintMarkedLOsExecute(Sender: TObject);
    procedure acSkapaPaketKoderExecute(Sender: TObject);
    procedure acLOLengthsExecute(Sender: TObject);
    procedure acLOLengthsUpdate(Sender: TObject);
    procedure acLoadOrderListSetupExecute(Sender: TObject);
    procedure grdLODBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure acPrintMarkedLOsUpdate(Sender: TObject);
    procedure acChangeLOonLoadExecute(Sender: TObject);
    procedure acChangeLOonLoadUpdate(Sender: TObject);
    procedure acSaveBookingExecute(Sender: TObject);
    procedure acSaveBookingUpdate(Sender: TObject);
    procedure acPrintmenyExecute(Sender: TObject);
    procedure acPrintFSMisMatchExecute(Sender: TObject);
    procedure teSearchLONoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure teSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSearchExecute(Sender: TObject);
    procedure acBytMellanBTBochBTHExecute(Sender: TObject);
    procedure acOpenFSUpdate(Sender: TObject);
    procedure acEmailaFSExecute(Sender: TObject);
    procedure grdLODBTableView1DblClick(Sender: TObject);
    procedure tcLOChange(Sender: TObject);
    procedure acPrintFSExecute(Sender: TObject);
    procedure teMultiSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tcLOCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure pmLOGridPopup(Sender: TObject);
    procedure SpinEditRubrikFontSortimentsVyCurChange(Sender: TObject);
    procedure SpinEditContentFontSortimentsVyCurChange(Sender: TObject);
    procedure acSaveVyerExecute(Sender: TObject);
    procedure Hyvelorder1Click(Sender: TObject);
    procedure Specificationallalaster1Click(Sender: TObject);
    procedure acPrintCMRExecute(Sender: TObject);
    procedure acChangePackage_SizeExecute(Sender: TObject);
    procedure teREFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer3Timer(Sender: TObject);
    procedure teReferensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdFSDBTableView1DblClick(Sender: TObject);
    procedure grdFSDBTableView1InitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure grdFSExit(Sender: TObject);
    procedure grdLODBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure acPrintTOExecute(Sender: TObject);
    procedure acPrintTO_ManuallyExecute(Sender: TObject);
    procedure acPrintLO_Your_Mill_ManuallyExecute(Sender: TObject);
    procedure acPrintLO_All_Mills_ManuallyExecute(Sender: TObject);
    procedure PrintLO_Manually(aSupplierNo: integer);
    procedure acPrintLO_Your_MillExecute(Sender: TObject);
    procedure acPrintLO_All_MillsExecute(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure acSendWoodxDeliveryMessageExecute(Sender: TObject);
    procedure acSendWoodxDeliveryMessageUpdate(Sender: TObject);
    procedure grdFSDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  private
    { Private declarations }
    LastUsedLOTemplate,
    FileName, ExcelDir, LODir : String ;
    SearchOneLO : Boolean ;
    SupplierShipPlanObjectNo : Integer ;
    OrderTypeChanged   : Boolean ;
    LOs : TStringList ;
    procedure CheckSamlast ;
    procedure BuildGetLONos ;
    procedure CancelChangesExecute ;
    procedure SaveChangesExecute ;
    procedure UmAfterDetailChangeINQ(var Message: TMessage); message UM_AFTERDETAILCHANGEINQ;
    function  GetPositionID : Integer ;
    procedure PreviewCMR(Sender: TObject) ;
    procedure PrintDirectCMR(Sender: TObject);
    procedure PRE_PreviewCMR(Sender: TObject) ;
    procedure SetPanelToShowAndHide ;
    procedure CreateLoadForm ;
    procedure ClearLOTab ;
    procedure AddLoadNoTab(const LONo, LoadNo, Lagerkod : String) ;
//    procedure OpenUtlastningsSpec(Sender: TObject);
    function  OpenNormalLoad(const LONo, LoadNo : Integer;const Lagerkod : String) : Boolean ;
    procedure BuildVIDAWOODGetOne_LO_SQL(Sender: TObject);
//    procedure CleanFromNotWantedFiles ;
//    procedure AddLONosToFileName ;
//    procedure FillDirList;
//    Procedure RetrieveFiles(const FileName : String) ;
//    procedure DoOpenDir(const ADir: string);
//    function  GetFilesWithFtp : Boolean ;
//    procedure StartPkgTransfer(const FileName : String) ;
//    procedure OpenInScanform ;
//    procedure StepThruAllImportedLoads ;
//    procedure CreateLoadAndEntryTo_Load_Imp(const L_SupplierNo, LONo, TempLoadNo : Integer;const Fil, Mapp : String) ;
//    procedure AddMarkedLOToFile (Sender: TObject;const Mapp : String;const NewFile : Boolean) ;
    procedure GetLO(const LONo : Integer;Sender: TObject) ;
    procedure GetMarkedRows(Sender: TObject);
    procedure GetMarkedRows_II(Sender: TObject);
    procedure CloseDataSet ;
    function  DataSaved : Boolean ;
    procedure ProtectTheData;
    procedure BuildLOSQL(Sender: TObject;const LONo : Integer);
    procedure CheckIfChangesUnSaved ;
    procedure RefreshLoadOrders(Sender: TObject);
    procedure GotoMyBookmark(Sender: TObject) ;
    procedure SetMyBookmark(Sender: TObject) ;
    procedure BuildGetOne_LO_SQL(Sender: TObject);
    procedure GetOneLO(Sender: TObject);
    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationMedPktnr(Sender: TObject;const SamLastNr : Integer);
    procedure GenerateSamlingFS_2(Sender: TObject);
    procedure GenerateSamlingFS_MedPktNr(Sender: TObject);
    procedure SetLOStatus(Sender: TObject;Status : Integer);
    procedure SetShippingPlanStatus(const Status : Integer) ;
//    procedure AddLoadNoToList(const LoadNo, LONo : Integer);
    procedure Generate_samLastDataForMarkedLoads(Sender: TObject);
    procedure Generate_AllLoads_samLastData(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK_MARKERADE(Sender: TObject);
    procedure SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
    procedure PrintLO (const ShippingPlanNo : Integer) ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT ;
    procedure FastReportLO(const aLOno, aSupplier, aLang: integer;
                           const aLastOrderVerk, aLastOrderInkop, aStatusRapport: boolean);
  protected

    procedure LoadUserPreferences;
    procedure SaveUserPreferences;

  public
    { Public declarations }
    procedure RemoveTab(const LONo, LoadNo : Integer;const Lagerkod : String);
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var

  frmVisTruckLoadOrder: TfrmVisTruckLoadOrder;
  OriginalPos : String;

implementation

{$R *.dfm}

uses
//--LARS  DB,
  dateUtils,
  psAPI,
  FileCtrl,
  //hahFindFiles,
  recerror,
  dmcVidaOrder,
  VidaConst,
  VidaType,
  VidaUser,
  VidaUtils, // UnitCRViewReport,
  UnitLoadEntrySSP, UnitBookingForm, dmsVidaContact, dmcVidaSystem,
  dmcLoadEntrySSP, dmc_ArrivingLoads, dmsDataConn, uEntryField,
  dmsVidaSystem, // UnitCRPrintReport,
  uLOLengths, uLoadOrderListSetup , dmBooking,
  uLoadOrderSearch, //UnitCRExportOneReport,
  dmc_UserProps, uSelectPrintDevice , uEnterLoadWeight, //UnitCRPrintOneReport ,
  uLagerPos, uFastReports, dmsUserAdm, uVIS_UTILS, udmFRSystem, uFastReports2, uFixMail, uFRAccessories, uFRConstants,
  uSamlastInfo;

procedure TfrmVisTruckLoadOrder.UmAfterDetailChangeINQ(var Message: TMessage) ; //message UM_AFTERDETAILCHANGEINQ;
Begin
 if OpenNormalLoad(grdFSDBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger,
 grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
 grdFSDBTableView1.DataController.DataSet.FieldByName('Lagerkod').AsString)  then
 begin
  // grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger) ;
   SetPanelToShowAndHide ;

   if assigned(fLoadEntrySSP) then
   begin
    if fLoadEntrySSP.mePackageNo.Enabled then
     fLoadEntrySSP.mePackageNo.SetFocus
      else
       fLoadEntrySSP.grdLORows.SetFocus ;
   end;


 end;
End;


procedure TfrmVisTruckLoadOrder.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdLODBTableView1.Controller.EditingController.HideEdit(True);
   grdLODBTableView1.Controller.FocusNextCell(AGoForward)
end;

function TfrmVisTruckLoadOrder.DataSaved : Boolean ;
begin
 if (dmcOrder.cdsSawmillLoadOrders.Active) and (dmcOrder.cdsSawmillLoadOrders.RecordCount > 0) then
 Begin
 Result:= True ;
 if (dmcOrder.cdsBooking.Active = False) or (dmcOrder.cdsSawmillLoadOrders.Active = False) then
 Begin
  Result:= False ;
  Exit ;
 End ;
 if dmcOrder.cdsBooking.State in [dsEdit, dsInsert] then
  Result:= False ;
 if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
  Result:= False ;

 if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
  Result:= False ;
 if dmcOrder.cdsBooking.ChangeCount > 0 then
  Result:= False ;
 End
  else
   Result:= True ;
end;

Procedure TfrmVisTruckLoadOrder.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }

 dmcOrder.Shipping:= 0 ;

 OrderTypeChanged:= True ;
// cbSupplier.Properties.OnChange   := Nil ;
// cbOrderType.Properties.OnChange  := NIL ;

// cbOrderType.ItemIndex:= 0 ;
 Try
{  For x:= 0 to cbSupplier.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(cbSupplier.Properties.Items.Objects[x]) then
  Begin
   cbSupplier.ItemIndex:= x ;
   dmcOrder.SupplierNo:= integer(cbSupplier.Properties.Items.Objects[x]);
  End ;}

  if dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego then
   lcVerk.Properties.ReadOnly := True
    else
     lcVerk.Properties.ReadOnly := False ;

  SupplierShipPlanObjectNo:= 0 ;
  dmcOrder.cdsBooking.Active:= True ;

  if ThisUser.UserID = 8 then
  Begin
   acSelectFileToCreateLoad.Enabled := True ;
   acSelectFileToCreateLoad.Visible := True ;
  End ;

  dmsSystem.cds_Load_Imp.Active := False ;
  dmsSystem.cds_Load_Imp.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  dmsSystem.cds_Load_Imp.Active := True ;

  dmcOrder.cds_LOListHH.Active := False ;
  dmcOrder.cds_LOListHH.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  dmcOrder.cds_LOListHH.Active := True ;

  //atRefreshExecute(Sender) ;

 Finally
//  cbSupplier.Properties.OnChange  := cbSupplierPropertiesCloseUp ;
//  cbOrderType.Properties.OnChange := cbOrderTypePropertiesChange ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.atRefreshExecute(Sender: TObject);
begin
 SetMyBookMark(Sender) ;
 CheckIfChangesUnSaved ;
// if cbShowAll.Checked then
//  Begin
   BuildLOSQL(Sender, -1) ;
   RefreshLoadOrders(Sender);
//  End
//  else
//  if dmcOrder.cdsSawmillLoadOrders.Active then
//  RefreshLoadOrders(Sender);

 GotoMyBookMark(Sender) ;
 dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
 SearchOneLO:= False ;
end;

procedure TfrmVisTruckLoadOrder.atAcceptLoadOrderExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_ACCEPTED);
end;

procedure TfrmVisTruckLoadOrder.atRejectLoadOrderExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_REJECTED);
end;

procedure TfrmVisTruckLoadOrder.atCompletedLoadOrderExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_COMPLETE);
end;

procedure TfrmVisTruckLoadOrder.CloseDataSet ;
Begin
With dmcOrder do
Begin
 if cdsSawmillLoadOrders.Active then cdsSawmillLoadOrders.Close ;
 if cdsLoadsForLO.Active then cdsLoadsForLO.Close ;
 if cdsLoadsForLO_forVW.Active then cdsLoadsForLO_forVW.Close ;
 if cdsBooking.Active then cdsBooking.Active:= False ;
End ; //with
End ;

procedure TfrmVisTruckLoadOrder.LoadUserPreferences;
begin
//Hämtas centralt
  ExcelDir          := dmsSystem.Get_Dir('ExcelDir') ;
  LODir             := dmsSystem.Get_Dir('LODir') ;
  LastUsedLOTemplate:= dmsSystem.Get_Dir('LastUsedLOTemplate') ;


  if (not dmcOrder.cds_PropsLengthOption.IsNull) and (dmcOrder.cds_PropsLengthOption.AsInteger > 6) then
  cxStyleHeader.Font.Size   := dmcOrder.cds_PropsLengthOption.AsInteger ;

  if (not dmcOrder.cds_PropsLengthGroupNo.IsNull) and (dmcOrder.cds_PropsLengthGroupNo.AsInteger > 6) then
  Begin
   cxStyleContent.Font.Size  := dmcOrder.cds_PropsLengthGroupNo.AsInteger ;
   cxStyleContentOdd.Font.Size  := dmcOrder.cds_PropsLengthGroupNo.AsInteger ;
  End ;


  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name, grdLODBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFS.Name, grdFSDBTableView1) = False then ;

  // Load position of horizontal split between the two grids.
//  pnlBottomGrid.Height := ThisUser.fLoadOrderHSplit ;

  grdLODBTableView1Supplier.Visible                 := False ;
  grdLODBTableView1OrderNo.Visible                  := False ;
  grdLODBTableView1CustomerShowInGrid.Visible       := False ;
  grdLODBTableView1Delivery_WeekNo.Visible          := False ;
  grdLODBTableView1CSH_CustomerNo.Visible           := False ;
  grdLODBTableView1ShipToInvPointNo.Visible         := False ;
  grdLODBTableView1LoadingLocationNo.Visible        := False ;
  grdLODBTableView1CHCustomerNo.Visible             := False ;
  grdLODBTableView1SPCustomerNo.Visible             := False ;
  grdLODBTableView1OrderType.Visible                := False ;

  if (ThisUser.CompanyNo = 172) or (ThisUser.CompanyNo = 2878) then
  acBytMellanBTBochBTH.Visible  := True
  else
  acBytMellanBTBochBTH.Visible  := False ;
end;

procedure TfrmVisTruckLoadOrder.SaveUserPreferences;
begin
 dmsSystem.SaveDir(LastUsedLOTemplate, 'LastUsedLOTemplate')  ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name, grdLODBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdFS.Name, grdFSDBTableView1) ;


 if dmcOrder.cds_Props.State in [dsBrowse] then
  dmcOrder.cds_Props.Edit ;
 dmcOrder.cds_PropsLengthOption.AsInteger   := cxStyleHeader.Font.Size ;
 dmcOrder.cds_PropsLengthGroupNo.AsInteger  := cxStyleContent.Font.Size ;
 dmcOrder.cds_Props.Post ;

 dmcOrder.SaveUserProps ;//(Self.Name) ;
end;

procedure TfrmVisTruckLoadOrder.ProtectTheData;
begin
  if ThisUser.CanModify[dcEditLoadOrder] = false then
  begin
   atAcceptLoadOrder.Enabled    := False ;
   atAcceptLoadOrder.Enabled    := False ;
   atRejectLoadOrder.Enabled    := False ;
   atCompletedLoadOrder.Enabled := False ;
   atSetToONHOLD.Enabled        := False ;
   atSetToONHOLD.Enabled        := False ;
   atPreliminary.Enabled        := False ;
   acSetToNEW.Enabled           := False ;
   acConfirmCancel.Enabled      := False ;
   atProductionComplete.Enabled := False ;
  End ;
end;

procedure TfrmVisTruckLoadOrder.atNewLoadExecute(Sender: TObject);
begin
  (*
   CreateLoadForm ;
     fLoadEntrySSP.CreateWithNewLoad(
     920,
     0,
     0,
     0,
     0,
     -1 {LoadNo},
     -1{OrderType (is unknown in this case)},
     -1 {CSH_CustomerNo}) ;
       fLoadEntrySSP.Show ;
       Application.ProcessMessages ;

       AddLoadNoTab(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsString, dmLoadEntrySSP.cds_LoadHeadLoadNo.AsString) ;
 *)

end;

procedure TfrmVisTruckLoadOrder.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // If any threads are still running, make sure they don't try and call us when they
  // terminate - we won't be here any more.
  // It is OK to do this because the only reason we were interested in when they
  // finished was so this form could update its display, and as we are closing the
  // form we won't need to do that.

// With dmcOrder do
// Begin
//  if mtProps.State = dsBrowse then
//   mtProps.Edit ;
//  mtPropsNewItemRow.AsInteger := PanelLoadDetail.Width ;
//  mtProps.Post ;
// End ;

{  if clFTP.Active then
  clFTP.Close() ;  }
  CheckIfChangesUnSaved ;
  SaveUserPreferences;

  CloseDataSet;
//  FreeAndNil(dmcOrder) ;//.free ;
  CanClose:= True ;
end;

procedure TfrmVisTruckLoadOrder.FormCreate(Sender: TObject);
begin
 if (not Assigned(dm_Booking)) then
 dm_Booking  := Tdm_Booking.Create(nil);
 dmsSystem.AssignDMToThisWork('TfrmVisTruckLoadOrder', 'dm_Booking') ;

 dmcOrder:= TdmcOrder.Create(Nil);

 if (not Assigned(dmArrivingLoads)) then
 dmArrivingLoads  := TdmArrivingLoads.Create(nil);
 dmsSystem.AssignDMToThisWork('TfrmVisTruckLoadOrder', 'dmArrivingLoads') ;





  dmcOrder.LoadUserProps(Self.Name) ;
  dmcOrder.RefreshOrter ;
//  dmcOrder.sq_City.Refresh ;
//  bcStatus.ItemIndex:= 1 ;
 // Caption := siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_0' (* 'Testing' *) );
  SearchOneLO:= False ;

  LoadUserPreferences;

  // Populate the combo box with names of suppliers from the database
//  dmsContact.Load_Int_and_Lego(cbSupplier.Properties.Items) ;
//  if cbSupplier.Properties.Items.Count > 0 then
//   cbSupplier.ItemIndex:= 0 ;

  // Set the supplier to be the company with which this user is associated

  //ClearLOTab ;

  ProtectTheData;
  dmUserAdm.ApplyRestrictionsOnForm(ThisUser.UserID, self);
end;

procedure TfrmVisTruckLoadOrder.atSetToONHOLDExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_ONHOLD);
end;

procedure TfrmVisTruckLoadOrder.bPrintHyvelOrderClick(Sender: TObject);
//var FormCRViewReport: TFormCRViewReport;
begin
{
   if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   FormCRViewReport.CreateCo('HYVEL_ORDER.RPT') ;
   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
    FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}

end;

procedure TfrmVisTruckLoadOrder.bPrintLOAllVerkClick(Sender: TObject);
Var
 // FormCRViewReport: TFormCRViewReport;
  Supplier, LONo: integer;
  Lang: integer;
  LastOrderVerk, LastOrderInkop: Boolean;

begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;
  if uReportController.useFR then
  begin
    Lang := ThisUser.LanguageID;//grdLODBTableView1.DataController.DataSet.FieldByName('Languagecode')
      //.AsInteger;
    LastOrderVerk := dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger <> 2;
    LastOrderInkop := dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1;
    LONo := grdLODBTableView1.DataController.DataSet
      .FieldByName('LONumber').AsInteger;
    Supplier := -1;
    FastReportLO(LONo, Supplier, Lang, LastOrderVerk, LastOrderInkop, false);
  end
  else
  begin
        {
      if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
            .AsInteger < 1 then
            Exit;

          FormCRViewReport := TFormCRViewReport.Create(Nil);
          Try

            if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
              (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
              FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_ver2.RPT')
            else
            Begin
              if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
                FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT')
              else
                FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT');
            End;

            if FormCRViewReport.ReportFound then
            Begin
              FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
                (grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
                .AsInteger);
              FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
              FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;

              FormCRViewReport.CRViewer91.ViewReport;
              FormCRViewReport.ShowModal;
            End;
          Finally
            FreeAndNil(FormCRViewReport);
          End;
    }
  end;
end;

procedure TfrmVisTruckLoadOrder.bPrintLODittVerkClick(Sender: TObject);
Var
 // FormCRViewReport: TFormCRViewReport;
  Supplier, LONo: integer;
  Lang: integer;
  LastOrderVerk, LastOrderInkop: Boolean;

begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;
  if uReportController.useFR then
  begin
    Lang := ThisUser.LanguageID;//grdLODBTableView1.DataController.DataSet.FieldByName('Languagecode')
      //.AsInteger;
    LastOrderVerk := dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger <> 2;
    LastOrderInkop := dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1;
    LONo := grdLODBTableView1.DataController.DataSet
      .FieldByName('LONumber').AsInteger;
    Supplier := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
        .AsInteger;
    FastReportLO(LONo, Supplier, Lang, LastOrderVerk, LastOrderInkop, false);
  end
  else
  begin
      {
      FormCRViewReport := TFormCRViewReport.Create(Nil);
         Try

           if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
             (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
             FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_ver2.RPT')
           else
           Begin
             if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
               FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT')
             else
               FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT');
           End;

           if FormCRViewReport.ReportFound then
           Begin
             FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
               (grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
               .AsInteger);
             FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue
               (grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
               .AsInteger);
             FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;

             FormCRViewReport.CRViewer91.ViewReport;
             FormCRViewReport.ShowModal;
           End;
         Finally
           FreeAndNil(FormCRViewReport);
         End;
   }
  end;
end;

procedure TfrmVisTruckLoadOrder.bAllaLasterPerLOClick(Sender: TObject);
begin
// Generate_AllLoads_samLastData(Sender);
//gammal rapport
 Generate_AllLoads_samLastData(Sender) ;
 SPEC_ALLA_LASTER_VERK(Sender);
end;

procedure TfrmVisTruckLoadOrder.Generate_AllLoads_samLastData(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
//Välj alla lastrader
  grdFSDBTableView1.Controller.SelectAll ;
  Try
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
  sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  grdFSDBTableView1.BeginUpdate ;
  grdFSDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdFSDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdFSDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LoadNo',RecID,[]) ;

    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= ADataSet.FieldByName('LoadNo').AsInteger ;
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

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

//  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;

 Finally
  grdFSDBTableView1.DataController.EndLocate ;
  grdFSDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.RefreshLoadOrders(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 LockWindowUpdate(grdFS.Handle);
  try
    if dmcOrder.cds_PropsVerkNo.AsInteger < 1 then
      Exit;

    try
      dmcOrder.SupplierNo := dmcOrder.cds_PropsVerkNo.AsInteger ;
      dmcOrder.RefrehLOs(dmcOrder.SupplierNo) ;

    except
      on EStringListError do begin
        // Nothing
        end;
    end;

  finally
    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor ;
  end;

 dmcOrder.cdsBooking.Active:= False ;
 dmcOrder.cdsBooking.Active:= True ;
end;

procedure TfrmVisTruckLoadOrder.FastReportLO(const aLOno, aSupplier,
  aLang: integer; const aLastOrderVerk, aLastOrderInkop, aStatusRapport: Boolean);
var
  FR: TFastReports;
  ReportType: integer;
begin
  if (not aLastOrderVerk) and aLastOrderInkop then
    ReportType := cLastorderInkop
  else if aLastOrderVerk then
    ReportType := cLastorder_Verk
  else
    ReportType := cLastorder;
  Try
    FR := TFastReports.Create;
    FR.LO(aLOno, aSupplier, ReportType, aLang, '', '', '',aStatusrapport);
  Finally
    FreeAndNil(FR);
  End;
end;

procedure TfrmVisTruckLoadOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmVisTruckLoadOrder.atProductionCompleteExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_PRODUCTION_COMPLETE);
end;

procedure TfrmVisTruckLoadOrder.atPreliminaryExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_PRELIMINARY);
end;

procedure TfrmVisTruckLoadOrder.BuildLOSQL(Sender: TObject;const LONo : Integer);
//Local proc
  Procedure AddFilter;
  Begin
    With dmcOrder do
    Begin
      if cds_Props.State = dsBrowse then
        cds_Props.Edit;

      if Length(lcLaststlle.Text) = 0 then
        cds_PropsLoadingLocationNo.Clear;

      if Length(lcDestination.Text) = 0 then
        cds_PropsLengthGroupNo.Clear;

      if cds_Props.State in [dsEdit, dsInsert] then
        cds_Props.Post;

      if (cds_PropsLoadingLocationNo.AsInteger > 0) And
        (not cds_PropsLoadingLocationNo.IsNull) then
        cdsSawmillLoadOrders.SQL.Add('AND SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);

      if (cds_PropsLengthGroupNo.AsInteger > 0) And
        (not cds_PropsLengthGroupNo.IsNull) then
        cdsSawmillLoadOrders.SQL.Add('AND SP.ShipToInvPointNo = ' +
          cds_PropsLengthGroupNo.AsString);

      Case cds_PropsStatus.AsInteger of
        0:
          Begin // ALLA
            // sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
          End;
        1:
          Begin // all except complete, ALLA UTOM KLAR OCH ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8');
          End;

        2:
          Begin // complete KLAR OCH ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 4 OR SP.ShippingPlanStatus = 8)');
          End;

        3:
          Begin // NEW AND ANNULERAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 1 OR SP.ShippingPlanStatus = 7 OR SP.ShippingPlanStatus = 10) ');
          End;
        4:
          Begin // reject
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 2 ');
          End;
        5:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 3 ');
          End;
        6:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 5 ');
          End;
        7:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 6 ');
          End;

        8:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 0 ');
          End;
        9:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 7 ');
          End;
        10:
          Begin // ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 8 ');
          End;
        11:
          Begin // Klar för utlastning
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 9 ');
          End;
      End; // case
    End;
  End;

begin
CheckIfChangesUnSaved ;

// icStatusChange(Sender) ;
 With dmcOrder do
 Begin
  Try
   LOs  := TStringList.Create ;

   LOs.Delimiter  := ',' ;

  // Samlast  := TStringList.Create ;

  // Samlast.Delimiter  := ',' ;

   BuildGetLONos ;


  cdsSawmillLoadOrders.SQL.Clear ;

  cdsSawmillLoadOrders.SQL.Add('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');
  cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
  cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
  cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
  cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,          -- Char 10');
  cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
  cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
  cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
  cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
  cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
  cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
  cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

  cdsSawmillLoadOrders.SQL.Add('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
  cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
  cdsSawmillLoadOrders.SQL.Add('Cy.CityName                 AS Destination,      -- VarChar 50');
  cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
  cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;

  cdsSawmillLoadOrders.SQL.Add('CSD.Reference               AS Reference,       -- LARS');
  cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');
  cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,    -- Integer');
  cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
  cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
  cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');
  cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
  cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
  cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
  cdsSawmillLoadOrders.SQL.Add('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
  cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
  cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
  cdsSawmillLoadOrders.SQL.Add('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
  cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
  cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
  cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;

  if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
  Begin
  cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
  cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
  cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
  cdsSawmillLoadOrders.SQL.Add('Case') ;
  cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else') ;
  cdsSawmillLoadOrders.SQL.Add('Case') ;
  cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice') ;
  cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
  cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')+' else');
  cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
  cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,') ;
  End
  else //Inköp
  Begin
  cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
  cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
  cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
  cdsSawmillLoadOrders.SQL.Add('Case') ;
  cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else') ;
  cdsSawmillLoadOrders.SQL.Add('Case') ;
  cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice') ;
  cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
  cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')+' else');
  cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
  cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,') ;


//  cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
//  cdsSawmillLoadOrders.SQL.Add('Case') ;
//  cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +'+QuotedStr('kr'));
//  cdsSawmillLoadOrders.SQL.Add('END END AS Pris,') ;



  End ;
  cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName, ') ;
  cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,') ;
  cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,') ;


{
    cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedPkgs,') ;

    cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedNM3,') ;

    cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedAM3,') ;
}


  cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)') ;
  cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)') ;
  cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
  cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
  cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering') ;

  cdsSawmillLoadOrders.SQL.Add('FROM dbo.Client_LoadingLocation     CLL') ;

  if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo') ;

  cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1') ;


  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo') ;

  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo') ;

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
  cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo') ;

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
    cdsSawmillLoadOrders.SQL.Add('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;

  cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo') ;

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;

  if cds_PropsAutoColWidth.AsInteger  = 0 then
  Begin
   cdsSawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo = ' + dmcOrder.cds_PropsVerkNo.AsString);
   cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
   cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');
  End
  else
  Begin
   cdsSawmillLoadOrders.SQL.Add('WHERE  SP.SupplierNo = ' + dmcOrder.cds_PropsVerkNo.AsString) ;
   cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
   cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');
  End ;

  if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
//LGA20190425  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType in (0,3)')
  else
//LGA20190425  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 1') ;
  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType in (1)') ;

  cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
  AddFilter ;

  cdsSawmillLoadOrders.SQL.Add('and sp.ShippingPlanNo in (') ;
  cdsSawmillLoadOrders.SQL.Add(LOs.DelimitedText) ;
  cdsSawmillLoadOrders.SQL.Add(')') ;

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> U N I O N <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  cdsSawmillLoadOrders.SQL.Add('UNION');

  cdsSawmillLoadOrders.SQL.Add('SELECT distinct '+QuotedStr('NA')+' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
  cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');


  cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
    cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
    cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
    cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
    cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,      -- Char 10');
    cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
    cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
    cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
    cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
    cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
    cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
    cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

    cdsSawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
    cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
    cdsSawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

      cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;
      cdsSawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');


     cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');

   cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
     cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
     cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

     cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
     cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
//     cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
     cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');

     if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
     cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
     else
     cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

     cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
     cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
     cdsSawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
     cdsSawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
     cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
     cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;

//intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
//Prislistan används inte på inköp!
   if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
   Begin
    cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
    cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
    cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
    cdsSawmillLoadOrders.SQL.Add('Case') ;
    cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else') ;
    cdsSawmillLoadOrders.SQL.Add('Case') ;
    cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice') ;
    cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
    cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')+' else');
    cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
    cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,') ;
   End
   else //Inköp
   Begin
    cdsSawmillLoadOrders.SQL.Add('Case') ;
    cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))') ;
    cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')) ;
    cdsSawmillLoadOrders.SQL.Add('End AS Pris,') ;
   End ;

  cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,') ;
  cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, 1 AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,') ;

  cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,') ;
{

    cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedPkgs,') ;

    cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedNM3,') ;

    cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.Loaddetail LD') ;
    cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
    cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
    cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedAM3,') ;

}


  cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2') ;
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
  cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)') ;
  cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)') ;
  cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,') ;




  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
  cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
  cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,') ;
  cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering') ;

  cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');

  if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
  else
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo') ;
  cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1') ;

  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
  cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo') ;

  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo') ;

//  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo') ;

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH') ;
  cdsSawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo') ;
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
  cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No') ;
  cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3') ;


  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo');
  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
  cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');



  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;

  cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo') ;

  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
  cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;

  if cds_PropsAutoColWidth.AsInteger  = 0 then
  Begin
   cdsSawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo          =  ' + dmcOrder.cds_PropsVerkNo.AsString) ;
//  cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
   cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType in (0,1)');
//cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
  End
  else
  Begin
   cdsSawmillLoadOrders.SQL.Add('WHERE  SP.SupplierNo = ' + dmcOrder.cds_PropsVerkNo.AsString) ;
//  cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
   cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType in (0,1)');
//cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
   cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
  End ;


   AddFilter ;

   cdsSawmillLoadOrders.SQL.Add('and sp.ShippingPlanNo in (') ;
   cdsSawmillLoadOrders.SQL.Add(LOs.DelimitedText) ;
   cdsSawmillLoadOrders.SQL.Add(')') ;

   //Start third union script

  (*
    cdsSawmillLoadOrders.SQL.Add('UNION');

     cdsSawmillLoadOrders.SQL.Add('SELECT distinct '+QuotedStr('NA')+' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
     cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');


     cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
       cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
       cdsSawmillLoadOrders.SQL.Add('SP.Lagerkod,') ;
       cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
       cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,      -- Char 10');
       cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
       cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
       cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
       cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
       cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
       cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
       cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

       cdsSawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
       cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
       cdsSawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

         cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
         cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,') ;
         cdsSawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
         cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');


        cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');

      cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
        cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
        cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

        cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
        cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
   //     cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
        cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');

        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
        else
        cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

        cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
        cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
        cdsSawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
        cdsSawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
        cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
        cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,') ;

   //intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
   //Prislistan används inte på inköp!
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      Begin
       cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
       cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
       cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
       cdsSawmillLoadOrders.SQL.Add('Case') ;
       cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else') ;
       cdsSawmillLoadOrders.SQL.Add('Case') ;
       cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice') ;
       cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))') ;
       cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')+' else');
       cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
       cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,') ;
      End
      else //Inköp
      Begin
       cdsSawmillLoadOrders.SQL.Add('Case') ;
       cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))') ;
       cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +'+QuotedStr('kr')) ;
       cdsSawmillLoadOrders.SQL.Add('End AS Pris,') ;
      End ;

     cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,') ;
     cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,') ;
     cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, 1 AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,') ;

     cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2') ;
     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
     cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
     cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2') ;
     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
     cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
     cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2') ;
     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo') ;
     cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)') ;
     cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)') ;
     cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)') ;
     cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,') ;




     cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
     cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,') ;

     cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo') ;
     cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo') ;
     cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,') ;
     cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,') ;
     cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering') ;

     cdsSawmillLoadOrders.SQL.Add('FROM dbo.SupplierShippingPlan SP');

   {
       if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
       cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
       else
       cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo') ;

   }

     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo') ;
     cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1') ;

     cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
     cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo') ;

     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo') ;

   //  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo') ;

     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
     cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH') ;
     cdsSawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo') ;
     cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo') ;
     cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No') ;
     cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3') ;


     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser') ;

     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo');
     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo');
     cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
     cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');



     cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo') ;

     cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo') ;

     cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS') ;
     cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID') ;
     cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo') ;

     if cds_PropsAutoColWidth.AsInteger  = 0 then
     Begin
      cdsSawmillLoadOrders.SQL.Add('WHERE  sp.SupplierNo          <>  ' + dmcOrder.cds_PropsVerkNo.AsString) ;
   //  cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus in (0,1,3,6,9)') ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType in (0,1,2,3)');
   //cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
     End
     else
     Begin
      cdsSawmillLoadOrders.SQL.Add('WHERE  SP.SupplierNo <> ' + dmcOrder.cds_PropsVerkNo.AsString) ;
   //  cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3') ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus in (0,1,3,6,9)') ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType in (0,1,3)');
   //cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
      cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
     End ;


      //AddFilter ;

      cdsSawmillLoadOrders.SQL.Add('and sp.ShippingPlanNo in (') ;
      cdsSawmillLoadOrders.SQL.Add(Samlast.DelimitedText) ;
      cdsSawmillLoadOrders.SQL.Add(')') ;


 *)
   //End third union script

   if thisUser.UserID = 258 then cdsSawmillLoadOrders.SQL.SaveToFile('BuildLOSQL.sql');

   //cdsSawmillLoadOrders.SQL.SaveToFile('BuildLOSQL.sql');


// if ThisUser.UserID = 8 then cdsSawmillLoadOrders.SQL.SaveToFile('cdsSawmillLoadOrders.txt');
    OrderTypeChanged := False ;
   Finally
    FreeAndNil(LOs) ;
 //   FreeAndNil(Samlast) ;
   End ;


 End ;
end;

procedure TfrmVisTruckLoadOrder.BuildGetLONos;

  procedure GetStatFilter;
  Begin
    With dmcOrder do
    Begin
      Case cds_PropsStatus.AsInteger of
        0:
          Begin // ALLA
            // sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
          End;
        1:
          Begin // all except complete, ALLA UTOM KLAR OCH ANNULERING BEKRÄFTAD
            sq_GetLONos.SQL.Add
              ('  AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8');
          End;

        2:
          Begin // complete KLAR OCH ANNULERING BEKRÄFTAD
            sq_GetLONos.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 4 OR SP.ShippingPlanStatus = 8)');
          End;

        3:
          Begin // NEW AND ANNULERAD
            sq_GetLONos.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 1 OR SP.ShippingPlanStatus = 7 OR SP.ShippingPlanStatus = 10) ');
          End;
        4:
          Begin // reject
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 2 ');
          End;
        5:
          Begin
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 3 ');
          End;
        6:
          Begin
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 5 ');
          End;
        7:
          Begin
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 6 ');
          End;

        8:
          Begin
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 0 ');
          End;
        9:
          Begin
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 7 ');
          End;
        10:
          Begin // ANNULERING BEKRÄFTAD
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 8 ');
          End;
        11:
          Begin // Klar för utlastning
            sq_GetLONos.SQL.Add('  AND SP.ShippingPlanStatus = 9 ');
          End;
      End; // case
    End; // with
  End; // Proc

Begin

  with dmcOrder do
  Begin
    sq_GetLONos.SQL.Clear;
    sq_GetLONos.SQL.Add('SELECT distinct SP.ShippingPlanNo');
    sq_GetLONos.SQL.Add('FROM dbo.Client_LoadingLocation     CLL');
    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      sq_GetLONos.SQL.Add
        ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
    else
      sq_GetLONos.SQL.Add
        ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

    if cds_PropsAutoColWidth.AsInteger = 0 then
    Begin
      sq_GetLONos.SQL.Add('WHERE  CLL.ClientNo = ' +
        dmcOrder.cds_PropsVerkNo.AsString);
      sq_GetLONos.SQL.Add('AND SP.ShippingPlanStatus <> 0');
//      sq_GetLONos.SQL.Add('AND SP.ShippingPlanStatus in (1,3)');
    End
    else
    Begin
      sq_GetLONos.SQL.Add('WHERE  SP.SupplierNo = ' +
        dmcOrder.cds_PropsVerkNo.AsString);
      sq_GetLONos.SQL.Add('AND SP.ShippingPlanStatus <> 0');
//      sq_GetLONos.SQL.Add('AND SP.ShippingPlanStatus in (1,3)');
    End;

    if (cds_PropsLoadingLocationNo.AsInteger > 0) And
      (not cds_PropsLoadingLocationNo.IsNull) then
      sq_GetLONos.SQL.Add('AND SP.LoadingLocationNo = ' +
        cds_PropsLoadingLocationNo.AsString);

  End;

  GetStatFilter;

  if computerName = 'CARMAK-FASTER' then sq_GetLONos.SQL.SaveToFile('sq_GetLONos.sql');

  sq_GetLONos.Active := True;
  sq_GetLONos.First;
  while not sq_GetLONos.Eof do
  Begin
    LOs.Add(sq_GetLONos.FieldByName('ShippingPlanNo').AsString);
    sq_GetLONos.Next;
  End;

  sq_GetLONos.Active := False;

  if LOs.Count = 0 then
    LOs.Add('1');
  // sq_GetLONos.SQL.SaveToFile('sq_GetLONos.txt') ;
  // LOs.SaveToFile('LOs.txt') ;

  {
    with dmcOrder do
     Begin
       sq_GetLONos.SQL.Clear;
       sq_GetLONos.SQL.Add('select sp.ShippingPlanNo from dbo.SupplierShippingPlan sp') ;
       sq_GetLONos.SQL.Add('inner join dbo.LOGroupNo Sam on sam.ShippingPlanNo = sp.ShippingPlanNo') ;

       sq_GetLONos.SQL.Add('WHERE sp.ShippingPlanNo in (') ;
       sq_GetLONos.SQL.Add(LOs.DelimitedText) ;
       sq_GetLONos.SQL.Add(')') ;


       sq_GetLONos.Active := True;
       sq_GetLONos.First;
       while not sq_GetLONos.Eof do
       Begin
         Samlast.Add(sq_GetLONos.FieldByName('ShippingPlanNo').AsString);
         sq_GetLONos.Next;
       End;
      sq_GetLONos.Active := False ;
      sq_GetLONos.SQL.SaveToFile('sq_GetLONos.txt') ;
     End ;
 }

End;

procedure TfrmVisTruckLoadOrder.CheckIfChangesUnSaved ;
Begin
 if dmcOrder.cdsBooking.State = dsEdit then
  dmcOrder.cdsBooking.Post ;
 if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
  dmcOrder.cdsSawmillLoadOrders.Post ;

 if (dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0) OR (dmcOrder.cdsBooking.ChangeCount > 0) then
 if MessageDlg(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_1' (* 'Vill du spara ändringar?' *) ),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   SaveChangesExecute
    else
     CancelChangesExecute ;
End ;

procedure TfrmVisTruckLoadOrder.SetMyBookmark(Sender: TObject) ;
begin
 SupplierShipPlanObjectNo := dmcOrder.cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
end;

procedure TfrmVisTruckLoadOrder.GotoMyBookmark(Sender: TObject) ;
begin
  if SupplierShipPlanObjectNo > 0 then
  Begin

    dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
      try

        if dmcOrder.cdsSawmillLoadOrders.FindKey([SupplierShipPlanObjectNo]) then
        Begin
        End ;

    finally
    end;
  End ; //if
end;


procedure TfrmVisTruckLoadOrder.acSetToNEWExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_NEW);
end;

procedure TfrmVisTruckLoadOrder.bbAvropVerkClick(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
   FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM.RPT')
   else
    FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM_PO.RPT') ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcOrder.SupplierNo) ;
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;

procedure TfrmVisTruckLoadOrder.GetOneLO(Sender: TObject);
Var ShippingPlanNo : Integer ;
begin
 if (StrToIntDef(Trim(teSearchLONo.Text),0) > 0)
 or (Length(teREF.Text) > 0) or (Length(teReferens.Text) > 0) then
  Begin
   if dmcOrder.cds_PropsVerkNo.AsInteger = 741 then
    BuildVIDAWOODGetOne_LO_SQL(Sender)
     else
      BuildGetOne_LO_SQL (Sender) ;
  End
   else
    Exit ;

 dmcOrder.cdsSawmillLoadOrders.Active:= False ;
 CheckIfChangesUnSaved ;
 RefreshLoadOrders(Sender);
 if (dmcOrder.cdsSawmillLoadOrders.Active) and (dmcOrder.cdsSawmillLoadOrders.RecordCount = 0) then
  Begin
   ShippingPlanNo:= dmcOrder.Does_SearchedLONo_Have_ALO_Connected (dmcOrder.cds_PropsVerkNo.AsInteger, StrToIntDef(Trim(teSearchLONo.Text),0) ) ;
   if ShippingPlanNo > 1 then
   if MessageDlg(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_2' (* 'Hittade inte LONr ' *) )+Trim(teSearchLONo.Text)+siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_3' (* ', det finns däremot en add LO nr ' *) )+IntToStr(ShippingPlanNo)+siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_4' (* ' kopplad till den, vill du hämta den?' *) ),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     teSearchLONo.Text                    := IntToStr(ShippingPlanNo) ;
     dmcOrder.cdsSawmillLoadOrders.Active := False ;

     if dmcOrder.cds_PropsVerkNo.AsInteger = 741 then
      BuildVIDAWOODGetOne_LO_SQL(Sender)
       else
        BuildGetOne_LO_SQL (Sender) ;


     RefreshLoadOrders(Sender);
    End ;
   dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  End ;

 SearchOneLO:= True ;
 teSearchLONo.Text:= '' ;
end;

procedure TfrmVisTruckLoadOrder.BuildGetOne_LO_SQL(Sender: TObject);
var
  ClientNo, OrderType: Integer;
  LEGO: Boolean;
  Ref, StartLikeStr, EndLikeStr: string;
  StartLike, EndLike: Boolean;
  mill: integer;
begin
  LEGO := False;
  StartLike := False;
  EndLike := False;

  StartLikeStr := '';
  EndLikeStr := '';

  Ref := teRef.Text;

// cbOrderType.Properties.OnChange:= nil ;
  CheckIfChangesUnSaved;
// icStatusChange(Sender) ;
  with dmcOrder do
  begin
    OrderType := OrderTypeOrderType(dmcOrder.cds_PropsVerkNo.AsInteger,
      StrToIntDef(teSearchLONo.Text, 0));
    if OrderType > -1 then
    begin
      dmcOrder.cds_Props.Edit;
      dmcOrder.cds_PropsOrderTypeNo.AsInteger := OrderType;
      dmcOrder.cds_Props.Post;
    end;

    if (dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego) and (dmsContact.ClientInterVerk
      (ThisUser.CompanyNo) = False) then
    begin
      if LO_LoadingLocationIsLegoLoadingLocation(StrToIntDef(teSearchLONo.Text,
        0), ThisUser.CompanyNo) then
      begin
        dmcOrder.cds_Props.Edit;
        dmcOrder.cds_PropsOrderTypeNo.AsInteger := 0;  // Sales
        dmcOrder.cds_Props.Post;
      end
      else
      begin
        dmcOrder.cds_Props.Edit;
        dmcOrder.cds_PropsOrderTypeNo.AsInteger := 1; // Purchase
        dmcOrder.cds_Props.Post;
      end;
      ClientNo := 741;
      LEGO := True;
    end
    else if (dmsContact.ClientInterVerk(ThisUser.CompanyNo)) or (ThisUser.CompanyNo
      = 741) or (ThisUser.CompanyNo = 2846) or (ThisUser.CompanyNo = 980)then
      ClientNo := dmcOrder.cds_PropsVerkNo.AsInteger;

    cdsSawmillLoadOrders.SQL.Clear;

    with cdsSawMillLoadOrders do
    begin
      mill := dmcOrder.cds_PropsVerkNo.AsInteger;
      cdsSawmillLoadOrders.SQL.Add('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,      -- Char 10');
      cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add('Cy.CityName                 AS Destination,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add('CSD.Reference               AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

      cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
      cdsSawmillLoadOrders.SQL.Add('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
      cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      begin
        cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr') + ' else');
        cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
      end
      else //Inköp
      begin
        cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+'
          + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +'
          + QuotedStr('kr'));
        cdsSawmillLoadOrders.SQL.Add('END END AS Pris,');
      end;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,');

      cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

  (*
  cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedPkgs,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedNM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedAM3,') ;
  *)


      cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,');
      cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,');
      cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering');

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
      cdsSawmillLoadOrders.SQL.Add('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

      cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');


  //RadReferens
      if Length(Trim(Ref)) > 0 then
      begin
        Ref := StringReplace(Ref, '*', '%', [rfReplaceAll, rfIgnoreCase]);

 {  if Copy(Trim(Ref), 1, 1) = '*' then
   Begin
    StartLike     := True ;
    StartLikeStr  := '%' ;
    Delete(Ref, 1, 1) ;
   End;
   if Copy(Ref, Length(Trim(Ref)), 1) = '*' then
   Begin
    EndLike     := True ;
    EndLikeStr  := '%' ;
    Delete(Ref, Length(Trim(Ref)), 1) ;
   End;               }

        cdsSawmillLoadOrders.SQL.Add('WHERE ((SP.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CH.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CSD.Reference LIKE ' + QuotedStr(Ref) + '))');

      end
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);

      if cds_PropsAutoColWidth.AsInteger = 1 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo = ' + dmcOrder.cds_PropsVerkNo.AsString);

      if LEGO then
      begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
          cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' + IntToStr(ClientNo))
        else
          cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' + IntToStr(ClientNo));
      end
      else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  ' + IntToStr
          (ClientNo));

      cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
      cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3');
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');

{  if cbOrderType.ItemIndex = 0 then
  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
  else
  cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 1') ; }

// >>>>>>>>>>>>>>>>>> U N I O N <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      cdsSawmillLoadOrders.SQL.Add('UNION');
      cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') +
        ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,    -- Char 10');
      cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

//      cdsSawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');
//  cdsSawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

      cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
//     cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
      cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
      else
        cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

      cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
      cdsSawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

//intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
//Prislistan används inte på inköp!
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30)) +'
          + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END');
        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      end
      else //Inköp
      begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));

        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      end;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,');
      cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');


      cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,');
      cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,');
      cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering');

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');

      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

//  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
      cdsSawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
      cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

      cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

  //if Lego then supplier or customer = SP
//if verk or vw then CLL.ClientNo

  //RadReferens
      if Length(Trim(Ref)) > 0 then
      begin
        Ref := StringReplace(Ref, '*', '%', [rfReplaceAll, rfIgnoreCase]);

        cdsSawmillLoadOrders.SQL.Add('WHERE ((SP.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CH.Reference LIKE ' + QuotedStr(Ref) + '))');
      end
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);

      if cds_PropsAutoColWidth.AsInteger = 1 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo = ' + dmcOrder.cds_PropsVerkNo.AsString);

      if LEGO then
      begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
          cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' + IntToStr(ClientNo))
        else
          cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' + IntToStr(ClientNo));
      end
      else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  ' + IntToStr
          (ClientNo));
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');

      //START THIRD UNION

    (*
      cdsSawmillLoadOrders.SQL.Add('UNION');

          cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') +
            ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
          cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

          cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
          cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
          cdsSawmillLoadOrders.SQL.Add('SP.Lagerkod,') ;
          cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
          cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,    -- Char 10');
          cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
          cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
          cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
          cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
          cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
          cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
          cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

          cdsSawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
          cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
          cdsSawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

    //      cdsSawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
          cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
          cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

          cdsSawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
          cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

          cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');
    //  cdsSawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

          cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
          cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
          cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

          cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
          cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
    //     cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
          cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
          if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
            cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
          else
            cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

          cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
          cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
          cdsSawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
          cdsSawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
          cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
          cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

    //intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
    //Prislistan används inte på inköp!
          if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
          begin
            cdsSawmillLoadOrders.SQL.Add('Case');
            cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30)) +'
              + QuotedStr('kr') + ' Else');
            cdsSawmillLoadOrders.SQL.Add('Case');
            cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
            cdsSawmillLoadOrders.SQL.Add('END');
            cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
          end
          else //Inköp
          begin
            cdsSawmillLoadOrders.SQL.Add('Case');
            cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
            cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));

            cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
          end;

          cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
          cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
          cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,');
          cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');


          cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
          cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
          cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
          cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

          cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
          cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
          cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
          cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

          cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2');
          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
          cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
          cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
          cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,');

          cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)');
          cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
          cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,');

          cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)');
          cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
          cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,');

          cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
          cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo');
          cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,');

          cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
          cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
          cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,');
          cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,');
          cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering');

          cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
          if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
            cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
          else
            cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
          cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1');

          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

          cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');

          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

    //  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');
          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');

          cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
          cdsSawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
          cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
          cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
          cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
          cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
          cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

          cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

          cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo');

          cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
          cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
          cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      //if Lego then supplier or customer = SP
    //if verk or vw then CLL.ClientNo

      //RadReferens
          if Length(Trim(Ref)) > 0 then
          begin
            Ref := StringReplace(Ref, '*', '%', [rfReplaceAll, rfIgnoreCase]);

            cdsSawmillLoadOrders.SQL.Add('WHERE ((SP.Reference LIKE ' + QuotedStr(Ref) + ')');

            cdsSawmillLoadOrders.SQL.Add('OR (CH.Reference LIKE ' + QuotedStr(Ref) + '))');
          end
          else
            cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);

          if cds_PropsAutoColWidth.AsInteger = 1 then
            cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo = ' + dmcOrder.cds_PropsVerkNo.AsString);

          if LEGO then
          begin
            if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
              cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' + IntToStr(ClientNo))
            else
              cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' + IntToStr(ClientNo));
          end
          else
            cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  ' + IntToStr
              (ClientNo));
          cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');

  *)
      //END THIRD UNION


// if ThisUser.UserID = 8 then  cdsSawmillLoadOrders.SQL.SaveToFile('BuildGetOne_LO_SQL.txt');
//cdsSawmillLoadOrders.SQL.SaveToFile('BuildGetOne_LO_SQL.txt');
      OrderTypeChanged := False;
    end;
  end;
end;

procedure TfrmVisTruckLoadOrder.BuildVIDAWOODGetOne_LO_SQL(Sender: TObject);
var
  Ref, StartLikeStr, EndLikeStr: string;
  StartLike, EndLike, LEGO: Boolean;
  mill: integer;
begin
  LEGO := False;
  StartLike := False;
  EndLike := False;

  StartLikeStr := '';
  EndLikeStr := '';
  Ref := teRef.Text;
  try
    CheckIfChangesUnSaved;
    with dmcOrder do
    begin
      dmcOrder.cds_Props.Edit;
      dmcOrder.cds_PropsOrderTypeNo.AsInteger := 0; // Sales ;
      dmcOrder.cds_Props.Post;

      cdsSawmillLoadOrders.SQL.Clear;

      cdsSawmillLoadOrders.SQL.Add('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,      -- Char 10');
      cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add('Cy.CityName                 AS Destination,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add('CSD.Reference               AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

      cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
      cdsSawmillLoadOrders.SQL.Add('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
      cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then    // Sales
      begin
        cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr') + ' else');
        cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
      end
      else //Inköp
      begin
        cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+' + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +' + QuotedStr('kr'));
        cdsSawmillLoadOrders.SQL.Add('END END AS Pris,');
      end;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,');

      cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

  (*
  cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedPkgs,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedNM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedAM3,') ;
  *)


      cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,');
      cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,');
      cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering');

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo AND SP.DateCreated > '+ QuotedStr(DateToStr(IncYear(now,-2))))
      else
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo AND SP.DateCreated > '+ QuotedStr(DateToStr(IncYear(now,-2))));

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

  cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo') ;
//      cdsSawmillLoadOrders.SQL.Add('INNER JOIN @ProdList pli ON pli.ProductNo = sp.ProductNo');
//      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.LG_LOList pli ON pli.ProductNo = sp.ProductNo AND pli.UserID = '+intToStr(thisUser.UserID));

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
      cdsSawmillLoadOrders.SQL.Add('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

      cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      if Length(Trim(Ref)) > 0 then
      begin
        Ref := StringReplace(Ref, '*', '%', [rfReplaceAll, rfIgnoreCase]);

        cdsSawmillLoadOrders.SQL.Add('WHERE CLL.DateCreated > ' + QuotedStr(DateToStr(IncYear(now,-2))) + ' AND((SP.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CH.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CSD.Reference LIKE ' + QuotedStr(Ref) + '))');

      end
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);

      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');

      cdsSawmillLoadOrders.SQL.Add('UNION');
      cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') + ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod AS READYDATE,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('isnull(SP.Lagerkod,1) as Lagerkod,') ;
      cdsSawmillLoadOrders.SQL.Add('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.PackageCode              AS PackageCode,    -- Char 10');
      cdsSawmillLoadOrders.SQL.Add('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.StartETDYearWeek,-1)         AS FromWeek,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add('IsNull(SP.EndETDYearWeek,-1)           AS ToWeek,           -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits                AS Volume,           -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('''''           AS OrderNo,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add('''''              AS Destination,      -- VarChar 50');

//      cdsSawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add('''''              AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add('CH.CustomerNo               AS CHCustomerNo,');
//  cdsSawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

      cdsSawmillLoadOrders.SQL.Add('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
//     cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
      cdsSawmillLoadOrders.SQL.Add('SP.ObjectType,                                  -- Integer');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
      else
        cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

      cdsSawmillLoadOrders.SQL.Add('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
      cdsSawmillLoadOrders.SQL.Add('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

//intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
//Prislistan används inte på inköp!
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      begin
        cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr') + ' else');
        cdsSawmillLoadOrders.SQL.Add('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');

{    cdsSawmillLoadOrders.SQL.Add('Case') ;
    cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30)) +'+QuotedStr('kr')+' Else') ;
    cdsSawmillLoadOrders.SQL.Add('Case') ;
    cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
    cdsSawmillLoadOrders.SQL.Add('END') ;
    cdsSawmillLoadOrders.SQL.Add('End AS Pris,') ;
}
      end
      else //Inköp
      begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));
//    cdsSawmillLoadOrders.SQL.Add('Case') ;
//    cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
//    cdsSawmillLoadOrders.SQL.Add('END') ;
        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      end;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd, Vg.ETD, Vg.ETA,');
      cdsSawmillLoadOrders.SQL.Add('SP.Package_Size, ps.PackageSizeName, SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

  (*
  cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedPkgs,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedNM3,') ;

  cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.Loaddetail LD') ;
  cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo') ;
  cdsSawmillLoadOrders.SQL.Add('WHERE LD.ShippingPlanNo = SP.ShippingPlanNo') ;
  cdsSawmillLoadOrders.SQL.Add('AND LD.Defsspno = SP.SupplierShipPlanObjectNo ) AS LoadedAM3,') ;
  *)


      cdsSawmillLoadOrders.SQL.Add('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.NoOfUnits)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanPaket,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(SOR.PlannedAM3)');
      cdsSawmillLoadOrders.SQL.Add('FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS PlanAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select SUM(pt.Totalm3Actual) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.PackageType pt on pt.PackageTypeNo = SORP.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedAM3,');

      cdsSawmillLoadOrders.SQL.Add('(Select Count(SORP.PackageNo) FROM dbo.SortingOrderRow SOR');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.SortingOrderNewPkgs SORP on SORP.SortingOrderNo = SOR.SortingOrderNo');
      cdsSawmillLoadOrders.SQL.Add('										AND SORP.SortingOrderRowNo = SOR.SortingOrderRowNo');
      cdsSawmillLoadOrders.SQL.Add('WHERE SOR.CSDNo = SP.SupplierShipPlanObjectNo) AS ProducedPKT,');
      cdsSawmillLoadOrders.SQL.Add('SP.ActualM3Net AS Order_AM3, SP.InternRowNote AS Internnotering,');
      cdsSawmillLoadOrders.SQL.Add('SP.InternalNote AS Produktnotering');

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo AND SP.DateCreated > '+ QuotedStr(DateToStr(IncYear(now,-2))))
      else
        cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo AND SP.DateCreated > '+ QuotedStr(DateToStr(IncYear(now,-2))));

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');

      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

//  cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
//      cdsSawmillLoadOrders.SQL.Add('INNER JOIN @ProdList pli ON pli.ProductNo = sp.ProductNo');
//      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.LG_LOList pli ON pli.ProductNo = sp.ProductNo AND pli.UserID = '+intToStr(thisUser.UserID));

      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
      cdsSawmillLoadOrders.SQL.Add('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
      cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

      cdsSawmillLoadOrders.SQL.Add('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

      cdsSawmillLoadOrders.SQL.Add('left outer JOIN dbo.Voyage  Vg  ON   Vg.VoyageNo           = Bk.VoyageNo');

      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      if Length(Trim(Ref)) > 0 then
      begin
        Ref := StringReplace(Ref, '*', '%', [rfReplaceAll, rfIgnoreCase]);

        cdsSawmillLoadOrders.SQL.Add('WHERE CLL.DateCreated > ' + QuotedStr(DateToStr(IncYear(now,-2))) + ' AND ((SP.Reference LIKE ' + QuotedStr(Ref) + ')');

        cdsSawmillLoadOrders.SQL.Add('OR (CH.Reference LIKE ' + QuotedStr(Ref) + '))');

      end
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);

      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');
      if thisUser.UserID = 258 then
        cdsSawmillLoadOrders.SQL.SaveToFile('cdsSawmillLoadOrders.sql');

// if ThisUser.UserID = 8 then cdsSawmillLoadOrders.SQL.SaveToFile('BuildVIDAWOODGetOne_LO_SQL_BuildGetOne_LO_SQL.txt');
      OrderTypeChanged := False;
    end;
  finally
//   cbOrderType.Properties.OnChange:= cbOrderTypePropertiesChange ;
  end;
end;

procedure TfrmVisTruckLoadOrder.eRedoDagExit(Sender: TObject);
begin
(* With dmcOrder do
 Begin
  SetMyBookmark(Sender) ;
//  cdsSawmillLoadOrders.DisableControls ;
  dmcOrder.cdsSawmillLoadOrders.Filter:= 'LONumber = '+dmcOrder.cdsSawmillLoadOrdersLONumber.AsString ;
  dmcOrder.cdsSawmillLoadOrders.Filtered:= True ;
  IsolateLoads;
  Try
  dmcOrder.cdsSawmillLoadOrders.First ;
  While not dmcOrder.cdsSawmillLoadOrders.Eof do
  Begin
   if dmcOrder.cdsSawmillLoadOrders.State in [dsBrowse] then
    dmcOrder.cdsSawmillLoadOrders.Edit ;
   dmcOrder.cdsSawmillLoadOrdersReadyDate.AsString:= dxDBEdit2.Text ;
   dmcOrder.cdsSawmillLoadOrders.Post ;
   dmcOrder.cdsSawmillLoadOrders.Next ;
  End ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.Filtered:= False ;
   GotoMyBookmark(Sender) ;
//   cdsSawmillLoadOrders.EnableControls ;
   ReConnectLoads;
  End ;
 End ; *)
end;

procedure TfrmVisTruckLoadOrder.Visagrupperingsrutan1Click(Sender: TObject);
begin
{ if grdLO1.ShowGroupPanel = False then
   grdLO1.ShowGroupPanel:= True
    else
     grdLO1.ShowGroupPanel:= False ; }
end;

procedure TfrmVisTruckLoadOrder.bbTallyVer2Click(Sender: TObject);
Var
 // FormCRViewReport : TFormCRViewReport ;
  FR: TFastReports;
  lang,
  loadNo,
  ClientNo,
  ReportType: integer;
begin
  dmFR.SaveCursor;
  try
    loadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger;
    ClientNo := dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger;
    Lang := dmsContact.getCustomerLanguage(ClientNo);
    if LoadNo < 1 then
      Exit;
    if useFR then
    begin
      FR := TFastReports.Create;
      try
        if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
          .AsInteger <> 2 then
          ReportType := cFoljesedelIntern
        else
          ReportType := cFoljesedel;
        FR.Tally_Pkg_Matched(LoadNo, ReportType, Lang, '', '', '', 0);
      finally
        FR.Free;
      end;
    end
    else
    begin
        {
        FormCRViewReport := TFormCRViewReport.Create(Nil);
            Try

              if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
                FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
              else
              Begin
                Try
                  dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger
                    := LoadNo;
                  dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
                except
                  On E: Exception do
                  Begin
                    dmsSystem.FDoLog(E.Message);
                    // ShowMessage(E.Message);
                    Raise;
                  End;
                end;
                if Lang = cSwedish then
                  FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT')
                else
                  FormCRViewReport.CreateCo('TALLY_eng_VER3_NOTE.RPT');

              End;

              if FormCRViewReport.ReportFound then
              Begin
                FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
                  (grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
                  .AsInteger);
                FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;

                FormCRViewReport.CRViewer91.ViewReport;
                FormCRViewReport.ShowModal;
              End;
              Try
                dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
                  grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
                  .AsInteger;
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
              FreeAndNil(FormCRViewReport);
            End;
    }
    end;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmVisTruckLoadOrder.bbTally_USAClick(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
     FormCRViewReport.CreateCo('TALLY_INT_USA.RPT')
     else
     Begin
      Try
      dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
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
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
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

procedure TfrmVisTruckLoadOrder.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
//Var FormCRViewReport : TFormCRViewReport ;
begin
// if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;
  {
   if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

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

procedure TfrmVisTruckLoadOrder.PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
//Var FormCRViewReport : TFormCRViewReport ;
begin
// if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;
{
   if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

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

procedure TfrmVisTruckLoadOrder.bbAvrakningSpecVer2Click(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
     FormCRViewReport.CreateCo('AVR_SPEC_TALLY_INTERNAL_VER2.RPT')
     else
     Begin
      Try
      dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
      dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
        except
         On E: Exception do
         Begin
          dmsSystem.FDoLog(E.Message) ;
   //      ShowMessage(E.Message);
          Raise ;
         End ;
        end;

      FormCRViewReport.CreateCo('AVR_SPEC_TALLY_VER2.RPT')
     End ;

    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
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

procedure TfrmVisTruckLoadOrder.acSamlingFSExecute(Sender: TObject);
begin
 GenerateSamlingFS_2(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.GenerateSamlingFS_2(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
//  samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
  Try
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
  sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  grdFSDBTableView1.BeginUpdate ;
  grdFSDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdFSDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdFSDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LoadNo',RecID,[]) ;

    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= ADataSet.FieldByName('LoadNo').AsInteger ;
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

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

  PrintSamlingsspecifikation(Sender, ThisUser.UserID) ;

 Finally
  grdFSDBTableView1.DataController.EndLocate ;
  grdFSDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.SetLOStatus(Sender: TObject;Status : Integer);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 lbLO_To_Invoice.Items.Clear ;
 with dmcOrder  do
 Begin
  grdLODBTableView1.BeginUpdate ;
  grdLODBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdLODBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdLODBTableView1.DataController.GetRecordId(RecIdx) ;
//    ADataSet.Locate('SupplierShipPlanObjectNo',RecID,[]) ;

    lbLO_To_Invoice.Items.Add(IntToStr(RecID)) ;

{    ADataSet.Edit ;
    ADataSet.FieldByName('ShippingPlanStatus').AsInteger:= Status ;
    ADataSet.Post ; }

   // dmcOrder.SetLOStatus (RecID, Status) ;

{
    if dmcOrder.cdsSawmillLoadOrders.FindKey([RecID]) then
    Begin
     dmcOrder.cdsSawmillLoadOrders.Edit ;
     dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger:= Status ;
     dmcOrder.cdsSawmillLoadOrders.Post ;
    End ; }
   End ;

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

 Finally
  grdLODBTableView1.DataController.EndLocate ;
  grdLODBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 SetShippingPlanStatus(Status) ;
//   atRefreshExecute(Sender) ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.SetShippingPlanStatus(const Status : Integer) ;
Var x, LONo         : Integer ;
    Save_Cursor : TCursor;
  //  isLOB,
    SetLOStatus,
    SetAvropStatusToNew : Boolean ;
begin
 SetAvropStatusToNew  := False ;
 SetLOStatus          := False ;
 Try
 dmcOrder.cdsSawmillLoadOrders.IndexName  := 'indexSupplierShipPlanObjectNo' ;
 Save_Cursor                              := Screen.Cursor;
 Screen.Cursor                            := crSQLWait;    { Show hourglass cursor }
 dmcOrder.cdsSawmillLoadOrders.DisableControls ;
 SetAvropStatusToNew := False ;
 SetLOStatus         := False ;
 Try
 For x :=  0 to lbLO_To_Invoice.Items.Count - 1 do
 Begin
//  isLOB  := False ;
   if dmcOrder.cdsSawmillLoadOrders.FindKey([lbLO_To_Invoice.Items[x]]) then
    LONo  :=  dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger ;

   if Status = STATUS_ACCEPTED then
   Begin
    if dmcOrder.LOBuffertLO(LONo) then
    Begin
//     isLOB  := True ;
      if dmssystem.UserIsAllowedToSetStatusToActive(ThisUser.UserID) then
      Begin
        SetAvropStatusToNew := True ;
        SetLOStatus         := True ;
      End //if (UserIsAllowedToSetStatusToActive(ThisUser.UserID) then
       else
        Begin
          ShowMessage('You have not permission to accept this loading order, LOno ' + inttostr(LONo)) ;
          SetAvropStatusToNew := False ;
          SetLOStatus         := False ;
          //Exit ;
        End;
    End //if LOBuffertLO then
     else
      Begin
        SetAvropStatusToNew := False ;
        SetLOStatus         := True ;
      End;
   End //if Status = STATUS_ACCEPTED then
     else
      Begin
        SetAvropStatusToNew := False ;
        SetLOStatus         := True ;
      End;

   if SetLOStatus then
   Begin
    if dmcOrder.cdsSawmillLoadOrders.FindKey([lbLO_To_Invoice.Items[x]]) then
    Begin
     if (Status = STATUS_COMPLETE) and (dmcOrder.LoadStatusOK(dmcOrder.cdsSawmillLoadOrdersSupplier.AsInteger) = False) then
     Begin
      ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_5' (* 'Kan inte avsluta LO för att det finns laster som inte är avslutade eller inga laster alls.' *) )) ;
     End
     else
     Begin
      dmcOrder.SetLOStatus (strtoint(lbLO_To_Invoice.Items[x]), Status) ;
      dmcOrder.cdsSawmillLoadOrders.Edit ;
      dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger := Status ;
      dmcOrder.cdsSawmillLoadOrders.Post ;

      if SetAvropStatusToNew then
       dmcOrder.SetAvropStatusToActive(LONo, STATUS_LO_PROGRESS) ;
     End ;
    End ;
   End;

 End ; //For x...

 Finally
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
 End ;

 Finally
  dmcOrder.cdsSawmillLoadOrders.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

end;

procedure TfrmVisTruckLoadOrder.Button2Click(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_ACCEPTED);
end;

procedure TfrmVisTruckLoadOrder.Button3Click(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_NEW);
end;

procedure TfrmVisTruckLoadOrder.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmVisTruckLoadOrder.acSaveChangesExecute(Sender: TObject);
begin
  SaveChangesExecute ;
end;

procedure TfrmVisTruckLoadOrder.SaveChangesExecute ;
begin
 With dmcOrder do
 Begin
  if dm_Booking.cdsVoyage.State = dsEdit then
   dm_Booking.cdsVoyage.Post ;

  if cdsBooking.State = dsEdit then
   cdsBooking.Post ;
  if cdsSawmillLoadOrders.State = dsEdit then
   cdsSawmillLoadOrders.Post ;

  if dm_Booking.cdsVoyage.ChangeCount > 0 then
  Begin
   dm_Booking.cdsVoyage.ApplyUpdates(0)  ;
   dm_Booking.cdsVoyage.CommitUpdates ;
  End ;

  if cdsSawmillLoadOrders.ChangeCount > 0 then
  Begin
   cdsSawmillLoadOrders.ApplyUpdates(0)  ;
   cdsSawmillLoadOrders.CommitUpdates ;
  End ;

  if cdsBooking.ChangeCount > 0 then
  Begin
   cdsBooking.ApplyUpdates(0) ;
   cdsBooking.CommitUpdates ;
  End ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acCancelChangesExecute(Sender: TObject);
begin
  CancelChangesExecute ;
end;


procedure TfrmVisTruckLoadOrder.CancelChangesExecute ;
begin
 if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
     dmcOrder.cdsSawmillLoadOrders.CancelUpdates ;
  if dmcOrder.cdsBooking.ChangeCount > 0 then
     dmcOrder.cdsBooking.CancelUpdates ;
end;

procedure TfrmVisTruckLoadOrder.acConfirmCancelExecute(Sender: TObject);
begin
 SetLOStatus(Sender, STATUS_ANNULERAD_BEKRAFTAD);
end;

procedure TfrmVisTruckLoadOrder.acShowLOGroupByBoxExecute(Sender: TObject);
begin
 if grdLODBTableView1.OptionsView.GroupByBox then
  grdLODBTableView1.OptionsView.GroupByBox:= False
   else
    grdLODBTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmVisTruckLoadOrder.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdFS.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdFS.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmVisTruckLoadOrder.CheckSamlast ;
var fSamLastInfo: TfSamLastInfo;
Begin
  with dmcOrder do
  Begin
    sp_SamlastInfo.paramByName('@LONo').AsInteger := dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger ;
    sp_SamlastInfo.active := True ;
    Try
    if not sp_SamlastInfo.eof then
    Begin
     fSamLastInfo := TfSamLastInfo.create(nil) ;
     Try
       fSamLastInfo.showmodal ;
     Finally
       FreeAndNil(fSamLastInfo) ;
     End;
    End;
    Finally
     sp_SamlastInfo.active := False ;
    End;
  End;
End;

procedure TfrmVisTruckLoadOrder.acNewLoadWithLOExecute(Sender: TObject);
Var LOStatus : Integer ;
begin
// if not dmsConnector.FDMoniFlatFileClientLink1.Tracing then
// Begin
//  dmsConnector.FDConnection1.Params.Values['MonitorBy'] := 'FlatFile';
//  dmsConnector.FDMoniFlatFileClientLink1.Tracing  := True ;
// End ;
 LOStatus := dmcOrder.LO_Status(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
 if LOStatus in [1,3,6,9] then
 Begin
  tcLO.OnChange := nil ;

  Try
   CheckSamlast ;

   CreateLoadForm ;
   fLoadEntrySSP.cbShowOriginalLO.Properties.OnChange  := nil ;

   fLoadEntrySSP.ExternSaveLoad ;

   fLoadEntrySSP.CreateWithNewLoad(
   dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger, //SSP customer
   dmcOrder.cdsSawmillLoadOrdersSupplier.AsInteger, //SSP supplier
   dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger, //LO
   dmcOrder.cdsSawmillLoadOrdersShipToInvPointNo.AsInteger,
   dmcOrder.cdsSawmillLoadOrdersLoadingLocationNo.AsInteger,
   -1{LoadNo},
   grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
   grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
   dmcOrder.cdsSawmillLoadOrdersLagerkod.AsString) ;

   fLoadEntrySSP.cbShowOriginalLO.Properties.OnChange  := fLoadEntrySSP.cbShowOriginalLOPropertiesChange ;
   fLoadEntrySSP.Show ;
//    Application.ProcessMessages ;


   AddLoadNoTab(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsString, dmLoadEntrySSP.cds_LoadHeadLoadNo.AsString, dmcOrder.cdsSawmillLoadOrdersLagerkod.AsString) ;

   SetPanelToShowAndHide ;



  Finally
   tcLO.OnChange := tcLOChange ;
  End ;
 End
  else
   Begin
    if LOStatus = 0 then
     ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_6' (* 'LO är inte aktiv' *) ))
      else
       if LOStatus = 2 then
        ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_7' (* 'Avropet är inte aktiv' *) )) ;

   End ;


//    if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
//    AddLoadNoToList(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger,
//    dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger) ;

//    dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);

//    if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
//    if dmcOrder.FindLoadRecord(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) then ;
//  finally
//    Free ;
//  end;

//  Finally
//   dmsConnector.FDMoniFlatFileClientLink1.Tracing  := False ;
//   dmsConnector.FDConnection1.Params.Values['MonitorBy'] := '';
//  End ;
end;

procedure TfrmVisTruckLoadOrder.acOpenLoadExecute(Sender: TObject);
begin
//  if grdFSDBTableView1.DataController.DataSource.DataSet.FieldByName('PackageEntryOption').AsInteger = 1 then
//   OpenUtlastningsSpec(Sender)
//    else
 if OpenNormalLoad(grdFSDBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger,
 grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
 grdFSDBTableView1.DataController.DataSet.FieldByName('Lagerkod').AsString) then
 Begin
  // grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger) ;
   SetPanelToShowAndHide ;

   if assigned(fLoadEntrySSP) then
   begin
    if fLoadEntrySSP.mePackageNo.Enabled then
     fLoadEntrySSP.mePackageNo.SetFocus
      else
       fLoadEntrySSP.grdLORows.SetFocus ;


   end ;
 End;
end;

(*procedure TfrmLoadOrder.AddLoadNoToList(const LoadNo, LONo : Integer);
Var y, x : Integer ;
    Add : Boolean ;
Begin
 Add:= True ;
 For x := 0 to cbLastOpenLoads.Properties.Items.Count - 1 do
 Begin
  if IntToStr(LoadNo)+' / '+IntToStr(LONo) =      cbLastOpenLoads.Properties.Items[x] then
   Begin
    Add := False ;
    y := x ;
   End ;
 End ;
 if Add = True then
 Begin
  cbLastOpenLoads.Properties.Items.Insert(0,IntToStr(LoadNo)+' / '+IntToStr(LONo)) ;
 End ;
End ; *)

procedure TfrmVisTruckLoadOrder.acPrintLOWYSWYGExecute(Sender: TObject);
begin
 dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmVisTruckLoadOrder.acExpandAllExecute(Sender: TObject);
begin
 grdLODBTableView1.ViewData.Expand(True);
end;

procedure TfrmVisTruckLoadOrder.acCollapseAllExecute(Sender: TObject);
begin
 grdLODBTableView1.ViewData.Collapse(True);
end;

procedure TfrmVisTruckLoadOrder.acExportToXLSExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName    : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= ExcelDir ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;

  Try
  ExportGridToExcel(FileName, grdLO, False, False, True,'xls');
  ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_8' (* 'Tabell exporterad till Excel fil ' *) )+FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acSearchLoadNoExecute(Sender: TObject);
Var LONo  : Integer ;
fEntryField : TfEntryField ;
begin
 With dmcOrder do
 Begin
  LONo:= 0 ;
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_9' (* 'Ange LastNr' *) ) ;
  fEntryField.Label1.Caption:= siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_10' (* 'LastNr:' *) ) ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    LONo:= GetLONoForLoadNo (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) ;
    if LONo > 0 then
    Begin
     teSearchLONo.Text:= IntToStr(LONo) ;

     if dmcOrder.cds_PropsVerkNo.AsInteger = 741 then
      BuildVIDAWOODGetOne_LO_SQL(Sender)
       else
        BuildGetOne_LO_SQL (Sender) ;

     dmcOrder.cdsSawmillLoadOrders.Active:= False ;
     CheckIfChangesUnSaved ;
     RefreshLoadOrders(Sender);
     SearchOneLO:= True ;
     ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);

//     cdsLoadsForLO.Locate('LoadNo', StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0),[]) ;

     if dmcOrder.FindLoadRecord(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) then ;

     grdFS.SetFocus ;
//     teSearchLONo.Text:= '' ;
//     teSearchLONo.SetFocus ;
    End ;

   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;


procedure TfrmVisTruckLoadOrder.acSendWoodxDeliveryMessageExecute(
  Sender: TObject);
Var Path : String ;
begin
  With dmcOrder do
  Begin
   if grdFSDBTableView1.DataController.DataSet.FieldByName('SenderLoadStatus').AsInteger = 2 then
   Begin
   //   Path :=  'c:\temp\' ;
     Path :=  dmsSystem.GetFtpTarget(cdsSawmillLoadOrdersShipToInvPointNo.AsInteger,
     grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;
      if (Path <> '0') and (Path <> 'x') then
      Begin
       dmsSystem.ExportTallyWoodx
      (Sender, dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger,
      grdFSDBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger,
      grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
      grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsString, Path) ;
      End
       else
        Begin
         if Path = '0' then
          ShowMessage('No Ftp folder is setup for this destination.') ;
        End;
   End
    else
     ShowMessage('Load must be completed OK.') ;
  End;
end;

procedure TfrmVisTruckLoadOrder.acSendWoodxDeliveryMessageUpdate(
  Sender: TObject);
begin
  acSendWoodxDeliveryMessage.Enabled:= (grdFSDBTableView1.DataController.DataSet.Active)
  and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) ;
end;

procedure TfrmVisTruckLoadOrder.acSpec_ALLA_LasterExecute(Sender: TObject);
begin
 GenerateSamlingFS_MedPktNr(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintLO_All_MillsExecute(Sender: TObject);
begin
 bPrintLOAllVerkClick(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintLO_All_Mills_ManuallyExecute(
  Sender: TObject);
begin
  PrintLO_Manually(-1);
end;

procedure TfrmVisTruckLoadOrder.acPrintLO_Your_MillExecute(Sender: TObject);
begin
  bPrintLODittVerkClick(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintLO_Your_Mill_ManuallyExecute(Sender: TObject);
begin
  PrintLO_Manually(grdLODBTableView1.DataController
    .DataSet.FieldByName('Supplier').AsInteger);
end;

procedure TfrmVisTruckLoadOrder.GenerateSamlingFS_MedPktNr(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
//  samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
  Try
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
  sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  grdFSDBTableView1.BeginUpdate ;
  grdFSDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdFSDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdFSDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LoadNo',RecID,[]) ;

    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= ADataSet.FieldByName('LoadNo').AsInteger ;
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

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;

 Finally
  grdFSDBTableView1.DataController.EndLocate ;
  grdFSDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.dxBarButton18Click(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
     FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT')
     else
     Begin
      Try
      dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
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
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
     Try
     dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
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

procedure TfrmVisTruckLoadOrder.dxBarButton19Click(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;
    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

     if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
     FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_dk_ver2.RPT')
     else
    Begin
     if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
      FormCRViewReport.CreateCo('LASTORDER_NOTE_dk_ver2.RPT')
      else
      FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_dk_ver2.RPT') ;
    End ;

    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
     FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
    Finally
       FreeAndNil(FormCRViewReport)  ;
    End ;
 }
end;

procedure TfrmVisTruckLoadOrder.dxBarButton20Click(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
  {
   if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

    FormCRViewReport:= TFormCRViewReport.Create(Nil);
    Try

    FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_dk.RPT') ;
    if FormCRViewReport.ReportFound then
    Begin
     FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
     FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
     FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

     FormCRViewReport.CRViewer91.ViewReport ;
     FormCRViewReport.ShowModal ;
    End ;
    Finally
       FreeAndNil(FormCRViewReport)  ;
    End ;
 }
end;

//Lägg in poster i SamLastReport tabell
procedure TfrmVisTruckLoadOrder.Generate_samLastDataForMarkedLoads(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
//  samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
  Try
  sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
  sq_deleteSamLaster.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


  grdFSDBTableView1.BeginUpdate ;
  grdFSDBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdFSDBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdFSDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LoadNo',RecID,[]) ;

    Try
    sq_samLast.ParamByName('SamLastNr').AsInteger:= ThisUser.UserID ;
    sq_samLast.ParamByName('LoadNo').AsInteger:= ADataSet.FieldByName('LoadNo').AsInteger ;
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

//  if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
//   ADataSet.Bookmark:= BkmSafe ;

//  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;

 Finally
  grdFSDBTableView1.DataController.EndLocate ;
  grdFSDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;



//Markerade laster
procedure TfrmVisTruckLoadOrder.dxBarButton21Click(Sender: TObject);
begin
 Generate_samLastDataForMarkedLoads(Sender) ;
 //Ny rapport SPEC_ALLA_LASTER_VERK_II med parameter för UserID
 SPEC_ALLA_LASTER_VERK_MARKERADE(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.SPEC_ALLA_LASTER_VERK_MARKERADE
  (Sender: TObject);
Var
//  FormCRViewReport: TFormCRViewReport;
  ReportType: integer;
  LONo: integer;
  Supplier: integer;
  Lang: integer;
  FR: TFastReports;
begin
  Lang := grdLODBTableView1.DataController.DataSet.FieldByName('Languagecode').AsInteger;
  Supplier := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger;
  LoNo := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  if LoNo < 1 then
    Exit;
  if uReportController.useFR then
  begin
    try
      FR := TFastReports.create;
      FR.SpecMarkedLoadings(LoNo, Supplier, ThisUser.UserID, Lang);
    finally
      FreeAndNil(FR);
    end;
  end
  else
  begin
    {
      FormCRViewReport := TFormCRViewReport.Create(Nil);
        Try
          FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT');

          if FormCRViewReport.ReportFound then
          Begin
            FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(LoNo);
            FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(Supplier);
            FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(ThisUser.UserID);
            FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;
            FormCRViewReport.CRViewer91.ViewReport;
            FormCRViewReport.ShowModal;
          End;
        Finally
          FreeAndNil(FormCRViewReport);
        End;
  }
  end;
end;

// Per LO
procedure TfrmVisTruckLoadOrder.SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try
   FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_III.RPT') ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
  //  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
    FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(ThisUser.UserID);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;


procedure TfrmVisTruckLoadOrder.SPEC_ALLA_LASTER_VERK(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try
   FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
    FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
    FormCRViewReport.report.ParameterFields.Item[3].AddCurrentValue(ThisUser.UserID);

    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
      FreeAndNil(FormCRViewReport)  ;
   End ;
}
end;

procedure TfrmVisTruckLoadOrder.dxBarButton22Click(Sender: TObject);
begin
 //generera för markerade laster
 Generate_samLastDataForMarkedLoads(Sender) ;
 SPEC_ALLA_LASTER_MARKERADE(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.dxBarButton23Click(Sender: TObject);
begin
 //generera för alla laster
 Generate_AllLoads_samLastData(Sender) ;
 SPEC_ALLA_LASTER_MARKERADE(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.dxBarButton35Click(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_KLU);
end;

procedure TfrmVisTruckLoadOrder.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmVisTruckLoadOrder.acBookingExecute(Sender: TObject);
var FormBookingForm: TFormBookingForm;
begin
  FormBookingForm:= TFormBookingForm.Create(Nil) ;
  try

  FormBookingForm.CreateCo(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger) ;
  FormBookingForm.ShowModal ;
  dmcOrder.cdsBooking.Active:= False ;
  dmcOrder.cdsBooking.Active:= True ;

  finally
   FreeAndNil(FormBookingForm) ;
  end;

end;

procedure TfrmVisTruckLoadOrder.FormDestroy(Sender: TObject);
begin
 frmVisTruckLoadOrder:= Nil ;

  if dmsSystem.DeleteAssigned('TfrmVisTruckLoadOrder', 'dmArrivingLoads') = True then
  Begin
   dmArrivingLoads.Free ;
   dmArrivingLoads := Nil ;
  End ;

  if dmsSystem.DeleteAssigned('TfrmVisTruckLoadOrder', 'dm_Booking') = True then
  Begin
   dm_Booking.Free ;
   dm_Booking := Nil ;
  End ;

 If Assigned(dmcOrder) then
  FreeAndNil(dmcOrder) ;
 if Assigned(fLoadEntrySSP) then
  FreeAndNil(fLoadEntrySSP);
end;

procedure TfrmVisTruckLoadOrder.Timer1Timer(Sender: TObject);
begin
 teSearchLONo.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfrmVisTruckLoadOrder.Timer2Timer(Sender: TObject);
begin
 teSearchLoadNo.SetFocus ;
 Timer2.Enabled:= False ;
end;

procedure TfrmVisTruckLoadOrder.Timer3Timer(Sender: TObject);
begin
 teRef.SetFocus ;
 Timer3.Enabled:= False ;
end;

procedure TfrmVisTruckLoadOrder.acNewLoadWithLOUpdate(Sender: TObject);
begin
 with dmsContact do
 Begin
   acNewLoadWithLO.Enabled:= (dmcOrder.cdsSawmillLoadOrders.Active)
   and (dmcOrder.cdsSawmillLoadOrders.RecordCount > 0)
   and dmcOrder.ShowAddLoadButton = True ;
 End;
end;

procedure TfrmVisTruckLoadOrder.acOpenLoadUpdate(Sender: TObject);
begin
 acOpenLoad.Enabled:= (grdFSDBTableView1.DataController.DataSet.Active)
 and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintLOWYSWYGUpdate(Sender: TObject);
begin
 acPrintLOWYSWYG.Enabled:= (grdLODBTableView1.DataController.DataSet.Active)
 and (grdLODBTableView1.DataController.DataSet.RecordCount > 0) ;
end;

procedure TfrmVisTruckLoadOrder.acExportToXLSUpdate(Sender: TObject);
begin
 acExportToXLS.Enabled:= (grdLODBTableView1.DataController.DataSet.Active)
 and (grdLODBTableView1.DataController.DataSet.RecordCount > 0) ;
end;

procedure TfrmVisTruckLoadOrder.acSaveChangesUpdate(Sender: TObject);
begin
 acSaveChanges.Enabled:= not DataSaved ;
end;

procedure TfrmVisTruckLoadOrder.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSaved ;
end;

procedure TfrmVisTruckLoadOrder.acBookingUpdate(Sender: TObject);
begin
 acBooking.Enabled:= (grdLODBTableView1.DataController.DataSet.Active)
 and (grdLODBTableView1.DataController.DataSet.RecordCount > 0) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintLOStatusExecute(Sender: TObject);
Var
 // FormCRViewReport: TFormCRViewReport;
  ReportType: integer;
  LONo: integer;
  Supplier: integer;
  Lang: integer;
  FR: TFastReports;
begin
  Lang := ThisUser.LanguageID;
  Supplier := -1;
  LONo := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger;
  if LONo < 1 then
    Exit;
  if uReportController.useFR then
  begin
    try
      if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
        (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
        ReportType := cLastorderInkop
      else
      Begin
        if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
          ReportType := cLastorder
        else
          ReportType := cLastorder_verk;
      End;

      FR := TFastReports.Create;
      FR.LO(LONo, Supplier, ReportType, Lang, '', '', '', true)
    finally
      FreeAndNil(FR);
    end;
  end
  else
  begin
        {
      FormCRViewReport := TFormCRViewReport.Create(Nil);
          Try

            if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
              (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
              FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_STATUS_ver3.RPT.RPT')
            else
            Begin
              if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
                FormCRViewReport.CreateCo('LASTORDER_NOTE_STATUS_ver3.RPT')
              else
                FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_STATUS_ver3.RPT');
            End;

            if FormCRViewReport.ReportFound then
            Begin
              FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
                (grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
                .AsInteger);
              FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
              FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;
              FormCRViewReport.CRViewer91.ViewReport;
              FormCRViewReport.ShowModal;
            End;
          Finally
            FreeAndNil(FormCRViewReport);
          End;
    }
  end;
end;

// procedure TfrmVisTruckLoadOrder.PrintLO (const ShippingPlanNo : Integer) ;
// Var LOReport, RoleType  : Integer ;
//     Save_Cursor         : TCursor;
//     FormCRPrintReport   : TFormCRPrintReport;
//     A                   : array of variant;
// begin
(* Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
 Try
  if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
  FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_ver2.RPT')
  else
 Begin
  if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
   FormCRViewReport.CreateCo('LASTORDER_NOTE_ver2.RPT')
   else
   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT') ;


  if dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 0 then
  Begin
   LOReport := -1 ;
   RoleType := 0 ;
   SetLength(A, 2);
   A[0]:= ShippingPlanNo ;
   A[1]:= -1 ;
   FormCRPrintReport.CreateCo(0, LOReport , RoleType, iLastOrderVerk, A) ;
//   FormCRPrintReport.CreateCo(1, dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cFaktura, A) ;
  End
   else
   Begin
    LOReport:= -1 ;
    RoleType := 0 ;
    SetLength(A, 2);
    A[0]:= ShippingPlanNo ;
    A[1]:= -1 ;
    FormCRPrintReport.CreateCo(0, LOReport , RoleType, cLastorderInkop, A) ;
   End ;

 Finally
  FreeAndNil(FormCRPrintReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ; *)
//end;

procedure TfrmVisTruckLoadOrder.PrintLO (const ShippingPlanNo : Integer) ;
Var LOReport, RoleType  : Integer ;
    Save_Cursor         : TCursor;
  //  FormCRPrintReport   : TFormCRPrintReport;
    A                   : array of variant;
begin
  {
   Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;
    FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
    Try
     if dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 0 then
     Begin
      LOReport := -1 ;
      RoleType := 1 ;
      SetLength(A, 2);
      A[0]:= ShippingPlanNo ;
      A[1]:= -1 ;
      FormCRPrintReport.CreateCo(0, LOReport , RoleType, cLastorder, A) ;
     End
      else
      Begin
       LOReport:= -1 ;
       RoleType := 2 ;
       SetLength(A, 2);
       A[0]:= ShippingPlanNo ;
       A[1]:= -1 ;
       FormCRPrintReport.CreateCo(0, LOReport , RoleType, cLastorderInkop, A) ;
      End ;

    Finally
     FreeAndNil(FormCRPrintReport)  ;
     Screen.Cursor := Save_Cursor;
    End ;
 }
end;

procedure TfrmVisTruckLoadOrder.PrintLO_Manually(aSupplierNo: integer);
Var
  Lang: integer;
  FR: TFastReports;
  LoNo: integer;
  ReportType: integer;
  Supplier: integer;

begin
  LoNo := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  Supplier := aSupplierNo;
  if LoNo < 1 then
    Exit;
  Lang := ThisUser.LanguageID;//grdLODBTableView1.DataController.DataSet.FieldByName('Languagecode')
    //.AsInteger;
  Try
    ReportType := cLastorder_manuell;
    FR := TFastReports.create;
    FR.LO(LoNo, Supplier, ReportType, Lang, '', '', '');
  finally
    FreeAndNil(FR);
  end;
end;

procedure TfrmVisTruckLoadOrder.acPrintMarkedLOsExecute(Sender: TObject);
begin
 GetMarkedRows(Sender) ;
 mtMarkedRows.First ;
 While not mtMarkedRows.Eof do
 Begin
  PrintLO(mtMarkedRowsKeyField.AsInteger) ;
  mtMarkedRows.Next ;
 End ;
 mtMarkedRows.Active:= False ;
end;

//Lägg in poster i SamLastReport tabell
procedure TfrmVisTruckLoadOrder.GetMarkedRows(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
  mtMarkedRows.Active:= False ;
  mtMarkedRows.Active:= True ;

  grdLODBTableView1.BeginUpdate ;
  grdLODBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdLODBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdLODBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('SupplierShipPlanObjectNo',RecID,[]) ;

    if not mtMarkedRows.Locate('KeyField', ADataSet.FieldByName('LONumber').AsInteger, []) then
    Begin
     mtMarkedRows.Insert ;
     mtMarkedRowsKeyField.AsInteger := ADataSet.FieldByName('LONumber').AsInteger ;
     mtMarkedRowsSSPNo.AsInteger    := ADataSet.FieldByName('SupplierShipPlanObjectNo').AsInteger ;
     mtMarkedRows.Post ;
    End ;
   End ;

 Finally
  grdLODBTableView1.DataController.EndLocate ;
  grdLODBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.GetMarkedRows_II(Sender: TObject);
 Var i, RecIDX : Integer ;
 RecID :Variant ;
// BKMSafe : TBookmarkStr;
 ADATASET : TDATASET;
 Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 with dmcOrder, dmArrivingLoads do
 Begin
  mtMarkedRows.Active:= False ;
  mtMarkedRows.Active:= True ;

  grdLODBTableView1.BeginUpdate ;
  grdLODBTableView1.DataController.BeginLocate ;
  Try
   ADataSet := grdLODBTableView1.DataController.DataSource.DataSet ;
//   BKMSafe := ADataSet.Bookmark ;
   For I := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID:= grdLODBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('SupplierShipPlanObjectNo',RecID,[]) ;

    if not mtMarkedRows.Locate('SSPNo', ADataSet.FieldByName('SupplierShipPlanObjectNo').AsInteger, []) then
    Begin
     mtMarkedRows.Insert ;
     mtMarkedRowsKeyField.AsInteger := ADataSet.FieldByName('LONumber').AsInteger ;
     mtMarkedRowsSSPNo.AsInteger    := ADataSet.FieldByName('SupplierShipPlanObjectNo').AsInteger ;
     mtMarkedRows.Post ;
    End ;
   End ;

 Finally
  grdLODBTableView1.DataController.EndLocate ;
  grdLODBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmVisTruckLoadOrder.acSkapaPaketKoderExecute(Sender: TObject);
Var InfoList    : TStrings ;
    Save_Cursor : TCursor;
    SupplierShipPlanObjectNo : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 InfoList:= TStringList.Create ;
 Try
 with dmcOrder do
 Begin
  SupplierShipPlanObjectNo:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
  SkapaPaketKoder (InfoList) ;
  if cdsSawmillLoadOrders.FindKey([SupplierShipPlanObjectNo]) then ;

  if cdsBooking.State = dsEdit then
   cdsBooking.Post ;
  if cdsSawmillLoadOrders.State = dsEdit then
   cdsSawmillLoadOrders.Post ;

  if cdsSawmillLoadOrders.ChangeCount > 0 then
  Begin
   cdsSawmillLoadOrders.ApplyUpdates(0)  ;
   cdsSawmillLoadOrders.CommitUpdates ;
  End ;

  if cdsBooking.ChangeCount > 0 then
  Begin
   cdsBooking.ApplyUpdates(0) ;
   cdsBooking.CommitUpdates ;
  End ;

  if InfoList.Count > 0 then
  Begin
   dmsSystem.ShowMemo(InfoList) ;
  End ;
 End ;//With
 finally
  InfoList.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmVisTruckLoadOrder.acLOLengthsExecute(Sender: TObject);
var fLOLengths: TfLOLengths;
begin
 With dmcOrder do
 Begin
  fLOLengths:= TfLOLengths.Create(nil) ;
  Try
   fLOLengths.PkgCodePPZeroGroupNo:= cdsSawmillLoadOrdersPkgCodePPNo.AsInteger ;
   cds_LOLengths.Active:= False ;
   cds_LOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
   cds_LOLengths.Active:= True ;
//  cds_LOLengths.Filter:= 'SupplierShipPlanObjectNo = ' + cds_LOSupplierShipPlanObjectNo.AsString ;
   fLOLengths.ShowModal ;
   if cds_LOLengths.State in [dsEdit, dsInsert] then
    cds_LOLengths.Post ;
   if cds_LOLengths.ChangeCount > 0 then
   Begin
    cds_LOLengths.ApplyUpdates(0) ;
    cds_LOLengths.CommitUpdates ;
   End ;
  Finally
   cds_LOLengths.Active:= False ;
//  FreeAndNil(fLOLengths) ;
  End ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acLOLengthsUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acLOLengths.Enabled:= (cdsSawmillLoadOrders.Active) and (cdsSawmillLoadOrders.RecordCount > 0) ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acLoadOrderListSetupExecute(Sender: TObject);
begin
 TfLoadOrderListSetup.Execute ;
end;

procedure TfrmVisTruckLoadOrder.grdLODBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfrmVisTruckLoadOrder.grdLODBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
 With dmcOrder do
 Begin
  if dmcOrder.cdsBookingPanic_Note.AsString > '' then
  ePanic_Note.Style.Color := clSkyBlue
  else
  ePanic_Note.Style.Color := clWhite ;
 End;
end;

procedure TfrmVisTruckLoadOrder.acPrintMarkedLOsUpdate(Sender: TObject);
begin
 acPrintMarkedLOs.Enabled:= grdLODBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmVisTruckLoadOrder.acChangeLOonLoadExecute(Sender: TObject);
var fEntryField : TfEntryField;
    LoadNo      : Integer ;
begin
 //Ändra LO nummer på last
 //Vill du byta LO på lasten till LOnr x?
 LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger ;
 fEntryField:= TfEntryField.Create(Nil);
 Try
  fEntryField.Caption         := siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_11' (* 'Ange LO nummer att byta till' *) ) ;
  fEntryField.Label1.Caption  := siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_12' (* 'LO Nr:' *) ) ;
  if fEntryField.ShowModal = mrOK then
  Begin
   if (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0) > 0) then
    if dmcOrder.ValidLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) then
    Begin
     Try
     dmcOrder.CngLOonLoad(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
     StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) ;

     GetLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0), Sender) ;
     ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_13' (* 'LOnr ändrat i lasten ' *) )) ;
//     if dmcOrder.cdsLoadsForLO.Locate('LoadNo', LoadNo, []) then
     if dmcOrder.FindLoadRecord(LoadNo) then
      acOpenLoadExecute(Sender) ;
     Except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     End ;
    End //if dmcOrder.ValidLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) then
     else
     ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_14' (* 'LOnr ' *) ) + fEntryField.eNoofpkgs.Text + siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_15' (* ' finns ej eller så skiljer sig leverantör eller lastställe från det LOnr lasten har.' *) )) ;
  End ;
 Finally
  FreeAndNil(fEntryField) ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acChangeLOonLoadUpdate(Sender: TObject);
begin
 With dmcOrder do
 Begin
  acChangeLOonLoad.Enabled := (ThisUser.CompanyNo = 741)
  and (grdFSDBTableView1.DataController.DataSet.FieldByName('LoadAR').AsInteger <> 1) ;
//  (cdsLoadsForLOLoadAR.AsInteger <> 1) ;
 End ;// With dmcOrder do
end;

procedure TfrmVisTruckLoadOrder.acChangePackage_SizeExecute(Sender: TObject);
Var Package_Size      : Integer ;
    PackageSizeName   : String ;
begin
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName  := 'indexSupplierShipPlanObjectNo' ;
  Try
  Package_Size  :=  GetNewPackage_Size(PackageSizeName) ;
  if Package_Size > -1 then
  Begin
    GetMarkedRows_II(Sender) ;
    cdsSawmillLoadOrders.DisableControls ;
    Try
    mtMarkedRows.First ;
    while not mtMarkedRows.Eof do
    Begin
     if cdsSawmillLoadOrders.FindKey([mtMarkedRowsSSPNo.AsInteger]) then
     Begin
      cdsSawmillLoadOrders.Edit ;
      cdsSawmillLoadOrders.FieldByName('Package_Size').AsInteger     := Package_Size ;
      cdsSawmillLoadOrders.FieldByName('PackageSizeName').AsString   := PackageSizeName ;
      cdsSawmillLoadOrders.Post ;
     End;
     mtMarkedRows.Next ;
    End;
    Finally
     cdsSawmillLoadOrders.EnableControls ;
     mtMarkedRows.Active := False ;
    End;
  End;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  End ;
 End;
end;


procedure TfrmVisTruckLoadOrder.GetLO(const LONo : Integer;Sender: TObject) ;
Begin
 With dmcOrder do
 Begin
  teSearchLONo.Text:= IntToStr(LONo) ;
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  Try
   GetOneLO(Sender) ;
//   Timer1.Enabled:= True ;
   teSearchLONo.Text:= '' ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
  End ;
 End ; //with
End ;



procedure TfrmVisTruckLoadOrder.acSaveBookingExecute(Sender: TObject);
begin
 With dmcOrder do
 Begin

  if dm_Booking.cdsVoyage.State in [dsEdit, dsInsert] then
   dm_Booking.cdsVoyage.Post ;

  if cdsBooking.State in [dsEdit, dsInsert] then
   cdsBooking.Post ;
//  if cdsSawmillLoadOrders.State = dsEdit then
//   cdsSawmillLoadOrders.Post ;

  if dm_Booking.cdsVoyage.ChangeCount > 0 then
  Begin
   dm_Booking.cdsVoyage.ApplyUpdates(0)  ;
   dm_Booking.cdsVoyage.CommitUpdates ;
  End ;
//  if cdsSawmillLoadOrders.ChangeCount > 0 then
//   cdsSawmillLoadOrders.ApplyUpdates(0)  ;
  if cdsBooking.ChangeCount > 0 then
  Begin
   cdsBooking.ApplyUpdates(0) ;
   cdsBooking.CommitUpdates ;
  End ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acSaveBookingUpdate(Sender: TObject);
begin
 acSaveBooking.Enabled:= not DataSaved ;
end;

procedure TfrmVisTruckLoadOrder.acPrintmenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300,200);
end;

procedure TfrmVisTruckLoadOrder.acPrintTOExecute(Sender: TObject);
var
  RepNo: Integer;
  Save_Cursor: TCursor;
  Params: TCMParams;
  RC: TCMReportController;
  Lang: integer;
  LoNo: integer;
  ReportType: integer;
  FR: TFastReports;
begin
  dmFR.SaveCursor;
  try
  Lang := grdLODBTableView1.DataController.DataSet.FieldByName('Languagecode').AsInteger;
    LONo := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
    FR := TFastReports.Create;
    Try
      if grdLODBTableView1.DataController.DataSet.FieldByName('OrderType')
        .AsInteger = c_Sales then
      begin
        ReportType := cTrporder
      end
      else
        ReportType := cTrporderInkop;

      FR.TrpO(LONo, ReportType, Lang, '', '', '');
    Finally
      FR.Free;
    End;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmVisTruckLoadOrder.acPrintTO_ManuallyExecute(Sender: TObject);
var
  Lang, salesRegion: integer;
  FR: TFastReports;
  FR2: TFastReports2;
  SR: integer;
  MailToAddress: string;
  LoNo: integer;
  LONos: TList<integer>;
begin
  LONos := nil;
  if TAction(Sender) = acMailTO_Manually then
  begin
    if (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger > 0) and (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.IsNull = False) then
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger)
    else
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger);
    if Length(MailToAddress) = 0 then
    begin
      MailToAddress := 'ange@adress.nu';
      ShowMessage('Emailadress saknas för klienten, ange adressen ' + 'direkt i mailet(outlook)');
    end;
  end
  else
    MailToAddress := '';

  LoNo := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  if LoNo < 1 then
  begin
    showMessage(format('Ogiltigt LO-nummer: %d', [LoNo]));
    Exit;
  end;

  Lang := dmsContact.getCustomerLanguage(dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger);
  try
    SR := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo);
    if TAction(Sender) = acMailTO_Manually then
    begin
      LONos := TList<integer>.create;
      LONos.Add(LoNo);
      FR2 := TFastReports2.createForMail(dmFR, nil, dmsSystem.Get_Dir('EXCELDIR'), ThisUser.UserEmail, MailToAddress, Lang, SR, ThisUser.UserID);
      FR2.mailTrpOrderByType(cfTrpOrder_Manual, LONos)
    end
    else
    begin
      FR2 := TFastReports2.create(dmFR, Lang, SR);
      FR2.preViewTrpOrderByReportType(cfTrpOrder_Manual, LoNo)
    end;
  finally
    if assigned(FR2) then
      FR2.Free;
    if assigned(LONos) then
      LONos.Free;
  end;
end;

procedure TfrmVisTruckLoadOrder.grdFSDBTableView1DblClick(Sender: TObject);
begin
  PostMessage (Handle, UM_AFTERDETAILCHANGEINQ, 0, 0);
end;

procedure TfrmVisTruckLoadOrder.grdFSDBTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
 AEdit.OnDblClick:= grdFSDBTableView1DblClick ;
end;

procedure TfrmVisTruckLoadOrder.grdFSDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  Var LoadAR,
      PackageEntryOption  : Integer ;
      AColumn             : TcxCustomGridTableItem;
begin
 //LoadAR
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('LoadAR') ;
  LoadAR:= ARecord.Values[AColumn.Index] ;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageEntryOption').Index] <> null then
  Begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PackageEntryOption') ;
  PackageEntryOption  := ARecord.Values[AColumn.Index] ;
  End
  else
  PackageEntryOption  := 0 ;

  // Set the color to Yellow if AR
  if (LoadAR = 1) then
  AStyle := cxStyle1clYellow ;

  if PackageEntryOption > 0 then
  AStyle := cxStyle1Red ;
end;

procedure TfrmVisTruckLoadOrder.grdFSExit(Sender: TObject);
begin
 With dmcOrder do
 Begin
  if cdsLoadsForLO.State in [dsEdit] then
   cdsLoadsForLO.Post ;

  if cdsLoadsForLO_forVW.State in [dsEdit] then
   cdsLoadsForLO_forVW.Post ;
 End;
end;

procedure TfrmVisTruckLoadOrder.acPrintFSMisMatchExecute(Sender: TObject);
Var //FormCRViewReport : TFormCRViewReport ;
  LoadNo        : integer;
  FR2           : TFastReports2;
  lang          : integer;
  salesRegion   : TCompanyNo;

begin
  dmsConnector.SaveandSetCursor(crSQLWait);
  try
    LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger;
    if LoadNo < 1 then
      exit;
    lang := dmsContact.getCustomerLanguage(dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
    salesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    FR2 := TFastReports2.create(dmFR, lang, salesRegion);
    try
      FR2.preViewTallyByReportType(cfTally_no_matching_pkg, LoadNo, false);
    finally
      FR2.Free;
    end;
  finally
    dmsConnector.RestoreCursor;
  end;
end;

procedure TfrmVisTruckLoadOrder.teSearchLONoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName   := 'cdsSawmillLoadOrdersLONo' ;
  Try
   GetOneLO(Sender) ;
   Timer1.Enabled:= True ;
   teSearchLONo.Text:= '' ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName  := 'indexSupplierShipPlanObjectNo' ;
  End ;
 End ; //with
end;

procedure TfrmVisTruckLoadOrder.teSearchLoadNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  Try
   teSearchLONo.Text:= IntToStr(dmcOrder.GetLONoForLoadNo (StrToIntDef(Trim(teSearchLoadNo.Text),0))) ;
   GetOneLO(Sender) ;
//   cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[])
   if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text),0)) then ;
   Timer2.Enabled:= True ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
   teSearchLoadNo.Text:= '' ;
  End ;
 End ; //with
end;

procedure TfrmVisTruckLoadOrder.acSearchExecute(Sender: TObject);
Var LONr : Integer ;
begin
 LONr  := 0 ;
 OpenLoadOrderSearch(LONr) ;
 Application.ProcessMessages ;
 if LONr > 0 then
 Begin
  teSearchLONo.Text:= IntToStr(LONr) ;
  GetOneLO(Sender) ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acBytMellanBTBochBTHExecute(Sender: TObject);
Var NewNo : Integer ;
begin
 if (dmcOrder.cds_PropsVerkNo.AsInteger = 172)
 OR (dmcOrder.cds_PropsVerkNo.AsInteger = 2878) then
 Begin
  if (dmcOrder.cds_PropsVerkNo.AsInteger = 172) then
  NewNo := 2878
  else
  NewNo := 172 ;

//  cbSupplier.Properties.OnChange:= Nil ;
//  Try

   dmcOrder.cds_Props.Edit ;
   dmcOrder.cds_PropsVerkNo.AsInteger := NewNo ;
   dmcOrder.cds_Props.Post ;

{   For x:= 0 to cbSupplier.Properties.Items.Count -1 do
   if NewNo = integer(cbSupplier.Properties.Items.Objects[x]) then
   Begin
    cbSupplier.ItemIndex:= x ;
    dmcOrder.SupplierNo:= integer(cbSupplier.Properties.Items.Objects[x]);
   End ;
  Finally
   cbSupplier.Properties.OnChange  := cbSupplierPropertiesCloseUp ;
  End ; }
 End ;//if..
end;

procedure TfrmVisTruckLoadOrder.acOpenFSUpdate(Sender: TObject);
begin
 With dmsSystem do
 Begin
  acOpenFS.Enabled  := (cds_Load_Imp.Active) and (cds_Load_Imp.RecordCount > 0) ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.acEmailaFSExecute(Sender: TObject);
const
  LF = #10;
Var
    MailToAddress           : String ;
    MailFrom                : string;
    ExcelDir                : String ;
    loadNo                  : integer;
    ReportType              : Integer;
    lang                    : integer;
    FR2                     : TFastReports2;
    SalesRegion             : TCompanyNo;
    NoOfCopies              : integer;
    loads                   : TList<integer>;

begin
  dmFR.SaveCursor;
  try
    if (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger > 0) and (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.IsNull = False) then
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger)
    else
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger);
    if Length(MailToAddress) = 0 then
    begin
      MailToAddress := 'ange@adress.nu';
      ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_16' (* 'Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)' *) ));
    end;
    loadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger;
    if loadNo < 1 then
      Exit;
    lang := dmsContact.getCustomerLanguage(dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger);
    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger <> 2 then
      ReportType := cFoljesedelIntern
    else
      ReportType := cFoljesedel;
    SalesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if Length(MailToAddress) > 0 then
    begin
      MailFrom := ThisUser.UserEmail;
      loads := TList<integer>.create;
      try
        loads.add(loadNo);
        FR2 := TFastReports2.createForMail(dmFR, nil, ExcelDir, MailFrom, MailToAddress, lang, SalesRegion, ThisUser.UserID);
        try
          FR2.mailTallyByType(ReportType, loads, true);
        finally
          FR2.free;
        end;
      finally
        loads.free;
      end;
    end;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmVisTruckLoadOrder.grdLODBTableView1DblClick(Sender: TObject);
begin
 //showmessage('acPrintLOStatusExecute');
 acPrintLOStatusExecute(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.CreateLoadForm ;
Begin
 if not assigned(fLoadEntrySSP) then
  fLoadEntrySSP              := TfLoadEntrySSP.Create(nil) ;

 fLoadEntrySSP.cxStyleHeader.Font.Size     := cxStyleHeader.Font.Size ;
 fLoadEntrySSP.cxStyleContent.Font.Size    := cxStyleContent.Font.Size ;
 fLoadEntrySSP.cxStyleContentOdd.Font.Size := cxStyleContentOdd.Font.Size ;

 fLoadEntrySSP.Parent       := pnlLoad ;
 fLoadEntrySSP.Align        := alClient ;
 fLoadEntrySSP.BorderStyle  := bsNone ;

End ;
function TfrmVisTruckLoadOrder.OpenNormalLoad(const LONo, LoadNo : Integer;const Lagerkod : String) : Boolean ;
Var LSupplierNo     : Integer ;
    ReservedByUser  : String ;
begin
 tcLO.OnChange := nil ;
 Try
 fLoadEntrySSP.ExternSaveLoad ;
 ReservedByUser := dmsSystem.Load_Reserved(LoadNo) ;

 if Length(ReservedByUser) > 0 then
 begin
  ShowMessage(siLangLinked_frmVisTruckLoadOrder.GetTextOrDefault('IDS_21' (* 'Cannot open, Load is locked by user ' *) ) + ReservedByUser) ;
  Result  := False ;
  Exit ;
 end
  else
   Result  := True ;

  CreateLoadForm ;

  if Not dmLoadEntrySSP.IsLoadOpen(LoadNo) then
  Begin
//   if (grdFSDBTableView1.DataController.DataSet.Active) and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
//   Begin

    if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
     LSupplierNo:= grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger
      else //dmcOrder.SupplierNo kan vara tex en lego
       LSupplierNo:= dmcOrder.SupplierNo ;

    if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then
    if LoadNo < 1 then
    Exit ;
    CheckIfChangesUnSaved ;
    fLoadEntrySSP.CreateWithExistingLoad(

        //dmcOrder.SupplierNo,
        LSupplierNo,
        LoadNo,
        grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('LoadingLocationNo').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
        LSupplierNo,//grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('SPCustomerNo').AsInteger,
        Lagerkod) ;
        fLoadEntrySSP.Show ;

        Application.ProcessMessages ;

//       AddLoadNoTab(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsString) ;
//   End ;//if..
  End ; //if dmLoadEntrySSP.IsLoadOpen(LoadNo) then

    AddLoadNoTab(IntToStr(LONo), IntToStr(LoadNo), Lagerkod) ;

 Finally
  tcLO.OnChange := tcLOChange ;
 End ;
end;


(*
procedure TfrmVisTruckLoadOrder.OpenUtlastningsSpec(Sender: TObject);
Var LSupplierNo : Integer ;
begin
 if (grdFSDBTableView1.DataController.DataSet.Active) and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
 Begin
//dmcOrder.SupplierNo är valt företag i droplistan
//Endast vidawood användare kan välja ett annat än sitt eget företag
//Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.
 if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
  LSupplierNo:= grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger
   else //dmcOrder.SupplierNo kan vara tex en lego
    LSupplierNo:= dmcOrder.SupplierNo ;

 if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then
 Exit ;
 CheckIfChangesUnSaved(Sender) ;
 LockWindowUpdate(grdFS.Handle);
  try
//    LoadBM := grdLoads.DataSource.DataSet.Bookmark;
    try
      with TfLoadEntrySSPTemp.CreateWithExistingLoad(
        Self,
//om användaren är vida wood skall supplierno vara LOens supplierno
//då är det ingen risk att fel lager väljs
        //dmcOrder.SupplierNo,
        LSupplierNo,
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('LoadingLocationNo').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
        grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger,
        grdLODBTableView1.DataController.DataSet.FieldByName('SPCustomerNo').AsInteger
        ) do try
        ShowModal;
        Application.ProcessMessages ;
       AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
       grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);
       dmcOrder.ShowLoadsForLO(grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger) ;
      finally
        Free
      end;
    finally
      try
//        grdLoads.DataSource.DataSet.Bookmark := LoadBM;
  except
   on E:Exception do
          {Nothing};
   end;
  end;
  finally
    LockWindowUpdate(0);
  end;
 End ;//if..
end;
*)

procedure TfrmVisTruckLoadOrder.tcLOChange(Sender: TObject);
Var LONo, LoadNo  : Integer ;
    LONoLoadNo, Lagerkod    : String ;
begin

   SetPanelToShowAndHide ;
    if tcLO.TabIndex > 0 then
    Begin
     LoadNo     := 0 ;
     LONo       := 0 ;
     Lagerkod   := '1' ;
     LONoLoadNo := tcLO.Tabs.Strings[tcLO.TabIndex] ;
     LONo       := StrToInt(Copy(LONoLoadNo, 1, POS('/', LONoLoadNo)-1 )) ;
     LONoLoadNo := Copy(LONoLoadNo, POS('/', LONoLoadNo)+1,  Length(LONoLoadNo) -  POS('/', LONoLoadNo)) ;

     LoadNo     := StrToInt(Copy(LONoLoadNo, 1, POS('-', LONoLoadNo)-1)) ; //Length(LONoLoadNo) )) ;
     LONoLoadNo := Copy(LONoLoadNo, POS('-', LONoLoadNo)+1,  Length(LONoLoadNo) -  POS('-', LONoLoadNo)) ;

     Lagerkod   := LONoLoadNo ;//Copy(LONoLoadNo, POS('-', LONoLoadNo)+1, Length(LONoLoadNo) ) ;

     if OpenNormalLoad(LONo, LoadNo, Lagerkod) then
     begin
       if fLoadEntrySSP.mePackageNo.Enabled then
        fLoadEntrySSP.mePackageNo.SetFocus
         else
          fLoadEntrySSP.grdLORows.SetFocus ;
     end;

    End
      else
       Begin
        if (dmcOrder.dsrcLoadsForLO.DataSet.Active) and (dmcOrder.dsrcLoadsForLO.DataSet.RecordCount > 0) then
         LoadNo := dmcOrder.dsrcLoadsForLO.DataSet.FieldByName('LoadNo').AsInteger ;

        dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
        if LoadNo > 0 then
         dmcOrder.dsrcLoadsForLO.DataSet.Locate('LoadNo', LoadNo, []) ;
       End ;

end;

procedure TfrmVisTruckLoadOrder.SetPanelToShowAndHide ;
begin
 if tcLO.TabIndex = 0 then
 Begin
  pnlLOList.Visible := True ;
  pnlLoad.Visible   := False ;
  pnlLOList.Align   := alClient ;
  frmVisTruckLoadOrder.SetFocus ;
 End
 else
 Begin
  pnlLOList.Visible := False ;
  pnlLoad.Visible   := True ;
  pnlLoad.Align     := alClient ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.AddLoadNoTab(const LONo, LoadNo, Lagerkod : String) ;
Var i : Integer ;
    LONoLoadNo : String ;
Begin
 LONoLoadNo := LONo + '/' + LoadNo + '-' + Lagerkod ;
 i  := tcLO.Tabs.IndexOf(LONoLoadNo) ;
 if i > 0 then
  tcLO.TabIndex := i
   else
    Begin
     tcLO.Tabs.Add(LONoLoadNo) ;
     i  := tcLO.Tabs.IndexOf(LONoLoadNo) ;
     tcLO.TabIndex := i ;
//     tcLO.Tabs.Tabs[i].ImageIndex  := -1 ;
    End ;
End ;

procedure TfrmVisTruckLoadOrder.ClearLOTab ;
Begin
 tcLO.Tabs.Clear ;
 tcLO.Tabs.Add('Lastorderlista') ;
End ;

procedure TfrmVisTruckLoadOrder.acPrintFSExecute(Sender: TObject);
Var
(*
  FormCRViewReport : TFormCRViewReport;
  LoadNo: integer;
  Lang: integer;
  ReportType: integer;
  FR: TFastReports;
  NoOfCopies: integer;
*)
  LoadNo: integer;
  Lang: integer;
  ReportType: integer;
  salesregion: TCompanyNo;
  FR2: TFastReports2;
begin
  dmFR.SaveCursor;
  try
    LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger;
    if LoadNo < 1 then
      Exit;

    // Try get client language, use swedish if fail.
    Lang := dmsContact.getCustomerLanguage(dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger);
    if Lang = -1 then
      Lang := cSwedish;

      salesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType').AsInteger < 2 then
      ReportType := cfTallyInternal
    else
      ReportType := cfTally;

    FR2 := TFastReports2.create(dmFR, Lang, salesregion);
    try
      FR2.preViewTallyByReportType(ReportType, LoadNo, true);
    finally
      FR2.free;
    end;
(*
    NoOfCopies := 0;
    LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger;
    if LoadNo < 1
    then
      Exit;

    // Try get client language, use swedish if fail.
    Lang := dmsContact.getCustomerLanguage
      (dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger);
    if Lang = -1 then
      Lang := cSwedish;

    if uReportController.useFR then
    begin
      if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
        .AsInteger <> 2 then
        ReportType := cFoljesedelIntern
      else
        ReportType := cFoljesedel;
      try
        FR := TFastReports.Create;
        FR.Tally(LoadNo, ReportType, Lang, '', '', '', NoOfCopies);
      finally
        FreeAndNil(FR);
      end;
    end
    else
    begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger
          := LoadNo;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try

        if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
          .AsInteger <> 2 then
          FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
        else
        Begin
          if Lang = cSwedish
          then
            FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT')
          else
            FormCRViewReport.CreateCo('TALLY_eng_VER3_NOTE.RPT');

        End;

        if FormCRViewReport.ReportFound then
        Begin
          FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
            (LoadNo);
          FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;

          FormCRViewReport.CRViewer91.ViewReport;
          FormCRViewReport.ShowModal;
        End;
      Finally
        FreeAndNil(FormCRViewReport);
        Try
          dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger := LoadNo;
          dmsSystem.sq_DelPkgType.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;
    end;
*)
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmVisTruckLoadOrder.RemoveTab(const LONo, LoadNo: integer;const Lagerkod : String);
Var
  i: integer ;
    LONoLoadNo  : String ;
Begin
 tcLO.OnChange  := nil ;
 Try
   LONoLoadNo := IntToStr(LONo) + '/' + IntToStr(LoadNo) + '-' + Lagerkod;
   i  := tcLO.Tabs.IndexOf(LONoLoadNo) ;
   if i > 0 then
   Begin
    dmsSystem.DelLoad_Res(LoadNo) ;
    dmLoadEntrySSP.CloseDataSets ;
    tcLO.Tabs.Delete(i) ;
   End ;
   tcLO.TabIndex  := 0 ;
   SetPanelToShowAndHide ;
   teSearchLONo.Text := intToStr(LONo) ;
   GetOneLO(nil) ;
 Finally
   tcLO.OnChange  := tcLOChange ;
 End;
End ;

procedure TfrmVisTruckLoadOrder.teMultiSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //Sök på LOnr, referenser, BL/LOT, produktbeskrivning mm
 if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName   := 'cdsSawmillLoadOrdersLONo' ;
  Try
   GetOneLO(Sender) ;
   Timer1.Enabled:= True ;
   teSearchLONo.Text:= '' ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName  := 'indexSupplierShipPlanObjectNo' ;
  End ;
 End ; //with
end;

procedure TfrmVisTruckLoadOrder.teReferensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then Exit;
 With dmcOrder do
 Begin
  dmcOrder.cdsSawmillLoadOrders.IndexName:= 'cdsSawmillLoadOrdersLONo' ;
  Try
//   teSearchLONo.Text:= IntToStr(dmcOrder.GetLONoForLoadNo (StrToIntDef(Trim(teSearchLoadNo.Text),0))) ;
   GetOneLO(Sender) ;
//   cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[])
   if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text),0)) then ;
   Timer3.Enabled:= True ;
  Finally
   dmcOrder.cdsSawmillLoadOrders.IndexName:= 'indexSupplierShipPlanObjectNo' ;
   teReferens.Text:= '' ;
  End ;
 End ; //with
end;

procedure TfrmVisTruckLoadOrder.teREFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  function OccurrencesOfChar(const ContentString: string; const CharToCount:
    char): integer;
  var
    C: Char;
  begin
    result := 0;
    for C in ContentString do
      if C = CharToCount then
        Inc(result);
  end;

  function outOfLimit(const s: string): boolean;
  var
    noOfAsterisks: integer;
    NoOfchars: integer;
    minNoOfChar: integer;
  begin
    result := true;
    noOfAsterisks := OccurrencesOfChar(s, '*');
    NoOfchars := s.Length;
    if noOfAsterisks > 0 then
      dec(NoOfchars, noOfAsterisks);
    if NoOfchars < 3 then
      exit;   // Minimum 3
    result := false;
  end;

begin
  if Key <> VK_RETURN then
    Exit;
  if OutOfLimit(teREF.Text) then
  begin
    showMessage('För få tecken inmatade! ( minst 3 tecken förutom wildcards)' + #10#13 +
      '(ex. "*123", "*123*", "na*-*7 och "NaGy*" är korrekt men ej "*12" - för få tecken');
    exit;
  end;

  if OccurrencesOfChar(teREF.Text,'*') = 0 then teREF.Text := '*' + teREF.Text + '*';


  with dmcOrder do
  begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    try
//   teSearchLONo.Text:= IntToStr(dmcOrder.GetLONoForLoadNo (StrToIntDef(Trim(teSearchLoadNo.Text),0))) ;
      GetOneLO(Sender);
//   cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[])
      if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text), 0)) then
        ;
      Timer3.Enabled := True;
    finally
      dmcOrder.cdsSawmillLoadOrders.IndexName := 'indexSupplierShipPlanObjectNo';
      teRef.Text := '';
    end;
  end; //with

end;

procedure TfrmVisTruckLoadOrder.tcLOCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
    //Remove reservation on Load
 if tcLO.TabIndex > 0 then
 Begin
  dmsSystem.DelLoad_Res(StrToIntDef(tcLO.Tabs.Strings[tcLO.TabIndex],-1)) ;
  ACanClose  := True ;
 End
  else
   ACanClose  := False ;
end;

procedure TfrmVisTruckLoadOrder.pmLOGridPopup(Sender: TObject);
begin
 SpinEditRubrikFontSortimentsVy.IntCurValue   := cxStyleHeader.Font.Size ;
 SpinEditRubrikFontSortimentsVy.Value         := SpinEditRubrikFontSortimentsVy.IntCurValue ;

 SpinEditContentFontSortimentsVy.IntCurValue  := cxStyleContent.Font.Size ;
 SpinEditContentFontSortimentsVy.Value        := SpinEditContentFontSortimentsVy.IntCurValue ;
end;

procedure TfrmVisTruckLoadOrder.SpinEditRubrikFontSortimentsVyCurChange(
  Sender: TObject);
begin
 cxStyleHeader.Font.Size := SpinEditRubrikFontSortimentsVy.IntCurValue ;
end;

procedure TfrmVisTruckLoadOrder.SpinEditContentFontSortimentsVyCurChange(
  Sender: TObject);
begin
 cxStyleContent.Font.Size     := SpinEditContentFontSortimentsVy.IntCurValue ;
 cxStyleContentOdd.Font.Size  := SpinEditContentFontSortimentsVy.IntCurValue ;
end;

procedure TfrmVisTruckLoadOrder.acSaveVyerExecute(Sender: TObject);
begin
 SaveUserPreferences ;
end;

procedure TfrmVisTruckLoadOrder.Hyvelorder1Click(Sender: TObject);
begin
 bPrintHyvelOrderClick(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.Specificationallalaster1Click(
  Sender: TObject);
begin
 dxBarButton21Click(Sender) ;
end;

procedure TfrmVisTruckLoadOrder.acPrintCMRExecute(Sender: TObject);
var fEnterLoadWeight: TfEnterLoadWeight;
begin
 //Set KG
 fEnterLoadWeight := TfEnterLoadWeight.Create(nil) ;
 Try
  dmsSystem.GenerateLoadWeight(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;
  dmsSystem.Open_cds_LoadWeigth(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;
  fEnterLoadWeight.ShowModal ;
  PRE_PreviewCMR(Sender) ;
 // PreviewCMR(Sender) ;
 Finally
  dmsSystem.Close_cds_LoadWeigth ;
  FreeAndNil(fEnterLoadWeight) ;
 End ;
end;

procedure TfrmVisTruckLoadOrder.PRE_PreviewCMR(Sender: TObject) ;
Var Val     : Integer ;
    Avsluta : Boolean ;
begin
 Avsluta := False ;
 Val := TfSelectPrintDevice.Execute ;
 if Val > 0 then
 Begin
//  if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
//   if TfConfirm.Execute ('Avsluta lasten') = mrYes then
//    Avsluta := True ;
  if Val = 2 then
   PreviewCMR(Sender)
    else
     if Val = 1 then
      PrintDirectCMR(Sender) ;
//  if Avsluta then
//  Begin
//   if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
//   acSaveAndOKExecute(Sender) ;
//  End ;
 End ;
End ;

procedure TfrmVisTruckLoadOrder.PrintDirectCMR(Sender: TObject);
var //FormCRPrintOneReport  : TFormCRPrintOneReport;
  A: array of Variant;
  LoadNo: integer;
  FR: TFastReports;

begin
  // Edit1.SetFocus ;
  LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
    .AsInteger;
  if LoadNo < 1 then
    Exit;
  if uReportController.useFR then
  begin
    try
      FR := TFastReports.createForPrint(False);
      FR.CMR(LoadNo);
    finally
      FreeAndNil(FR);
    end;
  end
  else
  begin
      {
      FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
         Try
           // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

           SetLength(A, 1);
           A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
             .AsInteger;
           FormCRPrintOneReport.CreateCo(1, False, False, A, 'CMR.RPT');
           Try
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
end;

procedure TfrmVisTruckLoadOrder.PreviewCMR(Sender: TObject);
Var
  //FormCRViewReport: TFormCRViewReport ;
  LoadNo: integer;
  FR: TFastReports;

begin
// Edit1.SetFocus ;
  LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
    .AsInteger;
  if uReportController.useFR then
  begin
    try
      FR := TFastReports.Create;
      FR.CMR(LoadNo);
    finally
      FreeAndNil(FR);
    end;
  end
  else
  begin
      {
      FormCRViewReport := TFormCRViewReport.Create(Nil);
         Try
           FormCRViewReport.CreateCo('CMR.RPT');

           if FormCRViewReport.ReportFound then
           Begin
             FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(LoadNo);
             FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;
             FormCRViewReport.CRViewer91.ViewReport;
             FormCRViewReport.ShowModal;
           End;
         Finally
           FreeAndNil(FormCRViewReport);
         End;
   }
  end;
end;

function TfrmVisTruckLoadOrder.GetPositionID: integer;
var
  fLagerPos: TfLagerPos;
  PIPNo : Integer ;
begin
 With dmcOrder, dmsSystem do
 Begin
 //PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsLoadingLocationNo.AsInteger) ;
  PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cdsSawmillLoadOrdersSupplier.AsInteger, cdsSawmillLoadOrdersLoadingLocationNo.AsInteger) ;
  fLagerPos :=  TfLagerPos.Create(nil);
  Try
  if sp_LagerPos.Active then
   sp_LagerPos.Active :=  False ;
   sp_LagerPos.ParamByName('@PIPNo').AsInteger  := PIPNo ;
   sp_LagerPos.Active := True ;
    if fLagerPos.ShowModal = mrOK then
    Begin
     Result :=  sp_LagerPos.FieldByName('PositionID').AsInteger ;
    End
    else
    Result :=  -1 ;

  Finally
    FreeAndNil(fLagerPos) ;
    sp_LagerPos.Active  := False ;
  End;
 End;
end;

End.
