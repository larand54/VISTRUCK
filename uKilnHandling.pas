unit uKilnHandling ;

{procedure TfrmInventoryReport.FormUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
 //frmInventoryReport.Align:= alNone ;
end;}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
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
  dxPScxCheckListBoxLnk, dxPSLbxLnk, dxPSTextLnk, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxRibbonPainter, dxPScxPivotGridLnk, ComCtrls, dxCore, //dxPScxSSLnk,
  cxNavigator, cxDateUtils, cxSpinEdit, cxButtonEdit, SqlTimSt,
  cxShellBrowserDialog, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk, dxSkinOffice2019Colorful,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, cxImageList,
  dxSkinBasic, VidaType ;


type
  TfkilnHandling = class(TForm)
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
    F1PktNrrapport1: TMenuItem;
    F2Antallngdrapport1: TMenuItem;
    F3Pktkodrapport1: TMenuItem;
    F4PktNrlista1: TMenuItem;
    F5Lagersummering1: TMenuItem;
    acClose: TAction;
    Stng1: TMenuItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PakettabellF81: TMenuItem;
    LagersumtabellF71: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acPkgInfo: TAction;
    pmPkgTable: TdxBarPopupMenu;
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
    dxComponentPrinter1Link2: TdxGridReportLink;
    AntlngdF91: TMenuItem;
    dxComponentPrinter1Link3: TdxGridReportLink;
    acPkgTypeTable: TAction;
    SummeringF61: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    mtUserProp: TkbmMemTable;
    mtUserPropVerkNo: TIntegerField;
    mtUserPropOwnerNo: TIntegerField;
    mtUserPropPIPNo: TIntegerField;
    mtUserPropLIPNo: TIntegerField;
    mtUserPropInputOption: TIntegerField;
    mtUserPropRegPointNo: TIntegerField;
    mtUserPropRegDate: TDateTimeField;
    mtUserPropCopyPcs: TIntegerField;
    mtUserPropRunNo: TIntegerField;
    mtUserPropProducerNo: TIntegerField;
    mtUserPropAutoColWidth: TIntegerField;
    mtUserPropSupplierCode: TStringField;
    mtUserPropLengthOption: TIntegerField;
    mtUserPropLengthGroupNo: TIntegerField;
    mtUserPropNewItemRow: TIntegerField;
    mtUserPropGradeStampNo: TIntegerField;
    mtUserPropBarCodeNo: TIntegerField;
    mtUserPropLengthGroup: TStringField;
    mtUserPropLIPName: TStringField;
    mtUserPropPIPNAME: TStringField;
    mtUserPropREGPOINT: TStringField;
    mtUserPropPRODUCER: TStringField;
    mtUserPropOWNER: TStringField;
    mtUserPropVERK: TStringField;
    mtUserPropRoleType: TIntegerField;
    mtUserPropGradestamp: TStringField;
    mtUserPropBarcode: TStringField;
    mtUserPropProductDescription: TStringField;
    mtUserPropProductNo: TIntegerField;
    mtUserPropProductGroupNo: TIntegerField;
    mtUserPropLIPChange: TIntegerField;
    dsUserProp: TDataSource;
    mtUserPropSalesRegionNo: TIntegerField;
    mtUserPropSR: TStringField;
    mtUserPropVolumeUniNo: TIntegerField;
    mtUserPropVU: TStringField;
    mtUserPropLengthFormatNo: TIntegerField;
    mtUserPropLengthFormat: TStringField;
    mtUserPropLengthVolUnitNo: TIntegerField;
    mtUserPropLengthVolUnit: TStringField;
    ds_Verk: TDataSource;
    mtUserPropVolumeUnitNo: TIntegerField;
    mtUserPropForm: TStringField;
    mtUserPropUserID: TIntegerField;
    GridPMPkgNos: TcxGridPopupMenu;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    dxComponentPrinter1Link4: TdxGridReportLink;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    pmPkgNos: TdxBarPopupMenu;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    mtUserPropGroupByBox: TIntegerField;
    mtUserPropGroupSummary: TIntegerField;
    dxBarButton27: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxStyle3: TcxStyle;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    dxBarButton28: TdxBarButton;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    cxEditStyleController3: TcxEditStyleController;
    cxStyle4: TcxStyle;
    bbAddPkgsToKilnCharge: TdxBarButton;
    dxBarButton30: TdxBarButton;
    pmKilnPkgs: TdxBarPopupMenu;
    dxBarButton29: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    dxComponentPrinter1Link5: TdxGridReportLink;
    mtUserPropAgentNo: TIntegerField;
    mtUserPropKilnNo: TIntegerField;
    mtUserPropTEST: TStringField;
    bbVisaAvAktiverade: TdxBarButton;
    mtPkgNosStatus: TIntegerField;
    dxBarButton35: TdxBarButton;
    ds_PLIP: TDataSource;
    dxBarButton36: TdxBarButton;
    mtUserPropShipperNo: TIntegerField;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    pgInventory: TcxPageControl;
    tsLagret: TcxTabSheet;
    Panel3: TPanel;
    cxLabel2: TcxLabel;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    mtUserPropStartPeriod: TDateTimeField;
    mtUserPropEndPeriod: TDateTimeField;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    cxStyleNormalAktivePkg: TcxStyle;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cds_VerkSearchName: TStringField;
    cds_VerkSalesRegionNo: TIntegerField;
    cds_VerkPktNrLevKod: TStringField;
    cds_PLIP: TFDQuery;
    cds_PLIPPLIP: TStringField;
    cds_PLIPInvCode: TStringField;
    sq_UserProfile: TFDQuery;
    sq_UserProfileUserID: TIntegerField;
    sq_UserProfileForm: TStringField;
    sq_UserProfileName: TStringField;
    sq_UserProfileCopyPcs: TIntegerField;
    Timer1: TTimer;
    mtSpecData: TkbmMemTable;
    mtSpecDataNoOfCopies: TIntegerField;
    mtSpecDataSizeFormatNo: TIntegerField;
    mtSpecDataLengthFormatNo: TIntegerField;
    mtSpecDataVolumeFormatNo: TIntegerField;
    mtSpecDataLanguageCode: TIntegerField;
    mtSpecDataSprk: TStringField;
    mtSpecDataSizeFormat: TStringField;
    mtSpecDataLengthFormat: TStringField;
    mtSpecDataVolumeFormat: TStringField;
    mtSpecDataArtikelKod: TStringField;
    mtSpecDataKundReferens: TStringField;
    mtLayout: TkbmMemTable;
    mtLayoutPackageLogLayoutNo: TIntegerField;
    mtLayoutLayout: TStringField;
    mtLayoutNoOfCopies: TIntegerField;
    dsLayout: TDataSource;
    dsSpecData: TDataSource;
    sq_OnePkg: TFDQuery;
    sq_OnePkgPACKAGENO: TIntegerField;
    sq_OnePkgSUPP_CODE: TStringField;
    sq_OnePkgTotalPCS: TIntegerField;
    sq_OnePkgLOPM: TFloatField;
    sq_OnePkgoThickness: TStringField;
    sq_OnePkgoWidth: TStringField;
    sq_OnePkgKV: TStringField;
    sq_OnePkgSpeciesShortName: TStringField;
    sq_OnePkgUT: TStringField;
    sq_OnePkgoLength: TStringField;
    sq_OnePkgVolume: TFloatField;
    sq_OnePkgDateCreated: TSQLTimeStampField;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    GridBandedTableViewStyleSheetPumpkinlarge: TcxGridBandedTableViewStyleSheet;
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
    cxStyleBeforeKiln: TcxStyle;
    cxStyleInKiln: TcxStyle;
    cxStyleAfterKiln: TcxStyle;
    acAddVagn: TAction;
    mtUserPropKilnChargeNo: TIntegerField;
    mtUserPropProgressKiln: TStringField;
    acEditVagn: TAction;
    acMoveVagnIntoKiln: TAction;
    cxStyleRed: TcxStyle;
    acMoveFromKiln: TAction;
    cxLabelVagn: TcxLabel;
    lcProgressKiln: TcxDBLookupComboBox;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxButton4: TcxButton;
    acCancelMoveVagnIntoKiln: TAction;
    cbColAutoWidth: TcxCheckBox;
    cxButton7: TcxButton;
    acCancelMoveFromKiln: TAction;
    lcOWNER: TcxDBLookupComboBox;
    lNoOfVagnarKiln: TcxDBLabel;
    lAntalVagnarBefore: TcxDBLabel;
    mtUserPropFilter1: TStringField;
    mtUserPropFilter2: TStringField;
    mtUserPropMarketRegionNo: TIntegerField;
    mtUserPropOrderTypeNo: TIntegerField;
    mtUserPropStatus: TIntegerField;
    mtUserPropFilterOrderDate: TIntegerField;
    mtUserPropClientNo: TIntegerField;
    mtUserPropSalesPersonNo: TIntegerField;
    mtUserPropVerkSupplierNo: TIntegerField;
    mtUserPropVerkKundNo: TIntegerField;
    mtUserPropLOObjectType: TIntegerField;
    mtUserPropLoadingLocationNo: TIntegerField;
    mtUserPropBookingTypeNo: TIntegerField;
    mtUserPropCustomerNo: TIntegerField;
    mtUserPropShowProduct: TIntegerField;
    cxStyleContent: TcxStyle;
    seColWidth: TcxDBSpinEdit;
    cxLabel3: TcxLabel;
    cxButton8: TcxButton;
    acSaveProps: TAction;
    siLangLinked_fkilnHandling: TsiLangLinked;
    mtUserPropName: TStringField;
    tcKilns: TcxTabControl;
    cxSplitter1: TcxSplitter;
    MainPanel: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Rad: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RowNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L14: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L15: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L16: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L17: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L18: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L19: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L20: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L21: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L22: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L23: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L24: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L25: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L26: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L27: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L28: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L29: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L30: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L31: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L32: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L33: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L34: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L35: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L36: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L37: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L38: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L39: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L40: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L41: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L42: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L43: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L44: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1L45: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    VagnPanel: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    grdVagnPkgs: TcxGrid;
    grdVagnPkgsDBTableView1: TcxGridDBTableView;
    grdVagnPkgsDBTableView1KilnChargeNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1VagnNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1RowNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1PackageNo: TcxGridDBColumn;
    grdVagnPkgsDBTableView1SupplierCode: TcxGridDBColumn;
    grdVagnPkgsDBTableView1ProductDisplayName: TcxGridDBColumn;
    grdVagnPkgsDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdVagnPkgsDBTableView1PcsPerLength: TcxGridDBColumn;
    grdVagnPkgsDBTableView1DateCreated: TcxGridDBColumn;
    grdVagnPkgsDBTableView1CreatedUser: TcxGridDBColumn;
    grdVagnPkgsDBTableView1MatchingPT: TcxGridDBColumn;
    grdVagnPkgsDBTableView1Totalm3Actual: TcxGridDBColumn;
    grdVagnPkgsLevel1: TcxGridLevel;
    mePackageNo: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    tePlannedDuration: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    LabelIMP: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel6: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    lcImp: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    acPickPackages: TAction;
    cxButton11: TcxButton;
    acRemovePackage: TAction;
    cxButton10: TcxButton;
    mtVagn: TFDMemTable;
    mtVagnVagnNo: TIntegerField;
    mtVagnKilnChargeNo: TIntegerField;
    sq_GetVagnNos: TFDQuery;
    sq_GetVagnNosVagnNo: TIntegerField;
    sq_GetVagnNosKilnChargeNo: TIntegerField;
    cxStyleRepository2: TcxStyleRepository;
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
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    cxLabel_RowNo: TcxLabel;
    acAddVagnLocally: TAction;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    acRemoveVagn: TAction;
    Action2: TAction;
    acPrintPackages: TAction;
    cxButton14: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure grdPkgTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acPkgInfoExecute(Sender: TObject);


    procedure acPkgTypeTableExecute(Sender: TObject);
    procedure mtUserPropAfterInsert(DataSet: TDataSet);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure cxGrid1DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBBandedTableView1InitEdit(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit);
    procedure sq_UserProfileAfterInsert(DataSet: TDataSet);
    procedure cxButton9Click(Sender: TObject);
    procedure acPkgTypeTableUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mtLayoutAfterInsert(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1V1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acAddVagnExecute(Sender: TObject);
    procedure acEditVagnExecute(Sender: TObject);
    procedure acAddVagnUpdate(Sender: TObject);
    procedure acEditVagnUpdate(Sender: TObject);
    procedure acMoveVagnIntoKilnExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure acMoveFromKilnExecute(Sender: TObject);
    procedure acMoveVagnIntoKilnUpdate(Sender: TObject);
    procedure acMoveFromKilnUpdate(Sender: TObject);
    procedure acCancelMoveVagnIntoKilnExecute(Sender: TObject);
    procedure acCancelMoveFromKilnExecute(Sender: TObject);
    procedure mtUserPropKilnChargeNoChange(Sender: TField);
    procedure mtUserPropOwnerNoChange(Sender: TField);
    procedure cbColAutoWidthPropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1V1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure acSavePropsExecute(Sender: TObject);
    procedure tcKilnsChange(Sender: TObject);
    procedure acPickPackagesExecute(Sender: TObject);
    procedure acRemovePackageExecute(Sender: TObject);
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAddVagnLocallyExecute(Sender: TObject);
    procedure acRemoveVagnExecute(Sender: TObject);
    procedure grdVagnPkgsDBTableView1DblClick(Sender: TObject);
    procedure acPrintPackagesExecute(Sender: TObject);

  private
    { Private declarations }
    TypeOfLine            : Integer ;

    FColumn               : TcxGridColumn ;
    ReportInProgress      : Boolean ;
    RowNo                 : Integer ;
    RightButton,
    ClickedF10            : Boolean ;
    SelectedVagnNo        : Integer ;
    SelectedLength        : String ;
    procedure InitKilnsOnOpenForm(Sender: TObject);
    procedure AddVagn(Sender: TObject);
    function  GetVagnNoForKilnChargeNo(const KilnChargeNo : Integer) : Integer ;
    procedure GetVagnNos ;
    procedure EditVagn(Sender: TObject);
    procedure UpdateProductDesc(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String) ;
    function IdentifyPackageSupplier(
    const PkgNo : Integer;
    var PkgSupplierCode: String3;
    Var ProductNo : Integer;
    Var Res_UserName : String) : TEditAction;

    procedure GetVagnData(Sender: TObject);
    procedure GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
    procedure AddPkgsToVagn(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String;const ProductNo : Integer) ;
    procedure AddSelectedPkgsToVagn(Sender: TObject) ;
    procedure RefreshVagn ;
    procedure LoadKilnTabs;
    procedure GenKilnVagnarSQL(Sender: TObject);
    procedure SelectedPkgsOfPkgTbl_V2 ;

    procedure SetGridParamsAfterOpenLayout ;
    procedure SetKolumnNameAndHideNonUsedKolumns(Sender: TObject);

  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  fkilnHandling: TfkilnHandling;

implementation

uses dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  //dmcVidaSystem , //uGridSetting,
  UnitPkgInfo, //dmcPkgs,
  //uSinglePkgEntry,
  dmc_UserProps, dmsVidaSystem, //UnitPkgEntry,
  //dmsVidaPkg,
  //UfelRegPkg, UnitRemovePkg, UnitMovePkgs,
  uSendMapiMail ,
  uEntryField, //uKilnCharges, uKilnChargeNote, uKilnWizard, uVardaBortPkt,
  //uchgPkgVard, uSokAvropMall, uEntryPriceField, // uAngeNyMall ,
  uEnterKilnVagn, uPickPkgNoTork;

{$R *.dfm}

function ReplaceStream(mmSrc: TStream; sTxt, sDest: ansistring): Boolean;
var
    I, J, K: Integer;

    iMatched: Integer;
    iCount: Integer;
    buff: array[0..1023] of ansichar;

    lst: array of Integer;
    mmDest: TMemoryStream;
begin
   mmSrc.Position := 0;
//     mmDest.Position := 0;
   iCount := mmSrc.Read(buff, SizeOf(Buff));
   j := 1;
   iMatched := 0;
   while iCount > 0 do
   begin
     i := 0;
     while i < iCount do
     begin
         if Buff[i] = sTxt[j] then
         begin
           if J = 1 then
//             K := mmSrc.Position - SizeOf(Buff) + I;// + 1;
//Changed by JC 2007-02-12
             K := mmSrc.Position - iCount + I; // SizeOf(Buff) + I;// + 1;
           Inc(J);
           Inc(iMatched);
         end else
         begin
           J := 1;
           iMatched := 0;
         end;

         Inc(i);
         if J > Length(sTxt) then
         begin
           J := 1;
           if iMatched = Length(sTxt) then
           begin
             SetLength(lst, High(lst) - Low(lst) + 1 + 1);
             lst[High(lst)] := K;
           end;
         end;
     end;
     iCount := mmSrc.Read(buff, SizeOf(Buff));
   end;
//   for i := Low(lst) to High(lst) do
//   begin
//     Memo1.Lines.Add(IntToStr(lst[i]));
//   end;

   mmDest := TMemoryStream.Create;
   try
       mmSrc.Position := 0;
       mmDest.Position := 0;
       for i := Low(lst) to High(lst) do
       begin
         mmDest.CopyFrom(mmSrc, lst[i] - mmSrc.Position);
         mmDest.Write(sDest[1], Length(sDest));
         mmSrc.Position := lst[i] + Length(sTxt);
       end;
       mmDest.CopyFrom(mmSrc, mmSrc.Size - mmSrc.Position);
       mmSrc.Size := 0;
       mmSrc.CopyFrom(mmDest, 0);
   finally
     mmDest.Free;
   end;
end;





function TaBortExtension(S : String) : String ;
begin
  { Convert commas to period }
  if Pos('.', S) > 0 then
   Delete(S, Pos('.', S), -1*(Pos('.', S)-(Length(S)+1) )) ;
 Result:= S ;
end;

function ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

function TfkilnHandling.GetVagnNoForKilnChargeNo(const KilnChargeNo : Integer) : Integer ;
Begin
  if mtVagn.Locate('KilnchargeNo', KilnChargeNo, []) then
   Result := mtVagnVagnNo.AsInteger ;
End;


procedure TfkilnHandling.GetVagnNos ;
Begin
 mtVagn.Active  := False ;
 mtVagn.Active  := True ;
  if sq_GetVagnNos.Active then
   sq_GetVagnNos.Active  := False ;
  sq_GetVagnNos.ParamByName('ClientNo').AsInteger  := mtUserPropOwnerNo.AsInteger ;
  sq_GetVagnNos.Active  := True ;
  while not sq_GetVagnNos.Eof do
  Begin
    mtVagn.Insert ;
    mtVagnVagnNo.AsInteger        := sq_GetVagnNosVagnNo.AsInteger ;
    mtVagnKilnChargeNo.AsInteger  :=  sq_GetVagnNosKilnChargeNo.AsInteger ;
    mtVagn.Post ;
    sq_GetVagnNos.Next ;
  End;
End;

procedure TfkilnHandling.InitKilnsOnOpenForm(Sender: TObject);
begin
  with dmInventory do
   Begin
    if tcKilns.TabIndex > -1 then
    Begin
      if cds_SelectProgressKiln.Locate('KilnName', tcKilns.Tabs.Tabs[tcKilns.TabIndex].Caption, []) then
      Begin
        mtUserProp.Edit ;
        mtUserPropKilnChargeNo.AsInteger  := cds_SelectProgressKilnKilnChargeNo.AsInteger ;
        mtUserProp.Post ;
      End;
      self.EditVagn(Sender) ;
    End;
   End;
end;


Procedure TfkilnHandling.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor : TCursor;
  PktNrLevKod : String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  PktNrLevKod :=  dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) ;

  dm_UserProps.LoadUserProps (Self.Name, mtuserprop) ;

  with dmInventory do
   Begin
    cds_SelectProgressKiln.Active := False ;
    cds_SelectProgressKiln.ParamByName('ClientNo').AsInteger      := mtUserPropOwnerNo.AsInteger ;
    cds_SelectProgressKiln.ParamByName('UserID').AsInteger        := ThisUser.UserID ;
    cds_SelectProgressKiln.Active := True ;
   End;



  mtUserProp.Edit ;
  mtUserPropNewItemRow.AsInteger    := -1 ;
  mtUserPropRunNo.AsInteger         := 0 ;
  mtUserPropKilnChargeNo.AsInteger  := mtUserPropAgentNo.AsInteger ;
  if mtUserPropCopyPcs.AsInteger < 50 then
   mtUserPropCopyPcs.AsInteger  := 50 ;
  mtUserProp.Post ;


  if mtUserPropOrderTypeNo.AsInteger > 0 then
   MainPanel.Width  :=  mtUserPropOrderTypeNo.AsInteger ;

  if mtUserPropRegPointNo.AsInteger > 0 then
   cxGrid1.Height  :=  mtUserPropRegPointNo.AsInteger ;


   GetVagnNos ;



  if mtUserPropRoleType.AsInteger = cInternal_Mill then
  Begin
 //  lcOWNER.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= True ;
  End ;

  if mtUserPropRoleType.AsInteger = cLego then
  Begin
   lcOWNER.Enabled     := False ;
//   lcOWNER.Enabled  := False ;
//   lcPIPNAME.Enabled:= False ;
  End ;


  if mtUserPropAutoColWidth.AsInteger = 0 then
  Begin
   cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= False ;
  End
   else
   Begin
    cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:= True ;
   End ;









 (*
 With dm_DryKiln do
 Begin
  cds_Kilns.Active          := False ;
  cds_Kilns.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_Kilns.Active          := True ;

  cds_KilnChargeHdr.Active  := False ;
  cds_KilnChargeHdr.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnChargeHdr.Active  := True ;

  cds_KilnChargeHdr.Locate('KilnChargeNo', mtUserPropAgentNo.AsInteger, []) ;


  //  Get_LastKilnChNo ;

//  cds_KilnChargeRow.Active  := False ;
//  sq_KilnChargeRows.ParamByName('KilnChargeNo').AsInteger:= cds_KilnChargeHdrKilnChargeNo.AsInteger ;
  cds_KilnChargeRow.Active  := False ;
  cds_KilnChargeRow.Active  := True ;

  cds_SumKilnChargeRows.Active  := False ;
  cds_SumKilnChargeRows.Active  := True ;

  cds_KilnProps.Active:= False ;
  cds_KilnProps.ParamByName('ClientNo').AsInteger:= ThisUser.CompanyNo ;
  cds_KilnProps.Active:= True ;

  cds_KilnChargeHdr.Filter   := 'Status = 0' ;
  cds_KilnChargeHdr.Filtered:= True ;

 End ;            *)


 {
  mtSpecData.Active := True ;
  mtSpecData.Insert ;
  mtSpecDataSizeFormatNo.AsInteger        := 1 ;
  mtSpecDataLengthFormatNo.AsInteger      := 1 ;
  mtSpecDataVolumeFormatNo.AsInteger      := 1 ;
  mtSpecDataLanguageCode.AsInteger        := 1 ;
  mtSpecDataKundReferens.AsString         := ' ' ;
  mtSpecData.Post ;


  mtLayout.Active := True ;
  mtLayout.Insert ;
  mtLayoutPackageLogLayoutNo.AsInteger    := 19 ;
  mtLayout.Post ;

  mtLayout.Insert ;
  mtLayoutPackageLogLayoutNo.AsInteger    := 33 ;
  mtLayout.Post ;

  }

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;



procedure TfkilnHandling.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfkilnHandling.FormCreate(Sender: TObject);
begin
// if not Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);


//LARS Kolla upp det här peLengthFormat.ItemIndex:= 0 ;
// OLD_peLengthFormat:= peLengthFormat.ItemIndex ;

 if cds_Verk.Active then
  cds_Verk.Active := False ;
 cds_Verk.ParamByName('MainClientNo').AsInteger :=  ThisUser.CompanyNo ;
 cds_Verk.Active := True ;

 SelectedVagnNo := -1 ;

 With dmInventory do
 Begin
  if cds_imp.Active then
   cds_imp.Active  := False ;
  cds_imp.ParamByName('ClientNo').AsInteger :=  ThisUser.CompanyNo ;
  cds_imp.Active  := True ;
 End;

end;

procedure TfkilnHandling.FormDestroy(Sender: TObject);
begin
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);

 fkilnHandling  := NIL ;
end;


procedure TfkilnHandling.FormKeyPress(Sender: TObject; var Key: Char);
begin
// if Sender is TcxMemo then
 {if dmsSystem.MemoInAction then
 exit
 else
 if Key = #13 then
  begin
   Key := #0;
   Perform(Wm_NextDlgCtl,0,0);
  end; }
end;

procedure TfkilnHandling.FormShow(Sender: TObject);
begin
 ReportInProgress  := False ;
 With dmInventory do
 Begin
  cds_KilnVagnar.Active := False ;
  cds_KilnVagnar.Active := True ;
 End;

// LM  dmsSystem.LoadGridLayout_Special(ThisUser.UserID, Self.Name + '/' + cxGrid1DBBandedTableView1.Name, cxGrid1DBBandedTableView1.Name,
//  cxGrid1DBBandedTableView1,'STD') ;
  dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
  acPkgTypeTableExecute(Sender) ;
  LoadKilnTabs ;

  InitKilnsOnOpenForm(Sender);
end;

//Move vagn tillbaka till i Tork
procedure TfkilnHandling.acCancelMoveFromKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_0' (* 'Sista vagnen inmatad till efter tork flyttas tillbaka till i tork(om det finns plats i torken), fortsätta?' *) ),  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    if IsFreeSpaceInKiln(mtUserPropKilnChargeNo.AsInteger) then
    Begin
      KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
      Open_cds_KilnChargeHdr ;
      MoveToLIPNo   := cds_KilnChargeHdrKiln_LIPNo.AsInteger ;  //Flytta tillbaka vagn till "i Tork"
      VagnNo        := GetFirstVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 2) ;
      NewVagnStatus := 1 ; //1 = i Tork
      if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
      Begin
       FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus, CancelMoveOutOfUnit) ;//Ångra flytta ut
      End
        else
         ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_1' (* 'KilnChargeNo = ' *) ) + inttostr(KilnChargeNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_2' (* ' VagnNo = ' *) ) + inttostr(VagnNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_3' (* ' MoveToLIPNo = ' *) ) + inttostr(MoveToLIPNo)) ;
    End
     else
      ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_4' (* 'Torken är full, det finns inte plats för mera vagnar.' *) )) ;
   End; //With
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acCancelMoveVagnIntoKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_5' (* 'Sista vagnen inmatad till tork flyttas tillbaka till "In till tork", fortsätta?' *) ),  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    //Flytta tillbaka paket till lager före tork
    MoveToLIPNo   := cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
    VagnNo        := GetFirstVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
    NewVagnStatus := 0 ; //0 = före Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus, CancelMoveIntoUnit) ; //Ånga flytta in i tork
     //Om antal vagnar i tork nu är större än vad som ryms i torken så måste en vagn flyttas ut
    End
      else
       ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_6' (* 'Problem: KilnChargeNo = ' *) ) + inttostr(KilnChargeNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_2' (* ' VagnNo = ' *) ) + inttostr(VagnNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_3' (* ' MoveToLIPNo = ' *) ) + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfkilnHandling.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + cxGrid1.Name, cxGrid1DBBandedTableView1) ;

// dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name, cds_PropsName.AsString + '/' + cds_PropsForm.AsString, cxGrid1DBBandedTableView1, 'frmInventoryReport') ;

// dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNoTbl.Name, grdPkgNoTblDBBandedTableView1) ;

 mtUserProp.Edit ;
 if cbColAutoWidth.Checked then
  mtUserPropAutoColWidth.AsInteger:= 1
   else
    mtUserPropAutoColWidth.AsInteger:= 0 ;



 mtUserPropOrderTypeNo.AsInteger  := MainPanel.Width ;

 mtUserPropRegPointNo.AsInteger   := cxGrid1.Height ;

 mtUserPropAgentNo.AsInteger:=  mtUserPropKilnChargeNo.AsInteger ;

 mtUserProp.Post ;

 dm_UserProps.SaveUserProps (Self.Name, mtUserProp) ;

 CanClose := True ;
end;

procedure TfkilnHandling.SetGridParamsAfterOpenLayout ;
Begin
 if not ClickedF10 then
 Begin
  cxGrid1DBBandedTableView1.Bands[0].Visible    := True ;
  cxGrid1DBBandedTableView1.Bands[0].FixedKind  := fkLeft ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind  := fkNone ;
 End
 else
 Begin
  cxGrid1DBBandedTableView1.Bands[0].Visible    := False ;
  cxGrid1DBBandedTableView1.Bands[0].FixedKind  := fkLeft ;
  cxGrid1DBBandedTableView1.Bands[1].FixedKind  := fkNone ;
 End ;
End;

//Paketnr
procedure TfkilnHandling.SetKolumnNameAndHideNonUsedKolumns (Sender: TObject);
Var x, y,
    TotalWidth  : Integer ;
    AItem       : TcxDataSummaryItem;
    OldFilter   : String ;
Begin
 With dmInventory do
 Begin
  For x := 1 to 45 do
  Begin
 //   cxGrid1DBBandedTableView1.Columns[x].Caption := inttostr(x) ;
  End ;

  y := 1 ;
  OldFilter               := cds_KilnVagnar.Filter ;
  cds_KilnVagnar.Filter   := 'RowNo = -1' ; //91
  cds_KilnVagnar.Filtered := True ;
  Try

  For Y := 1 to 45 do
  Begin
   cxGrid1DBBandedTableView1.Columns[y+1].Visible := True ;
  End;



  For Y := 1 to 45 do // cds_KilnVagnar.FieldCount - 1 do
  Begin
   if cds_KilnVagnar.FieldByName('L' + inttostr(Y)).AsString = '3' then
   Begin
     cxGrid1DBBandedTableView1.Columns[y+1].Visible := False ;
  //   cxGrid1DBBandedTableView1.Columns[y+1].Width   := seColWidth.Value ;
   End;
  End;

  cxGrid1DBBandedTableView1.Columns[1].Visible := False ;

  TotalWidth := 0 ;

  For Y := 1 to 45 do // cds_KilnVagnar.FieldCount - 1 do
  Begin
   if cds_KilnVagnar.FieldByName('L' + inttostr(Y)).AsString <> '3' then
   Begin
     if cxGrid1DBBandedTableView1.Columns[y].Visible then
     Begin
      cxGrid1DBBandedTableView1.Columns[y].Width  := seColWidth.Value ;
      TotalWidth := TotalWidth +  cxGrid1DBBandedTableView1.Columns[y].Width ;
     End;
   End;
  End;

  cxGrid1DBBandedTableView1.Bands[1].Width  :=  TotalWidth ;


  Finally
   cds_KilnVagnar.Filter    := OldFilter ;
  //  cds_KilnVagnar.Filtered := False ;
  End;


//Sätt övriga kolumner till osynliga
//  For y := x to 64 do //Kolumn 65 är en numera en summering av antal paket
//  cxGrid1DBBandedTableView1.Columns[y].Visible:= False ;

 End ;//with
End ;



procedure TfkilnHandling.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfkilnHandling.grdVagnPkgsDBTableView1DblClick(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo    := cds_KilnChargeRowsPackageNo.AsInteger ;
   frmPkgInfo.SupplierCode := cds_KilnChargeRowsSupplierCode.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfkilnHandling.SelectedPkgsOfPkgTbl_V2 ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor  := Screen.Cursor;
 Screen.Cursor:= crSQLWait;    { Show hourglass cursor }
 cxGrid1DBBandedTableView1.BeginUpdate ;
 cxGrid1DBBandedTableView1.DataController.BeginLocate ;
 Try
   ADataSet := cxGrid1DBBandedTableView1.DataController.DataSource.DataSet ;
   For I := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := cxGrid1DBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := cxGrid1DBBandedTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PackageNo;SupplierCode', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PackageNo').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
    mtPkgNosOwnerNo.AsInteger   := ADataSet.FieldByName('OwnerNo').AsInteger ;
    mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
    mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
    mtPkgNos.Post ;
   End ;

 Finally
  cxGrid1DBBandedTableView1.DataController.EndLocate ;
  cxGrid1DBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure TfkilnHandling.acPickPackagesExecute(Sender: TObject);
var fPickPkgNoTork: TfPickPkgNoTork;
begin
 With dmInventory do
 Begin
  fPickPkgNoTork  := TfPickPkgNoTork.Create(nil) ;
  Try
   if dmInventory.cds_KilnVagn.State in [dsEdit, dsInsert] then
    dmInventory.cds_KilnVagn.Post ;
   Open_cds_KilnChargeHdr ;
   fPickPkgNoTork.LIPNo := cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger ;
   fPickPkgNoTork.PIPNo := cds_KilnChargeHdrKiln_PIPNo.AsInteger ;
   if fPickPkgNoTork.ShowModal = mrOK then
    AddSelectedPkgsToVagn(Sender) ;
  Finally
   FreeAndNil(fPickPkgNoTork) ;
  End;
 End;//With
end;

procedure TfkilnHandling.AddSelectedPkgsToVagn(Sender: TObject) ;
begin
  with dmInventory do
  begin
    cds_KilnChargeRows.DisableControls;
    try
      mtSelectedPkgNo.Filter := 'Markerad = 1'; // siLangLinked_fEnterKilnVagn.GetTextOrDefault('IDS_0' (* 'Markerad = 1' *) ) ;
      mtSelectedPkgNo.Filtered := True;
      try
        mtSelectedPkgNo.First;
        while not mtSelectedPkgNo.Eof do
        begin
          AddPkgsToVagn(Sender, mtSelectedPkgNoPAKETNR.AsInteger, mtSelectedPkgNoLEVKOD.AsString, -1 {product});
          mtSelectedPkgNo.Next;
        end;
      finally
        mtSelectedPkgNo.Filtered := False;
      end;
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
      cds_KilnChargeRows.Refresh;
      cds_KilnChargeRows.Last ;
    finally
      cds_KilnChargeRows.EnableControls;
    end;
  end;
end;

procedure TfkilnHandling.AddPkgsToVagn(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String;const ProductNo : Integer) ;
Begin
 With dmInventory do
 Begin
  Try
  cds_KilnChargeRows.Insert ;
  cds_KilnChargeRowsPackageNo.AsInteger    := PackageNo ;
  cds_KilnChargeRowsSupplierCode.AsString  := PkgSupplierCode ;
  cds_KilnChargeRowsRowNo.AsInteger        := RowNo ;
  cds_KilnChargeRows.Post ;
//  cds_KilnChargeRows.Active  := False ;
//  cds_KilnChargeRows.Active  := True ;
//  cds_KilnChargeRows.Last ;
  RowNo := succ(RowNo) ;
  //
  Except
   On E: EDatabaseError do
   Begin
    cds_KilnChargeRows.Cancel ;
    ShowMessage('Package is assigned to kiln already') ;
   End;
  End;
 End;
End;

procedure TfkilnHandling.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo: TfrmPkgInfo;
begin
 With dmInventory do
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   if ClickedF10 = False then
   Begin
    frmPkgInfo.PackageNo    := 1 ;
    frmPkgInfo.SupplierCode := '' ;
   End ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
end;

procedure TfkilnHandling.acEditVagnExecute(Sender: TObject);
var
  fEnterKilnVagn  : TfEnterKilnVagn;
  IMPNO           : Integer ;
begin
 With dmInventory do
 Begin
   if SelectedVagnNo > -1 then
   Begin
    if IsVagnStatus0(SelectedVagnNo, mtUserPropKilnChargeNo.AsInteger) then
    Begin
     if mtUserPropKilnChargeNo.AsInteger > 0 then
     Begin

      fEnterKilnVagn  := TfEnterKilnVagn.Create(nil);
      Try
        fEnterKilnVagn.Caption  := 'Cart/set. ' + lcProgressKiln.Text ;
        dmInventory.EditVagn(mtUserPropKilnChargeNo.AsInteger, SelectedVagnNo) ;
        fEnterKilnVagn.TypeOfLine := dmInventory.GetTypeOfLine(mtUserPropKilnChargeNo.AsInteger) ;
        fEnterKilnVagn.ShowModal ;
        IMPNO := dmInventory.cds_KilnVagnIMPNo.AsInteger ;
        SelectedVagnNo := -1 ;
        acPkgTypeTableExecute(Sender) ;
        if IMPNO > 0 then
          dmInventory.SaveIMPNoWithKiln(mtUserPropKilnChargeNo.AsInteger, IMPNO) ;   //Spara senaste Impregneringskategorin
      Finally
       FreeAndNil(fEnterKilnVagn) ;
      End;
     End;//if..
    End //if..
     else
      ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_9' (* 'Endast vagnar "In till tork" kan ändras.' *) )) ;
   End
    else
     ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_10' (* 'Välj en vagn att ändra.' *) )) ;
 End;
end;

procedure TfkilnHandling.acEditVagnUpdate(Sender: TObject);
begin
 acEditVagn.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) and (SelectedVagnNo > -1) ;
end;

//Sortiment
procedure TfkilnHandling.acPkgTypeTableExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 if mtUserPropKilnChargeNo.AsInteger > 0 then
 Begin
   if ReportInProgress then  Exit ;

   SelectedVagnNo := -1 ;
   cxLabelVagn.Caption      := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_11' (* 'Markerad vagn : ' *) ) + inttostr(SelectedVagnNo) ;

//   if mtUserProp.State in [dsEdit, dsInsert] then
//   mtUserProp.Post ;

   ClickedF10 := True ;

   With dmInventory do
   Begin
    Save_Cursor       := Screen.Cursor;
    Screen.Cursor     := crHourGlass;    { Show hourglass cursor }
    ReportInProgress  := True ;
    acPkgTypeTable.Enabled  := not ReportInProgress ;

    cds_KilnVagnar.Active  := False ;

    cds_KilnVagnar.DisableControls ;
  //  cxGrid1DBBandedTableView1.BeginUpdate ;

    cxGrid1DBBandedTableView1.DataController.KeyFieldNames    := 'RowNo' ;
  //  cxGrid1DBBandedTableView1.DataController.KeyFieldNames  := 'ProductNo;PackageTypeNo' ;
  //  cxGrid1DBBandedTableView1.Bands[0].Visible                := False ;
    cxGrid1DBBandedTableView1.Bands[0].FixedKind              := fkLeft ;

    Try
     cds_KilnVagnar.Active  := False ;
//     pcInventory.ActivePage := tsTABELL ;


      cds_KilnVagnar.Active:= False ;
      GenKilnVagnarSQL(Sender) ;

      cds_KilnVagnar.Filter     := 'RowNo >= -2' ;
      cds_KilnVagnar.Filtered   := True ;

      cds_KilnVagnar.Active:= True ;



     if cds_KilnVagnar.Active then
     Begin
      SetKolumnNameAndHideNonUsedKolumns(Sender) ;
  //    cxGrid1DBBandedTableView1.Columns[65].Visible  := True ;
  //    cxGrid1DBBandedTableView1.Columns[65].Caption   := 'ÖVRIGA' ;
     End ;

    // LM cxGrid1DBBandedTableView1RowNo.Visible  := False ;

    Finally
  //   cxGrid1DBBandedTableView1.EndUpdate ;
     cds_KilnVagnar.EnableControls ;
  //   cxGrid1DBBandedTableView1.Bands[2].ApplyBestFit ;
     ReportInProgress   := False ;
     Screen.Cursor      := Save_Cursor ;
    End ;
   End ;
 End ;
end;

procedure TfkilnHandling.acPkgTypeTableUpdate(Sender: TObject);
begin
  acPkgTypeTable.Enabled  := (not ReportInProgress)
  and  (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;



procedure TfkilnHandling.acPrintPackagesExecute(Sender: TObject);
begin

//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('CHARGE ' +
  tcKilns.Tabs.Tabs[tcKilns.TabIndex].Caption + ' / Cart: ' + dmInventory.cds_KilnVagnVagnNo.AsString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;

procedure TfkilnHandling.acRemovePackageExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
 cds_KilnChargeRows.Delete ;
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
//      cds_KilnChargeRows.Refresh;
      cds_KilnChargeRows.Last ;
 End;
end;

procedure TfkilnHandling.acRemoveVagnExecute(Sender: TObject);
begin
  //Remove vagn
 With dmInventory do
 Begin
  if cds_KilnChargeRows.RecordCount = 0 then
  Begin
   cds_KilnVagn.Delete ;
   acPkgTypeTableExecute(Sender) ;
  End
    else
     Showmessage('Remove assigned packages before removing the cart.') ;
 End;
end;

procedure TfkilnHandling.acSavePropsExecute(Sender: TObject);
begin
 dmsSystem.StoreGridLayout_Special(ThisUser.UserID, Self.Name + '/' + cxGrid1DBBandedTableView1.Name, cxGrid1DBBandedTableView1.Name,
 cxGrid1DBBandedTableView1,'STD') ;
end;

procedure TfkilnHandling.cbColAutoWidthPropertiesChange(Sender: TObject);
begin
 cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth := cbColAutoWidth.Checked ;
end;

procedure TfkilnHandling.GenKilnVagnarSQL(Sender: TObject);
Var Save_Cursor   : TCursor;
    AntalStatus_0_Vagnar,
    AntalStatus_2_Vagnar,
    AntalStatus_1_Vagnar,
    KilnNo, VagnNo, MinVagnNo,
   // SistaVagnNo,
    x, y          : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
   KilnNo         := 1 ;
   VagnNo         := 1 ;
   MinVagnNo      := 0 ;

   MakeVagnSQL(mtUserPropKilnChargeNo.AsInteger) ;

   AntalStatus_0_Vagnar := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 0) ;

   AntalStatus_2_Vagnar := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 2) ;

   if AntalStatus_2_Vagnar > 2 then
    AntalStatus_2_Vagnar  := 2 ;

   AntalStatus_1_Vagnar   := Get_AntalVagnarPerStatus (mtUserPropKilnChargeNo.AsInteger, 1) ;// GetAntalVagnar(KilnNo) ;

//   TotaltAntalVagnar      := AntalStatus_0_Vagnar + AntalStatus_2_Vagnar + AntalStatus_1_Vagnar ;
                        // (3 + 2 + 18 = 23)
 //  SistaVagnNo            := GetSistaVagnNo(KilnNo) ;

   if AntalStatus_1_Vagnar = -1 then
   Begin
     ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_12' (* 'Antal vagnar för vald tork saknas' *) )) ;
     Exit ;
   End;


    cds_KilnVagnar.Active := False ;
    cds_KilnVagnar.SQL.Clear ;

    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('Radnr') + ' + CAST(kcr.RowNo AS Varchar(2)) AS Rad, kcr.RowNo') ;


    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      if (MinVagnNo = 0) OR (cds_VagnarVagnNo.AsInteger < MinVagnNo) then
       MinVagnNo  := cds_VagnarVagnNo.AsInteger ;
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(kcr.PackageNo AS Varchar(7))+ '
      + QuotedStr('- ') + ' + CAST(gr.GradeName AS Varchar(5)) + '
      + QuotedStr('- ') + ' + Cast(pg.ActualThicknessMM AS Varchar(7))+ '
      + QuotedStr(' x') + ' + Cast(pg.ActualWidthMM AS Varchar(7))+ ' + QuotedStr(' x')
      + ' + Cast(ML.MaxLength AS Varchar(7)) ELSE ' + QuotedStr('') + '  END) AS VARCHAR(36)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('') + ' AS VARCHAR(15)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;

    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;

    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;


    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
    cds_KilnVagnar.SQL.Add('Inner Join dbo.Grade gr ON gr.GradeNo = pd.GradeNo') ;

    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString + ' and  KV.VagnNo >=  ' + inttostr(MinVagnNo)) ;

    cds_KilnVagnar.SQL.Add('GROUP BY kcr.RowNo') ;




    cds_KilnVagnar.SQL.Add('UNION') ;

  //  SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;


    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('STATUS') + ',  -1 AS RowNo') ; //91

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kcr.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.VagnStatus AS char(1)) '
      + '  END) AS VARCHAR(1)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(1)) AS L' + inttostr(y)) ;
    End;


    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;

    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
//    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
//    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;

    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;

//    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
//    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;


//    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;

//    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;

    cds_KilnVagnar.SQL.Add('UNION') ;
  //  SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;
    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('Indatum') + ',  0 AS RowNo') ; //90

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kv.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.InDate AS char(19)) '
      + '  END) AS VARCHAR(19)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(6)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KCH.KilnChargeNo') ;
//    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
//    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;
    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kv.VagnNo = kcr.VagnNo') ;
//    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
//    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;
//    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
//    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;


    cds_KilnVagnar.SQL.Add('UNION') ;
 //   SistaVagnNo         := GetSistaVagnNo(KilnNo) ;
    VagnNo              := 1 ;
    cds_KilnVagnar.SQL.Add('Select distinct ' + QuotedStr('VagnID') + ',  -2 AS RowNo') ; //92

    cds_Vagnar.Active := False ;
    cds_Vagnar.ParamByName('KilnChargeNo').AsInteger  := mtUserPropKilnChargeNo.AsInteger ;
    cds_Vagnar.Active := True ;
    cds_Vagnar.First ;
    while not cds_Vagnar.Eof do
    Begin
      cds_KilnVagnar.SQL.Add(',CAST(Max(CASE WHEN kv.VagnNo = ' + cds_VagnarVagnNo.AsString + ' THEN Cast(KV.VagnNo AS char(6)) '
      + '  END) AS VARCHAR(6)) AS L' + inttostr(VagnNo))  ;
      cds_Vagnar.Next ;
      VagnNo  := succ(VagnNo) ;
    End;

    cds_Vagnar.Active := False ;

  //Lägg till resten av kolumnerna...
    For y := VagnNo to 45 do
    Begin
     cds_KilnVagnar.SQL.Add(',CAST('  + QuotedStr('3') + ' AS VARCHAR(6)) AS L' + inttostr(y)) ;
    End;

    cds_KilnVagnar.SQL.Add('FROM dbo.KilnChargeHdr KCH') ;
    cds_KilnVagnar.SQL.Add('Inner join dbo.Kilns K on K.KilnNo = KCH.KilnNo') ;

    cds_KilnVagnar.SQL.Add('inner join dbo.KilnVagn KV on KV.KilnChargeNo = KCH.KilnChargeNo') ;


    cds_KilnVagnar.SQL.Add('Left join dbo.KilnChargeRows kcr on kcr.KilnChargeNo = KV.KilnChargeNo') ;
    cds_KilnVagnar.SQL.Add('and kcr.VagnNo = kv.VagnNo') ;


    //    cds_KilnVagnar.SQL.Add('inner JOIN dbo.PackageNumber pn ON pn.PackageNo = kcr.packageno') ;
//    cds_KilnVagnar.SQL.Add('and pn.SupplierCode = kcr.SupplierCode') ;

//    cds_KilnVagnar.SQL.Add('Inner Join dbo.PackageType pt ON pt.PackageTypeNo = pn.PackageTypeNo') ;
//    cds_KilnVagnar.SQL.Add('inner join [dbo].[visv_GetMaxLength] ML on ML.PackageTypeNo = pn.PackageTypeNo') ;
//    cds_KilnVagnar.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
//    cds_KilnVagnar.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
    cds_KilnVagnar.SQL.Add('WHERE') ;
    cds_KilnVagnar.SQL.Add('KCH.KilnChargeNo = ' + mtUserPropKilnChargeNo.AsString) ;





  if thisuser.UserID = 8 then
    cds_KilnVagnar.SQL.SaveToFile('cds_KilnVagnar.txt');
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;




procedure TfkilnHandling.mePackageNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Error             : Boolean ;
  NewValue          : String;
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  PackageNo,
  Res_UserName      : String ;
  ErrorText,
  RegPointName      : String ;
  PkgNoPrefix       : Integer ;
  EnteredPkgNo      : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 if Length(mePackageNo.Text) > 0 then
 Begin
  PkgNoPrefix := fkilnHandling.mtUserPropMarketRegionNo.AsInteger ;



  if dmInventory.cds_KilnVagn.State in [dsEdit, dsInsert] then
   dmInventory.cds_KilnVagn.Post ;

  if PkgNoPrefix > 0 then
  Begin
   EnteredPkgNo     := StrToIntDef(mePackageNo.Text,0) ;
   mePackageNo.Text := inttostr(PkgNoPrefix) + mePackageNo.Text ;
  End;

  GetpackageNoEntered(Sender, mePackageNo.Text) ;
   with dmInventory do
   Begin
      if cds_KilnChargeRows.Changecount > 0 then
      Begin
         cds_KilnChargeRows.ApplyUpdates(0) ;
         cds_KilnChargeRows.Commitupdates ;
      End ;
//      cds_KilnChargeRows.Post ;
   //   cds_KilnChargeRows.Refresh;
    //  cds_KilnChargeRows.RefreshRecord(false) ;
      cds_KilnChargeRows.Last ;
   End;

 End;
 Timer1.Enabled   := True ;
 mePackageNo.Text := '' ;

 if (EnteredPkgNo = 9999) or (EnteredPkgNo = 999) or (EnteredPkgNo = 99) then
 Begin
   if MessageDlg('Do you want to increase prefix number?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
     fkilnHandling.mtUserProp.Edit ;
     fkilnHandling.mtUserPropMarketRegionNo.AsInteger := fkilnHandling.mtUserPropMarketRegionNo.AsInteger + 1 ;
     fkilnHandling.mtUserProp.Post ;
   End;
 End;
end;

procedure TfkilnHandling.GetpackageNoEntered(Sender: TObject;const PackageNo : String) ;
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
    Begin //LÅNGA KODEN
     Try
     NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
     Except
      on E: EConvertError do
         ShowMessage(E.ClassName + E.Message);
     End ;
     if NewPkgNo < 1 then
      Exit ;
     PktNrLevKod      := Copy(PackageNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
     PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;


     if PkgExistInInventoryKILN(NewPkgNo, cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger, PkgSupplierCode) then
      Action := eaAccept
        else
          Action :=  eaABANDON ;

    End
     else //Length < 11
      Begin
       NewPkgNo:= StrToIntDef(PackageNo,0) ;
       if NewPkgNo = 0 then
       Begin
        ShowMessage('Could not translate into a valid package number') ;
        Exit ;
       End ;


        Action := IdentifyPackageSupplier(
        NewPkgNo,
        PkgSupplierCode,
        ProductNo, Res_UserName);
      End ;
   End ; //if StrToInt(Trim(PackageNo)) > 0 then

   if NewPkgNo > 0 then
   Begin




//Får inte använda post själv, det gör rutinen automatiskt
  if Action = eaACCEPT then
  Begin
   // AddPkgTo_cds_LoadPackages(Sender, NewPkgNo,PkgSupplierCode) ;
    AddPkgsToVagn(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
    UpdateProductDesc(Sender, NewPkgNo,PkgSupplierCode) ;


  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Does not exist in invetory') ;
     Error      := True ;
    End
    else
     if Action = eaReserved then
      Begin
       ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' is reserved by ' + Res_UserName) ;
       Error      := True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ShowMessage('Package number + IntToStr(NewPkgNo) + is already entered') ;
         Error      := True ;
        End ;
    End
     else
      Begin
       ShowMessage('Package number missing') ;
       Error      := True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
end;

function TfkilnHandling.IdentifyPackageSupplier(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
Var SupplierNo : Integer;
begin
 With dmInventory do
 Begin
 //check that package is available in inventory and Get supplier code
//                        ShowMessage('ThisUser.UserName+Self.Name ' + ThisUser.UserName+'/'+Self.Name);
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_ByLIPNo(PkgNo, cds_KilnChargeHdrBeforeKiln_LIPNo.AsInteger, SupplierNo, ProductNo);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
          begin
           Result := eaACCEPT ;
          end
        else
         begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
 End;//With
end;

procedure TfkilnHandling.mtLayoutAfterInsert(DataSet: TDataSet);
begin
 mtLayoutNoOfCopies.AsInteger := 1 ;
end;

procedure TfkilnHandling.mtUserPropAfterInsert(DataSet: TDataSet);
begin
 mtUserPropRegDate.AsDateTime           := Now ;
// mtUserPropProductGroupNo.AsInteger     := -1 ;
 mtUserPropProductNo.AsInteger          := -1 ;
 mtUserPropProductDescription.AsString  := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_13' (* 'Ingen ändring' *) ) ;
 mtUserPropLIPChange.AsInteger          := 0 ;
 mtUserPropVerkNo.AsInteger             := 0 ;
end;

procedure TfkilnHandling.mtUserPropKilnChargeNoChange(Sender: TField);
begin
 acPkgTypeTableExecute(Sender) ;
end;

procedure TfkilnHandling.mtUserPropOwnerNoChange(Sender: TField);
begin
  with dmInventory do
   Begin
    cds_SelectProgressKiln.Active := False ;
    cds_SelectProgressKiln.ParamByName('ClientNo').AsInteger      := mtUserPropOwnerNo.AsInteger ;
    cds_SelectProgressKiln.ParamByName('UserID').AsInteger        := ThisUser.UserID ;
    cds_SelectProgressKiln.Active := True ;
   End;
   LoadKilnTabs ;
end;

procedure TfkilnHandling.LoadKilnTabs ;
begin
  with dmInventory do
   Begin
    tcKilns.Tabs.Clear ;
    cds_SelectProgressKiln.First ;
    while not cds_SelectProgressKiln.Eof do
    Begin
     tcKilns.Tabs.Add(cds_SelectProgressKilnKilnName.AsString) ;
     cds_SelectProgressKiln.Next ;
    End;
   End;

end;

procedure TfkilnHandling.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfkilnHandling.acAddVagnExecute(Sender: TObject);
var
  fEnterKilnVagn    : TfEnterKilnVagn;
  IMPNO, TypeOfLine : Integer ;
begin
 if mtUserPropKilnChargeNo.AsInteger > 0 then
 Begin
  TypeOfLine := dmInventory.GetTypeOfLine(mtUserPropKilnChargeNo.AsInteger) ;

  fEnterKilnVagn  := TfEnterKilnVagn.Create(nil);
  Try
    fEnterKilnVagn.Caption  := 'Cart/set. ' + lcProgressKiln.Text ;
    fEnterKilnVagn.TypeOfLine :=  TypeOfLine ;
    dmInventory.AddVagn(mtUserPropKilnChargeNo.AsInteger) ;
    fEnterKilnVagn.ShowModal ;
    IMPNO := dmInventory.cds_KilnVagnIMPNo.AsInteger ;
    if dmInventory.VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(mtUserPropKilnChargeNo.AsInteger) then
     acMoveVagnIntoKilnExecute(Sender) ;
    acPkgTypeTableExecute(Sender) ;
    if IMPNO > 0 then
      dmInventory.SaveIMPNoWithKiln(mtUserPropKilnChargeNo.AsInteger, IMPNO) ;   //Spara senaste Impregneringskategorin
  Finally
   FreeAndNil(fEnterKilnVagn) ;
  End;
 End;//if..
end;

procedure TfkilnHandling.acAddVagnLocallyExecute(Sender: TObject);
begin
 AddVagn(Sender) ;
 mePackageNo.SetFocus ;
end;

procedure TfkilnHandling.acAddVagnUpdate(Sender: TObject);
begin
 acAddVagn.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.acMoveFromKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
 if MessageDlg(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_14' (* 'En vagn stegas ut ur torken till lager efter tork, fortsätta?' *) ),  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    MoveToLIPNo   := cds_KilnChargeHdrAfterKiln_LIPNo.AsInteger ;
    VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
    NewVagnStatus := 2 ; //2 = efter Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus, MoveOutOfUnit) ;
    End
      else
       ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_1' (* 'KilnChargeNo = ' *) ) + inttostr(KilnChargeNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_2' (* ' VagnNo = ' *) ) + inttostr(VagnNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_3' (* ' MoveToLIPNo = ' *) ) + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
 End;
end;

procedure TfkilnHandling.acMoveFromKilnUpdate(Sender: TObject);
begin
 acMoveFromKiln.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.cxButton9Click(Sender: TObject);
begin
 Close ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
Var OldFilter : String ;
begin
{ if pcPktNrAndTorkSats.ActivePage <> tsTorkSats then
 Begin
  if RightButton then
  Begin
   pmPkgTable.PopupFromCursorPos ;
   Exit ;
  End ; }

  With dmInventory do
  Begin
   OldFilter                := cds_KilnVagnar.Filter ;
   SelectedLength           := ACellViewInfo.Item.Caption ;
   cds_KilnVagnar.Filter    := 'RowNo = -2' ;
   cds_KilnVagnar.Filtered  := True ;
   Try
   SelectedVagnNo           := StrToIntDef(Trim(cds_KilnVagnar.FieldByName(Trim(SelectedLength)).AsString),-1) ;

   if mtVagn.Locate('KilnchargeNo', mtUserPropKilnChargeNo.AsInteger, []) then
   Begin
    mtVagn.Edit ;
    mtVagnVagnNo.AsInteger  := SelectedVagnNo ;
    mtVagn.Post ;

   End;


   self.EditVagn(Sender) ;

   cxLabelVagn.Caption      := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_11' (* 'Markerad vagn: ' *) ) + inttostr(SelectedVagnNo) ;
   Finally
    cds_KilnVagnar.Filter    := OldFilter ;
   // cds_KilnVagnar.Filtered  := False ;
   End ;
  End ;

 AHandled:= True ;


// if RightButton then
// pmPkgTable.PopupFromCursorPos ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
  Var AFieldName : String ;
  OldFilter  : String ;
begin
  if FColumn <> nil then
    FColumn.Styles.Header := nil;
  Sender.OptionsBehavior.IncSearchItem := AColumn;
  AColumn.Styles.Header := cxStyleRed ;
  FColumn := AColumn;

  AFieldName := TcxGridDBColumn(AColumn).DataBinding.FieldName;

  With dmInventory do
  Begin
   OldFilter                := cds_KilnVagnar.Filter ;
   SelectedLength           := AFieldName ;
   cds_KilnVagnar.Filter    := 'RowNo = -2' ;
   cds_KilnVagnar.Filtered  := True ;
   Try
   SelectedVagnNo           := StrToIntDef(Trim(cds_KilnVagnar.FieldByName(Trim(SelectedLength)).AsString),-1) ;


   if mtVagn.Locate('KilnchargeNo', mtUserPropKilnChargeNo.AsInteger, []) then
   Begin
    mtVagn.Edit ;
    mtVagnVagnNo.AsInteger  := SelectedVagnNo ;
    mtVagn.Post ;
   End;


   self.EditVagn(Sender) ;


   cxLabelVagn.Caption      := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_11' (* 'Markerad vagn: ' *) ) + inttostr(SelectedVagnNo) ;
   Finally
    cds_KilnVagnar.Filter   := OldFilter ;
   // cds_KilnVagnar.Filtered  := False ;
   End ;
  End ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 if Button = mbRight then
  RightButton := True
   else
    RightButton := False ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1InitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
// AEdit.OnDblClick := grdPkgTblDBBandedTableView1DblClick ;
end;

procedure TfkilnHandling.acMoveVagnIntoKilnExecute(Sender: TObject);
Var VagnNo, MoveToLIPNo, NewVagnStatus : Integer ;
begin
// if MessageDlg('En vagn stegas in i torken och en vagn stegas ut ur torken(om antal vagnar i torken överstiger torkens kapacitet), fortsätta?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin
   With dmInventory do
   Begin
    KilnChargeNo  := mtUserPropKilnChargeNo.AsInteger ;
    Open_cds_KilnChargeHdr ;
    MoveToLIPNo   := cds_KilnChargeHdrKiln_LIPNo.AsInteger ;
    VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 0) ;
    NewVagnStatus := 1 ; //1 = i Tork
    if (KilnChargeNo > 0) and (VagnNo > -1) and (MoveToLIPNo > 0) then
    Begin
     FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus, MoveInToUnit) ;
     //Om antal vagnar i tork nu är större än vad som ryms i torken så måste en vagn flyttas ut
     if IsNoOfVagnarInKilnBiggerThenMaxVagnar(mtUserPropKilnChargeNo.AsInteger) then //AntalVagnarITork > MaxVagnar then
     Begin
       MoveToLIPNo   := cds_KilnChargeHdrAfterKiln_LIPNo.AsInteger ;
       VagnNo        := GetLastVagnNoPerVagnStatus(mtUserPropKilnChargeNo.AsInteger, 1) ;
       NewVagnStatus := 2 ; //2 = efter Tork
       FlyttaVagn(mtUserPropKilnChargeNo.AsInteger, VagnNo, MoveToLIPNo, NewVagnStatus, MoveOutOfUnit) ;
     End;
    End
      else
       ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_6' (* 'Problem: KilnChargeNo = ' *) ) + inttostr(KilnChargeNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_2' (* ' VagnNo = ' *) ) + inttostr(VagnNo) + siLangLinked_fkilnHandling.GetTextOrDefault('IDS_3' (* ' MoveToLIPNo = ' *) ) + inttostr(MoveToLIPNo)) ;
   End;
  acPkgTypeTableExecute(Sender) ;
// End;
end;

procedure TfkilnHandling.acMoveVagnIntoKilnUpdate(Sender: TObject);
begin
 acMoveVagnIntoKiln.Enabled  := (mtUserProp.Active) and (mtUserProp.RecordCount > 0)
 and (mtUserPropKilnChargeNo.AsInteger > 0) ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1V1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
 if AText = '0' then
  AText := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_23' (* 'In till Tork' *) )
   else
    if AText = '1' then
     AText := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_24' (* 'i Tork' *) )
      else
       if AText = '2' then
        AText := siLangLinked_fkilnHandling.GetTextOrDefault('IDS_25' (* 'Efter Tork' *) ) ;
end;

procedure TfkilnHandling.cxGrid1DBBandedTableView1V1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
 // AStyle := cxStyleBeforeKiln

 if ARecord.Values[AItem.Index] = '0' then
   AStyle := cxStyleBeforeKiln
    else
     if ARecord.Values[AItem.Index] = '1' then
      AStyle := cxStyleInKiln
       else
        if ARecord.Values[AItem.Index] = '2' then
         AStyle := cxStyleAfterKiln ;


end;


procedure TfkilnHandling.sq_UserProfileAfterInsert(DataSet: TDataSet);
begin
 sq_UserProfileUserID.AsInteger := ThisUser.UserID ;
end;

procedure TfkilnHandling.tcKilnsChange(Sender: TObject);
begin
  with dmInventory do
   Begin
    if tcKilns.TabIndex > -1 then
    Begin
      if cds_SelectProgressKiln.Locate('KilnName', tcKilns.Tabs.Tabs[tcKilns.TabIndex].Caption, []) then
      Begin
        mtUserProp.Edit ;
        mtUserPropKilnChargeNo.AsInteger  := cds_SelectProgressKilnKilnChargeNo.AsInteger ;
        mtUserProp.Post ;
      End;
      self.EditVagn(Sender) ;
      mePackageNo.SetFocus ;
    End;
   End;
end;

procedure TfkilnHandling.GetVagnData(Sender: TObject);
begin
 With dmInventory do
 Begin
  if cds_KilnChargeRows.RecordCount > 0 then
  Begin
//   RowNo  := cds_KilnChargeRows.RecordCount + 1 ;
   cds_KilnChargeRows.Last ;
   RowNo  := cds_KilnChargeRowsRowNo.AsInteger + 1 ;
  End
    else
     RowNo  := 1 ;
 End;

 cxLabel_RowNo.Caption  := 'RowNo: ' + inttostr(RowNo) ;

 if TypeOfLine = 1 then
 Begin
  lcIMP.Visible     := False ;
  LabelIMP.Visible  := False ;
 End
  else
   if TypeOfLine = 3 then
   Begin
    lcIMP.Visible     := False ;
    LabelIMP.Visible  := False ;
   End
    else
    lcImp.SetFocus ;
end;

procedure TfkilnHandling.RefreshVagn ;
Begin
  if not Assigned(fEnterKilnVagn) then
  Begin
   fEnterKilnVagn := TfEnterKilnVagn.Create(Application) ;
//   fEnterKilnVagn.CreateCo(Sender, ThisUser.CompanyNo, 0,0) ;

//   fEnterKilnVagn.Align         := alClient ;
//   fEnterKilnVagn.BorderStyle   := bsNone ;
   fEnterKilnVagn.Parent        := VagnPanel;

   fEnterKilnVagn.Show;
//   fEnterKilnVagn.lcAgent.SetFocus ;
  End
  else
    begin
     fEnterKilnVagn.Parent := VagnPanel;
     fEnterKilnVagn.Show;
//     fEnterKilnVagn.lcAgent.SetFocus ;
    end ;

End;

procedure TfkilnHandling.UpdateProductDesc(Sender: TObject; const PackageNo : Integer; const PkgSupplierCode : String) ;
Begin
 With dmInventory do
 Begin
  Try
  cds_KilnChargeRows.Edit ;
  cds_GetPakProdName.ParamByName('PackageNo').AsInteger   := PackageNo ;
  cds_GetPakProdName.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
  cds_GetPakProdName.ParamByName('IMPNo').AsInteger       := cds_KilnVagnIMPNo.AsInteger ;
  cds_GetPakProdName.Active := True ;

  cds_KilnChargeRowsProductDisplayName.AsString     := cds_GetPakProdNameProductDisplayName.AsString ;
  cds_KilnChargeRowsPcsPerLength.AsString           := cds_GetPakProdNamePcsPerLength.AsString ;
  cds_KilnChargeRowsMatchingPT.AsString             := cds_GetPakProdNameMatchingPT.AsString ;
//  cds_KilnChargeRowsRowNo.AsInteger        := RowNo ;
  cds_KilnChargeRows.Post ;
  cds_GetPakProdName.Active := False ;
//  cds_KilnChargeRows.Active  := False ;
//  cds_KilnChargeRows.Active  := True ;
//  cds_KilnChargeRows.Last ;

  //
  Except
   On E: EDatabaseError do
   Begin
    cds_KilnChargeRows.Cancel ;
    ShowMessage('Package number is already assigned to a kiln') ;
   End;
  End;
 End;
End;

procedure TfkilnHandling.EditVagn(Sender: TObject);
var
  IMPNO           : Integer ;
begin
 With dmInventory do
 Begin
  SelectedVagnNo := GetVagnNoForKilnChargeNo(mtUserPropKilnChargeNo.AsInteger) ;

   if SelectedVagnNo > -1 then
   Begin
    if IsVagnStatus0(SelectedVagnNo, mtUserPropKilnChargeNo.AsInteger) then
    Begin
     if mtUserPropKilnChargeNo.AsInteger > 0 then
     Begin

//        fEnterKilnVagn.Caption  := 'Cart/set. ' + lcProgressKiln.Text ;
        dmInventory.EditVagn(mtUserPropKilnChargeNo.AsInteger, SelectedVagnNo) ;

        TypeOfLine := dmInventory.GetTypeOfLine(mtUserPropKilnChargeNo.AsInteger) ;

//        fEnterKilnVagn.ShowModal ;
        IMPNO := dmInventory.cds_KilnVagnIMPNo.AsInteger ;
        SelectedVagnNo := -1 ;
//        acPkgTypeTableExecute(Sender) ;
        if IMPNO > 0 then
          dmInventory.SaveIMPNoWithKiln(mtUserPropKilnChargeNo.AsInteger, IMPNO) ;   //Spara senaste Impregneringskategorin
        GetVagnData(Sender) ;
     End;//if..
    End //if..
     else
      ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_9' (* 'Endast vagnar "In till tork" kan ändras.' *) )) ;
   End
    else
     Begin
      dmInventory.EditVagn(mtUserPropKilnChargeNo.AsInteger, SelectedVagnNo) ;
      if MessageDlg('No wagon before kiln, do you want to add one??',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       self.AddVagn(Sender) ;
  //     ShowMessage(siLangLinked_fkilnHandling.GetTextOrDefault('IDS_10' (* 'Välj en vagn att ändra.' *) )) ;
     End;
 End;
end;


procedure TfkilnHandling.AddVagn(Sender: TObject);
var
//  fEnterKilnVagn    : TfEnterKilnVagn;
  IMPNO             : Integer ;
begin
 if mtUserPropKilnChargeNo.AsInteger > 0 then
 Begin
  TypeOfLine := dmInventory.GetTypeOfLine(mtUserPropKilnChargeNo.AsInteger) ;

//  fEnterKilnVagn  := TfEnterKilnVagn.Create(nil);
//  Try
  //  fEnterKilnVagn.Caption  := 'Cart/set. ' + lcProgressKiln.Text ;
//    fEnterKilnVagn.TypeOfLine :=  TypeOfLine ;
    dmInventory.AddVagn(mtUserPropKilnChargeNo.AsInteger) ;



//    fEnterKilnVagn.ShowModal ;

    IMPNO := dmInventory.cds_KilnVagnIMPNo.AsInteger ;
    if dmInventory.VagnarBeforeKiln_Larger_Then_MaxVagnarBefore(mtUserPropKilnChargeNo.AsInteger) then
     acMoveVagnIntoKilnExecute(Sender) ;
    acPkgTypeTableExecute(Sender) ;
    if IMPNO > 0 then
      dmInventory.SaveIMPNoWithKiln(mtUserPropKilnChargeNo.AsInteger, IMPNO) ;   //Spara senaste Impregneringskategorin

    GetVagnNos ;
    RowNo     := 1 ;
//  Finally
//   FreeAndNil(fEnterKilnVagn) ;
//  End;
 End;//if..
end;



End.



