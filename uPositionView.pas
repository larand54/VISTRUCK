unit uPositionView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  System.Generics.Collections,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, DB, ActnList,
  cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxCheckBox,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, Buttons, cxCalc,
  cxCurrencyEdit, cxGridExportLink, cxSplitter,
  cxGridCustomPopupMenu, cxGridPopupMenu, kbmMemTable,
  cxCheckComboBox, cxDBCheckComboBox,
  cxLookAndFeelPainters, cxButtons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon, cxDBEdit,
  cxCalendar, cxImageComboBox, cxDBLabel, cxVariants, cxListBox, cxMemo,
  cxLookAndFeels, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer,
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, CRAXDRT_TLB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,


  Grids,
  DBGrids,
  cxGridDBDataDefinitions,

  cxGridCommon,
  ComCtrls, FMTBcd, SqlExpr, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxPivotGridLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter, DateUtils, SqlTimSt,
  frxClass, frxDBSet, frxCross, cxNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu, System.Actions, siComp, siLngLnk,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSSQL ;


type
  TCMComboBoxItem = class(TObject)
    Description,
    ShortDescription: string;
    idNo: integer;
  end;

  TCMComboBoxItems = class(TObject)
  private
    Items: TList<TCMComboBoxItem>;
    procedure add(aDesc, aShortDesc: string; aidNo: integer) overload;
    procedure add(aDesc, aShortDesc: string) overload;
    procedure add(aDesc: string) overload;
    constructor create;
    destructor destroy;
  end;

  TfPositionView = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbPkgNoReport: TdxBarLargeButton;
    lbPcsPerLengthReport: TdxBarLargeButton;
    lbPkgTypeReport: TdxBarLargeButton;
    lbInventoryCount: TdxBarLargeButton;
    lbHideFilterPanel: TdxBarLargeButton;
    bbSummaryReport: TdxBarLargeButton;
    ActionList1: TActionList;
    pmFormShortcuts: TPopupMenu;
    acClose: TAction;
    Stng1: TMenuItem;
    pcInventory: TcxPageControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    acPkgInfo: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Skrivut1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarButton7: TdxBarButton;
    AntlngdF91: TMenuItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dsUserProp: TDataSource;
    ds_Verk: TDataSource;
    cxSplitter2: TcxSplitter;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxStyle3: TcxStyle;
    dxBarButton28: TdxBarButton;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    cxEditStyleController3: TcxEditStyleController;
    cxStyle4: TcxStyle;
    bbAddPkgsToKilnCharge: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    bbVisaAvAktiverade: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    Bevel1: TBevel;
    lcPIPNAME: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    ccbAT: TcxCheckComboBox;
    ccbAB: TcxCheckComboBox;
    ccbAL: TcxCheckComboBox;
    ccbTS2: TcxCheckComboBox;
    ccbKV2: TcxCheckComboBox;
    ccbSU2: TcxCheckComboBox;
    ccbIMP: TcxCheckComboBox;
    cbOwner: TcxCheckComboBox;
    eAT: TcxTextEdit;
    eAB: TcxTextEdit;
    eAL: TcxTextEdit;
    acSaveGridLayout: TAction;
    acLoadGridLayout: TAction;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    acExportToExcel: TAction;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    ccVarugrupp: TcxCheckComboBox;
    cxLabel29: TcxLabel;
    teREF: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxStyleNormalAktivePkg: TcxStyle;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    ccMatpunkt: TcxCheckComboBox;
    ccbNT: TcxCheckComboBox;
    ccbNB: TcxCheckComboBox;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    eNT: TcxTextEdit;
    eNB: TcxTextEdit;
    ccSkiftLag: TcxCheckComboBox;
    cxButton1: TcxButton;
    cbPaReg: TcxCheckBox;
    cbAvreg: TcxCheckBox;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    tsProduktionPerPaketnr: TcxTabSheet;
    Panel7: TPanel;
    tsProduktionProduktSummary: TcxTabSheet;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cbProdPaketNr: TcxComboBox;
    Panel8: TPanel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cbProdSUM: TcxComboBox;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    grdProdPaketNrLevel1: TcxGridLevel;
    grdProdPaketNr: TcxGrid;
    cxLookupComboBox1: TcxLookupComboBox;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    acNewProdPaketNrMall: TAction;
    acDeleteProdPaketNrMall: TAction;
    acSaveProdPaketNrMall: TAction;
    acRefreshProdPaketNr: TAction;
    acExpandAllProdPaketNr: TAction;
    acCollapseAllProdPaketNr: TAction;
    acNewProdSUMMall: TAction;
    acSaveProdSUMMall: TAction;
    grdProdSUMLevel1: TcxGridLevel;
    grdProdSUM: TcxGrid;
    acRefreshProdSUM: TAction;
    acDeleteProdSUMMall: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pmPkgNos: TdxBarPopupMenu;
    acCollapseAllProdSum: TAction;
    acExpandAllProdSUM: TAction;
    grdProdPaketNrDBBandedTableView1: TcxGridDBBandedTableView;
    grdProdSUMDBBandedTableView1: TcxGridDBBandedTableView;
    grdProdSUMDBBandedTableView1Operation: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1PRODUKT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1Paketnr: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1Prefix: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NB: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NomDim: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AktDim: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1STYCK: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM1: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AM2: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1OwnerNo: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1AvgLength: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1ShiftTeamName: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1RegPointName: TcxGridDBBandedColumn;
    grdProdSUMDBBandedTableView1MP_SkiftLag: TcxGridDBBandedColumn;
    cxGridPopupMenu2: TcxGridPopupMenu;
    cxLabel37: TcxLabel;
    ccLand: TcxCheckComboBox;
    ccKund: TcxCheckComboBox;
    cxLabel38: TcxLabel;
    acPrint: TAction;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxButton15: TcxButton;
    cbExpanded: TcxCheckBox;
    sq_UserProfileInputOption: TIntegerField;
    sq_UserProfileStartPeriod: TSQLTimeStampField;
    sq_UserProfileEndPeriod: TSQLTimeStampField;
    cbExkluderaEgnaLeveranser: TcxCheckBox;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cbInkTimeInDateFilter: TcxDBCheckBox;
    frxDB_ST_Del_Stat: TfrxDBDataset;
    frxReport2: TfrxReport;
    acUlrikaRapport: TAction;
    sq_ST_Del_Stat: TFDQuery;
    frxCrossObject1: TfrxCrossObject;
    siLangLinked_fDeliveryReport: TsiLangLinked;
    mtuserProp: TkbmMemTable;
    mtuserPropUserID: TIntegerField;
    mtuserPropForm: TStringField;
    mtuserPropVerkNo: TIntegerField;
    mtuserPropOwnerNo: TIntegerField;
    mtuserPropPIPNo: TIntegerField;
    mtuserPropLIPNo: TIntegerField;
    mtuserPropInputOption: TIntegerField;
    mtuserPropRegPointNo: TIntegerField;
    mtuserPropRegDate: TSQLTimeStampField;
    mtuserPropCopyPcs: TIntegerField;
    mtuserPropRunNo: TIntegerField;
    mtuserPropProducerNo: TIntegerField;
    mtuserPropAutoColWidth: TIntegerField;
    mtuserPropSupplierCode: TStringField;
    mtuserPropLengthOption: TIntegerField;
    mtuserPropLengthGroupNo: TIntegerField;
    mtuserPropNewItemRow: TIntegerField;
    mtuserPropSalesRegionNo: TIntegerField;
    mtuserPropMarketRegionNo: TIntegerField;
    mtuserPropOrderTypeNo: TIntegerField;
    mtuserPropStatus: TIntegerField;
    mtuserPropFilterOrderDate: TIntegerField;
    mtuserPropStartPeriod: TSQLTimeStampField;
    mtuserPropEndPeriod: TSQLTimeStampField;
    mtuserPropClientNo: TIntegerField;
    mtuserPropSalesPersonNo: TIntegerField;
    mtuserPropVerkSupplierNo: TIntegerField;
    mtuserPropVerkKundNo: TIntegerField;
    mtuserPropLOObjectType: TIntegerField;
    mtuserPropBarCodeNo: TIntegerField;
    mtuserPropGradeStampNo: TIntegerField;
    mtuserPropVolumeUnitNo: TIntegerField;
    mtuserPropLengthFormatNo: TIntegerField;
    mtuserPropLengthVolUnitNo: TIntegerField;
    mtuserPropGroupByBox: TIntegerField;
    mtuserPropGroupSummary: TIntegerField;
    mtuserPropAgentNo: TIntegerField;
    mtuserPropLoadingLocationNo: TIntegerField;
    mtuserPropShipperNo: TIntegerField;
    mtuserPropBookingTypeNo: TIntegerField;
    mtuserPropCustomerNo: TIntegerField;
    mtuserPropShowProduct: TIntegerField;
    mtuserPropName: TStringField;
    mtuserPropFilter1: TStringField;
    mtuserPropFilter2: TStringField;
    mtuserPropRoletype: TIntegerField;
    grdProdPaketNrDBBandedTableView1CityName: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1LogicalInventoryName: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1Paket: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1pcs: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1dim: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PIPNo: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1Info1: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1Info2: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1AreaName: TcxGridDBBandedColumn;
    grdProdPaketNrDBBandedTableView1PositionName: TcxGridDBBandedColumn;
    cxLabel3: TcxLabel;
    cbSalesRegion: TcxCheckComboBox;
    cbStorageArea: TcxCheckComboBox;
    cxLabel4: TcxLabel;
    cbStoragePos: TcxCheckComboBox;
    cxLabel5: TcxLabel;
    cbStorageGroup: TcxCheckComboBox;
    cxLabel12: TcxLabel;
    cds_SalesRegion: TFDQuery;
    cds_SalesRegionClientName: TStringField;
    cds_StorageAreas: TFDQuery;
    cds_StoragePos: TFDQuery;
    cds_StorageGroups: TFDQuery;
    fdTestConnection: TFDConnection;
    cds_SalesRegionClientNo: TIntegerField;
    cds_StorageAreasAreaName: TStringField;
    cds_StorageAreasAreaID: TIntegerField;
    cds_StorageAreasGrupp: TStringField;
    cds_StoragePosPositionID: TIntegerField;
    cds_StoragePosPositionName: TStringField;
    cds_StorageGroupsPLIP: TStringField;
    cds_StorageGroupsLIPNo: TIntegerField;
    cds_StorageGroupsPIPNO: TIntegerField;
    cds_StorageGroupsCITYNAME: TStringField;
    cds_StorageGroupsLogicalInventoryName: TStringField;
    cds_StorageGroupsInvCode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdPkgTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acExportExecute(Sender: TObject);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure ccbATPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure eATExit(Sender: TObject);
    procedure eABExit(Sender: TObject);
    procedure eALExit(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure cbOwnerPropertiesCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure eNTExit(Sender: TObject);
    procedure eNBExit(Sender: TObject);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure cbProdPaketNrPropertiesChange(Sender: TObject);
    procedure acSaveProdPaketNrMallExecute(Sender: TObject);
    procedure acRefreshProdPaketNrExecute(Sender: TObject);
    procedure acExpandAllProdPaketNrExecute(Sender: TObject);
    procedure acSaveProdSUMMallExecute(Sender: TObject);
    procedure cbProdSUMPropertiesChange(Sender: TObject);
    procedure acDeleteProdPaketNrMallExecute(Sender: TObject);
    procedure acDeleteProdSUMMallExecute(Sender: TObject);
    procedure acCollapseAllProdPaketNrExecute(Sender: TObject);
    procedure acCollapseAllProdSumExecute(Sender: TObject);
    procedure acExpandAllProdSUMExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure cbExpandedPropertiesChange(Sender: TObject);
    procedure grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cbSalesRegionPropertiesCloseUp(Sender: TObject);
    procedure cbStorageGroupPropertiesCloseUp(Sender: TObject);
    procedure cbStorageAreaPropertiesCloseUp(Sender: TObject);
    procedure acRefreshProdSUMExecute(Sender: TObject);

  private
    { Private declarations }
    procedure SetDateFields ;
    procedure LoadCheckBoxWithVerk ;
    procedure LoadCheckBoxWithSalesRegion;
    procedure LoadCheckBoxWithSTorageArea;
    procedure LoadCheckBoxWithStoragePos;
    procedure LoadCheckBoxWithStorageGroup;
    procedure LoadCheckBox(const aFieldName, aCheckItemFld, aCheckItem: string; const aDataSet: TFDQuery; const aCombo: TcxCheckComboBox);
//    function prepareDataSetForCombo(aTargetCbo, aSourceCbo: TcxCheckComboBox;InitialSQL, finalSQL: TStrings): TFDQuery;
    procedure Open_UserProfile ;
    procedure SaveUserProfile ;
    procedure PopulateCheckBoxMallarProdSUM ;
    procedure OpenProdSUMMall ;
    procedure OpenProdPaketNrMall ;
    procedure PopulateCheckBoxMallar ;

    procedure SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
//    procedure CheckAllItems ;

    Function  SelectedOwnersOK : Boolean ;


    procedure SetCheckComboBoxes ;

    Function  CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;

    Function  ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
    Function  GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
    procedure ClearProductFilter ;

    procedure OpenStandardMall(Sender: TObject);
  public
    { Public declarations }
//    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  fPositionView: TfPositionView;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , {uGridSetting,}
  dmc_UserProps, dmsVidaSystem,
 // dmsVidaPkg,
  uEntryField{, uSokAvropMall , uAngeNyMall, VidaDeliveryClass}, uSQLView;

{$R *.dfm}

procedure TfPositionView.PopulateCheckBoxMallar ;
Begin
 cbProdPaketNr.Properties.Items.Clear ;
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := TForm(Self).Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbProdPaketNr.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbProdPaketNr.Properties.Items.Count > 0 then
  cbProdPaketNr.ItemIndex  := 0 ;

End;

procedure TfPositionView.PopulateCheckBoxMallarProdSUM ;
Begin
 cbProdSUM.Clear ;

 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := TForm(Self).Name + '2' ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbProdSUM.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbProdSUM.Properties.Items.Count > 0 then
  cbProdSUM.ItemIndex  := 0 ;

End;


procedure TfPositionView.ClearProductFilter ;
Begin

 eAT.Text := '' ;
 eAB.Text := '' ;
 eAL.Text := '' ;

 ccbAB.Clear ;
 ccbAT.Clear ;
 ccbNB.Clear ;
 ccbNT.Clear ;

 ccbAL.Clear ;
 ccbTS2.Clear ;
 ccbKV2.Clear ;
 ccbSU2.Clear ;
 ccbIMP.Clear ;
 ccVarugrupp.Clear ;
 ccMatpunkt.Clear ;
 ccSkiftLag.Clear ;

 ccLand.Clear ;
 ccKund.Clear ;
End ;

procedure TfPositionView.SetCheckComboBoxes ;
Begin
 With dmInventory do
 Begin
  ccbTS2.Properties.Items.Clear ;
  sq_Specie.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
  sq_Specie.Active:= True ;
  While not sq_Specie.Eof do
  Begin
   ccbTS2.Properties.Items.AddCheckItem(sq_Specie.FieldByName('speciesName').AsString, sq_Specie.FieldByName('speciescode').AsString) ;
   sq_Specie.Next ;
  End ;
  sq_Specie.Active:= False ;

  ccbAT.Properties.Items.Clear ;
  sq_AT.Open ;
  While not sq_AT.Eof do
  Begin
   ccbAT.Properties.Items.AddCheckItem(sq_AT.FieldByName('AT').AsString, sq_AT.FieldByName('AT').AsString) ;
   sq_AT.Next ;
  End ;
  sq_AT.Close ;

  ccbAB.Properties.Items.Clear ;
  sq_AB.Open ;
  While not sq_AB.Eof do
  Begin
   ccbAB.Properties.Items.AddCheckItem(sq_AB.FieldByName('AB').AsString, sq_AB.FieldByName('AB').AsString) ;
   sq_AB.Next ;
  End ;
  sq_AB.Close ;

  ccbNT.Properties.Items.Clear ;
  sq_NT.Open ;
  While not sq_NT.Eof do
  Begin
   ccbNT.Properties.Items.AddCheckItem(sq_NT.FieldByName('NT').AsString, sq_NT.FieldByName('NT').AsString) ;
   sq_NT.Next ;
  End ;
  sq_NT.Close ;

  ccbNB.Properties.Items.Clear ;
  sq_NB.Open ;
  While not sq_NB.Eof do
  Begin
   ccbNB.Properties.Items.AddCheckItem(sq_NB.FieldByName('NB').AsString, sq_NB.FieldByName('NB').AsString) ;
   sq_NB.Next ;
  End ;
  sq_NB.Close ;

  ccbAL.Properties.Items.Clear ;
  sq_AL.Open ;
  While not sq_AL.Eof do
  Begin
   ccbAL.Properties.Items.AddCheckItem(sq_AL.FieldByName('AL').AsString, sq_AL.FieldByName('AL').AsString) ;
   sq_AL.Next ;
  End ;
  sq_AL.Close ;

  ccVarugrupp.Properties.Items.Clear ;
  sq_Varugrupp.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
  sq_Varugrupp.Open ;
  While not sq_Varugrupp.Eof do
  Begin
   ccVarugrupp.Properties.Items.AddCheckItem(sq_Varugrupp.FieldByName('Varugruppnamn').AsString, sq_Varugrupp.FieldByName('VarugruppID').AsString) ;
   sq_Varugrupp.Next ;
  End ;
  sq_Varugrupp.Close ;

 End ;//With dmInventory
End ;

procedure TfPositionView.SetCheckComboBoxes_Where_PktNrLevKod_Required (const PktNrLevKod : String) ;
Begin
 With dmInventory do
 Begin

  ccKund.Properties.Items.Clear ;
  sq_Grade.Active:= True ;
  While not sq_Grade.Eof do
  Begin
   ccbKV2.Properties.Items.AddCheckItem(sq_Grade.FieldByName('gradeName').AsString, sq_Grade.FieldByName('gradecode').AsString) ;
   sq_Grade.Next ;
  End ;
  sq_Grade.Active:= False ;

  ccbSU2.Properties.Items.Clear ;
  sq_Surfacing.ParamByName('PktNrLevKod').AsString    := PktNrLevKod ;
  sq_Surfacing.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
  sq_Surfacing.Open ;
  While not sq_Surfacing.Eof do
  Begin
   ccbSU2.Properties.Items.AddCheckItem(sq_Surfacing.FieldByName('SurfacingName').AsString, sq_Surfacing.FieldByName('SurfacingCode').AsString) ;
   sq_Surfacing.Next ;
  End ;
  sq_Surfacing.Close ;

  ccbIMP.Properties.Items.Clear ;
  ccbIMP.Properties.BeginUpdate ;
   End ;//With
End ;

procedure TfPositionView.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

procedure TfPositionView.LoadCheckBox(const aFieldName, aCheckItemFld, aCheckItem: string;
  const aDataSet: TFDQuery; const aCombo: TcxCheckComboBox);
Var i : Integer ;
begin
  aDataSet.Active := not aDataSet.Active ;
  Try
    aCombo.Properties.Items.Clear ;

    While not aDataSet.Eof do
    Begin
      try
        if aCheckItemFld <> '' then
          aCombo.Properties.Items.AddCheckItem(aDataSet.FieldByName(aFieldName).AsString, aDataSet.FieldByName(aCheckItemFld).AsString)
        else
          aCombo.Properties.Items.AddCheckItem(aDataSet.FieldByName(aFieldName).AsString);
        aDataSet.Next ;
      except
        on E : EDatabaseError do
        begin
          ShowMessage('Database error! Please contact support!' + sLineBreak + 'Send the bugreport!');
          raise;
        end;
      end;
    End ;

    if (aFieldName <> '') and (aCheckItem <> '') then for i := 0 to aCombo.Properties.Items.Count - 1 do
    Begin
      if aCombo.Properties.Items.Items[i].ShortDescription = aCheckItem then
      aCombo.SetItemState(i, cbsChecked) ;
    end;
  Finally
    aDataSet.Active := False ;
  end;
end;

procedure TfPositionView.LoadCheckBoxWithSalesRegion;
begin
  cds_SalesRegion.Params.ParamByName('SalesRegionNo').AsInteger := ThisUser.CompanyNo;
  LoadCheckBox('ClientName','ClientNo','',cds_SalesRegion,cbSalesRegion);
end;

procedure TfPositionView.LoadCheckBoxWithSTorageArea;
Var
  Count, x: Integer;
  Mills: TList<integer>;
begin
  cds_StorageAreas.Active := False;

  // Collect all checked mills
  Mills := TList<integer>.Create;
  try
    for x := 0 to cbOwner.Properties.Items.Count - 1 do
    begin
      if cbOwner.GetItemState(x) = cbsChecked then
      begin
        Mills.Add(cbOwner.Properties.Items[x].tag);
      end;
    end;

    // If any mill checked then create sql
    if (assigned(Mills) AND (Mills.Count > 0))  then
    begin
      cds_StorageAreas.SQL.Clear;
      cds_StorageAreas.SQL.Add('SELECT DISTINCT area.AreaName, area.AreaID, LIP.Grupp');
      cds_StorageAreas.SQL.Add('FROM   dbo.Client C');

      cds_StorageAreas.SQL.Add('INNER JOIN PhysicalInventoryPoint PIP ON PIP.OwnerNo = C.ClientNo');
      cds_StorageAreas.SQL.Add('INNER JOIN LogicalInventoryPoint LIP ON LIP.PhysicalInventoryPointNo = PIP.PhysicalInventoryPointNo');
      cds_StorageAreas.SQL.Add('INNER JOIN Area ON Area.PIPNo = PIP.PhysicalInventoryPointNo');
      if (assigned(Mills) AND (Mills.Count > 0)) then
      begin
        cds_StorageAreas.SQL.Add('WHERE  (c.clientno = ' + intToStr(Mills[0]) + ')');
        for x := 1 to Mills.Count-1 do
          cds_StorageAreas.SQL.Add('OR (c.clientno = ' + intToStr(Mills[x]) + ')');
      end;
      cds_StorageAreas.SQL.Add('Order by area.AreaName');

      // Retrieve storageareas for checked mills and fill combobox
      Try
        cds_StorageAreas.Active := true;
        cbStorageArea.Properties.Items.Clear;

        While not cds_StorageAreas.Eof do
        Begin
          cbStorageArea.Properties.Items.AddCheckItem(cds_StorageAreas.FieldByName('AreaName')
            .AsString, cds_StorageAreas.FieldByName('AreaID').AsString);
          cds_StorageAreas.Next;
        End;

      Finally
        cds_StorageAreas.Active := False;
      end;
    end
    else
    // No mill checked - empty combo
      cbStorageArea.properties.Items.Clear;
  finally
    Mills.Free;
  end;
end;

procedure TfPositionView.LoadCheckBoxWithStorageGroup;
var
  SQL: TStringList;
  i: integer;
  CheckedOwners: TList<integer>;
begin
  // Prepare SQL by using the old stored code excluding WHERE, OrderBy and GroupBy.
  SQL := TStringList.Create;
  SQL.Text := cds_StorageGroups.SQL.Text;
  SQL.Text := Copy(SQL.Text, 1, Pos('WHERE', SQL.Text)-3);

  // Now, add the WHERE-clause
  SQL.add('WHERE');
  for i := 0 to cbOwner.Properties.Items.Count - 1 do
  begin
    if cbOwner.GetItemState(i) = cbsChecked then
    begin
      if not assigned(CheckedOwners) then
        CheckedOwners := TList<integer>.create;
      CheckedOwners.add(cbOwner.Properties.Items[i].Tag);
    end;
  end;
  if assigned(CheckedOwners) and (CheckedOwners.Count > 0) then
  begin
    SQL.add(' (PH.OwnerNo = ' + intToStr(CheckedOwners[0]));
    for i := 1 to CheckedOwners.Count - 1 do
      SQL.add(' OR PH.OwnerNo = ' + intToStr(CheckedOwners[i]));
    SQL.add(' )');

    // Dynamic part finished - add the rest of WHERE-clause:
    SQL.Add('AND LIP.SequenceNo = 1');
    SQL.Add('AND PH.SequenceNo = 1');
    SQL.Add('AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo');
    SQL.Add('FROM dbo.PHYSICALINVENTORYPOINT PH2');
    SQL.Add('WHERE PH2.OwnerNo = ' + intToStr(ThisUser.CompanyNo) + ')');

    // Add Order by
    SQL.Add('Order By  LIP.InvCode, LIP.LogicalInventoryName, CY.CITYNAME');

    // Put new SQL into th dataset and activate it and load checkCombobox from it
    cds_StorageGroups.SQL.Clear;
    cds_StorageGroups.SQL.Text := SQL.Text;
    SQL.Free;
    LoadCheckBox('PLIP', 'LIPNO', '', cds_StorageGroups, cbStorageGroup);
  end
  else // No owner selected - empty the combo
  begin
    cbStorageGroup.properties.items.Clear;
  end;

end;




procedure TfPositionView.LoadCheckBoxWithStoragePos;
Var
  Count, x: integer;
  s: string;
begin
  cds_StoragePos.Active := False;
  s := '';
  for x := 0 to cbStorageArea.Properties.Items.Count - 1 do
  begin
    if cbStorageArea.GetItemState(x) = cbsChecked then
    begin
      s := s + cbStorageArea.Properties.Items[x].ShortDescription + ',';
    end;
  end;
  s := copy(s, 1, s.Length-1);  // Remove last ','
  if s = '' then begin
    cbStoragePos.Clear;
    cbStoragePos.Properties.Items.Clear
  end
  else
  begin
    cds_StoragePos.SQL.Clear;
    cds_StoragePos.SQL.add('select P.PositionName, P.PositionID from Position P where P.AreaID in ('
      + s + ')');

    Try
      cds_StoragePos.Active := True;
      cbStoragePos.Properties.Items.Clear;

      While not cds_StoragePos.Eof do
      Begin
        cbStoragePos.Properties.Items.AddCheckItem
          (cds_StoragePos.FieldByName('PositionName')
          .AsString, cds_StoragePos.FieldByName('PositionID').AsString);
        cds_StoragePos.Next;
      End;

    Finally
      cds_StoragePos.Active := False;
    end;
  end;
end;

procedure TfPositionView.LoadCheckBoxWithVerk ;
Var
  Count, x: Integer;
  SRList: TCMComboBoxItems;
  s1,s2: string;
  SQLSave: TStrings;
begin
  cds_Verk.Active := False;
  SQLSave := cds_verk.SQL;
  try
    for x := 0 to cbSalesRegion.Properties.Items.Count - 1 do
    begin
      if cbSalesRegion.GetItemState(x) = cbsChecked then
      begin
        if SRList = nil then
          SRList := TCMComboBoxItems.Create;
        s1 := cbSalesRegion.Properties.Items[x].Description;
        s2 := cbSalesRegion.Properties.Items[x].ShortDescription;
        SRList.Add(s1,s2);
      end;
    end;
    if assigned(SRList) then if SRList.items.Count > 0 then
    begin
      cds_verk.SQL.Clear;
      cds_verk.SQL.Add('SELECT  Distinct C.ClientNo, C.ClientName, C.SearchName, C.SalesRegionNo, C.PktNrLevKod');
      cds_verk.SQL.Add('FROM   dbo.Client C, dbo.ClientRole R');

      cds_verk.SQL.Add('WHERE  C.ClientNo = R.ClientNo ');
      cds_verk.SQL.Add('AND ((R.RoleType = 9) OR (R.RoleType = 6) OR (R.RoleType = 7))');
      cds_verk.SQL.Add('AND C.IntVerk = 1');
      cds_verk.SQL.Add('AND (C.SalesRegionNo = '+ SRList.Items[0].ShortDescription);
      for x := 1 to SRList.items.Count-1 do
      begin
        cds_verk.SQL.Add(' OR C.SalesRegionNo = '+ SRList.Items[x].ShortDescription);
      end;
      cds_verk.SQL.Add(' )');
      cds_verk.SQL.Add('Order by C.clientName');

    end;
    Try
      cds_verk.Active := true;
      cbOwner.Properties.Items.Clear;

      While not cds_Verk.Eof do
      Begin
        cbOwner.Properties.Items.AddCheckItem(cds_Verk.FieldByName('ClientName')
          .AsString, cds_Verk.FieldByName('PktNrLevKod').AsString);
        cbOwner.Properties.Items[cbOwner.Properties.Items.Count-1].Tag := cds_Verk.FieldByName('ClientNo').AsInteger;
        cds_Verk.Next;
      End;

      For x := 0 to cbOwner.Properties.Items.Count - 1 do
      Begin
        if cbOwner.Properties.Items.Items[x].ShortDescription = dmsContact.
          Get_PktNrLevKod(ThisUser.CompanyNo) then
          cbOwner.SetItemState(x, cbsChecked);
      end;
    Finally
      cds_Verk.Active := False;
      cds_verk.SQL := SQLSave;
    end;
  finally
    SRList.Free;
  end;
End;

Procedure TfPositionView.CreateCo(Sender: TObject; CompanyNo: Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

  LoadCheckBoxWithSalesRegion;
  LoadCheckBoxWithVerk ;
(*  LoadCheckBoxWithStorageGroup;
  LoadCheckBoxWithSTorageArea;
  LoadCheckBoxWithStoragePos;
*)
  SetCheckComboBoxes ;
(*
  SetCheckComboBoxes_Where_PktNrLevKod_Required('18') ;
  dmInventory.cds_PkgList.Active:= True ;
*)
  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;

   eAT.Visible    := True ;
   eAB.Visible    := True ;
   eNT.Visible    := True ;
   eNB.Visible    := True ;
   eAL.Visible    := True ;

   ccbAT.Visible  := False ;
   ccbAB.Visible  := False ;
   ccbNT.Visible  := False ;
   ccbNB.Visible  := False ;
   ccbAL.Visible  := False ;

  PopulateCheckBoxMallar ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfPositionView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
  fPositionView := nil;
end;

procedure TfPositionView.FormCreate(Sender: TObject);
begin
  createCo(nil,ThisUser.CompanyNo);
end;

procedure TfPositionView.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfPositionView.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfPositionView.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 With dmInventory do
 Begin
 End ;

 CanClose := True ;
end;

procedure TfPositionView.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfPositionView.grdProdPaketNrDBBandedTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);

  procedure CalcFooterSummary;
  var
    V1, V2, AResult: Variant;
  begin
  end;

  procedure CalcGropSummaries;

    function Groups: TcxDataControllerGroups;
    begin
      Result := grdProdPaketNrDBBandedTableView1.DataController.Groups;
    end;

    procedure CalcGroupSummary(ADataGroupIndex: Integer);
    var
      V1, V2, AResult: Variant;
      ASummaryItems: TcxDataSummaryItems;
    begin
    end;

    procedure CalcGroupSummariesByDataGroupIndex(ADataGroupIndex: Integer);
    var
      I: Integer;
    begin
      if Groups.Level[ADataGroupIndex] >= Groups.GroupingItemCount - 1 then
        Exit;
      for I := 0 to Groups.ChildCount[ADataGroupIndex] - 1 do
      begin
        CalcGroupSummary(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
        CalcGroupSummariesByDataGroupIndex(Groups.ChildDataGroupIndex[ADataGroupIndex, I]);
      end;
    end;

  begin
    CalcGroupSummariesByDataGroupIndex(-1);
  end;


begin
  CalcFooterSummary;
  CalcGropSummaries;
end;

procedure TfPositionView.acCollapseAllProdPaketNrExecute(Sender: TObject);
begin
 grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfPositionView.acCollapseAllProdSumExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfPositionView.acDeleteProdPaketNrMallExecute(Sender: TObject);
begin
 if MessageDlg(siLangLinked_fDeliveryReport.GetTextOrDefault('IDS_39' (* 'Vill du ta bort?' *) ),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmInventory do
 Begin
  if cbProdPaketNr.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '1' ;
   sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex] ;
   sq_UserProfile.Active := True ;
   Try
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Active     := False ;
   End;
   PopulateCheckBoxMallar ;
  End;
 End;
end;

procedure TfPositionView.acDeleteProdSUMMallExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbProdSUM.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '2' ;
   sq_UserProfile.Active := True ;
   Try
   sq_UserProfile.Filter  := 'Name = ' + cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex] ;
   sq_UserProfile.Filtered  := True ;
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Filtered   := False ;
    sq_UserProfile.Active     := False ;
   End;
  End;
 End;
end;

procedure TfPositionView.acExpandAllProdPaketNrExecute(Sender: TObject);
begin
 cbExpanded.Properties.OnChange := nil ;
 Try
 grdProdPaketNrDBBandedTableView1.ViewData.Expand(True);
 Finally
  cbExpanded.Properties.OnChange := cbExpandedPropertiesChange ;
 End;
end;

procedure TfPositionView.acExpandAllProdSUMExecute(Sender: TObject);
begin
 grdProdSUMDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfPositionView.acExportExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

//Sortiment



Function TfPositionView.SelectedOwnersOK : Boolean ;
Var
    VidaWood            : Boolean ;
    NoOfSelections, x   : Integer ;
Begin
NoOfSelections:= 0 ;

  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if (cbOwner.States[x] = cbsChecked) then
    NoOfSelections:= Succ(NoOfSelections) ;

  End ;

 if (NoOfSelections >= 1) then
 Result:= True
 else
 Result:= False ;

End ;


Function TfPositionView.GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
Var
    APCheckStates : ^TcxCheckStates;
    AddORToSQL    : Boolean ;
    x             : Integer ;
Begin
 AddORToSQL:= False ;
 Result:= '' ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        if AddORToSQL = False then
         Result:= Kolumn ;
         Result:= Result +Properties.Items[x].Description+', ' ;
        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
      if Length(Result) > 1 then
      Begin
       Result:= Copy(Result, 1, Length(Result)-2) ;
       Result:= Result + '] ' ;
      End ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

Function TfPositionView.ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
Var
    APCheckStates : ^TcxCheckStates;
    x             : Integer ;
Begin
 Result:= False ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        Result:= True ;
        Break ;
       End ;//if..
      End ;//for..
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;



procedure TfPositionView.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfPositionView.acPrintExecute(Sender: TObject);
Var FilterString : String ;
begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(siLangLinked_fDeliveryReport.GetTextOrDefault('IDS_45' (* 'Leverans' *) )) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(DateTimeToStr(deStartPeriod.Date) + ' - ' + DateTimeToStr(deEndPeriod.Date) ) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfPositionView.SetDateFields ;
Var AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond: Word;
    EndDate, StartDate : TDateTime ;
begin
// StartDate  := Date - 1 ;
 DecodeDateTime(mtUserPropStartPeriod.AsDateTime, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 0, 0, 0, 0,  StartDate) ;

// EndDate  := Date - 1 ;
 DecodeDateTime(mtUserPropEndPeriod.AsDateTime, AYear, AMonth, FDay, AHour, AMinute, ASecond, AMilliSecond);
 TryEncodeDateTime(AYear, AMonth, FDay, 23, 59, 59, 0,  EndDate) ;

  mtUserProp.Edit ;
  mtUserPropStartPeriod.AsSQLTimeStamp    := DateTimeToSQLTimeStamp(StartDate) ;
  mtUserPropEndPeriod.AsSQLTimeStamp      := DateTimeToSQLTimeStamp(EndDate) ;
  mtUserProp.Post ;
End;

procedure TfPositionView.acRefreshProdPaketNrExecute(Sender: TObject);
var
  SQLView: TSQLView;
  SQLBUILD: TSQLBuild;
begin
 //Refresh ProdPaketNr
  if not SelectedOwnersOK then
  Begin
   ShowMessage(siLangLinked_fDeliveryReport.GetTextOrDefault('IDS_46' (* 'Välj minst ett Verk!' *) ));
   Exit ;
  End;

  dmInventory.cds_EXCELView.Active  := False ;
  SQLView := TSQLView.Create(grdProdPaketNrDBBandedTableView1,'SQL_SetUp.txt');
  SQLBuild := TSQLBuild.Create(SQLView);
  if SQLBuild.SQLReady then
  begin
    grdProdPaketNrDBBandedTableView1.DataController.KeyFieldNames := SQLView.KeyFields ;
    dmInventory.cds_Excelview.SQL := SQLBuild.SQL;
    dmInventory.cds_EXCELView.Active  := True ;
  end
  else
  begin
    showMessage('SQL could not be created!');
  end;
end;

procedure TfPositionView.acRefreshProdSUMExecute(Sender: TObject);
begin
  // Check that at least one region and or mill is selected
  // Deactivate datasource

end;

procedure TfPositionView.ccbATPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
begin
 TcxCheckComboBox(Sender).DroppedDown := False;
end;

procedure TfPositionView.eATExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAT.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbAT.Properties.Items.Count - 1 do
  Begin
   if (ccbAT.Properties.Items.Items[x].Description = eAT.Text) and (Length(eAT.Text) > 0) then
    Begin
     ccbAT.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eAT.Text := '' ;
end;

procedure TfPositionView.eABExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAB.Clear ;
 Found := False ;
  For x := 0 to ccbAB.Properties.Items.Count - 1 do
  Begin
   if (ccbAB.Properties.Items.Items[x].Description = eAB.Text) and (Length(eAB.Text) > 0) then
   Begin
    ccbAB.SetItemState(x, cbsChecked) ;
    Found:= True ;
   End ;
  End ;
 if Found = False then
  eAB.Text := '' ;
end;

procedure TfPositionView.eALExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbAL.Clear ;
 Found := False ;
  For x := 0 to ccbAL.Properties.Items.Count - 1 do
  Begin
   if (ccbAL.Properties.Items.Items[x].Description = eAL.Text) and (Length(eAL.Text) > 0) then
   Begin
    ccbAL.SetItemState(x, cbsChecked) ;
     Found:= True ;
   End ;
  End ;
 if Found = False then
  eAL.Text := '' ;
end;

procedure TfPositionView.acSaveProdPaketNrMallExecute(Sender: TObject);
begin
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fPositionView.Name + '1',

  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]

  + '/' +

  fPositionView.Name + '1'
//  sq_UserProfileForm.AsString

  ,grdProdPaketNrDBBandedTableView1,'fDeliveryReport') ;

  SaveUserProfile ;
 End;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;
end;

procedure TfPositionView.acSaveProdSUMMallExecute(Sender: TObject);
begin
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.StoreGridLayout_Special( ThisUser.UserID,   fPositionView.Name + '2',

  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]

  + '/' +

  fPositionView.Name + '2'
//  sq_UserProfileForm.AsString

  ,grdProdSUMDBBandedTableView1,'fDeliveryReport') ;

 End;
end;

procedure TfPositionView.OpenStandardMall(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  cds_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  cds_Props.ParamByName('Name').AsString     := 'InventoryReport' ;
  cds_Props.Active:= True ;
  cds_Props.Filter:= 'LOObjectType = 1' ; //Default
  cds_Props.Filtered:= True ;
  Try
   if (cds_Props.RecordCount > 0) AND (cds_PropsName.AsString > '') then
   Begin
   End
    else
     Begin
     End ;
  Finally
   cds_Props.Filtered:= False ;
   cds_Props.Active:= False ;
  End ;

 End ;
end;

Function TfPositionView.CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;
Var
    APCheckStates : ^TcxCheckStates;
    x             : Integer ;
Begin
//(0, 'LIP.InvCode', cbLIP)) ;
 Result:= False ;
  New(APCheckStates);
  try
    with Combo do
    begin
     CalculateCheckStates(Value, Properties.Items,Properties.EditValueFormat , APCheckStates^);
     if Properties.Items.Count > 0 then
     Begin
      for x := 0 to Properties.Items.Count - 1 do
      Begin
       if APCheckStates^[x] = cbsChecked then
       Begin
        Result:= True ;
       End ;//if..
      End ;//for..
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;

procedure TfPositionView.acExportToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
 SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
  ShowMessage(siLangLinked_fDeliveryReport.GetTextOrDefault('IDS_81' (* 'Tabell exporterad till excel fil ' *) ) + FileName);
  Except
  End ;
 End ;

end;

procedure TfPositionView.cbExpandedPropertiesChange(Sender: TObject);
begin
 if cbExpanded.Checked then
  grdProdPaketNrDBBandedTableView1.ViewData.Expand(True)
   else
    grdProdPaketNrDBBandedTableView1.ViewData.Collapse(True) ;
end;

procedure TfPositionView.cbOwnerPropertiesCloseUp(Sender: TObject);
Var x           : Integer ;
    PktNrLevKod : String ;
begin
  LoadCheckBoxWithStorageGroup;
  LoadCheckBoxWithSTorageArea;
  LoadCheckBoxWithStoragePos;
 For x := 0 to cbOwner.Properties.Items.Count - 1 do
 Begin
  if cbOwner.States[x] = cbsChecked then
  Begin
   PktNrLevKod  := cbOwner.Properties.Items.Items[x].ShortDescription ;
  End ;
 End ;

 SetCheckComboBoxes_Where_PktNrLevKod_Required(PktNrLevKod) ;
end;

procedure TfPositionView.cbProdPaketNrPropertiesChange(Sender: TObject);
begin
//Open paketnr grid Mall
 OpenProdPaketNrMall ;
 Open_UserProfile ;
end;

procedure TfPositionView.Open_UserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  if sq_UserProfileInputOption.AsInteger = 1 then
  cbExpanded.Checked  := True
  else
  cbExpanded.Checked  := False ;


 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfPositionView.cbProdSUMPropertiesChange(Sender: TObject);
begin
//Open prod sum grid Mall
 OpenProdSUMMall ;
end;

procedure TfPositionView.cbSalesRegionPropertiesCloseUp(Sender: TObject);
begin
  LoadCheckBoxWithVerk;
  LoadCheckBoxWithSTorageArea;
  LoadCheckBoxWithStoragePos;
end;

procedure TfPositionView.cbStorageAreaPropertiesCloseUp(Sender: TObject);
begin
  LoadCheckBoxWithStoragePos;
end;

procedure TfPositionView.cbStorageGroupPropertiesCloseUp(Sender: TObject);
begin
  LoadCheckBoxWithSTorageArea;
  LoadCheckBoxWithStoragePos;
end;

procedure TfPositionView.OpenProdPaketNrMall ;
begin
//Open Mall
 if cbProdPaketNr.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fPositionView.Name + '1',
  cbProdPaketNr.Properties.Items.Strings[cbProdPaketNr.ItemIndex]
  + '/' + fPositionView.Name + '1', grdProdPaketNrDBBandedTableView1,'fEXCELView') ;
 End;
end;

procedure TfPositionView.OpenProdSUMMall ;
begin
//Open Mall
 if cbProdSUM.ItemIndex > -1 then
 Begin
  dmsSystem.LoadGridLayout_Special( ThisUser.UserID, fPositionView.Name + '2',
  cbProdSUM.Properties.Items.Strings[cbProdSUM.ItemIndex]
  + '/' + fPositionView.Name + '2', grdProdSUMDBBandedTableView1,'fEXCELView') ;
 End;
end;

procedure TfPositionView.cxButton1Click(Sender: TObject);
begin
 Close ;
end;

procedure TfPositionView.cxButton2Click(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfPositionView.eNTExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNT.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbNT.Properties.Items.Count - 1 do
  Begin
   if (ccbNT.Properties.Items.Items[x].Description = eNT.Text) and (Length(eNT.Text) > 0) then
    Begin
     ccbNT.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eNT.Text := '' ;
end;

procedure TfPositionView.eNBExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
Begin
 ccbNB.Clear ; // .ClearSelection ;
 Found := False ;
  For x := 0 to ccbNB.Properties.Items.Count - 1 do
  Begin
   if (ccbNB.Properties.Items.Items[x].Description = eNB.Text) and (Length(eNB.Text) > 0) then
    Begin
     ccbNB.SetItemState(x, cbsChecked) ;
     Found:= True ;
    End ;
  End ;
 if Found = False then
  eNB.Text := '' ;
end;


procedure TfPositionView.SaveUserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbProdPaketNr.Text ;
 sq_UserProfile.Active  := True ;
 Try
 if not sq_UserProfile.Eof then
 Begin
  sq_UserProfile.Edit ;
  if cbExpanded.Checked then
  sq_UserProfileInputOption.AsInteger := 1
  else
  sq_UserProfileInputOption.AsInteger := 0 ;
  sq_UserProfile.Post ;
 End;
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

{ TCMComboBoxItems }

procedure TCMComboBoxItems.add(aDesc, aShortDesc: string; aidNo: integer);
var
  item: TCMComboBoxItem;
begin
  item := TCMComboBoxItem.Create;
  item.Description := aDesc;
  item.ShortDescription := aShortDesc;
  item.idNo := aidNo;
  items.add(item);
end;

procedure TCMComboBoxItems.add(aDesc, aShortDesc: string);
var
  item: TCMComboBoxItem;
begin
  item := TCMComboBoxItem.Create;
  item.Description := aDesc;
  item.ShortDescription := aShortDesc;
  items.add(item);
end;

procedure TCMComboBoxItems.add(aDesc: string);
var
  item: TCMComboBoxItem;
begin
  item := TCMComboBoxItem.Create;
  item.Description := aDesc;
  items.add(item);
end;

constructor TCMComboBoxItems.create;
begin
  items := TList<TCMComboBoxItem>.create;
end;

destructor TCMComboBoxItems.destroy;
begin
  items.Free
end;

End.
