unit UnitLoadArrivals;

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
  FMTBcd, cxDBEdit, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLookAndFeelPainters, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, siComp, siLngLnk,
  System.Actions, VidaType, dximctrl, Vcl.ComCtrls, FMX.ListView,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, cxListView, System.Generics.Collections,
  UnitPosition, UnitStylesOKCANCL, UnitExceptionPkgNrList, cxPropertiesStore,
  Vcl.Touch.Keyboard;

const AppFormName = 'VisTruck.Ankomstreg' ;

type
  TfrmLoadArrivals = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbConfirmLoad: TdxBarLargeButton;
    lbPrintLoad: TdxBarLargeButton;
    lbUndoConfirm: TdxBarLargeButton;
    imglistActions: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbExportToExcel: TdxBarLargeButton;
    bbCustomizeLayout: TdxBarButton;
    pmPrint: TdxBarPopupMenu;
    il_LastStatus: TImageList;
    bbSamlingsspecifikation: TdxBarButton;
    bbTally_Ver: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxSplitter1: TcxSplitter;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1LO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNO: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdLoadsDBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdLoadsDBTableView1ORDER_NO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1INITIALS: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1OrderType: TcxGridDBColumn;
    grdLoadsDBTableView1CountryCode: TcxGridDBColumn;
    grdLoadsDBTableView1LOINI: TcxGridDBColumn;
    grdLoadsDBTableView1LASTSTLLE: TcxGridDBColumn;
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
    acClose: TAction;
    acExportLoadsToExcel: TAction;
    acRefresh: TAction;
    cxLabel2: TcxLabel;
    acUndoAR: TAction;
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
    grdLoadsDBTableView1LipNo: TcxGridDBColumn;
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
    cxLabel5: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    grdLoadsDBTableView1TYP: TcxGridDBColumn;
    grdLoadsDBTableView1LOTYP: TcxGridDBColumn;
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
    grdLoadsDBTableView1Trading: TcxGridDBColumn;
    grdLoadsDBTableView1LoadAR: TcxGridDBColumn;
    cxStyleLoadAR: TcxStyle;
    PopupMenu1: TPopupMenu;
    ndralayout1: TMenuItem;
    ndralayout2: TMenuItem;
    StngF121: TMenuItem;
    Kollapsaallagrupper1: TMenuItem;
    AnkomstregistreraF101: TMenuItem;
    Ankomstregistrera1: TMenuItem;
    Expanderaallagrupper1: TMenuItem;
    ExportxlsF111: TMenuItem;
    Frhandsgranska1: TMenuItem;
    FljesedelDK1: TMenuItem;
    UpdintprisersF61: TMenuItem;
    Paketinformation1: TMenuItem;
    Skrivutmarkeradelaster1: TMenuItem;
    Skrivutmarkeradelaster2: TMenuItem;
    Samlingsfljesedel1: TMenuItem;
    Samlingsfljesedelmedpktnr1: TMenuItem;
    Frhandsgranska2: TMenuItem;
    SetLoadtoConfirmed1: TMenuItem;
    Grupperingsrutan1: TMenuItem;
    ngraF41: TMenuItem;
    UppdateraF61: TMenuItem;
    acPrint: TAction;
    SkrivutF81: TMenuItem;
    mtSelectedLoadsLoadAR: TIntegerField;
    grdLoadsDBTableView1ARtillLager: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
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
    cds_PropsVerk: TStringField;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cbAllaVerk: TcxDBCheckBox;
    grdLoadsDBTableView1ImpVerk: TcxGridDBColumn;
    mtSelectedLoadsImpOrt: TIntegerField;
    cxGridPopupMenu2: TcxGridPopupMenu;
    acSendLoadToHampen: TAction;
    SaveDialog1: TSaveDialog;
    sq_City: TFDQuery;
    sq_CityOrt: TStringField;
    sq_CityCityNo: TIntegerField;
    cds_PropsLaststlle: TStringField;
    cds_PropsDestination: TStringField;
    sq_Dest: TFDQuery;
    sq_DestOrt: TStringField;
    sq_DestCityNo: TIntegerField;
    cds_PropsSlutkund: TStringField;
    mtSelectedLoadsEGEN: TIntegerField;
    grdLoadsDBTableView1EGEN: TcxGridDBColumn;
    mtSelectedLoadsAvropCustomerNo: TIntegerField;
    cxStyleAvraknad: TcxStyle;
    Panel5: TPanel;
    Panel6: TPanel;
    grdPkgs: TcxGrid;
    grdPkgsDBTableView1: TcxGridDBTableView;
    grdPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdPkgsDBTableView1GS: TcxGridDBColumn;
    grdPkgsDBTableView1BC: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdPkgsDBTableView1PCS: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgsDBTableView1LO: TcxGridDBColumn;
    grdPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdPkgsDBTableView1SubSum: TcxGridDBColumn;
    grdPkgsDBTableView1PRICE: TcxGridDBColumn;
    grdPkgsDBTableView1NLMM: TcxGridDBColumn;
    grdPkgsDBTableView1ALMM: TcxGridDBColumn;
    grdPkgsDBTableView1Used: TcxGridDBColumn;
    grdPkgsDBTableView1Info2: TcxGridDBColumn;
    grdPkgsLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    acSetInfo2Text: TAction;
    siLangLinked_frmLoadArrivals: TsiLangLinked;
    grdPkgsDBTableView1PackageNo: TcxGridDBColumn;
    grdPkgsDBTableView1CreatedUser: TcxGridDBColumn;
    grdPkgsDBTableView1DateCreated: TcxGridDBColumn;
    mePackageNo: TcxMaskEdit;
    cxLabel10: TcxLabel;
    Timer3: TTimer;
    grdLoadsDBTableView1NoOfPackages: TcxGridDBColumn;
    grdLoadsDBTableView1PackagesConfirmed: TcxGridDBColumn;
    cxStyleGreen: TcxStyle;
    cxLabelEntryMetod: TcxLabel;
    FDQ_Position: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Mem_MatchaProduct: TFDMemTable;
    BindingsList2: TBindingsList;
    DS_Position: TDataSource;
    FDQ_MatchPosition: TFDQuery;
    FDQ_ProductNo: TFDQuery;
    FDQ_ProductNoProductDisplayName: TStringField;
    FDQ_ProductNoProductNo: TIntegerField;
    BindSourceDB2: TBindSourceDB;
    Mem_PackProdList: TFDMemTable;
    FDQ_MatchPositionPositionName: TStringField;
    FDQ_MatchPositionProductDisplayName: TStringField;
    FDQ_MatchPositionPositionID: TIntegerField;
    FDQ_PositionPositionName: TStringField;
    FDQ_PhyInvPtNo: TFDQuery;
    FDQ_PhyInvPtNoPhysicalInventoryPointNo: TIntegerField;
    DS_ProductNo: TDataSource;
    ds_MatchPosition: TDataSource;
    Mem_PackProdListPaketNr: TIntegerField;
    Mem_PackProdListProductDisplayName: TStringField;
    ds_MatchaProduct: TDataSource;
    Mem_MatchaProductPositionNamn: TStringField;
    Mem_MatchaProductProductNamn: TStringField;
    Mem_MatchaProductNoOfPkgs: TIntegerField;
    Mem_PackProdListVald: TIntegerField;
    Mem_MatchaProductFullt: TIntegerField;
    Mem_PackProdListPktSupplierCode: TStringField;
    Mem_PackProdListProductNo: TIntegerField;
    Mem_MatchaProductVald: TIntegerField;
    FDQ_PositionPositionID: TIntegerField;
    FDQ_StorePosID: TFDQuery;
    FDQ_InitialMatchPos: TFDQuery;
    FDQ_InitialMatchPosPosStatus: TIntegerField;
    FDQ_InitialMatchPosPositionName: TStringField;
    FDQ_InitialMatchPosProductNo: TIntegerField;
    FDQ_InitialMatchPosProductDisplayName: TStringField;
    FDQ_InitialMatchPosPositionID: TIntegerField;
    FDQ_InitialMatchPosStoredDate: TSQLTimeStampField;
    FDQ_InitialMatchPosNoOfPkgsByProduct: TIntegerField;
    FDQ_InitialMatchPosNoOfPkgsByPosition: TIntegerField;
    Mem_StorePosition: TFDMemTable;
    Mem_StorePositionPositionID: TIntegerField;
    Mem_StorePositionPrefix: TStringField;
    Mem_StorePositionPakageNr: TIntegerField;
    Mem_MatchaProductProductNo: TIntegerField;
    Mem_MatchaProductPositionID: TIntegerField;
    FDQ_ProductPkg: TFDQuery;
    FDQ_ProductPkgPackageNo: TIntegerField;
    FDQ_ProductPkgSupplierCode: TStringField;
    DS_StorePosition: TDataSource;
    FDQ_UpdatePosStatus: TFDQuery;
    cxLookAndFeelController2: TcxLookAndFeelController;
    cxEditStyleController1: TcxEditStyleController;
    Panel7: TPanel;
    lbLO_To_Invoice: TListBox;
    cxLabel1: TcxLabel;
    lcVerk: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    lcDestination: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    lcInternKund: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    lcLaststlle: TcxDBLookupComboBox;
    lcSlutKund: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    btChangeStyle: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
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
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    btPrepareScan: TcxButton;
    cbShowOnlyVWLoads: TcxDBCheckBox;
    cxPropertiesStore1: TcxPropertiesStore;
    ActionList2: TActionList;
    acPrepareScan: TAction;
    grdPkgsDBTableView1Position: TcxGridDBColumn;
    acSetPktStorlek: TAction;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    mtPkgNosStatus: TIntegerField;
    mtPkgNosPackage_Size: TIntegerField;
    mtPkgNosCertNo: TIntegerField;
    cxButton2: TcxButton;
    grdPkgsDBTableView1Package_Size: TcxGridDBColumn;
    grdPkgsDBTableView1PackageSizeName: TcxGridDBColumn;
    bcConfirmedv2: TcxComboBox;
    mtSelectedLoadsLOTYP: TStringField;
    dxBarLargeButton2: TdxBarLargeButton;
    acScannedErrors: TAction;
    grdLoadsDBTableView1OriginalLO: TcxGridDBColumn;
    grdLoadsDBTableView1OriginalLoadNo: TcxGridDBColumn;
    acNumPad: TAction;
    cxButton3: TcxButton;
    tkNumPad: TTouchKeyboard;
    grdPkgsDBTableView1Scanned: TcxGridDBColumn;
    cxStyleBlue: TcxStyle;
    SetFontSize: TdxBarSpinEdit;
    cxGridTableViewStyleSheetForPkgs: TcxGridTableViewStyleSheet;
    cxStylePkgsContent: TcxStyle;
    sp_insPkgInvStatByLoad: TFDStoredProc;
    grdLoadsDBTableView1OriginalInvoiceNo: TcxGridDBColumn;
    mtSelectedLoadsTrading: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);



    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
    procedure bcCompanyPropertiesChange(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportLoadsToExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExportLoadsToExcelUpdate(Sender: TObject);
    procedure acUndoARExecute(Sender: TObject);
    procedure acUndoARUpdate(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);

    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure acConfirmOneLoadExecute(Sender: TObject);
    procedure acPrintDirectFSExecute(Sender: TObject);
    procedure acPrintDirectFS_USAExecute(Sender: TObject);
    procedure acSamlingsFS_USAExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acConfirmOneLoadUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);

    procedure grdPkgsDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsClientNoChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure acSetInfo2TextExecute(Sender: TObject);
    procedure grdPkgsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure Timer3Timer(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnStorePositionClick(Sender: TObject);
    procedure listboxAllClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid_MatchPositionDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btChangeStyleClick(Sender: TObject);
    procedure acPrepareScanExecute(Sender: TObject);
    procedure cds_PropsAfterScroll(DataSet: TDataSet);
    procedure cds_PropsAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSetPktStorlekExecute(Sender: TObject);
    procedure lcVerkPropertiesCloseUp(Sender: TObject);
    procedure acScannedErrorsExecute(Sender: TObject);
    procedure acNumPadExecute(Sender: TObject);
    procedure SetFontSizeChange(Sender: TObject);


  private
    { Private declarations }

    ProductNoList : TStringList;
    PositionAllNameList: TStringList;
    PositionAllIDList : TList<Integer>;
    SelectedPositionAllName: string;
    SelectedPositionAllID: Integer;
    PositionNamnList, PositionIDList, ProductNamnList : TStringList;
    PosStatusList, NoOfPkgsList : TList<Integer>;

    LastTime  : TTime ;
    SecondsBetweenKeyPressed  : Double ;
    function  CheckThatCustomerNoIsValidOnSelectedLoads : Boolean;
    function  DoesAllLoadsHaveSameLIPNo : Boolean ;
    function  AreMarkedLoadsSameObjectTypeAndInternalContract: Boolean;

    procedure CopyLoadToOtherSalesRegion(const LoadNo, LONo  : Integer);
    procedure Run_insPkgInvStatByLoad(const LoadNo  : Integer) ;
    Function  IsRegionToRegionLoadValid(LoadNo, ShippingPlanNo, ObjectType: Integer; Sender: TObject): Boolean;
    procedure ConfirmManyLoadsRegionToRegion(Sender: TObject) ;
    function  AreMarkedLoadsSameObjectTypeRegionToRegion: Boolean;
    procedure SelectedPkgsOfPkgNosTable ;
    function  IdentifyPackageSupplier(const PkgNo : Integer;
    var PkgSupplierCode: String3) : TEditAction;
    procedure GetpackageNoEntered(Sender: TObject;const PackageNo : String;const Scanned : Integer) ;
    procedure BuildPackageQuery ;
    procedure LoadLagerPos ;
    procedure SetLagerPosOnMarkedPkgs (const LagerPos : Integer) ;
    function  AreMarkedLoadsSameObjectTypeAndNOTEGEN : Boolean ;
    procedure ConfirmManyLoadsPurchasedFromVW(Sender: TObject);
    procedure EmptyGrid ;
    procedure RefreshDest ;
    procedure RefreshOrter ;
    procedure SetLoadAs_AR(const LoadNo : Integer) ;
    procedure AR_TRADING_POLoads(Sender: TObject);
    procedure AR_PO_Loads(Sender: TObject);
    procedure AR_INTADDLoads(Sender: TObject) ;
    procedure AR_Sales_Loads(Sender: TObject);
//    procedure ConfirmManyINTADDLoads(Sender: TObject);
//    procedure ConfirmManySALESLoads(Sender: TObject);
//    procedure ConfirmManyPOLoads(Sender: TObject);
//    procedure ConfirmManyPOTRADINGLoads(Sender: TObject);
    Function  IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
    procedure RefreshLoads ;
    procedure BuildARQuery (const LONo, LoadNo : Integer) ;
    function  BackgroundColor(iObjectType: integer) : TColor;
    procedure SetConfirmed_Load_Table(Sender: TObject) ;

    procedure PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
    procedure PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
    procedure GetMarkedLoads (Sender: TObject) ;
//    procedure ConfirmedINTLoad(Sender: TObject);
//    procedure ConfirmedORDERLoad(Sender: TObject);
    procedure InsertMarkedLoadsToTempTable (Sender: TObject;const Status : Integer) ;
    procedure TaBortAnkomstRegistreradeLaster(const AR_Status : Integer) ;
    function  AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
    function  AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
    procedure PrintDirectFS(Sender: TObject);
    procedure PrintDirectFS_USA(Sender: TObject);
    function  AreMarkedLoadsSameTRADINGType : Boolean ;
    function  SelectAvropsNrAttSkapaSalesLoadMot(const POLONo : Integer) : Integer ;
    procedure ShowPosition;
    procedure ShowMatchPosition(ProductNo : Integer; IsProductNoExist: Boolean);
    //procedure CreateProductNoList(ProductNoList1: TStringList);
    procedure SavetoMemPosition(PositionID: Integer; Prefix: String; PkgNr: Integer);
    function  GetPkgPrefix(ProductNo: Integer; PackageNo: Integer; Prefix: String): Boolean;
    procedure DeleteMatchaProdNo(ProductNo: Integer);
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var
  frmLoadArrivals: TfrmLoadArrivals;



implementation

uses UnitCRViewReport, dmc_ArrivingLoads, VidaUtils,
  Vidauser, UnitPkgInfo, dmsVidaContact, //dmcVidaSystem,
  dmsDataConn,
//  fConfirmIntLoad,
  //fConfirmManyIntLoads,
  uSelectLIP, uAnkomstRegProgress, VidaConst ,
//  fConfirmManyNormalLoad,
  UnitCRPrintOneReport, dmsVidaSystem, //dmc_Filter,
  uTradingLinkMult, dmc_UserProps,
  uWait, uLagerPos, udmLanguage, URegionToRegionSelectLIPNo, uFastReports,
  udmFR, uReportController, uFRConstants, uFRAccessories, uFixMail, uFastReports2, udmFRSystem;

{$R *.dfm}

Procedure TfrmLoadArrivals.CreateCo(CompanyNo: Integer);
Var x : Integer ;
begin

  if dmsSystem.LoadStyles(ThisUser.UserID, Self.Name, cxPropertiesStore1) = False then ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + grdLoads.Name, grdLoadsDBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name  + '/' + grdPkgs.Name, grdPkgsDBTableView1) = False then ;

  grdLoadsDBTableView1INVPOINTNO.Visible        := False ;
  grdLoadsDBTableView1LipNo.Visible             := False ;
  grdLoadsDBTableView1SUPPLIERNO.Visible        := False ;
  grdLoadsDBTableView1OrderType.Visible         := False ;
  grdLoadsDBTableView1AVROP_CUSTOMERNO.Visible  := False ;
  grdLoadsDBTableView1CUSTOMERNO.Visible        := False ;
  grdLoadsDBTableView1OBJECTTYPE.Visible        := False ;
  grdLoadsDBTableView1ORDER_NO.Visible          := False ;


  dmsContact.sp_Customers.Active  := False ;
  dmsContact.sp_Customers.Active  := True ;

  dmsContact.cds_verk.Active  := False ;
  dmsContact.cds_verk.Active  := True ;

{  dmsContact.Load_Int_and_Lego(bcCompany.Properties.Items) ;
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
    bcCompany.Properties.ReadOnly:= False ;


  For x:= 0 to bcCompany.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
  End ;
  }





// With dmArrivingLoads do
//  LoadUserProps (Self.Caption) ;


{  sq_City.Active  := False ;
  sq_City.ParamByName('OwnerNo').AsInteger  := 1 ;
  sq_City.Active  := True ; }


 cds_Props.Active:= False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Self.Name ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
  cds_Props.Insert ;

 if cds_PropsVerkNo.IsNull then
 Begin
  cds_Props.Edit ;
  cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo ;
  cds_Props.Post ;
 End ;


  cds_Props.Edit ;
  cds_PropsNewItemRow.AsInteger := 0 ;
  cds_Props.Post ;

 if (cds_Props.State in [dsEdit, dsInsert]) or (cds_Props.ChangeCount > 0) then
 Begin
  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;

  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   lcVerk.Enabled := True
    else
     lcVerk.Enabled := False ;

 RefreshOrter ;
 RefreshDest ;
 cds_Props.Refresh ;

// dmArrivingLoads.cdsArrivingLoads.Active:= True ;
 if (ThisUser.UserID = 4) OR (ThisUser.UserID = 8) then
  acSetLoadToConfirmed.Enabled:= True ;
end;


procedure TfrmLoadArrivals.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmLoadArrivals.FormDestroy(Sender: TObject);
begin
 frmLoadArrivals := NIL;

  if dmsSystem.DeleteAssigned('TfrmLoadArrivals', 'dmArrivingLoads') = True then
  Begin
   dmArrivingLoads.Free ;
   dmArrivingLoads := Nil ;
  End ;
end;

procedure TfrmLoadArrivals.FormKeyPress(Sender: TObject; var Key: Char);
//Var NuTid           : TTime ;
//    ManualKeyBoard  : Integer ;
begin
(*

    if (Key = #13) and (Length(mePackageNo.Text) > 0) then
    Begin
     Try
      GetpackageNoEntered(Sender, mePackageNo.Text, ManualKeyBoard) ;

      mePackageNo.Text:= '' ;
     Except
      mePackageNo.Text:= '' ;
     End ;
    End
    else
     Begin
       NuTid  := Time ;
         if Length(mePackageNo.Text) < 2 then
        LastTime  := NuTid ;

       if Length(mePackageNo.Text) > 1 then
        SecondsBetweenKeyPressed  := (NuTid - LastTime) * 1000 ;

       if SecondsBetweenKeyPressed > 0.01 then
       Begin
        ManualKeyBoard            := 1 ;
        cxLabelEntryMetod.Caption := 'Manual' ;
       End
         else
          Begin
            ManualKeyBoard            := 0 ;
            cxLabelEntryMetod.Caption := 'Scanned' ;
          End;


       LastTime         := NuTid ;
       Timer3.Enabled   := True ;
       mePackageNo.Text := '' ;
  //    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
       if key in ['S','0','1','2','3','4','5','6','7','8','9'] then
        mePackageNo.Text  := mePackageNo.Text + Key ;
     End ;

*)

end;

procedure TfrmLoadArrivals.FormShow(Sender: TObject);
begin
 LoadLagerPos ;
//  Self.KeyPreview              := True ;
//  mePackageNo.Enabled         := False ;
//  self.Enabled  := False ;
 With dmArrivingLoads do
 Begin
//   cdsAllPackageNos.Active      := False ;
//   cdsAllPackageNos.Active      := True ;
 End;
end;

procedure TfrmLoadArrivals.FormCreate(Sender: TObject);
begin
 bcConfirmedv2.Properties.OnChange  := nil ;
 Try
  if (not Assigned(dmArrivingLoads)) then
  Begin
   dmArrivingLoads  := TdmArrivingLoads.Create(nil);
  End ;
 dmsSystem.AssignDMToThisWork('TfrmLoadArrivals', 'dmArrivingLoads') ;
 Finally
  bcConfirmedv2.Properties.OnChange :=  bcConfirmedPropertiesChange ;
 End;
end;




procedure TfrmLoadArrivals.RefreshLoads ;
var
  Save_Cursor : TCursor;
  LoadNo      : Integer ;
begin
 Save_Cursor := Screen.Cursor ;
 With dmArrivingLoads do
 Begin
 lcSlutKund.PostEditValue ;
 lcDestination.PostEditValue ;
 lcInternKund.PostEditValue ;
 lcLaststlle.PostEditValue ;
 lcVerk.PostEditValue ;
// bcConfirmedv2.PostEditValue ;

  if cds_Props.State = dsBrowse then
   cds_Props.Edit ;

  if Length(lcSlutKund.Text) = 0 then
   cds_PropsOwnerNo.Clear ;

  if Length(lcDestination.Text) = 0 then
   cds_PropsBookingTypeNo.Clear ;

  if Length(lcInternKund.Text) = 0 then
   cds_PropsClientNo.Clear ;

  if Length(lcLaststlle.Text) = 0 then
   cds_PropsLoadingLocationNo.Clear ;

  if Length(lcVerk.Text) = 0 then
   cds_PropsVerkNo.Clear ;

  if cds_Props.State in [dsEdit, dsInsert] then
   cds_Props.Post ;


 cdsArrivingLoads.DisableControls ;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
 dsrcArrivingLoads.DataSet:= Nil ;
 Try
//  if cds_PropsVerkNo.AsInteger > 0 then
//  Begin
   LoadNo                       := cdsArrivingLoadsLoadNo.AsInteger ;
   cdsArrivingLoads.Active      := False ;
   BuildARQuery (-1, -1) ;
   cdsArrivingLoads.Active      := True ;
   cdsArrivingLoads.FindKey([LoadNo]) ;

   RefreshArrivingPackages ;

(*
       cdsAllPackageNos.Active      := False ;
         BuildPackageQuery  ;
       cdsAllPackageNos.Active      := True ;

*)
//  end ;
 finally
  dsrcArrivingLoads.DataSet :=  cdsArrivingLoads ;
 end;
 finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;


Function TfrmLoadArrivals.IsLoadValid(LoadNo, ShippingPlanNo, ObjectType : Integer;Sender: TObject) : Boolean ;
begin
 Result := False ;
 With dmArrivingLoads do
 Begin
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;

  cdsArrivingLoads.Filter:= 'LoadNo = '+IntToStr(LoadNo) ;
  cdsArrivingLoads.Filtered:= True ;
  cdsArrivingLoads.First ;
  Try
  While Not cdsArrivingLoads.Eof do
  Begin
   if cdsArrivingLoadsObjectType.AsInteger <> 2 then
   Begin
    sq_Check_CDS_Link.Close ;
    sq_Check_CDS_Link.ParamByName('LoadNo').AsInteger         := cdsArrivingLoadsLoadNo.AsInteger ;
    sq_Check_CDS_Link.ParamByName('ShippingPlanNo').AsInteger := cdsArrivingLoadsLO.AsInteger ;
    sq_Check_CDS_Link.Open ;
    if sq_Check_CDS_Link.Eof then
     Result:= True
     else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_0' (* 'Kan inte AR lasten. Problem med LO# ' *) )+cdsArrivingLoadsLO.AsString+' länkning till LO, kolla att LO samt Last är OK ') ;
    sq_Check_CDS_Link.Close ;
   End ;
   if cdsArrivingLoadsObjectType.AsInteger = 2 then
   Begin
    sq_CheckObject2Link.Close ;
    sq_CheckObject2Link.ParamByName('LoadNo').AsInteger         := cdsArrivingLoadsLoadNo.AsInteger ;
    sq_CheckObject2Link.ParamByName('ShippingPlanNo').AsInteger := cdsArrivingLoadsLO.AsInteger ;
    sq_CheckObject2Link.Open ;
    if sq_CheckObject2Link.Eof then
     Result:= True
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_0' (* 'Kan inte AR lasten. Problem med LO# ' *) )+cdsArrivingLoadsLO.AsString+' länkning till Avrop eller LO, kolla att AVROP / LO samt LAST är OK ') ;
    sq_CheckObject2Link.Close ;
   End ;
   cdsArrivingLoads.Next ;
  End ; //While
  cdsArrivingLoads.Filtered:= False ;
  if not cdsArrivingLoads.FindKey([LoadNo]) then
   Result:= False ;
  Finally
//   cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
  End ;
 End ; //With
End ;

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

function TfrmLoadArrivals.BackgroundColor(iObjectType: integer) : TColor;
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


procedure TfrmLoadArrivals.BuildARQuery(const LONo, LoadNo : Integer);
Begin
  with dmArrivingLoads do
  Begin
    if cds_PropsNewItemRow.AsInteger = 0 then
    Begin
      cdsArrivingLoads.SQL.Clear;
      cdsArrivingLoads.SQL.Add('Declare @ArrivalLoads as Table (Egen int, OriginalLO int, OriginalLoadNo int,LoadAR int,CountryCode varchar(5),') ;
      cdsArrivingLoads.SQL.Add('LO int,LOADNO int,FS varchar(20),LOADEDDATE Datetime,LOAD_STATUS int,LOAD_ID varchar(50),SUPPLIER varchar(80),') ;
      cdsArrivingLoads.SQL.Add('SUPPCODE varchar(3),DESTINATION varchar(50),ORDER_NO varchar(20),OBJECTTYPE int,INVPOINTNO int,INVPOINTNAME varchar(50),') ;
      cdsArrivingLoads.SQL.Add('CUSTOMERNO int,CUSTOMER varchar(3),SUPPLIERNO int,AVROP_CUSTOMERNO int,AVROP_CUSTOMER varchar(80),OBJECTTYPE_1 int,') ;
      cdsArrivingLoads.SQL.Add('INITIALS varchar(3),ORDERTYPE int,TYP varchar(10),LOTYP varchar(7),LOINI varchar(3),LASTSTÄLLE varchar(50),LipNo int,') ;
      cdsArrivingLoads.SQL.Add('Trading int,ARtillLager varchar(131),ImpVerk int,intNM3 float, AM3 float, Pcs int, Pkgs int,ClientName varchar(80),') ;
      cdsArrivingLoads.SQL.Add('BookingType varchar(30),NoOfPackages int,PackagesConfirmed int,OriginalInvoiceNo int, LoadingLocationNo int, OrderNo int, Lagerkod varchar(4))') ;
      cdsArrivingLoads.SQL.Add('insert into @ArrivalLoads') ;
      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');
      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add
        ('IsNull(CSH.CustomerNo,0)	AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			  AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');

      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');

      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, SP.LoadingLocationNo, CSH.OrderNo, isnull(L.Lagerkod,1) as Lagerkod') ;

        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        cdsArrivingLoads.SQL.Add('and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
      //  cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on sp.SupplierShipPlanObjectNo = ld.Defsspno');

        if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmedv2.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');


      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
        cdsArrivingLoads.SQL.Add('and OH.OrderType = 1');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add
        ('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('							AND	ST.Reference		= CSD.Reference');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');


      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + Inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);
          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End
      else
        cdsArrivingLoads.SQL.Add('1=1');

      cdsArrivingLoads.SQL.Add('AND LSP.ConfirmedByReciever = 0') ;


{
          if (LONo = -1) and (LoadNo = -1)  then
            if bcConfirmedv2.ItemIndex > 0 then
            Begin
              cdsArrivingLoads.SQL.Add('AND exists (select * from dbo.Confirmed_Load cl') ;
              cdsArrivingLoads.SQL.Add('WHERE') ;
              cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = L.LoadNo)') ;
            End;
}


      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1)  then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

//      cdsArrivingLoads.SQL.Add('AND SP.ObjectType <> 1');

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType IN (2)');


       if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;


          if cds_PropsMarketRegionNo.AsInteger = 1 then
          Begin
            cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End
          else
          Begin
            cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End;

        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.CreatedUser = ' + intTostr(thisuser.UserID)) ;
          cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102)))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then

    (*
        if (LONo = -1) and (LoadNo = -1)  then
          Begin
            if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
            Begin
              cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
            End
            else if bcConfirmedv2.ItemIndex = 1 then

            Begin
              cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
              if (LONo = -1) and (LoadNo = -1) then
              Begin

              cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102))');


              End;
            End
            else
              // Mina AR
              if bcConfirmedv2.ItemIndex = 2 then // lbConfirmLoad.Enabled = True then
              Begin
                cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
                cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' + IntToStr(ThisUser.UserID));


              cdsArrivingLoads.SQL.Add('AND (CL.DateCreated BETWEEN CONVERT(DATETIME, ');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102))');
              End;
          End; // if(LONo = -1) and (LoadNo = -1)  then
  *)

      // UNION
  //    cdsArrivingLoads.SQL.Add('UNION');

      cdsArrivingLoads.SQL.Add('insert into @ArrivalLoads') ;
      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');

      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add('isNull(CSH.CustomerNo, 0)					AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add('SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS ');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');
      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

     cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
     cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
     cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
     cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, SP.LoadingLocationNo, -1 asOrderNo, isnull(L.Lagerkod, 1) as Lagerkod') ;


        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
 //       cdsArrivingLoads.SQL.Add('inner join dbo.loaddetail ld on ld.LoadNo = lsp.LoadNo and ld.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        cdsArrivingLoads.SQL.Add('and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
        if (LONo = -1) and (LoadNo = -1) then
        Begin
          if bcConfirmedv2.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add
              ('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;
        End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');



      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanHeader CSH');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add('						ON CSH.ShippingPlanNo = SP.LO_No');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Address 		ST_ADR');
      cdsArrivingLoads.SQL.Add
        ('Inner JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('Inner  JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST_ADR.AddressNo	= OH.DestinationNo');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        // if cbAllaVerk.Checked then
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);

          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType in (0, 1)');

 //     cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 3');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
            if cds_PropsMarketRegionNo.AsInteger = 1 then
            Begin
              cdsArrivingLoads.SQL.Add('AND (cl.DateCreated BETWEEN CONVERT(DATETIME, ');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102))');
            End
            else
            Begin
              cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
              cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
              cdsArrivingLoads.SQL.Add(', 102))');
            End;
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));

          cdsArrivingLoads.SQL.Add('AND (CL.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then

//      cdsArrivingLoads.SQL.Add('UNION');
// Inleverans från annan Region (RtR) tex vida till UK, Borg till Vida ************************//
      cdsArrivingLoads.SQL.Add('insert into @ArrivalLoads') ;
 // START REGION To REGION AR query
      cdsArrivingLoads.SQL.Add('SELECT distinct ') ;

      cdsArrivingLoads.SQL.Add('CASE WHEN OH.Trading = 2 THEN 0') ;
      cdsArrivingLoads.SQL.Add('ELSE 1 END AS EGEN,') ;

      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo ') ;

      cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,') ;

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;
      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,') ;
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,') ;
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,') ;
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,') ;
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,') ;
      cdsArrivingLoads.SQL.Add('2				AS	OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('isNull(CSH.ShipToCityNo,-1)		AS	INVPOINTNO,') ;
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') + ')		AS	INVPOINTNAME,') ;// -- Leverera till
      cdsArrivingLoads.SQL.Add('OH.CustomerNo                           AS      CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add('OH.SalesRegionNo                           AS      SUPPLIERNO,') ;
      cdsArrivingLoads.SQL.Add('isNull(CSH.CustomerNo, 0)				AS	AVROP_CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add(' 2 AS OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,') ;

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,') ;

      cdsArrivingLoads.SQL.Add('CASE WHEN OH.Trading = 2 THEN ') ;
      cdsArrivingLoads.SQL.Add(QuotedStr('RtR')) ;
      cdsArrivingLoads.SQL.Add('ELSE ' + QuotedStr('RtR') + ' END AS LOTYP,') ;

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('From dbo.CustomerShippingPlanHeader sp2') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = CSH.ShippingPlanNo)') ;
      cdsArrivingLoads.SQL.Add(' AS LOINI,') ;

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE,') ;
      cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,') ;
 //     cdsArrivingLoads.SQL.Add(,isNull(PIPCity.CityName,'/')+'/' +	LIP.LogicalInventoryName	AS	ARtillLager,

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,') ;
      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs') ;
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

            {
        cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
              cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
              cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
              cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo,

      }


  cdsArrivingLoads.SQL.Add('(Select top 1 nos.invoiceno FROM dbo.InvoiceNos nos') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceLO ilo on ilo.InternalInvoiceNo = nos.InternalInvoiceNo') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.CSHTradingLink tl on tl.SalesShippingPlanNo = ilo.ShippingPlanNo') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.LOBArrivals loba on loba.InternalInvoiceNo = ilo.InternalInvoiceNo') ;
 cdsArrivingLoads.SQL.Add('WHERE tl.POShippingPlanNo = CSH.ShippingPlanNo') ;
 cdsArrivingLoads.SQL.Add('and loba.NewLoadNo = L.LoadNo) as OriginalInvoiceNo,') ;


      cdsArrivingLoads.SQL.Add('csh.LoadingLocationNo, CSH.OrderNo, isnull(L.Lagerkod,1) as Lagerkod') ;
//* ===================== FROM ==================== */
      cdsArrivingLoads.SQL.Add('FROM  dbo.CustomerShippingPlanDetails CSD') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	= OH.SalesRegionNo') ; //	CSH.CustomerNo') ;



      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo') ;

      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName ON	IName.CityNo = PIP.PhyInvPointNameNo') ;
      cdsArrivingLoads.SQL.Add('LEFT JOIN dbo.City Loading ON	Loading.CityNo = CSH.LoadingLocationNo') ;// -- SP.LoadingLocationNo

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo') ;
      cdsArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference') ;
    //  cdsArrivingLoads.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo
      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk') ;
      cdsArrivingLoads.SQL.Add('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo') ;
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo') ;

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
       if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = ' + cds_PropsVerkNo.AsString)
         else
          cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = -1');
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

        cdsArrivingLoads.SQL.Add('and OH.Trading in (2,3)') ;

{
        cdsArrivingLoads.SQL.Add('AND Not exists (select * from dbo.Confirmed_Load cl') ;
        cdsArrivingLoads.SQL.Add('WHERE') ;
        cdsArrivingLoads.SQL.Add('cl.NewLoadNo = L.LoadNo)') ;
}


      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND csh.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin  //cds_PropsBookingTypeNo = LevereraTill
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND PIP.PhyInvPointNameNo = ' +
            cds_PropsBookingTypeNo.AsString);

      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;

          if cds_PropsMarketRegionNo.AsInteger = 1 then
          Begin
            cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End
          else
          Begin
            cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.CreatedUser = ' + intTostr(thisuser.UserID)) ;
          cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102)))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then


 // END REGION To REGION AR query


 //     cdsArrivingLoads.SQL.Add('UNION');


    End // if cds_PropsNewItemRow.AsInteger = 0 then
    else
      cdsArrivingLoads.SQL.Clear;
      cdsArrivingLoads.SQL.Add('insert into @ArrivalLoads') ;

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;


    cdsArrivingLoads.SQL.Add
      ('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2');
    cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,');

    cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

    cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
    cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
    cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
    cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
    cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
    cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
    cdsArrivingLoads.SQL.Add
      ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add
      ('SP.CustomerNo                           AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('SP.SupplierNo                           AS      SUPPLIERNO,');
    cdsArrivingLoads.SQL.Add('isNull(CSH.CustomerNo, 0)				AS	AVROP_CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
    cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

    cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

    cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
      QuotedStr('SALES'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
      QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
      QuotedStr('INTERN'));
    cdsArrivingLoads.SQL.Add('End AS TYP,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
      QuotedStr('LO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
      QuotedStr('ADD'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
      QuotedStr('INT'));
    cdsArrivingLoads.SQL.Add('END AS LOTYP,');

    cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
    cdsArrivingLoads.SQL.Add(' AS LOINI,');

    cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
    cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,');
    cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
    cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+'
      + QuotedStr('/') + ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
    cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

    cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
    cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

   cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
   cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
   cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
   cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

    {
        cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
          cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
          cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
          cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo,') ;

  }

      cdsArrivingLoads.SQL.Add('(Select top 1 nos.invoiceno FROM dbo.InvoiceNos nos') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceLO ilo on ilo.InternalInvoiceNo = nos.InternalInvoiceNo') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.CSHTradingLink tl on tl.SalesShippingPlanNo = ilo.ShippingPlanNo') ;
 cdsArrivingLoads.SQL.Add('inner join dbo.LOBArrivals loba on loba.InternalInvoiceNo = ilo.InternalInvoiceNo') ;
 cdsArrivingLoads.SQL.Add('WHERE tl.POShippingPlanNo = CSH.ShippingPlanNo') ;
 cdsArrivingLoads.SQL.Add('and loba.NewLoadNo = L.LoadNo) as OriginalInvoiceNo,') ;


      cdsArrivingLoads.SQL.Add('SP.LoadingLocationNo, CSH.OrderNo, isnull(l.Lagerkod, 1) as Lagerkod') ;


    cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SP');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('ON CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo');

    // 2 new rows
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo');

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName ON	IName.CityNo = SP.ShipToInvPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City Loading ON	Loading.CityNo = SP.LoadingLocationNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = SP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('AND LSP.LoadingLocationNo = SP.LoadingLocationNo');


    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
    cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
    cdsArrivingLoads.SQL.Add
      ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('							AND	ST.Reference		= CSD.Reference');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo');

    cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
    cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');
    // ST_ADR.CityNo') ;

    cdsArrivingLoads.SQL.Add('WHERE');

    if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = ' + cds_PropsVerkNo.AsString)
    else
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = -1');

    cdsArrivingLoads.SQL.Add(' AND  L.SupplierNo = CSH.CustomerNo') ;

    cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 2');

    cdsArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 2)');

    if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
      cdsArrivingLoads.SQL.Add('and OH.OrderType = 0');

    if (LONo = -1) and (LoadNo = -1) then
      if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
      then
        cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
          cds_PropsClientNo.AsString);

    cdsArrivingLoads.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID));

    if (LONo > -1) or (LoadNo > -1) then
    Begin
      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if cds_PropsBookingTypeNo.AsInteger > 0 then
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = ' +
          cds_PropsBookingTypeNo.AsString) // Destination, leverera till ort
      else
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = -99');

      if (not cds_PropsLoadingLocationNo.IsNull) and
        (cds_PropsLoadingLocationNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
          cds_PropsOwnerNo.AsString);
    End;

{
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then
          cdsArrivingLoads.SQL.Add
            ('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ')
        else
          cdsArrivingLoads.SQL.Add
            ('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ');

        cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
        cdsArrivingLoads.SQL.Add
          ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)');
      End;
}


   if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;


          if cds_PropsMarketRegionNo.AsInteger = 1 then
          Begin
            cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End
          else
          Begin
            cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102)))');
          End;

        End
        else if bcConfirmedv2.ItemIndex = 2 then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.CreatedUser = ' + intTostr(thisuser.UserID)) ;

          cdsArrivingLoads.SQL.Add('AND (cl2.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102)))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then


{
       if bcConfirmedv2.ItemIndex = 1 then
       Begin
          cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd hh:mm:ss',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
       End;
      End;
}

    cdsArrivingLoads.SQL.Add('select * from @ArrivalLoads') ;

   if thisuser.UserID = 258 then
   cdsArrivingLoads.SQL.SaveToFile('cdsArrivingLoads.TXT');
  End;
End;



(*
procedure TfrmLoadArrivals.BuildARQuery(const LONo, LoadNo: Integer);
Begin
  with dmArrivingLoads do
  Begin
    if cds_PropsNewItemRow.AsInteger = 0 then
    Begin
      cdsArrivingLoads.SQL.Clear;
      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');
      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add
        ('IsNull(CSH.CustomerNo,0)	AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			  AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');

      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');

      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

      cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, SP.LoadingLocationNo, CSH.OrderNo') ;

        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
      //  cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on sp.SupplierShipPlanObjectNo = ld.Defsspno');

        if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmedv2.ItemIndex = 2 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');


      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
        cdsArrivingLoads.SQL.Add('and OH.OrderType = 1');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add
        ('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('							AND	ST.Reference		= CSD.Reference');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');


      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + Inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);
          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End
      else
        cdsArrivingLoads.SQL.Add('1=1');

      cdsArrivingLoads.SQL.Add('AND LSP.ConfirmedByReciever = 0') ;


         if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmedv2.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('AND exists (select * from dbo.Confirmed_Load cl') ;
            cdsArrivingLoads.SQL.Add('WHERE') ;
            cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = L.LoadNo)') ;
          End;


      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

//      cdsArrivingLoads.SQL.Add('AND SP.ObjectType <> 1');

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType IN (2)');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then

        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
          cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
          End;
        End
        else
          // Mina AR
          if bcConfirmedv2.ItemIndex = 2 then // lbConfirmLoad.Enabled = True then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
            cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
              IntToStr(ThisUser.UserID));
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
              QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
              DateTimeToSQLTimeStamp(deStartPeriod.Date))));
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
              QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
              DateTimeToSQLTimeStamp(deEndPeriod.Date))));
          End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      // UNION
      cdsArrivingLoads.SQL.Add('UNION');

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');

      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add('isnull(CSH.CustomerNo, 0)				AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add('SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS ');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');
      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

     cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.LoadDetail LD') ;
     cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
     cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.PackageARConfirmed PC') ;
     cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, SP.LoadingLocationNo, -1 asOrderNo') ;


        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
 //       cdsArrivingLoads.SQL.Add('inner join dbo.loaddetail ld on ld.LoadNo = lsp.LoadNo and ld.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        cdsArrivingLoads.SQL.Add('and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
        if (LONo = -1) and (LoadNo = -1) then
        Begin
          if bcConfirmedv2.ItemIndex = 2 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add
              ('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;
        End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');



      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanHeader CSH');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add('						ON CSH.ShippingPlanNo = SP.LO_No');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Address 		ST_ADR');
      cdsArrivingLoads.SQL.Add
        ('Inner JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('Inner  JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST_ADR.AddressNo	= OH.DestinationNo');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        // if cbAllaVerk.Checked then
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);

          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType in (0, 1)');

 //     cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 3');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
            cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
            cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deEndPeriod.Date)));
            cdsArrivingLoads.SQL.Add(', 102))');
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));

          cdsArrivingLoads.SQL.Add('AND (CL.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      cdsArrivingLoads.SQL.Add('UNION');
 // START REGION To REGION AR query
      cdsArrivingLoads.SQL.Add('SELECT distinct ') ;
      cdsArrivingLoads.SQL.Add('CASE WHEN OH.Trading = 2 THEN 0') ;
      cdsArrivingLoads.SQL.Add('ELSE 1 END AS EGEN,') ;

      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo ') ;

      cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,') ;

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;
      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,') ;
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,') ;
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,') ;
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,') ;
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,') ;
      cdsArrivingLoads.SQL.Add('2				AS	OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('isNull(CSH.ShipToCityNo,-1)		AS	INVPOINTNO,') ;
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') + ')		AS	INVPOINTNAME,') ;// -- Leverera till
      cdsArrivingLoads.SQL.Add('OH.CustomerNo                           AS      CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add('OH.SalesRegionNo                           AS      SUPPLIERNO,') ;
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add(' 2 AS OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,') ;

    cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,') ;

      cdsArrivingLoads.SQL.Add('CASE WHEN OH.Trading = 2 THEN ') ;
      cdsArrivingLoads.SQL.Add(QuotedStr('RtR')) ;
      cdsArrivingLoads.SQL.Add('ELSE ' + QuotedStr('RtR') + ' END AS LOTYP,') ;

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('From dbo.CustomerShippingPlanHeader sp2') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = CSH.ShippingPlanNo)') ;
      cdsArrivingLoads.SQL.Add(' AS LOINI,') ;

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE,') ;
      cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,') ;
 //     cdsArrivingLoads.SQL.Add(,isNull(PIPCity.CityName,'/')+'/' +	LIP.LogicalInventoryName	AS	ARtillLager,

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,') ;
      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs') ;
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,') ;
      cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, csh.LoadingLocationNo, CSH.OrderNo') ;
// ===================== FROM ==================== /
      cdsArrivingLoads.SQL.Add('FROM  dbo.CustomerShippingPlanDetails CSD') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo') ;



      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo') ;

      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName ON	IName.CityNo = PIP.PhyInvPointNameNo') ;
      cdsArrivingLoads.SQL.Add('LEFT JOIN dbo.City Loading ON	Loading.CityNo = CSH.LoadingLocationNo') ;// -- SP.LoadingLocationNo

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo') ;
      cdsArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference') ;
    //  cdsArrivingLoads.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo
      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk') ;
      cdsArrivingLoads.SQL.Add('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo') ;
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo') ;

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
       if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = ' + cds_PropsVerkNo.AsString)
         else
          cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = -1');
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND csh.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin  //cds_PropsBookingTypeNo = LevereraTill
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND PIP.PhyInvPointNameNo = ' +
            cds_PropsBookingTypeNo.AsString);

      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);





      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;


          if (LONo = -1) and (LoadNo = -1) then
          Begin
          cdsArrivingLoads.SQL.Add('AND (L.LoadedDate BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));
          cdsArrivingLoads.SQL.Add('AND (cl.DateCreated BETWEEN CONVERT(DATETIME, ');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deStartPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102) AND CONVERT(DATETIME,');
          cdsArrivingLoads.SQL.Add(QuotedStr(formatdatetime('yyyy-mm-dd',deEndPeriod.Date)));
          cdsArrivingLoads.SQL.Add(', 102))');
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then


 // END REGION To REGION AR query


      cdsArrivingLoads.SQL.Add('UNION');

    End // if cds_PropsNewItemRow.AsInteger = 0 then
    else
      cdsArrivingLoads.SQL.Clear;

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;


    cdsArrivingLoads.SQL.Add
      ('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2');
    cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,');

    cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

    cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
    cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
    cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
    cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
    cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
    cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
    cdsArrivingLoads.SQL.Add
      ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add
      ('SP.CustomerNo                           AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('SP.SupplierNo                           AS      SUPPLIERNO,');
    cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
    cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

    cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

    cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
  cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
      QuotedStr('SALES'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
      QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 2 THEN ' +
        QuotedStr('P-List'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 3 THEN ' +
        QuotedStr('c-Intern'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
      QuotedStr('INTERN'));
    cdsArrivingLoads.SQL.Add('End AS TYP,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
      QuotedStr('LO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
      QuotedStr('ADD'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
      QuotedStr('INT'));
    cdsArrivingLoads.SQL.Add('END AS LOTYP,');

    cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
    cdsArrivingLoads.SQL.Add(' AS LOINI,');

    cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
    cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,');
    cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
    cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+'
      + QuotedStr('/') + ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
    cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

    cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
    cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

   cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.LoadDetail LD') ;
   cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
   cdsArrivingLoads.SQL.Add('(Select Count( * ) FROM dbo.PackageARConfirmed PC') ;
   cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo, SP.LoadingLocationNo, CSH.OrderNo') ;


    cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SP');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('ON CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo');

    // 2 new rows
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo');

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName ON	IName.CityNo = SP.ShipToInvPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City Loading ON	Loading.CityNo = SP.LoadingLocationNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = SP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('AND LSP.LoadingLocationNo = SP.LoadingLocationNo');


    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
    cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
    cdsArrivingLoads.SQL.Add
      ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('							AND	ST.Reference		= CSD.Reference');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo');

    cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
    cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');
    // ST_ADR.CityNo') ;

    cdsArrivingLoads.SQL.Add('WHERE');

    if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = ' + cds_PropsVerkNo.AsString)
    else
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = -1');

    cdsArrivingLoads.SQL.Add(' AND  L.SupplierNo = CSH.CustomerNo') ;

    cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 2');

    cdsArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 2)');

    if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
      cdsArrivingLoads.SQL.Add('and OH.OrderType = 0');

    if (LONo = -1) and (LoadNo = -1) then
      if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
      then
        cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
          cds_PropsClientNo.AsString);

    cdsArrivingLoads.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID));

    if (LONo > -1) or (LoadNo > -1) then
    Begin
      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if cds_PropsBookingTypeNo.AsInteger > 0 then
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = ' +
          cds_PropsBookingTypeNo.AsString) // Destination, leverera till ort
      else
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = -99');

      if (not cds_PropsLoadingLocationNo.IsNull) and
        (cds_PropsLoadingLocationNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
          cds_PropsOwnerNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if bcConfirmedv2.ItemIndex = 0 then
        cdsArrivingLoads.SQL.Add
          ('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ')
      else
        cdsArrivingLoads.SQL.Add
          ('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ');

      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)');
    End;

//    if thisuser.UserID = 258 then cdsArrivingLoads.SQL.SaveToFile('cdsArrivingLoads.TXT');
  End;
End;

*)

(*

procedure TfrmLoadArrivals.BuildARQuery(const LONo, LoadNo: Integer);
Begin
  with dmArrivingLoads do
  Begin
    if cds_PropsNewItemRow.AsInteger = 0 then
    Begin
      cdsArrivingLoads.SQL.Clear;
      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add
        ('IsNull(CSH.CustomerNo,0)	AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			  AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
      // cdsArrivingLoads.SQL.Add('CASE WHEN LIP.LogicalInventoryName = ' + QuotedStr('STD') + ' THEN -1') ;
      // cdsArrivingLoads.SQL.Add('ELSE isNull(SP.LipNo,-1) END AS LipNo,  isNull(OH.Trading,0) AS Trading');

      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');

      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

      cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed') ;

        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
//        cdsArrivingLoads.SQL.Add('inner join dbo.loaddetail ld on ld.LoadNo = lsp.LoadNo and ld.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on sp.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmedv2.ItemIndex = 2 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add
              ('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');


      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
        cdsArrivingLoads.SQL.Add('and OH.OrderType = 1');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add
        ('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('							AND	ST.Reference		= CSD.Reference');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');
      // cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo
      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');

      // if cbAllaVerk.Checked then
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + Inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);
          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End
      else
        cdsArrivingLoads.SQL.Add('1=1');

      cdsArrivingLoads.SQL.Add('AND LSP.ConfirmedByReciever = 0') ;

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

 //     cdsArrivingLoads.SQL.Add('AND SP.ObjectType <> 1');

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType IN (0,2)');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
              QuotedStr(DateTimeToStr(deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
              QuotedStr(DateTimeToStr(deEndPeriod.Date)));
          End;
        End
        else
          // Mina AR
          if bcConfirmedv2.ItemIndex = 2 then // lbConfirmLoad.Enabled = True then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
            cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
              IntToStr(ThisUser.UserID));
            // LM June 14  deStartPeriod.Date:= RecodeHour(deStartPeriod.Date,0) ;
            // LM June 14  deStartPeriod.Date:= RecodeMinute(deStartPeriod.Date,0) ;
            // LM June 14  deStartPeriod.Date:= RecodeSecond(deStartPeriod.Date,0) ;
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
              QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
              DateTimeToSQLTimeStamp(deStartPeriod.Date))));
            // LM June 14  deEndPeriod.Date:= RecodeHour(deEndPeriod.Date,23) ;
            // LM June 14  deEndPeriod.Date:= RecodeMinute(deEndPeriod.Date,59) ;
            // LM June 14  deEndPeriod.Date:= RecodeSecond(deEndPeriod.Date,59) ;
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
              QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
              DateTimeToSQLTimeStamp(deEndPeriod.Date))));
          End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      // UNION
      cdsArrivingLoads.SQL.Add('UNION');

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');

      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add('SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS ');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');
      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

   cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.LoadDetail LD') ;
   cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
   cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.PackageARConfirmed PC') ;
   cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed') ;


        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
        cdsArrivingLoads.SQL.Add('inner join dbo.loaddetail ld on ld.LoadNo = lsp.LoadNo and ld.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on sp.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;

        if (LONo = -1) and (LoadNo = -1) then
        Begin
          if bcConfirmedv2.ItemIndex = 2 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add
              ('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;
        End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');



      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanHeader CSH');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add('						ON CSH.ShippingPlanNo = SP.LO_No');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Address 		ST_ADR');
      cdsArrivingLoads.SQL.Add
        ('Inner JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('Inner  JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST_ADR.AddressNo	= OH.DestinationNo');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');
      // cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo
      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        // if cbAllaVerk.Checked then
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);

          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType = 1');

 //     cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 3');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
              QuotedStr(DateTimeToStr(deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
              QuotedStr(DateTimeToStr(deEndPeriod.Date)));
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));
          // LM June 14  deStartPeriod.Date:= RecodeHour(deStartPeriod.Date,0) ;
          // LM June 14  deStartPeriod.Date:= RecodeMinute(deStartPeriod.Date,0) ;
          // LM June 14  deStartPeriod.Date:= RecodeSecond(deStartPeriod.Date,0) ;
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deStartPeriod.Date))));
          // LM June 14  deEndPeriod.Date:= RecodeHour(deEndPeriod.Date,23) ;
          // LM June 14  deEndPeriod.Date:= RecodeMinute(deEndPeriod.Date,59) ;
          // LM June 14  deEndPeriod.Date:= RecodeSecond(deEndPeriod.Date,59) ;
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deEndPeriod.Date))));
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      cdsArrivingLoads.SQL.Add('UNION');

    End // if cds_PropsNewItemRow.AsInteger = 0 then
    else
      cdsArrivingLoads.SQL.Clear;

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;


    cdsArrivingLoads.SQL.Add
      ('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2');
    cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,');

    cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

    cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
    cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
    cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
    cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
    cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
    cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
    cdsArrivingLoads.SQL.Add
      ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add
      ('SP.CustomerNo                           AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('SP.SupplierNo                           AS      SUPPLIERNO,');
    cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
    cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

    cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

    cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
      QuotedStr('SALES'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
      QuotedStr('PO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
      QuotedStr('INTERN'));
    cdsArrivingLoads.SQL.Add('End AS TYP,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
      QuotedStr('LO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
      QuotedStr('ADD'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
      QuotedStr('INT'));
    cdsArrivingLoads.SQL.Add('END AS LOTYP,');

    cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
    cdsArrivingLoads.SQL.Add(' AS LOINI,');

    cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
    cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,');
    cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
    cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+'
      + QuotedStr('/') + ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
    cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

    cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
    cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

   cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.LoadDetail LD') ;
   cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
   cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.PackageARConfirmed PC') ;
   cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed') ;


    cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SP');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('ON CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo');

    // 2 new rows
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo');

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName ON	IName.CityNo = SP.ShipToInvPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City Loading ON	Loading.CityNo = SP.LoadingLocationNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = SP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('AND LSP.LoadingLocationNo = SP.LoadingLocationNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
    cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
    cdsArrivingLoads.SQL.Add
      ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('							AND	ST.Reference		= CSD.Reference');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo');

    cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');
   cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
    cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');


    cdsArrivingLoads.SQL.Add('WHERE');

    if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = ' + cds_PropsVerkNo.AsString)
    else
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = -1');

    cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 2');

    cdsArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 2)');

    if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
      cdsArrivingLoads.SQL.Add('and OH.OrderType = 0');

    if (LONo = -1) and (LoadNo = -1) then
      if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
      then
        cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
          cds_PropsClientNo.AsString);

    cdsArrivingLoads.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID));

    if (LONo > -1) or (LoadNo > -1) then
    Begin
      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if cds_PropsBookingTypeNo.AsInteger > 0 then
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = ' +
          cds_PropsBookingTypeNo.AsString) // Destination, leverera till ort
      else
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = -99');

      if (not cds_PropsLoadingLocationNo.IsNull) and
        (cds_PropsLoadingLocationNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
          cds_PropsOwnerNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if bcConfirmedv2.ItemIndex = 0 then
        cdsArrivingLoads.SQL.Add
          ('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ')
      else
        cdsArrivingLoads.SQL.Add
          ('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ');

      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)');
    End;


    // START REGION To REGION AR query
      cdsArrivingLoads.SQL.Add('SELECT distinct  0 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo ') ;
      cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,') ;

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;
      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,') ;
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,') ;
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,') ;
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,') ;
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,') ;
      cdsArrivingLoads.SQL.Add('2				AS	OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('isNull(CSH.ShipToCityNo,-1)		AS	INVPOINTNO,') ;
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') + ')		AS	INVPOINTNAME,') ;// -- Leverera till
      cdsArrivingLoads.SQL.Add('OH.CustomerNo                           AS      CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add('OH.SalesRegionNo                           AS      SUPPLIERNO,') ;
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add(' 2 AS OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,') ;

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,') ;

      cdsArrivingLoads.SQL.Add(QuotedStr('RtR') + ' AS LOTYP,') ;
      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('From dbo.CustomerShippingPlanHeader sp2') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = CSH.ShippingPlanNo)') ;
      cdsArrivingLoads.SQL.Add(' AS LOINI,') ;

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE,') ;
      cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,') ;
 //     cdsArrivingLoads.SQL.Add(,isNull(PIPCity.CityName,'/')+'/' +	LIP.LogicalInventoryName	AS	ARtillLager,

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,') ;
      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs') ;
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,') ;
      cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed') ;
//* ===================== FROM ==================== */
      cdsArrivingLoads.SQL.Add('FROM  dbo.CustomerShippingPlanDetails CSD') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo') ;



      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo') ;

      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName ON	IName.CityNo = PIP.PhyInvPointNameNo') ;
      cdsArrivingLoads.SQL.Add('LEFT JOIN dbo.City Loading ON	Loading.CityNo = CSH.LoadingLocationNo') ;// -- SP.LoadingLocationNo

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo') ;
      cdsArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference') ;
    //  cdsArrivingLoads.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo
      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk') ;
      cdsArrivingLoads.SQL.Add('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo') ;
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo') ;

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
       cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = ' + cds_PropsVerkNo.AsString);
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND csh.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin  //cds_PropsBookingTypeNo = LevereraTill
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND PIP.PhyInvPointNameNo = ' +
            cds_PropsBookingTypeNo.AsString);

      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);


      cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;


      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmedv2.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmedv2.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
              QuotedStr(DateTimeToStr(deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
              QuotedStr(DateTimeToStr(deEndPeriod.Date)));
          End;
        End
        else if bcConfirmedv2.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deStartPeriod.Date))));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deEndPeriod.Date))));
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then


 // END REGION To REGION AR query


    // if thisuser.UserID = 8 then
    cdsArrivingLoads.SQL.SaveToFile('cdsArrivingLoads.TXT');
  End;
End; *)





procedure TfrmLoadArrivals.BuildPackageQuery  ;
Begin
 with dmArrivingLoads do
 Begin
  if cds_PropsNewItemRow.AsInteger = 0 then
  Begin
   cdsAllPackageNos.SQL.Clear ;
   cdsAllPackageNos.SQL.Add('SELECT DISTINCT  L.LoadNo, LD.PackageNo, LD.SupplierCode') ;

   cdsAllPackageNos.SQL.Add('FROM dbo.SupplierShippingPlan       SP') ;
   cdsAllPackageNos.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP') ;
   cdsAllPackageNos.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
   cdsAllPackageNos.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo') ;
   cdsAllPackageNos.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo') ;

   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SP.ShippingPlanNo') ;

   cdsAllPackageNos.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = LSP.LoadNo') ;

   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
   cdsAllPackageNos.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno') ;
   cdsAllPackageNos.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo') ;
   cdsAllPackageNos.SQL.Add('WHERE') ;
 //  cdsAllPackageNos.SQL.Add('(SP.CustomerNo = 741 OR SP.CustomerNo = 741)') ;
   cdsAllPackageNos.SQL.Add('SP.CustomerNo = ' +  cds_PropsVerkNo.AsString) ;
   cdsAllPackageNos.SQL.Add('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)') ;
   cdsAllPackageNos.SQL.Add('AND (SP.ObjectType in (0, 2))') ;
   cdsAllPackageNos.SQL.Add('AND L.LoadAR = 0') ;


   cdsAllPackageNos.SQL.Add('UNION') ;
   cdsAllPackageNos.SQL.Add('SELECT DISTINCT   L.LoadNo, LD.PackageNo, LD.SupplierCode') ;
   cdsAllPackageNos.SQL.Add('FROM dbo.SupplierShippingPlan       SP') ;
   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SP.ShippingPlanNo') ;

   cdsAllPackageNos.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = LSP.LoadNo') ;

   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
   cdsAllPackageNos.SQL.Add('				AND     L.supplierno 		= SP.SUPPLIERno') ;
   cdsAllPackageNos.SQL.Add('				AND     L.CustomerNo 		= SP.CustomerNo') ;

   cdsAllPackageNos.SQL.Add('WHERE') ;
//   cdsAllPackageNos.SQL.Add('(SP.CustomerNo = 741)') ;
   cdsAllPackageNos.SQL.Add('SP.CustomerNo = ' +  cds_PropsVerkNo.AsString) ;
   cdsAllPackageNos.SQL.Add('AND (L.SenderLoadStatus IN (1,2))') ;
   cdsAllPackageNos.SQL.Add('AND SP.ObjectType = 1') ;
   cdsAllPackageNos.SQL.Add('AND L.LoadAR = 0') ;

   cdsAllPackageNos.SQL.Add('UNION') ;

  End //if cds_PropsNewItemRow.AsInteger = 0 then
    else
     cdsAllPackageNos.SQL.Clear ;


   cdsAllPackageNos.SQL.Add('SELECT DISTINCT L.LoadNo, LD.PackageNo, LD.SupplierCode') ;
   cdsAllPackageNos.SQL.Add('FROM dbo.SupplierShippingPlan       SP') ;
   cdsAllPackageNos.SQL.Add('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD') ;
   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
   cdsAllPackageNos.SQL.Add('ON CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo') ;

   cdsAllPackageNos.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo') ;
   cdsAllPackageNos.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
   cdsAllPackageNos.SQL.Add('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo') ;

   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = SP.ShippingPlanNo') ;

   cdsAllPackageNos.SQL.Add('Inner Join dbo.LoadDetail LD on LD.LoadNo = LSP.LoadNo') ;

   cdsAllPackageNos.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
   cdsAllPackageNos.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno') ;
   cdsAllPackageNos.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo') ;

   cdsAllPackageNos.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo') ;
   cdsAllPackageNos.SQL.Add('WHERE') ;
 //  cdsAllPackageNos.SQL.Add('CSH.CustomerNo = 741') ;
   cdsAllPackageNos.SQL.Add('CSH.CustomerNo = ' +  cds_PropsVerkNo.AsString) ;

   cdsAllPackageNos.SQL.Add('AND (L.SenderLoadStatus = 2)') ;
   cdsAllPackageNos.SQL.Add('AND SP.ObjectType < 3') ;
 //  cdsAllPackageNos.SQL.Add('AND uap.UserID = 258') ;
   cdsAllPackageNos.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID)) ;
   cdsAllPackageNos.SQL.Add('--AND PIPCity.CityNo = -99') ;

   cdsAllPackageNos.SQL.Add('AND not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
   cdsAllPackageNos.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
   cdsAllPackageNos.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
  // cdsAllPackageNos.SQL.SaveToFile('cdsAllPackageNos.txt') ;
 End;
End ;


procedure TfrmLoadArrivals.Button1Click(Sender: TObject);
begin

end;

//make an entry for the load that is confirmed
procedure TfrmLoadArrivals.SetConfirmed_Load_Table(Sender: TObject) ;
Begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_2' (* 'This Confirmation does only insert a record in the Confirmed_Load table, Continue?' *) ),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 begin

 with dmArrivingLoads do
 Begin
 Try
 cdsConfirmed_Load.Active:= True ;
 cdsArrivingLoads.Filter:= 'LOADNO = '+cdsArrivingLoadsLOADNO.AsString ;
 cdsArrivingLoads.Filtered:= True ;
  While not cdsArrivingLoads.Eof do
  Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger:= cdsArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger:= cdsArrivingLoadsLO.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
   cdsArrivingLoads.Next ;
  End ;
  if cdsConfirmed_Load.ChangeCount > 0 then
   if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_3' (* 'Inmatning av post misslyckades, kontakta support med LO och LastNr.' *) ))
     else
      Begin
       cdsArrivingLoads.Refresh ;
       cdsArrivingLoads.Last ;
      End ;

 Finally
  cdsArrivingLoads.Filtered:= False ;
  cdsConfirmed_Load.Active:= False ;
 End ;
 End ; //with
 End ;
End ;

procedure TfrmLoadArrivals.SetFontSizeChange(Sender: TObject);
begin
 cxStylePkgsContent.Font.Size := SetFontSize.IntCurValue ;
 cxStyle10.Font.Size    := SetFontSize.IntCurValue ;
// cxStyleGreen2.Font.Size  := dxBarSpinEditContent.IntCurValue ;
end;

procedure TfrmLoadArrivals.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //ShippingPlanNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
//  Begin
   cdsArrivingLoads.active:= False ;
   BuildARQuery (StrToIntDef(Trim(Edit1.Text),0), -1) ;
   cdsArrivingLoads.active:= True ;

//   cdsArrivingLoads.LogChanges:= False ;
   if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
   Begin
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_4' (* 'No luck' *) )) ;
   End   ;
 //  else
 //   Timer1.Enabled:= True ;


//  End
//  else
//  Timer1.Enabled:= True ;
{  else
  Begin
   ShippingPlanNo := cdsArrivingLoadsLO.AsInteger ;
   While (ShippingPlanNo = cdsArrivingLoadsLO.AsInteger) and
   (cdsArrivingLoads.Eof = False) do
   Begin
    cdsArrivingLoads.Next ;
   End ; //while
   if not cdsArrivingLoads.Eof then
   cdsArrivingLoads.Prior ;
  End ; }

//  Edit1.Text:= '' ;
//  Edit1.SetFocus ;
// Timer1.Enabled:= True ;

 Finally
  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

    if cdsArrivingLoads.RecordCount > 0 then
    mePackageNo.SetFocus ;
 End ; //with
end;

procedure TfrmLoadArrivals.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var //LoadNo : Integer ;
  Save_Cursor:TCursor;
begin
 if Key <> VK_RETURN then Exit;
 grdLoadsDBTableView1.Controller.ClearSelection ;
 With dmArrivingLoads do
 Begin
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;
  Save_Cursor := Screen.Cursor;
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//  if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
//  begin
   cdsArrivingLoads.Active:= False ;
   BuildARQuery (-1, StrToIntDef(Trim(Edit2.Text),0)) ;
   cdsArrivingLoads.active:= True ;
   if cdsArrivingLoads.RecordCount > 0 then
    mePackageNo.SetFocus ;
//   cdsArrivingLoads.LogChanges:= False ;
   if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
   Begin
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_4' (* 'No luck' *) )) ;
   End ;
 //  else
 //  Timer2.Enabled:= True ;
//  End
//  else
//  Timer2.Enabled:= True ;
{  else
  Begin
   LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
   While (LoadNo = cdsArrivingLoadsLoadNo.AsInteger) and
   (cdsArrivingLoads.Eof = False) do
   Begin
    cdsArrivingLoads.Next ;
   End ; //while
   if not cdsArrivingLoads.Eof then
   cdsArrivingLoads.Prior ;
  End ; }

//  Edit2.Text:= '' ;
//  Edit2.SetFocus ;
// Timer2.Enabled:= True ;
 Finally
//  cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex3' ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
   if cdsArrivingLoads.RecordCount > 0 then
    mePackageNo.SetFocus ;
 End ; //with
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikation(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

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
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikation_USA(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

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
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikationMedPktNr(Sender: TObject;const SamLastNr : Integer);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

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
end;

procedure TfrmLoadArrivals.GetMarkedLoads (Sender: TObject) ;
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
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    Duplicate := False ;
    RecIDx:= grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;
    OutputVal := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];
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
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_6' (* 'Måste välja en last' *) )) ;
    Exit ;
   End ;

   samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
   Try
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
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.InsertMarkedLoadsToTempTable (Sender: TObject;const Status : Integer) ;
 Var  i, RecIDX       : Integer ;
      Save_Cursor     : TCursor;
      ColIdx          : Integer ;
      AvropCustomerNo,
      EGEN,
      OBJECTTYPE,
      ImpVerk,
      LoadAR,
      LIPNo, LoadNo,
      LONo,
      CustomerNo,
      LOAD_STATUS,
      Trading     : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOADNO').Index;
    LoadNo      := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LO').Index;
    LONo        := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LoadAR').Index;
    LoadAR      := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LIPNo').Index;
    if grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx] <> null then
    LIPNo       := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('CUSTOMERNO').Index;
    CustomerNo  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('LOAD_STATUS').Index;
    LOAD_STATUS := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('ImpVerk').Index;
    ImpVerk     := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('EGEN').Index;
    EGEN        := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('AVROP_CUSTOMERNO').Index;
    AvropCustomerNo := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Trading').Index;
        Trading := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

//    if not mtSelectedLoads.Locate('LoadNo;LONo', VarArrayOf([LoadNo, LONo]), []) then
    if (not mtSelectedLoads.Locate('LoadNo', LoadNo, [])) and (LOAD_STATUS = 2) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsLoadNo.AsInteger          := LoadNo ;
     mtSelectedLoadsLONo.AsInteger            := LONo ;
     mtSelectedLoadsLIPNo.AsInteger           := LIPNo ;
     mtSelectedLoadsCustomerNo.AsInteger      := CustomerNo ;
     mtSelectedLoadsAvropCustomerNo.AsInteger := AvropCustomerNo ;
     mtSelectedLoadsStatus.AsInteger          := Status ;
     mtSelectedLoadsLoadAR.AsInteger          := LoadAR ;
     mtSelectedLoadsImpOrt.AsInteger          := ImpVerk ;
     mtSelectedLoadsOBJECTTYPE.AsInteger      := OBJECTTYPE ;
     mtSelectedLoadsEGEN.AsInteger            := EGEN ;
     mtSelectedLoadsTrading.AsInteger         := Trading ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if cds_Props.State in [dsEdit, dsInsert] then
 cds_Props.Post ;
 if cds_Props.ChangeCount > 0 then
 Begin
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;

 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  grdLoads.Name, grdLoadsDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name +  '/' +  grdPkgs.Name, grdPkgsDBTableView1) ;

 dmsSystem.StoreStyles(ThisUser.UserID, Self.Name, cxPropertiesStore1);

 dmArrivingLoads.cdsArrivingLoads.Active  := False ;

// With dmArrivingLoads do
//  LoadUserProps (Self.Caption) ;

 CanClose:= True ;
end;

procedure TfrmLoadArrivals.acFSExecute(Sender: TObject);
Var
(*
  FormCRViewReport: TFormCRViewReport;
  ReportType: Integer;
  LoadNo: Integer;
  Lang: Integer;
  FR: TFastReports;
  CustomerNo: integer;
  NoOfCopies: integer;
*)
  CustomerNo: integer;
  LoadNo: integer;
  Lang: integer;
  ReportType: integer;
  salesregion: TCompanyNo;
  FR2: TFastReports2;
begin
  dmFR.SaveCursor;
  try
    CustomerNo := dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger;
    if CustomerNo < 1 then
      CustomerNo := dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger;
    Lang := dmsContact.getCustomerLanguage(CustomerNo);
    LoadNo := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
    if LoadNo < 1 then
      Exit;

    // Try get client language, use swedish if fail.
    Lang := dmsContact.getCustomerLanguage(CustomerNo);
    if Lang = -1 then
      Lang := cSwedish;

      salesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
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
    CustomerNo := dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger;
    if CustomerNo < 1 then
      CustomerNo := dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger;
    Lang := dmsContact.getCustomerLanguage(CustomerNo);
    LoadNo := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
    if LoadNo < 1 then
      Exit;

    if uReportController.useFR then
    begin
      try
        FR := TFastReports.Create;
        if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
        begin
          ReportType := cFoljesedelIntern;
          FR.Tally(LoadNo, ReportType, Lang, '', '', '', NoOfCopies);
        end
        else
        begin
          ReportType := cFoljesedel;
          FR.Tally_Pkg_Matched(LoadNo, ReportType, Lang, '', '', '', NoOfCopies)
        end;
      finally
        FreeAndNil(FR);
      end;
    end
    else
    begin
      if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
        Exit;

      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try

        if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
          FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
        else
        Begin
          Try
            dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
              dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
            dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
          FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT');
        End;

        if FormCRViewReport.ReportFound then
        Begin
          FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue
            (dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
          FormCRViewReport.CRViewer91.ReportSource := FormCRViewReport.report;

          FormCRViewReport.CRViewer91.ViewReport;
          FormCRViewReport.ShowModal;
        End;
        Try
          dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
        mePackageNo.SetFocus;
      End;
    end;
*)
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfrmLoadArrivals.acFS_DKExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT')
 else
 Begin
  Try
  dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
  mePackageNo.SetFocus ;
 End ;
end;


procedure TfrmLoadArrivals.acPrintSamLastExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation(Sender, ThisUser.UserID) ;
 mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;
 mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmArrivingLoads.cdsArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode:= dmArrivingLoads.cdsArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;


procedure TfrmLoadArrivals.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdLoads.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoads.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadArrivals.acChangePkgLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfrmLoadArrivals.acSetInfo2TextExecute(Sender: TObject);
var
  fLagerPos: TfLagerPos;
begin
 With dmsSystem, dmArrivingLoads do
 Begin
  PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger) ;
  fLagerPos :=  TfLagerPos.Create(nil);
  Try
  if sp_LagerPos.Active then
   sp_LagerPos.Active :=  False ;
   sp_LagerPos.ParamByName('@PIPNo').AsInteger  := PIPNo ;
   sp_LagerPos.Active := True ;
    if fLagerPos.ShowModal = mrOK then
    Begin
     SetLagerPosOnMarkedPkgs(sp_LagerPos.FieldByName('PositionID').AsInteger) ;
     cdsArrivingPackages.Refresh ;
    End;
  Finally
    FreeAndNil(fLagerPos) ;
    mePackageNo.SetFocus ;
    sp_LagerPos.Active  := False ;
  End;
 End;
end;

procedure TfrmLoadArrivals.acSetLoadToConfirmedExecute(Sender: TObject);
begin
 SetConfirmed_Load_Table(Sender) ;
end;

procedure TfrmLoadArrivals.SelectedPkgsOfPkgNosTable ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 grdPkgsDBTableView1.BeginUpdate ;
 grdPkgsDBTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdPkgsDBTableView1.DataController.DataSource.DataSet ;
   For I    := 0 to grdPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPkgsDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LOAD_DETAILNO;ProductLengthNo', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PACKAGE_NO').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SUPPLIERCODE').AsString ;
{
      mtPkgNosOwnerNo.AsInteger   := cds_PropsOwnerNo.AsInteger ;
      mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
      mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
      mtPkgNosStatus.AsInteger    := 1 ;// ADataSet.FieldByName('Status').AsInteger ;
}
    mtPkgNos.Post ;
   End ;

 Finally
  grdPkgsDBTableView1.DataController.EndLocate ;
  grdPkgsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmLoadArrivals.acSetPktStorlekExecute(Sender: TObject);
Var Package_Size      : Integer ;
    PackageSizeName   : String ;
begin
 With dmArrivingLoads do
 Begin
  Package_Size  :=  GetNewPackage_Size(PackageSizeName) ;
  if Package_Size > -1 then
  Begin
    mtPkgNos.Active := True ;
    cdsArrivingPackages.DisableControls ;
    Try
    SelectedPkgsOfPkgNosTable ;
    mtPkgNos.First ;
    while not mtPkgNos.Eof do
    Begin
     if cdsArrivingPackages.Locate('PACKAGE_NO;SupplierCode',  VarArrayOf([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]), []) then
     Begin
{      sp_invpivPkgDtl.Edit ;
      sp_invpivPkgDtl.FieldByName('Package_Size').AsInteger     := Package_Size ;
      sp_invpivPkgDtl.FieldByName('PackageSizeName').AsString   := PackageSizeName ;
      sp_invpivPkgDtl.Post ;   }

      CngArtNoByPkgSize(mtPkgNosPackageNo.AsInteger, Package_Size, mtPkgNosSupp_Code.AsString) ;
     End;
     mtPkgNos.Next ;
    End;
     cdsArrivingPackages.Refresh ;
    Finally
     cdsArrivingPackages.EnableControls ;
     mtPkgNos.Active := False ;
     mePackageNo.SetFocus ;
    End;
  End;
 End;
end;


procedure TfrmLoadArrivals.acConfirmedLoadExecute(Sender: TObject);
begin
  With dmArrivingLoads do
   Begin
    if not CheckThatCustomerNoIsValidOnSelectedLoads then
     Exit ;
      if grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
      Begin
        if AreMarkedLoadsSameObjectTypeRegionToRegion then
        ConfirmManyLoadsRegionToRegion(Sender)
        else
       if AreMarkedLoadsSameObjectTypeAndNOTEGEN then
       //External customer AR loads purchased of VW
       ConfirmManyLoadsPurchasedFromVW(Sender)
       else
       if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
        AR_INTADDLoads(Sender)
        else
         if AreMarkedLoadsSameObjectTypeAndInternalContract then // True endast för objecttype < 2
          AR_INTADDLoads(Sender)
        else
         if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
         Begin
          if mtSelectedLoadsOrderType.AsInteger = 0 then
           AR_Sales_Loads(Sender)
            else
             Begin
              if AreMarkedLoadsSameTRADINGType then
              Begin
               if cdsArrivingLoadsTrading.AsInteger = 0 then
                AR_PO_Loads(Sender) ;
//                 else
//                  ConfirmManyPOTRADINGLoads(Sender) ;
              End //if AreMarkedLoadsSameTRADINGType then
               else
                ShowMessage('Alla markerade laster måste antingen vara trading eller inte.') ;
             End ;
         End
         else
         ShowMessage('Markerade laster måste vara av samma LO typ, (LO, add LO eller interna LO) och samma ordertyp (sales, PO eller interna)');
      End ;
{      else
       if cdsArrivingLoadsObjectType.AsInteger = 2 then
        ConfirmedORDERLoad(Sender)
         else
          ConfirmedINTLoad(Sender) ;
          }
//     End ;
 End ; //with

{ With dmArrivingLoads do
 Begin
      if grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
      Begin
       if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
        ConfirmManyINTADDLoads(Sender)
        else
         if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
         Begin
          if mtSelectedLoadsOrderType.AsInteger = 0 then
           ConfirmManySALESLoads(Sender)
            else
             Begin
              if AreMarkedLoadsSameTRADINGType then
              Begin
               if cdsArrivingLoadsTrading.AsInteger = 0 then
                ConfirmManyPOLoads(Sender)
                 else
                  ConfirmManyPOTRADINGLoads(Sender) ;
              End //if AreMarkedLoadsSameTRADINGType then
               else
                ShowMessage('Alla markerade laster måste antingen vara trading eller inte.') ;
             End ;
         End
         else
         ShowMessage('Markerade laster måste vara av samma LO typ, (LO, add LO eller interna LO) och samma ordertyp (sales, PO eller interna)');
      End
      else
       if cdsArrivingLoadsObjectType.AsInteger = 2 then
        ConfirmedORDERLoad(Sender)
         else
          ConfirmedINTLoad(Sender) ;
//     End ;
 End ; //with
 }
    mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acConfirmedLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmedLoad.Enabled:= (bcConfirmedv2.ItemIndex = 0) and (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsLoadAR.AsInteger = 0)
  and (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2)
  and (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintSamLastUpdate(Sender: TObject);
begin
 acPrintSamLast.Enabled:= grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrUpdate(Sender: TObject);
begin
 acPrintSamLastMedPktNr.Enabled:= grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 ;
end;

procedure TfrmLoadArrivals.acFSUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acFS_DKUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acFS_DK.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acPkgInfoUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acPkgInfo.Enabled:= cdsArrivingPackages.RecordCount > 0 ;
 End ;
end;

procedure TfrmLoadArrivals.bcConfirmedPropertiesChange(Sender: TObject);
begin
 if bcConfirmedv2.ItemIndex = 0 then
  Begin
   acConfirmedLoad.Enabled  := True ;
   acUndoAR.Enabled:= False ;
//   MittARDatum.Enabled:= False ;
   deStartPeriod.Enabled    := False ;
   deEndPeriod.Enabled      := False ;
  End
  else
  if bcConfirmedv2.ItemIndex = 1 then
   Begin
    acConfirmedLoad.Enabled := False ;
    acUndoAR.Enabled:= True ;
//    MittARDatum.Enabled:= False ;
    deStartPeriod.Enabled   := True ;
    deEndPeriod.Enabled     := True ;
   End
   else
    Begin
     acConfirmedLoad.Enabled:= False ;
     acUndoAR.Enabled:= True ;
//     MittARDatum.Enabled:= True ;
     deStartPeriod.Enabled  := True ;
     deEndPeriod.Enabled    := True ;
    End ;

 EmptyGrid ;
end;

procedure TfrmLoadArrivals.bcCompanyPropertiesChange(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
   cdsArrivingLoads.Active:= False ;
  End ;
end;

procedure TfrmLoadArrivals.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
  FileName,
  ExcelDir    : String ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try

 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_7' (* 'Vill du exportera till excel?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 ExcelDir := dmsSystem.Get_Dir('ExcelDir') ;


 SaveDialog1.Filter     := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt := 'xls';
 SaveDialog1.InitialDir := ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  ExportGridToExcel(FileName, grdLoads, False, False, True,'xls') ;
  ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_8' (* 'Tabell exporterad till Excelfil ' *) ) + FileName) ;
 End ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor ;
  mePackageNo.SetFocus ;
 End ;
end;

procedure TfrmLoadArrivals.acRefreshExecute(Sender: TObject);
 var Year, Month, Day: Word ;
begin
 if bcConfirmedv2.ItemIndex > 0 then
 Begin

  DecodeDate(deStartPeriod.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_9' (* 'Ange ett FOM datum' *) )) ;
   Exit ;
  End ;
  DecodeDate(deEndPeriod.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_10' (* 'Ange ett TOM datum' *) )) ;
   Exit ;
  End ;
 End ;
{ else
 if bcConfirmedv2.ItemIndex = 2 then
 Begin
  DecodeDate(MittARDatum.Date, Year, Month, Day);
  if IsValidDate(Year, Month, Day) = False then
  Begin
   ShowMessage('Ange ett ditt datum') ;
   Exit ;
  End ;
 End ; }
 dmArrivingLoads.PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger) ;
 RefreshLoads ;
 //frmLoadArrivals.SetFocus ;
 mePackageNo.SetFocus;
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acExportLoadsToExcel.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) ;
 End ;
end;

procedure TfrmLoadArrivals.acUndoARExecute(Sender: TObject);
Var LoadNo        : Integer ;
    Save_Cursor   : TCursor;
begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_11' (* 'Vill du ångra ankomstregistreringen på markerade laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender, 1) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if mtSelectedLoadsEGEN.AsInteger = 0 then
    Begin
     if AR_ExternLoad(cdsArrivingLoadsLOADNO.AsInteger, 0{Status}, -1{LIPNo not used when cancel AR}, ThisUser.UserID) then
     Begin
      mtSelectedLoads.Edit ;
      mtSelectedLoadsStatus.AsInteger  := 0 ;
      mtSelectedLoads.Post ;
     End ;
    End
    else
    Begin
     if UndoConfirmLoad(mtSelectedLoadsTrading.AsInteger) then
     Begin
      mtSelectedLoads.Edit ;
      mtSelectedLoadsStatus.AsInteger  := 0 ;
      mtSelectedLoads.Post ;
     End ; //if LoadConfirmedOK then
    End ;//else

   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 TaBortAnkomstRegistreradeLaster(0) ;
 Finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With
    mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acUndoARUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acUndoAR.Enabled:= (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsLoadAR.AsInteger >= 1)
  and (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0) ;
 End ;
end;

(*
procedure TfrmLoadArrivals.ConfirmedINTLoad(Sender: TObject);
Var
  LoadNo, LONo        : Integer ;
  formConfirmINTLoad  : TformConfirmINTLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmINTLoad:= TformConfirmINTLoad.Create(Nil);
      Try
       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmINTLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmINTLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmINTLoad.ShowModal ;
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
        TaBortAnkomstRegistreradeLaster(1) ;
       End ;
      Finally
       FreeAndNil(formConfirmINTLoad) ;
      End ;

     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;
 End ; //with
end;

*)
(*
procedure TfrmLoadArrivals.ConfirmedORDERLoad(Sender: TObject);
Var
  LoadNo          : Integer ;
  formConfirmLoad : TformConfirmLoad;
begin
 With dmArrivingLoads do
 Begin
  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
  Begin
   Exit ;
  End ;

  Try
  sq_IsLoadConfirmed.Close ;
  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadConfirmed.Open ;
  if sq_IsLoadConfirmed.Eof then
  Begin
   mtSelectedLoads.Active             := False ;
   mtSelectedLoads.Active             := True ;
   mtSelectedLoads.Insert ;
   mtSelectedLoadsLoadNo.AsInteger    := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
   mtSelectedLoadsLONo.AsInteger      := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
   mtSelectedLoadsLIPNo.AsInteger     := -1 ;
   mtSelectedLoadsCustomerNo.AsInteger:= -1 ;
   mtSelectedLoadsStatus.AsInteger    := 0 ;
   mtSelectedLoads.Post ;
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmLoad:= TformConfirmLoad.Create(Nil);
      Try
       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
       formConfirmLoad.OBJECTTYPE         :=  cdsArrivingLoadsOBJECTTYPE.AsInteger ;
       formConfirmLoad.LO_CUSTOMERNO      :=  cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmLoad.LO_SUPPLIERNO      :=  cdsArrivingLoadsSUPPLIERNO.AsInteger ;
       formConfirmLoad.AVROP_CUSTOMERNO   :=  cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger ;
       formConfirmLoad.LoadNo             :=  cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmLoad.OrderType          :=  cdsArrivingLoadsOrderType.AsInteger ;
       formConfirmLoad.ShowModal ;
       if formConfirmLoad.dxBarConfirmLoad.Enabled = False then
       Begin
        GetIntPrice(-1, 0,-1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
        TaBortAnkomstRegistreradeLaster(1) ;
       End ;
      Finally
       FreeAndNil(formConfirmLoad) ;
      End ;

     End
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
  End //check IS load confirmed
  else

   ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
   +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
  Finally
   sq_IsLoadConfirmed.Close ;
  End ;

 End ; //with
end;
*)

procedure TfrmLoadArrivals.acShowGroupBoxExecute(Sender: TObject);
begin
 if grdLoadsDBTableView1.OptionsView.GroupByBox then
  grdLoadsDBTableView1.OptionsView.GroupByBox:= False
   else
    grdLoadsDBTableView1.OptionsView.GroupByBox:= True ;
end;

procedure TfrmLoadArrivals.acExpandAllExecute(Sender: TObject);
begin
 grdLoadsDBTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadArrivals.acCollapseAllExecute(Sender: TObject);
begin
 grdLoadsDBTableView1.ViewData.Collapse(True);
end;

(*
procedure TfrmLoadArrivals.ConfirmManyINTADDLoads(Sender: TObject);
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
  if (ObjectType = 1) then // or (ObjectType = 0) then
  Begin
   if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter? (i annat fall går varorna till lagret som de är)',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ChangeToIMPProduct:= True
    else
    ChangeToIMPProduct:= False ;
  End
  else
  ChangeToIMPProduct:= False ;

  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;
  if fSelectLIP.ShowModal = mrOK then
  Begin
   LIPNo:= fSelectLIP.LIPNo ;
   if LIPNo < 1 then
   Begin
    ShowMessage('Du måste välja ett lager!') ;
    Exit ;
   End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmManyIntLoads.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       formConfirmManyIntLoads.Close ;
       FreeAndNil(formConfirmManyIntLoads) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;
   Finally
    mtSelectedLoads.Filtered  := False ;
   End ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;
 End ; //with
end;

*)

(*
procedure TfrmLoadArrivals.ConfirmManySALESLoads(Sender: TObject);
Var
  LIPNo                     : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try

//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//Ändring. Nu tas LIPNo från lagergrupp angiven på LO för att den skall hamna i rätt lager i LagerBalansen.
       formConfirmanyNormalLoad.LIPNo              := cdsArrivingLoadsLipNo.AsInteger ;//isNull(SP.LipNo,-1)                     AS LipNo,

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad (0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med andra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       formConfirmanyNormalLoad.Close ;
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;
//  End ;//if fSelectLIP.ShowModal = mrOK then
  Finally
   mtSelectedLoads.Filtered  := False ;
  End ;

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;
 End ; //with
end;


procedure TfrmLoadArrivals.ConfirmManyPOLoads(Sender: TObject);
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
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;

  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage('Du måste välja ett lager!') ;
   Exit ;
  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
       if LoadConfirmedOK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End ; //if LoadConfirmedOK then

      Finally
       formConfirmanyNormalLoad.Close ;
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;
   Finally
    mtSelectedLoads.Filtered  := False ;
   End ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;

 End ; //with
end;
*)

function TfrmLoadArrivals.SelectAvropsNrAttSkapaSalesLoadMot(const POLONo : Integer) : Integer ;
var fTradingLinkMult: TfTradingLinkMult;
Begin
 With dmArrivingLoads do
 Begin
  fTradingLinkMult:= TfTradingLinkMult.Create(nil) ;
  try
  fTradingLinkMult.POShippingPlanNo:= POLONo ;
  if fTradingLinkMult.ShowModal = mrOK then
   Result:= fTradingLinkMult.cds_AvropLinkAvropsnr.AsInteger
    else
     Result:= -1 ;
  finally
   FreeAndNil(fTradingLinkMult) ;
  end;
 End ;
End ;

(*
procedure TfrmLoadArrivals.ConfirmManyPOTRADINGLoads(Sender: TObject);
Var
  LIPNo, NewLoadNo,
  Sales_LONo                : Integer ;
  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg('Vill du ankomstregistrera markerade trading laster?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   LIPNo:= 10206 ;//GetSTDLIP!
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage('Load is not valid.') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

       Sales_LONo:= SelectAvropsNrAttSkapaSalesLoadMot(cdsArrivingLoadsLO.AsInteger) ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       if Sales_LONo > 1 then
       Begin
        formConfirmanyNormalLoad.ConfirmThisLoad(1 {1 = Trading}, Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
        if LoadConfirmedOK then
        Begin
         GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
         mtSelectedLoads.Edit ;
         mtSelectedLoadsStatus.AsInteger    := 1 ;
         mtSelectedLoads.Post ;
        End ; //if LoadConfirmedOK then
       End //if Sales_LONO..
       else
       Begin
        if Sales_LONo = -1 then
        ShowMessage('Avbryter.')
        else
        ShowMessage('Avbryt kan ej fortsätta ta bort tradingkoppling och försök igen.');

       End ;

      Finally
       formConfirmanyNormalLoad.Close ;
       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.') ;
    End //check IS load confirmed
      else
      ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
       +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;

  Finally
   mtSelectedLoads.Filtered  := False ;
  End ;

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;

 End ; //with
end;

*)

procedure TfrmLoadArrivals.TaBortAnkomstRegistreradeLaster(const AR_Status : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
//   if mtSelectedLoadsStatus.AsInteger = 1 then
//   While cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) do
   if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
   Begin
//    cdsArrivingLoads.Delete ;
    cdsArrivingLoads.Edit ;
    cdsArrivingLoadsLoadAR.AsInteger  :=  mtSelectedLoadsStatus.AsInteger ;
//    if mtSelectedLoadsLoadAR.AsInteger = 0 then
//    cdsArrivingLoadsLoadAR.AsInteger  := 1
//    else
//    cdsArrivingLoadsLoadAR.AsInteger  := 0 ;
    cdsArrivingLoads.Post ;
   End ;//if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
   mtSelectedLoads.Next ;
  End ;//while
 End ;//with
End ;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNotNormalLOType : Boolean ;
 Var i, RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE     : Integer ;
 EGEN         : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE', OBJECTTYPE, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger    := OBJECTTYPE ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y
//Är det fler än en record är valda laster av olika "sort"
 if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger < 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;


procedure TfrmLoadArrivals.ConfirmManyLoadsRegionToRegion(Sender: TObject) ;
Var
  LIPNo               : Integer;
  // formConfirmManyIntLoads   : TformConfirmManyIntLoads ;
  fSelectLIP          : TfRegionToRegionSelectLIPNo ;
  fAnkomstRegProgress : TfAnkomstRegProgress;
  Save_Cursor         : TCursor;
  // ChangeToIMPProduct        : Boolean ;
  ObjectType          : Integer;
  LoadAROK            : Boolean;
begin

  if MessageDlg('Vill du ankomstregistrera markerade laster?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      // ChangeToIMPProduct:= 0 ;

      // ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;

      InsertMarkedLoadsToTempTable(Sender, 0);
      fSelectLIP := TfRegionToRegionSelectLIPNo.Create(nil);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;
 //       fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger;
        fSelectLIP.OwnerNo        := cds_PropsVerkNo.AsInteger;
//        fSelectLIP.LoadDefaultLager;
        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo := fSelectLIP.LIPNo;
          if LIPNo < 1 then
          Begin
            ShowMessage('Du måste välja ett lager!');
            Exit;
          End;

          Try
            fAnkomstRegProgress.Show;
            mtSelectedLoads.Filter := 'LoadAR = 0';
            mtSelectedLoads.Filtered := True;
            Try
              mtSelectedLoads.First;
              While not mtSelectedLoads.Eof do
              Begin
                if cdsArrivingLoads.Locate('LoadNo;LO',
                  VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                  mtSelectedLoadsLONo.AsInteger]), []) then
                Begin
                  if IsRegionToRegionLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                    cdsArrivingLoadsLO.AsInteger,
                    cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                  Begin
                    ShowMessage('Load is not valid.');
                    Exit;
                  End;

                  Try
                    sq_IsEXTLoadConfirmed.Close;
                    sq_IsEXTLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                      dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                    sq_IsEXTLoadConfirmed.ParamByName('ShippingPlanNo')
                      .AsInteger := dmArrivingLoads.cdsArrivingLoadsLO.
                      AsInteger;
                    sq_IsEXTLoadConfirmed.Open;
                    if sq_IsEXTLoadConfirmed.Eof then
                    Begin
                      if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      Begin
                        // formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
                        Try
                          // LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
                          // LONo   := cdsArrivingLoadsLO.AsInteger ;
                          // formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                          // formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                          // formConfirmManyIntLoads.LIPNo              := LIPNo ;

                          // formConfirmManyIntLoads.Show ;
                          fAnkomstRegProgress.Show;
                          Application.ProcessMessages;
                          // formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
                          // TformConfirmanyNormalLoad
                          // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!

                          { if (mtSelectedLoadsImpOrt.AsInteger = 1) or (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
                            Begin
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 2
                            else
                            ChangeToIMPProduct:= 0 ;
                            End
                            else
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 1
                            else
                            ChangeToIMPProduct:= 0 ;
                            End

                            End
                            else
                            ChangeToIMPProduct:= 0 ; }

                          // LoadAROK  := ARINTADDLOLoadToLager(mtSelectedLoadsLoadNo.AsInteger, LIPNo, ChangeToIMPProduct) ;

                          LoadAROK :=
                            AR_ExternLoad(mtSelectedLoadsLoadNo.AsInteger,
                            1 { Status } , LIPNo, ThisUser.UserID);

                          if LoadAROK then
                          Begin
                            // Obs, laster som AR av externa kunder skall inte generera internpris!!
                            // GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 1;
                            mtSelectedLoads.Post;
                          End // if LoadAROK then
                          else
                          Begin
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 0;
                            mtSelectedLoads.Post;
                            ShowMessage
                              ('Lastnr ' + mtSelectedLoadsLoadNo.AsString +
                              ' kunde inte ankomstregistreras pga att status ändrats till preliminär');
                          End;

                        Finally
                          // formConfirmManyIntLoads.Close ;
                          // FreeAndNil(formConfirmManyIntLoads) ;
                        End;
                      End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      else
                        ShowMessage
                          ('Laststatus indikerar problem med lasten, kan inte ankomstregistreras.');
                    End // check IS load confirmed
                    else
                      ShowMessage('Lasten är redan ankomstregistrerad av ' +
                        Trim(sq_IsLoadConfirmedUserName.AsString) + ' den ' +
                        SqlTimeStampToStr('',
                        sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                  Finally
                    sq_IsEXTLoadConfirmed.Close;
                  End;

                End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
                mtSelectedLoads.Next;
              End; // While not mtSelectedLoads.Eof do

              TaBortAnkomstRegistreradeLaster(1);

            except
              On E: Exception do
              Begin
                dmsSystem.FDoLog(E.Message);
                ShowMessage
                  ('Ankomstregistrering misslyckades, kolla om lasten har ändrat status');
                // Raise ;
              End;
            end;

          Finally
            mtSelectedLoads.Filtered := False;
          End;
        End; // if fSelectLIP.ShowModal = mrOK then

      Finally
        FreeAndNil(fAnkomstRegProgress);
        FreeAndNil(fSelectLIP);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;
    End; // with
end;


function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeRegionToRegion: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  EGEN: Integer;
  LOTYP : String ;
begin
  Result                  := False;
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active  := False;
  mtSelectedLoads.Active  := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;

        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('EGEN').Index;
        EGEN := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LOTYP').Index;
        LOTYP := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OBJECTTYPE;LOTYP',
          VarArrayOf([ObjectType, EGEN]), []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoadsLOTYP.AsString       := LOTYP ;
 //         mtSelectedLoadsEGEN.AsInteger       := EGEN;
          mtSelectedLoads.Post;
        End;
      End; // for y
      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if (mtSelectedLoadsOBJECTTYPE.AsInteger >= 2) and
        (LOTYP = 'RtR') then
        Result := True
      else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNOTEGEN : Boolean ;
 Var i, RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE     : Integer ;
 EGEN         : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('EGEN').Index;
    EGEN      := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OBJECTTYPE;EGEN', VarArrayOf([OBJECTTYPE, EGEN]), []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger    := OBJECTTYPE ;
     mtSelectedLoadsEGEN.AsInteger          := EGEN ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y
//Är det fler än en record är valda laster av olika "sort"
 if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if (mtSelectedLoadsOBJECTTYPE.AsInteger = 2) and (mtSelectedLoadsEGEN.AsInteger = 0) then
     Result:= True
      else
       Result:= False ;
 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType : Boolean ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE,
 OrderType,
 Trading      : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OrderType').Index;
    OrderType   := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

       RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Trading').Index;
        Trading := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if ObjectType = 3 then
         ObjectType := 2 ;

    if not mtSelectedLoads.Locate('OBJECTTYPE;OrderType;Trading', VarArrayOf([OBJECTTYPE, OrderType, Trading]), []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger  := OBJECTTYPE ;
     mtSelectedLoadsOrderType.AsInteger   := OrderType ;
     mtSelectedLoadsTrading.AsInteger     := Trading  ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

//Är det fler än en record är valda laster av olika "sort"
  if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoadsOBJECTTYPE.AsInteger = 2 then
     Result:= True
      else
       Result:= False ;
 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameTRADINGType : Boolean ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 OBJECTTYPE,
 Trading      : Integer ;
begin
 Result:= False ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdLoadsDBTableView1.BeginUpdate ;
  grdLoadsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('OBJECTTYPE').Index;
    OBJECTTYPE  := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdLoadsDBTableView1.DataController.GetItemByFieldName('Trading').Index;
    Trading     := grdLoadsDBTableView1.DataController.Values[RecIdx, ColIdx];

    if not mtSelectedLoads.Locate('OrderType', Trading, []) then
    Begin
     mtSelectedLoads.Insert ;
     mtSelectedLoadsOBJECTTYPE.AsInteger  := OBJECTTYPE ;
     mtSelectedLoadsOrderType.AsInteger   := Trading ;
     mtSelectedLoads.Post ;
    End ;
   End ;//for y

//Är det fler än en record är valda laster av olika "sort"
  if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) then
  Result:= False
   else
    if mtSelectedLoads.RecordCount = 1 then
     Result:= True ;

 Finally
  grdLoadsDBTableView1.DataController.EndLocate ;
  grdLoadsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.acPrintTallyUSNoteExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INT_USA.RPT')
 else
 Begin
  Try
  dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
    mePackageNo.SetFocus ;
 End ;
end;

procedure TfrmLoadArrivals.acConfirmOneLoadExecute(Sender: TObject);
begin
{ With dmArrivingLoads do
 Begin
  if cdsArrivingLoadsObjectType.AsInteger = 2 then
   ConfirmedORDERLoad(Sender)
    else
     ConfirmedINTLoad(Sender) ;
 End ;//with
 }
end;

procedure TfrmLoadArrivals.PrintDirectFS(Sender: TObject);
var
(*
  FormCRPrintOneReport  : TFormCRPrintOneReport;
  A : array of variant;
  ReportType: Integer;
  LoadNo: Integer;
  Lang: Integer;
  FR: TFastReports;
  CustomerNo: integer;
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
    loadNo := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
    if loadNo < 1 then
      Exit;
    loads := TList<integer>.create;
    SalesRegion := TdmFRSystem.CompanyNoFromUser(ThisUser.UserID, dmsConnector.FDConnection1);
    NoOfCopies := 0;
    try
      loads.Add(loadNo);
      if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
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

    NoOfCopies := 0;
    CustomerNo := dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger;
    if CustomerNo < 1 then
      CustomerNo := dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger;
    Lang := dmsContact.getCustomerLanguage(CustomerNo);
    LoadNo := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
    if LoadNo < 1 then
      Exit;

    if uReportController.useFR then
    begin
      try
        FR := TFastReports.CreateForPrint(False);
        if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
        begin
          ReportType := cFoljesedelIntern;
          FR.Tally(LoadNo, ReportType, Lang, '', '', '', NoOfCopies);
        end
        else
        begin
          ReportType := cFoljesedel;
          FR.Tally_Pkg_Matched(LoadNo, ReportType, Lang, '', '', '', NoOfCopies)
        end;
      finally
        FreeAndNil(FR);
      end;
    end
    else
    begin
      FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
      Try
        // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

        SetLength(A, 1);
        A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
        if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
          FormCRPrintOneReport.CreateCo(1, False, False, A,
            'TALLY_INTERNAL_VER3_NOTE.RPT')
        else
        Begin
          Try
            dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
              dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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

procedure TfrmLoadArrivals.acPrepareScanExecute(Sender: TObject);
begin
  mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acPrintDirectFSExecute(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender, 0);
      mtSelectedLoads.First;
      While not mtSelectedLoads.Eof do
      Begin
        if cdsArrivingLoads.Locate('LoadNo;LO',
          VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
          mtSelectedLoadsLONo.AsInteger]), []) then
        Begin
          PrintDirectFS(Sender);
        End; // if cdsArrivingLoads.Locate...
        mtSelectedLoads.Next;
      End; // While not mtSelectedLoads.Eof do
    Finally
      cdsArrivingLoads.EnableControls;
      mePackageNo.SetFocus;
    End;
  End; // With
end;

procedure TfrmLoadArrivals.PrintDirectFS_USA(Sender: TObject);
var
  FormCRPrintOneReport  : TFormCRPrintOneReport;
    A : array of variant;
begin
 if dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger < 1 then exit ;
 FormCRPrintOneReport:= TFormCRPrintOneReport.Create(Nil);
 Try
//CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

 SetLength(A, 1);
 A[0]:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
 if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
 FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_INT_USA.RPT')
 else
 Begin
  Try
  dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
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
end;

procedure TfrmLoadArrivals.acPrintDirectFS_USAExecute(Sender: TObject);
Var Save_Cursor  : TCursor;
begin
 with dmArrivingLoads do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  Try
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    PrintDirectFS_USA(Sender) ;
   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 Finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  mePackageNo.SetFocus ;
 End ;
 End ;//With
end;

procedure TfrmLoadArrivals.acSamlingsFS_USAExecute(Sender: TObject);
begin
 GetMarkedLoads (Sender) ;
 if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation_USA(Sender, ThisUser.UserID) ;
 mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.acScannedErrorsExecute(Sender: TObject);
begin
  if not Assigned(PkgNrExceptionList) then
  Begin
    PkgNrExceptionList := TPkgNrExceptionList.Create(Nil) ;
  End;

  PkgNrExceptionList.CurrentAppName := AppFormName ;
  PkgNrExceptionList.Show;
end;

procedure TfrmLoadArrivals.Timer1Timer(Sender: TObject);
begin
// grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdLoadsDBTableView1.DataController.SetFocus ;
// grdLoads.SetFocus ;
// Edit1.SetFocus ;
// Timer1.Enabled:= False ;
end;

procedure TfrmLoadArrivals.Timer2Timer(Sender: TObject);
begin
// grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
// grdLoadsDBTableView1.DataController.SetFocus ;
// grdLoads.SetFocus ;
// Edit2.SetFocus ;
// Timer2.Enabled:= False ;
end;

procedure TfrmLoadArrivals.Timer3Timer(Sender: TObject);
begin
 mePackageNo.SetFocus ;
 Timer3.Enabled := False ;
end;

procedure TfrmLoadArrivals.acGetIntPricesExecute(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
//   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
//   Begin
//    if UndoConfirmLoad then
//    Begin
   if IsLoadAvraknad(mtSelectedLoadsLoadNo.AsInteger) = False then
     GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
//     mtSelectedLoads.Edit ;
//     mtSelectedLoadsStatus.AsInteger  := 1 ;
//     mtSelectedLoads.Post ;
//    End ; //if LoadConfirmedOK then
//   End ;//if cdsArrivingLoads.Locate...
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do
 cdsArrivingPackages.Active:= False ;
 cdsArrivingPackages.Close ;
 cdsArrivingPackages.ParamByName('LoadNo').AsInteger          := cdsArrivingLoadsLOADNO.AsInteger ;
 cdsArrivingPackages.ParamByName('ShippingPlanNo').AsInteger  := cdsArrivingLoadsLO.AsInteger ;
 cdsArrivingPackages.Open ;
 cdsArrivingPackages.Active:= True ;
 End ;
 mePackageNo.SetFocus ;
end;


procedure TfrmLoadArrivals.acNumPadExecute(Sender: TObject);
begin
     if  not tkNumPad.Visible then
      begin
       tkNumPad.Visible := True;
       mePackageNo.SetFocus;
      end
     else
      begin
       tkNumPad.Visible := False;
       mePackageNo.SetFocus;
      end;
end;

procedure TfrmLoadArrivals.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString        := Self.Name ;
  cds_PropsUserID.AsInteger     := ThisUser.UserID ;
  cds_PropsNewItemRow.AsInteger := 0 ;
  cds_PropsVerkNo.AsInteger     := ThisUser.CompanyNo ;
end;

procedure TfrmLoadArrivals.cds_PropsAfterPost(DataSet: TDataSet);
begin
 With dmArrivingLoads do
 Begin
  CustomerNo        :=  cds_PropsVerkNo.AsInteger ;
  SHIPTOINVPOINTNO  :=  cds_PropsBookingTypeNo.AsInteger ;
 End;
end;

procedure TfrmLoadArrivals.cds_PropsAfterScroll(DataSet: TDataSet);
begin
 With dmArrivingLoads do
 Begin
  CustomerNo        :=  cds_PropsVerkNo.AsInteger ;
  SHIPTOINVPOINTNO  :=  cds_PropsBookingTypeNo.AsInteger ;
 End;
end;

procedure TfrmLoadArrivals.acConfirmOneLoadUpdate(Sender: TObject);
begin
 With dmArrivingLoads do
 Begin
  acConfirmOneLoad.Enabled  := (bcConfirmedv2.ItemIndex = 0) and (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0)
  and (cdsArrivingLoadsLoadAR.AsInteger = 0)
  and (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2) ;
 End ;
end;

procedure TfrmLoadArrivals.acPrintExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200) ;
end;

procedure TfrmLoadArrivals.grdLoadsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  NoOfPackages      : integer;
  PackagesConfirmed : integer;
  LoadAR : Integer ;
  iObjectType: Integer;
  iObjectType2: Integer;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('OBJECTTYPE');
  iObjectType := ARecord.Values[AColumn.Index];
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ORDERTYPE');
  iObjectType2 := ARecord.Values[AColumn.Index];
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('LoadAR');
  if ARecord.Values[AColumn.Index] <> null then
    LoadAR := ARecord.Values[AColumn.Index]
  else
    LoadAR := -1;

  { iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
    iObjectType2 := ANode.Values[iObjectTypeColumn2];

    iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
    iObjectType := ANode.Values[iObjectTypeColumn]; }

  // if ANode.Values[iObjectTypeColumn] <> null then
  Begin
    // Set the color for this row, based on LO status
    if iObjectType2 = 1 then
      iObjectType := 4;

    // if AColor <> clOlive then
    // AColor :=
    Case iObjectType of
      0:
        AStyle := cxStyle_0;
      1:
        AStyle := cxStyle_1;
      4:
        AStyle := cxStyle_4;
    End;
    if LoadAR = 1 then
      AStyle := cxStyleLoadAR;
  End;

(*  AColumn       := (Sender as TcxGridDBTableView).GetColumnByFieldName('NoOfPackages') ;
  NoOfPackages   := ARecord.Values[AColumn.Index] ;
  AColumn       := (Sender as TcxGridDBTableView).GetColumnByFieldName('PackagesConfirmed') ;
  PackagesConfirmed  := ARecord.Values[AColumn.Index] ;
  if PackagesConfirmed > 0 then
   AStyle :=   cxStyleAvraknad ; //Gul
  if NoOfPackages = PackagesConfirmed then
   AStyle := cxStyleGreen ; *)
end;

procedure TfrmLoadArrivals.grdPkgsDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

Var
  PackageNo, Scanned : Integer ;
  Used  : Integer ;
begin


    if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Scanned').Index] <> null then
       Scanned  := ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Scanned').Index];
    //else
      // Scanned  := 0 ;

     if Scanned = 0 then
        AStyle := cxStyleAvraknad
     else if Scanned = 1 then
        Astyle := cxStyleBlue
end;

procedure TfrmLoadArrivals.grdPkgsDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
if (Assigned(dmArrivingLoads)) then
 With dmArrivingLoads do
 AText  := IntToStr(GetNoOfPkgs) ;
end;

procedure TfrmLoadArrivals.CopyLoadToOtherSalesRegion(const LoadNo, LONo  : Integer);
Var
  PO_LONo, NewLoadNo: Integer;
begin

  // ToDo ! Gör en kontroll att avropen matchar med orderlineno!!

  With dmArrivingLoads do
  Begin
    NewLoadNo := dmsSystem.POLoadConfirmed(LoadNo,  PO_LONo);
    if NewLoadNo = 0 then
    Begin
      PO_LONo := GetPOLoNoInRegionToRegion(LONo); // SelectAvropsNrAttSkapaSalesLoadMot

      if PO_LONo > 0 then
      Begin
        NewLoadNo := CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
          (LoadNo, PO_LONo, 1);
        if NewLoadNo > 0 then
          ShowMessage('The Load was copied to other sales region ' +
            inttostr(PO_LONo) + ', Load# ' + inttostr(NewLoadNo));
      End;
    End
    else
      ShowMessage('The load is already copied to other sales region ' +
        inttostr(PO_LONo) + ', Load# ' + inttostr(NewLoadNo));
  End;
end;

procedure TfrmLoadArrivals.AR_Sales_Loads(Sender: TObject);
Var
  LIPNo,
  NewLoadNo                 : Integer ;
//  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;

begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_12' (* 'Vill du ankomstregistrera markerade laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin

  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  Try
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_13' (* 'Load is not valid.' *) )) ;
     Exit ;
    End ;

    if cdsArrivingLoadsLipNo.AsInteger = -1 then
    Begin
     ShowMessage('LO saknar lagergrupp') ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try

//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
//       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//Ändring. Nu tas LIPNo från lagergrupp angiven på LO för att den skall hamna i rätt lager i LagerBalansen.
//       formConfirmanyNormalLoad.LIPNo              := cdsArrivingLoadsLipNo.AsInteger ;//isNull(SP.LipNo,-1)                     AS LipNo,

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
//       formConfirmanyNormalLoad.ConfirmThisLoad (0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med andra ord flyta till efter loopen!
       NewLoadNo  := ex_AR_SALES_Loads(mtSelectedLoadsLoadNo.AsInteger, cdsArrivingLoadsLipNo.AsInteger) ;


 //Inserting LoadNo to PkgInvStat
       Run_insPkgInvStatByLoad(mtSelectedLoadsLoadNo.AsInteger) ;



       if NewLoadNo > 0 then
       Begin
//        SetLoadAs_AR(mtSelectedLoadsLoadNo.AsInteger) ;
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;

        if mtSelectedLoadsTrading.AsInteger = 2 then
                 Begin
                  // dmsSystem.FDoLog('CopyRtR, NewLoadNo = ' + inttostr(NewLoadNo) + ' - mtSelectedLoadsLONo.AsInteger = ' + mtSelectedLoadsLONo.AsString);
                   dmArrivingLoads.CopyRtR(mtSelectedLoadsLONo.AsInteger) ;

                   CopyLoadToOtherSalesRegion(NewLoadNo, mtSelectedLoadsLONo.AsInteger) ;
                 End;
       End  //if NewLoadNo > 0 then
       else
       Begin
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 0 ;
        mtSelectedLoads.Post ;
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_14' (* 'Lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_15' (* ' kunde inte ankomstregistreras pga att status ändrats till preliminär' *) )) ;
       End ;

      Finally
//       formConfirmanyNormalLoad.Close ;
//       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_16' (* 'Laststatus indikerar problem med lasten, kan inte ankomstregistreras.' *) )) ;
    End //check IS load confirmed
      else
      ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_17' (* 'Lasten är redan ankomstregistrerad av ' *) )+Trim(sq_IsLoadConfirmedUserName.AsString)
       +siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_18' (* ' den ' *) )+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;
//  End ;//if fSelectLIP.ShowModal = mrOK then

  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_19' (* 'Ankomstregistrering misslyckades, kolla om lasten har ändrat status' *) ));
//    Raise ;
   End ;
  end;

  Finally
   mtSelectedLoads.Filtered  := False ;
  End ;

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;

 End ; //with
end;

procedure TfrmLoadArrivals.AR_INTADDLoads(Sender: TObject) ;
Var
  LIPNo                     : Integer ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress ;
  Save_Cursor               : TCursor ;
  ChangeToIMPProduct        : Integer ;
//  ObjectType                : Integer ;
  LoadAROK                  : Boolean ;
begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_12' (* 'Vill du ankomstregistrera markerade laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  ChangeToIMPProduct:= 0 ;

//  ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;



  InsertMarkedLoadsToTempTable (Sender, 0) ;

      if not DoesAllLoadsHaveSameLIPNo then
      Begin
            ShowMessage('Not all loads selected have the same inventory group target, do those loads separately.');
            Exit;
      End;

  fSelectLIP          := TfSelectLIP.Create(nil);
  fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;
  if fSelectLIP.ShowModal = mrOK then
  Begin
   LIPNo:= fSelectLIP.LIPNo ;
   if LIPNo < 1 then
   Begin
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_21' (* 'Du måste välja ett lager!' *) )) ;
    Exit ;
   End ;

  Try
  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_13' (* 'Load is not valid.' *) )) ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
//       formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//       formConfirmManyIntLoads.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
//       formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!

        //Inserting LoadNo to PkgInvStat table
       Run_insPkgInvStatByLoad(mtSelectedLoadsLoadNo.AsInteger) ;

        if (mtSelectedLoadsImpOrt.AsInteger = 1) or (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
        Begin
         if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
         Begin
          if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_23' (* 'Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_24' (* '? (i annat fall går varorna till lagret som de är)' *) ),
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ChangeToIMPProduct:= 2
           else
           ChangeToIMPProduct:= 0 ;
         End
         else
         if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
         Begin
          if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_23' (* 'Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_24' (* '? (i annat fall går varorna till lagret som de är)' *) ),
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ChangeToIMPProduct:= 1
           else
           ChangeToIMPProduct:= 0 ;
         End

        End
        else
        ChangeToIMPProduct:= 0 ;

        LoadAROK  := ARINTADDLOLoadToLager(mtSelectedLoadsLoadNo.AsInteger, LIPNo, ChangeToIMPProduct) ;
       if LoadAROK then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End  //if LoadAROK then
       else
       Begin
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 0 ;
        mtSelectedLoads.Post ;
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_14' (* 'Lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_15' (* ' kunde inte ankomstregistreras pga att status ändrats till preliminär' *) )) ;
       End ;

      Finally
//       formConfirmManyIntLoads.Close ;
//       FreeAndNil(formConfirmManyIntLoads) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_16' (* 'Laststatus indikerar problem med lasten, kan inte ankomstregistreras.' *) )) ;
    End //check IS load confirmed
      else
      ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_17' (* 'Lasten är redan ankomstregistrerad av ' *) )+Trim(sq_IsLoadConfirmedUserName.AsString)
       +siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_18' (* ' den ' *) )+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;

  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_19' (* 'Ankomstregistrering misslyckades, kolla om lasten har ändrat status' *) ));
//    Raise ;
   End ;
  end;

   Finally
    mtSelectedLoads.Filtered  := False ;
   End ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;
 End ; //with
end;

procedure TfrmLoadArrivals.AR_PO_Loads(Sender: TObject);
Var
  LIPNo,
  NewLoadNo                 : Integer ;
//  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_12' (* 'Vill du ankomstregistrera markerade laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fSelectLIP:= TfSelectLIP.Create(nil);
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;

  if fSelectLIP.ShowModal = mrOK then
  Begin
  LIPNo:= fSelectLIP.LIPNo ;
  if LIPNo < 1 then
  Begin
   ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_21' (* 'Du måste välja ett lager!' *) )) ;
   Exit ;
  End ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_13' (* 'Load is not valid.' *) )) ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
//       formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
//       TformConfirmanyNormalLoad
        NewLoadNo  := ex_AR_SALES_Loads(mtSelectedLoadsLoadNo.AsInteger, LIPNo) ;

//Inserting LoadNo to PkgInvStat Table
       Run_insPkgInvStatByLoad(mtSelectedLoadsLoadNo.AsInteger) ;

//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
       if NewLoadNo > 0 then
       Begin
        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End  //if NewLoadNo > 0 then
       else
       Begin
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 0 ;
        mtSelectedLoads.Post ;
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_14' (* 'Lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_15' (* ' kunde inte ankomstregistreras pga att status ändrats till preliminär' *) )) ;
       End ;

      Finally
//       formConfirmanyNormalLoad.Close ;
//       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_16' (* 'Laststatus indikerar problem med lasten, kan inte ankomstregistreras.' *) )) ;
    End //check IS load confirmed
      else
      ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_17' (* 'Lasten är redan ankomstregistrerad av ' *) )+Trim(sq_IsLoadConfirmedUserName.AsString)
       +siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_18' (* ' den ' *) )+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;
   Finally
    mtSelectedLoads.Filtered  := False ;
   End ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;

 End ; //with
end;

procedure TfrmLoadArrivals.AR_TRADING_POLoads(Sender: TObject);
Var
  LIPNo, NewLoadNo,
  Sales_LONo                : Integer ;
//  formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress;
  Save_Cursor               : TCursor;
  LoadConfirmed             : Boolean ;
begin
 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_41' (* 'Vill du ankomstregistrera markerade trading laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fAnkomstRegProgress:= TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;

  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   LIPNo:= 10206 ;//GetSTDLIP!
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_13' (* 'Load is not valid.' *) )) ;
     Exit ;
    End ;

   Try
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if sq_IsLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
      Try
//       formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//       formConfirmanyNormalLoad.LIPNo              := LIPNo ;

       Sales_LONo:= SelectAvropsNrAttSkapaSalesLoadMot(cdsArrivingLoadsLO.AsInteger) ;

       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
       if Sales_LONo > 1 then
       Begin
//        formConfirmanyNormalLoad.ConfirmThisLoad(1 {1 = Trading}, Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
        LoadConfirmed  := AR_TRADING_PO_Loads(Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
//       TformConfirmanyNormalLoad

//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
        if LoadConfirmed then
        Begin
         GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
         mtSelectedLoads.Edit ;
         mtSelectedLoadsStatus.AsInteger    := 1 ;
         mtSelectedLoads.Post ;
        End ; //if LoadConfirmedOK then
       End //if Sales_LONO..
       else
       Begin
        if Sales_LONo = -1 then
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_43' (* 'Avbryter.' *) ))
        else
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_44' (* 'Avbryt kan ej fortsätta ta bort tradingkoppling och försök igen.' *) ));
(*
        fSelectLIP:= TfSelectLIP.Create(nil);
        Try
        fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
        fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
        fSelectLIP.LoadDefaultLager ;

        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo:= fSelectLIP.LIPNo ;
          if LIPNo < 1 then
          Begin
           ShowMessage('Du måste välja ett lager!') ;
           Exit ;
          End ;
           formConfirmanyNormalLoad.LIPNo              := LIPNo ;
           formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
           if LoadConfirmedOK then
           Begin
            GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
            mtSelectedLoads.Edit ;
            mtSelectedLoadsStatus.AsInteger    := 1 ;
            mtSelectedLoads.Post ;
           End ; //if LoadConfirmedOK then
        End ;//if fSelectLIP.ShowModal = mrOK then
        Finally
         FreeAndNil(fSelectLIP) ;
        End ; *)
       End ;

      Finally
//       formConfirmanyNormalLoad.Close ;
//       FreeAndNil(formConfirmanyNormalLoad) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_16' (* 'Laststatus indikerar problem med lasten, kan inte ankomstregistreras.' *) )) ;
    End //check IS load confirmed
      else
      ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_17' (* 'Lasten är redan ankomstregistrerad av ' *) )+Trim(sq_IsLoadConfirmedUserName.AsString)
       +siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_18' (* ' den ' *) )+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;

  Finally
   mtSelectedLoads.Filtered  := False ;
  End ;

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;

 End ; //with
end;

procedure TfrmLoadArrivals.SetLoadAs_AR(const LoadNo : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
   if cdsArrivingLoads.Locate('LoadNo', LoadNo, []) then
   Begin
    cdsArrivingLoads.Edit ;
    cdsArrivingLoadsLoadAR.AsInteger  :=  1 ;
    cdsArrivingLoads.Post ;
   End ;//if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
 End ;//with
End ;

procedure TfrmLoadArrivals.RefreshOrter ;
begin
// if cds_PropsVerkNo.AsInteger > 0 then
 Begin
// if SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
//   SupplierNo := cds_PropsVerkNo.AsInteger ;

  sq_City.Active  := False ;
  if ((not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)) then
  sq_City.ParamByName('OwnerNo').AsInteger  := cds_PropsClientNo.AsInteger
  else
  sq_City.ParamByName('OwnerNo').AsInteger  := 0 ;
  sq_City.Active  := True ;
 End ;
end;

procedure TfrmLoadArrivals.RefreshDest ;
begin
// if cds_PropsVerkNo.AsInteger > 0 then
 Begin
// if SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
//   SupplierNo := cds_PropsVerkNo.AsInteger ;

  sq_Dest.Active  := False ;
  if ((not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0)) then
  sq_Dest.ParamByName('OwnerNo').AsInteger  := cds_PropsVerkNo.AsInteger
  else
  sq_Dest.ParamByName('OwnerNo').AsInteger  := 0 ;
  sq_Dest.Active  := True ;
 End ;
end;

procedure TfrmLoadArrivals.cds_PropsVerkNoChange(Sender: TField);
begin
 RefreshDest ;
end;

procedure TfrmLoadArrivals.cds_PropsClientNoChange(Sender: TField);
begin
 RefreshOrter ;
end;

procedure TfrmLoadArrivals.EmptyGrid ;
var
  Save_Cursor : TCursor;
  LoadNo      : Integer ;
begin
 Save_Cursor := Screen.Cursor ;
 With dmArrivingLoads do
 Begin
 lcSlutKund.PostEditValue ;
 lcDestination.PostEditValue ;
 lcInternKund.PostEditValue ;
 lcLaststlle.PostEditValue ;
 lcVerk.PostEditValue ;
 bcConfirmedv2.PostEditValue ;

 cdsArrivingLoads.DisableControls ;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
 dsrcArrivingLoads.DataSet:= Nil ;
 Try
//  if cds_PropsVerkNo.AsInteger > 0 then
//  Begin
//   LoadNo                       := cdsArrivingLoadsLoadNo.AsInteger ;
   cdsArrivingLoads.Active      := False ;
   BuildARQuery (1, 1) ;
   cdsArrivingLoads.Active      := True ;
//   cdsArrivingLoads.FindKey([LoadNo]) ;
   RefreshArrivingPackages ;
//  end ;
 finally
  dsrcArrivingLoads.DataSet:= cdsArrivingLoads ;
 end;
 finally
  cdsArrivingLoads.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfrmLoadArrivals.ConfirmManyLoadsPurchasedFromVW(Sender: TObject);
Var
  LIPNo                     : Integer ;
//  formConfirmManyIntLoads   : TformConfirmManyIntLoads ;
  fSelectLIP                : TfSelectLIP ;
  fAnkomstRegProgress       : TfAnkomstRegProgress ;
  Save_Cursor               : TCursor ;
//  ChangeToIMPProduct        : Boolean ;
  ObjectType                : Integer ;
  LoadAROK                  : Boolean ;
begin

 if MessageDlg(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_12' (* 'Vill du ankomstregistrera markerade laster?' *) ),
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmArrivingLoads do
 Begin
//  ChangeToIMPProduct:= 0 ;

//  ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;

  InsertMarkedLoadsToTempTable (Sender, 0) ;
  fSelectLIP          := TfSelectLIP.Create(nil);
  fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
  Try
  grdLoadsDBTableView1.DataController.DataSource:= Nil ;
  fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
  fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsAvropCustomerNo.AsInteger ;
  fSelectLIP.LoadDefaultLager ;
  if fSelectLIP.ShowModal = mrOK then
  Begin
   LIPNo:= fSelectLIP.LIPNo ;
   if LIPNo < 1 then
   Begin
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_21' (* 'Du måste välja ett lager!' *) )) ;
    Exit ;
   End ;

  Try
  fAnkomstRegProgress.Show ;
  mtSelectedLoads.Filter    := 'LoadAR = 0' ;
  mtSelectedLoads.Filtered  := True ;
  Try
  mtSelectedLoads.First ;
  While not mtSelectedLoads.Eof do
  Begin
   if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   Begin
    if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger, cdsArrivingLoadsLO.AsInteger, cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
    Begin
     ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_13' (* 'Load is not valid.' *) )) ;
     Exit ;
    End ;

   Try
    sq_IsEXTLoadConfirmed.Close ;
    sq_IsEXTLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger ;
    sq_IsEXTLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger ;
    sq_IsEXTLoadConfirmed.Open ;
    if sq_IsEXTLoadConfirmed.Eof then
    Begin
     if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
     Begin
//      formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
      Try
//       LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
//       LONo   := cdsArrivingLoadsLO.AsInteger ;
//       formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
//       formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
//       formConfirmManyIntLoads.LIPNo              := LIPNo ;

//       formConfirmManyIntLoads.Show ;
       fAnkomstRegProgress.Show ;
       Application.ProcessMessages ;
//       formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
//       TformConfirmanyNormalLoad
//göra det här när alla laster är OK, med nadra ord flyta till efter loopen!


{        if (mtSelectedLoadsImpOrt.AsInteger = 1) or (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
        Begin
         if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
         Begin
          if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ChangeToIMPProduct:= 2
           else
           ChangeToIMPProduct:= 0 ;
         End
         else
         if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
         Begin
          if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ChangeToIMPProduct:= 1
           else
           ChangeToIMPProduct:= 0 ;
         End

        End
        else
        ChangeToIMPProduct:= 0 ; }

//        LoadAROK  := ARINTADDLOLoadToLager(mtSelectedLoadsLoadNo.AsInteger, LIPNo, ChangeToIMPProduct) ;

       LoadAROK :=  AR_ExternLoad(mtSelectedLoadsLoadNo.AsInteger,  1{Status}, LIPNo, ThisUser.UserID) ;

       if LoadAROK then
       Begin
//Obs, laster som AR av externa kunder skall inte generera internpris!!
//        GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 1 ;
        mtSelectedLoads.Post ;
       End  //if LoadAROK then
       else
       Begin
        mtSelectedLoads.Edit ;
        mtSelectedLoadsStatus.AsInteger    := 0 ;
        mtSelectedLoads.Post ;
        ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_14' (* 'Lastnr ' *) ) + mtSelectedLoadsLoadNo.AsString + siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_15' (* ' kunde inte ankomstregistreras pga att status ändrats till preliminär' *) )) ;
       End ;

      Finally
//       formConfirmManyIntLoads.Close ;
//       FreeAndNil(formConfirmManyIntLoads) ;
      End ;
     End //if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
      else
       ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_16' (* 'Laststatus indikerar problem med lasten, kan inte ankomstregistreras.' *) )) ;
    End //check IS load confirmed
      else
      ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_17' (* 'Lasten är redan ankomstregistrerad av ' *) )+Trim(sq_IsLoadConfirmedUserName.AsString)
       +siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_18' (* ' den ' *) )+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
   Finally
    sq_IsEXTLoadConfirmed.Close ;
   End ;

   End ;//if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
   mtSelectedLoads.Next ;
  End ;//While not mtSelectedLoads.Eof do

   TaBortAnkomstRegistreradeLaster(1) ;

  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(siLangLinked_frmLoadArrivals.GetTextOrDefault('IDS_19' (* 'Ankomstregistrering misslyckades, kolla om lasten har ändrat status' *) ));
//    Raise ;
   End ;
  end;

   Finally
    mtSelectedLoads.Filtered  := False ;
   End ;
  End ;//if fSelectLIP.ShowModal = mrOK then

  Finally
   FreeAndNil(fAnkomstRegProgress) ;
   FreeAndNil(fSelectLIP) ;
   grdLoadsDBTableView1.DataController.DataSource:= dsrcArrivingLoads ;
  End ;
 End ; //with
end;

procedure TfrmLoadArrivals.SetLagerPosOnMarkedPkgs(const LagerPos : Integer) ;
 Var
 i,
 RecIDX  : Integer ;
 Save_Cursor    : TCursor;
 ColIdx         : Integer ;
 PackageNo      : Integer ;
 Prefix         : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtSelectedLoads.Active:= False ;
 mtSelectedLoads.Active:= True ;
 with dmArrivingLoads do
 Begin
  grdPkgsDBTableView1.BeginUpdate ;
  grdPkgsDBTableView1.DataController.BeginLocate ;
  Try
   For I := 0 to grdPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx      := grdPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPkgsDBTableView1.DataController.GetItemByFieldName('PACKAGE_NO').Index;
    PackageNo   := grdPkgsDBTableView1.DataController.Values[RecIdx, ColIdx];

    RecIDx      := grdPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx      := grdPkgsDBTableView1.DataController.GetItemByFieldName('SUPPLIERCODE').Index;
    Prefix      := grdPkgsDBTableView1.DataController.Values[RecIdx, ColIdx];

    dmsSystem.SetPkgPositionID(PackageNo, LagerPos, Prefix) ;


   End ;//for y


 Finally
  grdPkgsDBTableView1.DataController.EndLocate ;
  grdPkgsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

 End ;//with
end;

procedure TfrmLoadArrivals.LoadLagerPos ;
Begin
 with dmsSystem, dmArrivingLoads do
 Begin
  TcxComboBoxProperties(grdPkgsDBTableView1Info2.Properties).Items.Clear ;
  with sp_LagerPos do
  begin
//    DisableControls;
    PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger) ;
    sp_LagerPos.ParamByName('@PIPNo').AsInteger  := PIPNo ;
    Active  := True ;
    Try
    First;
    while not Eof do
    begin
      TcxComboBoxProperties(grdPkgsDBTableView1Info2.Properties).Items.Add(FieldByName('PositionName').AsString);
      Next;
    end;
    Finally
  //   Active  := False ;
    End ;
//    EnableControls;
  end;
 End;
End ;

procedure TfrmLoadArrivals.mePackageNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var NuTid           : TTime ;
    ManualKeyBoard  : Integer ;
begin
 NuTid  := Time ;
   if Length(mePackageNo.Text) < 2 then
  LastTime  := NuTid ;

 if Length(mePackageNo.Text) > 1 then
  SecondsBetweenKeyPressed  := (NuTid - LastTime) * 1000 ;

 if SecondsBetweenKeyPressed > 0.01 then
 Begin
  ManualKeyBoard            := 1 ;
  cxLabelEntryMetod.Caption := 'Manual' ;
 End
   else
    Begin
      ManualKeyBoard            := 0 ;
      cxLabelEntryMetod.Caption := 'Scanned' ;
    End;

 if Key <> VK_RETURN then Exit;

 if Length(mePackageNo.Text) > 0 then
  GetpackageNoEntered(Sender, mePackageNo.Text, ManualKeyBoard) ;

 LastTime         := NuTid ;
 Timer3.Enabled   := True ;
 mePackageNo.Text := '' ;

end;

function TfrmLoadArrivals.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3) : TEditAction;
  Var Res_UserName : String;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmArrivingLoads.PkgNoToSuppCodeAR (PkgNo, cds_PropsVerkNo.AsInteger);

    if PkgSupplierCode = '' then
    Begin
     Result := eaREJECT;
    End
    else

//  check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo,
    PkgSupplierCode,
    'TfrmLoadArrivals', //Self.Name,
    Res_UserName          ) = ThisUser.UserName + '/' + 'TfrmLoadArrivals' //{ NO_USER_HAS_THIS_PACKAGE_RESERVED }
    then
     begin
      Result := eaACCEPT ;
     end
    else
    begin
      MessageBeep(MB_ICONEXCLAMATION);
      Result := eaReserved ; //eaREJECT;
    end;
end;

procedure TfrmLoadArrivals.GetpackageNoEntered(Sender: TObject;const PackageNo : String;const Scanned : Integer) ;
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
  PktNrLevKod       : String3 ;//Lev koden i paketnrsträngen
  ErrorText         : String ;
  LoadNo            : Integer ;
  ErrorCode         : Integer ;
  NumberPrefix      : String ;
begin
 With dmArrivingLoads do
 Begin
  NewPkgNo  := 0 ;
  ErrorCode := 0 ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   if Length(Trim(PackageNo)) > 0 then
   Begin
    if Length(Trim(PackageNo)) > 10 then
    Begin //LÅNGA KODEN
     Try
     Action := eaAccept ;
     dmsSystem.ParsePkgID(PackageNo, NewPkgNo, PkgSupplierCode, NumberPrefix) ;
   //  NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
     Except
      on E: EConvertError do
      Begin
         ShowMessage(E.ClassName + E.Message);
         ErrorText  := E.ClassName + E.Message ;
         ErrorCode  := 1 ;
      End;
     End ;

     if NewPkgNo < 1 then
      Begin
       Action     :=  eaREJECT ;
       ErrorText  := 'PkgNo = ' + inttostr(NewPkgNo) ;
       ErrorCode  := 1 ;
      End;

     if Length(PkgSupplierCode) < 1 then
     Begin
       Action     :=  eaREJECT ;
       ErrorText  := 'Prefix = ' + PkgSupplierCode ;
       ErrorCode  := 1 ;
     End;


 //    PktNrLevKod      := Copy(PackageNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
 //    PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;


     //if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
       if Action =  eaAccept then
       Begin
         if Assigned(frmPosition) then
         Begin
         frmPosition.Mem_PackProdList.IndexName := 'Mem_packlistindex01';
         Try
         if frmPosition.Mem_PackProdList.FindKey([NewPkgNo, PkgSupplierCode]) then
          Begin
            Action      := eaDuplicate ;
            Errortext   :=  'Paketnr redan scannad ' ;
            ErrorCode   :=  1 ;
          End ;
         Finally
            Mem_PackProdList.IndexName := 'DateCreated';
         End;
       End;


       LoadNo := dmArrivingLoads.SearchPackageNo(NewPkgNo, cds_PropsVerkNo.AsInteger, dmArrivingLoads.SHIPTOINVPOINTNO, PkgSupplierCode) ;
       if LoadNo > 0 then
        Action := eaAccept
         else
          Begin
            Action      :=  eaREJECT ;
            ErrorText   := 'Reject. LoadNo = ' + inttostr(LoadNo) ;
            ErrorCode   := 1 ;
          End;
     End;

    End
     else //Length < 11
      Begin
       NewPkgNo:= StrToIntDef(PackageNo,0) ;
       if NewPkgNo = 0 then
       Begin
        Errortext   := 'Koden kunde inte översättas till ett Paketnr' ;
        ErrorCode   := 1 ;
        Exit ;
       End ;



        Action := IdentifyPackageSupplier(NewPkgNo, PkgSupplierCode);

       if Action =  eaAccept then
       Begin
         if Assigned(frmPosition) then
         Begin
         frmPosition.Mem_PackProdList.IndexName := 'Mem_packlistindex01';
         Try
         if frmPosition.Mem_PackProdList.FindKey([NewPkgNo, PkgSupplierCode]) then
          Begin
            Action      := eaDuplicate ;
            Errortext   :=  'Paketnr redan scannad ' ;
            ErrorCode   :=  1 ;
          End ;
         Finally
            Mem_PackProdList.IndexName := 'DateCreated';
         End;
       End;

       End;
        LoadNo := dmArrivingLoads.SearchPackageNo(NewPkgNo, cds_PropsVerkNo.AsInteger, dmArrivingLoads.SHIPTOINVPOINTNO, PkgSupplierCode) ;
        if LoadNo > 0 then
         Action := eaAccept
          else
           Begin
            Action      :=  eaREJECT ;
            ErrorText   := 'Reject. LoadNo = ' + inttostr(LoadNo) ;
            ErrorCode   := 1 ;
           End;
      End ;
   End ; //if StrToInt(Trim(PackageNo)) > 0 then

   if (NewPkgNo > 0) and (Length(PkgSupplierCode) > 0) then
   Begin
    if Action = eaACCEPT then
    Begin
     PIPNo  := dmsContact.GetPIPNoOfCityNoByOwnerNo(cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger) ;
     if not Assigned(frmPosition) then
      Begin
        frmPosition := TPosition.Create(Nil) ;
      End;
     frmPosition.Show;
     frmPosition.ShowPaketNrList(NewPkgNo, Scanned, pkgSupplierCode);
    End
   else
   if Action = eaREJECT then
    Begin
     Errortext  :=  'Could not find a matching packageno [' + inttostr(NewPkgNo) + '] in arriving loads.' ;
     Error      :=  True ;
     ErrorCode  :=  1 ;
    End
    else
     if Action = eaReserved then
      Begin
       Errortext  := 'Packageno [' + inttostr(NewPkgNo) + '] is reserved by other user.' ;
       Error      := True ;
       ErrorCode  := 1 ;
      End
      else
       if Action = eaDuplicate then
        Begin
         Errortext  := ' är redan inmatat'  ;
         Error      := True ;
         ErrorCode  := 1 ;
        End ;
    End // if NewPkgNo > 0 then
     else
      Begin
       Errortext := 'PaketID saknas.' ;
       Error      := True ;
       ErrorCode  := 1 ;
      End ;

  //    ShowPkgInfo(NewPkgNo, PkgSupplierCode, Errortext) ;

  finally
    //ShowMessage(ErrorText) ;

   if ErrorCode = 1 then
   Begin
    if not Assigned(PkgNrExceptionList) then
    Begin
      PkgNrExceptionList := TPkgNrExceptionList.Create(Nil) ;
    End;
    PkgNrExceptionList.LevereraTillNo := cds_PropsBookingTypeNo.AsInteger ;
    PkgNrExceptionList.CurrentAppName := AppFormName ;
    PkgNrExceptionList.Show;
    dmArrivingLoads.AddPkgNrExcepionList(PackageNo, NewPkgNo, PkgSupplierCode,
    cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger,
    cds_PropsClientNo.AsInteger, ErrorCode, ErrorText, AppFormName) ;
    PkgNrExceptionList.Refresh_GetScannedPkgs ;
    PkgNrExceptionList.ChangeFormSizeExecute ;
   End
   else
    dmArrivingLoads.AddPkgNrExcepionList(PackageNo, NewPkgNo, PkgSupplierCode,
    cds_PropsVerkNo.AsInteger, cds_PropsBookingTypeNo.AsInteger,
    cds_PropsClientNo.AsInteger, ErrorCode, ErrorText, AppFormName) ;

  end;


  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;//With
end;


procedure TfrmLoadArrivals.ShowPosition;
var
   Selected: String;

   I : Integer;
 begin
      (*
     PageControl_Position.Visible := True;
        PageControl_Position.ActivePage := TabSheet_Match;

         PositionAllNameList := TStringList.Create;
         PositionAllIDList := TList<Integer>.Create;

         FDQ_Position.Open;
         FDQ_Position.First;
         while not FDQ_Position.EOF do
         begin
           PositionAllNameList.Add(FDQ_PositionPositionName.AsString);
           PositionAllIDList.Add(FDQ_PositionPositionID.AsInteger);
           FDQ_Position.Next;
         end;
         FDQ_Position.Close;

         listboxAll.Items.BeginUpdate;
         listboxAll.Items.Clear;
         listboxAll.Items.AddStrings(PositionAllNameList);
         listboxAll.Items.EndUpdate;
   *)

end;

procedure TfrmLoadArrivals.ShowMatchPosition(ProductNo : Integer; IsProductNoExist: Boolean);
var
   Match_PositionList : TStringList;
   PositionID, PhyInvPtNo, Records, Count : Integer;

begin
    (*
    if ( not Mem_MatchaProduct.Active) OR ( not Mem_MatchaProduct.Locate('ProductNo', ProductNo, [])) then
      begin
        Match_PositionList := TStringList.Create;
        cxGrid_MatchPosition.Visible := True;
        FDQ_InitialMatchPos.Close;
        FDQ_InitialMatchPos.ParamByName('ProductNo').AsInteger := ProductNo;//Mem_PackProdListProductNo.AsInteger;
        FDQ_InitialMatchPos.Open;
        Records :=  FDQ_InitialMatchPos.recordcount;
        Count := 1;
        FDQ_InitialMatchPos.First;
        while not FDQ_InitialMatchPos.Eof do
        begin
          with Mem_MatchaProduct do
          begin
            Open;
            Append;
            if (Records = Count) AND (FDQ_InitialMatchPosPosStatus.AsInteger = 1) then
               FieldByName('Vald').AsInteger := 1
            else
               FieldByName('Vald').AsInteger := 0;

            FieldByName('Fullt').AsInteger := FDQ_InitialMatchPosPosStatus.AsInteger;
            FieldByName('PositionNamn').AsString := FDQ_InitialMatchPosPositionName.AsString;
            FieldByName('ProductNamn').AsString := FDQ_InitialMatchPosProductDisplayName.AsString;
            FieldByName('NoOfPkgs').AsInteger := FDQ_InitialMatchPosNoOfPkgsByPosition.AsInteger;
            FieldByName('ProductNo').AsInteger := FDQ_InitialMatchPosProductNo.AsInteger;
            FieldByName('PositionID').AsInteger := FDQ_InitialMatchPosPositionID.AsInteger;
            Post;
            Inc(Count);
          end;
          FDQ_InitialMatchPos.Next;
        end;
        Mem_PackProdList.Next;
      end;
  *)
end;

procedure TfrmLoadArrivals.cxGrid_MatchPositionDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  ProductNo : Integer;
  begin
    //if (Mem_MatchaProduct.Locate('Vald', 1, [])) then
    //ProductNo := ACellViewInfo.GridRecord.Values[cxGrid_MatchPositionDBTableView1(Sender).GetColumnByFieldName('ProductNo').Index];
(*

      Mem_MatchaProduct.First;
      while not Mem_MatchaProduct.Eof do
      begin
      with Mem_MatchaProduct do
        begin
            Edit;
            if (FieldByName('Vald').AsInteger = 1) then
            begin
              FieldByName('Vald').AsInteger := 0;
              Post;
            end;
        end;
      end;
*)
    //ACellViewInfo.GridView.Items[]
end;

procedure TfrmLoadArrivals.lcVerkPropertiesCloseUp(Sender: TObject);
begin
 mePackageNo.SetFocus ;
end;

procedure TfrmLoadArrivals.listboxAllClick(Sender: TObject);
var
   Packageno : Integer;
   Prefix : String;
begin
    (*
    if listboxAll.ItemIndex = -1 then
       Exit;

        Mem_PackProdList.filter := 'Vald = 1';
        Mem_PackProdList.filtered := True ;
        Try
        Mem_PackProdList.RecordCount;
        Mem_PackProdList.first ;
         while not Mem_PackProdList.eof do
         Begin
            Packageno  := Mem_PackProdListPaketnr.AsInteger;
            Prefix := Mem_PackProdListPktSupplierCode.AsString;
            SelectedPositionAllName := listboxAll.Items[listboxAll.ItemIndex];
            SelectedPositionAllID := PositionAllIDList.Items[listboxAll.ItemIndex];

            SavetoMemPosition(SelectedPositionAllID, Prefix, Packageno);

          Mem_PackProdList.next ;
         End;
        Finally
             Mem_PackProdList.filtered := False ;
        End;
     //ShowMessage(SelectedPositionAllName +' and '+Sinttostr(electedPositionAllID));
  *)
end;

procedure TfrmLoadArrivals.SavetoMemPosition(PositionID: Integer; Prefix: String; PkgNr: Integer);
begin
      (*
     with Mem_StorePosition do
         begin
           Open;
           Append;
           FieldByName('PositionID').AsInteger := PositionID;
           FieldByName('Prefix').AsString := Prefix;
           FieldByName('PakageNr').AsInteger := PkgNr;
           Post;
         end;
   *)
end;

procedure TfrmLoadArrivals.btChangeStyleClick(Sender: TObject);
var
 count, I: Integer;
begin

  OKRightDlg := TOKRightDlg.Create(Nil);
  Try
    count := cxStyleRepository2.StyleSheetCount;

    for I := 0 to count - 1 do
      OKRightDlg.lbStyleSheet.AddItem(cxStyleRepository2.StyleSheets[I]
        .Caption, cxStyleRepository2.StyleSheets[I]);
    OKRightDlg.lbStyleSheet.ItemIndex := 0;
    if OKRightDlg.ShowModal = mrOk then
    begin
      with OKRightDlg.lbStyleSheet do
        if Items.count > 0 then
        begin
          grdLoadsDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);
          grdPkgsDBTableView1.Styles.StyleSheet :=
            TcxGridTableViewStyleSheet(Items.Objects[ItemIndex]);

          //dmsSystem.SaveProps ('fLastListaII', ItemIndex) ;
        end;

    end;

  finally
    FreeAndNil(OKRightDlg);
    mePackageNo.SetFocus ;
  end;
end;

procedure TfrmLoadArrivals.btnStorePositionClick(Sender: TObject);
var
   CurrentTime : TDateTime;
   ProductNo, PackageNo, PositionID : Integer;
   Prefix : String;
   LoadNo : Integer;
begin
    (*
    CurrentTime := Now;

       Mem_PackProdList.filter := 'Vald = 1';
       Mem_PackProdList.filtered := True ;
       Try
       Mem_PackProdList.RecordCount;
       Mem_PackProdList.First;
        while not Mem_PackProdList.eof do
         Begin
          PackageNo := Mem_PackProdListPaketNr.AsInteger;
          Prefix := Mem_PackProdListPktSupplierCode.AsString;

          Mem_MatchaProduct.Open;
          Mem_MatchaProduct.filter := 'Vald = 1';
          Mem_MatchaProduct.filtered := True;
          //Try
            Mem_MatchaProduct.RecordCount;
            Mem_MatchaProduct.First;
            while not Mem_MatchaProduct.eof do
             Begin
              ProductNo := Mem_MatchaProductProductNo.AsInteger;
              PositionID := Mem_MatchaProductPositionID.AsInteger;

              if(GetPkgPrefix(ProductNo, PackageNo, Prefix)) then
               SavetoMemPosition(PositionID, Prefix, PackageNo);

              if Mem_PackProdList.RecordCount = 1 then
              begin
               Mem_MatchaProduct.Delete;
               DeleteMatchaProdNo(ProductNo);
              end
              else
              begin
                Mem_MatchaProduct.Next;
              end;

             End;
           //Finally
           // Mem_MatchaProduct.filtered := False;
           //End;
          Mem_PackProdList.Delete;
         End;

        Mem_StorePosition.Open;
        Mem_StorePosition.RecordCount;
        Mem_StorePosition.first ;
         while not Mem_StorePosition.eof do
         Begin
              Packageno  := Mem_StorePositionPakageNr.AsInteger;
              Prefix := Mem_StorePositionPrefix.AsString;

              FDQ_UpdatePosStatus.ParamByName('PositionID').AsInteger := Mem_StorePositionPositionID.AsInteger;
              FDQ_UpdatePosStatus.ParamByName('PosStatus').AsInteger := 1;
              FDQ_UpdatePosStatus.ExecSQL;

              FDQ_StorePosID.Close;
              FDQ_StorePosID.ParamByName('PosID').AsInteger := Mem_StorePositionPositionID.AsInteger;
              FDQ_StorePosID.ParamByName('CurrentDate').AsDateTime := CurrentTime;
              FDQ_StorePosID.ParamByName('Prefix').AsString := Prefix;
              FDQ_StorePosID.ParamByName('PkgNr').AsInteger := Packageno;
              FDQ_StorePosID.ExecSQL;

          //ShowMessage('Position: '+inttostr(Mem_StorePositionPositionID.AsInteger) +' and '+Prefix+' and '+inttostr(Packageno));

         LoadNo := dmArrivingLoads.SearchPackageNo(Packageno, Prefix) ;
         dmArrivingLoads.AddPkgTo_PackageARConfirmed(Packageno, LoadNo, 1, Prefix) ;

         Mem_StorePosition.Delete;
         //Mem_StorePosition.Next;
         //DS_StorePosition.DataSet.Delete;

         End;

        Mem_StorePosition.Close;
        Mem_StorePosition.Open;
       Finally
          Mem_PackProdList.filtered := False;
       //   Mem_PackProdList.Close;
       ////   Mem_PackProdList.Open;
          Mem_MatchaProduct.Filtered := False;
         // Mem_MatchaProduct.Close;
          //Mem_MatchaProduct.Open;
       End;
  *)

end;

procedure TfrmLoadArrivals.DeleteMatchaProdNo(ProductNo: Integer);
begin
    (*
    Mem_MatchaProduct.filter := 'Vald = 0';
          Mem_MatchaProduct.filtered := True;
          Try
            Mem_MatchaProduct.First;
            while not Mem_MatchaProduct.Eof do
            Begin
              Mem_MatchaProduct.Delete;
            End;
          Finally
            Mem_MatchaProduct.Filtered := False;
          End;
  *)
end;

function TfrmLoadArrivals.GetPkgPrefix(ProductNo: Integer;
      PackageNo: Integer; Prefix: String): Boolean;
var
   PkgNoList: TList<Integer>;
   PkgPrefixList: TStringList;
   I: Integer;
begin
     //PkgNoList := TList<Integer>.Create;
     //PkgPrefixList := TStringList.Create;
        (*
       Result := False;

           FDQ_ProductPkg.Close;
           FDQ_ProductPkg.ParamByName('ProductNo').AsInteger := ProductNo;
           FDQ_ProductPkg.Open;
           FDQ_ProductPkg.RecordCount;
           FDQ_ProductPkg.First;
            while not FDQ_ProductPkg.Eof do
            begin
              //PkgNoList.Add(FDQ_ProductPkgPackageNo.AsInteger);
              //PkgPrefixList.Add(FDQ_ProductPkgSupplierCode.AsString);

              //for I := 0 to FDQ_ProductPkg.RecordCount-1 do
             //while not FDQ_ProductPkg.Eof do
              //begin
                //if (PkgNoList[I] = PackageNo) AND (PkgPrefixList[I] = Prefix) then
                if (FDQ_ProductPkgPackageNo.AsInteger = PackageNo) AND (FDQ_ProductPkgSupplierCode.AsString = Prefix) then
                begin
                  Result := True;
                  Exit;
                end;
               FDQ_ProductPkg.Next;
              //end;
            end;
    *)
end;

Function TfrmLoadArrivals.IsRegionToRegionLoadValid(LoadNo, ShippingPlanNo,
  ObjectType: Integer; Sender: TObject): Boolean;
begin
  Result := False;
  With dmArrivingLoads do
  Begin
    // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;

    cdsArrivingLoads.Filter := 'LoadNo = ' + IntToStr(LoadNo);
    cdsArrivingLoads.Filtered := True;
    cdsArrivingLoads.First;
    Try
      While Not cdsArrivingLoads.Eof do
      Begin

        if cdsArrivingLoadsObjectType.AsInteger >= 2 then
        Begin
          sq_CheckObjectRegionToRegionLink.Close;
          sq_CheckObjectRegionToRegionLink.ParamByName('LoadNo').AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          sq_CheckObjectRegionToRegionLink.ParamByName('ShippingPlanNo').AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          sq_CheckObjectRegionToRegionLink.Open;
          if sq_CheckObjectRegionToRegionLink.Eof then
            Result := True
          else
            ShowMessage('Kan inte AR lasten. Problem med LO# ' +
              cdsArrivingLoadsLO.AsString +
              ' länkning till Avrop eller LO, kolla att AVROP / LO samt LAST är OK ');
          sq_CheckObjectRegionToRegionLink.Close;
        End;
        cdsArrivingLoads.Next;
      End; // While
      cdsArrivingLoads.Filtered := False;
      if not cdsArrivingLoads.FindKey([LoadNo]) then
        Result := False;
    Finally
      // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
    End;
  End; // With
End;

procedure TfrmLoadArrivals.Run_insPkgInvStatByLoad(const LoadNo  : Integer) ;
Begin
  Try
   sp_insPkgInvStatByLoad.ParamByName('@LoadNo').AsInteger      := LoadNo ;
   sp_insPkgInvStatByLoad.ParamByName('@CreatedUser').AsInteger := ThisUser.UserID;
   sp_insPkgInvStatByLoad.ExecProc ;
   Except
     On E: Exception do
     Begin
      ShowMessage(E.Message+' :sp_insPkgInvStatByLoad.ExecProc') ;
      Raise ;
     End ;
   End ;
End;

function TfrmLoadArrivals.CheckThatCustomerNoIsValidOnSelectedLoads : Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  SupplierNo  : Integer;
  LoadNo : Integer ;
begin
  Result                  := False;
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crSQLWait; { Show hourglass cursor }
  Result                  := True ;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;

        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('SupplierNo').Index;
        SupplierNo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LoadNo').Index;
        LoadNo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if dmsContact.GetSalesRegionNo(SupplierNo) <>  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) then
        Begin
          ShowMessage('LoadNo ' + IntToStr(LoadNo) + ' does not appear to be a valid load to confirm arrival on due to difference in salesregion.') ;
          Result := False ;
          Exit ;
        End;


      End; // for y

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function TfrmLoadArrivals.DoesAllLoadsHaveSameLIPNo : Boolean ;
Var LIPNo : Integer ;
Begin
 Result  :=   True ;
 mtSelectedLoads.First ;
 LIPNo  := mtSelectedLoadsLIPNo.AsInteger ;
 while not mtSelectedLoads.eof do
 Begin
  if LIPNo <> mtSelectedLoadsLIPNo.AsInteger  then
  Begin
    Result  :=   False ;
  End;
  mtSelectedLoads.Next ;
 End;
End;

function TfrmLoadArrivals.
  AreMarkedLoadsSameObjectTypeAndInternalContract: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  OrderType: Integer;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active := False;
  mtSelectedLoads.Active := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OrderType').Index;
        OrderType := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OBJECTTYPE', ObjectType, []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoads.Post;
        End;
      End; // for y
      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1) or (OrderType <> 3)
      then
        Result := False
      else
        if ((mtSelectedLoadsOBJECTTYPE.AsInteger = 2) and (OrderType = 3)) then
        Result := True
        else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;



end.
