unit UnitLoadEntrySSP;
{$DEFINE NOLOGG}

interface

uses
  Windows, Messages
  , synCommons
  , SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, System.Generics.Collections,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems, Menus, cxLookAndFeelPainters, DateUtils, cxButtons,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, cxSpinEdit, cxBarEditItem, cxNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu, siComp, siLngLnk, System.Actions,
  Vcl.Touch.Keyboard, uReportController, cxSplitter, Vcl.Buttons,
  dxSkinOffice2019Colorful, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, dxSkinBasic, cxImageList, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, VidaConst ;

type
  TfLoadEntrySSP = class(TForm)
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    lbReValidateAllPkgs: TdxBarLargeButton;
    lbPackageEntry: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbValidatePkg: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    pmLONumber: TdxBarPopupMenu;
    lbSetDefaultMatchAllPkg: TdxBarLargeButton;
    tsLoadNote: TcxTabSheet;
    ImageList1: TImageList;
    images1616: TImageList;
    siPrint: TdxBarSubItem;
    lbFS: TdxBarLargeButton;
    lbLastOrderAllaVerk: TdxBarLargeButton;
    lbLastOrderErtVerk: TdxBarLargeButton;
    lbSpecAllaLasterLO: TdxBarLargeButton;
    lbDeletePkg: TdxBarLargeButton;
    lbRemoveAllPkgs: TdxBarLargeButton;
    lbDeleteALLPkgs: TdxBarLargeButton;
    lbUndo: TdxBarLargeButton;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    ppmenuLO_Lines: TdxBarPopupMenu;
    bbTally_Ver2: TdxBarButton;
    bbConnectPkgsToLO: TdxBarButton;
    bbPickPkgNos: TdxBarButton;
    lbStartBarCodeReading: TdxBarLargeButton;
    bbAddPkgPerPkgCode: TdxBarButton;
    bbRemovePkgsPerPkgCode: TdxBarButton;
    ActionList1: TActionList;
    acValidatePkg: TAction;
    acValidateAllPkgs: TAction;
    acInsertPkgToInventory: TAction;
    acInsertAllPkgsToInventory: TAction;
    acRemovePkgFromSystem: TAction;
    acRemoveAllPkgsFromSystem: TAction;
    acUndoPkgOperation: TAction;
    acSetDefaultMatchOnAllPkgs: TAction;
    acPkgInfo: TAction;
    acAddPkgByPkgCode: TAction;
    detLoaded: TcxDBDateEdit;
    acPickPkgNos: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    acSaveLoad: TAction;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    imgcbStatus: TcxDBImageComboBox;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acPrintTallyUSNote: TAction;
    grdAddressDBTableView1: TcxGridDBTableView;
    grdAddressLevel1: TcxGridLevel;
    grdAddress: TcxGrid;
    grdAddressDBTableView1Address: TcxGridDBColumn;
    grdAddressDBTableView1Destination: TcxGridDBColumn;
    grdAddressDBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    grdLODBTableView1LoadNo: TcxGridDBColumn;
    grdLODBTableView1SupplierNo: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdLODBTableView1CUSTOMER: TcxGridDBColumn;
    grdLODBTableView1SHIPPER: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1VESSEL: TcxGridDBColumn;
    grdLODBTableView1ETD: TcxGridDBColumn;
    grdLODBTableView1ETA: TcxGridDBColumn;
    grdLODBTableView1SHIPPER_REF: TcxGridDBColumn;
    grdLODBTableView1SHIPPERID: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPDATE: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPTIME: TcxGridDBColumn;
    grdLODBTableView1ORDERNO: TcxGridDBColumn;
    grdLODBTableView1ORDERTYPE: TcxGridDBColumn;
    grdLODBTableView1CreatedUser: TcxGridDBColumn;
    grdLODBTableView1ModifiedUser: TcxGridDBColumn;
    grdLODBTableView1DateCreated: TcxGridDBColumn;
    grdLODBTableView1CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1Avrop_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1Shipping: TcxGridDBColumn;
    grdLODBTableView1SUPPLIER: TcxGridDBColumn;
    grdLODBTableView1LOC_CUST: TcxGridDBColumn;
    grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn;
    grdLODBTableView1SHIP_TO: TcxGridDBColumn;
    teLoadID: TcxDBTextEdit;
    teFS: TcxDBTextEdit;
    lcLocalShipper: TcxDBLookupComboBox;
    lcFrom: TcxDBLookupComboBox;
    lcTo: TcxDBLookupComboBox;
    eLoadNo: TcxDBTextEdit;
    meInternalNote: TcxDBMemo;
    acKopplaPaketMotLOManuellt: TAction;
    acDeleteLoad: TAction;
    acPrintFS: TAction;
    acLOAllaVerk: TAction;
    acPrintLOErtVerk: TAction;
    acPrintSpecAllaLasterLO: TAction;
    acPkgEntry: TAction;
    acStreckKodsinlasning: TAction;
    acPktNrSerie: TAction;
    acTaBortPaketPerPaketKod: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleSilver: TcxStyle;
    acImportPackages: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    acCreateInternLO: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acOpenLOForm: TAction;
    dxBarButton2: TdxBarButton;
    acClose: TAction;
    acSaveAndOK: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acPrintMeny: TAction;
    pmPrint: TdxBarPopupMenu;
    PopupMenu1: TPopupMenu;
    Lggtillpaketperpaketkod1: TMenuItem;
    StngF121: TMenuItem;
    AutoLO1: TMenuItem;
    abortlastF51: TMenuItem;
    Importpaket1: TMenuItem;
    Lggallapakettilllagret1: TMenuItem;
    Lggmarkeradepakettillbakstilllager1: TMenuItem;
    KopplamarkeradepaketmotLOmanuellt1: TMenuItem;
    Lastorderallaverk1: TMenuItem;
    ppnaLO1: TMenuItem;
    Plockapaketnr1: TMenuItem;
    PktinmatF91: TMenuItem;
    Paketinformation1: TMenuItem;
    Pktnrserie1: TMenuItem;
    Fljesedel1: TMenuItem;
    Hyvelorder1: TMenuItem;
    Lastorderertverk1: TMenuItem;
    SkrivutF81: TMenuItem;
    SpecificationallalasterLO1: TMenuItem;
    FljesedelUSA1: TMenuItem;
    abortallapaketfrnsystemet1: TMenuItem;
    StatusOKSparaF101: TMenuItem;
    SparaF31: TMenuItem;
    Sttstandardmatchningpallapaket1: TMenuItem;
    Streckkod1: TMenuItem;
    abortpaketperpaketkod1: TMenuItem;
    ngra1: TMenuItem;
    ngratabort2: TMenuItem;
    Validerapaket1: TMenuItem;
    acPrintFSMisMatch: TAction;
    dxBarButton3: TdxBarButton;
    acDeleteNotCompletePkgs: TAction;
    acMailaFS: TAction;
    dxBarButton4: TdxBarButton;
    acSetStatusPrelandSave: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    acGetVPPackages: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    pmMenuOptions: TdxBarPopupMenu;
    dxBarLargeButton7: TdxBarLargeButton;
    Timer1: TTimer;
    dxBarLargeButton8: TdxBarLargeButton;
    cxLabel4: TcxLabel;
    cxEditStyleControllerFileldLabels: TcxEditStyleController;
    cxEditStyleControllerEditControls: TcxEditStyleController;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    dxBarLargeButton9: TdxBarLargeButton;
    acShowLoadHeader: TAction;
    acRaderaPaket: TAction;
    lcLIP: TcxDBLookupComboBox;
    lcPIP: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    dxBarLargeButton10: TdxBarLargeButton;
    acPrintCMR: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    acPrintFSandCMR: TAction;
    cxStyleclSkyBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    cxStyleOrange: TcxStyle;
    cxStyleOrange2: TcxStyle;
    cxStyleRed2: TcxStyle;
    cxStyleGreen2: TcxStyle;
    dxBarSpinEditContent: TdxBarSpinEdit;
    cxStyleContent2: TcxStyle;
    bePkgFont: TcxBarEditItem;
    cxGridPopupMenu3: TcxGridPopupMenu;
    Visahuvud1: TMenuItem;
    cbShowOriginalLO: TcxDBCheckBox;
    siLangLinked_fLoadEntrySSP: TsiLangLinked;
    btTextPad: TcxButton;
    btTextPadFS: TcxButton;
    ActionList2: TActionList;
    acTextPad: TAction;
    acTextPadFS: TAction;
    acNumPad: TAction;
    acSetPositionInAllPkgs: TAction;
    acSetPositionInSelectedPkgs: TAction;
    dxBarButton1: TdxBarButton;
    PanelNote: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    pmReport: TdxBarPopupMenu;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    acPrintTO: TAction;
    acPrintTo_Manuell: TAction;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    acTreatmentCerticate: TAction;
    acMailTreatmentCertificate: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acMailTO_Manuell: TAction;
    dxBarButton15: TdxBarButton;
    acChgRef_and_Info: TAction;
    pgrdLO: TPanel;
    pgrdAddress: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    PanelPackages: TPanel;
    Panel2: TPanel;
    mePackageNo: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cbKopplaEjMotDublett: TcxCheckBox;
    btNumPad: TcxButton;
    cxButton4: TcxButton;
    cxBtnChgTreatmentInfo: TcxButton;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1INFO1: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1INFO2: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Certfiering: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PositionName: TcxGridDBBandedColumn;
    grdPkgsLevel1: TcxGridLevel;
    TouchKeyboard1: TTouchKeyboard;
    TouchKeyboard2: TTouchKeyboard;
    PanelLORows: TPanel;
    Panel1: TPanel;
    grdLORows: TcxGrid;
    grdLORowsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Internnotering: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PkgDiff: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn;
    grdLORowsLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    cxbtnRegBulkDelivery: TcxButton;
    acRegBulkDelivery: TAction;
    RegBULKleverans1: TMenuItem;
    dxBarButton16: TdxBarButton;
    dxbrbtnRegBulkDelivery: TdxBarButton;
    cxbtnScanArticle: TcxButton;
    cxbtnCreatePalletPkg: TcxButton;
    dxBarLargeButton12: TdxBarLargeButton;
    acShowPkgLogg: TAction;
    grdLORowsDBBandedTableView1Lagerkod: TcxGridDBBandedColumn;
    Timer2: TTimer;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    acSetLoadReady: TAction;
    cxImageList1: TcxImageList;
    Panel6: TPanel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    grdLORowsDBBandedTableView1LoadingAddressNo: TcxGridDBBandedColumn;

    procedure lbRemovePackageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbTally_Ver2Click(Sender: TObject);

    procedure acValidatePkgExecute(Sender: TObject);
    procedure acValidateAllPkgsExecute(Sender: TObject);
    procedure acInsertPkgToInventoryExecute(Sender: TObject);
    procedure acInsertAllPkgsToInventoryExecute(Sender: TObject);
    procedure acRemovePkgFromSystemExecute(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemExecute(Sender: TObject);
    procedure acUndoPkgOperationExecute(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acValidatePkgUpdate(Sender: TObject);
    procedure acValidateAllPkgsUpdate(Sender: TObject);
    procedure acInsertPkgToInventoryUpdate(Sender: TObject);
    procedure acInsertAllPkgsToInventoryUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemUpdate(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
    procedure acUndoPkgOperationUpdate(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeExecute(Sender: TObject);
    procedure acAddPkgByPkgCodeUpdate(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure acSaveLoadExecute(Sender: TObject);

    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure grdLORowsDBBandedTableView1MATCHPropertiesChange(
      Sender: TObject);
    procedure acKopplaPaketMotLOManuelltExecute(Sender: TObject);
    procedure acSaveLoadUpdate(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acDeleteLoadUpdate(Sender: TObject);
    procedure acPrintFSExecute(Sender: TObject);
    procedure acLOAllaVerkExecute(Sender: TObject);
    procedure acPrintLOErtVerkExecute(Sender: TObject);
    procedure acPrintFSUpdate(Sender: TObject);
    procedure acPrintSpecAllaLasterLOUpdate(Sender: TObject);
    procedure acPrintLOErtVerkUpdate(Sender: TObject);
    procedure acLOAllaVerkUpdate(Sender: TObject);
    procedure acPkgEntryExecute(Sender: TObject);
    procedure acPkgEntryUpdate(Sender: TObject);
    procedure acStreckKodsinlasningExecute(Sender: TObject);
    procedure acPktNrSerieExecute(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
    procedure acTaBortPaketPerPaketKodExecute(Sender: TObject);
    procedure acTaBortPaketPerPaketKodUpdate(Sender: TObject);
    procedure acStreckKodsinlasningUpdate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acImportPackagesExecute(Sender: TObject);
    procedure acImportPackagesUpdate(Sender: TObject);
    procedure acCreateInternLOExecute(Sender: TObject);
    procedure acCreateInternLOUpdate(Sender: TObject);
    procedure acOpenLOFormExecute(Sender: TObject);
    procedure acOpenLOFormUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveAndOKExecute(Sender: TObject);
    procedure acSaveAndOKUpdate(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acPrintFSMisMatchExecute(Sender: TObject);
    procedure acDeleteNotCompletePkgsExecute(Sender: TObject);
    procedure acMailaFSExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveUpdate(Sender: TObject);
    procedure acGetVPPackagesExecute(Sender: TObject);
    procedure acGetVPPackagesUpdate(Sender: TObject);
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure acShowLoadHeaderExecute(Sender: TObject);
    procedure acRaderaPaketExecute(Sender: TObject);
    procedure acRaderaPaketUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPrintCMRExecute(Sender: TObject);
    procedure acPrintFSandCMRExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure dxBarSpinEditContentCurChange(Sender: TObject);
    procedure ppmenuLO_LinesPopup(Sender: TObject);
    procedure bePkgFontCurChange(Sender: TObject);
    procedure pmPkgsPopup(Sender: TObject);
    procedure acTextPadExecute(Sender: TObject);
    procedure acTextPadFSExecute(Sender: TObject);
    procedure acNumPadExecute(Sender: TObject);
    procedure acSetPositionInAllPkgsExecute(Sender: TObject);
    procedure acSetPositionInSelectedPkgsExecute(Sender: TObject);
    procedure acSetPositionInAllPkgsUpdate(Sender: TObject);
    procedure acSetPositionInSelectedPkgsUpdate(Sender: TObject);
    procedure acPrintTOExecute(Sender: TObject);
    procedure acPrintTo_ManuellExecute(Sender: TObject);
    procedure acTreatmentCerticateExecute(Sender: TObject);
    procedure acMailTreatmentCertificateExecute(Sender: TObject);
    procedure acChgRef_and_InfoExecute(Sender: TObject);
    procedure cbShowOriginalLOPropertiesChange(Sender: TObject);
    procedure cxSplitter2Moved(Sender: TObject);
    procedure cxSplitter1Moved(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PanelPackagesResize(Sender: TObject);
    procedure acRegBulkDeliveryExecute(Sender: TObject);
    procedure acRegBulkDeliveryUpdate(Sender: TObject);
    procedure cxbtnScanArticleClick(Sender: TObject);
    procedure cxbtnCreatePalletPkgClick(Sender: TObject);
    procedure acShowPkgLoggExecute(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acSetLoadReadyExecute(Sender: TObject);
    procedure acSetLoadReadyUpdate(Sender: TObject);
    procedure detLoadedEnter(Sender: TObject);
    procedure detLoadedExit(Sender: TObject);

  private
    { Private declarations }
//     TempEditString  : String ;
     gLagerkod : String ;
     LoadEnabled, AddingPkgsFromPkgEntry : Boolean ;
     function scanLoadID(aMsg, aLoadID: string; aLoadNo, aLONo: integer): string;
     Procedure RefreshLoadDetails ;
     function verifyPackageReference(const aPkgRef: string; const aLO_Number: integer; var aMsg: string; var aErr: integer): string;
     function linkedArticle(const aArticleNo: integer): boolean;
     function validatePkgsReference(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3): TEditAction;
     function getArticleNoFromSelectedPkg(const aPIPNo: integer): integer;
     procedure ScanPkgsByArticle(const Sender: TObject; const aTxtPkgNo: string);
     function AfterAdded_VE_Pkg(const aPkgNo, aArtikelNo : Integer): TEditAction;
     function GetLikVardigtPaket(const aPkgArticleNo, aPIPNo: integer; const aSupplierCode: string): integer;
     function getPkgArticleNo(const aPkgNo, aPIPNo, aLONo: integer; VAR aSupplierCode: string3; VAR aLagerStatus: integer): integer;
     function  GetPositionID : Integer ;
     function  DiffOK : Boolean ;
     Procedure GetLO_Records ;
     procedure EnterLoadWeight(Sender: TObject);
     procedure PrintDirectCMR(Sender: TObject);
     procedure PRE_PreviewCMR(Sender: TObject) ;
     procedure PreviewCMR(Sender: TObject) ;
     procedure PrintDirectFS(Sender: TObject);
     procedure PreviewFS(Sender: TObject);
     function AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender: TObject;
     const PkgNo : Integer;
     const PkgSupplierCode : String3) : TEditAction ;

     procedure GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
     function  ControlInvDate : Boolean ;
     procedure ValidateAllPkgs ;

     Procedure Generate_LSP_Sales_SQL (const LoadNo : Integer) ;
     procedure UpdateInternLO ;
     procedure CreateInternLO ;
     procedure OpenInternLO(const LO : Integer) ;
//     procedure InsertImportedPkgs(Sender: TObject) ;
     procedure SetLoadEnabled ;
     Procedure Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, LO_ETT : Integer) ;
     function  DataSaved : Boolean ;
     procedure GetMarkedPkgs ;
     procedure SetLoadRowToChanged ;
     procedure InsertPkgNo(Sender: TObject) ;
     procedure CloseDataSets;

     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String;
          Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;

     function Validate_VE_Pkg(const aPkgNo, aArticleNo: integer): integer;
     function Validate_VE_Pkg1(const aPkgNo, aArticleNo: integer; const aSupplierCode: string): integer;
     function  ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
                             const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
     Procedure GetLO_Records_AfterAddingLO_Number(LO_Number : Integer) ;
     function  AddLoadDetailMatchByProductNo(Var CustcdsNo : Integer;const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
     procedure InsertPkgSerie(Sender: TObject) ;
     function  ValidatePkgInSerie(Sender: TObject; PkgNo: Integer) : TEditAction ;
     procedure AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer) ;

     function  ValidatePackage_ver2(
     Var CustcdsNo : Integer;
     PkgSupplier : string3;
     PkgNo       : Integer;
     var SuppShipPlanObjectNo      : Integer;
     Var PkgLog        : String;
     var LO_Number, OverrideRL    : Integer;
     const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer;

     //Anv?nds n?r paket har plockats
     function AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;
     //Anv?nds n?r paket har plockats
     procedure ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
     //Anv?nds n?r paket har plockats
     function AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;

     function AddPkgTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;

     procedure InsertSelectedPkgNos(Sender: TObject) ;
     function IsPkgReserved(
     const PkgNo : Integer;
     var PkgSupplierCode: String3;
     Var Res_UserName : String) : TEditAction;

     procedure ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);


     procedure InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
     procedure ShowPackages (Sender: TObject;const DeliveryMessageNumber : String);
    function checkIfVidaEnergi: Boolean;
    function getDeliveredWeight(const aLoadNo: Integer; const aProduct, aReference: string): Integer;
    procedure registrateLoadAsDelivered(const Sender: TObject; const deliveredWeight: integer);
    function noUserReferenceWarning: boolean;
  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      Var ProductLengthNo : Integer;
      Var NoOfLengths : Integer
      );

  public
    { Public declarations }
    FOrderClientNo, FShipping, FShipToInvPointNo, FLoadingLocationNo : Integer ;

    procedure ShowPkgInfo(const NewPkgNo : Integer;const PkgSupplierCode : String3;const Errortext : String) ;
    procedure ExternSaveLoad ;
    procedure SaveLoad ;
    function unPackRestoredFormSettings(const aPack: string): TStringList;

    function PackSavedFormSettings(const aList: TList<integer>): string;

    procedure SaveFormSettings;
    procedure LoadFormSettings;

    procedure CreateWithNewLoad
      (const LocalCustomerNo,
      LocalSupplierNo,
      LO_No,
      ShipToInvPointNo,
      LoadingLocationNo,
      LoadNo,
      Shipping,
      OrderClientNo : Integer;
      Lagerkod : string) ; //OrderClient ?r extern kund om shipping = 0 else orderclient = extern leverant?r


    procedure CreateWithExistingLoad
    (const CustomerNo,
    LoadNo,
    Shipping,
    LLNo,
    OrderClientNo,
    SupplierNo,
    SPCustomerNo : Integer;
    Lagerkod : string) ;

    destructor Destroy; override;
    function AfterAddedPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
    procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
    procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
    property VidaEnergi: Boolean read checkIfVidaEnergi;
  end;

 var  fLoadEntrySSP: TfLoadEntrySSP ;

implementation

uses dmcLoadEntrySSP, dlgPickPkg,
  dmsVidaContact, UnitPackageEntry, dmsVidaProduct, //UnitSelectLO_NumberSSP,
  VidaUser, //UnitCRViewReport,
  UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcVidaSystem , uPickPkgNo,
  uScanLoadPkgNo, uEntryField, dmsDataConn, //dmsVidaPkg,
  //MainU, //uImportedPackages ,
  //dmc_ImportWoodx, dmcVidaLO, //uLOform ,
  //UnitCRExportOneReport,
  uSendMapiMail, dmc_UserProps, VidaUtils ,
  uPickVPPkgs, //uImportedPackages,
  fLoadOrder, uSelectPrintDevice, uconfirm, // UnitCRPrintOneReport,
  uEnterLoadWeight, uSelectLORowInLoad, uLagerPos, uFastReports, dm_Inventory,
  uDlgReferensAndInfo, udmFR, dmsUserAdm, uLGLogg, udlgEnterDeliveredWeight, uVIS_UTILS, uEntryFieldNoOfPkgs
{$IFDEF LOGG}
  , uDBLogg, uIDBConnector, uIDBLogg, uILogger, uLogger
  //,uIIPObserver,  uIMsgObserver
{$ENDIF}
, uFRAccessories, uFRConstants, uFastReports2, uFixMail, udmFRSystem,
  uAddErrorPkgLoad
  , uOAuthMail
, fMain, uOKDia
, VISTRUCK_Interfaces
, uHandle_LoadID_Input
, udmLoadId
;
{$R *.dfm}

{ TfrmLoadEntry }
type
  TMovablePanels = class
    private
      FAddressPanelHeight: integer;
      FLOPanelHeight     :integer;
      FPageCtrlHeight    : integer;
    public
      constructor Save(const aAddrPnlHeight, aLoPnlHeight, aPgCtrlHeight: integer);
      procedure restore(var aAddrPnlHeight, aLoPnlHeight, aPgCtrlHeight: integer);
  end;

var
  MovablePanels: TMovablePanels;
{$IFDEF LOGG}
  Logg: TLogger;
{$ENDIF}


Procedure TfLoadEntrySSP.GetLO_Records ;
 Begin
   With dmLoadEntrySSP do
   Begin
    cdsLORows.DisableControls ;
    Try
     cdsLORows.Active:= False ;
     cdsLORows.ParamByName('LoadNo').AsInteger  := cds_LoadHeadLoadNo.AsInteger ;
     // cdsLORows.ParamByName('Lagerkod').AsString := gLagerkod ;
     cdsLORows.Active:= True ;

    Finally
     cdsLORows.EnableControls ;
    End ;
   End ;//with
 End ;

procedure TfLoadEntrySSP.SetLoadEnabled ;
Var LoadAR  : Boolean ;
Begin
 With dmLoadEntrySSP do
 Begin
   LoadAR := dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;

   LoadEnabled:= True ;

   PrepaidLoad                                           := False ;

//  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0)
  if (cds_LoadHeadSenderLoadStatus.AsInteger = 3) then
  Begin
    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_1' (* 'Laststatus ?r "Prepaid" och paket kan inte tas bort eller l?ggas till.' *) ) ;
    PrepaidLoad                                           := True ;
    LoadEnabled                                           := True ;
    cds_LoadHead.UpdateOptions.ReadOnly                   := False ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := True ;
    cds_LSP.UpdateOptions.ReadOnly                        := True ;
    cds_LoadPackages.UpdateOptions.ReadOnly               := True ;
  End
  else
  if (LoadAR)  or ((cds_LoadHeadSenderLoadStatus.AsInteger = 2) or (cds_LoadHeadSenderLoadStatus.AsInteger = 4)) then
  Begin

   if ThisUser.UserID = 888 then
   Begin
    LoadEnabled:= True ;
    if LoadAR then
    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_0' (* 'Lasten kan inte ?ndras f?r att den ?r ankomstregistrerad' *) )
    else
    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_1' (* 'Lasten kan inte ?ndras f?r att status ?r "Avslutad"' *) ) ;

    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
   End
   else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);

    if LoadAR then
    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_0' (* 'Lasten kan inte ?ndras f?r att den ?r ankomstregistrerad' *) )
    else
    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_1' (* 'Lasten kan inte ?ndras f?r att status ?r "Avslutad"' *) ) ;

    LoadEnabled                                           := False ;
    if cds_LoadHeadSenderLoadStatus.AsInteger = 4 then
    cds_LoadHead.UpdateOptions.ReadOnly                   := False
    else
    cds_LoadHead.UpdateOptions.ReadOnly                   := True ;

    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := True ;
    cds_LSP.UpdateOptions.ReadOnly                        := True ;
    cds_LoadPackages.UpdateOptions.ReadOnly               := True ;
   End ;
  End //if LoadAR
  else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);

    Caption                                               := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_4' (* 'Lasten kan ?ndras.' *) ) ;

    LoadEnabled                                           := True ;
    cds_LoadHead.UpdateOptions.ReadOnly                   := False ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := False ;
    cds_LSP.UpdateOptions.ReadOnly                        := False ;
    cds_LoadPackages.UpdateOptions.ReadOnly               := False ;
   End ;

   if ThisUser.UserID = 888 then
   Begin
    LoadEnabled:= True ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
   End ;


//  dmsSystem.sp_OneLoad.Close ;
 End ;//with
 mePackageNo.Enabled := LoadEnabled ;
End ;

function TfLoadEntrySSP.DataSaved : Boolean ;
Begin
 With dmLoadEntrySSP do
 Begin
  Result:= True ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadHead.ChangeCount > 0 then
   Result:= False ;

  if cds_LSP.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LSP.ChangeCount > 0 then
   Result:= False ;

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadPackages.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

Procedure TfLoadEntrySSP.Generate_LSP_Sales_SQL(const LoadNo : Integer) ;
Begin
   With dmLoadEntrySSP do
   Begin
    cds_LSP.SQL.Clear ;
    cds_LSP.SQL.Add(' SELECT DISTINCT') ;
    cds_LSP.SQL.Add('0 AS Shipping,') ;
    cds_LSP.SQL.Add('LS.LoadNo,') ;
    cds_LSP.SQL.Add('SSP.SupplierNo,') ;
    cds_LSP.SQL.Add('LS.ShippingPlanNo,') ;
    cds_LSP.SQL.Add('C.ClientName AS CUSTOMER,') ;

    cds_LSP.SQL.Add('SC.ClientName					AS SHIPPER,') ;
    cds_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,'+QuotedStr(' ')+')	AS READYDATE,') ;
    cds_LSP.SQL.Add('isNull(Cr.CarrierName,'+QuotedStr(' ')+ ')			AS VESSEL,') ;
    cds_LSP.SQL.Add('Vg.ETD						AS ETD,') ;
    cds_LSP.SQL.Add('Vg.ETA						AS ETA,') ;

    cds_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,') ;
    cds_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,') ;
    cds_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,') ;
    cds_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
    cds_LSP.SQL.Add('ELSE '+QuotedStr('PURCHASE')) ;
    cds_LSP.SQL.Add('END AS ORDERTYPE,') ;
    cds_LSP.SQL.Add('LS.CreatedUser,') ;
    cds_LSP.SQL.Add('LS.ModifiedUser,') ;
    cds_LSP.SQL.Add('LS.DateCreated,') ;
    cds_LSP.SQL.Add('SSP.CustomerNo,') ;
    cds_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,') ;
    cds_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,') ;
    cds_LSP.SQL.Add('SSP.ObjectType,') ;
    cds_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,') ;
    cds_LSP.SQL.Add('SSP.LoadingLocationNo,') ;
    cds_LSP.SQL.Add('SSP.ShipToInvPointNo,') ;
    cds_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,') ;
    cds_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;



    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    cds_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;

    cds_LSP.SQL.Add('   Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    cds_LSP.SQL.Add('        						                        AND 	SSP.SupplierNo = L.SupplierNo') ;
    cds_LSP.SQL.Add('                                            AND 	SSP.CustomerNo = L.CustomerNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;


    cds_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    cds_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    cds_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    cds_LSP.SQL.Add('  AND OH.OrderType in (0,3)') ;
    cds_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;


    cds_LSP.SQL.Add('  LEFT OUTER JOIN dbo.Booking		Bk') ;


    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    cds_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    cds_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('WHERE') ;
    cds_LSP.SQL.Add('LS.LoadNo = :LoadNo') ;
    cds_LSP.ParamByName('LoadNo').AsInteger :=  LoadNo ;//  +IntToStr(LoadNo)) ;
//    if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Sales_SQL.txt') ;
   End ;
End ;

function TfLoadEntrySSP.getArticleNoFromSelectedPkg(const aPIPNo: integer): integer;
var
  colIdx,
  recIdx: integer;
  pkgNo,
  lagerStatus: integer;
  SupplierCode: string3;
begin
  result := -1;
  if grdPkgsDBBandedTableView1.Controller.SelectedRecordCount <> 1 then
    showMessage( 'V?lj ett och endast ett paket')
  else begin
    RecIDx          := grdPkgsDBBandedTableView1.Controller.SelectedRecords[0].RecordIndex ;
    ColIdx          := grdPkgsDBBandedTableView1.DataController.GetItemByFieldName('PackageNo').Index;
    pkgNo           := grdPkgsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];
    result          := getPkgArticleNo(PkgNo, aPIPNo, 0, SupplierCode, lagerStatus);
  end;
end;

function TfLoadEntrySSP.getDeliveredWeight(const aLoadNo: Integer; const aProduct, aReference: string): Integer;
var
 Weight: integer;
begin
  dlgEnterDeliveredWeight := TdlgEnterDeliveredWeight.create(Self);
  if dlgEnterDeliveredWeight.execute(aLoadnO, aProduct, aReference, Weight) = mrOk then
    Result := Weight
  else
    Result := -1;
end;

function TfLoadEntrySSP.getPkgArticleNo(const aPkgNo, aPIPNo, aLONo: integer; VAR aSupplierCode: string3; VAR aLagerStatus: integer): integer;
begin
  result := dmLoadEntrySSP.getPkgArticleNo(aPkgNo, aPIPNo, aLONo, aSupplierCode, aLagerStatus)
end;

procedure TfLoadEntrySSP.CreateWithExistingLoad(
  const CustomerNo ,
  LoadNo,
  Shipping,
  LLNo,
  OrderClientNo,
  SupplierNo,
  SPCustomerNo : Integer;
  Lagerkod : string );
var
  Save_Cursor : TCursor;

  Procedure OpenLoadHead ;
  Begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadHead.Active:= False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    cds_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;



 Procedure Get_LoadPackages ;
 Begin
//  dmLoadEntrySSP.GlobalLoadDetailNo :=  1 + dmLoadEntrySSP.GetMaxLoadDetailNoMaxLoadDetailNo(LoadNo) ;

   With dmLoadEntrySSP do
   Begin
    cds_LoadPackages.DisableControls ;
    Try
     cds_LoadPackages.Active:= False ;
     cds_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active:= True ;
    Finally
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;

Procedure Generate_LSP_Purchase_SQL ;
Begin
   With dmLoadEntrySSP do
   Begin
    cds_LSP.SQL.Clear ;
    cds_LSP.SQL.Add(' SELECT DISTINCT') ;
    cds_LSP.SQL.Add('1 AS Shipping,') ;
    cds_LSP.SQL.Add('LS.LoadNo,') ;
    cds_LSP.SQL.Add('SSP.SupplierNo,') ;
    cds_LSP.SQL.Add('LS.ShippingPlanNo,') ;
    cds_LSP.SQL.Add('C.ClientName AS CUSTOMER,') ;

    cds_LSP.SQL.Add('SC.ClientName					AS SHIPPER,') ;
    cds_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,'+QuotedStr(' ')+')	AS READYDATE,') ;
    cds_LSP.SQL.Add('isNull(Cr.CarrierName,'+QuotedStr(' ')+ ')			AS VESSEL,') ;
    cds_LSP.SQL.Add('Vg.ETD						AS ETD,') ;
    cds_LSP.SQL.Add('Vg.ETA						AS ETA,') ;

    cds_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,') ;
    cds_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,') ;
    cds_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,') ;
    cds_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
    cds_LSP.SQL.Add('ELSE '+QuotedStr('PURCHASE')) ;
    cds_LSP.SQL.Add('END AS ORDERTYPE,') ;
    cds_LSP.SQL.Add('LS.CreatedUser,') ;
    cds_LSP.SQL.Add('LS.ModifiedUser,') ;
    cds_LSP.SQL.Add('LS.DateCreated,') ;
    cds_LSP.SQL.Add('SSP.CustomerNo,') ;
    cds_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,') ;
    cds_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,') ;
    cds_LSP.SQL.Add('SSP.ObjectType,') ;
    cds_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,') ;
    cds_LSP.SQL.Add('SSP.LoadingLocationNo,') ;
    cds_LSP.SQL.Add('SSP.ShipToInvPointNo,') ;
    cds_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,') ;
    cds_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    cds_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;
    cds_LSP.SQL.Add('        Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    cds_LSP.SQL.Add('        						AND 	SSP.SupplierNo = L.SupplierNo') ;
    cds_LSP.SQL.Add('    AND 	SSP.CustomerNo = L.CustomerNo') ;
    cds_LSP.SQL.Add('                                                        AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    cds_LSP.SQL.Add('                                                        AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
    cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    cds_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    cds_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    cds_LSP.SQL.Add('                                AND OH.OrderType = 1') ;
    cds_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('       	LEFT OUTER JOIN dbo.Booking		Bk') ;
//    cds_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    cds_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    cds_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('WHERE') ;

    cds_LSP.SQL.Add('LS.LoadNo = :LoadNo') ;
    cds_LSP.ParamByName('LoadNo').AsInteger :=  LoadNo ;//  +IntToStr(LoadNo)) ;

//    cds_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
//    cds_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;



//   if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Purchase_SQL.txt') ;
   End ;
End ;

//Here procedure CreateWithExistingLoad begins
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(SPCustomerNo, SupplierNo {Lars}{CustomerNo} {supplierno}, 0, 0, LLNo, LoadNo, Shipping, -1{orderClient}, Lagerkod);
  fShipping           := Shipping ;
  gLagerkod           := Lagerkod ;
  With dmLoadEntrySSP do
  Begin
   ds_LoadPackages2.Enabled:= False ;
   OpenLoadHead ;
   LoadStatus     := cds_LoadHeadSenderLoadStatus.AsInteger ;
   FCustomerNo    := cds_LoadHeadCustomerNo.AsInteger ;
   FSupplierNo    := cds_LoadHeadSupplierNo.AsInteger ;
   FOrderClientNo := OrderClientNo ;

   dmsConnector.UpdateMaxSecByLoad(LoadNo) ;

   cds_LSP.Active := False ;
   if Shipping = 0 then
    Generate_LSP_Sales_SQL(LoadNo)
     else
      Generate_LSP_Purchase_SQL ;
   cds_LSP.Active:= True ;

   GetLO_Records ;
   Get_LoadPackages ;

   dmLoadEntrySSP.Get_LO_LinesMatched (dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString) ;

  dmLoadEntrySSP.csdUnit_OpenLagerLookup ;
  cds_LoadHead.Refresh ;

  SetLoadEnabled ;
  ds_LoadPackages2.Enabled  := True ;

  cdsLORows.Filter    := dmLoadEntrySSP.OriginalFilter(False) ;
  cdsLORows.Filtered  := True ;
 End ; //with

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLoadEntrySSP.CreateWithNewLoad(
const LocalCustomerNo,
      LocalSupplierNo,
      LO_No,
      ShipToInvPointNo,
      LoadingLocationNo,
      LoadNo,
      Shipping,
      OrderClientNo : Integer;
      Lagerkod : string) ;

//Var FLocalSupplierNo, x : Integer ;
Var ReservedByUser : String ;
    Prepaid : Integer ;
begin
//  inherited Create(AOwner);
//  dmLoadEntrySSP      := TdmLoadEntrySSP.Create(Self);

  CloseDataSets ;

  fShipToInvPointNo   := ShipToInvPointNo ;
  fLoadingLocationNo  := LoadingLocationNo ;
  fShipping           := Shipping ;
  FOrderClientNo      := OrderClientNo ;
  gLagerkod           := Lagerkod ;


{  if fShipping = 0 then
  grdLODBTableView1CUSTOMER.Caption:= 'KUND'
  else
  grdLODBTableView1CUSTOMER.Caption:= 'LEVERANT?R' ; }

  grdPkgsDBBandedTableView1.OptionsView.NewItemRow    := False ;

  LoadEnabled:= True ;

 With dmLoadEntrySSP do
 Begin
   fLoNo  := LO_No ;
{   cdsLORows.Active                         := False ;
   cdsLORows.ParamByName('LoadNo').AsInteger := -1 ;
   cdsLORows.Active                         := True ; }

   cds_LoadHead.UpdateOptions.ReadOnly      := False ;
   cds_LSP.UpdateOptions.ReadOnly           := False ;
   cds_LoadPackages.UpdateOptions.ReadOnly  := False ;

   cds_LoadPackages.Active                  := True ;


   dmsContact.cdsCities.Active              := False ;
   dmsContact.cdsCities.ParamByName('@SalesRegionNo').AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
   dmsContact.cdsCities.Active              := True ;

   dmsContact.cds_LocalShipper.Active       := True ;

   cds_LoadHead.Active:= True ;

   if LoadNo < 1 then
   Begin
    cds_LoadHead.Insert ;
    cds_LoadHeadSenderLoadStatus.AsInteger  := 0 ;
    cds_LoadHeadLoadedDate.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;

    cds_LoadHeadPIPNo.AsInteger             := cds_LSPPIPNo.AsInteger  ;
    cds_LoadHeadLIPNo.AsInteger             := cds_LSPLIPNo.AsInteger ;

    cds_LoadHeadLagerkod.AsString           := Lagerkod ;

    cds_LoadHeadLocalLoadingLocation.AsInteger  :=  LoadingLocationNo ;

    cds_LoadHeadLocalDestinationNo.AsInteger    :=  ShipToInvPointNo ;

    cds_LoadHead.Post ;

    ReservedByUser := dmsSystem.Load_Reserved(cds_LoadHeadLoadNo.AsInteger) ;

    if Length(ReservedByUser) > 0 then
    begin
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_5' (* 'Cannot create, Load is locked by user ' *) ) + ReservedByUser) ;
    end;
   End ;

   if cds_LSP.Active then
   Begin
    cds_LSP.Active  := False ;
    cds_LSP.ParamByName('LoadNo').AsInteger :=  -10101 ;//  +IntToStr(LoadNo)) ;
    cds_LSP.Active  := True ;
   End
   else
   cds_LSP.Active := True ;

   if LO_NO > 0 then
   Begin
    AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);

    if cds_LoadHead.State in [dsBrowse] then
     cds_LoadHead.Edit ;
      cds_LoadHeadPIPNo.AsInteger := cds_LSPPIPNo.AsInteger  ;
    cds_LoadHeadLIPNo.AsInteger   := cds_LSPLIPNo.AsInteger ;
    cds_LoadHead.Post ;

    Prepaid := IsOrderPrepaid_Terms(LO_NO) ;
    if Prepaid > 0 then
     Begin
      if Prepaid = 1 then
       TfOKDia.Execute('Notering, Lasten f?r inte lastas ut f?rr?n fakturan ?r betald.') ;
     End;
   End ;


   if fShipping = 0 then
   dm_UserProps.Refresh_cds_PIP2(LocalSupplierNo, LocalSupplierNo)
   else
   dm_UserProps.Refresh_cds_PIP2(LocalCustomerNo, LocalCustomerNo) ;


  if (cds_LSP.Active) and (cds_LSP.RecordCount > 0)
  and (cds_LSP.ChangeCount > 0) then
   SaveLoad ;
   SetLoadEnabled ;

   GetLO_Records ;

 //  GetLO_Records_AfterAddingLO_Number(LO_NO) ;
  cdsLORows.Filter    := dmLoadEntrySSP.OriginalFilter(False) ;
  cdsLORows.Filtered  := True ;
 End ; //with

end;

procedure TfLoadEntrySSP.cxbtnCreatePalletPkgClick(Sender: TObject);
var
  i: integer;
  pkgNo: integer;
  prefix: string3;
  loadNo: integer;
  loadDetailNo: integer;
begin
  with dmLoadEntrySSP do
  begin
    try
      cds_LoadPackages.DisableControls;
      dmFR.SaveAndSetCursor(crHourGlass);
      // First check if we already got linked articles in our load - they must first be removed.
      loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
      cds_VE_Pallets_In_Load.Active := false;
      cds_VE_Pallets_In_Load.paramByName('LoadNo').AsInteger := loadNo;
      cds_VE_Pallets_In_Load.Active := true;
      cds_VE_Pallets_In_Load.First;
      while not cds_VE_Pallets_In_Load.EOF do
      begin
        pkgNo := cds_VE_Pallets_In_Load.FieldByName('PackageNo').AsInteger;
        prefix := cds_VE_Pallets_In_Load.FieldByName('prefix').AsString;
        loadDetailNo := cds_VE_Pallets_In_Load.FieldByName('loadDetailNo').AsInteger;
        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([loadNo, loadDetailNo]), []) then
        begin
          if cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
            cds_LoadPackages.Delete
          else
          begin
            if cds_LoadPackages.State = dsBrowse then
              cds_LoadPackages.Edit;
            cds_LoadPackagesPkg_Function.AsInteger := DELETE_PKG;
            cds_LoadPackagesChanged.AsInteger := 1;
            cds_LoadPackages.Post;
          end;
        end;
        cds_VE_Pallets_In_Load.Next;
      end;
      cds_VE_Pallets_In_Load.Active := false;

      // Now everything has been cleaned up  we can start up adding the pallets

      dmLoadEntrySSP.createPalletPkg(loadNo, thisUser.UserID);

      // If packages created - add these to the load.
      sp_CreatePalletPkgs.First;
      while not dmLoadEntrySSP.sp_CreatePalletPkgs.EOF do
      begin
        pkgNo := sp_CreatePalletPkgs.FieldByName('pkgNo').AsInteger;
        prefix := sp_CreatePalletPkgs.FieldByName('prefix').AsString;
        AddPkgTo_cds_LoadPackages(self,pkgNo, prefix);
        sp_CreatePalletPkgs.Next;
      end;
    finally
      sp_CreatePalletPkgs.Active := false;
      cds_LoadPackages.EnableControls;
      dmFR.RestoreCursor;
      SaveLoad ;
      if mePackageNo.Enabled then
        mePackageNo.SetFocus ;
    end;
  end;
end;

procedure TfLoadEntrySSP.cxbtnScanArticleClick(Sender: TObject);
begin
  if cxbtnScanArticle.OptionsImage.ImageIndex = 1 then
    cxbtnScanArticle.OptionsImage.ImageIndex := -1
  else
    cxbtnScanArticle.OptionsImage.ImageIndex := 1;
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.cxSplitter1Moved(Sender: TObject);
begin
 // pgrdLO.Height := cxSplitter1.Top-pgrdLO.Top;
end;

procedure TfLoadEntrySSP.cxSplitter2Moved(Sender: TObject);
begin
 // PanelLORows.Top := dxPageControl1.Top + dxPageControl1.Height + cxSplitter2.Height;
end;

procedure TfLoadEntrySSP.bePkgFontCurChange(Sender: TObject);
begin
 cxStyleYellow.Font.Size  := bePkgFont.EditValue ;
 cxStyleRed.Font.Size     := bePkgFont.EditValue ;
 cxStyleBlue.Font.Size    := bePkgFont.EditValue ;
 cxStyleAqua.Font.Size    := bePkgFont.EditValue ;
 cxStyleContentOdd.Font.Size    := bePkgFont.EditValue ;
 cxStyleContent.Font.Size    := bePkgFont.EditValue ;
end;

procedure TfLoadEntrySSP.BitBtn1Click(Sender: TObject);
var
  a,b,c: integer;
begin
  MovablePanels.restore(a,b,c);
  pgrdAddress.Height := a;
  pgrdLO.Height := b;
  dxPageControl1.Height := c;
end;

procedure TfLoadEntrySSP.cbShowOriginalLOPropertiesChange(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
   if cds_LoadHeadShowOriginalLO.AsInteger = 0 then
   Begin
    if cds_LoadHead.State in [dsEdit, dsInsert] then
    Begin
      if cdsLORows.RecordCount = 0 then
       cds_LoadHeadShowOriginalLO.AsInteger := 1 ;
    End;
   End;
 End;
end;

function TfLoadEntrySSP.checkIfVidaEnergi: Boolean;
begin
  result := ThisUser.CompanyNo = 2846;
{$IFDEF LOGG}
     logg.LogMessage(ExtractFileName(ParamStr(0)),Self.Name,'checkIfVidaEnergi',
     'LOGG123',' ThisUser.CompanyNo: '+intToStr(ThisUser.CompanyNo)+'  dmLoadEntrySSP.FSupplierNo: '+intToStr(dmLoadEntrySSP.FSupplierNo));
{$ENDIF}
end;

destructor TfLoadEntrySSP.Destroy;
begin
  CloseDataSets;
//  dmLoadEntrySSP.Free ;
  inherited
end;

procedure TfLoadEntrySSP.detLoadedEnter(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  if cds_LoadHeadSenderLoadStatus.AsInteger = 3 then
   detLoaded.Enabled  := False ;
 End;
end;

procedure TfLoadEntrySSP.detLoadedExit(Sender: TObject);
begin
    detLoaded.Enabled  := True ;
end;

procedure TfLoadEntrySSP.dxBarSpinEditContentCurChange(Sender: TObject);
begin
 cxStyleOrange2.Font.Size := dxBarSpinEditContent.IntCurValue ;
 cxStyleRed2.Font.Size    := dxBarSpinEditContent.IntCurValue ;
 cxStyleGreen2.Font.Size  := dxBarSpinEditContent.IntCurValue ;
end;

procedure TfLoadEntrySSP.CloseDataSets;
begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadHead.Active                           := False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger  := -100 ;
    cds_LoadPackages.Active                       := False ;

    cdsLORows.Active                              := False ;
    cdsLORows.ParamByName('LoadNo').AsInteger     := -100 ;
    cdsLORows.Active                              := True ;

    dmsContact.cds_LocalShipper.Active            := False ;

    cds_LoadPackages.Active:= False ;
    cds_LoadPackages.ParamByName('LoadNo').AsInteger:= -100 ;
    cds_LoadPackages.Active:= True ;
   End ;
end;

function TfLoadEntrySSP.AfterAddedPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo,
  SuppShipPlanObjectNo  : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
  errMsg                : string;
  errCode               : integer;
  LOString              : string;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog,
    LO_Number, OverrideRL, ProductNo, ProductLengthNo, NoOfLengths );

    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_6' (* 'L?ngd matchar ej l?ngdgruppen' *) ) ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_7' (* 'OK' *) );
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_8' (* 'BAD_PKG' *) );
                     End ;
{        PKG_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        NO_PRODUCT : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
                     End ; }
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_9' (* 'BAD_LENGTH ' *) );
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        VP_BadPPP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_BadPPP ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        else
        end;
    if (ValidPackage = ALL_OK) or
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;

      // Check package reference
     LOString := verifyPackageReference(cds_LoadPackagesREFERENCE.AsString, LO_Number, errMsg, errCode);
     if errCode <> cds_LoadPackagesPackageOK.AsInteger then
     begin
        cds_LoadPackagesPackageOK.AsInteger := errCode;
        cds_LoadPackagesProblemPackageLog.AsString := errMsg;
     end;

    End
    else
    Begin
    if LO_Number > 0 then
     cds_LoadPackagesShippingPlanNo.AsInteger:= LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger                 := 0 ;
    End ;

    Try
    if cds_LoadPackages.State in [dsEdit] then
     cds_LoadPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_10' (* 'Paketnr finns redan i lasten.' *) )) ;
      cds_LoadPackages.Cancel ;
     End ;
    End ; //Except
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

function TfLoadEntrySSP.IdentifyPackageSupplier(
  const PkgNo,  FSupplierNo: Integer;
  var PkgSupplierCode: String3;
  var PkgSupplierNo: Integer;
  Var ProductNo : Integer;
  Var Res_UserName : String;
  Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmLoadEntrySSP.PkgNoToSuppCode(
    //Const
    PkgNo,
    FSupplierNo,
    dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger,
    //Var
    PkgSupplierNo,
    ProductNo,
    ProductLengthNo, NoOfLengths);

    if PkgSupplierCode = '' then
    Begin
     Result := eaREJECT;
    End
    else

//  check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode,
        'TfLoadEntrySSP', //Self.Name,
        Res_UserName          ) = ThisUser.UserName + '/' + 'TfLoadEntrySSP' //{ NO_USER_HAS_THIS_PACKAGE_RESERVED }
        then
         begin
          Result := eaACCEPT ;
         end
        else
        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;




  {  if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, PkgSupplierCode]) then
    Begin
      Result:= eaDuplicate ;
    End ;  }
end;

function TfLoadEntrySSP.AddLoadDetailMatchByProductNo(Var CustcdsNo : Integer;const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
var fSelectLORowInLoad: TfSelectLORowInLoad ;


procedure FilterNO_Species ;
Begin

 With dmLoadEntrySSP do
 Begin
    //Specifikt tr?slag

      if NoOfLengths > 1 then
      Begin
       cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
       +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
       +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
  //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
       +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
       +' AND ProductNo = ' + IntToStr(ProductNo)
       +' AND ACT_LENGTH < 1'
       + dmLoadEntrySSP.OriginalFilter(True) ;

       //TRy match on MainGrade only!
       if cdsLORows.RecordCount = 0 then
       cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
       +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
       +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
  //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
       +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
       +' AND ACT_LENGTH < 1'
       + dmLoadEntrySSP.OriginalFilter(True) ;
      End//if NoOfLengths > 1 then
       else
        Begin
         //Single lengths
         //Try match on pakettypnr
         if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
         cdsLORows.Filter:= 'PackageTypeNo = ' + cds_LoadPackagesPackageTypeNo.AsString + dmLoadEntrySSP.OriginalFilter(True)
         else
         cdsLORows.Filter:= 'PackageTypeNo = -1' + dmLoadEntrySSP.OriginalFilter(True) ;

         cdsLORows.Filtered := True ;

          if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
          Begin
             //Try match on PcsPerPkg
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
      //       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             +' AND PCSPERPKG = ' + cds_LoadPackagesPCS.AsString
             + dmLoadEntrySSP.OriginalFilter(True) ;

             //Try on MainGrade and ProductNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     //        +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             + dmLoadEntrySSP.OriginalFilter(True) ;

            //TRy match on MainGrade Only
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     //        +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             + dmLoadEntrySSP.OriginalFilter(True) ;

            //TRy match on RL med productNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
      //       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH < 1'
             + dmLoadEntrySSP.OriginalFilter(True) ;

             //TRy match on RL utan productNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
      //       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ACT_LENGTH < 1'
             + dmLoadEntrySSP.OriginalFilter(True) ;
          End //Single lengths
           else
            cdsLORows.Filter:= 'ACT_THICK = -1' + dmLoadEntrySSP.OriginalFilter(True) ;
    End ;
 End;
End;

begin
 if AddingPkgsFromPkgEntry = False then
 Begin
 With dmLoadEntrySSP do
 Begin
//if packages have multiple lengths then filter on random lengths LO's
//else filter on fixed length LO
//ProductLengthNo, NoOfLengths
 if (cdsLORowsSpeciesNo.AsInteger = FuruGran) or
 (cds_LoadPackagesSpeciesNo.AsInteger = FuruGran) then
 Begin
    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
//     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND ACT_LENGTH < 1'
     + dmLoadEntrySSP.OriginalFilter(True) ;

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
//     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1'
     + dmLoadEntrySSP.OriginalFilter(True) ;

    End//if NoOfLengths > 1 then
      else
        Begin
         //Single lengths
         //Try match on pakettypnr
         cdsLORows.Filter   := 'PackageTypeNo = ' + cds_LoadPackagesPackageTypeNo.AsString + dmLoadEntrySSP.OriginalFilter(True) ;
         cdsLORows.Filtered := True ;

         //Try match on PcsPerPkg
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
         +' AND ProductNo = ' + IntToStr(ProductNo)
         +' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString
         +' AND PCSPERPKG = ' + ReplaceCommas(cds_LoadPackagesPCS.AsString)
         + dmLoadEntrySSP.OriginalFilter(True) ;


         //Try match on PcsPerPkg men utan ProductNo
         if cdsLORows.RecordCount = 0 then
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
    //     +' AND ProductNo = ' + IntToStr(ProductNo)
         +' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString
         +' AND PCSPERPKG = ' + ReplaceCommas(cds_LoadPackagesPCS.AsString)
         + dmLoadEntrySSP.OriginalFilter(True) ;

         //Try on MainGrade and ProductNo
        if cdsLORows.RecordCount = 0 then
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
         +' AND ProductNo = ' + IntToStr(ProductNo)
         +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
         + dmLoadEntrySSP.OriginalFilter(True) ;
    //    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);


        if assigned(uLGLogg.frmLGLogg) then frmLGLogg.addText(self.Name,'MainGrade',cdsLORows.Filter);

        //TRy match on MainGrade Only   -- VidaEnergi ger 2 tr?ffar p? denna '00373401724811001505'
        if cdsLORows.RecordCount = 0 then
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
        +' AND ProductNo = ' + IntToStr(ProductNo) //?ndrad
         +' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString
         + dmLoadEntrySSP.OriginalFilter(True) ;

        //TRy match on RL med productNo
        if cdsLORows.RecordCount = 0 then
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
         +' AND ProductNo = ' + IntToStr(ProductNo)
         +' AND ACT_LENGTH < 1'
         + dmLoadEntrySSP.OriginalFilter(True) ;

         //TRy match on RL utan productNo
        if cdsLORows.RecordCount = 0 then
         cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
         +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
         +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
    //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
         +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
    //     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
         +' AND ACT_LENGTH < 1'
         + dmLoadEntrySSP.OriginalFilter(True) ;
        End ;

    End
    else
    //Specifikt tr?slag
    Begin
      if NoOfLengths > 1 then
      Begin
       cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
       +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
       +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
  //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
       +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
       +' AND ProductNo = ' + IntToStr(ProductNo)
       +' AND ACT_LENGTH < 1'
       + dmLoadEntrySSP.OriginalFilter(True) ;

       //TRy match on MainGrade only!
       if cdsLORows.RecordCount = 0 then
       cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
       +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
       +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
  //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
       +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
       +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
       +' AND ACT_LENGTH < 1'
       + dmLoadEntrySSP.OriginalFilter(True) ;
      End//if NoOfLengths > 1 then
       else
        Begin
         //Single lengths
         //Try match on pakettypnr
         if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
          cdsLORows.Filter := 'PackageTypeNo = ' + cds_LoadPackagesPackageTypeNo.AsString + dmLoadEntrySSP.OriginalFilter(True)
            else
              cdsLORows.Filter := 'PackageTypeNo = -1' + dmLoadEntrySSP.OriginalFilter(True) ;

         cdsLORows.Filtered := True ;

          if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
          Begin
             //Try match on PcsPerPkg
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             +' AND PCSPERPKG = ' + cds_LoadPackagesPCS.AsString
             + dmLoadEntrySSP.OriginalFilter(True) ;


               //Try on MainGrade and ProductNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
      //       +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             +' AND PCSPERPKG = ' + cds_LoadPackagesPCS.AsString
             + dmLoadEntrySSP.OriginalFilter(True) ;


             //Try on MainGrade and ProductNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             + dmLoadEntrySSP.OriginalFilter(True) ;

            //TRy match on MainGrade Only
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
             + dmLoadEntrySSP.OriginalFilter(True) ;

            //TRy match on RL med productNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ProductNo = ' + IntToStr(ProductNo)
             +' AND ACT_LENGTH < 1'
             + dmLoadEntrySSP.OriginalFilter(True) ;

             //TRy match on RL utan productNo
            if cdsLORows.RecordCount = 0 then
             cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
             +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
             +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
        //     +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
             +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
             +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
             +' AND ACT_LENGTH < 1'
             + dmLoadEntrySSP.OriginalFilter(True) ;
          End //Single lengths
           else
            cdsLORows.Filter  := 'ACT_THICK = -1' + dmLoadEntrySSP.OriginalFilter(True) ; ;
    End ;


    End ;//Specifikt tr?slag


    //Om ingen match prova matcha utan tr?slag i "FilterNO_Species"
    if cdsLORows.RecordCount = 0 then
     FilterNO_Species ;

    cdsLORows.Filtered  := True ;
    cdsLORows.First ;

    //if cdsLORows.RecordCount > 1 then Select LO Row from dialog

   if (cdsLORows.RecordCount > 1) and (not cbKopplaEjMotDublett.Checked) then
   Begin
    fSelectLORowInLoad  := TfSelectLORowInLoad.Create(nil);
    Try
     fSelectLORowInLoad.PanelPaket.Caption  :=  siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_11' (* 'Paketnr = ' *) ) + cds_LoadPackagesPACKAGENO.AsString + ' ' + cds_LoadPackagesPRODUCT.AsString ;
     fSelectLORowInLoad.ShowModal ;
     Result    := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
     CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
    Finally
     FreeAndNil(fSelectLORowInLoad) ;
    End;
   End
     else
     if cdsLORows.RecordCount = 1 then
     Begin
      Result    := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
      CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
     End
       else
        Begin
         Result   := -1 ;
         CustcdsNo:= -1 ;
        End ;

 End ; //with

 End ;
end;

//Check if a package in load detail is Valid
function TfLoadEntrySSP.ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
var
  SuppShipPlanObjectNo,
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
  errMsg                : string;
  errCode               : integer;
  LOString              : string;
begin
 SuppShipPlanObjectNo := -1 ;
 CustcdsNo            := -1  ;
 LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

 //LOLine is the SuppShipPlanObjectNo or SuppShipPlanObjectNo
 ValidPackage := ValidatePackage_ver2( CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog, LO_Number,
 OverrideRL, ProductNo, ProductLengthNo, NoOfLengths ) ;

 Result:= ValidPackage ;

   With dmLoadEntrySSP do
   Begin
    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;
      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_6' (* 'L?ngd matchar ej l?ngdgruppen' *) ) ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_7' (* 'OK' *) );
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_8' (* 'BAD_PKG' *) );
                     End ;
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_15' (* 'BAD_LENGTH' *) ) ;
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadPPP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_BadPPP ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;


    if (ValidPackage = ALL_OK) or
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin

     errMsg := cds_LoadPackagesProblemPackageLog.AsString;
     errCode := cds_LoadPackagesPackageOK.AsInteger;
     LOString := verifyPackageReference(cds_LoadPackagesREFERENCE.AsString, LO_Number, errMsg, errCode);
     if errCode <> cds_LoadPackagesPackageOK.AsInteger then
     begin
        cds_LoadPackagesPackageOK.AsInteger := errCode;
        cds_LoadPackagesProblemPackageLog.AsString := errMsg;
     end;

     cds_LoadPackagesDefsspno.AsInteger                 := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger           := LO_Number ;
    End
    else
    Begin
     if LO_Number > 0 then
      cds_LoadPackagesShippingPlanNo.AsInteger          := LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
    End ;
   End ; //with
end;

procedure TfLoadEntrySSP.lbRemovePackageClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
   dmLoadEntrySSP.cds_LoadPackages.Delete
   else
   Begin
    if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    dmLoadEntrySSP.cds_LoadPackages.Edit ;
    dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
    dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger      := 1 ;
    dmLoadEntrySSP.cds_LoadPackages.Post ;
   End ;

  Finally
   dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
end;

function TfLoadEntrySSP.linkedArticle(const aArticleNo: integer): boolean;
begin
  result := dmLoadEntrySSP.isLinkedArticle(aArticleNo);
end;

procedure TfLoadEntrySSP.LoadFormSettings;
var
  sl: TStringList;
begin
  with dmLoadEntrySSP do
    try
      cds_SaveFormSettings.ParamByName('UserID').AsInteger := ThisUser.UserID;
      cds_SaveFormSettings.ParamByName('Form').AsString := Self.Name;
      cds_SaveFormSettings.Active := True;
      if cds_SaveFormSettings.Eof then
        exit;

      sl := unPackRestoredFormSettings
        (dmLoadEntrySSP.cds_SaveFormSettingsFilter1.AsString);
    finally
      cds_SaveFormSettings.Active := False;
    end;
  try
    if sl.Count < 3 then
      exit
    else
    begin
      pgrdLO.Height := strToInt(sl[0]);
      PanelLORows.Height := strToInt(sl[1]);
      dxPageControl1.Height := strToInt(sl[2]);
    end;
  finally
    if assigned(sl) then
      sl.Free;
  end;
end;

Procedure TfLoadEntrySSP.GetLO_Records_AfterAddingLO_Number(LO_Number: Integer);
Var
  x: Integer;
Begin
  With dmLoadEntrySSP do
   Begin
    cdsLORows.DisableControls ;
    Try
     cdsLORows.Active := False ;
     cdsLORows.Active := True ;
(*    if cdsLORows.Active = False then
     cdsLORows.Active:= True ;



     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger       := LO_Number ;
     sq_GetLO_Records.ParamByName('SupplierNo').AsInteger           := FSupplierNo ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger           := FCustomerNo ;
     sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger    := cds_LSPLoadingLocationNo.AsInteger ;
     sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger     := cds_LSPShipToInvPointNo.AsInteger ;
     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      cdsLORows.Insert ;
      Try
      For x := 0 to 34 do
       cdsLORows.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;

      cdsLORowsINCH_THICK.AsFloat           := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
      cdsLORowsINVCH_WIDTH.AsFloat          := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;
      cdsLORowsLoadNo.AsInteger             := cds_LoadHeadLoadNo.AsInteger ;
      cdsLORowsMATCH.AsInteger              := 0 ;
      cdsLORowsOverrideRL.AsInteger         := sq_GetLO_RecordsOverrideRL.AsInteger ;
      cdsLORowsProductCategoryNo.AsInteger  := sq_GetLO_RecordsProductCategoryNo.AsInteger ;
      cdsLORows.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
      sq_GetLO_Records.Next ;
     End ; //while
    sq_GetLO_Records.Close ;    *)
    Finally
     cdsLORows.EnableControls ;
    End ;
   End ; //with
 End ;

procedure TfLoadEntrySSP.FormCreate(Sender: TObject);
begin
  dmLoadEntrySSP.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name, grdLODBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLORows.Name, grdLORowsDBBandedTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name, grdPkgsDBBandedTableView1) = False then ;

  if ThisUser.CompanyNo = 741 then
   acImportPackages.Enabled:= True
    else
     acImportPackages.Enabled:= False ;

 dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;

 // Save original settings of some panels etc
 MovablePanels := TMovablePanels.Save(pgrdAddress.Height, pgrdLO.Height, dxPageControl1.Height);

 // Hide button when run in other than development computers
  if pos('CARMAK',GetEnvironmentVariable('ComputerName')) < 1 then
  begin
    cxbtnCreatePalletPkg.Enabled := false;
    cxbtnCreatePalletPkg.Visible := false;
  end;

 // Load last used settings for some movable panels etc
// LoadFormSettings;
{$IFDEF LOGG}
  if not assigned(logg) then
    logg := TLogger.Create(dmFR.DBConnection);
{$ENDIF}

 dmUserAdm.ApplyRestrictionsOnForm(ThisUser.UserID, self);

end;

function TfLoadEntrySSP.GetLikVardigtPaket(const aPkgArticleNo,
  aPIPNo: integer; const aSupplierCode: string): integer;
var
  pkgNoToInactivate: integer;
begin
  result := -1;
  // H?mta ett likv?rdigt paket
  pkgNoToInactivate := dmLoadEntrySSP.getActivePackage(aPkgArticleNo, aPIPNo, aSupplierCode);
  result := pkgNoToInactivate;
end;

procedure TfLoadEntrySSP.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  Var ProductLengthNo : Integer;
  Var NoOfLengths : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then
     begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      NoOfLengths := NoOfLengthsForSelectedpkg ;
      ProductLengthNo := ProductLengthNoForSelectedpkg ;
     end
    else
      Choice := '';
  finally
    free;
    end;
end;

procedure TfLoadEntrySSP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if DataSaved = False then
   Begin
   dResult:= MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_16' (* '?ndringar ?r inte sparade, vill du spara?' *) ),
    mtConfirmation, [mbYes, mbNo,mbCancel], 0) ;
   End
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     acSaveLoadExecute(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     Begin
      CanClose := True ;
     End
     else
      CanClose := False ;

 //Remove entries in Pkgs_Res
 if CanClose = True then
 Begin
  SaveFormSettings;
  if dmLoadEntrySSP.cds_Props.State in [dsBrowse] then
  dmLoadEntrySSP.cds_Props.Edit ;
  dmLoadEntrySSP.cds_PropsLengthOption.AsInteger   := cxStyleContent.Font.Size ;
  dmLoadEntrySSP.cds_PropsLengthGroupNo.AsInteger  := cxStyleOrange2.Font.Size ;

  dmLoadEntrySSP.cds_Props.Post ;
  dmLoadEntrySSP.SaveUserProps ;
  With dmsSystem do
  Begin
   Delete_ReservedPkgs ('TfLoadEntrySSP') ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLO.Name, grdLODBTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLORows.Name, grdLORowsDBBandedTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
   With dmLoadEntrySSP do
   Begin
    frmVisTruckLoadOrder.RemoveTab(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger,
    cds_LoadHeadLoadNo.AsInteger, cds_LoadHeadLagerkod.AsString) ;
    dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
   End ;
  End ;
 End ;
end;

procedure TfLoadEntrySSP.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadEntrySSP do
 Begin
  cds_LoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_17' (* ' paket l?ggs till lasten, vill du forts?tta?' *) ),
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try


    For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) to
             StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger  := PkgNo ;
       if ValidatePkgInSerie(Sender, PkgNo) <> eaACCEPT then
        cds_LoadPackages.Cancel ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;

    End ;//For
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
     cds_LoadPackages.Post ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

function TfLoadEntrySSP.AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

//  if cds_LoadPackages.State = dsBrowse then
//   cds_LoadPackages.Insert ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;



     cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger    := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger         := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString            := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger         := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger      := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger     := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString       := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat              := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat              := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                 := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger               := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString     := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger       := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger   := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat   := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat       := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger       := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger         := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger       := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger             := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger  := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesREFERENCE.AsString          := sq_OnePkgDetailDataREFERENCE.AsString ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
    cds_LoadPackages.Post ;
{    if cds_LoadPackages.ChangeCount > 0 then
    Begin
     cds_LoadPackages.ApplyUpdates(0) ;
     cds_LoadPackages.CommitUpdates ;
    End ; }
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_10' (* 'Paketnr finns redan i lasten.' *) )) ;
      cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

function TfLoadEntrySSP.ValidatePkgInSerie(Sender: TObject; PkgNo: Integer) : TEditAction ;
var
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer ;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
  ProductLengthNo, NoOfLengths : Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }

    Action := IdentifyPackageSupplier(
     PkgNo,
      dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );

  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender, PkgNo, PkgSupplierCode) ;
    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths) <> eaACCEPT then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     dmLoadEntrySSP.cds_LoadPackages.Cancel ;
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;
    End
   else
   if Action = eaReserved then
    Begin
     dmLoadEntrySSP.cds_LoadPackages.Cancel ;
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) )+Res_UserName) ;
    End ;

  Result:= Action ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer);
Var Save_Cursor : TCursor;
begin
 With dmLoadEntrySSP do
 Begin
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crHourGlass;
  cds_LO_LookUp.Filtered  := False ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    Get_LO_LookUp_SQL (FOrderClientNo {AVROP_CUSTOMERNO}, fShipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, 1)  ;
    cds_LO_LookUp.Active:= True ;
{    if ThisUser.UserID = 8 then
    Begin
     sq_LO_LookUp.SQL.Add('-- cds_LO_LookUp.RecordCount = ' + IntToStr(cds_LO_LookUp.RecordCount)) ;
     dmsSystem.ShowMemo(sq_LO_LookUp.SQL) ;
    End ; }
   End ;

  if cds_LO_LookUp.RecordCount > 0 then
  Begin
   cds_LSP.Insert ;
   Try
    cds_LSPShippingPlanNo.AsInteger             := cds_LO_LookUpShippingPlanNo.AsInteger ;
    cds_LSPCUSTOMER.AsString                    := cds_LO_LookUpCUSTOMER.AsString ;
    cds_LSPOBJECTTYPE.AsInteger                 := cds_LO_LookUpOBJECTTYPE.AsInteger ;
    cds_LSPAVROP_CUSTOMERNO.AsInteger           := cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
    cds_LSPSUPPLIER.AsString                    := cds_LO_LookUpSUPPLIER.AsString ;
    cds_LSPLOC_CUST.AsString                    := cds_LO_LookUpLOCAL_CUST.AsString ;
    cds_LSPLOADING_LOCATION.AsString            := cds_LO_LookUpLoadingLocation.AsString ;
    cds_LSPSHIP_TO.AsString                     := cds_LO_LookUpSHIP_TO.AsString ;
    cds_LSPPIPNo.AsInteger                      := cds_LO_LookUpPIPNo.AsInteger ;
    cds_LSPLIPNo.AsInteger                      := cds_LO_LookUpLIPNo.AsInteger ;

    if cds_LoadHead.State = dsBrowse then
    cds_LoadHead.Edit ;
    cds_LoadHeadPIPNo.AsInteger             := cds_LSPPIPNo.AsInteger ;
    cds_LoadHeadLIPNo.AsInteger             := dmsContact.GetMaxLIPNoOfPIPNo(cds_LSPPIPNo.AsInteger) ;
    cds_LoadHead.Post ;


   sq_Booking_Data.Close ;
   sq_Booking_Data.ParamByName('ShippingPlanNo').AsInteger:= cds_LO_LookUpShippingPlanNo.AsInteger ;
   sq_Booking_Data.Open ;
   if not sq_Booking_Data.Eof then
   Begin
    cds_LSPShipper.AsString                 := sq_Booking_DataShipper.AsString ;
    cds_LSPREADYDATE.AsString               := sq_Booking_DataREADYDATE.AsString ;
    cds_LSPVESSEL.AsString                  := sq_Booking_DataVESSEL.AsString ;
    cds_LSPETD.AsSQLTimeStamp               := sq_Booking_DataETD.AsSQLTimeStamp ;
    cds_LSPETA.AsSQLTimeStamp               := sq_Booking_DataETA.AsSQLTimeStamp ;
    cds_LSPSHIPPER_REF.AsString             := sq_Booking_DataSHIPPER_REF.AsString ;
    cds_LSPSHIPPERID.AsString               := sq_Booking_DataSHIPPERID.AsString ;
    cds_LSPSHIPPERS_SHIPDATE.AsSQLTimeStamp := sq_Booking_DataSHIPPERS_SHIPDATE.AsSQLTimeStamp ;
    cds_LSPSHIPPERS_SHIPTIME.AsSQLTimeStamp := sq_Booking_DataSHIPPERS_SHIPTIME.AsSQLTimeStamp ;
   End ;
   cds_LSPORDERNO.AsString                  := cds_LO_LookUpORDERNO.AsString ;
   cds_LSPORDERTYPE.AsString                := cds_LO_LookUpORDERTYPE.AsString ;
   cds_LSPShipping.AsInteger                := cds_LO_LookUpShipping.AsInteger ;

    FCustomerNo                             := cds_LO_LookUpCustomerNo.AsInteger ;
    FSupplierNo                             := cds_LO_LookUpSupplierNo.AsInteger ;
    cds_LSPCustomerNo.AsInteger             := cds_LO_LookUpCustomerNo.AsInteger ;
    cds_LSPSupplierNo.AsInteger             := cds_LO_LookUpSupplierNo.AsInteger ;
    cds_LSPShipToInvPointNo.AsInteger       := cds_LO_LookUpShipToInvPointNo.AsInteger ;
    cds_LSPLoadingLocationNo.AsInteger      := cds_LO_LookUpLoadingLocationNo.AsInteger ;

   cds_LSPFunction.AsInteger:= 1 ; //New
   cds_LSP.Post ;

 //LARS  GetLO_Records_AfterAddingLO_Number( cds_LO_LookUpShippingPlanNo.AsInteger) ;

   Except
    on eDatabaseError do
    Raise ;
   End
  End
   else
   ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_25' (* 'Den h?r Last Ordern ?r inte tillg?nglig, kanske LO status inte ?r accept eller att avropet inte ?r aktivt l?ngre?' *) )) ;
  Finally
   Screen.Cursor := Save_Cursor;
   sq_Booking_Data.Close ;
   if cds_LO_LookUp.Active = True then
    cds_LO_LookUp.Active:= False ;
  End ;
 End ; //with
end;

function TfLoadEntrySSP.ValidatePackage_ver2(
  Var CustcdsNo: integer;
  PkgSupplier: string3;
  PkgNo: integer;
  var SuppShipPlanObjectNo: integer;
  var PkgLog: String;
  var LO_Number, OverrideRL: integer;
  const ProductNo, ProductLengthNo, NoOfLengths: integer): integer;
var
  BadLength: Real;
  LOLineKey,
    CustcdsNoKey: integer;

  // build list of references to SupplierShipPlanObjectNo to validate package against
  procedure BuildListOfLOLines;
  begin
    With dmLoadEntrySSP do
    Begin
      // if no match then add by productno automatically
      if (not cdsLORows.FindKey([cds_LoadPackagesDefsspno.AsInteger]))
      //OR      (cdsLORowsLoadingAddressNo.AsInteger = 1)
      then
      Begin
        // Koppla paket mot LO rader
        LOLineKey := AddLoadDetailMatchByProductNo(CustcdsNoKey, PkgNo,
          PkgSupplier, ProductNo, ProductLengthNo, NoOfLengths);
      End // if
      else
      Begin
        LOLineKey := cds_LoadPackagesDefsspno.AsInteger;
        CustcdsNoKey := cds_LoadPackagesDefaultCustShipObjectNo.AsInteger;
      End;
    End;
  end;

  function ValideraLength: integer;
  Begin
    Result := BAD_LENGTH;
    With dmLoadEntrySSP do
    Begin
      if cdsLORowsACT_LENGTH.AsInteger = 0 then
      Begin
        SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        LO_Number := cdsLORowsShippingPlanNo.AsInteger;
        CustcdsNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        OverrideRL := cdsLORowsOverrideRL.AsInteger;

        if dmsSystem.All_PkgLengths_In_LengthGroup
          (cds_LoadPackagesPackageTypeNo.AsInteger,
          cdsLORowsProductLengthGroupNo.AsInteger) then
          Result := ALL_OK
        else
          Result := VP_LengthNotInLengthGroup;
      End
      else
        if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
      Begin
        if cdsLORowsACT_LENGTH.AsString = cds_LoadPackagesALMM.AsString then
        // if cds_LoadPackagesProductLengthNo.AsInteger = cdsLORowsProductLengthNo.AsInteger then
        Begin
          SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          LO_Number := cdsLORowsShippingPlanNo.AsInteger;
          CustcdsNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          Result := ALL_OK;
          OverrideRL := cdsLORowsOverrideRL.AsInteger;
        End
        else
        Begin
          PkgLog := Format(rs_BAD_LENGTH, [BadLength]);
          Result := BAD_LENGTH;
          OverrideRL := 0;
        End;
      End // if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
      else
        if cds_LoadPackagesNoOfLengths.AsInteger > 1 then
      Begin
        PkgLog := Format(rs_BAD_LENGTH, [BadLength]);
        Result := BAD_LENGTH;
        OverrideRL := 0;
      End
    End; // With
  End;

  function ValideraProduktAttribut: integer;
  Begin
    // August 27 Matching LO to Pkgs
    With dmLoadEntrySSP do
    Begin
      if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Thick,
          [cds_LoadPackagesActualThicknessMM.AsFloat]);
        Result := VP_BadThickness;
        exit;
      End
      else
        if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]);
        Result := VP_BadWidth;
        exit;
      End
      else
        if cds_LoadPackagesMainGradeNo.AsInteger <> cdsLORowsGradeNo.AsInteger
      then
      Begin
        Result := VP_BadGrade;
        PkgLog := rs_NO_Grade;
        exit;
      End

      { Validera utf?rande
        else
        if cds_LoadPackagesSurfacingNo.AsInteger <> cdsLORowsSurfacingNo.AsInteger then
        Begin
        Result  := VP_BadSurfacing ;
        PkgLog  := rs_NO_Surfacing ;
        Exit ;
        End }

      else
        if (cds_LoadPackagesSpeciesNo.AsInteger <> cdsLORowsSpeciesNo.AsInteger)
        and ((cds_LoadPackagesSpeciesNo.AsInteger <> FuruGran) and
        (cdsLORowsSpeciesNo.AsInteger <> FuruGran))
      then
      Begin
        Result := VP_BadSpecies;
        PkgLog := rs_NO_Species;
        exit;
      End
      // LM m?ste fixas till med impregnerings kontrollen.
      else
      if cds_LoadPackagesProductCategoryNo.AsInteger = 1 then
      Begin
        Result := VP_BadIMP;
        PkgLog := rs_NO_IMP;
        exit;
      End
      else
      if (cdsLORowsLoadingAddressNo.AsInteger = 1) and (cds_LoadPackagesPCS.AsInteger <> cdsLORowsPCSPERPKG.AsInteger) then
      Begin
        Result := VP_BadPPP;
        PkgLog := rs_BAD_PPP;
        exit;
      End;
      // if we get to here all attributes are OK.
      Result := ALL_OK;
    End; // With
  End;

  function ValideraDimension: integer;
  Begin
    // August 27 Matching LO to Pkgs
    With dmLoadEntrySSP do
    Begin
      if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Thick,
          [cds_LoadPackagesActualThicknessMM.AsFloat]);
        Result := VP_BadThickness;
        exit;
      End
      else
      if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]);
        Result := VP_BadWidth;
        exit;
      End
      else
      if (cdsLORowsLoadingAddressNo.AsInteger = 1) and (cds_LoadPackagesPCS.AsInteger <> cdsLORowsPCSPERPKG.AsInteger) then
      Begin
        Result := VP_BadPPP;
        PkgLog := rs_BAD_PPP;
        exit;
      End;
      // if we get to here all attributes are OK.
      Result := ALL_OK;
    End; // With
  End;

begin
  // procedure ValidatePackage_ver2
  CustcdsNo := NO_MATCH; // Changed below if validation succeeds.
  BadLength := 0;
  SuppShipPlanObjectNo := NO_MATCH; // Changed below if validation succeeds.
  BuildListOfLOLines;
  SuppShipPlanObjectNo := LOLineKey;
  CustcdsNo := CustcdsNoKey;

  With dmLoadEntrySSP do
  Begin
    Try
      if SuppShipPlanObjectNo > 0 then
      Begin
        // Filtrera fram LO records p? current LoadDetailMatch
        cdsLORows.Filter := 'SupplierShipPlanObjectNo = ' +
          IntToStr(SuppShipPlanObjectNo) + dmLoadEntrySSP.OriginalFilter(True);
        // mtLoadDetailMatchSupplierShipPlanObjectNo.AsString ;
        cdsLORows.Filtered := True;

        if (cds_LoadPackagesOverrideMatch.AsInteger = 0) then
        Begin
          Result := ValideraProduktAttribut;
          if Result = ALL_OK then
            Result := ValideraLength;
        End
        else
        Begin
          Result := ValideraDimension;
          if Result = ALL_OK then
            Result := ValideraLength;
        End;
      End
      else
      Begin
        Result := VP_NoLOConnection;
        PkgLog := rs_NO_LO_Connection;
      End;

      // Kolla om det finns en match p? Dimension, tr?slag, utf?rande och huvudkvalitet mellan
      // LO och paket.
      // Om det inte matchar skall det rapporteras tillbaka till anv?ndaren vilken parameter
      // som inte matchade

      // ?r det en successfull match p? produkten skall paketl?ngden matchas mot LO l?ngden.

    Finally
      cdsLORows.Filter := dmLoadEntrySSP.OriginalFilter(False);

      // cdsLORows.Filtered  := False ;
    End;
  End; // With
end; // end procedure ValidatePackage_ver2

function TfLoadEntrySSP.AddPkgTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

//  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Insert ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;



     cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     if sq_OnePkgDetailData.Active then
      sq_OnePkgDetailData.Active  := False ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Active := True ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger    := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger         := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString            := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger         := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger      := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger     := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString       := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat              := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat              := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                 := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger               := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString     := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger       := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger   := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat   := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat       := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger       := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger         := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger       := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger             := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger  := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesREFERENCE.AsString          := sq_OnePkgDetailDataREFERENCE.AsString ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
    cds_LoadPackages.Post ;
{    if cds_LoadPackages.ChangeCount > 0 then
    Begin
     cds_LoadPackages.ApplyUpdates(0) ;
     cds_LoadPackages.CommitUpdates ;
    End ; }
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_10' (* 'Paketnr finns redan i lasten.' *) )) ;
      cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   sq_OnePkgDetailData.Close ;
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadEntrySSP.bbTally_Ver2Click(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   if dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2 then
    FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
    else
    Begin
     Try
     dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
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
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
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
 End ;      }
end;

procedure TfLoadEntrySSP.InsertSelectedPkgNos(Sender: TObject) ;
Var SupplierShipPlanObjectNo : Integer ;
begin
 With dmsSystem, dmLoadEntrySSP do
 Begin
  SupplierShipPlanObjectNo:= cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  mtSelectedPkgNo.Filter:= 'MARKERAD = 1' ;
  mtSelectedPkgNo.Filtered:= True ;
  Try
   mtSelectedPkgNo.First ;
    While not mtSelectedPkgNo.Eof do
    Begin
      if not cds_LoadPackages.FindKey([mtSelectedPkgNoPaketnr.AsInteger, Trim(mtSelectedPkgNoLevKod.AsString)]) then
      Begin
        Try
         cds_LoadPackages.Insert ;
         cds_LoadPackagesPackageNo.AsInteger    := mtSelectedPkgNoPaketnr.AsInteger ;
         cds_LoadPackagesSupplierCode.AsString  := mtSelectedPkgNoLevKod.AsString ;
         cds_LoadPackagesDefsspno.AsInteger     := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
         cds_LoadPackagesOverrideRL.AsInteger   := cdsLORowsOverrideRL.AsInteger ;


         ValidatePkgNoSuppCode_WhenPickPkgNo(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
         mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
  //       if (cds_LoadPackagesPackageOK.AsInteger <> 0) AND (cds_LoadPackagesPackageOK.AsInteger <> 13) then
  //         ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
  //         mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
        Except
         on eDatabaseError do
         Begin
          Raise ;
          cds_LoadPackages.Cancel ;
         End ;
        End ;
      End
       else
        AddLoadPkgErrorLog(cds_LoadHeadLoadNo.AsInteger, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
        'Package ' + mtSelectedPkgNoPaketnr.AsString + '/' + mtSelectedPkgNoLevKod.AsString + ' already in the load') ;
     mtSelectedPkgNo.Next ;
     cdsLORows.Locate('SupplierShipPlanObjectNo', SupplierShipPlanObjectNo, []) ;
    End ; //While
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
     cds_LoadPackages.Post ;

  Finally
   mtSelectedPkgNo.Filtered:= False ;
   cds_LoadPackages.EnableControls ;
   cdsLORows.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfLoadEntrySSP.ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
var
//  PkgSupplierNo: Integer ;
  Action: TEditAction;
  Save_Cursor : TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(
     PkgNo,
      PkgSupplierCode,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   AddPkgTo_cds_LoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_28' (* ' finns inte i lager ' *) ) + Trim(lcPIP.Text)
    +'/'+'') ;//Trim(bcLogicalInventory.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_28' (* ' finns inte i lager ' *) )
     +Trim(lcPIP.Text)
    +'/'+'');//Trim(bcLogicalInventory.Text)) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) )+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadEntrySSP.IsPkgReserved(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var Res_UserName : String) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
//    SSP.LogicalTransferInventoryNo:= fLIPNo ;
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

procedure TfLoadEntrySSP.ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrstr?ngen
  PkgSupplierCode: String3;
  Action: TEditAction;
//  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   NewPkgNo:= StrToInt(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod:= Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode:= dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;

   if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
   Action := eaAccept
   else
   Action :=  eaABANDON ;

  End
   else //Length < 11
    Begin
     NewPkgNo:= StrToIntDef(PkgNo,0) ;
     PkgSupplierCode:= EgenPkgSupplierCode ;
     if NewPkgNo = 0 then
     Begin
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_33' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) )) ;
      Exit ;
     End ;
    End ;

  if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

    if Action = eaACCEPT then
     InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
      else
       if Action = eaReserved then
        ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) )+Res_UserName)
         else
          ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;

   SaveLoad ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
Var
  SuppShipPlanObjectNo,
  CustcdsNo,
  LO_Number,
  OverrideRL : Integer ;
begin
 With dmLoadEntrySSP do
 Begin
  Try
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
   CustcdsNo            := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   OverrideRL           := cdsLORowsOverrideRL.AsInteger ;


     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackages.Insert ;
      cds_LoadPackagesDefsspno.AsInteger                := SuppShipPlanObjectNo ;
      cds_LoadPackagesOverrideRL.AsInteger              := OverrideRL ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1 ;
      cds_LoadPackagesShippingPlanNo.AsInteger          := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger               := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString                  := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger               := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger            := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger           := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger        := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString             := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat                    := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                    := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                       := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                      := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                     := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString           := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger             := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger         := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat         := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat             := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger             := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger               := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger             := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                      := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger                   := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger       := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;
      cds_LoadPackagesREFERENCE.AsString                := sq_OnePkgDetailDataREFERENCE.AsString ;

      cds_LoadPackagesPkg_State.AsInteger               := NEW_PACKAGE ;
      cds_LoadPackagesPkg_Function.AsInteger            := ADD_PKG_TO_LOAD ;
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;



      sq_OnePkgDetailData.Close ;
      cds_LoadPackages.Post ;


      if AfterAddedPkgNo(Sender, cds_LoadPackagesPACKAGENO.AsInteger, cds_LoadPackagesSupplierCode.AsString,
      cds_LoadPackagesProductNo.AsInteger, cds_LoadPackagesProductLengthNo.AsInteger, cds_LoadPackagesNoOfLengths.AsInteger) <> eaACCEPT then
      Begin
       ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;
      End ;

     End
      else
       ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;


 End ; // with
End ;

procedure TfLoadEntrySSP.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadEntrySSP do
 Begin
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  Try

    mtPkgNos.First ;
    While not mtPkgNos.Eof do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger      := mtPkgNospackageno.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString    := mtPkgNosSuppliercode.AsString ;
       ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
       mtPkgNosSuppliercode.AsString,
       mtPkgNosproductno.AsInteger, mtPkgNosproductlengthno.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
     mtPkgNos.Next ;
    End ; //While
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;

  Finally
   cds_LoadPackages.EnableControls ;
   cdsLORows.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfLoadEntrySSP.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrstr?ngen
  PkgSupplierCode: String3;
  Action: TEditAction;
//  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
  NoOfLengths, ProductLengthNo, ProductNo, PkgSupplierNo: Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin //L?NGA KODEN
   Try
   NewPkgNo:= StrToInt(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod      := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;

   if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
   Action := eaAccept
   else
   Action :=  eaABANDON ;


  End
   else //Length < 11
    Begin
     NewPkgNo:= StrToIntDef(PkgNo,0) ;
     if NewPkgNo = 0 then
     Begin
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_33' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) )) ;
      Exit ;
     End ;

      Action := IdentifyPackageSupplier(
      NewPkgNo,
      dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );
    End ;

  if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  if Action = eaAccept then
   Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

    if Action = eaACCEPT then
     InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
      else
       if Action = eaReserved then
        ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) )+Res_UserName)
         else
          ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(NewPkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_20' (* ' finns inte' *) )) ;

   SaveLoad ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.ScanPkgsByArticle(const Sender: TObject; const aTxtPkgNo: string);
var
  frm: TfEntryFieldNoOfPkgs;
  noOfPkgs: integer;
  baseTime: integer; // default setting of Timer1
begin
  frm := TfEntryFieldNoOfPkgs.Create(self);
  if frm.ShowModal = mrOK then begin
    noOfPkgs := frm.Count;
    if noOfPkgs > 0 then begin
      try
      baseTime := Timer1.Interval;
      Timer1.Interval := noOfPkgs * baseTime;
      Timer1.Enabled := True;
      while noOfPkgs > 0 do begin
        GetpackageNoEntered(Sender, mePackageNo.Text);
        dec(noOfPkgs);
      end;
      mePackageNo.Text := '';
      SaveLoad;
      finally
        Timer1.Interval := baseTime;
        if mePackageNo.Enabled then
          mePackageNo.SetFocus ;
      end;
    end;
  end
end;

procedure TfLoadEntrySSP.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try
    if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    Begin
      dmLoadEntrySSP.cds_LoadPackages.Edit;
      Try
        if VidaEnergi then
          Validate_VE_Pkg1(dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger, -1, dmLoadEntrySSP.cds_LoadPackagesSuppliercode.AsString)
        else begin
          ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString,
            dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger);
        end;
        dmLoadEntrySSP.cds_LoadPackages.Post;
      Except
        on eDatabaseError do
          Raise;
      End;

    End
    else
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault
        ('IDS_47' (* 'Raden ligger i ?ndringsl?ge, spara raden genom pil upp eller ner f?rst.' *) )
        );

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.acValidateAllPkgsExecute(Sender: TObject);
begin
 ValidateAllPkgs ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.ValidateAllPkgs ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.DataSet:= Nil ;
  cds_LoadPackages.DisableControls ;
  Try
   cds_LoadPackages.First ;
    While not cds_LoadPackages.Eof do
    Begin
//     if cds_LoadPackagesPackageOK.AsInteger <> ALL_OK then
//     Begin
      cds_LoadPackages.Edit ;
      Try
        if VidaEnergi then
          Validate_VE_Pkg1(cds_LoadPackagesPACKAGENO.AsInteger, -1, dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString)
        else begin
          ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
                      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
                      dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger) ;

        end;
        cds_LoadPackages.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
//     End ;//if
     cds_LoadPackages.Next ;
    End ; //while

  Finally
   ds_LoadPackages2.DataSet:= cds_LoadPackages ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;
  End ;
 End ;  //with
end;



procedure TfLoadEntrySSP.acInsertPkgToInventoryExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  with dmLoadEntrySSP do
  begin

    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    mtLoadPackages.Active := True;
    GetMarkedPkgs;

    cds_LoadPackages.DisableControls;
    try
      ds_LoadPackages2.OnDataChange := NIL;

      mtLoadPackages.First;
      while not mtLoadPackages.Eof do
      begin
        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]), []) then
        begin
          if cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
            cds_LoadPackages.Delete
          else
          begin
           RemPkgFromLoad_III(cds_LoadPackagesLoadNo.AsInteger, cds_LoadPackagesLoadDetailNo.AsInteger) ;
{
              if cds_LoadPackages.State = dsBrowse then
                cds_LoadPackages.Edit;
              cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD;
              cds_LoadPackagesChanged.AsInteger := 1;
              cds_LoadPackages.Post;
}
          end;
        end;
        mtLoadPackages.Next;
      end;

    finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      mtLoadPackages.Active := False;
      cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end; //with
end;

procedure TfLoadEntrySSP.acInsertAllPkgsToInventoryExecute(
  Sender: TObject);
Var Save_Cursor : TCursor ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 dmLoadEntrySSP.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;
  dmLoadEntrySSP.cds_LoadPackages.First ;
  While not dmLoadEntrySSP.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
   dmLoadEntrySSP.cds_LoadPackages.Next ;
//April 22 2004
   Application.ProcessMessages ;
  End ;
 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
  dmLoadEntrySSP.cds_LoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfLoadEntrySSP.acRemovePkgFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_48' (* '?r du s?ker? markerade paket kommer att f?svinna fr?n systemet!' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadEntrySSP do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    dmLoadEntrySSP.cds_LoadPackages.Edit ;
    dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
    dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
    dmLoadEntrySSP.cds_LoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;//While..

 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With..
end;

procedure TfLoadEntrySSP.registrateLoadAsDelivered(const Sender: TObject; const deliveredWeight: integer);
var
  newPkgNo: Integer;
begin
  // Get new package number
  try
  newPkgNo := dmLoadEntrySSP.getNewBULKPackageNo;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Active := false;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@UserID').AsInteger        := ThisUser.UserID;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@PackageNo').AsInteger     := newPkgNo;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@LIPNoAlt').AsInteger      := dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@ProductNoAlt').AsInteger  := dmLoadEntrySSP.cdsLORowsProductNo.AsInteger;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@Prefix').AsString         := 'BLK';
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@Kg').AsInteger            := deliveredWeight;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.Params.ParamByName('@PkgArticleNo').AsInteger  := dmLoadEntrySSP.cdsLORowsPkgArticleNo.AsInteger;
  dmLoadEntrySSP.sp_CreateNewBulkPkg.ExecProc;
  // Add package to Load

  GetpackageNoEntered(Sender, intToStr(newPkgNo)) ;
  SaveLoad ;
  except
    ON E: Exception do begin
       ShowMessage(E.Message);
    end;

  end;

end;

procedure TfLoadEntrySSP.acRegBulkDeliveryExecute(Sender: TObject);
var
  deliveredWeight: Integer;
  LoadNo: Integer;
  reference: string;
  product: string;
  RecIDx: Integer;
  ColIdx: Integer;
begin
  if VidaEnergi then begin
      if grdLORowsDBBandedTableView1.Controller.SelectedRecordCount = 1 then begin
        RecIDx          := grdLORowsDBBandedTableView1.Controller.SelectedRecords[0].RecordIndex ;
        ColIdx          := grdLORowsDBBandedTableView1.DataController.GetItemByFieldName('REFERENCE').Index;
        reference       := grdLORowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];
        ColIdx          := grdLORowsDBBandedTableView1.DataController.GetItemByFieldName('LoadNo').Index;
        LoadNo          := grdLORowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];
        ColIdx          := grdLORowsDBBandedTableView1.DataController.GetItemByFieldName('INTERNPRODDESC').Index;
        product          := grdLORowsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];
        deliveredWeight := getDeliveredWeight(LoadNo, product, reference);
//        ShowMessage('Levererad vikt: '+IntToStr(deliveredWeight));
        if deliveredWeight <= 0 then Exit;
        registrateLoadAsDelivered(Sender, deliveredWeight);
      end;
  end;
end;

procedure TfLoadEntrySSP.acRegBulkDeliveryUpdate(Sender: TObject);
begin
  if dmLoadEntrySSP.cdsLORowsPaketstorlek.AsString = 'BULK' then
    acRegBulkDelivery.Enabled := true
  else
    acRegBulkDelivery.Enabled := false
end;

procedure TfLoadEntrySSP.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  if MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_49' (* '?r du s?ker? paketen kommer att f?svinna fr?n systemet!' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadEntrySSP.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  dmLoadEntrySSP.cds_LoadPackages.First ;
  While not dmLoadEntrySSP.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
   dmLoadEntrySSP.cds_LoadPackages.Next ;
  End ;

  Finally
   dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
   dmLoadEntrySSP.cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadEntrySSP.acUndoPkgOperationExecute(Sender: TObject);
begin
//Undo
 Try
 dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

 Case dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
  End ;
 End ; //case
 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
 End ;
end;

procedure TfLoadEntrySSP.acSetDefaultMatchOnAllPkgsExecute(
  Sender: TObject);
var
 Save_Cursor  : TCursor;
 CustcdsNo,
 SSPObjectNo  : Integer ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntrySSP do
 Begin

 try
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   SSPObjectNo:= AddLoadDetailMatchByProductNo(CustcdsNo, cds_LoadPackagesPackageNo.AsInteger,
   cds_LoadPackagesSupplierCode.AsString, cds_LoadPackagesProductNo.AsInteger,cds_LoadPackagesProductLengthNo.AsInteger,
   cds_LoadPackagesNoOfLengths.AsInteger);

   cds_LoadPackages.Edit ;
   cds_LoadPackagesDefsspno.AsInteger                 := SSPObjectNo ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesChanged.AsInteger                  := 1 ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

 finally
  cds_LoadPackages.EnableControls ;
  cdsLORows.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;//With
end;


procedure TfLoadEntrySSP.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode := dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLoadEntrySSP.ShowPkgInfo(const NewPkgNo : Integer;const PkgSupplierCode : String3;const Errortext : String) ;
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo              := NewPkgNo ;
  frmPkgInfo.SupplierCode           := PkgSupplierCode ;
 // frmPkgInfo.PanelInfoText.Caption  := ErrorText ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
End;

procedure TfLoadEntrySSP.acValidatePkgUpdate(Sender: TObject);
begin
 acValidatePkg.Enabled:= (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acValidateAllPkgsUpdate(Sender: TObject);
begin
 acValidateAllPkgs.Enabled:= (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 //acInsertAllPkgsToInventory.Enabled:=
 acInsertAllPkgsToInventory.Enabled :=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
// acRemovePkgFromSystem.Enabled  :=
  acRemovePkgFromSystem.enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
 acRemoveAllPkgsFromSystem.enabled  := (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
 acSetDefaultMatchOnAllPkgs.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acSetLoadReadyExecute(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
  if not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) then
  Begin
   if cds_LoadPackages.UpdateOptions.ReadOnly then
    cds_LoadPackages.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.UpdateOptions.ReadOnly then
    cds_LoadHead.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := LoadReady ; //Ready = 4
   cds_LoadHead.Post ;
   SaveLoad ;
   SetLoadEnabled ;

   if mePackageNo.Enabled then
    mePackageNo.SetFocus ;

  End
   else
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_85' (* 'Lasten kan inte s?ttas till "Ready" f?r att den ?r ankomstregistrerad.' *) ));
     SetLoadEnabled ;
    End ;
 End ;
end;

procedure TfLoadEntrySSP.acSetLoadReadyUpdate(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
  acSetLoadReady.Enabled:= //(not DataSaved) and (LoadEnabled) and
  (cds_LoadHeadSenderLoadStatus.AsInteger <> LoadReady) ;
 End ;
end;

procedure TfLoadEntrySSP.acSetPositionInAllPkgsExecute(Sender: TObject);
Var Save_Cursor   : TCursor ;
    PositionID    : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  PositionID    := GetPositionID ;
  if PositionID > 0 then
  Begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active := True ;
  grdPkgsDBBandedTableView1.Controller.SelectAll ;
  GetMarkedPkgs ;

  cds_LoadPackages.DisableControls ;
  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    SetPositionOnSelectedPkgs (dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, PositionID) ;

   End ;
   mtLoadPackages.Next ;
  End ;

  cds_LoadPackages.Refresh ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End;
 End ;//with
end;

procedure TfLoadEntrySSP.acSetPositionInAllPkgsUpdate(Sender: TObject);
begin
 acSetPositionInAllPkgs.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acSetPositionInSelectedPkgsExecute(Sender: TObject);
Var Save_Cursor   : TCursor ;
    PositionID    : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  PositionID    := GetPositionID ;
  if PositionID > 0 then
  Begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active := True ;

  GetMarkedPkgs ;

  cds_LoadPackages.DisableControls ;
  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    SetPositionOnSelectedPkgs (dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, PositionID) ;

   End ;
   mtLoadPackages.Next ;
  End ;

  cds_LoadPackages.Refresh ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End;
 End ;//with
end;

procedure TfLoadEntrySSP.acSetPositionInSelectedPkgsUpdate(Sender: TObject);
begin
 acSetPositionInSelectedPkgs.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:=  dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntrySSP.acAddPkgByPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
    noofpkgs : integer ;
    fEntryField : TfEntryField ;
begin
 //Add pkgs by package code
 //ta coden fr?n lo rad
 //mata in antal paket
 //h?mta paket fr?n lagret, ?ldsta paketnr f?rst
 With dmLoadEntrySSP do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
  noofpkgs:= 0 ;

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  Try
  cds_LoadPackages.Post ;
  Except
   cds_LoadPackages.Cancel ;
  End ;

  fEntryField:= TfEntryField.Create(Nil);
  mtPkgNos.Active:= True ;
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   if strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > 0 then
   Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }

    Try
    noofpkgs:= GetPkgsNos(cdsLORowsPKGCODE.AsString, strtointdef(Trim(fEntryField.eNoofpkgs.Text),0),
    cds_LoadHeadLIPNo.AsInteger) ;
    if noofpkgs <> 0 then
    Begin
     if noofpkgs <> strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) then
     Begin
      if MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_50' (* 'Du beg?rde ' *) )+Trim(fEntryField.eNoofpkgs.Text)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_51' (* ' paket med det finns endast ' *) )+inttostr(noofpkgs)
      +siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_52' (* ' vill du l?gga ' *) )+inttostr(noofpkgs)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_53' (* ' paket till lasten?' *) ),
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      InsertPkgNo(Sender) ;
     End
     else
     InsertPkgNo(Sender) ;
    End
    else
    showmessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_54' (* 'Det finns inga paket av pktkod ' *) )+trim(cdsLORowsPKGCODE.AsString)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_55' (* ' i lager ' *) )+Trim(lcPIP.Text)
    +'/'+Trim(lcLIP.Text)) ;
    Finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End ;
   End ;
  End ;

  Finally
   FreeAndNil(fEntryField) ;//.Free ;
   mtPkgNos.Active:= False ;
  End ;

  SaveLoad ;
 End
 else
   ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_56' (* 'Spara lasten f?rst.' *) )) ;
 End ; //with
end;

procedure TfLoadEntrySSP.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acAddPkgByPkgCode.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.acPickPkgNosExecute(Sender: TObject);
var
  fPickPkgNo: TfPickPkgNo;
  articleNo: integer;
begin
  if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
  begin
    ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_56' (* 'Spara lasten f?rst.' *) ));
    Exit;
  end;

  with dmsSystem do
    Delete_ReservedPkgs('TfLoadEntrySSP');

  with dmLoadEntrySSP do
  begin
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
    try
      cds_LoadPackages.Post;
    except
      cds_LoadPackages.Cancel;
    end;
    if vidaEnergi then
    begin
      articleNo := cdsLORowsPkgArticleNo.AsInteger;
      fPickPkgNo := TfPickPkgNo.Create(Nil, articleNo);
    end
    else
      fPickPkgNo := TfPickPkgNo.Create(Nil,-1);
    try
      fPickPkgNo.ProductNo              := cdsLORowsProductNo.AsInteger;
      fPickPkgNo.ProductLengthNo        := cdsLORowsProductLengthNo.AsInteger;
      fPickPkgNo.ALMM                   := cdsLORowsACT_LENGTH.AsString;
      fPickPkgNo.PIPNo                  := dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;
      fPickPkgNo.LONo                   := cdsLORowsShippingPlanNo.AsInteger;
      fPickPkgNo.LabelProduct.Caption   := cdsLORowsINTERNPRODDESC.AsString; //cdsLORowsPRODUCTDESCRIPTION.AsString ;
      fPickPkgNo.LabelLength.Caption    := cdsLORowsLENGTHDESC.AsString;
      fPickPkgNo.LabelPIPName.Caption   := lcPIP.Text;
      fPickPkgNo.LabelOwner.Caption     := cds_LSPSUPPLIER.AsString;
      fPickPkgNo.LabelLONr.Caption      := cdsLORowsShippingPlanNo.AsString;
      fPickPkgNo.LabelReferens.Caption  := cdsLORowsKR_Ref.AsString;
      fPickPkgNo.ObjectType             := cds_LSPOBJECTTYPE.AsInteger;
      fPickPkgNo.Referens               := cdsLORowsKR_Ref.AsString;

      if fPickPkgNo.ShowModal = mrOK then
      begin
        Application.ProcessMessages;
        InsertSelectedPkgNos(Sender);
      end;

      SaveLoad;
    finally
      FreeAndNil(fPickPkgNo); //.Free ;
    end;
  end; //with
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
End ;

procedure TfLoadEntrySSP.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acPickPkgNos.Enabled:= (cdsLORows.RecordCount > 0)  and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.acSaveLoadExecute(Sender: TObject);
Begin
 SaveLoad ;
end;

function TfLoadEntrySSP.ControlInvDate : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmLoadEntrySSP do
 Begin
  cds_LoadPackages.DisableControls ;
  Try
  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  cds_LoadPackages.Post ;
  Result  := True ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(cds_LoadPackagesLIPNo.AsInteger, SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp), InvDate, MaxDateMsg) ;
   if LastInvNr > -1 then
   Begin
    cds_LoadPackages.Edit ;
    cds_LoadPackagesInvNr.AsInteger := LastInvNr ;
    cds_LoadPackages.Post ;
    Result  := False ;
   End ;
   cds_LoadPackages.Next ;
  End ;
  Finally
   cds_LoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TfLoadEntrySSP.SaveFormSettings;
var
  iList: TList<integer>;
  s: string;

begin
  iList := TList<integer>.create;
  try
  iList.Add(pgrdLO.Height);
  iList.Add(PanelLORows.Height);
    iList.Add(dxPageControl1.Height);
    s := PackSavedFormSettings(iList);

    with dmLoadEntrySSP do
    try
      cds_SaveFormSettings.ParamByName('UserID').AsInteger := ThisUser.UserID;
      cds_SaveFormSettings.ParamByName('Form').AsString := Self.Name;
      cds_SaveFormSettings.Active := True;
      if cds_SaveFormSettings.Eof then
      Begin
        cds_SaveFormSettings.Insert;
        cds_SaveFormSettingsForm.AsString := Self.Name;
        cds_SaveFormSettingsUserID.AsInteger := ThisUser.UserID;
      End
      else
        cds_SaveFormSettings.Edit;

      cds_SaveFormSettingsFilter1.AsString := s;

      cds_SaveFormSettings.Post;
      if cds_SaveFormSettings.ChangeCount > 0 then
      Begin
        cds_SaveFormSettings.ApplyUpdates(0);
        cds_SaveFormSettings.CommitUpdates;
      End;
    finally
      cds_SaveFormSettings.Active := False;
    end;
  finally
    if assigned(iList) then iList.Free;
  end;

end;

procedure TfLoadEntrySSP.SaveLoad;
var
  Save_Cursor: TCursor;
  LastInvNr     : Integer ;
  InvDate       : TDateTime ;
  MaxDateMsg    : String ;
Begin
 With dmLoadEntrySSP do
 Begin
  if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now then
  Begin
   if cds_LoadHead.State in [dsEdit, dsInsert] then
   cds_LoadHead.Post ;
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;
   cds_LoadPackages.DisableControls ;
   cds_LSP.DisableControls ;
//   cdsLORows.DisableControls ;
   cds_LoadHead.DisableControls ;
   if not cds_LoadPackages.UpdateOptions.ReadOnly then
   ValidateAllPkgs ;
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   try
    if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
    SaveLOData(cds_LoadHeadLoadNo.AsInteger)
     else
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_58' (* 'L?gg till minst en LO.' *) )) ;
    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
    Begin
     ShowMessage('Alla paket matchar inte, status kan inte s?ttas till OK.') ;
    End
    else
//LM    if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (cds_LoadPackages.RecordCount > 0) then
//LM    Refresh_PkgList(cds_LoadHeadLoadNo.AsInteger) ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
//    cdsLORows.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;


  End //if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
   else
    ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_59' (* 'Utlastningsdatum f?r inte vara st?rre ?n aktuellt datum&tid, var v?nlig justera.' *) )) ;


  if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate) then
  Begin
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ;
   cds_LoadHead.Post ;
   if cds_LoadHead.ChangeCount > 0 then
   Begin
    cds_LoadHead.ApplyUpdates(0) ;
    cds_LoadHead.CommitUpdates ;
   End ;

   ShowMessage('Lasten kan inte s?tta Status till OK pga att utlastningsdatum ?r f?re inventerings eller maxdatum i en inventering d?r lagergruppen ing?r') ;
  End ;

  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger   := cds_LoadHeadLoadNo.AsInteger ;
 // cdsLORows.ParamByName('Lagerkod').AsString  := gLagerkod ;
  cdsLORows.Active:= True ;

  dmLoadEntrySSP.Get_LO_LinesMatched (dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString) ;

 End ;//With
end;

function TfLoadEntrySSP.scanLoadID(aMsg, aLoadID: string; aLoadNo,
  aLONo: integer): string;
var
  hndlLoadID: ILoadIDScanning;
  loadIDEvaluator: ILoadIDEvaluator;
  loadTab: ILoadTab;
  newLoadRequired: boolean;
begin
  result := '';
  hndlLoadID := THandleLoadIDScanning.create(aLONo, aLoadNo);
  loadIDEvaluator := TLoadIDEvaluator.Create;
  newLoadRequired := hndlLoadID.handleInput(aMsg, loadIDEvaluator);
  loadTab := TLoadIDTab.Create(aLONo, hndlLoadID.LoadNo, hndlLoadID.LoadID);
  if newLoadRequired then
  begin
    //switchToNewLoad
    result := loadTab.TabName;
  end;
  if hndlLoadID.LoadNo <> aLoadNo then
  begin
    result := loadTab.TabName;
  end;

end;

procedure TfLoadEntrySSP.SetLoadRowToChanged ;
Begin
 With dmLoadEntrySSP do
 Begin
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger   := 1 ;
  cds_LoadPackagesPackageOK.AsInteger := BAD_PKG ;
  cds_LoadPackages.Post ;
 End ;
End ;

procedure TfLoadEntrySSP.acPrintTallyUSNoteExecute(Sender: TObject);
//Var FormCRViewReport : TFormCRViewReport ;
begin
{
   Edit1.SetFocus ;
   FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try
   if dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2 then
   FormCRViewReport.CreateCo('TALLY_INTERNAL_USA_VER2_NOTE.RPT')
   else
   Begin
    Try
    dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
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
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
    Try
    dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
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

procedure TfLoadEntrySSP.acPrintTOExecute(Sender: TObject);
var
  SR: integer;
  FR2: TFastReports2;
  LONo: integer;
  Language: integer;
begin
  // Check language
  Language :=  dmsContact.getCustomerLanguage
    (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
  // Get trp order no
  LONo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
  FR2 := TFastReports2.create(dmFR, Language, SR);
  try
    FR2.preViewTrpOrderByReportType(cfTrpOrder_Note, LoNo);
  finally
    FR2.Free;
  end;
//  fr := TFastReports.create;
//  fr.TrpO(TONo,ReportType,Language,'','','');
end;

procedure TfLoadEntrySSP.acPrintTo_ManuellExecute(Sender: TObject);
var
  salesRegion: integer;
  FR: TFastReports;
  FR2: TFastReports2;
  SR: integer;
  MailToAddress: string;
  LoNo: integer;
  LONos: TList<integer>;
  ReportType: integer;
  Lang: integer;
begin
  if TAction(Sender) = acMailTO_Manuell then
  begin
    if (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger > 0) and (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.IsNull = False) then
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger)
    else
      MailToAddress := dmsContact.GetEmailAddress(dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger);
    if Length(MailToAddress) = 0 then
    begin
      MailToAddress := 'ange@adress.nu';
      ShowMessage('Emailadress saknas f?r klienten, ange adressen ' + 'direkt i mailet(outlook)');
    end;
  end
  else
    MailToAddress := '';

  LoNo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
  if LoNo < 1 then
    Exit;

  // Check language
  Lang := dmsContact.getCustomerLanguage
    (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
  try
    SR := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo);
    if MailToAddress <> '' then
    begin
      LONos := TList<integer>.create;
      LONos.Add(LONo);
      FR2 := TFastReports2.createForMail(dmFR, nil,
        dmsSystem.Get_Dir('EXCELDIR'), ThisUser.UserEmail, MailToAddress, Lang,
        SR, ThisUser.UserID);
      FR2.mailTrpOrderByType(cfTrpOrder_Manual, LONos);
    end
    else
    begin
      FR2 := TFastReports2.create(dmFR, Lang, SR);
      FR2.preViewTrpOrderByReportType(cfTrpOrder_Manual, LONo);
    end;
    // FR := TFastReports.Create;
    // FR.TrpO(LoNo, cTrpOrder_manuell, Lang, MailToAddress, '', '');
  finally
    FreeAndNil(FR2);
    if assigned(LONos) then
      FreeAndNil(LONos);
  end;
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1MATCHPropertiesChange
  (Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  Try
  ds_LoadPackages2.OnDataChange:= nil ;
  if cds_LoadPackages.State = dsBrowse then
  cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger                 := 1 ;
  cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;

  if cdsLORowsMatch.AsInteger = 1 then
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := cdsLORowsOverrideRL.AsInteger ;
  End
  else
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
  End ;
  cds_LoadPackages.Post ;

  Get_LO_LinesMatched (cds_LoadPackagesPackageNo.AsInteger,  Trim(cds_LoadPackagesSupplierCode.AsString)) ;
  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var  Diff : Double ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').Index] <> null then
  Diff  := ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').Index] ;
  if Diff > 0 then
   AStyle := cxStyleOrange2
    else
     if Diff < 0 then
      AStyle  := cxStyleRed2
       else
        AStyle  := cxStyleGreen2 ;
end;

procedure TfLoadEntrySSP.GetMarkedPkgs ;
 Var
 LoadDetailNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 With dmLoadEntrySSP do
 Begin
  grdPkgsDBBandedTableView1.BeginUpdate ;
  grdPkgsDBBandedTableView1.DataController.BeginLocate ;
  ds_LoadPackages2.OnDataChange:= nil ;
  Try
   For I := 0 to grdPkgsDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx          := grdPkgsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx          := grdPkgsDBBandedTableView1.DataController.GetItemByFieldName('LoadDetailNo').Index;
    LoadDetailNo    := grdPkgsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    mtLoadPackages.Insert ;
    mtLoadPackagesLoadDetailNo.AsInteger              := LoadDetailNo ;
    mtLoadPackagesSupplierShipPlanObjectNo.AsInteger  := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
    mtLoadPackagesCustcdsNo.AsInteger                 := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
    mtLoadPackages.Post ;
   End ;//for

 Finally
  grdPkgsDBBandedTableView1.DataController.EndLocate ;
  grdPkgsDBBandedTableView1.EndUpdate ;
  ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//with
end;

procedure TfLoadEntrySSP.acKopplaPaketMotLOManuelltExecute(
  Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  ds_LoadPackages2.OnDataChange:= nil ;
  Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
    Begin
     if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
     Begin
      cds_LoadPackages.Edit ;
      cds_LoadPackagesDefsspno.AsInteger                := mtLoadPackagesSupplierShipPlanObjectNo.AsInteger ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1 ;
      cds_LoadPackagesOverrideRL.AsInteger              := 0 ;
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesOverrideMatch.AsInteger           := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;
      cds_LoadPackagesProblemPackageLog.AsString        := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_60' (* 'Manuell koppling' *) ) ;
//Validera varje paket som har manuell koppling
      ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger) ;
      cds_LoadPackages.Post ;
     End ;
     mtLoadPackages.Next ;
    End ;
   Get_LO_LinesMatched (cds_LoadPackagesPackageNo.AsInteger, cds_LoadPackagesSupplierCode.AsString) ;
  Finally
   mtLoadPackages.Active:= False ;
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ;//With..
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acDeleteLoadExecute(Sender: TObject);
Var LONo, LoadNo : Integer ;
    Lagerkod : String ;
begin
 LoadNo      := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
 LONo        := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger ;
 Lagerkod    := dmLoadEntrySSP.cds_LoadHeadLagerkod.AsString ;
 if dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0 then
  Begin
   ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_61' (* 'Ta bort paketen fr?n lasten f?rst.' *) )) ;
  End
  else
  Begin
   if MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_62' (* '?r du s?ker?' *) ),
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Try
     dmLoadEntrySSP.DeleteOneLoad(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
     frmVisTruckLoadOrder.RemoveTab(LONo, LoadNo, Lagerkod) ;
     dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
     Close ;
    Except
     on E : eDatabaseError do
     Begin
      ShowMessage(E.Message);
     End ;
    End ;
  End ;
end;

procedure TfLoadEntrySSP.acDeleteLoadUpdate(Sender: TObject);
begin
 acDeleteLoad.Enabled:=
 (DataSaved)
 and (LoadEnabled)
 and (dmLoadEntrySSP.cds_LoadPackages.Active)
 and (dmLoadEntrySSP.cds_LoadPackages.RecordCount = 0) ;
end;


procedure TfLoadEntrySSP.acPrintFSExecute(Sender: TObject);
Var Val, Prepaid    : Integer ;
    Avsluta         : Boolean ;
begin
 Avsluta := False ;
 Val := TfSelectPrintDevice.Execute ;
 if Val > 0 then
 Begin
    Prepaid := dmLoadEntrySSP.IsLoadPrepaid_Terms(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
    if Prepaid > 2 then
     Begin
      if Prepaid = 3 then
       TfOKDia.Execute('Notering, Lasten f?r inte lastas ut f?rr?n fakturan ?r betald.') ;
     End;

  if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
   if TfConfirm.Execute (siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_63' (* 'Avsluta lasten' *) )) = mrYes then
    Avsluta := True ;
  if Val = 2 then
   PreviewFS(Sender)
    else
     if Val = 1 then
      PrintDirectFS(Sender) ;
  if Avsluta then
  Begin
   if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
   acSaveAndOKExecute(Sender) ;
  End ;
 End ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
End ;

procedure TfLoadEntrySSP.PrintDirectFS(Sender: TObject);
var //FormCRPrintOneReport  : TFormCRPrintOneReport;
(*
  A: array of variant;
  fr: TFastReports;
  ReportType: Integer;
  language: integer;
  LoadNo: integer;
  NoOfCopies: integer;
*)
  loadNo: integer;
  ReportType: Integer;
  lang: integer;
  FR2: TFastReports2;
  SalesRegion: integer;
  NoOfCopies: integer;
  loads: TList<integer>;
begin
  dmFR.SaveCursor;
  try
    lang := ThisUser.LanguageID;
    loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    if loadNo < 1 then
      Exit;
    loads := TList<integer>.create;
    SalesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    NoOfCopies := dmcOrder.cds_PropsCopyPcs.AsInteger;
    try
      loads.Add(loadNo);
      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger in [0, 1] then
        ReportType := cfTallyInternal
      else
        ReportType := cfTally;

      FR2 := TFastReports2.createForPrint(dmFR, true, false, lang, SalesRegion, NoOfCopies);
      try
        FR2.printTallyByType(ReportType, loads, true);
      finally
        FR2.Free;
      end;
    finally
      loads.Free;
    end;

  finally
    dmFR.RestoreCursor;
  end;
(*
  dmFR.SaveCursor;
  try
    NoOfCopies := dmcOrder.cds_PropsCopyPcs.AsInteger;
    Edit1.SetFocus;
    LoadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    if LoadNo < 1 then
      exit;
    if uReportController.useFR then
      try
        // Check language
        Language := dmsContact.getCustomerLanguage
          (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
        fr := TFastReports.createForPrint(False);
        if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        begin
          ReportType := cFoljesedelIntern;
          fr.Tally(LoadNo, ReportType, Language, '', '', '', NoOfCopies);
        end
        else
        begin
          ReportType := cFoljesedel;
          fr.Tally_Pkg_Matched(LoadNo, ReportType, Language, '', '', '',
            NoOfCopies);
        end;
      finally
        FreeAndNil(fr);
      end
    else
    begin
      FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
      Try
        // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

        SetLength(a, 1);
        a[0] := LoadNo;
        if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
          FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger,
            False, False, a, 'TALLY_INTERNAL_VER3_NOTE.RPT')
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
          FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger,
            False, False, a, 'TALLY_VER3_NOTE.RPT');
        End;

        Try
          dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
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
    end;
  finally
    dmFR.RestoreCursor;
  end;
*)
end;

procedure TfLoadEntrySSP.PreviewFS(Sender: TObject);
Var
  loadNo: integer;
  ReportType: Integer;
  lang: integer;
  FR2: TFastReports2;
  SalesRegionNo: integer;
begin
  dmFR.SaveCursor;
  try
    loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    if loadNo < 1 then
      Exit;

    lang := ThisUser.LanguageID;
    salesRegionNo := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    if (dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger = 0) or
    (dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger = 1) then
      ReportType := cfTallyInternal
    else
      ReportType := cfTally;
    FR2 := TFastReports2.create(dmFR, lang, salesRegionNo);
    try
      FR2.preViewTallyByReportType(ReportType, loadNo, true);
    finally
      FR2.Free;
    end;

  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfLoadEntrySSP.acLOAllaVerkExecute(Sender: TObject);
Var
  fr: TFastReports;
  ReportType: Integer;
  language: integer;
  LONo,
    Supplier: Integer;
begin
//  Edit1.SetFocus;
  if uReportController.useFR then
  begin
    // Check language
    Language := dmsContact.getCustomerLanguage
      (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
    ReportType := cLastorder;
    // Get trp order no
    LONo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
    Supplier := -1;
    try
      fr := TFastReports.Create;
      fr.LO(LONo, Supplier, ReportType, language, '', '', '');
    finally
      FreeAndNil(fr);
    end;
  end
  else
  begin

        {
      FormCRViewReport := TFormCRViewReport.Create(Nil);
          Try
            FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT');
            if FormCRViewReport.ReportFound then
            Begin
              FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
                (dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);
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

procedure TfLoadEntrySSP.acPrintLOErtVerkExecute(Sender: TObject);
Var
  fr: TFastReports;
  ReportType: Integer;
  language: integer;
  LONo,
  Supplier: Integer;
begin
//  Edit1.SetFocus;
  if uReportController.useFR then
  begin
    // Check language
    Language := dmsContact.getCustomerLanguage
      (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);
    ReportType := cLastorder;
    // Get trp order no
    LONo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
    Supplier := dmLoadEntrySSP.cds_LSPSupplierNo.AsInteger;
    try
      fr := TFastReports.Create;
      fr.LO(LONo, Supplier, ReportType, Language, '', '', '');
    finally
      FreeAndNil(fr);
    end;
  end ;
end;

procedure TfLoadEntrySSP.acPrintFSUpdate(Sender: TObject);
begin
 acPrintFS.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSP.acPrintSpecAllaLasterLOUpdate(Sender: TObject);
begin
 acPrintSpecAllaLasterLO.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSP.acPrintLOErtVerkUpdate(Sender: TObject);
begin
 acPrintLOErtVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSP.acLOAllaVerkUpdate(Sender: TObject);
begin
 acLOAllaVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSP.acPkgEntryExecute(Sender: TObject);
var
  x: Integer;
  frmPackageEntry: TfrmPackageEntry;
begin
  if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
  begin
    if (Length(lcPIP.Text) > 0) and (Length(lcLIP.Text) > 0) then
    begin
      if (dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0) and (dmLoadEntrySSP.cds_LoadHeadLIPNo.IsNull = False) then
      begin
        if dmLoadEntrySSP.cdsLORows.RecordCount > 0 then
        begin
          try
            dmsProduct := TdmsProduct.Create(NIL);
            dmsProduct.CSD := 2;


// if dmLoadEntrySSP.FAvrop_CustomerNo <> -1 then
            if FShipping = 1 then
            begin //Purchase packages get external supplier SupplierCode
              dmsProduct.SupplierNo := FOrderClientNo; //dmLoadEntrySSP.FAvrop_CustomerNo ;
              dmsProduct.SupplierCode := //dmsContact.GetSupplierCode(dmLoadEntrySSP.mtLoadShippingPlanLoadingLocationNo.AsInteger) ;
                dmsContact.GetClientCode(FOrderClientNo); //dmLoadEntrySSP.FAvrop_CustomerNo) ;

              dmsProduct.OrderType := c_Purchase;
              dmsProduct.InventoryOwnerNo := dmLoadEntrySSP.FCustomerNo; //dmLoadEntrySSP.FSupplierNo ;

              if dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger > 0 then
                dmsProduct.InventoryNo := dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;

              if dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0 then
                dmsProduct.LIPNo := dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger;
            end
            else
            begin
              dmsProduct.OrderType := c_Sales;
              dmsProduct.InventoryNo := dmLoadEntrySSP.cds_LSPShipToInvPointNo.AsInteger;

              if dmsContact.IsClientLego(ThisUser.CompanyNo) = 6 then //6 = Lego
                dmsProduct.SupplierNo := ThisUser.CompanyNo
              else
                dmsProduct.SupplierNo := dmLoadEntrySSP.FSupplierNo;

 // dmsProduct.SupplierNo       := dmLoadEntrySSP.FSupplierNo ;
//  dmsProduct.SupplierCode:= dmsContact.GetClientCode(dmLoadEntrySSP.FSupplierNo) ;
              dmsProduct.SupplierCode := dmsContact.GetSupplierCode(dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger);

              dmsProduct.InventoryOwnerNo := dmLoadEntrySSP.FSupplierNo;

              if dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger > 0 then
                dmsProduct.InventoryNo := dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;

              if dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0 then
                dmsProduct.LIPNo := dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger;
            end;

            dmsProduct.mtLO_Records.Active := True;
            dmLoadEntrySSP.cdsLORows.First;
            while not dmLoadEntrySSP.cdsLORows.Eof do
            begin
              dmsProduct.mtLO_Records.Insert;
              try
                for x := 0 to 27 do
                  dmsProduct.mtLO_Records.Fields.Fields[x].AsVariant := dmLoadEntrySSP.cdsLORows.Fields.Fields[x].AsVariant;
                dmsProduct.mtLO_RecordsMATCH.AsInteger := 0;
                dmsProduct.mtLO_RecordsINCH_THICK.AsFloat := StrToFloatDef(dmLoadEntrySSP.cdsLORowsINCH_THICK.AsString, 0);
                dmsProduct.mtLO_RecordsINCH_WIDTH.AsFloat := StrToFloatDef(dmLoadEntrySSP.cdsLORowsINVCH_WIDTH.AsString, 0);
                dmsProduct.mtLO_RecordsOverrideRL.AsInteger := dmLoadEntrySSP.cdsLORowsOverrideRL.AsInteger;
                dmsProduct.mtLO_RecordsPackage_Size.AsInteger := dmLoadEntrySSP.cdsLORowsPackageSizeNo.AsInteger;
                dmsProduct.mtLO_Records.Post;
              except
                on eDatabaseError do
                  raise;
              end;
              dmLoadEntrySSP.cdsLORows.Next;
            end; //while


            frmPackageEntry := TfrmPackageEntry.Create(Nil);
            try
              if dmLoadEntrySSP.cds_LoadHeadSupplierNo.AsInteger = dmLoadEntrySSP.cds_LoadHeadCustomerNo.AsInteger then
                frmPackageEntry.cbSaveToProdLogg.Checked := True;
              frmPackageEntry.ShowModal;

              if frmPackageEntry.SavePkgs = True then
                acValidateAllPkgsExecute(Sender);

              SaveLoad;

            finally
              dmsProduct.mtpackages.Active := False;
              FreeAndNil(frmPackageEntry); //.Free ;// .FreeANDNIL ;
            end;

          finally
            FreeAndNil(dmsProduct); //.Free ;
          end;

        end
        else
          ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_64' (* 'L?gg till en LO f?rst.' *) ));
      end//if (dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0) and (dmLoadEntrySSP.cds_LoadHeadLIPNo.IsNull = False) then
      else
        ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_65' (* 'V?lj en Lagergrupp f?rst.' *) ));
    end //
    else
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_66' (* 'V?lj lager f?rst.' *) ));

  end
  else
    ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_56' (* 'Spara lasten f?rst.' *) ));

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.acPkgEntryUpdate(Sender: TObject);
begin
 acPkgEntry.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acStreckKodsinlasningExecute(Sender: TObject);
var fScanLoadPkgNo: TfScanLoadPkgNo ;
begin
 fScanLoadPkgNo:= TfScanLoadPkgNo.Create(Nil);
 Try
  fScanLoadPkgNo.EgenPkgSupplierCode  := dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
  fScanLoadPkgNo.cbEgenLevKod.Caption := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_68' (* 'Scanna endast in paket med leverant?rskod ' *) ) + fScanLoadPkgNo.EgenPkgSupplierCode ;
  fScanLoadPkgNo.ShowModal ;
  acValidateAllPkgsExecute(Sender) ;
//  acSaveLoad.Enabled:= True ;
  SaveLoad ;
 Finally
  fScanLoadPkgNo.Free ;
 End ;
end;

procedure TfLoadEntrySSP.acPktNrSerieExecute(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
   if cds_LoadPackages.State <> dsBrowse then
    Try
    cds_LoadPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     End ;
    End ;
  InsertPkgSerie(Sender) ;

  SaveLoad ;
 End ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acPktNrSerie.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acKopplaPaketMotLOManuellt.Enabled:= (cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.acTaBortPaketPerPaketKodExecute(Sender: TObject);
Var x : Integer ;
   Save_Cursor : TCursor;
   fEntryField : TfEntryField ;
begin
 With dmLoadEntrySSP do
 Begin
  x := 0 ;
  fEntryField:= TfEntryField.Create(Nil);
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   Try
   cds_LoadPackages.Filter:= 'packagecodeno = '+QuotedStr(cdsLORowsPKGCODE.AsString) ;
   cds_LoadPackages.Filtered:= True ;
   cds_LoadPackages.Last ;
   While (not cds_LoadPackages.Bof) and (strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > x) do
   begin
    if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
    lbRemovePackageClick(Sender)
    else
    Begin
     lbRemovePackageClick(Sender) ;
     cds_LoadPackages.Prior ;
    End ;
    x:= succ(x) ;
   end ;

   Finally
    cds_LoadPackages.Filtered:= False ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
  End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfLoadEntrySSP.acTaBortPaketPerPaketKodUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acAddPkgByPkgCode.Enabled:= (cds_LoadPackages.RecordCount > 0) and (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.acTextPadExecute(Sender: TObject);
begin
  if not TouchKeyboard1.visible then
    begin
     TouchKeyboard1.visible := True;
     teLoadID.setfocus;
    end
  else
   begin
    TouchKeyboard1.visible := False;
    teLoadID.setfocus;
   end;
end;

procedure TfLoadEntrySSP.acTextPadFSExecute(Sender: TObject);
begin
   if not TouchKeyboard1.visible then
    begin
     TouchKeyboard1.visible := True;
     teFS.setfocus;
    end
   else
   begin
    TouchKeyboard1.visible := False;
    teFS.setfocus;
   end;
end;

procedure TfLoadEntrySSP.acTreatmentCerticateExecute(Sender: TObject);
var
  fr: TFastReports;
  ReportType: integer;
  LONo: integer;
begin
  // Get trp order no
  LONo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
  try
    fr := TFastReports.create;
    fr.TreatmentCert(LONo,'','','');
  finally
    FreeAndNil(fr);
  end;
end;

procedure TfLoadEntrySSP.acStreckKodsinlasningUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acStreckKodsinlasning.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSP.Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, LO_ETT : Integer) ;
Begin
 With dmLoadEntrySSP.cds_LO_LookUp.SQL do
 Begin
  Clear ;
//SALES normal LO
  if Shipping = 0 then
  Begin
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo,') ;
  Add('(Select TOP 1 LIP.LogicalInventoryPointNo FROM dbo.LogicalInventoryPoint LIP') ;
  Add('WHERE LIP.PhysicalInventoryPointNo = PIP.PhysicalInventoryPointNo) AS LIPNo,') ;

  Add('PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;



  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus in (6,9))') ;
//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;



  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType in (0,3)') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

//Add och interna LO
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add(QuotedStr('')+'  AS CUSTOMER,') ;
  Add(QuotedStr('')+'  AS ORDERNO,') ;
  Add(QuotedStr('SALES')+' AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('-1 AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;


  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;
  Add('AND SSP.ObjectType < 2') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End
  else

  if Shipping = 1 then
  Begin
//UNION
//  Add('UNION') ;

  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('1                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 1') ;

  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if AVROP_CUSTOMERNO <> -1 then
  Add('AND CSH.CustomerNo = '+inttostr(AVROP_CUSTOMERNO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End
  else
  if Shipping = -1 then
  Begin
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 0') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

//Add och interna LO
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add(QuotedStr('')+'  AS CUSTOMER,') ;
  Add(QuotedStr('')+'  AS ORDERNO,') ;
  Add(QuotedStr('SALES')+' AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('-1 AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;


  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;
  Add('AND SSP.ObjectType < 2') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('1                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 1') ;

  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if AVROP_CUSTOMERNO <> -1 then
  Add('AND CSH.CustomerNo = '+inttostr(AVROP_CUSTOMERNO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End ;

//  if ThisUser.UserID = 8 then SaveToFile('sq_LO_LookUp.TXT') ;

{
Add('-- AVROP_CUSTOMERNO, ' + inttostr(AVROP_CUSTOMERNO)) ;
Add('-- Shipping, ' + inttostr(Shipping)) ;
Add('-- LO_NO, ' + inttostr(LO_NO)) ;
Add('-- CustomerNo, ' + inttostr(CustomerNo)) ;
Add('-- SupplierNo, ' + inttostr(SupplierNo)) ;
Add('-- ShipToInvPointNo, ' + inttostr(SupplierNo)) ;
Add('-- LoadingLocationNo, ' + inttostr(LoadingLocationNo)) ;
Add('-- LO_ETT ' + inttostr(LO_ETT)) ;
 }

{Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo }
 End ;//with
End ;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
//  AColumn: TcxCustomGridTableItem;
  Match : integer;
  Diff : Double ;
begin



 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').Index] <> null then
  Diff  := ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').Index] ;
  if Diff > 0 then
   AStyle := cxStyleOrange2
    else
     if Diff < 0 then
      AStyle  := cxStyleRed2
       else
        AStyle  := cxStyleGreen2 ;

{ if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] <> null then
 Match:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] ;
 if Match = 1 then
 AStyle := cxStyleclSkyBlue ;
 }
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  PackageOK,
  Pkg_Function,
  OverrideRL : Integer;
begin

   if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('OverrideRL').Index] <> null then
    OverrideRL:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('OverrideRL').Index] ;

    if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] <> null then
    PackageOK:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] ;
    Case PackageOK of
     1,2,3,4,5,6,7,8,9,10,11,12, 21 : AStyle := cxStyleRed ;
     VP_LengthNotInLengthGroup  :
     Begin
      if OverrideRL = 1 then
       AStyle := cxStyleYellow
        else
         AStyle := cxStyleRed ;
     End ;
     REF_MISMATCH : AStyle := cxStyleYellow

 End ;

 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] <> null then
 Pkg_Function:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] ;
 Case Pkg_Function of
   REMOVE_PKG_FROM_LOAD : AStyle := cxStyleBlue ;
   DELETE_PKG           : AStyle := cxStyleAqua ;
 End ;
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
    AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
  else
    AAllow:= True ;
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmLoadEntrySSP do
 Begin
  if Key = VK_DOWN then
  Begin
   if grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused then
   if cds_LoadPackages.State in [dsInsert, dsEdit] then
//   cds_LoadPackages.Post ;
   cds_LoadPackages.Insert ;
  End
   else
    if Key = VK_RETURN then
     if cds_LoadPackages.State in [dsInsert] then ;
 End ;//with
end;

procedure TfLoadEntrySSP.acImportPackagesExecute(Sender: TObject);
//Var DeliveryMessageNumber : String ;
begin
{ XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.tsExport.TabVisible:= False ;
  dmsSystem.ShippingPlanNo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger ;
  XMLImportExport.ShowModal ;
  Application.ProcessMessages ;
  if XMLImportExport.ImportOfPkgsOK then //ShowModal = mrOK then
  Begin
   DeliveryMessageNumber:= dmsSystem.DeliveryMessageNumber ;
   ShowPackages (Sender, DeliveryMessageNumber);
  End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;}
end;

procedure TfLoadEntrySSP.ShowPackages (Sender: TObject;const DeliveryMessageNumber : String);
//var fImportedPackages: TfImportedPackages;
Begin
// LMX1
{
 dmsProduct:= TdmsProduct.Create(Nil);
 Try
 fImportedPackages:= TfImportedPackages.Create(nil);
 try
  fImportedPackages.DeliveryMessageNumber                               := DeliveryMessageNumber ;
  dmsSystem.DeliveryMessageNumber                                  := DeliveryMessageNumber ;
  dm_ImportWoodx.OrderSupplierNo                                        := FOrderClientNo ;
  dmsProduct.SupplierNo                                                 := FOrderClientNo ;
  dmsProduct.SupplierCode                                               := dmsContact.GetClientCode(FOrderClientNo) ;

  dmsProduct.OrderType                                                  := c_Purchase ;


//Lars 2 Aug 2007
  //  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FSupplierNo ;
  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FCustomerNo ;

  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSP.FCustomerNo ;//dmLoadEntrySSP.FSupplierNo ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo                                                := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ;


  dm_ImportWoodx.mtLoadProducts.Active:= True ;
  dmLoadEntrySSP.cdsLORows.First ;
  While not dmLoadEntrySSP.cdsLORows.Eof do
  Begin
   dm_ImportWoodx.mtLoadProducts.Insert ;
   dm_ImportWoodx.mtLoadProductsProductDisplayName.AsString := dmLoadEntrySSP.cdsLORowsPRODUCTDESCRIPTION.AsString ;
   dm_ImportWoodx.mtLoadProductsProductNo.AsInteger         := dmLoadEntrySSP.cdsLORowsPRODUCTNo.AsInteger ;
   dm_ImportWoodx.mtLoadProducts.Post ;
   dmLoadEntrySSP.cdsLORows.Next ;
  End ;

  fImportedPackages.ShowModal ;
  Application.ProcessMessages ;
  if fImportedPackages.SavedImportedPkgsOK then
  Begin
   InsertImportedPkgs(Sender) ;
   SaveLoad ;
  End ;

 finally
  FreeAndNil(fImportedPackages) ;
 end;
 Finally
  FreeAndNil(dmsProduct) ;
 End ;
 }
End ;

{procedure TfLoadEntrySSP.InsertImportedPkgs(Sender: TObject) ;
Var Save_Cursor : TCursor;
begin
 With dmLoadEntrySSP, dm_ImportWoodx do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  Try
  cds_ImpProdMap.DisableControls ;
   Try
    cds_ImpProdMap.First ;
    While not cds_ImpProdMap.Eof do
    Begin
     ScanningEgnaPkgNo(Sender, cds_ImpProdMapIdentifier.AsString, Trim(cds_ImpProdMapClientCode.AsString)) ;
     cds_ImpProdMap.Next ;
    End ;//While

    acValidateAllPkgsExecute(Sender) ;

   Finally
    cds_ImpProdMap.EnableControls ;
   End ;
  Finally
   Screen.Cursor := Save_Cursor;
  End ;
 End ; // with
End ;}

procedure TfLoadEntrySSP.acImportPackagesUpdate(Sender: TObject);
begin
// acImportPackages.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

function TfLoadEntrySSP.AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;

     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger  := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger       := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString          := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger       := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger    := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger:= sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString   := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger     := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat     := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger     := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger       := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger     := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat              := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger           := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger  := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;
      cds_LoadPackagesREFERENCE.AsString           := sq_OnePkgDetailDataREFERENCE.AsString ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//LM    cds_LoadPackages.Post ;
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_10' (* 'Paketnr finns redan i lasten.' *) )) ;
      cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadEntrySSP.ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
var
  Action        : TEditAction;
  Save_Cursor   : TCursor;
  Res_UserName  : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(
     PkgNo,
      PkgSupplierCode,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   AddSelectedPkgDataTo_cds_LoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo_WhenPickPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_28' (* ' finns inte i lager ' *) )
     +Trim(lcPIP.Text)
    +'/'+'') ;//Trim(lcLIP.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_28' (* ' finns inte i lager ' *) )
     +Trim(lcPIP.Text)
    +'/'+'');//Trim(lcLIP.Text)) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_19' (* 'Paketnr ' *) )+IntToStr(PkgNo)+siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_24' (* ' ?r reserverat av ' *) )+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadEntrySSP.validatePkgsReference(Sender: TObject; const PkgNo: Integer;
  const PkgSupplierCode: String3): TEditAction;
var
  pkgREF: string;
  orderREF: string;
  LONumber: integer;
  err: integer;
  msg: string;
begin
  result := eaACCEPT;
{  if noUserReferenceWarning then exit;

  if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    dmLoadEntrySSP.cds_LoadPackages.Edit;

  LONumber := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;
  pkgREF := dmLoadEntrySSP.cds_LoadPackagesREFERENCE.AsString;
  if pkgREF <> '' then begin
    err := 0;
    verifyPackageReference(PkgREF,LONumber, Msg, Err);
    if err <> 0 then
    MessageDlg(Msg,mtWarning,[mbok],0);
      case MessageDlg(Msg,
        mtWarning, mbOKCancel, 0) of
        mrOk:
          begin
            result := eaAccept
          end;
        mrCancel:
          begin
            result := eaUserCancel;
          end;
      end;

  end;
}
end;

function TfLoadEntrySSP.Validate_VE_Pkg(const aPkgNo,
  aArticleNo: integer): integer;
begin
  if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    dmLoadEntrySSP.cds_LoadPackages.Edit;
  result := Validate_VE_Pkg1(aPkgNo, aArticleNo, dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString);
end;

function TfLoadEntrySSP.Validate_VE_Pkg1(const aPkgNo, aArticleNo: integer; const aSupplierCode: string): integer;
var
  defSSPNo: integer;
  LO_Number: integer;
  artikelNr: integer;
  PkgSupplierCode: string3;
  lagerStatus: integer;
  PkgRef: string;
  errMsg                : string;
  errCode               : integer;
  LOString              : string;

begin
  pkgSupplierCode := aSupplierCode;
  with dmLoadEntrySSP do
  begin
    if aArticleNo = -1 then
    begin
      artikelNr := getPkgArticleNo(aPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger, pkgSupplierCode, lagerStatus);
    end
    else
      artikelNr := aArticleNo;

    defSSPNo := dmLoadEntrySSP.TestLOrow(artikelNr);
    LO_Number := cdsLORowsShippingPlanNo.AsInteger;
    if defSSPNo <> -1 then
    begin
      cds_LoadPackagesPackageOK.AsInteger := ALL_OK;
      cds_LoadPackagesProblemPackageLog.AsString := siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_7' (* 'OK' *) );
      cds_LoadPackagesDefsspno.AsInteger := defSSPNo;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
      cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
    end
    else
    begin
      if LO_Number > 0 then
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
      cds_LoadPackagesDefsspno.AsInteger := -1;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
      cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
      if linkedArticle(artikelNr) then
        cds_LoadPackagesProblemPackageLog.AsString := 'L?nkad artikel! Skapa LO-rad f?r denna!'
      else
        cds_LoadPackagesProblemPackageLog.AsString := 'Artikelnummer matchar ej';
    end;
    if defSSPNo <> -1 then begin
      PkgRef := dmLoadEntrySSP.cds_LoadPackagesREFERENCE.AsString;
     errMsg := cds_LoadPackagesProblemPackageLog.AsString;
     errCode := cds_LoadPackagesPackageOK.AsInteger;
      LOString := verifyPackageReference(pkgRef, LO_Number, errMsg, errCode);
     if errCode <> cds_LoadPackagesPackageOK.AsInteger then
     begin
        cds_LoadPackagesPackageOK.AsInteger := errCode;
        cds_LoadPackagesProblemPackageLog.AsString := errMsg;
     end;

    end;

  end;
  result := defSSPNo;
end;

function TfLoadEntrySSP.verifyPackageReference(const aPkgRef: string; const aLO_Number: integer; var aMsg: string; var aErr: integer): string;
var
  sPkgRef: string;
  pkgRef: integer;

  procedure returnError;
  begin
    aErr := REF_MISMATCH;
    aMsg := 'Paketets referens matchar ej orderradens!';
  end;

begin
  sPkgRef := copy(aPkgRef, 1, pos('/', aPkgRef, 2) - 1);
  result := sPkgRef;
  if sPkgRef <> '' then
  begin
    if noUserReferenceWarning then exit;

    if aLO_Number <> 0 then
    try
      pkgRef := strToInt(sPkgRef);
      if pkgRef <> aLO_Number then
        returnError;
    except
      on E: Exception do
        returnError;
    end;
  end;
end;


function TfLoadEntrySSP.AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo,
  SuppShipPlanObjectNo  : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
  errMsg                : string;
  errCode               : integer;
  LOString              : string;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog,
    LO_Number, OverrideRL, ProductNo, ProductLengthNo, NoOfLengths );

    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_6' (* 'L?ngd matchar ej l?ngdgruppen' *) ) ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_7' (* 'OK' *) );
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_8' (* 'BAD_PKG' *) );
                     End ;
{        PKG_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        NO_PRODUCT : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
                     End ; }
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_9' (* 'BAD_LENGTH ' *) );
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadPPP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger        := VP_BadPPP ;
                           cds_LoadPackagesProblemPackageLog.AsString := PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK) or
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
//    and (dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2)) then
//    and (cdsLORowsOverrideRL.AsInteger = 1)) then
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
//    if ValidPackage <> BAD_PKG then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;
//     cds_LoadPackagesOverrideRL.AsInteger                 := cdsLORowsOverrideRL.AsInteger ;

      // Check package reference
     LOString := verifyPackageReference(cds_LoadPackagesREFERENCE.AsString, LO_Number, errMsg, errCode);
     if errCode <> cds_LoadPackagesPackageOK.AsInteger then
     begin
        cds_LoadPackagesPackageOK.AsInteger := errCode;
        cds_LoadPackagesProblemPackageLog.AsString := errMsg;
     end;

    End
    else
    Begin
    if LO_Number > 0 then
     cds_LoadPackagesShippingPlanNo.AsInteger:= LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger                 := 0 ;
    End ;

    Try
//    cds_LoadPackages.Post ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_10' (* 'Paketnr finns redan i lasten.' *) )) ;
     cds_LoadPackages.Cancel ;
     End ;
    End ; //Except
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

function TfLoadEntrySSP.AfterAdded_VE_Pkg(const aPkgNo,
  aArtikelNo: Integer): TEditAction;
begin
  With dmLoadEntrySSP do
  Begin
    cds_LoadPackages.DisableControls;
    Try
      Result := eaACCEPT;
      if cds_LoadPackages.State = dsBrowse then
        cds_LoadPackages.Edit;

      // Default LO number in case there is no match the LoadDetail must get a value
//      dmLoadEntrySSP.cdsLORows.First;
//      LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;

        // LOLine is SuppShipPlanObjectNo
       Validate_VE_Pkg(aPkgNo, aArtikelNo);
    Finally
      cds_LoadPackages.EnableControls;
      if cds_LoadPackages.State = dsEdit then cds_LoadPackages.Post;
    End;
  End;
end;

procedure TfLoadEntrySSP.acCreateInternLOExecute(Sender: TObject);
Var
  LONo: Integer;
begin
  With dmLoadEntrySSP do
  Begin
    if (cds_LSP.Active) and (cds_LSPShippingPlanNo.AsInteger = 1) then
      CreateInternLO
    else
    if (cds_LSP.Active) then
      UpdateInternLO;
    acValidateAllPkgsExecute(Sender);
    acSaveLoadExecute(Sender);
  End;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.UpdateInternLO;
begin
 With dmLoadEntrySSP do
 Begin
//Updatera Intern LO utifr?n valda paket
  UpdateLO(cds_LoadHeadLoadNo.AsInteger) ;

  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   cds_LoadPackages.Edit ;
   cds_LoadPackagesShippingPlanNo.AsInteger:= cds_LSPShippingPlanNo.AsInteger ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

  if cds_LoadPackages.ChangeCount > 0 then
   cds_LoadPackages.ApplyUpdates(0) ;

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;

  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;

  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger   := cds_LoadHeadLoadNo.AsInteger ;
 // cdsLORows.ParamByName('Lagerkod').AsString  := gLagerkod ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString + dmLoadEntrySSP.OriginalFilter(True) ;
  cdsLORows.Filtered  := True ;

 End ;
end;

procedure TfLoadEntrySSP.CreateInternLO ;
Var LONo : Integer ;
begin
 With dmLoadEntrySSP do
 Begin
//Skapa ny Intern LO utifr?n valda paket
//CreateLO(LoadNo, CustomerNo, DefaultShipToInvPointNo, SalesRegionNo, DefaultLIPNo, SupplierNo, Def_LoadingLocationNo  : Integer) : Integer ;
  LONo:= CreateLO(cds_LoadHeadLoadNo.AsInteger,
      cds_LoadHeadCustomerNo.AsInteger, //ThisUser.CompanyNo, //CustomerNo
//      1, //DefaultShipToInvPointNo
      dmsContact.GetSRByCompanyNo(cds_LoadHeadSupplierNo.AsInteger), //dmsContact.GetSRByCompanyNo(ThisUser.CompanyNo), //SalesRegionNo
//      1, //DefaultLIPNo
      cds_LoadHeadSupplierNo.AsInteger) ; //ThisUser.CompanyNo, //SupplierNo
//      1) ; //Def_LoadingLocationNo)  ;

   cds_LSP.Edit ;
   cds_LSPShippingPlanNo.AsInteger:= LONo ;
   cds_LSP.Post ;
   if cds_LSP.ChangeCount > 0 then
   cds_LSP.ApplyUpdates(0) ;

//AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);
//  AddLONumberOnOpenTheForm(LONo, 741, 741, 1, 1);
//  if cds_LSP.ChangeCount > 0 then
//   cds_LSP.ApplyUpdates(0) ;

  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   cds_LoadPackages.Edit ;
   cds_LoadPackagesShippingPlanNo.AsInteger:= cds_LSPShippingPlanNo.AsInteger ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

  if cds_LoadPackages.ChangeCount > 0 then
   cds_LoadPackages.ApplyUpdates(0) ;

  OpenInternLO(LONo) ;

  UpdateLSP(LONo) ;

  UpdateLoad(cds_LoadHeadLoadNo.AsInteger) ;

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;


  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;


  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger   := cds_LoadHeadLoadNo.AsInteger ;
 // cdsLORows.ParamByName('Lagerkod').AsString  := gLagerkod ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString + dmLoadEntrySSP.OriginalFilter(True) ;
  cdsLORows.Filtered  := True ;
//Set
 End ;
end;

procedure TfLoadEntrySSP.OpenInternLO(const LO : Integer) ;
begin
{LMX1    fLOform := TfLOform.Create(Nil) ;
    Try
    dmcLO.cds_IntHdr.Active:= False ;
    dmcLO.sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    dmcLO.cds_IntHdr.Active:= True ;

    dmcLO.cds_LO.Active:= False ;
    dmcLO.cds_LO.Active:= True ;
    fLOform.ShowModal ;
   Finally
    FreeAndNil(fLOform) ;
   End ;
   }
end;

function TfLoadEntrySSP.PackSavedFormSettings(const aList: TList<integer>): string;
var
  s: string;
  i: integer;
begin
  for i := 0 to aList.Count-1 do
  begin
    s := s + '|' + intToStr(aList[i]) + '| ';
  end;
  result := s;
end;

procedure TfLoadEntrySSP.PanelPackagesResize(Sender: TObject);
begin
// if PanelPackages then


end;

procedure TfLoadEntrySSP.pmPkgsPopup(Sender: TObject);
begin
 bePkgFont.EditValue   := cxStyleContent.Font.Size ;
 //dxBarSpinEditContent.Value         := dxBarSpinEditContent.IntCurValue ;
end;

procedure TfLoadEntrySSP.ppmenuLO_LinesPopup(Sender: TObject);
begin
 dxBarSpinEditContent.IntCurValue   := cxStyleOrange2.Font.Size ;
 dxBarSpinEditContent.Value         := dxBarSpinEditContent.IntCurValue ;
end;

procedure TfLoadEntrySSP.acCreateInternLOUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acCreateInternLO.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and (cds_LSPObjectType.AsInteger = 0)
  and ((cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount > 0)) ;
 End ;
end;

//todo
//Anv?nd l?ngder fr?n LO lengths f?r att validera
procedure TfLoadEntrySSP.acOpenLOFormExecute(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  OpenInternLO(cds_LSPShippingPlanNo.AsInteger) ;

  UpdateLSP(cds_LSPShippingPlanNo.AsInteger) ;

  UpdateLoad(cds_LoadHeadLoadNo.AsInteger) ;

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;


  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;


  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger   := cds_LoadHeadLoadNo.AsInteger ;
//  cdsLORows.ParamByName('Lagerkod').AsString  := gLagerkod ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString + dmLoadEntrySSP.OriginalFilter(True) ;
  cdsLORows.Filtered  := True ;

  acSaveLoadExecute(Sender) ;
 End ;//with
end;

procedure TfLoadEntrySSP.acOpenLOFormUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acOpenLOForm.Enabled:= (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and (cds_LSPOBJECTTYPE.AsInteger = 0)
  and (cds_LSPShippingPlanNo.AsInteger > 1) and (DataSaved) ;
 End ;
end;

procedure TfLoadEntrySSP.acChgRef_and_InfoExecute(Sender: TObject);
Var
  REFERENCE,
  cur_REFERENCE,
  INFO1,
  cur_INFO1,
  INFO2,
  cur_INFO2   : String ;
  PkgNo: integer;
  SupplierCode: String;
  Save_Cursor   : TCursor ;
  PositionID    : Integer ;
Begin
  With dmLoadEntrySSP do
  Begin
    if TdlgChgRef_and_Info.Execute(REFERENCE, INFO1, INFO2) = mrOK then
    Try
	    mtLoadPackages.Active := True ;
	    GetMarkedPkgs ;
	    cds_LoadPackages.DisableControls ;
      try
        ds_LoadPackages2.OnDataChange:= NIL ;
        if mtLoadPackages.Eof then exit;
		    mtLoadPackages.First ;
		    While not mtLoadPackages.Eof do
		    Begin
		      if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
		      Begin
			      PkgNo := cds_LoadPackagesPACKAGENO.AsInteger;
			      SupplierCode := cds_LoadPackagesSupplierCode.AsString;
            dmInventory.GetCurrentTreatmInfo(PkgNo, SupplierCode,
                cur_REFERENCE, cur_INFO1, cur_INFO2);
            if REFERENCE = '' then REFERENCE := cur_REFERENCE;
            if     INFO1 = '' then INFO1     := cur_INFO1;
            if     INFO2 = '' then INFO2     := cur_INFO2;
            dmInventory.CngRefAndInfo(PkgNo, REFERENCE, INFO1, INFO2, SupplierCode);
		      end ;
		      mtLoadPackages.Next;
        End;
		    cds_LoadPackages.Refresh;
      Finally
        ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
      End;
    finally
      mtLoadPackages.Active:= False ;
		  cds_LoadPackages.EnableControls ;
	  end;
  End;
end;

procedure TfLoadEntrySSP.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

function TfLoadEntrySSP.DiffOK : Boolean ;
Begin
 with dmLoadEntrySSP do
 Begin
  if cds_LoadHeadShowOriginalLO.AsInteger <> 1 then
  Begin
    Result := True ;
    cdsLORows.First ;
    while not cdsLORows.Eof do
    Begin
      if cdsLORowsPkgDiff.AsInteger <> 0 then
      Begin
       ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_81' (* 'Varning! Utlastade paket st?mmer inte ?verens med antal paket p? order' *) )) ;
      // Result := False ;
       Exit ;
      End;
     cdsLORows.Next ;
    End;
  End
   else
    Result := True ;
 End;
End;

procedure TfLoadEntrySSP.acSaveAndOKExecute(Sender: TObject);
var
  Prepaid, DagensDag, UtlastningsDatum: Integer;
  var path : string ;
begin
  with dmLoadEntrySSP do
  begin
   if CheckPkgsLoaded then
   Begin
     if ErrorPkgExist(cds_LoadHeadLoadNo.AsInteger) then
     Begin
      acShowPkgLoggExecute(Sender) ;
     End;


    DagensDag := DayOfTheMonth(Date);
    UtlastningsDatum := DayOfTheMonth(cds_LoadHeadLoadedDate.AsDateTime);

    if DiffOK then
    begin
      if VidaEnergi then cxbtnCreatePalletPkgClick(nil);
      if DagensDag <> UtlastningsDatum then
      begin
        if MessageDlg(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_82' (* 'Vill du ?ndra till dagens datum?' *) ), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if cds_LoadHead.State in [dsBrowse] then
            cds_LoadHead.Edit;
          cds_LoadHeadSenderLoadStatus.AsInteger := 2; //OK
          cds_LoadHeadLoadedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
          cds_LoadHead.Post;
        end
        else
        begin
          if cds_LoadHead.State in [dsBrowse] then
            cds_LoadHead.Edit;
          cds_LoadHeadSenderLoadStatus.AsInteger := 2; //OK
          cds_LoadHead.Post;
        end;
      end
      else
      begin
        if cds_LoadHead.State in [dsBrowse] then
          cds_LoadHead.Edit;
        cds_LoadHeadSenderLoadStatus.AsInteger := 2; //OK
        cds_LoadHead.Post;
      end;

     Prepaid := IsLoadPrepaid_Terms(cds_LoadHeadLoadNo.AsInteger) ;
     if Prepaid = 3 then
     Begin
       TfOKDia.Execute('Notering, Lasten f?r inte lastas ut f?rr?n fakturan ?r betald. Status kan inte s?ttas till Avslutad f?rr?n fakturan ?r betald.') ;
      if cds_LoadHead.State in [dsBrowse] then
        cds_LoadHead.Edit;
      cds_LoadHeadSenderLoadStatus.AsInteger := LoadPrepaid; //LoadPrepaid = 3
      cds_LoadHead.Post;
     End
     else
     if Prepaid = 4 then
     Begin

      tfOKDia.Execute('Notering, Lasten ?r f?rskottsbetald och kan lastas ut.') ;



      if cds_LoadHead.State in [dsBrowse] then
        cds_LoadHead.Edit;
      cds_LoadHeadSenderLoadStatus.AsInteger := 2; //OK
      cds_LoadHead.Post;
      SetCallOffLoadStatus(cds_LoadHeadLoadNo.AsInteger) ;
     End;

      SaveLoad;
      SetLoadEnabled;
    if cds_LoadHeadSenderLoadStatus.AsInteger = 2 then
    Begin
      Path := dmsSystem.GetFtpTarget(cdsLORowsShipToInvPointNo.AsInteger, cds_LoadHeadLoadNo.AsInteger) ;
      if (Path <> '0') and (Path <> 'x') then
      Begin
        dmsSystem.ExportTallyWoodx
      (Sender, cdsLORowsCustomerNo.AsInteger,
      cdsLORowsShippingPlanNo.AsInteger,
      cds_LoadHeadLoadNo.AsInteger,
      cds_LoadHeadLoadNo.AsString,
      Path) ;
      End;
    End;
    end;

   End
    else
      ShowMessage('Cannot set load to complete because no of pkgs loaded does not match no of pkgs on order. (this is a prepay load and must be loaded exactly as ordered)') ;
  end; //With
end;

procedure TfLoadEntrySSP.acSaveAndOKUpdate(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
  acSaveAndOK.Enabled:= //(not DataSaved) and (LoadEnabled) and
  (cds_LoadHeadSenderLoadStatus.AsInteger <> 2) ;
 End ;
end;

procedure TfLoadEntrySSP.acPrintMenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200) ;
end;

procedure TfLoadEntrySSP.acPrintFSMisMatchExecute(Sender: TObject);
Var
  LoadNo        : integer;
  FR2           : TFastReports2;
  lang          : integer;
  salesRegion   : TCompanyNo;

begin
  dmsConnector.SaveandSetCursor(crSQLWait);
  try
    LoadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
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

procedure TfLoadEntrySSP.acDeleteNotCompletePkgsExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  With dmLoadEntrySSP do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;

  cds_LoadPackages.DisableControls ;
  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    if cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
     cds_LoadPackages.Delete
     else
     Begin
      if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Edit ;
      cds_LoadPackagesPkg_Function.AsInteger := TA_BORT_EJ_COMPLETE_PKG_FROM_LOAD ;
      cds_LoadPackagesChanged.AsInteger      := 1 ;
      cds_LoadPackages.Post ;
     End ;
   End ;
   mtLoadPackages.Next ;
  End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadEntrySSP.acMailaFSExecute(Sender: TObject);
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
{TSI:IGNORE ON}
  dmFR.SaveAndSetCursor(crHourGlass);
  try
    loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    if loadNo < 1 then
      exit;
    lang := dmsContact.getCustomerLanguage(dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger);

    if (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger > 0) and (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.IsNull = False) then
      MailToAddress := dmsContact.GetEmailAddress(dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger)
    else
      MailToAddress := dmsContact.GetEmailAddress(dmLoadEntrySSP.cds_LSPCustomerNo.AsInteger);
    if Length(MailToAddress) = 0 then
    begin
      MailToAddress := 'ange@adress.nu';
      ShowMessage('Email address is missing, please enter the address direct in the mail(outlook)');
    end;
    SalesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    if Length(MailToAddress) > 0 then
    begin
      MailFrom := ThisUser.UserEmail;
      loads := TList<integer>.create;
      try
        loads.add(loadNo);

      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger in [0, 1] then
        ReportType := cfTallyInternal
      else
        ReportType := cfTally;

        if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger = 2 then
        begin
          FR2 := TFastReports2.createForMail(dmFR, nil, ExcelDir, MailFrom, MailToAddress, lang, SalesRegion, ThisUser.UserID);
          try
            FR2.mailTallyByType(ReportType, loads, true);
          finally
            FR2.free;
          end;
        end
        else
          showMessage(format('Wrong objecttype: %d', [dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger]));
      finally
        loads.free;
      end;
    end;
  finally
    dmFR.RestoreCursor;
  end;
{TSI:IGNORE OFF}
end;

procedure TfLoadEntrySSP.acMailTreatmentCertificateExecute(Sender: TObject);
var
  fr: TFastReports;
  ReportType: integer;
  LONo: integer;
  MailToAddress: string;
begin
  // Get load order no
  LONo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
  // Get maildresses
  if (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger > 0) and
      (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.IsNull = False) then
    MailToAddress := dmsContact.GetEmailAddress
      (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger)
  else
    MailToAddress := dmsContact.GetEmailAddress
      (dmLoadEntrySSP.cds_LSPCustomerNo.AsInteger);
  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas f?r klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then
  try
    fr := TFastReports.create;
    fr.TreatmentCert(LONo,MailToAddress,'','');
  finally
    FreeAndNil(fr);
  end;
end;

procedure TfLoadEntrySSP.acNumPadExecute(Sender: TObject);
begin
  if not TouchKeyboard2.Visible then
  begin
    TouchKeyboard2.visible := True;
    end
   else
   begin
    TouchKeyboard2.visible := False;
   end;
   mePackageNo.Enabled := True;
   mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.acSetStatusPrelandSaveExecute(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
  if not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) then
  Begin
   if cds_LoadPackages.UpdateOptions.ReadOnly then
    cds_LoadPackages.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.UpdateOptions.ReadOnly then
    cds_LoadHead.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ; //Prel
   cds_LoadHead.Post ;
   SaveLoad ;
   SetLoadEnabled ;

   if mePackageNo.Enabled then
    mePackageNo.SetFocus ;

  End
   else
    Begin
     ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_85' (* 'Lasten kan inte s?ttas till prelimin?r f?r att den ?r ankomstregistrerad.' *) ));
     SetLoadEnabled ;
    End ;
 End ;
end;

procedure TfLoadEntrySSP.acSetStatusPrelandSaveUpdate(Sender: TObject);
begin
 with dmLoadEntrySSP do
 Begin
//  acSetStatusPrelandSave.Enabled := not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;
 End ;
end;

procedure TfLoadEntrySSP.acGetVPPackagesExecute(Sender: TObject);
var fPickVPPkgs: TfPickVPPkgs;
begin
 if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_56' (* 'Spara lasten f?rst.' *) )) ;
  Exit ;
 End ;

 With dmLoadEntrySSP do
 Begin
  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  Try
   cds_LoadPackages.Post ;
  Except
   cds_LoadPackages.Cancel ;
  End ;

  fPickVPPkgs:= TfPickVPPkgs.Create(Nil);
  Try
   fPickVPPkgs.VerkNo                  := cds_LoadHeadSupplierNo.AsInteger ;
   fPickVPPkgs.LONo                    := cdsLORowsShippingPlanNo.AsInteger ;
   fPickVPPkgs.LabelLONr.Caption       := cdsLORowsShippingPlanNo.AsString ;
   if fPickVPPkgs.ShowModal = mrOK then
    Begin
     Application.ProcessMessages ;
     InsertSelectedPkgNos(Sender) ;
     acSaveLoadExecute(Sender) ;
    End ;
  Finally
   FreeAndNil(fPickVPPkgs) ;//.Free ;
  End ;
 End ; //with

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;


procedure TfLoadEntrySSP.acGetVPPackagesUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acGetVPPackages.Enabled  := (cds_LSP.Active) and (cds_LSPAvrop_CustomerNo.AsInteger = 1879)
  and (cds_LoadHead.Active) and (cds_LoadHead.RecordCount > 0)
  and (cds_LoadHeadSupplierNo.AsInteger = 25) ;
 End ;//With
end;

procedure TfLoadEntrySSP.GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
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
  PkgREF            : string ;
  ErrorText         : String ;
  NumberPrefix      : String ;
  MsgInfo           : String ;
  artikelNr: integer;
  lagerStatus: integer; // 1: Aktiv i lager 0: Ej aktiv i lager

  function handleAcceptOf_VE_packages: TEditAction;
  begin
 //check that package is available in inventory and Get supplier code
    artikelNr := getPkgArticleNo(NewPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger, PkgSupplierCode, lagerStatus);

    if artikelNr <> -1 then
    begin
      if lagerStatus = 1 then
      begin
        Action := eaACCEPT;
      end
      else
      try
        NewPkgNo := GetLikVardigtPaket(artikelNr, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode);
        Action := eaACCEPT;
      except
        on E: Exception do
        begin
//          ShowMessage(E.Message);
          Action := eaREJECT;
        end;
      end;
    end
    else
      Action := eaREJECT;

    if Action = eaACCEPT then
    try
          // Inaktivera detta paket
      dmLoadEntrySSP.inactivatePackage(NewPkgNo, PkgSupplierCode);
    except
      on E: Exception do
      begin
//          ShowMessage(E.Message);
        Action := eaREJECT;
      end;
    end;
    result := Action;
  end;

begin
 //GetpackageNoEntered
  PkgSupplierCode := '';
 With dmLoadEntrySSP do
 Begin
  NewPkgNo := 0 ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    try
      { Do some lengthy operation }
      if Length(Trim(PackageNo)) > 0 then
      Begin
        if Length(Trim(PackageNo)) > 10 then
        Begin // L?NGA KODEN
          Try
            Action := eaACCEPT;
            dmsSystem.ParsePkgID(PackageNo, NewPkgNo, PkgSupplierCode,
              NumberPrefix);
            // NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
          Except
            on E: EConvertError do
              ShowMessage(E.ClassName + E.Message);
          End;
          if NewPkgNo < 1 then
          Begin
            Action := eaREJECT;
            Errortext := 'Reject l?ng kod. NewPkgNo < 1';
            Error := True;
          End ;

          if Length(PkgSupplierCode) < 1 then
          Begin
            Action := eaREJECT;
            Errortext := 'Reject l?ng kod. Length(PkgSupplierCode) < 1' ;
            Error := True;
          End ;

          // PktNrLevKod      := Copy(PackageNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
          // PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;

          if Action = eaACCEPT then
          Begin
            if VidaEnergi then
              Action := handleAcceptOf_VE_Packages
            else
            Begin
              if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo,
                dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode)
              then
                Action := eaACCEPT
              else
               Begin
                Action := eaREJECT;
                Errortext := 'Reject l?ng kod.';
                Error := True;
               End ;
            End;

          End;

        End
        else // Length < 11
        Begin
          NewPkgNo := StrToIntDef(PackageNo, 0);
          if NewPkgNo = 0 then
          Begin
            Errortext := 'Reject kort kod. NewPkgNo = 0' ;
            Error := True;
            Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault
              ('IDS_33' (* 'Koden kunde inte ?vers?ttas till ett Paketnr' *) );
            exit;
          End;

          if VidaEnergi then
            Action := handleAcceptOf_VE_packages
          else
            Action := IdentifyPackageSupplier(
              NewPkgNo,
              dmLoadEntrySSP.FSupplierNo,
              PkgSupplierCode,
              PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo,
              NoOfLengths);
        End;
      End; // if StrToInt(Trim(PackageNo)) > 0 then

      if (NewPkgNo > 0) and (Length(PkgSupplierCode) > 0) then
      Begin

        if cds_LoadPackages.FindKey([NewPkgNo, Trim(PkgSuppliercode)]) then
        Begin
            Action := eaAlreadyExistInLoad ;
            Errortext := 'Packageno ' + IntToStr(NewPkgNo) + ' prefix:' +
              PkgSupplierCode + ' already exist in the load ';
            Error := True;
        End ;

        // F?r inte anv?nda post sj?lv, det g?r rutinen automatiskt
        if Action = eaACCEPT then
        Begin
          if VidaEnergi then
          else
          begin
            MsgInfo := dmLoadEntrySSP.CtrlCorrectMainLO
              (cds_LSPShippingPlanNo.AsInteger, NewPkgNo, PkgSupplierCode);
            if MsgInfo <> 'Match' then
            Begin
              if MessageDlg(MsgInfo, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              Begin
                Action := eaREJECT;
                Errortext := 'Paketnr ' + IntToStr(NewPkgNo) + ' prefix:' +
                  PkgSupplierCode + ' var mot fel huvud LO ';
                Error := True;
              End;
            end;
          End;

          if Action = eaACCEPT then
          Begin
            AddPkgTo_cds_LoadPackages(Sender, NewPkgNo, PkgSupplierCode);
            if VidaEnergi then
            begin
              if AfterAdded_VE_Pkg(NewPkgNo, artikelNr) <> eaACCEPT then
              begin
                Errortext := 'Paketnr ' + IntToStr(NewPkgNo) + ' prefix:' +
                PkgSupplierCode + ' does not exist in inventory ' +
                Trim(lcPIP.Text);
                Error := True;
              end
            end
            // L?ngsamt h?r
            else if AfterAddedPkgNo(Sender, NewPkgNo, PkgSupplierCode, ProductNo,
              ProductLengthNo, NoOfLengths) <> eaACCEPT then
            Begin
              Errortext := 'Paketnr ' + IntToStr(NewPkgNo) + ' prefix:' +
                PkgSupplierCode + ' does not exist in inventory ' +
                Trim(lcPIP.Text);
              Error := True;
            End
            else
            Begin
              Error := False;
            End;
            if validatePkgsReference(Sender, NewPkgNo, PkgSupplierCode) <> eaAccept then
            begin
              pkgREF := dmLoadEntrySSP.cds_LoadPackagesREFERENCE.AsString;
              Errortext := 'Paketnr ' + IntToStr(NewPkgNo) + ' referens' +
                PkgREF + ' does not match order reference! ' +
                Trim(lcPIP.Text);
              Error := True;
            end;
          End;
        End
        else if Action = eaREJECT then
        Begin
          Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_28' (* ' finns inte i lager ' *) ) + Trim(lcPIP.Text);
          Error := True;
        End
        else if Action = eaReserved then
        Begin
          Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_24' (* ' ?r reserverat av ' *) ) + Res_UserName;
          Error := True;
        End
        else if Action = eaDuplicate then
        Begin
          Errortext := siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_19' (* 'Paketnr ' *) ) + IntToStr(NewPkgNo) +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_89' (* ' prefix:' *) ) + PkgSupplierCode +
            siLangLinked_fLoadEntrySSP.GetTextOrDefault
            ('IDS_99' (* ' ?r redan inmatat' *) );
          Error := True;
        End
        else if Action = eaAlreadyExistInLoad then
        Begin
          Error := True;
        End;

      End
      else
      Begin
        Errortext := 'Paketnr saknas.';
        Error := True;
      End;

        //ShowPkgInfo(NewPkgNo, PkgSupplierCode, Errortext);
    finally
      if Error then
      AddLoadPkgErrorLog(cds_LoadHeadLoadNo.AsInteger, NewPkgNo, PkgSupplierCode, Errortext) ;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End; // With
end;

procedure TfLoadEntrySSP.mePackageNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with dmLoadEntrySSP do
  begin
    if Key <> VK_RETURN then
      Exit;

    if cdsLORows.RecordCount > 0 then
    try
      if Length(mePackageNo.Text) > 0 then
      begin
        if VidaEnergi and (cxbtnScanArticle.OptionsImage.ImageIndex = 1) then
        begin
          mePackageNo.Enabled := false;
          ScanPkgsByArticle(Sender, mePackageNo.Text);
        end
        else if pos('/8004/',mePackageNo.Text) > 0 then
          scanLoadID(mePackageNo.Text, cds_LoadHeadLoadID.AsString, cds_LoadHeadLoadNo.AsInteger, cds_LoadHeadShippingPlanNo.AsInteger)
        else
         GetpackageNoEntered(Sender, mePackageNo.Text);
      end;
    finally
      mePackageNo.Text := '';
      SaveLoad;
      mePackageNo.Enabled := true;
      Timer1.Enabled := True;
    end
    else
      ShowMessage('Inga LO rader synliga att koppla paket mot, kontrollera att "Visa 0-LO rader" ?r i bockad.');
  end;
end;

function TfLoadEntrySSP.noUserReferenceWarning: boolean;
begin
  result := dmLoadEntrySSP.noWarningForRefMismatch;
end;

procedure TfLoadEntrySSP.Timer1Timer(Sender: TObject);
begin
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
 Timer1.Enabled:= False ;
end;

procedure TfLoadEntrySSP.Timer2Timer(Sender: TObject);
begin
   FrmMain.Width  := FrmMain.Width - 50 ;
   Timer2.Enabled := False;
end;

function TfLoadEntrySSP.unPackRestoredFormSettings(const aPack: string): TStringList;
var
  s: string;
  sl: TStringList;
begin
  sl := TStringList.Create;
  sl.Delimiter := ' ';
  sl.QuoteChar := '|';
  sl.DelimitedText := aPack;
  result := sl;
end;

procedure TfLoadEntrySSP.ExternSaveLoad ;
var
  Save_Cursor   : TCursor;
  LastInvNr     : Integer ;
  InvDate       : TDateTime ;
  MaxDateMsg    : String ;
Begin
 With dmLoadEntrySSP do
 Begin
  if (cds_LoadHead.Active) and (not cds_LoadHead.UpdateOptions.ReadOnly) then
  Begin
  if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now then
  Begin



   if cds_LoadHead.State in [dsEdit, dsInsert] then
   cds_LoadHead.Post ;
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;

   cds_LoadPackages.DisableControls ;
   cds_LSP.DisableControls ;
   cdsLORows.DisableControls ;
   cds_LoadHead.DisableControls ;
//   ValidateAllPkgs ;
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;
   try
    if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
     SaveLOData(cds_LoadHeadLoadNo.AsInteger) ;
//     else
//      ShowMessage('L?gg till minst en LO.') ;
//    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
//    Begin
//     ShowMessage('Alla paket matchar inte, status kan inte s?ttas till OK.') ;
//    End
//    else
//    if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (cds_LoadPackages.RecordCount > 0) then
//    Refresh_PkgList(cds_LoadHeadLoadNo.AsInteger) ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
    cdsLORows.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;
   end;



  End //if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
   else
    ShowMessage(siLangLinked_fLoadEntrySSP.GetTextOrDefault('IDS_59' (* 'Utlastningsdatum f?r inte vara st?rre ?n aktuellt datum&tid, var v?nlig justera.' *) )) ;


  if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate) then
  Begin
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ;
   cds_LoadHead.Post ;
   if cds_LoadHead.ChangeCount > 0 then
   Begin
    cds_LoadHead.ApplyUpdates(0) ;
    cds_LoadHead.CommitUpdates ;
   End ;

   ShowMessage('Lasten kan inte s?tta Status till OK pga att utlastningsdatum ?r f?re inventerings eller maxdatum i en inventering d?r lagergruppen ing?r') ;
  End ;

  End ;//if not cds_LoadHead.UpdateOptions.ReadOnly then
 End ;//With
end;

procedure TfLoadEntrySSP.acShowLoadHeaderExecute(Sender: TObject);
begin
 if dxPageControl1.Visible then
 Begin
  dxPageControl1.Visible  := False ;
  if mePackageNo.Enabled then
   mePackageNo.SetFocus ;
 End
   else
    dxPageControl1.Visible  := True ;
end;

procedure TfLoadEntrySSP.acShowPkgLoggExecute(Sender: TObject);
Var fAddErrorPkgLoad  : TfAddErrorPkgLoad ;
begin
 //if not Assigned(fAddErrorPkgLoad) then
  fAddErrorPkgLoad:= TfAddErrorPkgLoad.Create(nil);
  Try
  fAddErrorPkgLoad.ShowModal ;

  Finally
   FreeAndNil(fAddErrorPkgLoad) ;
  End;
end;

Procedure TfLoadEntrySSP.RefreshLoadDetails ;
  Begin
    // dmLoadEntrySSP.GlobalLoadDetailNo :=  1 + dmLoadEntrySSP.GetMaxLoadDetailNoMaxLoadDetailNo(LoadNo) ;

    With dmLoadEntrySSP do
    Begin
      cds_LoadPackages.DisableControls;
      Try
        cds_LoadPackages.Active := False;
        cds_LoadPackages.ParamByName('LoadNo').AsInteger      := cds_LoadHeadLoadNo.AsInteger ;
//        cds_LoadPackages.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
        cds_LoadPackages.Active := True;
      Finally
        cds_LoadPackages.EnableControls;
      End;
    End;
  End;


procedure TfLoadEntrySSP.acRaderaPaketExecute(Sender: TObject);
begin
 acInsertPkgToInventoryExecute(Sender) ;
 RefreshLoadDetails ;
 SaveLoad ;
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.acRaderaPaketUpdate(Sender: TObject);
begin
 acRaderaPaket.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.FormShow(Sender: TObject);
begin
 dmLoadEntrySSP.LoadUserProps(Self.Name) ;

  if (not dmLoadEntrySSP.cds_PropsLengthGroupNo.IsNull) and (dmLoadEntrySSP.cds_PropsLengthGroupNo.AsInteger > 6) then
  Begin
   cxStyleOrange2.Font.Size   := dmLoadEntrySSP.cds_PropsLengthGroupNo.AsInteger ;
   cxStyleRed2.Font.Size      := dmLoadEntrySSP.cds_PropsLengthGroupNo.AsInteger ;
   cxStyleGreen2.Font.Size    := dmLoadEntrySSP.cds_PropsLengthGroupNo.AsInteger ;


    cxStyleYellow.Font.Size  := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;
    cxStyleRed.Font.Size     := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;
    cxStyleBlue.Font.Size    := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;
    cxStyleAqua.Font.Size    := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;
    cxStyleContentOdd.Font.Size    := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;
    cxStyleContent.Font.Size    := dmLoadEntrySSP.cds_PropsLengthOption.AsInteger ;

 //  cxStyleContentOdd.Font.Size  := dmcOrder.cds_PropsLengthGroupNo.AsInteger ;
  End ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;

  cxbtnScanArticle.OptionsImage.ImageIndex := -1;
  if VidaEnergi then begin
    cxbtnScanArticle.Visible := true;
    cxbtnScanArticle.enabled := true;
    acRegBulkDelivery.Visible := true;
    acRegBulkDelivery.enabled := true;
    cxbtnCreatePalletPkg.Visible := true;
    cxbtnCreatePalletPkg.Enabled := true;
  end
  else begin
    cxbtnScanArticle.Visible := False;
    cxbtnScanArticle.enabled := false;
    acRegBulkDelivery.Visible := False;
    acRegBulkDelivery.Enabled := false;
    cxbtnCreatePalletPkg.Visible := false;
    cxbtnCreatePalletPkg.Enabled := false;
  end;
  FrmMain.Width  := FrmMain.Width - 1 ;
end;

procedure TfLoadEntrySSP.PrintDirectCMR(Sender: TObject);
var // FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
  aLO: integer;
  fr: TFastReports;
  NoOfCopies: integer;
begin
  NoOfCopies := dmcOrder.cds_PropsCopyPcs.AsInteger;
  if uReportController.useFR then
  begin
    aLO := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    try
      fr := TFastReports.createForPrint(false);
      fr.CMR(aLO, NoOfCopies);
    finally
      FreeAndNil(fr);
    end;
  end
  else
  begin
        {
      if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
            Exit;
          FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
          Try
            // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

            SetLength(A, 1);
            A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
            FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger, False,
              False, A, 'CMR.RPT');
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

procedure TfLoadEntrySSP.PreviewCMR(Sender: TObject);
Var
  aLO : Integer;
  fr  : TFastReports;
begin
//  Edit1.SetFocus ;
 if uReportController.useFR then
  begin
    aLO := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    try
    fr := TFastReports.create;
    fr.CMR(aLO);
    finally
      FreeAndNil(fr);
    end;
  end ;
end;

procedure TfLoadEntrySSP.acPrintCMRExecute(Sender: TObject);
var
  fEnterLoadWeight: TfEnterLoadWeight;
begin
  // Set KG
  fEnterLoadWeight := TfEnterLoadWeight.Create(nil) ;
 Try
  dmsSystem.GenerateLoadWeight(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
  dmsSystem.Open_cds_LoadWeigth(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
  fEnterLoadWeight.ShowModal ;
  PRE_PreviewCMR(Sender) ;

 Finally
  dmsSystem.Close_cds_LoadWeigth ;
  FreeAndNil(fEnterLoadWeight) ;
 End ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;


procedure TfLoadEntrySSP.PRE_PreviewCMR(Sender: TObject) ;
Var Val     : Integer ;
    Avsluta : Boolean ;
begin
 Avsluta := False ;
 Val := TfSelectPrintDevice.Execute ;
 if Val > 0 then
 Begin
  if Val = 2 then
   PreviewCMR(Sender)
    else
     if Val = 1 then
      PrintDirectCMR(Sender) ;
 End ;
End ;

procedure TfLoadEntrySSP.acPrintFSandCMRExecute(Sender: TObject);
begin
 PrintDirectFS(Sender) ;
 EnterLoadWeight(Sender) ;
 PrintDirectCMR(Sender) ;

 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.EnterLoadWeight(Sender: TObject);
var fEnterLoadWeight: TfEnterLoadWeight;
begin
 //Set KG
 fEnterLoadWeight := TfEnterLoadWeight.Create(nil) ;
 Try
  dmsSystem.GenerateLoadWeight(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
  dmsSystem.Open_cds_LoadWeigth(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
  fEnterLoadWeight.ShowModal ;
 Finally
  dmsSystem.Close_cds_LoadWeigth ;
  FreeAndNil(fEnterLoadWeight) ;
 End ;
end;

procedure TfLoadEntrySSP.FormKeyPress(Sender: TObject; var Key: Char);
begin
{
 if LoadEnabled then
 Begin
  if (Key = #13) and (Length(mePackageNo.Text) > 0) then
  Begin
   Try
//    ScanningPkgNo(Sender, mePackageNo.Text) ;
    GetpackageNoEntered(Sender, mePackageNo.Text) ;
    SaveLoad ;
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
 }
end;

procedure TfLoadEntrySSP.FormActivate(Sender: TObject);
begin
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 if mePackageNo.Enabled then
  mePackageNo.SetFocus ;
end;

function TfLoadEntrySSP.GetPositionID : Integer ;
var
  fLagerPos: TfLagerPos;
  PIPNo : Integer ;
begin
 With dmLoadEntrySSP, dmsSystem do
 Begin
//  PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsLoadingLocationNo.AsInteger) ;
  PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_LoadHeadSupplierNo.AsInteger, cdsLORowsLoadingLocationNo.AsInteger) ;
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


{ TMovablePanels }

procedure TMovablePanels.restore(var aAddrPnlHeight, aLoPnlHeight,
  aPgCtrlHeight: integer);
begin
  aAddrPnlHeight := FAddressPanelHeight;
  aLoPnlHeight := FLOPanelHeight;
  aPgCtrlHeight := FPageCtrlHeight;
end;

constructor TMovablePanels.Save(const aAddrPnlHeight, aLoPnlHeight,
  aPgCtrlHeight: integer);
begin
  inherited create;
  FAddressPanelHeight := aAddrPnlHeight;
  FLOPanelHeight := aLoPnlHeight;
  FPageCtrlHeight := aPgCtrlHeight;
end;

end.
