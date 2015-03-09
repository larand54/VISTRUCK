unit uLager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer, OleCtrls,
  Menus, CRAXDRT_TLB, DB, ActnList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxLabel, cxCalc,
  cxCurrencyEdit, cxTextEdit, cxDBLookupComboBox, cxCheckBox, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxPropertiesStore, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, kbmMemTable, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridBandedTableView, cxGridTableView, dxPSCore, dxPScxCommon,
  cxClasses, cxSplitter, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxImageComboBox, cxButtons, cxPC, cxGridDBTableView,
  cxGridLevel, cxGridCustomTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGrid, cxDBLabel, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, DateUtils,
  CrystalActiveXReportViewerLib11_TLB,
  Provider, SqlExpr, cxCheckComboBox, cxDBCheckComboBox, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxRibbonPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk ;

const cFirstLengthFieldNumber = 38 ;
cFirstLengthFieldNumberPaketnr = 37 ;
      cFirstLengthFieldNumberPkgDtl = 38 ;
type
  TfLager = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    ActionList1: TActionList;
    pmFormShortcuts: TPopupMenu;
    acClose: TAction;
    Stng1: TMenuItem;
    pcInventory: TcxPageControl;
    tsTABELL: TcxTabSheet;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    acPrintPkgTable: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    pmPkgTable: TdxBarPopupMenu;
    Skrivut1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acExport: TAction;
    acPkgTypeTable: TAction;
    SummeringF61: TMenuItem;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    pmPkgNos: TdxBarPopupMenu;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton25: TdxBarButton;
    cxStyle3: TcxStyle;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleControllerFileldLabels: TcxEditStyleController;
    cxEditStyleControllerEditControls: TcxEditStyleController;
    cxStyle4: TcxStyle;
    cxImageList1: TcxImageList;
    ImageList1: TImageList;
    cxStyleAktivePkg: TcxStyle;
    cxStyleINAktivePkg: TcxStyle;
    mtPkgNosStatus: TIntegerField;
    ds_PLIP: TDataSource;
    acSaveGridLayout: TAction;
    dxBarButton40: TdxBarButton;
    acExportToExcel: TAction;
    dxBarButton42: TdxBarButton;
    cdsVerk: TFDQuery;
    cdsVerkClientNo: TIntegerField;
    cdsVerkClientName: TStringField;
    cdsVerkSearchName: TStringField;
    cdsVerkSalesRegionNo: TIntegerField;
    cdsVerkPktNrLevKod: TStringField;
    cds_PLIP: TFDQuery;
    cds_PLIPPLIP: TStringField;
    cds_PLIPLogicalInventoryName: TStringField;
    cds_PLIPInvCode: TStringField;
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
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsUserID: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
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
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    ds_Props: TDataSource;
    cds_PropsOWNER: TStringField;
    cds_PropsLengthGroup: TStringField;
    cds_PropsLengthVolUnitName: TStringField;
    cds_PropsLengthFormat: TStringField;
    cds_PropsName: TStringField;
    cxGridPopupMenu2: TcxGridPopupMenu;
    acClearFilter: TAction;
    dxBarDockControl1: TdxBarDockControl;
    cxStyleBrist: TcxStyle;
    ds_PIP: TDataSource;
    cds_PIP: TFDQuery;
    cds_PIPPIPNo: TIntegerField;
    cds_PIPORT: TStringField;
    cds_PIPOwnerNo: TIntegerField;
    cds_PropsPIP: TStringField;
    pmFardigVara: TdxBarPopupMenu;
    pmRavara: TdxBarPopupMenu;
    cxImageListTabs: TcxImageList;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
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
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
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
    GridBandedTableViewStyleSheetMaple: TcxGridBandedTableViewStyleSheet;
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
    GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet;
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
    GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet;
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
    GridBandedTableViewStyleSheetDesert: TcxGridBandedTableViewStyleSheet;
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
    cxImageList2: TcxImageList;
    acPrintOtherBookings: TAction;
    acPrintPeriodWeek: TAction;
    pmGrdPeriod: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    cxStyleAvBookat: TcxStyle;
    Panel4: TPanel;
    grdBoT: TcxGrid;
    grdBoTLevel1: TcxGridLevel;
    FD_Query: TFDQuery;
    grdDBBandedPerSortiment: TcxGridDBBandedTableView;
    grdDBBandedPerSortimentColumn1: TcxGridDBBandedColumn;
    ds_invpiv: TDataSource;
    PanelPaketnr: TPanel;
    PanelMenyPaketnrFunktioner: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cds_PropsSR: TStringField;
    cds_PLIPLIPNo: TIntegerField;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    cds_PropsFilter1: TStringField;
    grdPkgNosLevel1: TcxGridLevel;
    grdPkgNos: TcxGrid;
    grdPkgNosDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxButton4: TcxButton;
    grdDBBandedPerPaketNr: TcxGridDBBandedTableView;
    grdBoTLevel2: TcxGridLevel;
    pmSortimentsVy: TdxBarPopupMenu;
    dxBarSubItem1: TdxBarSubItem;
    SpinEditRubrikFontSortimentsVy: TdxBarSpinEdit;
    cxStyleHeaderSortimentsVy: TcxStyle;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    bUpdate: TcxButton;
    bClearFilter: TcxButton;
    bClose: TcxButton;
    cxButtonSparaVyer: TcxButton;
    eFocusDummy: TEdit;
    cbHideZeroColumns: TcxCheckBox;
    lcLengthVolUnit: TcxDBLookupComboBox;
    cbLIP: TcxCheckComboBox;
    lcOWNER: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    eBL: TcxMaskEdit;
    cxLabel5: TcxLabel;
    eReference: TcxMaskEdit;
    cxLabel7: TcxLabel;
    SpinEditContentFontSortimentsVy: TdxBarSpinEdit;
    dxBarSeparator1: TdxBarSeparator;
    cxSplitter1: TcxSplitter;
    cxButton5: TcxButton;
    acClosePkgDtlVy: TAction;
    eAT: TcxMaskEdit;
    eAB: TcxMaskEdit;
    acCreatePkgs: TAction;
    acChangePkg: TAction;
    bPrint: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    acPrintPkgDtl: TAction;
    LabelPkgDtlProduct: TcxLabel;
    pmPrint: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    acSetPktStorlek: TAction;
    cxButton6: TcxButton;
    mtPkgNosPackage_Size: TIntegerField;
    mtPkgNosCertNo: TIntegerField;
    acSetCertification: TAction;
    cxButton9: TcxButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cbInklEjFakt: TcxComboBox;
    cxLabel8: TcxLabel;
    cxButton10: TcxButton;
    acSetInfo2Text: TAction;
    dxBarButton4: TdxBarButton;
    eInfo2: TcxMaskEdit;
    cxLabel9: TcxLabel;
    acSetStdGridLayout: TAction;
    cxButton11: TcxButton;
    siLangLinked_fLager: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdPkgTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acPrintPkgTableExecute(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure grdPkgNoTblDBBandedTableView1L1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure grdPkgNoTblDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure eATExit(Sender: TObject);
    procedure eABExit(Sender: TObject);
    procedure acSaveGridLayoutExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);

    procedure acPkgTypeTableExecute(Sender: TObject);
    procedure acClearFilterExecute(Sender: TObject);
    procedure lcLagerStalleExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure acPrintOtherBookingsExecute(Sender: TObject);
    procedure grdFardigVaraDBTableView1RestNM3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure grdDBBandedPerSortimentDblClick(Sender: TObject);
    procedure cds_PropsSalesRegionNoChange(Sender: TField);
    procedure cds_PropsOwnerNoChange(Sender: TField);
    procedure SpinEditRubrikFontSortimentsVyCurChange(Sender: TObject);
    procedure pmSortimentsVyPopup(Sender: TObject);
    procedure grdBoTActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure SpinEditContentFontSortimentsVyCurChange(Sender: TObject);
    procedure acClosePkgDtlVyExecute(Sender: TObject);
    procedure acPrintPkgDtlExecute(Sender: TObject);
    procedure acChangePkgExecute(Sender: TObject);
    procedure acSetPktStorlekExecute(Sender: TObject);
    procedure acSetCertificationExecute(Sender: TObject);
    procedure acSetInfo2TextExecute(Sender: TObject);
    procedure grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
            AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure acSetStdGridLayoutExecute(Sender: TObject);

  private
    { Private declarations }
    GoToPkgCell_Allowed   : Boolean ;
    RightButton,
    ClickedF10            : Boolean ;
//    CurrentNoOfPkgs,
    SelectedProductNo     : Integer ;
    SelectedLength        : String ;
    procedure SetSTDLayoutPaketnr(Sender: TObject);
    procedure SetSTDLayoutSortiment(Sender: TObject);
    function  IsLIPChecked  : Boolean ;
    procedure SelectedPkgsOfPkgNosTable ;
    procedure ShowPanelPaketnr ;
    procedure LoadGridLayoutPaketNrVy ;
    procedure LoadGridLayoutPkgNoDtl ;
    procedure SetSummary_grdPkgNosDBBandedTableView1(Sender: TObject) ;
    procedure FormatColumnsPkgDtl ;
    procedure SetHeadersCaptionPaketnrVy ;
    procedure SetSummary_grdDBBandedPerPaketNr(Sender: TObject) ;
    procedure SetGridParamsPerPaketNr(Sender: TObject);
    procedure RefreshPerPaketNr(Sender: TObject);
    procedure SetGridParamsPkgNos(Sender: TObject);
    procedure RefreshPkgNos(Sender: TObject;const ALMM : Integer) ;
    procedure LoadLager ;
    procedure SetHeadersCaptionSortimentVy ;
    procedure LoadGridLayoutSortimentsVy ;
    procedure CheckAllItems ;
    Function  GetSQLofComboFilter(combo : TcxCheckComboBox) : String ;
    procedure RefreshPerSortiment(Sender: TObject);
    procedure CloseAllDataSets ;

    Function  GetDimFilter(const FieldName, Value : String) : String ;
    procedure SetFilter ;
    procedure SetGridParamsPerSortiment(Sender: TObject);
    procedure SetSummary_grdDBBandedPerSortiment(Sender: TObject) ;

    Procedure ShowVolumesPerPeriod (const ALMM : Double) ;

    procedure FormatLengthColumns ;
    procedure FormatLengthColumnsPaketnr ;

    function  ExportToHTML(const pFilNamn : String;grd: TcxGrid) : String ;
    procedure ExportPkgTables(Sender: TObject);
    procedure ClearProductFilter ;
    procedure DoEnter ; override ;
    procedure DoExit ; override ;

  public
    { Public declarations }
    procedure DoOnGetContentStyle(
    Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
    AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

//      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
//      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure OpenBookingTables (const BookingGroupNo, pID : Integer) ;
    procedure updateCellVolume ;
    Procedure CreateCo(Sender: TObject;const CompanyNo : Integer;const NT, NB : Double) ;
  end;

var
  fLager: TfLager;

implementation

uses VidaType, dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  UnitPkgInfo,
  dmc_UserProps, dmsVidaSystem, //UnitPkgEntry,
//  dmsVidaPkg, UfelRegPkg, UnitRemovePkg,
  uSendMapiMail ,
  uEntryField ,
//  uProductUtfall, uVolPerLagerGrupp,
//  UnitPickProduct, dm_SortOrder, fSortOrder, fMain, uSortingOrderWizard,
  dmsVidaProduct, //uSelectLO, uEnterMatPunktForBooking, uEnterLOStatus,
  UnitCRViewReport,
  VidaUtils , UchgPkgVard, uLagerPos; //, uAddManualBooking, uBookingRa, uLOBuffertParams;

{$R *.dfm}

procedure TfLager.DoEnter ;
Begin
 Inherited ;
// ShowMessage('Hej');
End ;

procedure TfLager.DoExit ;
Begin
 Inherited ;
End ;

procedure TfLager.DoOnGetContentStyle(
//Sender: TcxCustomGridTableView;
//  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
//  out AStyle: TcxStyle);

  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  aColumn: TcxCustomGridTableItem;
  aValue: Variant;
begin
  aValue := ARecord.Values[AItem.Index];

  if (ARecord.Values[AItem.Index] <> null) and (AItem <> nil) and
  (aValue < 0) then
   AStyle:= cxStyleBrist ;
end;

procedure TfLager.ClearProductFilter ;
Begin
 eAT.Text         := '' ;
 eAB.Text         := '' ;
 eReference.Text  := '' ;
 eBL.Text         := '' ;
 eInfo2.Text      := '' ;
End ;

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

procedure TfLager.OpenBookingTables(const BookingGroupNo, pID : Integer) ;
Var ID : Integer ;
Begin
 With dmInventory do
 Begin
  cds_GetDimensions.Active  := False ;
  cds_GetDimensions.ParamByName('BookingNo').AsInteger := BookingGroupNo ;
  cds_GetDimensions.Active  := True ;
  Try
  if (cds_GetDimensions.RecordCount > 0) and (cds_GetDimensionsFirstAT.AsFloat > 0) and (cds_GetDimensionsFirstAB.AsFloat > 0) then
  Begin
   eAT.Text := '' ;
   eAB.Text := '' ;
   eAT.Text  := FloatToStr(cds_GetDimensionsFirstAT.AsFloat) ;
   eAT.Text  := eAT.Text + '-' + FloatToStr(cds_GetDimensionsLastAT.AsFloat) ;
   eAB.Text  := FloatToStr(cds_GetDimensionsFirstAB.AsFloat) ;
   eAB.Text  := eAB.Text + '-' + FloatToStr(cds_GetDimensionsLastAB.AsFloat) ;
  End ; //if..
  Finally
   cds_GetDimensions.Active  := False ;
  End ;
 End ;
End ;

Procedure TfLager.CreateCo(Sender: TObject;const CompanyNo : Integer;const NT, NB : Double) ;
var
  Save_Cursor : TCursor;
  ID          : Integer ;
  gBookingNo  : Integer ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  cds_Props.Active := False ;
  cds_Props.ParamByName('Form').AsString    := Self.Name ;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  cds_Props.Active := True ;

  if cds_Props.RecordCount = 0 then
  Begin
   cds_Props.Insert ;
   cds_PropsOwnerNo.AsInteger  := CompanyNo ;
   cds_PropsVerkNo.AsInteger   := CompanyNo ;
   cds_Props.Post ;
  End
  else
  Begin
   if (not cds_PropsSalesPersonNo.IsNull) and (cds_PropsSalesPersonNo.AsInteger > 0) then
   cxStyleHeaderSortimentsVy.Font.Size  := cds_PropsSalesPersonNo.AsInteger ;

   if (not cds_PropsAgentNo.IsNull) and (cds_PropsAgentNo.AsInteger > 0) then
   Begin
    cxStyleContent.Font.Size    := cds_PropsAgentNo.AsInteger ;
    cxStyleContentOdd.Font.Size := cds_PropsAgentNo.AsInteger ;
   End ;

  End ;

  LoadLager ;

  if (not cds_PropsFilter1.IsNull) and (Length(cds_PropsFilter1.AsString) > 0) then
   cbLIP.EditValue := cds_PropsFilter1.AsString ;
//    else
//     cds_Props.Edit ;



//  if cds_PropsAgentNo.AsInteger > 0 then


  if NT > 0 then
  eAT.Text  := FloatToStr(NT) ;
  if NB > 0 then
  eAB.Text  := FloatToStr(NB) ;

//  cbLIP.Text := '10421' ;


 Finally
  GoToPkgCell_Allowed   :=  True ;
  Screen.Cursor         := Save_Cursor ;
 End ;
end;

procedure TfLager.LoadGridLayoutSortimentsVy ;
Begin
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerSortiment.Name, grdDBBandedPerSortiment) = False then ;
End ;

procedure TfLager.LoadGridLayoutPaketNrVy ;
Begin
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerPaketNr.Name, grdDBBandedPerPaketNr) = False then ;
End ;

procedure TfLager.LoadGridLayoutPkgNoDtl ;
Begin
 //if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNosDBBandedTableView1.Name, grdPkgNosDBBandedTableView1) = False then ;
End ;

procedure TfLager.FormCreate(Sender: TObject);
begin
 GoToPkgCell_Allowed                        := False ;
end;

procedure TfLager.FormDestroy(Sender: TObject);
begin
// if Assigned(dmInventory) then
// FreeAndNil(dmInventory);
// fBokaRavara := nil ;
end;

procedure TfLager.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLager.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var ResultString  : String ;
begin
  CanClose := True ;
  if cds_Props.State in [dsBrowse] then
   cds_Props.Edit ;
  cds_PropsFilter1.AsString  := cbLIP.EditValue ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;
end;

procedure TfLager.grdPkgTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfLager.acPrintPkgTableExecute(Sender: TObject);
Var FilterString : String ;
begin

//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;

//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(icLagerVy.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link1.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1) ;
end;



procedure TfLager.acExportExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ExportPkgTables(Sender) ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.FormatLengthColumns ;
//    Save_Cursor : TCursor;
{Styck
AM3
NM3
PAKET}
Var x : Integer ;
Begin
 With dmInventory do
 Begin
  With sp_invpiv do
  Begin

   For x:= cFirstLengthFieldNumber to sp_invpiv.FieldCount - 1 do
   if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###'
    else
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###.0';


   TFloatField(Fields.FieldByName('NM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM2')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM1')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('Paket')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('Styck')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('AvgLength')).DisplayFormat :=  '###,###,###.0' ;
  End ; //With sp_invpiv do


 End ; //With dmInventory do
// grdDBBandedPerSortiment.OptionsBehavior.BestFitMaxRecordCount := grdDBBandedPerSortiment.ViewInfo.VisibleRecordCount ;
// grdDBBandedPerSortiment.ApplyBestFit();
End ;


procedure TfLager.FormatLengthColumnsPaketnr ;
//    Save_Cursor : TCursor;
{Styck
AM3
NM3
PAKET}
Var x : Integer ;
Begin
 With dmInventory do
 Begin
  With sp_invpivPkg do
  Begin

   For x:= cFirstLengthFieldNumberPaketnr to sp_invpiv.FieldCount - 1 do
   if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###'
    else
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###.0';


   TFloatField(Fields.FieldByName('NM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM2')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM1')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('Paket')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('Styck')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('AvgLength')).DisplayFormat :=  '###,###,###.0' ;
  End ; //With sp_invpiv do


 End ; //With dmInventory do
// grdDBBandedPerSortiment.OptionsBehavior.BestFitMaxRecordCount := grdDBBandedPerSortiment.ViewInfo.VisibleRecordCount ;
// grdDBBandedPerSortiment.ApplyBestFit();
End ;

procedure TfLager.grdPkgNoTblDBBandedTableView1L1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
 if (AText = '0') or (AText = '.0') or (AText = ',0') then
  AText:= '' ;
end;

procedure TfLager.ExportPkgTables(Sender: TObject);
const
  LF = #10;
Var 
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : Array of String ;
    MailToAddress           : String ;
    Subject                 : String ;
    InfogadHTMLFil          : String ;
begin
 Subject:= siLangLinked_fLager.GetTextOrDefault('IDS_0' (* 'Paketspecifikation' *) ) ;

 InfogadHTMLFil:= ExportToHTML(siLangLinked_fLager.GetTextOrDefault('IDS_1' (* 'paketspec' *) ), grdBoT) ;

 MailToAddress:= 'ange@address.se';//'lars.makiaho@gmail.com' ;

 SetLength(Attach, 1);
 Attach[0]:= InfogadHTMLFil ;
// Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

{
  dm_SendMapiMail.SendMail(Subject,
  'Paketspecifikation inkluderad. '
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +'Lars',//dmsContact.GetFirstAndLastName(ThisUser.UserID),
  'lars.makiaho@falubo.se',
  MailToAddress,
  InfogadHTMLFil,
  Attach) ;
  }
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;

end;

function TfLager.ExportToHTML(const pFilNamn : String;grd: TcxGrid) : String ;
Var FilNamn       : String ;
    ProdExportMap : String ;
    Title         : String ;
begin

 Title:= pFilNamn ;
// FilNamn:= 'paketspec' ;
 ProdExportMap:= dmsSystem.Get_SystemDir('Global', 'UserDir') ;
 FilNamn:= ProdExportMap+pFilNamn;
// ExportGridToHTML(FilNamn, grd, False, False,'html');

// cxExportPivotGridToHTML(FilNamn ,  pivProduction, True, 'html');
 FilNamn:= FilNamn+'.html' ;
// Memo1.Lines.Clear ;
// Memo1.Lines.LoadFromFile(FilNamn);

{ For x := 0 to Memo1.Lines.Count - 1 do
 Begin
  if Memo1.Lines.Strings[x] = '<BODY>' then
  Begin
   Memo1.Lines.Insert(x+1,'<p align="center">'+Title+'</p>');
   Break ;
  End ;
 End ; }

// Memo1.Lines.SaveToFile(FilNamn);
 Result:= FilNamn ;
end;

Procedure TfLager.ShowVolumesPerPeriod (const ALMM : Double) ;
Begin
 With dmInventory do
 Begin
//  Try
  if cds_OtherBookings.Active then
   cds_OtherBookings.Active  := False ;

  dmsConnector.FDTransaction1.StartTransaction;
  try
  sp_PeriodBooking.ParamByName('@UserID').AsInteger      := ThisUser.UserID ;
  sp_PeriodBooking.ParamByName('@ProductNo').AsInteger   := grdDBBandedPerSortiment.DataController.DataSource.DataSet.FieldByName('ProductNo').AsInteger ;
//  sp_PeriodBooking.ParamByName('@PIPNo').AsInteger       := grdDBBandedPerSortiment.DataController.DataSource.DataSet.FieldByName('InvGrouping').AsInteger ;
  sp_PeriodBooking.ParamByName('@ALMM').AsFloat          := ALMM ;
  sp_PeriodBooking.ParamByName('@InvGrouping').AsInteger := grdDBBandedPerSortiment.DataController.DataSource.DataSet.FieldByName('LIPGroupNo').AsInteger ;
  sp_PeriodBooking.ExecProc ;
  dmsConnector.FDTransaction1.Commit ;
  Except
//   On E: Exception do
   on E: eDatabaseError do
   Begin
    dmsSystem.FDoLog(E.Message + ' sp_PeriodBooking ') ;
    dmsConnector.FDTransaction1.Rollback ;
//    ShowMessage('sp_PeriodBooking ' + E.Message) ;
//   E.CreateFmt ('Fel i sp_NewLoad, Error message %s', [E.Message]) ;
    Raise ;
   End ;
  End ;

 End ;
End ;

procedure TfLager.grdPkgNoTblDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
 Status : Integer ;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] <> null then
 Status:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index] ;

 if (Status = 1) and (cds_Props.Active) and (cds_PropsNewItemRow.AsInteger > 0) then
  AStyle:= cxStyleAktivePkg
  else
   if (cds_Props.Active) and (cds_PropsNewItemRow.AsInteger > 0) then
    AStyle:= cxStyleINAktivePkg ;
end;

procedure TfLager.eATExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
    dx    : integer ;
    ns    : string  ;
    delimiter,
    txt   : string  ;
    delta : integer ;

function RemoveBadChars(S : String) : String ;
begin
 while (Length(S) > 0) and (Copy(S, Length(S), 1) = delimiter) do
  Delete(S, Length(S), 1) ;
 Result:= S ;
end;

Begin
 delimiter  := '-' ;
 eAT.Text   := RemoveBadChars(eAT.Text) ;

 x      := 1 ;
 delta  := Length(delimiter) ;
 txt    := eAT.Text + delimiter;

     while Length(txt) > 0 do
     begin
       dx := Pos(delimiter, txt) ;
       ns := Copy(txt,0,dx-1) ;
       txt := Copy(txt,dx+delta,MaxInt) ;
       x  := succ(x) ;
     end;
end;

procedure TfLager.eABExit(Sender: TObject);
Var x     : Integer ;
    Found : Boolean ;
    dx    : integer ;
    ns    : string  ;
    delimiter,
    txt   : string  ;
    delta : integer ;

function RemoveBadChars(S : String) : String ;
begin
  { Convert commas to period }
 while (Length(S) > 0) and (Copy(S, Length(S), 1) = delimiter) do
  Delete(S, Length(S), 1) ;
 Result:= S ;
end;

Begin
 delimiter  := '-' ;
 eAB.Text   := RemoveBadChars(eAB.Text) ;
 x      := 1 ;
 delta  := Length(delimiter) ;
 txt    := eAB.Text + delimiter;
     while Length(txt) > 0 do
     begin
       dx := Pos(delimiter, txt) ;
       ns := Copy(txt,0,dx-1) ;

       txt := Copy(txt,dx+delta,MaxInt) ;
       x  := succ(x) ;
     end;
end;

procedure TfLager.acSaveGridLayoutExecute(Sender: TObject);
Var x : Integer ;
begin
 With dmInventory do
 Begin

  For x := grdDBBandedPerSortiment.ColumnCount -1  downto cFirstLengthFieldNumber do
    grdDBBandedPerSortiment.Columns[x].Free ;




  if cds_Props.State in [dsBrowse] then
  cds_Props.Edit ;

  cds_PropsSalesPersonNo.AsInteger  := cxStyleHeaderSortimentsVy.Font.Size ;

  cds_PropsAgentNo.AsInteger        := cxStyleContent.Font.Size ;

  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

  if grdDBBandedPerSortiment.DataController.DataSet.RecordCount > 0 then
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerSortiment.Name, grdDBBandedPerSortiment) ;

  if grdDBBandedPerPaketNr.DataController.DataSet.RecordCount > 0 then
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerPaketNr.Name, grdDBBandedPerPaketNr) ;

 // if grdPkgNosDBBandedTableView1.DataController.DataSet.RecordCount > 0 then
 //  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgNosDBBandedTableView1.Name, grdPkgNosDBBandedTableView1) ;
 End ;//With...
end;

procedure TfLager.acSetCertificationExecute(Sender: TObject);
Var CertNo      : Integer ;
    CertShortName   : String ;
begin
 With dmInventory do
 Begin
  CertNo  :=  GetNewCert(CertShortName) ;
  if CertNo > 0 then
  Begin
    mtPkgNos.Active := True ;
    sp_invpivPkgDtl.DisableControls ;
    Try
    SelectedPkgsOfPkgNosTable ;
    mtPkgNos.First ;
    while not mtPkgNos.Eof do
    Begin
     if sp_invpivPkgDtl.Locate('PackageNo;SupplierCode',  VarArrayOf([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]), []) then
     Begin
 {     sp_invpivPkgDtl.Edit ;
      sp_invpivPkgDtl.FieldByName('CertNo').AsInteger         := CertNo ;
      sp_invpivPkgDtl.FieldByName('CertShortName').AsString   := CertShortName ;
      sp_invpivPkgDtl.Post ;  }
      CngCert(mtPkgNosPackageNo.AsInteger, CertNo, mtPkgNosSupp_Code.AsString) ;
     End;
     mtPkgNos.Next ;
    End;
    sp_invpivPkgDtl.Refresh ;
    Finally
     sp_invpivPkgDtl.EnableControls ;
     mtPkgNos.Active := False ;
    End;
  End;
 End;
end;

procedure TfLager.acSetInfo2TextExecute(Sender: TObject);
Var LagerPos   : String ;
begin
 With dmsSystem, dmInventory do
 Begin
  LagerPos  :=  GetLagerPos ;
  if Length(LagerPos) > 0 then
  Begin
    mtPkgNos.Active := True ;
    sp_invpivPkgDtl.DisableControls ;
    Try
    SelectedPkgsOfPkgNosTable ;
    mtPkgNos.First ;
    while not mtPkgNos.Eof do
    Begin
     if sp_invpivPkgDtl.Locate('PackageNo;SupplierCode',  VarArrayOf([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]), []) then
     Begin
 {     sp_invpivPkgDtl.Edit ;
      sp_invpivPkgDtl.FieldByName('CertNo').AsInteger         := CertNo ;
      sp_invpivPkgDtl.FieldByName('CertShortName').AsString   := CertShortName ;
      sp_invpivPkgDtl.Post ;  }
      SetInfo2Text(mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString, LagerPos) ;
     End;
     mtPkgNos.Next ;
    End;
    sp_invpivPkgDtl.Refresh ;
    Finally
     sp_invpivPkgDtl.EnableControls ;
     mtPkgNos.Active := False ;
    End;
  End;
 End;
end;

procedure TfLager.acSetPktStorlekExecute(Sender: TObject);
Var Package_Size      : Integer ;
    PackageSizeName   : String ;
begin
 With dmInventory do
 Begin
  Package_Size  :=  GetNewPackage_Size(PackageSizeName) ;
  if Package_Size > -1 then
  Begin
    mtPkgNos.Active := True ;
    sp_invpivPkgDtl.DisableControls ;
    Try
    SelectedPkgsOfPkgNosTable ;
    mtPkgNos.First ;
    while not mtPkgNos.Eof do
    Begin
     if sp_invpivPkgDtl.Locate('PackageNo;SupplierCode',  VarArrayOf([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]), []) then
     Begin
{      sp_invpivPkgDtl.Edit ;
      sp_invpivPkgDtl.FieldByName('Package_Size').AsInteger     := Package_Size ;
      sp_invpivPkgDtl.FieldByName('PackageSizeName').AsString   := PackageSizeName ;
      sp_invpivPkgDtl.Post ;   }

      CngArtNoByPkgSize(mtPkgNosPackageNo.AsInteger, Package_Size, mtPkgNosSupp_Code.AsString) ;
     End;
     mtPkgNos.Next ;
    End;
     sp_invpivPkgDtl.Refresh ;
    Finally
     sp_invpivPkgDtl.EnableControls ;
      mtPkgNos.Active := False ;
    End;
  End;
 End;
end;

procedure TfLager.acSetStdGridLayoutExecute(Sender: TObject);
Var x : Integer ;
begin
   Case grdBoT.ActiveLevel.Index of
    0 : Begin
          SetSTDLayoutSortiment(Sender) ;
        End ;
    1 : Begin
          SetSTDLayoutPaketnr(Sender) ;
        End ;
   End ; //Case
end;

procedure TfLager.SetSTDLayoutPaketnr(Sender: TObject);
Var x : Integer ;
begin
 With dmInventory do
 Begin

  if dmsSystem.LoadGridLayout(258, Self.Name + '/' + grdDBBandedPerPaketNr.Name, grdDBBandedPerPaketNr) = False then ;

  For x := grdDBBandedPerPaketNr.ColumnCount -1  downto cFirstLengthFieldNumberPaketnr do
    grdDBBandedPerPaketNr.Columns[x].Free ;

  if cds_Props.State in [dsBrowse] then
  cds_Props.Edit ;

  cds_PropsSalesPersonNo.AsInteger  := cxStyleHeaderSortimentsVy.Font.Size ;

  cds_PropsAgentNo.AsInteger        := cxStyleContent.Font.Size ;

  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 // if grdDBBandedPerSortiment.DataController.DataSet.RecordCount > 0 then
 //  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerSortiment.Name, grdDBBandedPerSortiment) ;

//  if grdDBBandedPerPaketNr.DataController.DataSet.RecordCount > 0 then
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerPaketNr.Name, grdDBBandedPerPaketNr) ;

 End ;//With...
end;


procedure TfLager.SetSTDLayoutSortiment(Sender: TObject);
Var x : Integer ;
begin
 With dmInventory do
 Begin

  if dmsSystem.LoadGridLayout(258, Self.Name + '/' + grdDBBandedPerSortiment.Name, grdDBBandedPerSortiment) = False then ;

  For x := grdDBBandedPerSortiment.ColumnCount -1  downto cFirstLengthFieldNumber do
    grdDBBandedPerSortiment.Columns[x].Free ;

  if cds_Props.State in [dsBrowse] then
  cds_Props.Edit ;

  cds_PropsSalesPersonNo.AsInteger  := cxStyleHeaderSortimentsVy.Font.Size ;

  cds_PropsAgentNo.AsInteger        := cxStyleContent.Font.Size ;

  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
  Begin
   cds_Props.ApplyUpdates(0) ;
   cds_Props.CommitUpdates ;
  End ;

 // if grdDBBandedPerSortiment.DataController.DataSet.RecordCount > 0 then
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerSortiment.Name, grdDBBandedPerSortiment) ;

//  if grdDBBandedPerPaketNr.DataController.DataSet.RecordCount > 0 then
   //dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdDBBandedPerPaketNr.Name, grdDBBandedPerPaketNr) ;

 End ;//With...
end;


procedure TfLager.acExportToExcelExecute(Sender: TObject);
Var FileName  : String ;
begin
 SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog1.DefaultExt:= 'xls';
// SaveDialog1.InitialDir:= ExcelDir ;
 if SaveDialog1.Execute then
 Begin
  FileName:= SaveDialog1.FileName ;
  Try
//   ExportGridToExcel(FileName, grdBoT, False, False, True,'xls');
  ShowMessage(siLangLinked_fLager.GetTextOrDefault('IDS_2' (* 'Tabell exporterad till excel fil ' *) ) + FileName);
  Except
  End ;
 End ;

end;

procedure TfLager.cds_PropsAfterInsert(DataSet: TDataSet);
begin
 cds_PropsForm.AsString                 := Self.Caption ;
 cds_PropsUserID.AsInteger              := ThisUser.UserID ;
 cds_PropsRegDate.AsDateTime            := Now ;
// cds_PropsProductGroupNo.AsInteger     := -1 ;
// cds_PropsProductNo.AsInteger          := -1 ;
// cds_PropsProductDescription.AsString  := 'Ingen ändring' ;
// cds_PropsLIPChange.AsInteger          := 0 ;
// cds_PropsVerkNo.AsInteger              := 0 ;
// cds_PropsOwnerNo.AsInteger             := 741 ;
end;

procedure TfLager.SetSummary_grdDBBandedPerSortiment(Sender: TObject) ;
var x           : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 grdDBBandedPerSortiment.BeginUpdate ;
 Try
  with grdDBBandedPerSortiment.DataController.Summary do
   FooterSummaryItems.Clear ;// Delete(x) ; // .Add as TcxGridDBTableSummaryItem do
 Finally
  grdDBBandedPerSortiment.EndUpdate ;
 End ;

// grdDBBandedPerSortiment.BeginUpdate ;
 Try
 For x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount -1 do
  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.Columns[x] ;
               Kind := skSum ;
               if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
               Format := '#####'
               else
               Format := '#####.0';
            end
          ;
        ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('AM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('NM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('AM1') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('AM2') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('Paket') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('Styck') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('PackageNo') ;
               Kind := skCount ;
               Format := '######';
            end ;

  with grdDBBandedPerSortiment.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerSortiment.GetColumnByFieldName('ProductDisplayName') ;
               Kind := skCount ;
               Format := '######';
            end ;

 Finally
//  grdDBBandedPerSortiment.EndUpdate ;
 End ;

 grdDBBandedPerSortiment.BeginUpdate ;
 Try
   For x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount -1 do
  if (grdDBBandedPerSortiment.DataController.Summary.FooterSummaryValues[x-cFirstLengthFieldNumber] = 0) then
   grdDBBandedPerSortiment.Columns[x].Visible:= not cbHideZeroColumns.Checked ;

 Finally
  grdDBBandedPerSortiment.EndUpdate ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

Function TfLager.GetDimFilter(const FieldName, Value : String) : String ;
Var x     : Integer ;
    Found : Boolean ;
    dx    : integer ;
    ns    : string  ;
    delimiter,
    LValue,
    txt   : string  ;
    delta : integer ;

function RemoveBadChars(S : String) : String ;
begin
 while (Length(S) > 0) and (Copy(S, Length(S), 1) = delimiter) do
  Delete(S, Length(S), 1) ;
 Result:= S ;
end;

Begin
// delimiter  := '+' ;
// eAT.Text   := RemoveBadChars(eAT.Text) ;
 delimiter  := '-' ;
// LValue := Value ;
 LValue   := RemoveBadChars(Value) ;

// ccbAT.Clear ; // .ClearSelection ;
 x      := 1 ;
 delta  := Length(delimiter) ;
 txt    := LValue ;// + delimiter;

     if Pos(delimiter, Value) > 0 then
//     while Length(txt) > 0 do
     begin
       dx := Pos(delimiter, txt) ;
       ns := Copy(txt,1,dx-1) ;
       txt := Copy(txt,dx+delta,MaxInt) ;
       Result := FieldName + ' >= ' + ns ;

//       dx := Pos(delimiter, txt) ;
//       ns := Copy(txt,0,dx-1) ;
       Result := Result + ' AND ' + FieldName + ' <= ' + txt ;
//       x  := succ(x) ;
     end
     else
     Result := FieldName + ' = ' + Copy(txt, 1, Length(txt)) ;


// if Found = False then  eAT.Text := '' ;
end;

procedure TfLager.SetFilter ;
Begin
 with dmInventory do
 Begin
  sp_invpiv.Filter    := '' ;
  if (Length(eAT.Text) > 0) and (Length(eAB.Text) > 0) then
  sp_invpiv.Filter    := GetDimFilter('AT', eAT.Text) + ' AND ' + GetDimFilter('AB', eAB.Text)
  else
  if (Length(eAT.Text) > 0) then
  sp_invpiv.Filter    := GetDimFilter('AT', eAT.Text)
  else
  if (Length(eAB.Text) > 0) then
  sp_invpiv.Filter    := GetDimFilter('AB', eAB.Text) ;

  sp_invpiv.Filter  :=  ReplaceCommas(sp_invpiv.Filter) ;
  if Length(sp_invpiv.Filter) > 0 then
  sp_invpiv.Filtered  := True
  else
  sp_invpiv.Filtered  := False ;
 End ;
End ;

procedure TfLager.acPkgTypeTableExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try

 if ((IsLIPChecked) and (dmsContact.IsClientLego(ThisUser.CompanyNo) = 6))
 or (dmsContact.IsClientLego(ThisUser.CompanyNo) <> 6) then
 Begin

   eAT.Text := TRIM(eAT.Text) ;
   eAB.Text := TRIM(eAB.Text) ;

   eAT.Text := ReplaceDecimalPoint(eAT.Text) ;
   eAB.Text := ReplaceDecimalPoint(eAB.Text) ;

  // if (Length(eAT.Text) > 0) or (Length(eAB.Text) > 0) then
  // Begin
   Case grdBoT.ActiveLevel.Index of
    0 : Begin
  //        LoadGridLayoutSortimentsVy ;
  //        SetFilter ;

          RefreshPerSortiment(Sender);
          SetHeadersCaptionSortimentVy ;
        End ;
    1 : Begin
  //        LoadGridLayoutPaketNrVy ;
  //        SetFilter ;
          RefreshPerPaketnr(Sender);
          SetHeadersCaptionPaketnrVy ;
        End ;
   End ; //Case

  // End
  //  else
  //   ShowMessage('Ange en tjocklek eller bredd.') ;


 End
    else
     ShowMessage(siLangLinked_fLager.GetTextOrDefault('IDS_3' (* 'Välj en lagergrupp' *) )) ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.SetHeadersCaptionSortimentVy ;
Begin
 Case cds_PropsLengthVolUnitNo.AsInteger of
  0 : grdDBBandedPerSortiment.Bands.Items[2].Caption:= 'ANTAL STYCK PER LÄNGD' ;
  1 : grdDBBandedPerSortiment.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_4' (* 'AM3 PER LÄNGD' *) ) ;
  2 : grdDBBandedPerSortiment.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_5' (* 'NM3 PER LÄNGD' *) ) ;
  3 : grdDBBandedPerSortiment.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_6' (* 'PAKET PER LÄNGD' *) ) ;
 End ;

End ;

procedure TfLager.SetHeadersCaptionPaketnrVy ;
Begin
 Case cds_PropsLengthVolUnitNo.AsInteger of
  0 : grdDBBandedPerPaketNr.Bands.Items[2].Caption:= 'ANTAL STYCK PER LÄNGD' ;
  1 : grdDBBandedPerPaketNr.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_4' (* 'AM3 PER LÄNGD' *) ) ;
  2 : grdDBBandedPerPaketNr.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_5' (* 'NM3 PER LÄNGD' *) ) ;
  3 : grdDBBandedPerPaketNr.Bands.Items[2].Caption:= siLangLinked_fLager.GetTextOrDefault('IDS_6' (* 'PAKET PER LÄNGD' *) ) ;
 End ;

End ;

procedure TfLager.RefreshPerSortiment(Sender: TObject);
Var Save_Cursor : TCursor;
    aColumn     : TcxCustomGridTableItem;
    x           : Integer ;
    LIPs        : String ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 dmInventory.sp_invpiv.DisableControls ;
 Try
 LIPs := TRIM(GetSQLofComboFilter(cbLIP)) ;
 grdDBBandedPerSortiment.ClearItems ;

 dmInventory.Refresh_sp_invpiv(LIPs, cds_PropsLengthVolUnitNo.AsInteger, cds_PropsOwnerNo.AsInteger,
 StrToFloatDef(eAT.Text,0), StrToFloatDef(eAB.Text,0),
 eReference.Text, eBL.Text, eInfo2.Text) ;

 Try
  Except
   On E: Exception do
   Begin
    ShowMessage('dmInventory.sp_invpiv.Active, Error message ' + E.Message) ;
   End ;
  End ;

  Try
  if dmInventory.sp_invpiv.RecordCount > 0 then
  Begin
   if cbInklEjFakt.ItemIndex <> 1 then
   Begin
    if cbInklEjFakt.ItemIndex = 0 then
     dmInventory.sp_invpiv.Filter  := 'InventorySource = 0'
      else
       dmInventory.sp_invpiv.Filter  := 'InventorySource = 1' ;
    dmInventory.sp_invpiv.Filtered  := True ;
   End
    else
     dmInventory.sp_invpiv.Filtered  := False ;

   SetGridParamsPerSortiment(Sender) ;
  End ;
   Except
    On E: Exception do
    Begin
     ShowMessage('SetGridParamsPerSortiment, Error message ' + E.Message) ;
    End ;
   End ;


 Finally
  dmInventory.sp_invpiv.EnableControls ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var
  Size: TSize;
  OldFont, LogFont: TLogFont;
  ABounds, ATextRect: TRect;
  AFilterRect: TRect;
  I: Integer;
  AButtonState: TcxButtonState;
  ATextColor, ABkColor: TColor;
  ADate: TDateTime;
begin
  GetObject(ACanvas.Font.Handle, SizeOf(OldFont), @OldFont);
  LogFont := OldFont;
  with LogFont do
  begin
    lfEscapement := 900;
    lfOrientation := lfEscapement;
    lfOutPrecision := OUT_TT_ONLY_PRECIS;
  end;
  ACanvas.Font.Handle := CreateFontIndirect(LogFont);

  ABounds := AViewInfo.Bounds;

  ATextRect := ABounds;
  InflateRect(ATextRect, -1, -4);

  ADate := AViewInfo.Column.Tag;

{  if DayOfTheWeek(ADate) >= DaySaturday then
  begin
    ATextColor := clWhite;
    ABkColor := clGray;
  end
  else
  begin
    ATextColor := clBlack;
    ABkColor := clSilver;
  end; }

    ATextColor := clBlack;
    ABkColor := clYellow;

  ACanvas.Canvas.Brush.Color := ABkColor;
  ACanvas.Canvas.Brush.Style := bsSolid;
  ACanvas.Font.Color := ATextColor;

  Sender.Painter.LookAndFeelPainter.DrawHeader(
      ACanvas,                   // The Canvas
      ABounds,                   // Bounds
      ATextRect,                 // TextAreaBounds
      AViewInfo.Neighbors,
      AViewInfo.Borders,
      cxbsNormal,                // (Button) State
      taCenter,                  // Horz. Alignment
      vaCenter,                  // Vert. Alignment
      False,                     // Multiline
      False,                     // ShowEndEllipsis
      '',  // Text
      ACanvas.Font,              // Font
      ATextColor,                // TextColor
      ABkColor                   // BackgroundColor
      );

  ACanvas.Canvas.Brush.Color := clYellow ;//ABkColor;
      ACanvas.Canvas.TextRect(
      ATextRect,
      ATextRect.Left,
      ATextRect.Bottom,
      AViewInfo.Column.Caption
      );

  { Restore/free used stuff }
  DeleteObject(ACanvas.Font.Handle);
  ACanvas.Font.Handle := CreateFontIndirect(OldFont);

  ADone := True;
end;

procedure TfLager.SetGridParamsPerSortiment(Sender: TObject);
Var Save_Cursor : TCursor;
    aColumn     : TcxGridDBBandedColumn ;
    x           : Integer ;
begin
 Try
 grdDBBandedPerSortiment.ClearItems ;

 grdDBBandedPerSortiment.DataController.CreateAllItems(True) ;

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

 for x := cFirstLengthFieldNumber to grdDBBandedPerSortiment.ColumnCount - 1 do
 Begin
  grdDBBandedPerSortiment.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle ;
  grdDBBandedPerSortiment.Columns[x].OnCustomDrawHeader       := grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader ;
 End;



{procedure TfLager.grdPkgNosDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

procedure TfLager.DoOnGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
  }



// SetFilter ;

 dmInventory.sp_invpiv.FieldByName('ProductDisplayName').DisplayLabel := 'Produkt' ;
 dmInventory.sp_invpiv.FieldByName('PIP').DisplayLabel                := 'Ställe' ;
 dmInventory.sp_invpiv.FieldByName('LIP').DisplayLabel                := 'Grupp' ;
 dmInventory.sp_invpiv.FieldByName('AvgLength').DisplayLabel          := 'Medellängd' ;
 dmInventory.sp_invpiv.FieldByName('AB').DisplayLabel                 := 'AB' ;
 dmInventory.sp_invpiv.FieldByName('LP').DisplayLabel                 := 'PT' ;
 dmInventory.sp_invpiv.FieldByName('PackageSizeName').DisplayLabel    := 'Storlek' ;
 dmInventory.sp_invpiv.FieldByName('CertShortName').DisplayLabel      := 'Cert.' ;
 //dmInventory.sp_invpiv.FieldByName('RegPointType').DisplayLabel       := 'RPT' ;
 dmInventory.sp_invpiv.FieldByName('InventorySource').DisplayLabel     := 'Källa' ;

// dmInventory.sp_invpiv.FieldByName('LIPGroupNo').Visible              := False ;
// dmInventory.sp_invpiv.FieldByName('nooflengths').Visible             := False ;
// dmInventory.sp_invpiv.FieldByName('AT').Visible                      := False ;
// dmInventory.sp_invpiv.FieldByName('AB').Visible                      := False ;
 dmInventory.sp_invpiv.FieldByName('Species').DisplayLabel          := 'Träslag' ;
 dmInventory.sp_invpiv.FieldByName('Surfacing').DisplayLabel        := 'Utförande' ;
 dmInventory.sp_invpiv.FieldByName('LPName').DisplayLabel           := 'LP' ;
 dmInventory.sp_invpiv.FieldByName('VarugruppNamn').DisplayLabel    := 'Varugrupp' ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('productNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PIPNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LIPNo');
 aColumn.Visible  := False ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Paketnr');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Prefix');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PackageTypeNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('MFBM');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Pris');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('ProductValue');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Reference');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Info1');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Info2');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('CertNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('InventorySource');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('TILLVERKAD');
 aColumn.Visible  := False ;


 //aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('RegPointType');
 //aColumn.Visible  := False ;

// aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('nooflengths');
// aColumn.Visible  := False ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AT');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('AB');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

// aColumn                    := grdDBBandedPerSortiment.GetColumnByFieldName('InventorySource');
// aColumn.Visible            := True ;
// aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('ProductDisplayName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('PackageSizeName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('CertShortName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('Package_Size');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('CertNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;


 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LP');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerSortiment.GetColumnByFieldName('LPName');
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
//  if (grdDBBandedPerSortiment.DataController.Summary.FooterSummaryValues[x-cFirstLengthFieldNumber] = 0) then
   if Length(grdDBBandedPerSortiment.Columns[x].Caption) = 0 then
   Begin
    grdDBBandedPerSortiment.Columns[x].Visible  := False ;
   End
     else
     Begin
      grdDBBandedPerSortiment.Columns[x].Visible  := True ;

     End;

{  ShowMessage('index= ' + inttostr(grdDBBandedPerSortiment.Columns[x].Index)
  + ' ID= ' + inttostr(grdDBBandedPerSortiment.Columns[x].ID)
  + ' VisibleIndex= ' + inttostr(grdDBBandedPerSortiment.Columns[x].VisibleIndex)) ;  }

 Finally
  grdDBBandedPerSortiment.EndUpdate ;
 End ;

 SetSummary_grdDBBandedPerSortiment(Sender) ;

// for x := 0 to grdDBBandedPerSortiment.Bands.Count-1 do
//  grdDBBandedPerSortiment.Bands[x].c
 grdDBBandedPerSortiment.Bands[0].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_11' (* 'PAKET ID' *) );
 grdDBBandedPerSortiment.Bands[1].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_12' (* 'PRODUKT' *) );
 grdDBBandedPerSortiment.Bands[2].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_5' (* 'NM3 PER LÄNGD' *) );
 grdDBBandedPerSortiment.Bands[3].Caption := siLangLinked_fLager.GetTextOrDefault('IDS_14' (* 'LAGER' *) );
 grdDBBandedPerSortiment.Bands[4].Caption := 'KVANTITET';

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
end;

procedure TfLager.acClearFilterExecute(Sender: TObject);
begin
 ClearProductFilter ;
end;

procedure TfLager.lcLagerStalleExit(Sender: TObject);
begin
 cds_PIP.Filtered := False ;
end;

//LO rader
procedure TfLager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// Action := caFree ;
end;

procedure TfLager.updateCellVolume ;
Var x   : Integer ;
    SD  : Double ;
Begin
 With dmInventory do
 Begin
  For x := 0 to grdDBBandedPerSortiment.ColumnCount - 1 do
  Begin
   if grdDBBandedPerSortiment.Columns[x].Caption = cds_BookingDtlBookedALMM.AsString then
   Begin
    if sp_invpiv.Locate('ProductNo;LIPGroupNo', VarArrayOf([cds_BookingDtlBookedProductNo.AsInteger,
    cds_BookingDtlBookedLIPGroupNo.AsInteger]), []) then
    Begin
     SD := GetSDBalance(cds_BookingDtlBookedProductNo.AsInteger,
     cds_BookingDtlPIPNo.AsInteger,
     cds_BookingDtlBookedLIPGroupNo.AsInteger,
     cds_BookingDtlBookedALMM.AsFloat) ;

     sp_invpiv.Edit ;
     sp_invpiv.FieldByName(grdDBBandedPerSortiment.Columns[x].DataBinding.FieldName).AsFloat := SD ;
//     ShowMessage(grdDBBandedPerSortiment.Columns[x].Caption) ;
     sp_invpiv.Post ;
    End ;
   End ;
  End ;
 End ;//
End ;

procedure TfLager.FormShow(Sender: TObject);
begin
// eAT.SetFocus ;
end;

procedure TfLager.acPrintOtherBookingsExecute(Sender: TObject);
Var FilterString : String ;
begin
  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;

//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add('Bokningar mot råvara ' + PanelBokatPerVecka.Caption) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link2.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(False, dxComponentPrinter1Link2) ;
end;

procedure TfLager.grdFardigVaraDBTableView1RestNM3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  aValue: Variant;
begin
  aValue := ARecord.Values[AItem.Index] ;//aColumn.Index];
  if (ARecord.Values[AItem.Index] <> null) and (AItem <> nil) and
  (aValue > 1) then
   AStyle:= cxStyleBrist ;
end;

procedure TfLager.CloseAllDataSets ;
Begin

End ;

procedure TfLager.grdDBBandedPerSortimentDblClick(Sender: TObject);
var
 AFocusedRow  : TcxCustomGridRecord;
 AFocusedItem : TcxCustomGridTableItem;
 AView        : TcxGridDBBandedTableView;
 ALMM         : Double ;
begin
  AView           := grdDBBandedPerSortiment ;
  AFocusedItem    := AView.Controller.FocusedItem;
  AFocusedRow     := AView.Controller.FocusedRecord;
  if Assigned(AFocusedItem) and Assigned(AFocusedRow) then
  SelectedLength  := System.Copy(AFocusedItem.Caption, 2, System.Length(AFocusedItem.Caption)-1) ;//+ '/Recno: ' + IntToStr(AFocusedRow.Index);


  LabelPkgDtlProduct.Caption  := grdDBBandedPerSortiment.DataController.DataSet.FieldByName('ProductDisplayName').AsString
  + '  -  ' +
  grdDBBandedPerSortiment.DataController.DataSet.FieldByName('PIP').AsString
  + '/' +
  grdDBBandedPerSortiment.DataController.DataSet.FieldByName('LIP').AsString ;

  if StrToFloatDef(ReplaceCommas(SelectedLength),0) > -1 then
  Begin
   RefreshPkgNos(Sender,  StrToIntDef(ReplaceCommas(SelectedLength),0)*10) ;

//   ALMM  := StrToFloat(ReplaceCommas(SelectedLength)) ;
//   ShowVolumesPerPeriod(ALMM) ;
//   dmInventory.Refresh_cds_VolResDtl(ThisUser.UserID) ;
  End ;
End ;

procedure TfLager.cds_PropsSalesRegionNoChange(Sender: TField);
Var x : Integer ;
begin
  if cds_PropsSalesRegionNo.AsInteger > 0 then
   cdsVerk.Filter:= 'SalesRegionNo = ' + cds_PropsSalesRegionNo.AsString
    else
     cdsVerk.Filter:= 'SalesRegionNo = -1' ;
  cdsVerk.Filtered:= True ;
{  cbOwner.Properties.Items.Clear ;
  cdsVerk.First ;
  While not cdsVerk.Eof do
  Begin
   cbOwner.Properties.Items.AddCheckItem(cdsVerk.FieldByName('ClientName').AsString, cdsVerk.FieldByName('PktNrLevKod').AsString) ;
   cdsVerk.Next ;
  End ;

  }

{  For x := 0 to cbOwner.Properties.Items.Count - 1 do
  Begin
   if cbOwner.Properties.Items.Items[x].ShortDescription = dmsContact.Get_PktNrLevKod(ThisUser.CompanyNo) then
    cbOwner.SetItemState(x, cbsChecked) ;
  End ; }

end;

Function TfLager.GetSQLofComboFilter(//const dType : Byte;const Kolumn : String;
combo : TcxCheckComboBox) : String ;
Var
    APCheckStates : ^TcxCheckStates;
 //   AddORToSQL    : Boolean ;
    x             : Integer ;
Begin
 //För att inte ett VP företag skall se alla lager VP har skall alla synliga items checkas om man tittar på alla
 //I annat fall får man också med lager som är på andra orter.
// if (ThisUser.CompanyNo = cVidaPackaging) or
// (ThisUser.CompanyNo = cOsterlovsta) then
// CheckAllItems ;

// AddORToSQL:= False ;
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
{        if AddORToSQL then
         Result:= Result + ' OR '
          else
           Result:= ' AND (' ; }
{        if dType = 0 then
         Result:= Result + ' '+Kolumn+' = '+QuotedStr(Properties.Items[x].ShortDescription)
          else
           Result:= Result + ' '+Kolumn+' = '+ReplaceCommas(Properties.Items[x].ShortDescription) ;}

//        if dType = 0 then
         Result:= Result + ' ' + Properties.Items[x].ShortDescription ;
  //        else
    //       Result:= Result + ' '+Kolumn+' = '+ReplaceCommas(Properties.Items[x].ShortDescription) ;

//        AddORToSQL:= True ;
       End ;//if..
      End ;//for..
//      if Length(Result) > 0 then
//      Result:= Result +' ) ' ;
     End ;
    end;//With
  finally
    Dispose(APCheckStates)
  end;
End ;


procedure TfLager.CheckAllItems ;
Var I : Integer ;
    OneItemIsChecked  : Boolean ;
Begin

  OneItemIsChecked  := False ;
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
   if cbLIP.States[I] = cbsChecked then
    OneItemIsChecked  := True ;

  if OneItemIsChecked = False then
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
    cbLIP.States[I] := cbsChecked;
End ;

function TfLager.IsLIPChecked  : Boolean ;
Var I : Integer ;
   // OneItemIsChecked  : Boolean ;
Begin
 // OneItemIsChecked  := False ;
  Result  := False ;
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
   if cbLIP.States[I] = cbsChecked then
    Result := True ;
 {
  if OneItemIsChecked = False then
  for I := 0 to cbLIP.Properties.Items.Count - 1 do
    cbLIP.States[I] := cbsChecked;
    }
End ;

procedure TfLager.cds_PropsOwnerNoChange(Sender: TField);
begin
 LoadLager;
end;

procedure TfLager.LoadLager;
begin
  cds_PLIP.Active:= False ;
  cds_PLIP.ParamByName('OwnerNo').AsInteger       := cds_PropsOwnerNo.AsInteger ;
  cds_PLIP.ParamByName('LegoOwnerNo').AsInteger   := ThisUser.CompanyNo ;
  cds_PLIP.Active:= True ;

  cbLIP.Properties.Items.Clear ;
  While not cds_PLIP.Eof do
  Begin
   cbLIP.Properties.Items.AddCheckItem(cds_PLIP.FieldByName('PLIP').AsString, cds_PLIPLIPNo.AsString) ;
   //cds_PLIP.FieldByName('InvCode').AsString) ;
   cds_PLIP.Next ;
  End ;
  cds_PLIP.Active:= False ;

end;

procedure TfLager.RefreshPkgNos(Sender: TObject;const ALMM : Integer) ;
Var Save_Cursor : TCursor;
    aColumn     : TcxCustomGridTableItem;
    Package_Size,
    x           : Integer ;
    LIPs        : String ;
begin
 With dmInventory do
 Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
 if Length(sp_invpiv.FieldByName('PackageSizeName').AsString) = 0 then
  Package_Size := -1
  else
   Package_Size := sp_invpiv.FieldByName('Package_Size').AsInteger ;
// LIPs := TRIM(GetSQLofComboFilter(cbLIP)) ;
// LoadGridLayoutPkgNoDtl ;
 grdPkgNosDBBandedTableView1.Bands.Items[2].Caption := 'ANTAL STYCK PER LÄNGD' ;// grdDBBandedPerSortiment.Bands.Items[2].Caption ;
 grdPkgNosDBBandedTableView1.ClearItems ;
 dmInventory.Refresh_sp_invpivPkgDtl(sp_invpiv.FieldByName('LIPNo').AsInteger,
 sp_invpiv.FieldByName('InventorySource').AsInteger,
 0, // Alltid UNIT = Styck här //cds_PropsLengthVolUnitNo.AsInteger,
 sp_invpiv.FieldByName('ProductNo').AsInteger,
 ALMM, sp_invpiv.FieldByName('LP').AsInteger,
 Package_Size,
 sp_invpiv.FieldByName('CertNo').AsInteger, eReference.Text, eBL.Text, eInfo2.Text) ;
 Try
  Except
   On E: Exception do
   Begin
    ShowMessage('dmInventory.sp_invpivPkgDtl.Active, Error message ' + E.Message) ;
   End ;
  End ;

  
  Try
   if dmInventory.sp_invpivPkgDtl.RecordCount > 0 then
   Begin
    ShowPanelPaketnr ;
    SetGridParamsPkgNos(Sender) ;
   End ;
   Except
    On E: Exception do
    Begin
     ShowMessage('SetGridParamsPerSortiment, Error message ' + E.Message) ;
    End ;
   End ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
 End ;//With dmInventory do
end;

procedure TfLager.SetSummary_grdPkgNosDBBandedTableView1(Sender: TObject) ;
var x           : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 grdPkgNosDBBandedTableView1.BeginUpdate ;
 Try
  with grdPkgNosDBBandedTableView1.DataController.Summary do
   FooterSummaryItems.Clear ;// Delete(x) ; // .Add as TcxGridDBTableSummaryItem do
 Finally
  grdPkgNosDBBandedTableView1.EndUpdate ;
 End ;

 grdPkgNosDBBandedTableView1.BeginUpdate ;
 Try
 For x := cFirstLengthFieldNumberPkgDtl to grdPkgNosDBBandedTableView1.ColumnCount -1 do
  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.Columns[x] ;
               Kind := skSum ;
               if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
               Format := '#####'
               else
               Format := '#####.0';
            end
          ;
        ;


  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('NM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM1') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM2') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('Paket') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('Styck') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('PackageNo') ;
               Kind := skCount ;
               Format := '######';
            end ;

  with grdPkgNosDBBandedTableView1.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdPkgNosDBBandedTableView1.GetColumnByFieldName('PackageNo') ;
               Kind := skCount ;
               Format := '######';
            end ;


 Finally
  grdPkgNosDBBandedTableView1.EndUpdate ;
 End ;

 grdPkgNosDBBandedTableView1.BeginUpdate ;
 Try
   For x := cFirstLengthFieldNumberPkgDtl to grdPkgNosDBBandedTableView1.ColumnCount -1 do
  if (grdPkgNosDBBandedTableView1.DataController.Summary.FooterSummaryValues[x-cFirstLengthFieldNumberPkgDtl] = 0) then
   grdPkgNosDBBandedTableView1.Columns[x].Visible:= not cbHideZeroColumns.Checked ;

 Finally
  grdPkgNosDBBandedTableView1.EndUpdate ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.SetGridParamsPkgNos(Sender: TObject);
Var Save_Cursor : TCursor;
    aColumn     : TcxGridDBBandedColumn ;
    x           : Integer ;
begin
 Try
 grdPkgNosDBBandedTableView1.ClearItems ;
 grdPkgNosDBBandedTableView1.DataController.CreateAllItems(True) ;
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


// for x := cFirstLengthFieldNumber to grdPkgNosDBBandedTableView1.ColumnCount - 1 do
//  grdPkgNosDBBandedTableView1.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle;


// SetFilter ;

 dmInventory.sp_invpivPkgDtl.FieldByName('ProductDisplayName').DisplayLabel := 'Produkt' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('PIP').DisplayLabel                := 'Ställe' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('LIP').DisplayLabel                := 'Grupp' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('AvgLength').DisplayLabel          := 'Medellängd' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('AB').DisplayLabel                 := 'AB' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('LPName').DisplayLabel             := 'PT' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('REFERENCE').DisplayLabel          := 'Referens' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('BL_NO').DisplayLabel              := 'Info1' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('DateCreated').DisplayLabel        := 'Registrerad' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('PackageNo').DisplayLabel          := 'Paketnr' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('SupplierCode').DisplayLabel       := 'Prefix' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('PackageSizeName').DisplayLabel    := 'Storlek' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('CertShortName').DisplayLabel      := 'Cert.' ;
 dmInventory.sp_invpivPkgDtl.FieldByName('PkgArticleNo').DisplayLabel       := 'Artikelnr' ;
// dmInventory.sp_invpivPkgDtl.FieldByName('Status').DisplayLabel             := 'Källa' ;

// dmInventory.sp_invpivPkgDtl.FieldByName('LIPGroupNo').Visible              := False ;
// dmInventory.sp_invpivPkgDtl.FieldByName('nooflengths').Visible             := False ;
// dmInventory.sp_invpivPkgDtl.FieldByName('AT').Visible                      := False ;
// dmInventory.sp_invpivPkgDtl.FieldByName('AB').Visible                      := False ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('productNo');
 aColumn.Visible  := False ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PIPNo');
 aColumn.Visible  := False ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('LIPNo');
 aColumn.Visible  := False ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PackageNo');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;
 aColumn.Width    := 250 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('SupplierCode');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;
 aColumn.Width  := 90 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('DateCreated');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PackageTypeNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AT');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AB');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('ProductDisplayName');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('LP');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Species');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Impregnering');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Kvalitet');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Surfacing');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Pris');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('ProductValue');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('VaruGruppNamn');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('InventorySource');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('LPName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;



 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('NM3');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM3');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM1');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AM2');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('MFBM');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Styck');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Paket');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('AvgLength');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PIP');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 3 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('LIP');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 3 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('REFERENCE');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('BL_NO');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('INFO2');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PackageSizeName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;
 aColumn.Width    := 400 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('CertShortName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;
 aColumn.Width    := 200 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('Package_Size');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('CertNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdPkgNosDBBandedTableView1.GetColumnByFieldName('PkgArticleNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 0 ;

 For x := cFirstLengthFieldNumberPkgDtl to dmInventory.sp_invpivPkgDtl.FieldCount -1 do
 Begin
  dmInventory.sp_invpivPkgDtl.Fields.Fields[x].ReadOnly  := False ;
  dmInventory.sp_invpivPkgDtl.Fields.Fields[x].Required  := False ;
 End ;

 For x := cFirstLengthFieldNumberPkgDtl to grdPkgNosDBBandedTableView1.ColumnCount - 1 do
  Begin
   grdPkgNosDBBandedTableView1.Columns[x].Position.BandIndex  := 2 ;
  End ;

 LoadGridLayoutPkgNoDtl ;

 grdPkgNosDBBandedTableView1.BeginUpdate ;
 Try
   For x := cFirstLengthFieldNumberPkgDtl to grdPkgNosDBBandedTableView1.ColumnCount -1 do
//  if (grdDBBandedPerSortiment.DataController.Summary.FooterSummaryValues[x-cFirstLengthFieldNumber] = 0) then
   if Length(grdPkgNosDBBandedTableView1.Columns[x].Caption) = 0 then
   grdPkgNosDBBandedTableView1.Columns[x].Visible:= False
   else
   grdPkgNosDBBandedTableView1.Columns[x].Visible:= True ;

 Finally
  grdPkgNosDBBandedTableView1.EndUpdate ;
 End ;

 SetSummary_grdPkgNosDBBandedTableView1(Sender) ;

 FormatColumnsPkgDtl ;
end;

procedure TfLager.FormatColumnsPkgDtl ;
//    Save_Cursor : TCursor;
{Styck
AM3
NM3
PAKET}
Var x : Integer ;
Begin
 With dmInventory do
 Begin
  With sp_invpivPkgDtl do
  Begin

   For x:= cFirstLengthFieldNumberPkgDtl to sp_invpivPkgDtl.FieldCount - 1 do
   if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###'
    else
    TFloatField(Fields.Fields[x]).DisplayFormat:='###,###,###.0';


   TFloatField(Fields.FieldByName('NM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM3')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM2')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('AM1')).DisplayFormat :=  '###,###,###.0' ;
   TFloatField(Fields.FieldByName('Paket')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('Styck')).DisplayFormat :=  '###,###,###' ;
   TFloatField(Fields.FieldByName('AvgLength')).DisplayFormat :=  '###,###,###.0' ;
  End ; //With sp_invpivPkgDtl do


 End ; //With dmInventory do
// grdDBBandedPerSortiment.OptionsBehavior.BestFitMaxRecordCount := grdDBBandedPerSortiment.ViewInfo.VisibleRecordCount ;
// grdDBBandedPerSortiment.ApplyBestFit();
End ;

procedure TfLager.RefreshPerPaketNr(Sender: TObject);
Var Save_Cursor : TCursor;
    aColumn     : TcxCustomGridTableItem;
    x           : Integer ;
    LIPs        : String ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
 LIPs := TRIM(GetSQLofComboFilter(cbLIP)) ;
 grdDBBandedPerPaketNr.ClearItems ;
 dmInventory.Refresh_sp_invpivPkg(LIPs, cds_PropsLengthVolUnitNo.AsInteger, cds_PropsOwnerNo.AsInteger,
 StrToFloatDef(eAT.Text,0), StrToFloatDef(eAB.Text,0),
 eReference.Text, eBL.Text) ;
 Try
  Except
   On E: Exception do
   Begin
    ShowMessage('dmInventory.sp_invpivPkg.Active, Error message ' + E.Message) ;
   End ;
  End ;

  Try
  if dmInventory.sp_invpivPkg.RecordCount > 0 then
  Begin
   SetGridParamsPerPaketNr(Sender) ;
  End ;
   Except
    On E: Exception do
    Begin
     ShowMessage('SetGridParamsPerSortiment, Error message ' + E.Message) ;
    End ;
   End ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.SetGridParamsPerPaketNr(Sender: TObject);
Var Save_Cursor : TCursor;
    aColumn     : TcxGridDBBandedColumn ;
    x           : Integer ;
begin
 Try
 grdDBBandedPerPaketNr.ClearItems ;
 grdDBBandedPerPaketNr.DataController.CreateAllItems(True) ;
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

// for x := cFirstLengthFieldNumber + 6 to grdDBBandedPerPaketNr.ColumnCount - 1 do
//  grdDBBandedPerPaketNr.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle;

 for x := cFirstLengthFieldNumberPaketnr to grdDBBandedPerPaketNr.ColumnCount - 1 do
 Begin
  grdDBBandedPerPaketNr.Columns[x].Styles.OnGetContentStyle := DoOnGetContentStyle ;
  grdDBBandedPerPaketNr.Columns[x].OnCustomDrawHeader       := grdPIGDBBandedTableView1PigNoPkgs1CustomDrawHeader ;
 End;



// SetFilter ;
// SetSummary_grdDBBandedPerPaketNr(Sender) ;

 dmInventory.sp_invpivPkg.FieldByName('ProductDisplayName').DisplayLabel := 'Produkt' ;
 dmInventory.sp_invpivPkg.FieldByName('PIP').DisplayLabel                := 'Lagerställe' ;
 dmInventory.sp_invpivPkg.FieldByName('LIP').DisplayLabel                := 'Lagergrupp' ;
 dmInventory.sp_invpivPkg.FieldByName('AvgLength').DisplayLabel          := 'Medellängd' ;
 dmInventory.sp_invpivPkg.FieldByName('AB').DisplayLabel                 := 'AB' ;
 dmInventory.sp_invpivPkg.FieldByName('LPName').DisplayLabel                 := 'PT' ;
 dmInventory.sp_invpivPkg.FieldByName('Paketnr').DisplayLabel             := 'Paketnr' ;
 dmInventory.sp_invpivPkg.FieldByName('Prefix').DisplayLabel              := 'Prefix' ;
 dmInventory.sp_invpivPkg.FieldByName('Tillverkad').DisplayLabel        := 'Registrerad' ;
 dmInventory.sp_invpivPkg.FieldByName('REFERENCE').DisplayLabel          := 'Referens' ;
 dmInventory.sp_invpivPkg.FieldByName('Info1').DisplayLabel              := 'BL' ;
 dmInventory.sp_invpivPkg.FieldByName('Species').DisplayLabel              := 'Träslag' ;
 dmInventory.sp_invpivPkg.FieldByName('Surfacing').DisplayLabel            := 'Utförande' ;
 dmInventory.sp_invpivPkg.FieldByName('ProductValue').DisplayLabel            := 'Värde' ;
 dmInventory.sp_invpivPkg.FieldByName('VaruGruppNamn').DisplayLabel            := 'Varugrupp' ;
 dmInventory.sp_invpivPkg.FieldByName('CertShortName').DisplayLabel            := 'Cert.' ;
 dmInventory.sp_invpivPkg.FieldByName('PIP').DisplayLabel            := 'Ställe' ;
 dmInventory.sp_invpivPkg.FieldByName('LIP').DisplayLabel            := 'Grupp' ;
 dmInventory.sp_invpivPkg.FieldByName('PackageSizeName').DisplayLabel            := 'Storlek' ;
// dmInventory.sp_invpivPkg.FieldByName('LIPGroupNo').Visible              := False ;
// dmInventory.sp_invpivPkg.FieldByName('nooflengths').Visible             := False ;
// dmInventory.sp_invpivPkg.FieldByName('AT').Visible                      := False ;
// dmInventory.sp_invpivPkg.FieldByName('AB').Visible                      := False ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('productNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('PIPNo');
 aColumn.Visible  := False ;
 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('LIPNo');
 aColumn.Visible  := False ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Paketnr');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Prefix');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Tillverkad');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('PackageTypeNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 0 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AT');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AB');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('ProductDisplayName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;


 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('PackageSizeName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('CertShortName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Species');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Impregnering');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Kvalitet');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Surfacing');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('CertNo');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Pris');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('ProductValue');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('VaruGruppNamn');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Package_Size');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('InventorySource');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('LPName');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('LP');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 1 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('NM3');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AM3');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AM1');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AM2');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('MFBM');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Styck');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Paket');
 aColumn.Visible  := False ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('AvgLength');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 4 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('PIP');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 3 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('LIP');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 3 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('REFERENCE');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Info1');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;

 aColumn:= grdDBBandedPerPaketNr.GetColumnByFieldName('Info2');
 aColumn.Visible  := True ;
 aColumn.Position.BandIndex := 5 ;


 For x := cFirstLengthFieldNumberPaketnr to dmInventory.sp_invpivPkg.FieldCount -1 do
 Begin
  //dmInventory.sp_invpivPkg.Fields.Fields[x].ReadOnly  := False ;
  dmInventory.sp_invpivPkg.Fields.Fields[x].Required  := False ;
 End ;

 For x := cFirstLengthFieldNumberPaketnr to grdDBBandedPerPaketNr.ColumnCount - 1 do
  Begin
   grdDBBandedPerPaketNr.Columns[x].Position.BandIndex  := 2 ;
  End ;



 LoadGridLayoutPaketNrVy ;

 grdDBBandedPerPaketNr.BeginUpdate ;
 Try
   For x := cFirstLengthFieldNumberPaketnr to grdDBBandedPerPaketNr.ColumnCount -1 do
   if Length(grdDBBandedPerPaketNr.Columns[x].Caption) = 0 then
   grdDBBandedPerPaketNr.Columns[x].Visible:= False
   else
   grdDBBandedPerPaketNr.Columns[x].Visible:= True ;

 Finally
  grdDBBandedPerPaketNr.EndUpdate ;
 End ;

 SetSummary_grdDBBandedPerPaketNr(Sender) ;

 FormatLengthColumnsPaketnr ;
end;

procedure TfLager.SetSummary_grdDBBandedPerPaketNr(Sender: TObject) ;
var x           : Integer ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 grdDBBandedPerPaketNr.BeginUpdate ;
 Try
  with grdDBBandedPerPaketNr.DataController.Summary do
   FooterSummaryItems.Clear ;// Delete(x) ; // .Add as TcxGridDBTableSummaryItem do
 Finally
  grdDBBandedPerPaketNr.EndUpdate ;
 End ;

 grdDBBandedPerPaketNr.BeginUpdate ;
 Try
 For x := cFirstLengthFieldNumberPaketnr to grdDBBandedPerPaketNr.ColumnCount -1 do
  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.Columns[x] ;
               Kind := skSum ;
               if (cds_PropsLengthVolUnitNo.AsInteger = 0) or (cds_PropsLengthVolUnitNo.AsInteger = 3) then
               Format := '#####'
               else
               Format := '#####.0';
            end
          ;
        ;


  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('AM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('NM3') ;
               Kind   := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('AM1') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('AM2') ;
               Kind := skSum ;
               Format := '#####.0';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('Paket') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('Styck') ;
               Kind := skSum ;
               Format := '######';
            end ;

  with grdDBBandedPerPaketNr.DataController.Summary do
          with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
            begin
               Column := grdDBBandedPerPaketNr.GetColumnByFieldName('Paketnr') ;
               Kind := skCount ;
               Format := '######';
            end ;

 Finally
  grdDBBandedPerPaketNr.EndUpdate ;
 End ;

 grdDBBandedPerPaketNr.BeginUpdate ;
 Try
   For x := cFirstLengthFieldNumberPaketnr + 6 to grdDBBandedPerPaketNr.ColumnCount -1 do
  if (grdDBBandedPerPaketNr.DataController.Summary.FooterSummaryValues[x-(cFirstLengthFieldNumberPaketnr + 6)] = 0) then
   grdDBBandedPerPaketNr.Columns[x].Visible:= not cbHideZeroColumns.Checked ;

 Finally
  grdDBBandedPerPaketNr.EndUpdate ;
 End ;

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLager.SpinEditRubrikFontSortimentsVyCurChange(Sender: TObject);
begin
 cxStyleHeaderSortimentsVy.Font.Size := SpinEditRubrikFontSortimentsVy.IntCurValue ;
end;

procedure TfLager.pmSortimentsVyPopup(Sender: TObject);
begin
 SpinEditRubrikFontSortimentsVy.IntCurValue   := cxStyleHeaderSortimentsVy.Font.Size ;
 SpinEditRubrikFontSortimentsVy.Value         := SpinEditRubrikFontSortimentsVy.IntCurValue ;

 SpinEditContentFontSortimentsVy.IntCurValue  := cxStyleContent.Font.Size ;
 SpinEditContentFontSortimentsVy.Value        := SpinEditContentFontSortimentsVy.IntCurValue ;

// SpinEditContentFontSortimentsVy.IntCurValue  := cxStyleContent.Font.Size ;
// SpinEditContentFontSortimentsVy.Value        := SpinEditContentFontSortimentsVy.IntCurValue ;
end;

procedure TfLager.grdBoTActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
 if ALevel = grdBoTLevel2 then
 Begin
  PanelPaketnr.Visible  := False ;
  cxSplitter1.Visible   := False ;
 End
 else
 Begin
  PanelPaketnr.Visible  := True ;
  cxSplitter1.Visible   := True ;
 End ;
end;

procedure TfLager.SpinEditContentFontSortimentsVyCurChange(
  Sender: TObject);
begin
 cxStyleContent.Font.Size     := SpinEditContentFontSortimentsVy.IntCurValue ;
 cxStyleContentOdd.Font.Size  := SpinEditContentFontSortimentsVy.IntCurValue ;
end;

procedure TfLager.acClosePkgDtlVyExecute(Sender: TObject);
begin
 With dmInventory do
 Begin
  sp_invpivPkgDtl.Active  := False ;
  PanelPaketnr.Visible    := False ;
  cxSplitter1.Visible     := False ;
 End ;
end;

procedure TfLager.ShowPanelPaketnr ;
Begin
  PanelPaketnr.Visible    := True ;
  cxSplitter1.Visible     := True ;
End ;

procedure TfLager.acPrintPkgDtlExecute(Sender: TObject);
Var FilterString : String ;
begin

//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Clear ;

  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(LabelPkgDtlProduct.Caption) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
//  dxComponentPrinter1Link2.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link2.PrinterPage.Orientation    := poLandscape ;
  dxComponentPrinter1Link2.ShrinkToPageWidth          := True ;
  dxComponentPrinter1Link2.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link2.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2) ;
end;

procedure TfLager.acChangePkgExecute(Sender: TObject);
Var fchgPkgVard : TfchgPkgVard ;
begin
 mtPkgNos.Active:= True ;
 Try
 SelectedPkgsOfPkgNosTable ;
 if mtPkgNos.RecordCount > 0 then
 Begin
  fchgPkgVard:= TfchgPkgVard.Create(Nil);
  Try
   fchgPkgVard.CreateCo ;
   fchgPkgVard.RemotePkgEntry(mtPkgNos) ;
   fchgPkgVard.ShowModal ;
//   RefreshAfterChanges ;
  Finally
   FreeAndNil(fchgPkgVard) ;
  End ;
 End ;
 Finally
  mtPkgNos.Active:= False ;
 End ;
end;

procedure TfLager.SelectedPkgsOfPkgNosTable ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 grdPkgNosDBBandedTableView1.BeginUpdate ;
 grdPkgNosDBBandedTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdPkgNosDBBandedTableView1.DataController.DataSource.DataSet ;
   For I    := 0 to grdPkgNosDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPkgNosDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPkgNosDBBandedTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('PackageNo', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PackageNo').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SupplierCode').AsString ;
    mtPkgNosOwnerNo.AsInteger   := cds_PropsOwnerNo.AsInteger ;//ADataSet.FieldByName('OwnerNo').AsInteger ;
    mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
    mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
    mtPkgNosStatus.AsInteger    := 1 ;// ADataSet.FieldByName('Status').AsInteger ;
    mtPkgNos.Post ;
   End ;

 Finally
  grdPkgNosDBBandedTableView1.DataController.EndLocate ;
  grdPkgNosDBBandedTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


End.


