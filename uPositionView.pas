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
  FireDAC.Phys.MSSQL
  , uICMObserver,
  udmFilterSQL, dxCore, cxDateUtils ;


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

  TfPositionView = class(TForm, ICMObserver)
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
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    ccVarugrupp: TcxCheckComboBox;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxStyleNormalAktivePkg: TcxStyle;
    ccbNT: TcxCheckComboBox;
    ccbNB: TcxCheckComboBox;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxbtnCloseForm: TcxButton;
    cxbtnClearFilter: TcxButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    tsProduktionProduktSummary: TcxTabSheet;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    acNewTemplate: TAction;
    acSaveTemplate: TAction;
    grdPositionLevel1: TcxGridLevel;
    grdPosition: TcxGrid;
    acRefreshReport: TAction;
    acDeleteTemplate: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pmPkgNos: TdxBarPopupMenu;
    acExpandAllGridView: TAction;
    grdPositionDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridPopupMenu2: TcxGridPopupMenu;
    acPrint: TAction;
    dxComponentPrinter1Link1: TdxGridReportLink;
    sq_UserProfileInputOption: TIntegerField;
    sq_UserProfileStartPeriod: TSQLTimeStampField;
    sq_UserProfileEndPeriod: TSQLTimeStampField;
    frxDB_ST_Del_Stat: TfrxDBDataset;
    frxReport2: TfrxReport;
    acUlrikaRapport: TAction;
    sq_ST_Del_Stat: TFDQuery;
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
    cds_StoragePosPositionID: TIntegerField;
    cds_StoragePosPositionName: TStringField;
    cds_StorageGroupsPLIP: TStringField;
    cds_StorageGroupsLIPNo: TIntegerField;
    cds_StorageGroupsPIPNO: TIntegerField;
    cds_StorageGroupsCITYNAME: TStringField;
    cds_StorageGroupsLogicalInventoryName: TStringField;
    cds_StorageGroupsInvCode: TStringField;
    grdPositionDBBandedTableView2: TcxGridDBBandedTableView;
    grdPositionDBBandedTableView3: TcxGridDBBandedTableView;
    grdPositionDBBandedTableView4: TcxGridDBBandedTableView;
    grdPositionDBBandedTableView5: TcxGridDBBandedTableView;
    grdPositionDBBandedTableView6: TcxGridDBBandedTableView;
    cbInklEjFakt: TcxComboBox;
    ccbReference: TcxCheckComboBox;
    ccbInfo2: TcxCheckComboBox;
    ccbInfo1: TcxCheckComboBox;
    cbInkTimeInDateFilter: TcxCheckBox;
    cxBtnUpdFilter: TcxButton;
    acRequestFilterUpdate: TAction;
    siLangLinked1: TsiLangLinked;
    deStartPeriod: TcxDateEdit;
    deEndPeriod: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLabel13: TcxLabel;
    sq_GridSets2: TFDQuery;
    sq_GridSets2ViewName: TStringField;
    sq_GridSets2UserID: TIntegerField;
    sq_GridSets2Sets: TBlobField;
    sq_GridSets2Name: TStringField;
    sq_GridSets2Form: TStringField;
    sq_UserProfileVerkNo: TIntegerField;
    sq_UserProfileOwnerNo: TIntegerField;
    sq_UserProfilePIPNo: TIntegerField;
    sq_UserProfileLIPNo: TIntegerField;
    sq_UserProfileRegPointNo: TIntegerField;
    sq_UserProfileRegDate: TSQLTimeStampField;
    sq_UserProfileCopyPcs: TIntegerField;
    sq_UserProfileRunNo: TIntegerField;
    sq_UserProfileProducerNo: TIntegerField;
    sq_UserProfileAutoColWidth: TIntegerField;
    sq_UserProfileSupplierCode: TStringField;
    sq_UserProfileLengthOption: TIntegerField;
    sq_UserProfileLengthGroupNo: TIntegerField;
    sq_UserProfileNewItemRow: TIntegerField;
    sq_UserProfileSalesRegionNo: TIntegerField;
    sq_UserProfileMarketRegionNo: TIntegerField;
    sq_UserProfileOrderTypeNo: TIntegerField;
    sq_UserProfileStatus: TIntegerField;
    sq_UserProfileFilterOrderDate: TIntegerField;
    sq_UserProfileClientNo: TIntegerField;
    sq_UserProfileSalesPersonNo: TIntegerField;
    sq_UserProfileVerkSupplierNo: TIntegerField;
    sq_UserProfileVerkKundNo: TIntegerField;
    sq_UserProfileLOObjectType: TIntegerField;
    sq_UserProfileBarCodeNo: TIntegerField;
    sq_UserProfileGradeStampNo: TIntegerField;
    sq_UserProfileVolumeUnitNo: TIntegerField;
    sq_UserProfileLengthFormatNo: TIntegerField;
    sq_UserProfileLengthVolUnitNo: TIntegerField;
    sq_UserProfileGroupByBox: TIntegerField;
    sq_UserProfileGroupSummary: TIntegerField;
    sq_UserProfileAgentNo: TIntegerField;
    sq_UserProfileLoadingLocationNo: TIntegerField;
    sq_UserProfileShipperNo: TIntegerField;
    sq_UserProfileBookingTypeNo: TIntegerField;
    sq_UserProfileCustomerNo: TIntegerField;
    sq_UserProfileShowProduct: TIntegerField;
    sq_UserProfileFilter1: TStringField;
    cbReportSelection: TcxComboBox;
    grdPositionDBBandedTableView1City: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1LogicalInventoryName: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1pcs: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1NM3: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1AT: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1AB: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1NT: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1NB: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1AL: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1dim: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1TS: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1PC: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1KV: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1UT: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1PIPNo: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1VarugruppNamn: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1Info1: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1Info2: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1AreaName: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1PositionName: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1StoredDate: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1Product: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1PackageNo: TcxGridDBBandedColumn;
    grdPositionDBBandedTableView1SupplierCode: TcxGridDBBandedColumn;
    acExportGridToExcel: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxbtnDeleteTemplate: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    GroupBox1: TGroupBox;
    btnExportToExcel: TcxButton;
    ckbSelectedLines: TCheckBox;
    acOnEnterFilterCombos: TAction;
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
    procedure acExportToExcelExecute(Sender: TObject);
    procedure cbOwnerPropertiesCloseUp(Sender: TObject);
    procedure cxbtnCloseFormClick(Sender: TObject);
    procedure cxbtnClearFilterClick(Sender: TObject);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure acSaveTemplateExecute(Sender: TObject);
    procedure cbReportSelectionPropertiesChange(Sender: TObject);
    procedure acDeleteTemplateExecute(Sender: TObject);
    procedure acCollapseAllGridViewExecute(Sender: TObject);
    procedure acExpandAllGridViewExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure cbSalesRegionPropertiesCloseUp(Sender: TObject);
    procedure cbStorageGroupPropertiesCloseUp(Sender: TObject);
    procedure cbStorageAreaPropertiesCloseUp(Sender: TObject);
    procedure acRefreshReportExecute(Sender: TObject);
    procedure cbStoragePosPropertiesCloseUp(Sender: TObject);
    procedure cbInkTimeInDateFilterPropertiesChange(Sender: TObject);
    procedure acRequestFilterUpdateExecute(Sender: TObject);
    procedure UpdateDataFilterCombos(Sender: TObject);
    procedure acNewTemplateExecute(Sender: TObject);
    procedure acExportGridToExcelExecute(Sender: TObject);
    procedure grdPositionDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acOnEnterFilterCombosExecute(Sender: TObject);

  private
    { Private declarations }
    FFilterUpdated: boolean;  // Filter combos updated
    procedure SetDateFields ;
    procedure LoadMainCombos;
    procedure LoadCheckBoxWithVerk ;
    procedure LoadCheckBoxWithSalesRegion;
    procedure LoadCheckBoxWithSTorageArea;
    procedure LoadCheckBoxWithStoragePos;
    procedure LoadCheckBoxWithStorageGroup;
    procedure LoadCheckBox(const aFieldName, aCheckItemFld, aTagField, aCheckItem: string; const aDataSet: TFDQuery; const aCombo: TcxCheckComboBox);
    procedure UpdateFilterCombos(const aCombo: TcxCheckComboBox; aList: TCMSL);
    //    function prepareDataSetForCombo(aTargetCbo, aSourceCbo: TcxCheckComboBox;InitialSQL, finalSQL: TStrings): TFDQuery;
    procedure Open_UserProfile ;
    procedure SaveUserProfile ;
    procedure PopulateCheckBoxTemplate ;
    procedure PopulateCheckBoxTemplates;
    procedure OpenTemplate ;
    function getCheckedCount(const aCombo: TcxCheckComboBox; var aChkList:TCMDL ): integer overload;
    function getCheckedCount(const aCombo: TcxCheckComboBox): integer overload;
//    procedure CheckAllItems ;

    Function  SelectedOwnersOK : Boolean ;


    function CreateWhereList(const aDecimalType: byte; const aSource: integer): TStringList;
    Function  CheckIfAnyCheckedItemsInComboFilter(combo : TcxCheckComboBox) : Boolean ;

    Function  ComboBoxFilterChecked(const Kolumn : String;combo : TcxCheckComboBox) : Boolean ;
    Function  GetComboFilterText(const Kolumn : String;combo : TcxCheckComboBox) : String ;
    function  GetReportIndex: integer;
    function  GetReportTemplate(const aIndex: integer): string;
    procedure ClearProductFilter ;

    procedure OpenStandardTemplate(Sender: TObject);
    procedure EnableFilterButton(Enable: boolean);
    procedure StoreGridLayout(const UserID : Integer;const Form, ViewName : String;
      AGridView: TcxGridTableView;const MallName : String) ;
    function LoadGridLayout(const UserID : Integer;const Form, ViewName : String;
      AGridView: TcxGridTableView;const MallName : String): boolean;

  public
    { Public declarations }
//    Function  GetSQLofComboFilter(const dType : Byte;const Kolumn : String;combo : TcxCheckComboBox) : String ;
    function GetBaseSQL(const aSQL: TStrings): TStrings;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
    procedure Update(aSubject: IInterface);
    property filterUpdated: boolean read FFilterUpdated;
  end;

var
  fPositionView: TfPositionView;
  LoggDir: string;
  cUserLipNoExists: boolean;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , {uGridSetting,}
  dmc_UserProps, dmsVidaSystem,
 // dmsVidaPkg,
  uEntryField{, uSokAvropMall , uAngeNy, VidaDeliveryClass}, uSQLView,
  udmLanguage, uAngeNyMall;

{$R *.dfm}


procedure TfPositionView.PopulateCheckBoxTemplate ;
Begin
 cbReportSelection.Clear ;

 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := TForm(Self).Name + '2' ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbReportSelection.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbReportSelection.Properties.Items.Count > 0 then
  cbReportSelection.ItemIndex  := 0 ;

End;


procedure TfPositionView.PopulateCheckBoxTemplates;
begin
 cbReportSelection.Properties.Items.Clear ;
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := TForm(self).Name ;
 sq_UserProfile.ParamByName('Name').AsString    := 'ALL' ;
 sq_UserProfile.Active  := True ;
 sq_UserProfile.First ;
 while not sq_UserProfile.Eof do
 Begin
  cbReportSelection.Properties.Items.Add(sq_UserProfileName.AsString) ;
  sq_UserProfile.Next ;
 End;

 if cbReportSelection.Properties.Items.Count > 0 then
  cbReportSelection.ItemIndex  := 0 ;
end;

procedure TfPositionView.ClearProductFilter ;
Begin

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
 ccbReference.Clear;
 ccbInfo1.Clear;
 ccbInfo2.Clear;

End ;

procedure TfPositionView.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

procedure TfPositionView.StoreGridLayout(const UserID : Integer;const Form, ViewName : String;
AGridView: TcxGridTableView;const MallName : String) ;
var
  Stream: TMemoryStream;
begin
 With dmsSystem do
 Begin
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;

  sq_GridSets2.Active:= True ;
  if not sq_GridSets2.Eof then
  sq_GridSets2.Edit
  else
  Begin
   sq_GridSets2.Insert ;
   sq_GridSets2ViewName.AsString  := ViewName ;
   sq_GridSets2UserID.AsInteger   := UserID ;
   sq_GridSets2Form.AsString      := Form ;
   sq_GridSets2Name.AsString      := MallName ;
  End ;
  if sq_GridSets2.State in  [dsEdit, dsInsert] then
  begin
   Stream := TMemoryStream.Create;
   try
    AGridView.StoreToStream(Stream);
    Stream.Position := 0;
    sq_GridSets2Sets.LoadFromStream(Stream);
   finally
    Stream.Free;
   end;
   if sq_GridSets2.State in [dsEdit, dsInsert] then
   sq_GridSets2.Post;
   if sq_GridSets2.ChangeCount > 0 then
    sq_GridSets2.ApplyUpdates(0) ;
  end;
  sq_GridSets2.Active:= False ;
 End ;
end;


function TfPositionView.LoadGridLayout(const UserID : Integer;const Form, ViewName : String;
AGridView: TcxGridTableView;const MallName : String): boolean;
var
  Stream: TMemoryStream;
begin
 Result:= False ;
 With dmsSystem do
 Begin
  sq_GridSets2.ParamByName('ViewName').AsString  := ViewName ;
  sq_GridSets2.ParamByName('UserID').AsInteger   := UserID ;
//  sq_GridSets2.ParamByName('Form').AsString      := Form ;
//  sq_GridSets2.ParamByName('Name').AsString      := MallName ;
  sq_GridSets2.Active:= True ;
  if not sq_GridSets2.Eof then
  Begin
   Stream := TMemoryStream.Create;
   try
    sq_GridSets2Sets.SaveToStream(Stream);
    Stream.Position := 0;
    AGridView.RestoreFromStream(Stream);
    Result:= True ;
   finally
    Stream.Free;
   end;
  End ;
  sq_GridSets2.Active:= False ;
 End ;
end;

procedure TfPositionView.Update(aSubject: IInterface);
begin
  try
  UpdateFilterCombos(ccbAT, TdmFilterSQL(aSubject).ATL);
  UpdateFilterCombos(ccbAB, TdmFilterSQL(aSubject).AWL);
  UpdateFilterCombos(ccbNT, TdmFilterSQL(aSubject).NTL);
  UpdateFilterCombos(ccbNB, TdmFilterSQL(aSubject).NWL);
  UpdateFilterCombos(ccbAL, TdmFilterSQL(aSubject).LengthDescL);
  UpdateFilterCombos(ccbTS2, TdmFilterSQL(aSubject).SpeciesL);
  UpdateFilterCombos(ccbKV2, TdmFilterSQL(aSubject).GradeL);
  UpdateFilterCombos(ccbSU2, TdmFilterSQL(aSubject).SUL);
  UpdateFilterCombos(ccbIMP, TdmFilterSQL(aSubject).IMPL);
  UpdateFilterCombos(ccbREFERENCE, TdmFilterSQL(aSubject).REFL);
  UpdateFilterCombos(ccbInfo1, TdmFilterSQL(aSubject).Info1L);
  UpdateFilterCombos(ccbInfo2, TdmFilterSQL(aSubject).Info2L);
  UpdateFilterCombos(ccVarugrupp, TdmFilterSQL(aSubject).VaruGruppL);
  FFilterUpdated := true;
  EnableFilterButton(false);
  finally
    TdmFilterSQL(aSubject).ATL.free;
    TdmFilterSQL(aSubject).AWL.free;
    TdmFilterSQL(aSubject).NTL.free;
    TdmFilterSQL(aSubject).NWL.free;
  end;
end;

procedure TfPositionView.UpdateFilterCombos(const aCombo: TcxCheckComboBox;
  aList: TCMSL);
Var i : Integer ;
  s1,s2: string;
//  SortedKeys: TList<String>;
begin
  try
    aCombo.Properties.Items.Clear;
    // SortedKeys := TList<string>.create(aList.Keys);
    // SortedKeys.Sort;
    for s1 in aList do
    Begin
      try
        aCombo.Properties.Items.AddCheckItem(s1, s1);
      except
        on E: Exception do
        begin
          ShowMessage('FilterData error! Please contact support! Code: ' +
            intToStr(i) + sLineBreak + 'Send the bugreport!');
          raise;
        end;
      end;
    End;
  finally
  end;
end;

procedure TfPositionView.LoadCheckBox(const aFieldName, aCheckItemFld, aTagField, aCheckItem: string;
  const aDataSet: TFDQuery; const aCombo: TcxCheckComboBox);
Var i : Integer ;
  cb: TcxCheckComboBoxItem;
begin
  aDataSet.Active := not aDataSet.Active ;
  Try
    aCombo.Properties.Items.Clear ;

    While not aDataSet.Eof do
    Begin
      try
        if aCheckItemFld <> '' then
          cb := aCombo.Properties.Items.AddCheckItem(aDataSet.FieldByName(aFieldName).AsString, aDataSet.FieldByName(aCheckItemFld).AsString)
        else
          cb := aCombo.Properties.Items.AddCheckItem(aDataSet.FieldByName(aFieldName).AsString);
        if aTagField <> '' then
          cb.Tag := aDataSet.FieldByName(aTagField).AsInteger;

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
  LoadCheckBox('ClientName','ClientNo','','',cds_SalesRegion,cbSalesRegion);
end;

procedure TfPositionView.LoadCheckBoxWithSTorageArea;
Var
  Count, x: integer;
  Mills: TList<string>;
  SGroups: TList<string>;

  procedure UpdateAreaCombo(PIPNos: TList<string>);
  begin
    if (assigned(PIPNos) AND (PIPNos.Count > 0)) then
      // Retrieve storageareas and fill combobox
      Try
        try
          cds_StorageAreas.SQL.SaveToFile(LoggDir+'cds_StorageAreas.sql');
        except
        end;
        cds_StorageAreas.Active := True;
        cbStorageArea.Properties.Items.Clear;
        cds_StorageAreas.First;
        While not cds_StorageAreas.Eof do
        Begin
          cbStorageArea.Properties.Items.AddCheckItem
            (cds_StorageAreas.FieldByName('AreaName')
            .AsString, cds_StorageAreas.FieldByName('AreaID').AsString);
          cds_StorageAreas.Next;
        End;

      Finally
        cds_StorageAreas.Active := False;
        if assigned(PIPNos) then
          PIPNos.Free;
      end;
  end;

begin
  cds_StorageAreas.Active := False;

  // Check if any storagegroup selected then use these to fill up the Area-combo
  SGroups := TList<string>.create;
  try
    for x := 0 to cbStorageGroup.Properties.Items.Count - 1 do
    begin
      if cbStorageGroup.GetItemState(x) = cbsChecked then
        SGroups.add(intToStr(cbStorageGroup.Properties.Items[x].Tag));
    end;
    // If any Storagegroup checked then create sql
    if (assigned(SGroups) AND (SGroups.Count = 0)) then
      for x := 0 to cbStorageGroup.Properties.Items.Count - 1 do
          SGroups.add(intToStr(cbStorageGroup.Properties.Items[x].Tag));
    if (assigned(SGroups) AND (SGroups.Count > 0)) then
    begin
      cds_StorageAreas.SQL.Clear;
      cds_StorageAreas.SQL.add('SELECT DISTINCT area.AreaName, area.AreaID');
      cds_StorageAreas.SQL.add('FROM  PhysicalInventoryPoint PIP');
      cds_StorageAreas.SQL.add
        ('INNER JOIN Area ON Area.PIPNo = PIP.PhysicalInventoryPointNo');

        // Get first area
      cds_StorageAreas.SQL.add('WHERE  (PIP.PhysicalInventoryPointNo = ' + SGroups[0] + ')');
        // Get the rest...
      for x := 1 to SGroups.Count - 1 do
        cds_StorageAreas.SQL.add('OR (PIP.PhysicalInventoryPointNo = ' +
          SGroups[x] + ')');
      cds_StorageAreas.SQL.add('Order by area.AreaName');
      UpdateAreaCombo(SGroups);
    end
    else
    begin
(*
      // Collect all checked mills
      Mills := TList<string>.create;
      for x := 0 to cbOwner.Properties.Items.Count - 1 do
      begin
        if cbOwner.GetItemState(x) = cbsChecked then
        begin
          Mills.add(cbOwner.Properties.Items[x].ShortDescription);
        end;
      end;

      // If any mill checked then create sql
      if (assigned(Mills) AND (Mills.Count > 0)) then
      begin
        cds_StorageAreas.SQL.Clear;
        cds_StorageAreas.SQL.add('SELECT DISTINCT area.AreaName, area.AreaID');
        cds_StorageAreas.SQL.add('FROM  PhysicalInventoryPoint PIP');
        cds_StorageAreas.SQL.add
          ('INNER JOIN Area ON Area.PIPNo = PIP.PhysicalInventoryPointNo');
        if (assigned(Mills) AND (Mills.Count > 0)) then
        begin
          cds_StorageAreas.SQL.add('WHERE  (PIP.OwnerNo = ' + Mills[0] + ')');
          for x := 1 to Mills.Count - 1 do
            cds_StorageAreas.SQL.add('OR (PIP.OwnerNo = ' + Mills[x] + ')');
        end;
        cds_StorageAreas.SQL.add('Order by area.AreaName');

        // Retrieve storageareas for checked mills and fill combobox
        UpdateAreaCombo(Mills);
      end
      else
*)
        // No mill/StorageGrops checked - empty combo
        cbStorageArea.Properties.Items.Clear;
    end;
  finally
  end;
end;

procedure TfPositionView.LoadCheckBoxWithStorageGroup;
var
  SQL: TStringList;
  i: integer;
  CheckedOwners: TList<string>;
begin
  // Prepare SQL by using the old stored code excluding WHERE, OrderBy and GroupBy.
  SQL := TStringList.Create;
  SQL.Text := cds_StorageGroups.SQL.Text;
  SQL.Text := Copy(SQL.Text, 1, Pos('WHERE', SQL.Text)-3);

  // Now, add the WHERE-clause
  SQL.add('WHERE');

  // List checked owners
  for i := 0 to cbOwner.Properties.Items.Count - 1 do
  begin
    if cbOwner.GetItemState(i) = cbsChecked then
    begin
      if not assigned(CheckedOwners) then
        CheckedOwners := TList<string>.create;
      CheckedOwners.add(cbOwner.Properties.Items[i].ShortDescription);
    end;
  end;

  // At least one owner is needed
  if assigned(CheckedOwners) and (CheckedOwners.Count > 0) then
  begin
    SQL.add(' (PH.OwnerNo = ' + CheckedOwners[0]);
    for i := 1 to CheckedOwners.Count - 1 do
      SQL.add(' OR PH.OwnerNo = ' + CheckedOwners[i]);
    SQL.add(' )');

    // Dynamic part finished - add the rest of WHERE-clause:
    SQL.Add('AND LIP.SequenceNo = 1');
    SQL.Add('AND PH.SequenceNo = 1');
    SQL.Add('AND PH.PhyInvPointNameNo in (Select PH2.PhyInvPointNameNo');
    SQL.Add('FROM dbo.PHYSICALINVENTORYPOINT PH2');
    SQL.Add('WHERE PH2.OwnerNo = ' + intToStr(ThisUser.CompanyNo) + ')');
    if cUserLipNoExists then
    Begin
      SQL.Add('AND ((exists (Select * from dbo.UserLipNo ul') ;
      SQL.Add('WHERE ul.LIPNo = LIP.LogicalInventoryPointNo') ;
      SQL.Add('AND ul.UserID = ' + IntToStr(ThisUser.UserID) + ')))') ;
    End;

    // Add Order by
    SQL.Add('Order By LIP.LogicalInventoryName, CY.CITYNAME');

    // Put new SQL into the dataset and activate it and load checkCombobox from it
    cds_StorageGroups.SQL.Clear;
    cds_StorageGroups.SQL.Text := SQL.Text;
    SQL.Free;
    try
      cds_StorageGroups.SQL.SaveToFile(LoggDir+'cds_StorageGroups.sql');
    except
    end;
    LoadCheckBox('PLIP', 'LIPNO','PIPNo', '', cds_StorageGroups, cbStorageGroup);
  end
  else // No owner selected - empty the combo
  begin
    showmessage('Please select at least one owner/mill!');
    cbStorageGroup.properties.items.Clear;
  end;

end;




procedure TfPositionView.LoadCheckBoxWithStoragePos;
Var
  Count, x, iValue: integer;
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
  if s = '' then  // No Area select is considered all selected
  for x := 0 to cbStorageArea.Properties.Items.Count - 1 do
  begin
    s := s + cbStorageArea.Properties.Items[x].ShortDescription + ',';
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
      try
        cds_StoragePos.SQL.SaveToFile(LoggDir+'cds_StoragePos.sql');
      except
      end;
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
  SRList := TCMComboBoxItems.Create;
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
//      cds_verk.SQL.Add('AND C.IntVerk = 1');
      cds_verk.SQL.Add('AND (C.SalesRegionNo = '+ SRList.Items[0].ShortDescription);
      for x := 1 to SRList.items.Count-1 do
      begin
        cds_verk.SQL.Add(' OR C.SalesRegionNo = '+ SRList.Items[x].ShortDescription);
      end;
      cds_verk.SQL.Add(' )');
      cds_verk.SQL.Add('Order by C.clientName');
    end;
    Try

      try
        cds_verk.SQL.SaveToFile(LoggDir+'cds_verk.sql');
      except
      end;

      cds_verk.Active := true;
      cbOwner.Properties.Items.Clear;

      While not cds_Verk.Eof do
      Begin
        cbOwner.Properties.Items.AddCheckItem(cds_Verk.FieldByName('ClientName')
          .AsString, cds_Verk.FieldByName('ClientNo').AsString);
        cds_Verk.Next;
      End;

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
  if dmInventory.UserLipNoExists then
    cUserLipNoExists  := True
  else
    cUserLipNoExists := false;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  LoggDir := dmsSystem.Get_Dir('UserDir');
  Try
    deStartPeriod.Clear;
    deEndPeriod.Clear;
    dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;
    cbReportSelection.EditValue := mtuserPropName.AsString;
    LoadMainCombos;
    PopulateCheckBoxTemplate;
  Finally
    Screen.Cursor := Save_Cursor ;
  End ;
end;

procedure TfPositionView.LoadMainCombos;
var
  s: string;
  sl: TStringList;
begin
  s := mtUserPropFilter2.AsString;
  sl := TStringList.Create;
  sl.Delimiter := ' ';
//  sl.StrictDelimiter := true;
  sl.QuoteChar := '|';
  sl.DelimitedText := s;
  LoadCheckBoxWithSalesRegion;
  if sl.Count <= 3 then exit
  else
  begin
    if sl[0] <> '' then cbSalesRegion.EditValue := sl[0];
    LoadCheckBoxWithVerk ;
    if sl[1] <> '' then cbOwner.EditValue := sl[1];
    LoadCheckBoxWithStorageGroup;
    if sl[2] <> '' then cbStorageGroup.EditValue := sl[2];
    if sl[3] <> '' then cbInklEjFakt.EditValue := sl[3];
  end;
end;

function TfPositionView.CreateWhereList(const aDecimalType: byte; const aSource: integer): TStringList;
const
  quoted: integer = 1;
  notQuoted: integer = 0;
var
  WhereList: TWhereString;
begin
  WhereList := TWhereString.Create;
  case aSource of
    0: begin
       WhereList.addAND('PN.Status = 1',true,true);         // In store
       WhereList.addAND('OH.OrderType = 0',true,true);
    end;
    1: begin                                   // Not invoiced + store
       WhereList.addOR('(NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos',true,false);
       WhereList.addOR('WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)',false,true);
       WhereList.addOR('PN.status = 1)',true,true);
       WhereList.addAND('OH.OrderType = 0',true,true);
    end;
    2: begin                                   // Not Invoiced
       WhereList.addAND('OH.OrderType = 0',true,true);
       WhereList.addAND('PN.Status = 0',true,true);
       WhereList.addAND('NOT EXISTS (SELECT * FROM dbo.InvoiceNos nos',true,false);
       WhereList.addAND('WHERE nos.InternalInvoiceNo = inl.InternalInvoiceNo)',false,true);
    end;
  end;
//  WhereList.addAND('PN.DateCreated > DATEADD(year,-1,GETDATE())',true,true);
  if deStartPeriod.EditValue <> null then
    WhereList.addAND('PN.StoredDate >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date)),true,true);
  if deEndPeriod.EditValue <> null then
    WhereList.addAND('PN.StoredDate <= ' + QuotedStr(DateTimeToStr(deEndPeriod.Date)),true,true);

  WhereList.addFromCombo(aDecimalType,notQuoted,cbOwner,'PIP.OwnerNo');
  WhereList.addFromCombo(aDecimalType,notQuoted,cbStorageGroup,'LIP.LogicalInventoryPointNo');
  WhereList.addFromCombo(aDecimalType,notQuoted,cbStorageArea,'Ar.AreaID');
  WhereList.addFromCombo(aDecimalType,notQuoted,cbStoragePos,'PN.PositionID');
  WhereList.addFromCombo(1,notQuoted,ccbAT,'pg.ActualThicknessMM');
  WhereList.addFromCombo(1,notQuoted,ccbNT,'pg.NominalThicknessMM');
  WhereList.addFromCombo(1,notQuoted,ccbAB,'pg.ActualWidthMM');
  WhereList.addFromCombo(1,notQuoted,ccbNB,'pg.NominalWidthMM');
  WhereList.addFromCombo(1,notQuoted,ccbAL,'dbo.getMaxLengthOfPackage(PN.PackageNo)');
  WhereList.addFromCombo(1,Quoted,ccbReference,'PN.REFERENCE');
  WhereList.addFromCombo(1,notQuoted,ccbInfo1,'PN.Info1');
  WhereList.addFromCombo(1,notQuoted,ccbInfo2,'PN.Info2');

  result := WhereList.getWhereStatement;
end;

procedure TfPositionView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm_UserProps.SaveUserProps(Self.Name,mtUserProp);
  Action:= caFree ;
  fPositionView := nil;
  dmFilterSQL.Detach(self);
end;

procedure TfPositionView.FormCreate(Sender: TObject);
begin
{$IFDEF DUNITX} // Avoid connection to database during unit-testing for now.
{$ELSE}
  dmFilterSQL := TdmFilterSQL.Create(self);
  dmFilterSQL.Attach(self);   // Register this form as an observer (Observer pattern)
  createCo(nil,ThisUser.CompanyNo);
  cbInkTimeInDateFilter.Properties.OnChange(self); //Setup Dateinput to correspond o this checkbox;
  OpenTemplate;
{$ENDIF}
end;

procedure TfPositionView.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   Perform(Wm_NextDlgCtl,0,0);
  end;
end;

function TfPositionView.GetBaseSQL(const aSQL: TStrings): TStrings;
var
  s: string;
  i,j: integer;
begin
  //Remove everything before 'FROM'
  i := pos('FROM',AnsiUpperCase(aSQL.Text));
  //Remove everything from 'WHERE' statement
  j := pos('WHERE',aSQL.Text);
  j := j - i; // No of chars to copy;

  // Copy BaseSQL
  s := copy(aSQL.Text,i,j);
  Result := TStringList.Create;
  Result.Text := s;
end;

function TfPositionView.getCheckedCount(
  const aCombo: TcxCheckComboBox): integer;
var
  aList: TCMDL;
begin
  aList := nil;
  result := getCheckedCount(aCombo, aList);
  aList.Free;
end;

function TfPositionView.getCheckedCount(const aCombo: TcxCheckComboBox; var aChkList:TCMDL ): integer;
var  i, count: integer;
begin
  if not assigned(aChkList) then
    aChkList := TCMDL.Create
  else
    aChkList.Clear;
  result := 0;
  for i := 0 to aCombo.Properties.Items.Count - 1 do
  begin
    if aCombo.States[i] = cbsChecked then begin
      result := result + 1;
      aChkList.Add(aCombo.Properties.Items[i].ShortDescription, aCombo.Properties.Items[i].Description);
    end;
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


procedure TfPositionView.grdPositionDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  ColPkgNo,
  ColSupplierCode: TcxCustomGridTableItem;
begin
  AAllow := False;
  if AItem.Name = 'grdPositionDBBandedTableView1REFERENCE' then
  begin
    ColPkgNo := Sender.FindItemByName('grdPositionDBBandedTableView1PackageNo');
    ColSupplierCode := Sender.FindItemByName('grdPositionDBBandedTableView1SupplierCode');
    if (ColPkgNo <> nil) and (ColSupplierCode <> nil) then
      if ColPkgNo.Visible and ColSupplierCode.Visible then
        AAllow := True
  end;
end;

procedure TfPositionView.acCollapseAllGridViewExecute(Sender: TObject);
begin
 grdPositionDBBandedTableView1.ViewData.Collapse(True);
end;


procedure TfPositionView.acDeleteTemplateExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cbReportSelection.ItemIndex > -1 then
  Begin
   sq_UserProfile.Active := False ;
   sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
   sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '2' ;
   sq_UserProfile.Active := True ;
   Try
   sq_UserProfile.Filter  := 'Name = ' + QuotedStr(cbReportSelection.Properties.Items.Strings[cbReportSelection.ItemIndex]) ;
   sq_UserProfile.Filtered  := True ;
   if not sq_UserProfile.Eof then
    sq_UserProfile.Delete ;
   Finally
    sq_UserProfile.Filtered   := False ;
    sq_UserProfile.Active     := False ;
    cbReportSelection.Properties.Items.Delete(cbReportSelection.ItemIndex);
    cbReportSelection.ItemIndex := 0;
   End;
  End;
 End;
end;


procedure TfPositionView.acExpandAllGridViewExecute(Sender: TObject);
begin
 grdPositionDBBandedTableView1.ViewData.Expand(True);
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

procedure TfPositionView.acExportGridToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
  SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
  SaveDialog1.DefaultExt := 'xls';
  if SaveDialog1.Execute then
  Begin
    FileName := SaveDialog1.FileName;
    Try
    if ckbSelectedLines.Checked then
      ExportGridToExcel(FileName, grdPosition, False, False, True, 'xls')
    else
      ExportGridToExcel(FileName, grdPosition, False, True, True, 'xls');
    ShowMessage('Tabell exporterad till excel fil '  + FileName);
    Except
      on E: Exception do raise Exception.Create('Tabell kunde inte exporteras! '+sLineBreak+ E.Message);
    End;
  end;
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

function TfPositionView.GetReportIndex: integer;
begin
  result := cbReportSelection.ItemIndex;
end;

function TfPositionView.GetReportTemplate(const aIndex: integer): string;
begin
  case aIndex of
    0: result := 'AreaRef.txt';
    1: result := 'AreaRef.txt';
    2: result := 'AreaRef.txt';
    3: result := 'AreaRef.txt';
    4: result := 'AreaRef.txt';
    5: result := 'AreaRef.txt';
  else
    result :='AreaRef.txt';
  end;
end;

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

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Leverans') ;
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

procedure TfPositionView.acRefreshReportExecute(Sender: TObject);
var
  reportIndex: integer;
  reportTemplate: string;
  SQLView: TSQLView;
  SQLBuild: TSQLBuild;
  WhereList: TStringList;
  BaseSQL: TStrings;  // BaseSQL without SELECT, WHERE and GROUP BY sections.
  Source: integer; // Selection of Storage, storage with non-invoiced or non-invoiced.
  DataSet: TFDQuery;
begin
  // Check that at least one region and or mill is selected
  if GetCheckedCount(cbOwner) <= 0 then begin
    showMessage('Please select at least one mill!');
    exit;
  end;
  // Select report
  reportIndex := GetReportindex;
  reportTemplate := getReportTemplate(reportIndex);
  if reportTemplate <> '' then
  begin
    try
      Source := cbInklEjFakt.ItemIndex;
      DataSet := dmFilterSQL.cds_PositionView;
      // Deactivate datasource
      DataSet.Active := false;

      // Connect the dataset to the grid:s datasource
      dmFilterSQL.ds_PositionView.DataSet := DataSet;
      // Retrieve base-sql
      BaseSQL := GetBaseSQL(DataSet.SQL);
      // Create WHERE-section
      WhereList := CreateWhereList(0,source);
      // Create the complete SQL
      SQLView := TSQLView.create(grdPositionDBBandedTableView1, reportTemplate,
                    WhereList, BaseSQL);
      SQLBUILD := TSQLBuild.create(SQLView);


      // Run query
      DataSet.SQL := SQLView.SQL;
      DataSet.Active := True;
    finally
      if assigned(SQLBUILD) then
        SQLBUILD.Free;
      if assigned(SQLView) then
        SQLView.Free;
    end;
  end;
end;

procedure TfPositionView.acRequestFilterUpdateExecute(Sender: TObject);
begin
  EnableFilterButton(true);
end;

procedure TfPositionView.ccbATPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
begin
 TcxCheckComboBox(Sender).DroppedDown := False;
end;


procedure TfPositionView.acSaveTemplateExecute(Sender: TObject);
var
  UserID: integer;
  Form: string;
  View: string;
  Grid: TcxGridTableView;
  Template: string;
begin
  if cbReportSelection.ItemIndex > -1 then
  Begin
    UserID := ThisUser.UserID;
    Form := TForm(Self).Name;
    Template := cbReportSelection.Properties.Items.Strings
      [cbReportSelection.ItemIndex];
    View := Template + '/' + Form;
    Grid := grdPositionDBBandedTableView1;
    StoreGridLayout(UserID, Form, View, Grid, Template);
//    dmsSystem.StoreGridLayout_Special(UserID, Form, View, Grid, Template);
    SaveUserProfile;
  End;
end;

procedure TfPositionView.OpenStandardTemplate(Sender: TObject);
begin
 With dmInventory do
 Begin
  cds_Props.Active:= False ;
  cds_Props.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  cds_Props.ParamByName('Name').AsString     := cbReportSelection.Properties.Items.Strings[0];
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
  ShowMessage('Tabell exporterad till excel fil '  + FileName);
  Except
  End ;
 End ;

end;

procedure TfPositionView.acNewTemplateExecute(Sender: TObject);
var  fAngeNyMall  : TfAngeNyMall;
     NewIndex     : Integer ;
begin
 fAngeNyMall  := TfAngeNyMall.Create(nil);
 Try
  if fAngeNyMall.ShowModal = mrOK then
  Begin
    if not sq_UserProfile.Active then
      sq_UserProfile.Active := true;
   sq_UserProfile.Insert ;
   sq_UserProfileName.AsString    := fAngeNyMall.teMall.Text ;
   sq_UserProfileForm.AsString    := fPositionView.Name + '2' ;
   sq_UserProfile.Post ;

   cbReportSelection.Properties.Items.Add(fAngeNyMall.teMall.Text) ;

   NewIndex := cbReportSelection.Properties.Items.IndexOf(fAngeNyMall.teMall.Text) ;

   if NewIndex > -1 then
   Begin
    cbReportSelection.ItemIndex  :=  NewIndex ;
    acSaveTemplateExecute(Sender) ;
   End;
  End;
 Finally
  FreeAndNil(fAngeNyMall) ;
 End;
end;

procedure TfPositionView.acOnEnterFilterCombosExecute(Sender: TObject);
begin
  if not filterUpdated then
  begin
    UpdateDataFilterCombos(Sender);
    EnableFilterButton(false);
  end;
end;

procedure TfPositionView.cbInkTimeInDateFilterPropertiesChange(Sender: TObject);
begin
  if cbInkTimeInDateFilter.Checked then
  begin
    deStartPeriod.Properties.Kind := ckDateTime;
  end
  else
    deStartPeriod.Properties.Kind := ckDate;
  deEndPeriod.Properties.Kind := deStartPeriod.Properties.Kind;
end;

procedure TfPositionView.cbOwnerPropertiesCloseUp(Sender: TObject);
Var x           : Integer ;
    PktNrLevKod : String ;
begin
  LoadCheckBoxWithStorageGroup;
  LoadCheckBoxWithSTorageArea;
  LoadCheckBoxWithStoragePos;
end;


procedure TfPositionView.Open_UserProfile ;
Begin
 sq_UserProfile.Active  := False ;
 sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_UserProfile.ParamByName('Form').AsString    := fPositionView.Name + '1' ;
 sq_UserProfile.ParamByName('Name').AsString    := cbReportSelection.Text ;
 sq_UserProfile.Active  := True ;
 Try
 Finally
  sq_UserProfile.Active  := False ;
 End;
End;

procedure TfPositionView.cbReportSelectionPropertiesChange(Sender: TObject);
begin
//Open grid template
 OpenTemplate ;
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

procedure TfPositionView.cbStoragePosPropertiesCloseUp(Sender: TObject);
var
  T: TList<integer>;
  iValue, count, x: integer;
begin
    try
    T := TList<integer>.create;
    Count := cbStoragePos.Properties.Items.Count;
    if cbStoragePos.Properties.Items.Count > 0 then
      for x := 0 to Count - 1 do
      begin
        if cbStoragePos.States[x] = cbsChecked then
        begin
          iValue := strToInt(cbStoragePos.Properties.Items[x].ShortDescription);
          T.add(iValue);
        end;
      end;

  finally
    if assigned(T) then
      T.Free;
  end;
end;


procedure TfPositionView.OpenTemplate ;
var
  UserID: integer;
  Form: string;
  View: string;
  Grid: TcxGridTableView;
  GridTemplate: string;
begin
//Open Mall
 if cbReportSelection.ItemIndex > -1 then
 Begin
  UserID := ThisUser.UserID;
  Form := TForm(self).Name;
  GridTemplate := cbReportSelection.Properties.Items.Strings[cbReportSelection.ItemIndex];
  View := GridTemplate + '/' + Form;
  Grid := grdPositionDBBandedTableView1;
  LoadGridLayout( UserID, Form, View, Grid, GridTemplate);
//  dmsSystem.LoadGridLayout_Special( UserID, Form, View, grdPositionDBBandedTableView1, Template);
 End;
end;

procedure TfPositionView.UpdateDataFilterCombos(Sender: TObject);
var
  T: TList<integer>; // Selected positions
  A: TList<integer>; // Selected Areas
  G: TList<integer>; // Selected groups
  Source: integer;
  iValue, Count, x: integer;
begin
  T := TList<integer>.create;
  A := TList<integer>.create;
  G := TList<integer>.create;
  try
    Source := cbInklEjFakt.ItemIndex;

    // Check if positions loaded
    Count := cbStoragePos.Properties.Items.Count;
    if cbStoragePos.Properties.Items.Count < 1 then
      // try load
      LoadCheckBoxWithStoragePos;
    Count := cbStoragePos.Properties.Items.Count;
    if cbStoragePos.Properties.Items.Count > 0 then
    begin
      for x := 0 to Count - 1 do
      begin
        if cbStoragePos.States[x] = cbsChecked then
        begin
          iValue := strToInt(cbStoragePos.Properties.Items[x].ShortDescription);
          T.add(iValue);
        end;
      end;
    end;
    // if nothing checked then all positions checked considered.
    if T.Count < 1 then
    begin
      // Check if storage areas is selected
      Count := cbStorageArea.Properties.Items.Count;
      for x := 0 to Count - 1 do
      begin
        if cbStorageArea.States[x] = cbsChecked then
        begin
          iValue := strToInt(cbStorageArea.Properties.Items[x]
            .ShortDescription);
          A.add(iValue);
        end;
      end;
    end;
    if A.Count < 1 then
    begin
      // Check if storage groups is selected
      Count := cbStorageGroup.Properties.Items.Count;
      for x := 0 to Count - 1 do
      begin
        if cbStorageGroup.States[x] = cbsChecked then
        begin
          iValue := strToInt(cbStorageGroup.Properties.Items[x]
            .ShortDescription);
          G.add(iValue);
        end;
      end;
    end;

    dmFilterSQL.UpdateFilterData(T, A, G, Source);
  finally
    if assigned(T) then
      T.Free;
    if assigned(A) then
      A.Free;
    if assigned(G) then
      G.Free;
  end;
end;

procedure TfPositionView.cxbtnCloseFormClick(Sender: TObject);
begin
  SaveUserProfile;
  Close ;
end;

procedure TfPositionView.cxbtnClearFilterClick(Sender: TObject);
begin
  ClearProductFilter ;
end;

procedure TfPositionView.EnableFilterButton(Enable: boolean);
begin
  cxBtnUpdFilter.Enabled := Enable;
  if not Enable then begin
    cxBtnUpdFilter.Caption := 'Filter updated';
    FFilterUpdated := true
  end
  else begin
    cxBtnUpdFilter.Caption := 'Update Filter!';
    FFilterUpdated := false;
  end;
end;

procedure TfPositionView.SaveUserProfile ;
var
  s: string;
Begin
  sq_UserProfile.Active := False;
  sq_UserProfile.ParamByName('UserID').AsInteger := ThisUser.UserID;
  sq_UserProfile.ParamByName('Form').AsString := fPositionView.Name+'2';
  sq_UserProfile.ParamByName('Name').AsString := cbReportSelection.Text;

//  mtuserProp.Active := False;

  sq_UserProfile.Active := True;
  Try
    if not sq_UserProfile.Eof then
    Begin
      sq_UserProfile.Edit;
      sq_UserProfile.Post;
    End;
      mtuserProp.Edit;
      mtUserPropUserID.AsInteger := ThisUser.UserID;
      mtUserPropForm.AsString := fPositionView.Name+'2';
      mtUserPropName.AsString := cbReportSelection.Text;
      s := '|' + cbSalesRegion.EditValue+ '| ';
      s := s + '|' + cbOwner.EditValue+ '| ';
      s := s + '|' + cbStorageGroup.EditValue + '| ';
      s := s + '|' + cbInklEjFakt.EditValue + '| ';
      mtUserPropFilter2.AsString := s;
      mtuserProp.Post;
  Finally
    sq_UserProfile.Active := False;
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
